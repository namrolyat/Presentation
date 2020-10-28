active_buttons = 0;

begin;

picture {
   text { caption = " " ; font_size = 42; } t_Text1; x = 0; y = 0;
#   text { caption = " " ; font_size = 16; } t_Text2; x = 90; y = 0;
} P_Text;


begin_pcl;

output_port oport = output_port_manager.get_port( 1 );
input_port iport = input_port_manager.get_port( 1 );

loop 
until false
begin
	t_Text1.set_caption("Send a trigger to capture:", true);
	#string sKeyboardInput = system_keyboard.get_input(P_Text, t_Text2 );
	#oport.send_code( int(sKeyboardInput) );
	loop 
   until (iport.new_code_count() > 0)
   begin
	end;
	
	t_Text1.set_caption( string(iport.last_code()), true);
	P_Text.present();
	
end;