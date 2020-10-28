####### INITIATION #######

# Initiation of the scenario and the main PCL-file
scenario = "monitor";
pcl_file = "monitor_flashPCL.pcl";
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
picture { } black_screen;			

picture {box { height = 60; width = 60; color = 255,255,255; };
			x = -900; y = 500;
			 } white_screen; 

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

picture { text { caption = "End of experiment."; font_size = 16; } t_end1; x = 0; y = 0;
			 text { caption = "Thank you for participating!"; font_size = 16; } t_end1b; x = 0; y = -35;
} p_end;


picture { text { caption = "Welcome!"; } t_instruction1; x = 0; y = 0;
          text { caption = "This is a video timing test.";}t_instruction2; x = 0; y = -35;   
			 text { caption = "A black- and white screen will show in turns";}t_instruction3; x = 0; y = -70;
			 text { caption = "while a trigger signal is present at the parallel port.";}t_instruction4; x = 0; y = -105;
			 text { caption = "Change frequency by editing the dur_wait in the INFO file.";}t_instruction5; x = 0; y = -140;
			 text { caption = "Press P to pause, R to resume or Q to quit.";}t_instruction6; x = 0; y = -175;

			 text { caption = "[Press enter to continue!]";}t_instruction7; x = 0; y = -250;
} p_instruction;


picture { text { caption = " "; font_size = 16; } t_text1; x = 0; y = 0;
			 text { caption = " "; font_size = 16; } t_text2; x = 0; y = -35;
} P_text;
