pcl_file = "vidstress.pcl";
scenario = "Video Stress Experiment";
active_buttons = 1;
button_codes = 251;
default_font_size = 14;
default_background_color = 0, 0, 0;   
response_matching = simple_matching;

begin;

picture {} default;

picture { 
	box { width = 10; height = 10; color = 0, 0, 0; } bb;
	x = 0; y = 0;
} blackbox;

picture {
	box { width = 10; height = 10; color = 255, 255, 255; } wb;
	x = 0; y = 0;
} whitebox;

picture {
	bitmap { filename = "stress1.bmp"; } s1;
	x = 0; y = 0;
} stress1;

picture {
	bitmap { filename = "stress2.bmp"; } s2;
	x = 0; y = 0;
} stress2;

/*picture {
	bitmap { filename = "stress1.bmp"; } s1;
	x = 0; y = 0;
} stress1;

picture {
	bitmap { filename = "stress2.bmp"; } s2;
	x = 0; y = 0;
} stress2;*/

trial {
	trial_duration = stimuli_length;
	stimulus_event {
		nothing {};
		code = "";
		time = 0;
	}evt1;
}trial1;

trial {
	trial_duration = stimuli_length;
	stimulus_event {
		nothing {};
		code = "";
		time = 0;
	}evt2;
}trial2;