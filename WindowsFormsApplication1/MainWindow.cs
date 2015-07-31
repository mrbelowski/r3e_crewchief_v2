using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CrewChiefV2;
using System.Threading;
using System.IO;
using SharpDX.DirectInput;

namespace CrewChiefV2
{
    public partial class MainWindow : Form
    {
        private ControllerConfiguration controllerConfiguration = new ControllerConfiguration();
        
        private SpeechRecogniser speechRecogniser;

        private CrewChief crewChief;

        private Boolean isAssigningButton = false;

        private bool _IsAppRunning;

        private Boolean runListenForChannelOpenThread = false;

        private Boolean runListenForButtonPressesThread = false;

        private TimeSpan buttonCheckInterval = TimeSpan.FromMilliseconds(100);

        public bool IsAppRunning
        {
            get
            {
                return _IsAppRunning;
            }
            set
            {
                _IsAppRunning = value;
                startApplicationButton.Text = _IsAppRunning ? "Stop" : "Start Application";
            }
        }

        public MainWindow()
        {
            InitializeComponent();
            CheckForIllegalCrossThreadCalls = false;
            Console.SetOut(new ControlWriter(textBox1));
            crewChief = new CrewChief();
            getControllers();
            controllerConfiguration.loadSettings(this);
            runListenForChannelOpenThread = controllerConfiguration.listenForChannelOpen();
            speechRecogniser = new SpeechRecogniser(crewChief);
            if (runListenForChannelOpenThread) {
                initialiseSpeechEngine();
            }
            runListenForButtonPressesThread = controllerConfiguration.listenForButtons();
            updateActions();
            this.assignButtonToAction.Enabled = false;
            this.deleteAssigmentButton.Enabled = false;
        }

        private void listenForChannelOpen()
        {
            Boolean channelOpen = false;
            if (speechRecogniser != null && speechRecogniser.initialised)
            {
                while (runListenForChannelOpenThread)
                {
                    if (!channelOpen && controllerConfiguration.isChannelOpen())
                    {
                        channelOpen = true;
                        speechRecogniser.recognizeAsync();
                        Console.WriteLine("Listening...");
                    }
                    else if (channelOpen && !controllerConfiguration.isChannelOpen())
                    {
                        Console.WriteLine("Stopping listening...");
                        speechRecogniser.recognizeAsyncCancel();
                        channelOpen = false;
                    }
                }
            }            
        }

        private void listenForButtons()
        {
            DateTime lastButtoncheck = DateTime.Now;
            while (runListenForButtonPressesThread)
            {
                DateTime now = DateTime.Now;
                controllerConfiguration.pollForButtonClicks();
                Boolean hadClick = false;
                if (now > lastButtoncheck.Add(buttonCheckInterval))
                {
                    lastButtoncheck = now;
                    if (controllerConfiguration.hasOutstandingClick(ControllerConfiguration.TOGGLE_RACE_UPDATES_FUNCTION))
                    {
                        Console.WriteLine("Toggling keep quiet mode");
                        crewChief.toggleKeepQuietMode();
                        hadClick = true;
                    }
                    else if (controllerConfiguration.hasOutstandingClick(ControllerConfiguration.TOGGLE_SPOTTER_FUNCTION))
                    {
                        Console.WriteLine("Toggling spotter mode");
                        crewChief.toggleSpotterMode();
                        hadClick = true;
                    }
                }
                if (hadClick)
                {
                    // don't poll for a second
                    Thread.Sleep(1000);
                }
            }
        }
        
        private void tableLayoutPanel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void startApplicationButton_Click(object sender, EventArgs e)
        {
            IsAppRunning = !IsAppRunning;
            if (_IsAppRunning)
            {
                this.assignButtonToAction.Enabled = false;
                this.deleteAssigmentButton.Enabled = false;
                this.button1.Enabled = false;
                ThreadStart crewChiefWork = runApp;
                Thread crewChiefThread = new Thread(crewChiefWork);
                crewChiefThread.Start();
                if (runListenForChannelOpenThread)
                {
                    Console.WriteLine("Listening on default audio input device");
                    ThreadStart channelOpenButtonListenerWork = listenForChannelOpen;
                    Thread channelOpenButtonListenerThread = new Thread(channelOpenButtonListenerWork);
                    channelOpenButtonListenerThread.Start();
                }
                if (runListenForButtonPressesThread)
                {
                    Console.WriteLine("Listening for buttons");
                    ThreadStart buttonPressesListenerWork = listenForButtons;
                    Thread buttonPressesListenerThread = new Thread(buttonPressesListenerWork);
                    buttonPressesListenerThread.Start();
                }
            }
            else
            {
                this.deleteAssigmentButton.Enabled = this.buttonActionSelect.SelectedIndex > -1 &&
                    this.controllerConfiguration.buttonAssignments[this.buttonActionSelect.SelectedIndex].joystick != null;
                this.assignButtonToAction.Enabled = this.buttonActionSelect.SelectedIndex > -1 && this.controllersList.SelectedIndex > -1;
                stopApp();
                Console.WriteLine("Application stopped");
                this.button1.Enabled = true;
            }
        }

        private void stopApp(object sender, FormClosedEventArgs e)
        {
            stopApp();
        }

        private void runApp()
        {
            crewChief.Run();
        }

        private void tableLayoutPanel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void stopApp()
        {
            runListenForChannelOpenThread = false;
            runListenForButtonPressesThread = false;
            crewChief.stop();
        }

        private void buttonActionSelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.deleteAssigmentButton.Enabled = this.buttonActionSelect.SelectedIndex > -1 &&
                this.controllerConfiguration.buttonAssignments[this.buttonActionSelect.SelectedIndex].joystick != null;
            this.assignButtonToAction.Enabled = this.buttonActionSelect.SelectedIndex > -1 && this.controllersList.SelectedIndex > -1;
        }

        private void controllersList_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.deleteAssigmentButton.Enabled = this.buttonActionSelect.SelectedIndex > -1 &&
                this.controllerConfiguration.buttonAssignments[this.buttonActionSelect.SelectedIndex].joystick != null;
            this.assignButtonToAction.Enabled = this.buttonActionSelect.SelectedIndex > -1 && this.controllersList.SelectedIndex > -1;
        }

        private void getControllers() {
            foreach (ControllerConfiguration.ControllerData configData in controllerConfiguration.controllers)
            {
                this.controllersList.Items.Add(configData.deviceType.ToString() + configData.deviceName);
            }
        }

        private void updateActions()
        {
            this.buttonActionSelect.Items.Clear();
            foreach (ControllerConfiguration.ButtonAssignment assignment in controllerConfiguration.buttonAssignments)
            {
                this.buttonActionSelect.Items.Add(assignment.getInfo());
            }
        }

        private void assignButtonToActionClick(object sender, EventArgs e)
        {
            if (!isAssigningButton)
            {
                if (this.controllersList.SelectedIndex >= 0 && this.buttonActionSelect.SelectedIndex >= 0)
                {
                    isAssigningButton = true;
                    this.assignButtonToAction.Text = "Waiting for button, click to cancel";
                    ThreadStart assignButtonWork = assignButton;
                    Thread assignButtonThread = new Thread(assignButtonWork);
                    assignButtonThread.Start();
                }                
            }
            else
            {
                isAssigningButton = false;
                controllerConfiguration.listenForAssignment = false;
                this.assignButtonToAction.Text = "Assign";
            }
        }

        private void initialiseSpeechEngine()
        {
            try
            {
                if (speechRecogniser == null)
                {
                    speechRecogniser = new SpeechRecogniser(crewChief);
                }
                if (!speechRecogniser.initialised)
                {
                    speechRecogniser.initialiseSpeechEngine();
                    Console.WriteLine("Attempted to initialise speech engine - success = " + speechRecogniser.initialised);
                }
                runListenForChannelOpenThread = speechRecogniser.initialised;
            }
            catch (Exception e)
            {
                Console.WriteLine("Unable to create speech engine, error message: " + e.Message);
                runListenForChannelOpenThread = false;
            }
        }

        private void assignButton()
        {
            if (controllerConfiguration.assignButton(this, this.controllersList.SelectedIndex, this.buttonActionSelect.SelectedIndex))
            {
                updateActions();
                isAssigningButton = false;
                controllerConfiguration.saveSettings();
                runListenForChannelOpenThread = controllerConfiguration.listenForChannelOpen();
                if (runListenForChannelOpenThread)
                {
                    initialiseSpeechEngine();
                }
                runListenForButtonPressesThread = controllerConfiguration.listenForButtons();
            }
            this.assignButtonToAction.Text = "Assign";
            controllerConfiguration.saveSettings();
        }

        private void deleteAssignmentButtonClicked(object sender, EventArgs e)
        {
            if (this.buttonActionSelect.SelectedIndex >= 0)
            {
                this.controllerConfiguration.buttonAssignments[this.buttonActionSelect.SelectedIndex].unassign();                
                updateActions();
                runListenForChannelOpenThread = controllerConfiguration.listenForChannelOpen();
                runListenForButtonPressesThread = controllerConfiguration.listenForButtons();
            }
            controllerConfiguration.saveSettings();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void help_TextChanged(object sender, EventArgs e)
        {

        }

        private void editPropertiesButtonClicked(object sender, EventArgs e)
        {
            var form = new PropertiesForm();
            form.ShowDialog(this);
        }
    }

    public class ControlWriter : TextWriter
    {
        private TextBox textbox;
        public ControlWriter(TextBox textbox)
        {
            this.textbox = textbox;
        }

        public override void Write(char value)
        {
            textbox.AppendText(value.ToString());
        }

        public override void Write(string value)
        {
            textbox.AppendText(value);
        }

        public override void WriteLine(string value)
        {
            textbox.AppendText(value + "\n");
        }

        public override Encoding Encoding
        {
            get { return Encoding.ASCII; }
        }
    }
}
