﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34209
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CrewChiefV2.Properties {
    
    
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "12.0.0.0")]
    internal sealed partial class Settings : global::System.Configuration.ApplicationSettingsBase {
        
        private static Settings defaultInstance = ((Settings)(global::System.Configuration.ApplicationSettingsBase.Synchronized(new Settings())));
        
        public static Settings Default {
            get {
                return defaultInstance;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("sounds")]
        public string sound_files_path {
            get {
                return ((string)(this["sound_files_path"]));
            }
            set {
                this["sound_files_path"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("0.25")]
        public float background_volume {
            get {
                return ((float)(this["background_volume"]));
            }
            set {
                this["background_volume"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("100")]
        public int update_interval {
            get {
                return ((int)(this["update_interval"]));
            }
            set {
                this["update_interval"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("40")]
        public int minimum_time_between_pearls_of_wisdom {
            get {
                return ((int)(this["minimum_time_between_pearls_of_wisdom"]));
            }
            set {
                this["minimum_time_between_pearls_of_wisdom"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool use_sweary_messages {
            get {
                return ((bool)(this["use_sweary_messages"]));
            }
            set {
                this["use_sweary_messages"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool disable_immediate_messages {
            get {
                return ((bool)(this["disable_immediate_messages"]));
            }
            set {
                this["disable_immediate_messages"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool enable_spotter {
            get {
                return ((bool)(this["enable_spotter"]));
            }
            set {
                this["enable_spotter"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("10")]
        public float max_safe_water_temp_over_baseline {
            get {
                return ((float)(this["max_safe_water_temp_over_baseline"]));
            }
            set {
                this["max_safe_water_temp_over_baseline"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("15")]
        public float max_safe_oil_temp_over_baseline {
            get {
                return ((float)(this["max_safe_oil_temp_over_baseline"]));
            }
            set {
                this["max_safe_oil_temp_over_baseline"] = value;
            }
        }
        
        [global::System.Configuration.ApplicationScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool log_temps {
            get {
                return ((bool)(this["log_temps"]));
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("en-GB")]
        public string speech_recognition_location {
            get {
                return ((string)(this["speech_recognition_location"]));
            }
            set {
                this["speech_recognition_location"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool require_2_overlaps_for_hold_message {
            get {
                return ((bool)(this["require_2_overlaps_for_hold_message"]));
            }
            set {
                this["require_2_overlaps_for_hold_message"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool require_2_clears_for_clear_message {
            get {
                return ((bool)(this["require_2_clears_for_clear_message"]));
            }
            set {
                this["require_2_clears_for_clear_message"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("3.6")]
        public float spotter_car_length {
            get {
                return ((float)(this["spotter_car_length"]));
            }
            set {
                this["spotter_car_length"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("0.8")]
        public float spotter_gap_for_clear {
            get {
                return ((float)(this["spotter_gap_for_clear"]));
            }
            set {
                this["spotter_gap_for_clear"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("30")]
        public int time_after_race_start_for_spotter {
            get {
                return ((int)(this["time_after_race_start_for_spotter"]));
            }
            set {
                this["time_after_race_start_for_spotter"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("10")]
        public float min_speed_for_spotter {
            get {
                return ((float)(this["min_speed_for_spotter"]));
            }
            set {
                this["min_speed_for_spotter"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("3")]
        public int spotter_hold_repeat_frequency {
            get {
                return ((int)(this["spotter_hold_repeat_frequency"]));
            }
            set {
                this["spotter_hold_repeat_frequency"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("7")]
        public float max_closing_speed_for_spotter {
            get {
                return ((float)(this["max_closing_speed_for_spotter"]));
            }
            set {
                this["max_closing_speed_for_spotter"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool spotter_only_when_being_passed {
            get {
                return ((bool)(this["spotter_only_when_being_passed"]));
            }
            set {
                this["spotter_only_when_being_passed"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("150")]
        public int spotter_clear_delay {
            get {
                return ((int)(this["spotter_clear_delay"]));
            }
            set {
                this["spotter_clear_delay"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("50")]
        public int spotter_overlap_delay {
            get {
                return ((int)(this["spotter_overlap_delay"]));
            }
            set {
                this["spotter_overlap_delay"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool enable_pearls_of_wisdom {
            get {
                return ((bool)(this["enable_pearls_of_wisdom"]));
            }
            set {
                this["enable_pearls_of_wisdom"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("0.7")]
        public float pearls_of_wisdom_likelihood {
            get {
                return ((float)(this["pearls_of_wisdom_likelihood"]));
            }
            set {
                this["pearls_of_wisdom_likelihood"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("70")]
        public float max_cold_tyre_temp {
            get {
                return ((float)(this["max_cold_tyre_temp"]));
            }
            set {
                this["max_cold_tyre_temp"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("97")]
        public float max_good_tyre_temp {
            get {
                return ((float)(this["max_good_tyre_temp"]));
            }
            set {
                this["max_good_tyre_temp"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool play_cut_track_warnings {
            get {
                return ((bool)(this["play_cut_track_warnings"]));
            }
            set {
                this["play_cut_track_warnings"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool read_lap_times {
            get {
                return ((bool)(this["read_lap_times"]));
            }
            set {
                this["read_lap_times"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("-1")]
        public int CHANNEL_OPEN_FUNCTION_button_index {
            get {
                return ((int)(this["CHANNEL_OPEN_FUNCTION_button_index"]));
            }
            set {
                this["CHANNEL_OPEN_FUNCTION_button_index"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("")]
        public string CHANNEL_OPEN_FUNCTION_device_guid {
            get {
                return ((string)(this["CHANNEL_OPEN_FUNCTION_device_guid"]));
            }
            set {
                this["CHANNEL_OPEN_FUNCTION_device_guid"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("")]
        public string CHANNEL_OPEN_FUNCTION_device_type {
            get {
                return ((string)(this["CHANNEL_OPEN_FUNCTION_device_type"]));
            }
            set {
                this["CHANNEL_OPEN_FUNCTION_device_type"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("-1")]
        public int TOGGLE_RACE_UPDATES_FUNCTION_button_index {
            get {
                return ((int)(this["TOGGLE_RACE_UPDATES_FUNCTION_button_index"]));
            }
            set {
                this["TOGGLE_RACE_UPDATES_FUNCTION_button_index"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("")]
        public string TOGGLE_RACE_UPDATES_FUNCTION_device_guid {
            get {
                return ((string)(this["TOGGLE_RACE_UPDATES_FUNCTION_device_guid"]));
            }
            set {
                this["TOGGLE_RACE_UPDATES_FUNCTION_device_guid"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("")]
        public string TOGGLE_RACE_UPDATES_FUNCTION_device_type {
            get {
                return ((string)(this["TOGGLE_RACE_UPDATES_FUNCTION_device_type"]));
            }
            set {
                this["TOGGLE_RACE_UPDATES_FUNCTION_device_type"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("-1")]
        public int TOGGLE_SPOTTER_FUNCTION_button_index {
            get {
                return ((int)(this["TOGGLE_SPOTTER_FUNCTION_button_index"]));
            }
            set {
                this["TOGGLE_SPOTTER_FUNCTION_button_index"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("")]
        public string TOGGLE_SPOTTER_FUNCTION_device_guid {
            get {
                return ((string)(this["TOGGLE_SPOTTER_FUNCTION_device_guid"]));
            }
            set {
                this["TOGGLE_SPOTTER_FUNCTION_device_guid"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("")]
        public string TOGGLE_SPOTTER_FUNCTION_device_type {
            get {
                return ((string)(this["TOGGLE_SPOTTER_FUNCTION_device_type"]));
            }
            set {
                this["TOGGLE_SPOTTER_FUNCTION_device_type"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("DISABLED")]
        public string VOICE_OPTION {
            get {
                return ((string)(this["VOICE_OPTION"]));
            }
            set {
                this["VOICE_OPTION"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("")]
        public string custom_device_guid {
            get {
                return ((string)(this["custom_device_guid"]));
            }
            set {
                this["custom_device_guid"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("-applaunch 211500")]
        public string r3e_launch_params {
            get {
                return ((string)(this["r3e_launch_params"]));
            }
            set {
                this["r3e_launch_params"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("c:/games/steam/steam.exe")]
        public string r3e_launch_exe {
            get {
                return ((string)(this["r3e_launch_exe"]));
            }
            set {
                this["r3e_launch_exe"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool launch_raceroom {
            get {
                return ((bool)(this["launch_raceroom"]));
            }
            set {
                this["launch_raceroom"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("False")]
        public bool run_immediately {
            get {
                return ((bool)(this["run_immediately"]));
            }
            set {
                this["run_immediately"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("1")]
        public float messages_volume {
            get {
                return ((float)(this["messages_volume"]));
            }
            set {
                this["messages_volume"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool enable_tyre_temp_warnings {
            get {
                return ((bool)(this["enable_tyre_temp_warnings"]));
            }
            set {
                this["enable_tyre_temp_warnings"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool enable_race_start_messages {
            get {
                return ((bool)(this["enable_race_start_messages"]));
            }
            set {
                this["enable_race_start_messages"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool enable_fuel_messages {
            get {
                return ((bool)(this["enable_fuel_messages"]));
            }
            set {
                this["enable_fuel_messages"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool enable_gap_messages {
            get {
                return ((bool)(this["enable_gap_messages"]));
            }
            set {
                this["enable_gap_messages"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool enable_laptime_messages {
            get {
                return ((bool)(this["enable_laptime_messages"]));
            }
            set {
                this["enable_laptime_messages"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool enable_position_messages {
            get {
                return ((bool)(this["enable_position_messages"]));
            }
            set {
                this["enable_position_messages"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool enable_session_end_messages {
            get {
                return ((bool)(this["enable_session_end_messages"]));
            }
            set {
                this["enable_session_end_messages"] = value;
            }
        }
        
        [global::System.Configuration.UserScopedSettingAttribute()]
        [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [global::System.Configuration.DefaultSettingValueAttribute("True")]
        public bool enable_tyre_wear_warnings {
            get {
                return ((bool)(this["enable_tyre_wear_warnings"]));
            }
            set {
                this["enable_tyre_wear_warnings"] = value;
            }
        }
    }
}
