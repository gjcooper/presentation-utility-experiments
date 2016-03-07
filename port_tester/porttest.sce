pcl_file = "porttest.pcl";
scenario = "Port Tester";
default_font_size = 14;
default_background_color = 0, 0, 0;   
response_matching = simple_matching;

begin;

picture {} default;

picture { 
	text { caption = "Please enter a number 1-255 or c to continue\n"; } ootxt;
	x = 0; y = 0;
} oopic;

picture { 
	text { caption = "Repeating 255"; } rptxt;
	x = 0; y = 0;
} rpic;

picture { 
	text { caption = "Cycling 1-255"; } ctxt;
	x = 0; y = 0;
} cpic;