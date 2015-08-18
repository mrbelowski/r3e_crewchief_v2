CrewChief version 2.

Changelog
---------

Version 2.2.2: Fixed race time getting set to 0 for some online races (caused missing pit window warnings and maybe some other issues); fixed some errors caused be weird end-of-race data (NumberOfLaps being set to a large number in time-only races); fixed missing exception messages on error; added error checking to R3E process launch; added logging to tyre temps; added option to disable tyre temp warnings; some tweaks to tyre temp logic ("how's my tyre temps" now responds with the instantaneous tyre temp data, not the cumulative average for that lap); don't play messages with numbers in them if the number isn't part of the range the app can play (basically gaps / laps / times > 59 seconds / laps / minutes); don't say pace is OK if we're > 1 second off the leader's pace; some other internal fixes (should hopefully fix the missing race end messages); make events aware of pit in and out laps so there are no confusing pace / laptime / gap / position updates when you're pitting. No new sound pack for this version

Version 2.2.1: fixed broken tyre temps monitor (was always saying they were good); don't play "fastest lap in the race" if we're actually in practice or qually

Version 2.2.0: Added separate acknowledge messages for toggling spotter & updates; fixed issues with race time / laps remaining near the end of the race (the sound clips weren't very good); added options to run R3E automatically when you start the app and option to run the app (and R3E) as soon as the app is loaded

Version 2.1.0: Added "plenty of fuel" response; added "you've not served your penalty" for when you botch a drive-through or stop-go; fixed bug in race time to go response (was saying "zero minutes" which it shouldn't); added lots of missing channel close calls to voice responses; tweaked the properties UI and added a 'clear console' button to the main UI; Added race and practice / qual responses for "how's my pace". In prac / qual this is the time gap to the class leader, in race the 'pace' is an assessment of your last lap time (assuming it's valid) relative to the best lap of the class leader. Might not be that helpful, will probably need some changes (feedback welcome)

Version 2.0.2: tidied up properties interface and added some help text popups to properties that need them

Version 2.0.1: Added "you have served your penalty" event - the app now tells you if you've served your penalty (you can still ask it if you want); Fixed voice recognition timeout for always-on and toggle-button mode (this wasn't my fault, honest - the API docs are incorrect for the default the MS speech engine's InitialSilenceTimeout value)

Version 2.0.0: Added voice recognition, UI, properties handling, bug fixes, improvements, lots of new awesome, some new bugs

Quick start
-----------
You need to install .net 4 or above to use the app. Download the CrewChiefV2_with_sounds.zip file, extract it somewhere (anywhere, the app's not fussy), and run the enclosed CrewChiefV2.exe. Click the "Start Application" button. Then fire up R3E and be amazed at my poor voice acting.


Running with voice recognition
------------------------------
If you want to use voice recognition, download the correct speech recognition installers for your system (speech_recognition_32bit.zip or speech_recognition_64bit.zip). Run SpeechPlatformRuntime.msi (this is the MS speech recognition engine), then run MSSpeech_SR_en-GB_TELE.msi or MSSpeech_SR_en-US_TELE.msi depending on your preferred accent (these are the 'cultural info' installers). If you want to use US speech recognition (MSSpeech_SR_en-US_TELE.msi) you must modify the "speech_recognition_location" property to "en-US". This can be done by editing CrewChiefV2.exe.config, or by modifying the property value in the application's Properties area. If you're happy with en-GB you don't need to do anything other than run the 2 speech recognition installers.

For speech recognition, you need a microphone configured as the default "Recording" device in Windows.

To get started, run CrewChiefV2.exe and choose a "Voice recognition mode". There are 3 modes (the radio buttons at the bottom right). "Disabled" means that the app won't attempt any speech recognition. "Hold button" means you have to hold down a button while you speak, and release the button when you're finished. "Toggle button" means you press a button once to start the speech recognition, and the app will continue to listen and process your spoken requests until you press the button again to switch it off (while the app is listening you can make as many voice requests as you like, you don't need to toggle speech recognition off and back on again if you want to ask another question). "Always on" means the app is always listening for and processing speech commands. Selecting "Disabled" or "Always on" from this list makes the app ignore the button assigned to "Talk to crew chief".

If you want to use Hold button or Toggle button mode, select a controller device ("Available controllers" list, bottom left), choose "Talk to crew chief" in the "Available actions" list and click "Assign control". Then press the button you want to assign to your radio button. 

You need to speak clearly and your mic needs to be properly set up - you might need to experiment with levels and gain (Microphone boost) in the Windows control panel. If he understood he'll respond - perhaps with helpful info, perhaps with "we don't have that data". If he doesn't quite understand he'll ask you to repeat yourself. If he can't even tell if you've said something he'll remain silent. There's some debug logging in the main window that might be useful.

I've not finished implementing this but currently the app understands and responds to the following commands:

"how is my [fuel / tyre temps / body work / aero / engine / transmission / pace]"
"what's my [gap in front / gap ahead / gap behind / last lap / last lap time / lap time / position]"
"keep quiet / I know what I'm doing / leave me alone" (switches off messages)
"keep me informed / keep me posted / keep me updated" (switches messages back on)
"how long's left / how many laps are left / how many laps to go"
"spot / don't spot" (switches the spotter on and off - note even in "leave me alone" mode the spotter still operates unless you explicitly switch it off)
"do I still have a penalty / do I have a penalty / have I served my penalty"
"do I have to pit / do I need to pit / do I have a mandatory pit stop / do I have a mandatory stop / do I have to make a pit stop"


Other button assignments
------------------------
You can assign the 'toggle spotter on/off' and 'toggle race updates on/off' to separate buttons if you want to be able to toggle the spotter function and toggle the crew chief's updates on or off during the race. This doesn't require voice recognition to be installed - simply run the app, assign a button to one or both of these functions, and when in-race pressing that button will toggle the spotter or crew chief on and off.


Properties
----------
When you first run the app it will create a user configuration folder in /Users/[username]/AppData/local/CrewChiefV2 (for example, on my system this is in C:\Users\Jim\AppData\Local\CrewChiefV2). This folder holds your application settings. The settings can be accessed by clicking the "Properties" button in the app. This displays a popup window where you can tweak stuff if you want to. This interface is a bit rubbish but should let you tweak settings if you want to, although the properties are all (currently) undocumented. If you do change something in this interface, the app needs to restart to pick up the change - the "Save and restart" button should do this.

Each property has a "reset to default" button, or if you get completely stuck you can close the app and delete the user configuration folder and it should reset everything.


Custom controllers
------------------
This is untested. If your controller doesn't show up in the list of available controllers you can set the "custom_controller_guid" property to the GUID of your controller device. If this is a valid controller GUID the app will attempt to initialise it an add it to the list of available controllers.


Updating the app
----------------
The app, the voice recognition packs, and the sound pack are all separate. To install a new version simply download the CrewChiefV2_with_no_sounds and unzip it over the top of your existing installation. If the sound pack also needs to be updated, when you run the app you'll get an error in the console window telling you to update the sound pack. To do this, download the latest sound pack and replace the existing one with this new one. 

At the time of writing, the sound pack can be downloaded here  : https://drive.google.com/file/d/0B4KQS820QNFbQTZHX2tlWVdMTFk/view?usp=sharing
the application can be downloaded here                         : https://drive.google.com/file/d/0B4KQS820QNFbd21UNnI4RFMtV1k/view?usp=sharing
the full app with sounds can be downloaded here                : https://drive.google.com/file/d/0B4KQS820QNFbZjBpamNsdWxhZUE/view?usp=sharing
the 64bit speech recognition installers can be downloaded here : https://drive.google.com/file/d/0B4KQS820QNFbY05tVnhiNVFnYkU/view?usp=sharing
the 32bit speech recognition installers can be downloaded here : https://drive.google.com/file/d/0B4KQS820QNFbRVJrVjU4X1NxSEU/view?usp=sharing