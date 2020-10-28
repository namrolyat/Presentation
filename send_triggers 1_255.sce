active_buttons = 0;

begin;

picture {
   text { caption = " " ; font_size = 16; } t_Text1; x = 0; y = 0;
   text { caption = " " ; font_size = 16; } t_Text2; x = 90; y = 0;
} P_Text;


begin_pcl;

output_port oport = output_port_manager.get_port( 1 );

loop 
until false
begin
	t_Text1.set_caption("trigger [1..255]:", true);
	string sKeyboardInput = system_keyboard.get_input(P_Text, t_Text2 );
	
	oport.send_code( int(sKeyboardInput) );
	
end;