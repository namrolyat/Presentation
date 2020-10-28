####### INITIATION #######

# Initiation of the scenario and the main PCL-file
scenario = "Template";
pcl_file = "TemplatePCL.pcl";
no_logfile = true;

# Keep SDL as simple/stupid as possible and
# STAY CLEAR OF THE PARALLEL PORT!!!
response_matching = simple_matching;
response_port_output = true; 

# To get the Enter 
active_buttons = 1;
button_codes = 1;

default_background_color = 0, 0, 0;
default_font = "arial";
default_font_size = 20;
default_text_color = 235, 235, 235; 
default_text_align = align_left;


######### BEGIN ##########

begin;

##########################
picture { } default;			#zwart scherm

picture {
			box { height = 1; width = 30; color = 255,255,255; } horz;
			x = 0; y = 0;
			box { height = 30; width = 1; color = 255,255,255; } vert;
			x = 0; y = 0;
} fixation;

picture { text { caption = " "; } t_info1; x = 0; y = 0;
          text { caption = " "; } t_info2; x = 0; y = -40;
          text { caption = "Press [ENTER] to confirm or [Esc] to abort. "; } t_info3; x = 0; y = -150;
} p_info;

######## PICTURES ########

picture { text { caption = "Einde van experiment."; font_size = 16; } t_end1; x = 0; y = 0;
			 text { caption = "Bedankt voor het meedoen!"; font_size = 16; } t_end1b; x = 0; y = -35;
} p_end;


picture { text { caption = "Welcome!"; } t_instructie1a; x = 0; y = 0;
          text { caption = "This experiment is about to start.";}t_instructie1b; x = 0; y = -35;   
			 text { caption = "The experiment will last about 15 minutes.";}t_instructie1c; x = 0; y = -70;
			 text { caption = "[Press enter to continue]";}t_instructie1d; x = 0; y = -140;
} p_instructie1;


picture { text { caption = " "; font_size = 16; } t_text1; x = 0; y = 0;
			 text { caption = " "; font_size = 16; } t_text2; x = 0; y = -35;
} P_text;


######## STIMULI #########


sound { 	wavefile { filename = "sound.wav"; preload = true;}; 
} beep;

array {	bitmap { filename = "zon.jpg"; preload = true; };
			bitmap { filename = "flower.jpg"; preload = true; };
} Dots;

picture { bitmap {filename = "tussenschermpje.jpg"; preload = true; }tussenschermpje; 
			 x = 0; y = 0;
} greyscreen; 
	