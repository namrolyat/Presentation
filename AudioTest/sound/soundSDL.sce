

####### INITIATION #######

# Initiation of the scenario and the main PCL-file
scenario = "sound";
pcl_file = "soundPCL.pcl";
no_logfile = false;
scenario_type = trials;   #default

response_matching = simple_matching;
response_port_output = false;
write_codes = false;

# To get the Enter and buttenbox
active_buttons = 1;
button_codes = 1;

default_background_color = 0, 0, 0;
default_font = "arial";
default_font_size = 20;
default_text_color = 235, 235, 235; 


######### BEGIN ##########

begin;

######## PICTURES ########
picture { } default;

picture {
  box { height = 1; width = 30; color = 255,255,255; } horz;
  x = 0; y = 0;
  box { height = 30; width = 1; color = 255,255,255; } vert;
  x = 0; y = 0;
} fixation;


picture { text { caption = " "; } t_info1; x = 0; y = 0;
          text { caption = " "; font_size = 16; }t_info2; x = 0; y = -40;
          text { caption = "Press [ENTER] to confirm or [Esc] to aboard "; } t_info3; x = 0; y = -150;
} p_info;


picture { text { caption = "That was it."; font_size = 16; } t_end1; x = 0; y = 0;
          text { caption = " "; font_size = 16; } t_end2; x = 0; y = -50;
} p_end;

picture { text { caption = "Welcome!"; } t_instructie1a; x = 0; y = 35;
          text { caption = "This tests will produce a 10ms 2kHz audio signal in a loop.";}t_instructie1b; x = 0; y = 0;   
		  text { caption = "A trigger signal is fired at the start of every loop entry.";}t_instructie1c; x = 0; y = -35;
		  text {caption = "By showing the audio and trigger signals on a scope,";} t_instructie1d; x = 0; y = -70;
		  text {caption = "the delay-, rise- and fall times can be measured";} t_instructie1e; x = 0; y = -105;
		  text {caption = "The test lasts about 20 seconds.";} t_instructie1f; x = 0; y = -140;
			text { caption = "[Press return to continue.]";}t_instructie1g; x = 0; y = -205;
} p_instructie1;


picture {
   text { caption = " "; font_size = 24; } text1;
   x = 0; y = 0;
   text { caption = " "; font_size = 24; } text2;
   x = 0; y = -75;
} Ptext;     


 
######## STIMULI #########


#wavefile { filename = "100HZ.WAV";  preload = true;  } ding1;
#wavefile { filename = "1000HZ.WAV";  preload = true;  } ding2;
#wavefile { filename = "2000HZ.WAV";  preload = true;  } ding3;
#wavefile { filename = "test2khz_10ms_48000_32bit.wav";  preload = true;  } ding4;
#wavefile { filename = "test2khz_10ms_48000_24bit.wav";  preload = true;  } ding4;
wavefile { filename = "test2khz_10ms_44100_16bit.wav";  preload = true;  } ding4;
#wavefile { filename = "2000HZ.WAV";  preload = true;  } ding5;
#wavefile { filename = "2KHZright.WAV";  preload = true;  } ding6;
#wavefile { filename = "bop_800.WAV";  preload = true;  } ding7;

#trial {
   sound { wavefile ding4;} sound2;
#} GoodSound;  




