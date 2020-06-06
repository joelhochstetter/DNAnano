// switches for output
#declare DRAW_BASES = 1; // possible values are 0, 1; only relevant for DNA ribbons
#declare DRAW_BASES_TYPE = 3; // possible values are 1, 2, 3; only relevant for DNA ribbons
#declare DRAW_FOG = 0; // set to 1 to enable fog

#include "colors.inc"

#include "transforms.inc"
background { rgb <1, 1, 1>}

#default {
   normal{
       ripples 0.25
       frequency 0.20
       turbulence 0.2
       lambda 5
   }
	finish {
		phong 0.1
		phong_size 40.
	}
}

// original window dimensions: 1024x640


// camera settings

camera {
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.440996, 14.817959, 14.968197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.093461, 14.939066, 15.124888>,  <3.884939, 15.011730, 15.218904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.093461, 14.939066, 15.124888>,  <4.440996, 14.817959, 14.968197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.093461, 14.939066, 15.124888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101213, 0.665892, -0.739151,
		-0.484641, -0.681851, -0.547908,
		-0.868838, 0.302767, 0.391730,
		3.832809, 15.029896, 15.242408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.164742, 14.972756, 15.300017>,  <4.440996, 14.817959, 14.968197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.164742, 14.972756, 15.300017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.146678, 14.573905, 15.324335>,  <5.135840, 14.334594, 15.338926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.146678, 14.573905, 15.324335>,  <5.164742, 14.972756, 15.300017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.146678, 14.573905, 15.324335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980758, -0.055823, -0.187078,
		0.189934, 0.051178, 0.980462,
		-0.045158, -0.997128, 0.060796,
		5.133131, 14.274767, 15.342574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.681108, 14.811954, 15.825727>,  <5.164742, 14.972756, 15.300017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.681108, 14.811954, 15.825727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.645075, 14.520419, 15.554233>,  <5.623455, 14.345498, 15.391335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.645075, 14.520419, 15.554233>,  <5.681108, 14.811954, 15.825727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.645075, 14.520419, 15.554233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990867, 0.003076, -0.134811,
		0.100343, -0.684681, 0.721902,
		-0.090082, -0.728836, -0.678737,
		5.618050, 14.301768, 15.350612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.353792, 14.506546, 16.235153>,  <5.681108, 14.811954, 15.825727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.353792, 14.506546, 16.235153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.694597, 14.631125, 16.066832>,  <6.899079, 14.705873, 15.965838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.694597, 14.631125, 16.066832>,  <6.353792, 14.506546, 16.235153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.694597, 14.631125, 16.066832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191589, -0.933528, -0.303017,
		-0.487206, 0.177553, -0.855047,
		0.852012, 0.311450, -0.420803,
		6.950200, 14.724561, 15.940591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.345607, 14.173768, 15.605354>,  <6.353792, 14.506546, 16.235153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.345607, 14.173768, 15.605354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.732084, 14.231537, 15.690784>,  <6.963970, 14.266198, 15.742043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.732084, 14.231537, 15.690784>,  <6.345607, 14.173768, 15.605354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.732084, 14.231537, 15.690784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202689, -0.937451, -0.283023,
		0.159341, 0.316744, -0.935031,
		0.966192, 0.144423, 0.213575,
		7.021942, 14.274864, 15.754857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.837345, 14.008821, 14.998388>,  <6.345607, 14.173768, 15.605354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.837345, 14.008821, 14.998388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.047948, 13.986354, 15.337713>,  <7.174311, 13.972873, 15.541308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.047948, 13.986354, 15.337713>,  <6.837345, 14.008821, 14.998388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.047948, 13.986354, 15.337713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018944, -0.996792, -0.077758,
		0.849958, 0.057011, -0.523756,
		0.526509, -0.056169, 0.848312,
		7.205901, 13.969503, 15.592207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.358868, 13.446960, 14.883688>,  <6.837345, 14.008821, 14.998388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.358868, 13.446960, 14.883688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.327136, 13.489126, 15.280191>,  <7.308096, 13.514426, 15.518093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.327136, 13.489126, 15.280191>,  <7.358868, 13.446960, 14.883688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.327136, 13.489126, 15.280191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020869, -0.993999, 0.107377,
		0.996630, 0.029205, 0.076655,
		-0.079331, 0.105415, 0.991259,
		7.303336, 13.520751, 15.577569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.939296, 13.110888, 15.166577>,  <7.358868, 13.446960, 14.883688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.939296, 13.110888, 15.166577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.654325, 13.131536, 15.446516>,  <7.483343, 13.143924, 15.614479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.654325, 13.131536, 15.446516>,  <7.939296, 13.110888, 15.166577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.654325, 13.131536, 15.446516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218353, -0.931479, 0.290978,
		0.666912, 0.360114, 0.652339,
		-0.712426, 0.051617, 0.699847,
		7.440598, 13.147020, 15.656470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.162940, 12.867095, 15.724732>,  <7.939296, 13.110888, 15.166577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.162940, 12.867095, 15.724732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.770667, 12.798472, 15.762311>,  <7.535302, 12.757298, 15.784858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.770667, 12.798472, 15.762311>,  <8.162940, 12.867095, 15.724732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.770667, 12.798472, 15.762311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194003, -0.914318, 0.355507,
		0.024906, 0.366866, 0.929940,
		-0.980685, -0.171557, 0.093945,
		7.476461, 12.747005, 15.790495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.128883, 12.338523, 16.174593>,  <8.162940, 12.867095, 15.724732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.128883, 12.338523, 16.174593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.762158, 12.336039, 16.014887>,  <7.542122, 12.334548, 15.919063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.762158, 12.336039, 16.014887>,  <8.128883, 12.338523, 16.174593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.762158, 12.336039, 16.014887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075950, -0.978914, 0.189630,
		-0.392025, 0.204180, 0.897010,
		-0.916814, -0.006212, -0.399266,
		7.487114, 12.334175, 15.895107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.872191, 11.855517, 16.628254>,  <8.128883, 12.338523, 16.174593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.872191, 11.855517, 16.628254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.631590, 11.882704, 16.309864>,  <7.487230, 11.899015, 16.118830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.631590, 11.882704, 16.309864>,  <7.872191, 11.855517, 16.628254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.631590, 11.882704, 16.309864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184348, -0.981292, 0.055519,
		-0.777309, 0.180131, 0.602779,
		-0.601503, 0.067965, -0.795974,
		7.451139, 11.903093, 16.071072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.235499, 11.657207, 16.837210>,  <7.872191, 11.855517, 16.628254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.235499, 11.657207, 16.837210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.212675, 11.608724, 16.440815>,  <7.198981, 11.579634, 16.202978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.212675, 11.608724, 16.440815>,  <7.235499, 11.657207, 16.837210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.212675, 11.608724, 16.440815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278624, -0.951231, 0.132390,
		-0.958704, 0.283666, 0.020504,
		-0.057059, -0.121210, -0.990986,
		7.195558, 11.572361, 16.143518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.606673, 11.363545, 16.728939>,  <7.235499, 11.657207, 16.837210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.606673, 11.363545, 16.728939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.814878, 11.259744, 16.403553>,  <6.939800, 11.197463, 16.208321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.814878, 11.259744, 16.403553>,  <6.606673, 11.363545, 16.728939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.814878, 11.259744, 16.403553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335097, -0.938348, 0.084926,
		-0.785353, 0.228385, -0.575380,
		0.520511, -0.259505, -0.813465,
		6.971031, 11.181892, 16.159513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.190804, 10.847399, 16.368366>,  <6.606673, 11.363545, 16.728939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.190804, 10.847399, 16.368366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.557911, 10.813751, 16.213125>,  <6.778175, 10.793563, 16.119980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.557911, 10.813751, 16.213125>,  <6.190804, 10.847399, 16.368366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.557911, 10.813751, 16.213125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054502, -0.994741, 0.086716,
		-0.393357, -0.058433, -0.917527,
		0.917769, -0.084118, -0.388104,
		6.833241, 10.788516, 16.096695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.163264, 10.381100, 15.771836>,  <6.190804, 10.847399, 16.368366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.163264, 10.381100, 15.771836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.537963, 10.391457, 15.911453>,  <6.762783, 10.397671, 15.995224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.537963, 10.391457, 15.911453>,  <6.163264, 10.381100, 15.771836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.537963, 10.391457, 15.911453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022534, -0.999652, 0.013682,
		0.349276, -0.004951, -0.937007,
		0.936749, 0.025893, 0.349043,
		6.818988, 10.399224, 16.016167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.468753, 9.847393, 15.478161>,  <6.163264, 10.381100, 15.771836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.468753, 9.847393, 15.478161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.744508, 9.908051, 15.761497>,  <6.909961, 9.944445, 15.931499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.744508, 9.908051, 15.761497>,  <6.468753, 9.847393, 15.478161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.744508, 9.908051, 15.761497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077625, -0.987677, 0.135897,
		0.720221, -0.038700, -0.692664,
		0.689388, 0.151644, 0.708342,
		6.951324, 9.953544, 15.974000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.891247, 9.234498, 15.384020>,  <6.468753, 9.847393, 15.478161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.891247, 9.234498, 15.384020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.037877, 9.359258, 15.734640>,  <7.125854, 9.434114, 15.945012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.037877, 9.359258, 15.734640>,  <6.891247, 9.234498, 15.384020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.037877, 9.359258, 15.734640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146359, -0.949735, 0.276734,
		0.918805, 0.026848, -0.393798,
		0.366574, 0.311900, 0.876551,
		7.147849, 9.452827, 15.997605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.561152, 9.034575, 15.548737>,  <6.891247, 9.234498, 15.384020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.561152, 9.034575, 15.548737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.399899, 9.093209, 15.910067>,  <7.303148, 9.128390, 16.126865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.399899, 9.093209, 15.910067>,  <7.561152, 9.034575, 15.548737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.399899, 9.093209, 15.910067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242308, -0.934761, 0.259824,
		0.882481, 0.323626, 0.341311,
		-0.403130, 0.146588, 0.903326,
		7.278961, 9.137186, 16.181065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.010672, 8.716252, 16.014223>,  <7.561152, 9.034575, 15.548737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.010672, 8.716252, 16.014223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.654432, 8.718440, 16.196127>,  <7.440689, 8.719752, 16.305269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.654432, 8.718440, 16.196127>,  <8.010672, 8.716252, 16.014223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.654432, 8.718440, 16.196127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131078, -0.954410, 0.268179,
		0.435495, 0.298448, 0.849278,
		-0.890597, 0.005469, 0.454760,
		7.387253, 8.720080, 16.332556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.026139, 8.110206, 16.491573>,  <8.010672, 8.716252, 16.014223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.026139, 8.110206, 16.491573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.637628, 8.203572, 16.510067>,  <7.404521, 8.259592, 16.521162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.637628, 8.203572, 16.510067>,  <8.026139, 8.110206, 16.491573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.637628, 8.203572, 16.510067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237950, -0.953205, -0.186496,
		0.000538, -0.192141, 0.981367,
		-0.971277, 0.233416, 0.046233,
		7.346245, 8.273597, 16.523937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.674124, 7.550209, 16.839762>,  <8.026139, 8.110206, 16.491573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.674124, 7.550209, 16.839762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.377607, 7.744208, 16.654175>,  <7.199697, 7.860608, 16.542824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.377607, 7.744208, 16.654175>,  <7.674124, 7.550209, 16.839762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.377607, 7.744208, 16.654175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420702, -0.874370, -0.241840,
		-0.522969, 0.015917, 0.852203,
		-0.741292, 0.484998, -0.463965,
		7.155220, 7.889708, 16.514986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.932765, 7.359674, 17.113583>,  <7.674124, 7.550209, 16.839762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.932765, 7.359674, 17.113583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.896432, 7.477215, 16.732973>,  <6.874632, 7.547740, 16.504606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.896432, 7.477215, 16.732973>,  <6.932765, 7.359674, 17.113583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.896432, 7.477215, 16.732973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439777, -0.869098, -0.226416,
		-0.893502, 0.397893, 0.208171,
		-0.090832, 0.293852, -0.951525,
		6.869183, 7.565371, 16.447515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.381637, 6.947387, 16.839933>,  <6.932765, 7.359674, 17.113583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.381637, 6.947387, 16.839933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.505331, 7.126744, 16.504477>,  <6.579547, 7.234358, 16.303204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.505331, 7.126744, 16.504477>,  <6.381637, 6.947387, 16.839933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.505331, 7.126744, 16.504477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308682, -0.786788, -0.534490,
		-0.899494, 0.424156, -0.104893,
		0.309236, 0.448392, -0.838640,
		6.598102, 7.261261, 16.252884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.887907, 6.914739, 16.263142>,  <6.381637, 6.947387, 16.839933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.887907, 6.914739, 16.263142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.233562, 6.972517, 16.070311>,  <6.440956, 7.007183, 15.954612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.233562, 6.972517, 16.070311>,  <5.887907, 6.914739, 16.263142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.233562, 6.972517, 16.070311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220017, -0.753093, -0.620035,
		-0.452609, 0.641862, -0.618998,
		0.864140, 0.144443, -0.482077,
		6.492805, 7.015850, 15.925688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.713988, 7.086926, 15.662093>,  <5.887907, 6.914739, 16.263142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.713988, 7.086926, 15.662093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.079137, 6.931589, 15.611726>,  <6.298226, 6.838387, 15.581505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.079137, 6.931589, 15.611726>,  <5.713988, 7.086926, 15.662093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.079137, 6.931589, 15.611726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376587, -0.681934, -0.627015,
		0.157627, 0.619804, -0.768763,
		0.912872, -0.388340, -0.125919,
		6.352999, 6.815087, 15.573950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.726144, 6.663131, 14.981766>,  <5.713988, 7.086926, 15.662093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.726144, 6.663131, 14.981766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.008518, 6.514019, 15.222660>,  <6.177943, 6.424551, 15.367197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.008518, 6.514019, 15.222660>,  <5.726144, 6.663131, 14.981766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.008518, 6.514019, 15.222660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260265, -0.927328, -0.268932,
		0.658723, 0.033108, -0.751657,
		0.705936, -0.372782, 0.602236,
		6.220299, 6.402184, 15.403331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.258016, 6.338815, 14.541769>,  <5.726144, 6.663131, 14.981766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.258016, 6.338815, 14.541769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.257627, 6.159150, 14.899149>,  <6.257393, 6.051351, 15.113577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.257627, 6.159150, 14.899149>,  <6.258016, 6.338815, 14.541769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.257627, 6.159150, 14.899149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346775, -0.837859, -0.421593,
		0.937948, -0.310236, -0.154942,
		-0.000974, -0.449162, 0.893450,
		6.257334, 6.024401, 15.167184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.313028, 6.653193, 13.888005>,  <6.258016, 6.338815, 14.541769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.313028, 6.653193, 13.888005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.346942, 6.260192, 13.954335>,  <6.367291, 6.024391, 13.994133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.346942, 6.260192, 13.954335>,  <6.313028, 6.653193, 13.888005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.346942, 6.260192, 13.954335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985232, -0.107514, -0.133260,
		0.148757, -0.152078, -0.977110,
		0.084787, -0.982504, 0.165825,
		6.372378, 5.965441, 14.004083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.809099, 6.710729, 13.190247>,  <6.313028, 6.653193, 13.888005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.809099, 6.710729, 13.190247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.002892, 7.015806, 13.361629>,  <7.119169, 7.198853, 13.464458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.002892, 7.015806, 13.361629>,  <6.809099, 6.710729, 13.190247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.002892, 7.015806, 13.361629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347703, -0.281537, 0.894337,
		0.802731, -0.582268, 0.128791,
		0.484484, 0.762694, 0.428455,
		7.148238, 7.244614, 13.490165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.098069, 6.350371, 13.737645>,  <6.809099, 6.710729, 13.190247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.098069, 6.350371, 13.737645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.048388, 6.745254, 13.777637>,  <7.018579, 6.982183, 13.801632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.048388, 6.745254, 13.777637>,  <7.098069, 6.350371, 13.737645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.048388, 6.745254, 13.777637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459805, -0.146550, 0.875844,
		0.879291, 0.062811, 0.472124,
		-0.124202, 0.987207, 0.099979,
		7.011127, 7.041416, 13.807631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.867633, 6.506404, 13.546053>,  <7.098069, 6.350371, 13.737645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.867633, 6.506404, 13.546053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.644928, 6.402289, 13.861588>,  <7.511305, 6.339820, 14.050908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.644928, 6.402289, 13.861588>,  <7.867633, 6.506404, 13.546053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.644928, 6.402289, 13.861588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815809, 0.007493, 0.578273,
		-0.156429, 0.965502, 0.208174,
		-0.556764, -0.260288, 0.788837,
		7.477899, 6.324203, 14.098239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.781752, 7.032345, 14.028887>,  <7.867633, 6.506404, 13.546053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.781752, 7.032345, 14.028887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.783938, 6.664923, 14.186988>,  <7.785250, 6.444469, 14.281848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.783938, 6.664923, 14.186988>,  <7.781752, 7.032345, 14.028887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.783938, 6.664923, 14.186988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955321, 0.121606, 0.269397,
		-0.295521, 0.376119, 0.878181,
		0.005466, -0.918557, 0.395252,
		7.785578, 6.389356, 14.305563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.227098, 7.067531, 14.706907>,  <7.781752, 7.032345, 14.028887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.227098, 7.067531, 14.706907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.202635, 6.678255, 14.618221>,  <8.187957, 6.444689, 14.565009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.202635, 6.678255, 14.618221>,  <8.227098, 7.067531, 14.706907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.202635, 6.678255, 14.618221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968514, -0.111571, 0.222560,
		-0.241331, -0.201123, 0.949373,
		-0.061160, -0.973191, -0.221715,
		8.184287, 6.386297, 14.551706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.451477, 6.721773, 15.320121>,  <8.227098, 7.067531, 14.706907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.451477, 6.721773, 15.320121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.555969, 6.518901, 14.991602>,  <8.618665, 6.397178, 14.794491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.555969, 6.518901, 14.991602>,  <8.451477, 6.721773, 15.320121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.555969, 6.518901, 14.991602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898994, -0.182017, 0.398345,
		-0.351522, -0.842401, 0.408403,
		0.261230, -0.507180, -0.821296,
		8.634338, 6.366747, 14.745213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.151649, 6.800163, 15.543200>,  <8.451477, 6.721773, 15.320121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.151649, 6.800163, 15.543200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.004838, 6.879679, 15.179711>,  <8.916752, 6.927388, 14.961618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.004838, 6.879679, 15.179711>,  <9.151649, 6.800163, 15.543200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.004838, 6.879679, 15.179711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457331, 0.889242, 0.009816,
		0.810025, -0.411984, -0.417288,
		-0.367026, 0.198790, -0.908721,
		8.894731, 6.939316, 14.907095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.721305, 7.054438, 15.211368>,  <9.151649, 6.800163, 15.543200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.721305, 7.054438, 15.211368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.388644, 7.186728, 15.032940>,  <9.189048, 7.266102, 14.925883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.388644, 7.186728, 15.032940>,  <9.721305, 7.054438, 15.211368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.388644, 7.186728, 15.032940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421388, 0.899029, -0.119077,
		0.361649, -0.286999, -0.887041,
		-0.831651, 0.330724, -0.446070,
		9.139149, 7.285945, 14.899118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.918862, 7.416704, 14.596999>,  <9.721305, 7.054438, 15.211368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.918862, 7.416704, 14.596999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.555579, 7.555241, 14.690982>,  <9.337609, 7.638363, 14.747372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.555579, 7.555241, 14.690982>,  <9.918862, 7.416704, 14.596999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.555579, 7.555241, 14.690982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278059, 0.918926, -0.279747,
		-0.312795, -0.188736, -0.930880,
		-0.908208, 0.346343, 0.234956,
		9.283116, 7.659144, 14.761469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.817278, 7.957737, 14.102928>,  <9.918862, 7.416704, 14.596999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.817278, 7.957737, 14.102928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.537823, 8.046126, 14.375127>,  <9.370150, 8.099159, 14.538446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.537823, 8.046126, 14.375127>,  <9.817278, 7.957737, 14.102928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.537823, 8.046126, 14.375127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100712, 0.972015, -0.212237,
		-0.708352, -0.079743, -0.701341,
		-0.698638, 0.220972, 0.680497,
		9.328231, 8.112418, 14.579276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.451901, 8.500912, 13.787312>,  <9.817278, 7.957737, 14.102928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.451901, 8.500912, 13.787312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.356742, 8.505921, 14.175796>,  <9.299646, 8.508927, 14.408886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.356742, 8.505921, 14.175796>,  <9.451901, 8.500912, 13.787312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.356742, 8.505921, 14.175796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016311, 0.999827, -0.008898,
		-0.971153, 0.013725, -0.238062,
		-0.237899, 0.012524, 0.971209,
		9.285372, 8.509679, 14.467158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.896958, 9.059446, 13.816192>,  <9.451901, 8.500912, 13.787312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.896958, 9.059446, 13.816192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.066278, 8.987713, 14.171417>,  <9.167871, 8.944673, 14.384553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.066278, 8.987713, 14.171417>,  <8.896958, 9.059446, 13.816192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.066278, 8.987713, 14.171417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215701, 0.971976, 0.093463,
		-0.879938, 0.151993, 0.450119,
		0.423300, -0.179333, 0.888064,
		9.193269, 8.933913, 14.437837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.628193, 9.531835, 14.239994>,  <8.896958, 9.059446, 13.816192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.628193, 9.531835, 14.239994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.952318, 9.400959, 14.434453>,  <9.146793, 9.322433, 14.551128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.952318, 9.400959, 14.434453>,  <8.628193, 9.531835, 14.239994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.952318, 9.400959, 14.434453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275161, 0.944907, 0.177305,
		-0.517376, -0.009904, 0.855701,
		0.810314, -0.327189, 0.486148,
		9.195413, 9.302802, 14.580297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.729646, 9.922071, 14.826889>,  <8.628193, 9.531835, 14.239994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.729646, 9.922071, 14.826889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.099698, 9.776606, 14.783293>,  <9.321730, 9.689326, 14.757134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.099698, 9.776606, 14.783293>,  <8.729646, 9.922071, 14.826889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.099698, 9.776606, 14.783293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379414, 0.895685, 0.231932,
		0.013276, -0.255921, 0.966606,
		0.925132, -0.363665, -0.108992,
		9.377237, 9.667506, 14.750595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.085843, 9.996048, 15.478668>,  <8.729646, 9.922071, 14.826889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.085843, 9.996048, 15.478668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.356977, 9.988561, 15.184679>,  <9.519658, 9.984068, 15.008286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.356977, 9.988561, 15.184679>,  <9.085843, 9.996048, 15.478668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.356977, 9.988561, 15.184679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361288, 0.879129, 0.310810,
		0.640319, -0.476216, 0.602669,
		0.677837, -0.018719, -0.734974,
		9.560328, 9.982944, 14.964187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.663653, 10.260516, 15.848886>,  <9.085843, 9.996048, 15.478668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.663653, 10.260516, 15.848886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.724706, 10.342399, 15.462147>,  <9.761337, 10.391528, 15.230103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.724706, 10.342399, 15.462147>,  <9.663653, 10.260516, 15.848886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.724706, 10.342399, 15.462147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297904, 0.923278, 0.242511,
		0.942315, -0.325043, 0.079937,
		0.152631, 0.204708, -0.966850,
		9.770495, 10.403811, 15.172091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.371605, 10.579799, 15.843973>,  <9.663653, 10.260516, 15.848886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.371605, 10.579799, 15.843973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.226664, 10.671489, 15.482608>,  <10.139699, 10.726502, 15.265788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.226664, 10.671489, 15.482608>,  <10.371605, 10.579799, 15.843973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.226664, 10.671489, 15.482608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227383, 0.961739, 0.152822,
		0.903879, -0.150045, -0.400611,
		-0.362353, 0.229225, -0.903414,
		10.117958, 10.740256, 15.211584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.826354, 11.029826, 15.401443>,  <10.371605, 10.579799, 15.843973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.826354, 11.029826, 15.401443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.454216, 11.078954, 15.263240>,  <10.230933, 11.108431, 15.180318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.454216, 11.078954, 15.263240>,  <10.826354, 11.029826, 15.401443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.454216, 11.078954, 15.263240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085987, 0.989038, 0.120043,
		0.356463, 0.081972, -0.930706,
		-0.930344, 0.122820, -0.345507,
		10.175113, 11.115800, 15.159588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.926336, 11.544461, 14.996279>,  <10.826354, 11.029826, 15.401443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.926336, 11.544461, 14.996279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.539145, 11.531340, 15.095831>,  <10.306829, 11.523466, 15.155562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.539145, 11.531340, 15.095831>,  <10.926336, 11.544461, 14.996279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.539145, 11.531340, 15.095831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035309, 0.963777, 0.264361,
		-0.248538, 0.264684, -0.931757,
		-0.967978, -0.032805, 0.248881,
		10.248751, 11.521499, 15.170495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.626242, 12.040707, 14.676551>,  <10.926336, 11.544461, 14.996279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.626242, 12.040707, 14.676551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.377357, 11.949862, 14.976223>,  <10.228025, 11.895356, 15.156026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.377357, 11.949862, 14.976223>,  <10.626242, 12.040707, 14.676551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.377357, 11.949862, 14.976223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170716, 0.973326, 0.153276,
		-0.764007, -0.032526, -0.644388,
		-0.622214, -0.227111, 0.749180,
		10.190693, 11.881729, 15.200977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.052003, 12.477649, 14.457317>,  <10.626242, 12.040707, 14.676551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.052003, 12.477649, 14.457317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.048049, 12.382205, 14.845743>,  <10.045677, 12.324939, 15.078799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.048049, 12.382205, 14.845743>,  <10.052003, 12.477649, 14.457317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.048049, 12.382205, 14.845743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227390, 0.946207, 0.230186,
		-0.973754, -0.218535, -0.063610,
		-0.009884, -0.238609, 0.971066,
		10.045084, 12.310622, 15.137063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.570354, 12.967507, 14.727267>,  <10.052003, 12.477649, 14.457317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.570354, 12.967507, 14.727267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.741637, 12.819529, 15.057061>,  <9.844407, 12.730742, 15.254938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.741637, 12.819529, 15.057061>,  <9.570354, 12.967507, 14.727267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.741637, 12.819529, 15.057061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247268, 0.829580, 0.500655,
		-0.869193, -0.418253, 0.263757,
		0.428208, -0.369947, 0.824486,
		9.870100, 12.708545, 15.304407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.058048, 13.132780, 15.232023>,  <9.570354, 12.967507, 14.727267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.058048, 13.132780, 15.232023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.399325, 13.073283, 15.431999>,  <9.604092, 13.037585, 15.551985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.399325, 13.073283, 15.431999>,  <9.058048, 13.132780, 15.232023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.399325, 13.073283, 15.431999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219923, 0.766532, 0.603376,
		-0.472967, -0.624744, 0.621287,
		0.853192, -0.148742, 0.499940,
		9.655283, 13.028661, 15.581981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.891780, 13.147376, 15.935066>,  <9.058048, 13.132780, 15.232023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.891780, 13.147376, 15.935066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.286575, 13.209578, 15.951429>,  <9.523453, 13.246899, 15.961247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.286575, 13.209578, 15.951429>,  <8.891780, 13.147376, 15.935066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.286575, 13.209578, 15.951429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125821, 0.588497, 0.798649,
		0.100119, -0.793404, 0.600405,
		0.986988, 0.155503, 0.040907,
		9.582672, 13.256228, 15.963701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.175074, 13.019275, 16.709354>,  <8.891780, 13.147376, 15.935066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.175074, 13.019275, 16.709354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.410235, 13.269323, 16.503990>,  <9.551332, 13.419353, 16.380772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.410235, 13.269323, 16.503990>,  <9.175074, 13.019275, 16.709354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.410235, 13.269323, 16.503990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074842, 0.673989, 0.734940,
		0.805460, -0.393650, 0.443027,
		0.587905, 0.625122, -0.513410,
		9.586607, 13.456860, 16.349968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.721686, 13.186965, 17.200975>,  <9.175074, 13.019275, 16.709354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.721686, 13.186965, 17.200975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.691311, 13.470910, 16.920881>,  <9.673086, 13.641277, 16.752825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.691311, 13.470910, 16.920881>,  <9.721686, 13.186965, 17.200975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.691311, 13.470910, 16.920881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074686, 0.696241, 0.713912,
		0.994311, 0.106511, 0.000145,
		-0.075938, 0.709862, -0.700235,
		9.668530, 13.683868, 16.710812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.188122, 13.601642, 17.457520>,  <9.721686, 13.186965, 17.200975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.188122, 13.601642, 17.457520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.991584, 13.845772, 17.208977>,  <9.873661, 13.992249, 17.059851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.991584, 13.845772, 17.208977>,  <10.188122, 13.601642, 17.457520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.991584, 13.845772, 17.208977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120650, 0.658839, 0.742546,
		0.862568, 0.439813, -0.250082,
		-0.491346, 0.610324, -0.621357,
		9.844180, 14.028869, 17.022570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.417438, 14.234675, 17.602097>,  <10.188122, 13.601642, 17.457520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.417438, 14.234675, 17.602097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.066718, 14.308163, 17.424345>,  <9.856286, 14.352255, 17.317694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.066718, 14.308163, 17.424345>,  <10.417438, 14.234675, 17.602097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.066718, 14.308163, 17.424345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152281, 0.770483, 0.619005,
		0.456107, 0.610413, -0.647582,
		-0.876799, 0.183718, -0.444377,
		9.803679, 14.363278, 17.291033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.875206, 14.614194, 18.116875>,  <10.417438, 14.234675, 17.602097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.875206, 14.614194, 18.116875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.044295, 14.311821, 18.316824>,  <11.145749, 14.130398, 18.436792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.044295, 14.311821, 18.316824>,  <10.875206, 14.614194, 18.116875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.044295, 14.311821, 18.316824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848481, 0.136331, -0.511364,
		0.318408, 0.640298, 0.699024,
		0.422724, -0.755932, 0.499872,
		11.171112, 14.085041, 18.466785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.860257, 15.329884, 18.304020>,  <10.875206, 14.614194, 18.116875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.860257, 15.329884, 18.304020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.122546, 15.567894, 18.118130>,  <11.279920, 15.710700, 18.006596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.122546, 15.567894, 18.118130>,  <10.860257, 15.329884, 18.304020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.122546, 15.567894, 18.118130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527748, 0.801411, 0.281466,
		0.539917, 0.060695, 0.839527,
		0.655722, 0.595027, -0.464727,
		11.319263, 15.746402, 17.978712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.546416, 15.433499, 18.616186>,  <10.860257, 15.329884, 18.304020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.546416, 15.433499, 18.616186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.360944, 15.091229, 18.708117>,  <11.249660, 14.885867, 18.763275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.360944, 15.091229, 18.708117>,  <11.546416, 15.433499, 18.616186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.360944, 15.091229, 18.708117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538503, -0.066187, 0.840020,
		-0.703573, 0.513263, 0.491473,
		-0.463680, -0.855675, 0.229827,
		11.221840, 14.834527, 18.777065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.131042, 15.447841, 19.258568>,  <11.546416, 15.433499, 18.616186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.131042, 15.447841, 19.258568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.311788, 15.101518, 19.172594>,  <11.420235, 14.893723, 19.121010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.311788, 15.101518, 19.172594>,  <11.131042, 15.447841, 19.258568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.311788, 15.101518, 19.172594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512754, 0.054911, 0.856777,
		-0.730002, -0.497355, 0.468759,
		0.451863, -0.865807, -0.214936,
		11.447347, 14.841776, 19.108114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.286350, 15.070479, 19.837326>,  <11.131042, 15.447841, 19.258568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.286350, 15.070479, 19.837326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.550626, 14.919619, 19.577711>,  <11.709191, 14.829103, 19.421942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.550626, 14.919619, 19.577711>,  <11.286350, 15.070479, 19.837326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.550626, 14.919619, 19.577711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649504, -0.146263, 0.746158,
		-0.376344, -0.914529, 0.148327,
		0.660689, -0.377151, -0.649036,
		11.748833, 14.806473, 19.382999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.588853, 14.540749, 20.235411>,  <11.286350, 15.070479, 19.837326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.588853, 14.540749, 20.235411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.840579, 14.580268, 19.927073>,  <11.991615, 14.603980, 19.742069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.840579, 14.580268, 19.927073>,  <11.588853, 14.540749, 20.235411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.840579, 14.580268, 19.927073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763043, -0.266680, 0.588767,
		-0.147398, -0.958708, -0.243215,
		0.629316, 0.098800, -0.770843,
		12.029374, 14.609907, 19.695820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.010823, 13.931728, 20.161983>,  <11.588853, 14.540749, 20.235411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.010823, 13.931728, 20.161983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.225430, 14.224716, 19.994345>,  <12.354194, 14.400509, 19.893763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.225430, 14.224716, 19.994345>,  <12.010823, 13.931728, 20.161983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.225430, 14.224716, 19.994345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836242, -0.394749, 0.380620,
		0.113356, -0.554673, -0.824310,
		0.536516, 0.732469, -0.419095,
		12.386384, 14.444457, 19.868616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.641339, 13.712084, 19.890306>,  <12.010823, 13.931728, 20.161983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.641339, 13.712084, 19.890306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.720304, 14.098518, 19.956884>,  <12.767682, 14.330379, 19.996832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.720304, 14.098518, 19.956884>,  <12.641339, 13.712084, 19.890306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.720304, 14.098518, 19.956884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931156, -0.237882, 0.276336,
		0.306559, 0.100434, -0.946538,
		0.197411, 0.966088, 0.166445,
		12.779527, 14.388345, 20.006817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.337124, 13.769186, 19.689451>,  <12.641339, 13.712084, 19.890306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.337124, 13.769186, 19.689451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.274824, 14.089040, 19.921427>,  <13.237444, 14.280951, 20.060612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.274824, 14.089040, 19.921427>,  <13.337124, 13.769186, 19.689451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.274824, 14.089040, 19.921427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923111, -0.091138, 0.373577,
		0.351579, 0.593531, -0.723956,
		-0.155750, 0.799634, 0.579938,
		13.228099, 14.328930, 20.095407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.047579, 14.153085, 19.820463>,  <13.337124, 13.769186, 19.689451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.047579, 14.153085, 19.820463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.795887, 14.269897, 20.108572>,  <13.644872, 14.339983, 20.281437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.795887, 14.269897, 20.108572>,  <14.047579, 14.153085, 19.820463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.795887, 14.269897, 20.108572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762947, 0.055301, 0.644091,
		0.148262, 0.954810, -0.257599,
		-0.629229, 0.292029, 0.720271,
		13.607119, 14.357505, 20.324654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.440043, 14.740427, 20.106022>,  <14.047579, 14.153085, 19.820463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.440043, 14.740427, 20.106022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.153367, 14.630980, 20.362612>,  <13.981361, 14.565312, 20.516565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.153367, 14.630980, 20.362612>,  <14.440043, 14.740427, 20.106022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.153367, 14.630980, 20.362612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622766, 0.162881, 0.765266,
		-0.313873, 0.947947, 0.053664,
		-0.716691, -0.273617, 0.641473,
		13.938359, 14.548896, 20.555054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.588052, 15.183458, 20.615095>,  <14.440043, 14.740427, 20.106022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.588052, 15.183458, 20.615095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.360291, 14.905145, 20.790215>,  <14.223636, 14.738156, 20.895287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.360291, 14.905145, 20.790215>,  <14.588052, 15.183458, 20.615095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.360291, 14.905145, 20.790215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639992, -0.040952, 0.767290,
		-0.515940, 0.717082, 0.468614,
		-0.569400, -0.695785, 0.437798,
		14.189471, 14.696409, 20.921555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.453543, 15.448353, 21.319012>,  <14.588052, 15.183458, 20.615095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.453543, 15.448353, 21.319012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.407816, 15.050980, 21.320992>,  <14.380380, 14.812556, 21.322180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.407816, 15.050980, 21.320992>,  <14.453543, 15.448353, 21.319012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.407816, 15.050980, 21.320992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399963, -0.041463, 0.915593,
		-0.909374, 0.106648, 0.402076,
		-0.114317, -0.993432, 0.004949,
		14.373521, 14.752950, 21.322475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.231985, 15.329464, 21.895573>,  <14.453543, 15.448353, 21.319012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.231985, 15.329464, 21.895573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.355603, 14.966868, 21.780493>,  <14.429774, 14.749311, 21.711445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.355603, 14.966868, 21.780493>,  <14.231985, 15.329464, 21.895573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.355603, 14.966868, 21.780493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317217, -0.186934, 0.929747,
		-0.896585, -0.378597, 0.229783,
		0.309045, -0.906488, -0.287699,
		14.448317, 14.694922, 21.694183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.017555, 14.866940, 22.439690>,  <14.231985, 15.329464, 21.895573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.017555, 14.866940, 22.439690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.321524, 14.679792, 22.259195>,  <14.503905, 14.567503, 22.150898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.321524, 14.679792, 22.259195>,  <14.017555, 14.866940, 22.439690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.321524, 14.679792, 22.259195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395899, -0.217437, 0.892180,
		-0.515541, -0.856631, 0.019995,
		0.759922, -0.467872, -0.451237,
		14.549500, 14.539431, 22.123823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.117692, 14.291088, 22.804150>,  <14.017555, 14.866940, 22.439690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.117692, 14.291088, 22.804150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.460504, 14.287087, 22.598080>,  <14.666190, 14.284687, 22.474438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.460504, 14.287087, 22.598080>,  <14.117692, 14.291088, 22.804150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.460504, 14.287087, 22.598080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492917, -0.275371, 0.825350,
		-0.150119, -0.961286, -0.231071,
		0.857028, -0.010002, -0.515173,
		14.717612, 14.284087, 22.443527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.518974, 13.729143, 23.028505>,  <14.117692, 14.291088, 22.804150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.518974, 13.729143, 23.028505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.784105, 13.982377, 22.868572>,  <14.943184, 14.134317, 22.772614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.784105, 13.982377, 22.868572>,  <14.518974, 13.729143, 23.028505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.784105, 13.982377, 22.868572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422366, 0.124801, 0.897792,
		0.618277, -0.763956, -0.184672,
		0.662827, 0.633084, -0.399831,
		14.982953, 14.172302, 22.748623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.139025, 13.550962, 23.331516>,  <14.518974, 13.729143, 23.028505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.139025, 13.550962, 23.331516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.187276, 13.918307, 23.180752>,  <15.216227, 14.138714, 23.090294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.187276, 13.918307, 23.180752>,  <15.139025, 13.550962, 23.331516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.187276, 13.918307, 23.180752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343213, 0.317686, 0.883901,
		0.931480, -0.235983, -0.276872,
		0.120627, 0.918361, -0.376911,
		15.223464, 14.193815, 23.067678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.859055, 13.687231, 23.440275>,  <15.139025, 13.550962, 23.331516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.859055, 13.687231, 23.440275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.636909, 14.018356, 23.408537>,  <15.503621, 14.217031, 23.389494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.636909, 14.018356, 23.408537>,  <15.859055, 13.687231, 23.440275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.636909, 14.018356, 23.408537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307004, 0.292759, 0.905561,
		0.772863, 0.478559, -0.416730,
		-0.555366, 0.827813, -0.079344,
		15.470299, 14.266700, 23.384733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.242746, 14.139454, 23.860487>,  <15.859055, 13.687231, 23.440275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.242746, 14.139454, 23.860487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.929576, 14.383982, 23.814327>,  <15.741674, 14.530699, 23.786633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.929576, 14.383982, 23.814327>,  <16.242746, 14.139454, 23.860487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.929576, 14.383982, 23.814327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309974, 0.544155, 0.779623,
		0.539394, 0.574615, -0.615525,
		-0.782924, 0.611320, -0.115398,
		15.694698, 14.567378, 23.779707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.410143, 14.879117, 23.804466>,  <16.242746, 14.139454, 23.860487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.410143, 14.879117, 23.804466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.048655, 14.854656, 23.973957>,  <15.831761, 14.839979, 24.075651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.048655, 14.854656, 23.973957>,  <16.410143, 14.879117, 23.804466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.048655, 14.854656, 23.973957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307477, 0.595981, 0.741798,
		-0.297896, 0.800667, -0.519798,
		-0.903723, -0.061153, 0.423727,
		15.777537, 14.836310, 24.101076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.343218, 15.445760, 24.248899>,  <16.410143, 14.879117, 23.804466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.343218, 15.445760, 24.248899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.035374, 15.220787, 24.369810>,  <15.850668, 15.085803, 24.442356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.035374, 15.220787, 24.369810>,  <16.343218, 15.445760, 24.248899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.035374, 15.220787, 24.369810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155572, 0.293973, 0.943068,
		-0.619274, 0.772820, -0.138745,
		-0.769609, -0.562432, 0.302279,
		15.804491, 15.052057, 24.460493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.946592, 15.942226, 24.740005>,  <16.343218, 15.445760, 24.248899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.946592, 15.942226, 24.740005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.822525, 15.568651, 24.811062>,  <15.748085, 15.344506, 24.853695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.822525, 15.568651, 24.811062>,  <15.946592, 15.942226, 24.740005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.822525, 15.568651, 24.811062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046487, 0.201531, 0.978378,
		-0.949544, 0.295204, -0.105925,
		-0.310169, -0.933938, 0.177640,
		15.729474, 15.288470, 24.864353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356515, 16.014761, 25.248062>,  <15.946592, 15.942226, 24.740005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.356515, 16.014761, 25.248062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.509567, 15.645947, 25.271528>,  <15.601398, 15.424658, 25.285608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.509567, 15.645947, 25.271528>,  <15.356515, 16.014761, 25.248062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.509567, 15.645947, 25.271528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095143, 0.023834, 0.995178,
		-0.918989, -0.386368, -0.078606,
		0.382632, -0.922036, 0.058664,
		15.624357, 15.369335, 25.289127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.010864, 15.665494, 25.750547>,  <15.356515, 16.014761, 25.248062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.010864, 15.665494, 25.750547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.358149, 15.467843, 25.732443>,  <15.566519, 15.349253, 25.721581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.358149, 15.467843, 25.732443>,  <15.010864, 15.665494, 25.750547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.358149, 15.467843, 25.732443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042540, -0.016762, 0.998954,
		-0.494369, -0.869228, 0.006467,
		0.868211, -0.494127, -0.045263,
		15.618612, 15.319605, 25.718864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.964492, 15.126754, 26.248646>,  <15.010864, 15.665494, 25.750547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.964492, 15.126754, 26.248646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.354578, 15.179296, 26.177425>,  <15.588630, 15.210822, 26.134693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.354578, 15.179296, 26.177425>,  <14.964492, 15.126754, 26.248646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.354578, 15.179296, 26.177425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175349, 0.031943, 0.983988,
		0.134942, -0.990820, 0.008118,
		0.975214, 0.131357, -0.178050,
		15.647142, 15.218703, 26.124010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.345532, 14.737417, 26.764145>,  <14.964492, 15.126754, 26.248646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.345532, 14.737417, 26.764145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.630948, 14.973490, 26.613121>,  <15.802197, 15.115133, 26.522507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.630948, 14.973490, 26.613121>,  <15.345532, 14.737417, 26.764145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.630948, 14.973490, 26.613121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494222, -0.042032, 0.868319,
		0.496596, -0.806176, -0.321672,
		0.713538, 0.590181, -0.377557,
		15.845010, 15.150544, 26.499853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.982073, 14.427091, 26.996428>,  <15.345532, 14.737417, 26.764145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.982073, 14.427091, 26.996428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.022005, 14.817140, 26.917259>,  <16.045965, 15.051168, 26.869759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.022005, 14.817140, 26.917259>,  <15.982073, 14.427091, 26.996428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.022005, 14.817140, 26.917259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517458, 0.119017, 0.847391,
		0.849865, -0.187011, -0.492703,
		0.099831, 0.975121, -0.197919,
		16.051954, 15.109676, 26.857883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575630, 14.537585, 27.226551>,  <15.982073, 14.427091, 26.996428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.575630, 14.537585, 27.226551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.470474, 14.921546, 27.187611>,  <16.407381, 15.151922, 27.164246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.470474, 14.921546, 27.187611>,  <16.575630, 14.537585, 27.226551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.470474, 14.921546, 27.187611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624720, 0.246244, 0.741005,
		0.735265, 0.133984, -0.664405,
		-0.262888, 0.959902, -0.097352,
		16.391607, 15.209517, 27.158405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.271761, 14.929688, 27.331020>,  <16.575630, 14.537585, 27.226551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.271761, 14.929688, 27.331020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.944027, 15.148444, 27.399841>,  <16.747387, 15.279698, 27.441133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.944027, 15.148444, 27.399841>,  <17.271761, 14.929688, 27.331020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.944027, 15.148444, 27.399841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361269, 0.259479, 0.895631,
		0.445170, 0.795978, -0.410175,
		-0.819334, 0.546891, 0.172050,
		16.698227, 15.312511, 27.451456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.527298, 15.552429, 27.599749>,  <17.271761, 14.929688, 27.331020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.527298, 15.552429, 27.599749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.147726, 15.545870, 27.725771>,  <16.919983, 15.541934, 27.801384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.147726, 15.545870, 27.725771>,  <17.527298, 15.552429, 27.599749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.147726, 15.545870, 27.725771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310629, 0.125916, 0.942154,
		-0.055119, 0.991905, -0.114393,
		-0.948932, -0.016397, 0.315055,
		16.863047, 15.540951, 27.820288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545137, 16.026281, 28.083908>,  <17.527298, 15.552429, 27.599749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545137, 16.026281, 28.083908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.209618, 15.818739, 28.149878>,  <17.008305, 15.694213, 28.189459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.209618, 15.818739, 28.149878>,  <17.545137, 16.026281, 28.083908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.209618, 15.818739, 28.149878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183212, 0.016252, 0.982939,
		-0.512685, 0.854706, 0.081429,
		-0.838801, -0.518857, 0.164925,
		16.957977, 15.663082, 28.199354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.335197, 16.300774, 28.682888>,  <17.545137, 16.026281, 28.083908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.335197, 16.300774, 28.682888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.092211, 15.983037, 28.681902>,  <16.946419, 15.792395, 28.681311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.092211, 15.983037, 28.681902>,  <17.335197, 16.300774, 28.682888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.092211, 15.983037, 28.681902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028457, -0.024861, 0.999286,
		-0.793836, 0.606962, 0.037707,
		-0.607466, -0.794342, -0.002463,
		16.909971, 15.744735, 28.681164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.737761, 16.425531, 29.144896>,  <17.335197, 16.300774, 28.682888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.737761, 16.425531, 29.144896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.786932, 16.030119, 29.109804>,  <16.816435, 15.792871, 29.088749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.786932, 16.030119, 29.109804>,  <16.737761, 16.425531, 29.144896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.786932, 16.030119, 29.109804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019572, -0.090798, 0.995677,
		-0.992222, -0.120682, -0.030509,
		0.122931, -0.988530, -0.087729,
		16.823811, 15.733560, 29.083485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.304918, 16.153151, 29.509621>,  <16.737761, 16.425531, 29.144896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.304918, 16.153151, 29.509621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.565884, 15.850265, 29.497086>,  <16.722464, 15.668533, 29.489565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.565884, 15.850265, 29.497086>,  <16.304918, 16.153151, 29.509621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.565884, 15.850265, 29.497086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032658, -0.013221, 0.999379,
		-0.757158, -0.653034, 0.016103,
		0.652416, -0.757213, -0.031337,
		16.761608, 15.623100, 29.487684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.140505, 15.829184, 30.073458>,  <16.304918, 16.153151, 29.509621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.140505, 15.829184, 30.073458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.487541, 15.653431, 29.980309>,  <16.695763, 15.547979, 29.924419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.487541, 15.653431, 29.980309>,  <16.140505, 15.829184, 30.073458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.487541, 15.653431, 29.980309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213611, -0.093601, 0.972425,
		-0.449063, -0.893411, 0.012649,
		0.867590, -0.439382, -0.232875,
		16.747818, 15.521617, 29.910446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.153229, 15.184569, 30.436977>,  <16.140505, 15.829184, 30.073458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.153229, 15.184569, 30.436977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.538458, 15.250812, 30.352058>,  <16.769594, 15.290557, 30.301107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.538458, 15.250812, 30.352058>,  <16.153229, 15.184569, 30.436977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.538458, 15.250812, 30.352058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250174, -0.258900, 0.932944,
		0.099537, -0.951602, -0.290769,
		0.963071, 0.165605, -0.212296,
		16.827379, 15.300493, 30.288370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.490049, 14.595447, 30.514561>,  <16.153229, 15.184569, 30.436977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.490049, 14.595447, 30.514561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.769653, 14.880357, 30.540012>,  <16.937416, 15.051303, 30.555283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.769653, 14.880357, 30.540012>,  <16.490049, 14.595447, 30.514561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.769653, 14.880357, 30.540012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216830, -0.295897, 0.930285,
		0.681447, -0.636482, -0.361277,
		0.699010, 0.712275, 0.063630,
		16.979357, 15.094039, 30.559101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.174601, 14.205841, 30.720091>,  <16.490049, 14.595447, 30.514561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.174601, 14.205841, 30.720091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.219135, 14.593034, 30.810083>,  <17.245855, 14.825350, 30.864079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.219135, 14.593034, 30.810083>,  <17.174601, 14.205841, 30.720091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.219135, 14.593034, 30.810083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273525, -0.247491, 0.929479,
		0.955400, -0.041945, -0.292321,
		0.111334, 0.967982, 0.224980,
		17.252535, 14.883429, 30.877577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.773870, 14.296597, 31.158806>,  <17.174601, 14.205841, 30.720091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.773870, 14.296597, 31.158806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.571161, 14.636311, 31.218000>,  <17.449535, 14.840138, 31.253517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.571161, 14.636311, 31.218000>,  <17.773870, 14.296597, 31.158806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.571161, 14.636311, 31.218000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295741, 0.010023, 0.955215,
		0.809766, 0.527842, -0.256248,
		-0.506771, 0.849284, 0.147988,
		17.419130, 14.891096, 31.262398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.241825, 14.652108, 31.562212>,  <17.773870, 14.296597, 31.158806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.241825, 14.652108, 31.562212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.883152, 14.819827, 31.618994>,  <17.667948, 14.920459, 31.653063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.883152, 14.819827, 31.618994>,  <18.241825, 14.652108, 31.562212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.883152, 14.819827, 31.618994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170909, 0.032101, 0.984764,
		0.408352, 0.907281, -0.100446,
		-0.896682, 0.419298, 0.141954,
		17.614147, 14.945617, 31.661579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.312840, 15.330665, 31.848661>,  <18.241825, 14.652108, 31.562212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.312840, 15.330665, 31.848661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.988234, 15.120012, 31.949938>,  <17.793470, 14.993621, 32.010704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.988234, 15.120012, 31.949938>,  <18.312840, 15.330665, 31.848661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.988234, 15.120012, 31.949938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217399, 0.130092, 0.967375,
		-0.542387, 0.840081, 0.008918,
		-0.811513, -0.526630, 0.253193,
		17.744780, 14.962023, 32.025894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.134037, 15.935635, 32.123337>,  <18.312840, 15.330665, 31.848661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.134037, 15.935635, 32.123337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.880430, 15.700348, 32.324146>,  <17.728266, 15.559175, 32.444630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.880430, 15.700348, 32.324146>,  <18.134037, 15.935635, 32.123337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.880430, 15.700348, 32.324146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409227, 0.295630, 0.863213,
		-0.656170, 0.752730, 0.053280,
		-0.634015, -0.588218, 0.502021,
		17.690226, 15.523883, 32.474754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.767605, 16.378321, 32.658222>,  <18.134037, 15.935635, 32.123337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.767605, 16.378321, 32.658222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.744329, 15.995066, 32.770355>,  <17.730364, 15.765113, 32.837635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.744329, 15.995066, 32.770355>,  <17.767605, 16.378321, 32.658222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.744329, 15.995066, 32.770355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436640, 0.228098, 0.870240,
		-0.897753, 0.173040, 0.405089,
		-0.058187, -0.958138, 0.280332,
		17.726873, 15.707624, 32.854454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546894, 16.436024, 33.373795>,  <17.767605, 16.378321, 32.658222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.546894, 16.436024, 33.373795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.714460, 16.074265, 33.341358>,  <17.815001, 15.857209, 33.321896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.714460, 16.074265, 33.341358>,  <17.546894, 16.436024, 33.373795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.714460, 16.074265, 33.341358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506155, 0.158434, 0.847765,
		-0.753868, -0.396188, 0.524136,
		0.418915, -0.904397, -0.081095,
		17.840136, 15.802945, 33.317028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.600477, 16.255751, 33.975521>,  <17.546894, 16.436024, 33.373795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.600477, 16.255751, 33.975521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.835039, 15.960241, 33.842651>,  <17.975777, 15.782935, 33.762928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.835039, 15.960241, 33.842651>,  <17.600477, 16.255751, 33.975521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.835039, 15.960241, 33.842651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432880, -0.060798, 0.899399,
		-0.684649, -0.671204, 0.284148,
		0.586405, -0.738775, -0.332176,
		18.010962, 15.738609, 33.743000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621365, 15.715406, 34.565109>,  <17.600477, 16.255751, 33.975521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.621365, 15.715406, 34.565109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.941223, 15.676011, 34.328175>,  <18.133139, 15.652374, 34.186012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.941223, 15.676011, 34.328175>,  <17.621365, 15.715406, 34.565109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.941223, 15.676011, 34.328175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585277, -0.092649, 0.805523,
		-0.134214, -0.990816, -0.016444,
		0.799649, -0.098488, -0.592336,
		18.181118, 15.646464, 34.150475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.977957, 15.228578, 34.819756>,  <17.621365, 15.715406, 34.565109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.977957, 15.228578, 34.819756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.255539, 15.422197, 34.606544>,  <18.422089, 15.538369, 34.478619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.255539, 15.422197, 34.606544>,  <17.977957, 15.228578, 34.819756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.255539, 15.422197, 34.606544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673124, -0.173350, 0.718926,
		0.255595, -0.857698, -0.446122,
		0.693957, 0.484049, -0.533030,
		18.463726, 15.567412, 34.446636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.573177, 14.833403, 34.860466>,  <17.977957, 15.228578, 34.819756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.573177, 14.833403, 34.860466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.700415, 15.198254, 34.757053>,  <18.776756, 15.417164, 34.695004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.700415, 15.198254, 34.757053>,  <18.573177, 14.833403, 34.860466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.700415, 15.198254, 34.757053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656521, -0.015194, 0.754155,
		0.683958, -0.409624, -0.603664,
		0.318092, 0.912128, -0.258535,
		18.795843, 15.471892, 34.679493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.309385, 14.887831, 34.805328>,  <18.573177, 14.833403, 34.860466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.309385, 14.887831, 34.805328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.146456, 15.240021, 34.902367>,  <19.048698, 15.451335, 34.960590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.146456, 15.240021, 34.902367>,  <19.309385, 14.887831, 34.805328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.146456, 15.240021, 34.902367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578364, 0.043106, 0.814640,
		0.706813, 0.472129, -0.526793,
		-0.407323, 0.880475, 0.242594,
		19.024260, 15.504164, 34.975143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.920536, 15.248824, 35.097294>,  <19.309385, 14.887831, 34.805328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.920536, 15.248824, 35.097294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.595659, 15.441025, 35.229637>,  <19.400734, 15.556345, 35.309044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.595659, 15.441025, 35.229637>,  <19.920536, 15.248824, 35.097294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.595659, 15.441025, 35.229637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484449, 0.239513, 0.841393,
		0.325047, 0.843653, -0.427309,
		-0.812190, 0.480502, 0.330854,
		19.352001, 15.585176, 35.328892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.195562, 15.669360, 35.424191>,  <19.920536, 15.248824, 35.097294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.195562, 15.669360, 35.424191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.829584, 15.727210, 35.574902>,  <19.609997, 15.761920, 35.665329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.829584, 15.727210, 35.574902>,  <20.195562, 15.669360, 35.424191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.829584, 15.727210, 35.574902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400880, 0.217921, 0.889835,
		0.046586, 0.965191, -0.257363,
		-0.914945, 0.144626, 0.376773,
		19.555101, 15.770597, 35.687935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.314785, 16.326054, 35.748177>,  <20.195562, 15.669360, 35.424191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.314785, 16.326054, 35.748177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.004572, 16.110142, 35.879135>,  <19.818445, 15.980594, 35.957710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.004572, 16.110142, 35.879135>,  <20.314785, 16.326054, 35.748177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.004572, 16.110142, 35.879135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313416, 0.120981, 0.941878,
		-0.548017, 0.833066, 0.075352,
		-0.775531, -0.539782, 0.327396,
		19.771914, 15.948207, 35.977352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.899868, 16.753603, 36.279819>,  <20.314785, 16.326054, 35.748177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.899868, 16.753603, 36.279819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.884117, 16.362759, 36.363438>,  <19.874666, 16.128252, 36.413609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.884117, 16.362759, 36.363438>,  <19.899868, 16.753603, 36.279819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884117, 16.362759, 36.363438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203574, 0.196977, 0.959040,
		-0.978267, 0.080321, 0.191158,
		-0.039378, -0.977112, 0.209047,
		19.872303, 16.069626, 36.426151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.162401, 17.139397, 36.283482>,  <19.899868, 16.753603, 36.279819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.162401, 17.139397, 36.283482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.853781, 17.393854, 36.281223>,  <18.668608, 17.546528, 36.279869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.853781, 17.393854, 36.281223>,  <19.162401, 17.139397, 36.283482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.853781, 17.393854, 36.281223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051681, 0.053833, -0.997212,
		-0.634065, -0.769691, -0.074412,
		-0.771551, 0.636143, -0.005645,
		18.622316, 17.584698, 36.279530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.467947, 16.951593, 35.864956>,  <19.162401, 17.139397, 36.283482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.467947, 16.951593, 35.864956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.534969, 17.345659, 35.879795>,  <18.575184, 17.582098, 35.888699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.534969, 17.345659, 35.879795>,  <18.467947, 16.951593, 35.864956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.534969, 17.345659, 35.879795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109179, 0.055942, -0.992446,
		-0.979798, 0.162242, 0.116933,
		0.167558, 0.985164, 0.037098,
		18.585238, 17.641209, 35.890926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.042772, 17.310551, 35.447392>,  <18.467947, 16.951593, 35.864956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.042772, 17.310551, 35.447392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.350246, 17.563620, 35.485012>,  <18.534731, 17.715462, 35.507584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.350246, 17.563620, 35.485012>,  <18.042772, 17.310551, 35.447392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.350246, 17.563620, 35.485012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165976, 0.339299, -0.925921,
		-0.617715, 0.696133, 0.365823,
		0.768687, 0.632673, 0.094049,
		18.580853, 17.753422, 35.513226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.360838, 17.826317, 34.940746>,  <18.042772, 17.310551, 35.447392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.360838, 17.826317, 34.940746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.710514, 17.633125, 34.960850>,  <18.920319, 17.517210, 34.972912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.710514, 17.633125, 34.960850>,  <18.360838, 17.826317, 34.940746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.710514, 17.633125, 34.960850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077690, 0.036949, -0.996292,
		0.479332, 0.874851, 0.069823,
		0.874188, -0.482980, 0.050257,
		18.972771, 17.488232, 34.975925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.817802, 18.113289, 34.397167>,  <18.360838, 17.826317, 34.940746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.817802, 18.113289, 34.397167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980709, 17.761930, 34.497208>,  <19.078453, 17.551115, 34.557232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.980709, 17.761930, 34.497208>,  <18.817802, 18.113289, 34.397167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.980709, 17.761930, 34.497208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250699, -0.155805, -0.955445,
		0.878228, 0.451820, 0.156759,
		0.407266, -0.878398, 0.250103,
		19.102888, 17.498411, 34.572239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.466967, 18.065897, 34.062580>,  <18.817802, 18.113289, 34.397167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.466967, 18.065897, 34.062580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.319841, 17.702007, 34.139641>,  <19.231567, 17.483673, 34.185879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.319841, 17.702007, 34.139641>,  <19.466967, 18.065897, 34.062580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.319841, 17.702007, 34.139641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252110, -0.296973, -0.921004,
		0.895073, -0.290186, 0.338581,
		-0.367812, -0.909725, 0.192653,
		19.209497, 17.429090, 34.197437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.073486, 17.561930, 33.959064>,  <19.466967, 18.065897, 34.062580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.073486, 17.561930, 33.959064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.694698, 17.468781, 33.870502>,  <19.467426, 17.412891, 33.817368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.694698, 17.468781, 33.870502>,  <20.073486, 17.561930, 33.959064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.694698, 17.468781, 33.870502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258001, -0.140338, -0.955898,
		0.191532, -0.962328, 0.192978,
		-0.946970, -0.232873, -0.221403,
		19.410608, 17.398918, 33.804081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.116978, 16.863619, 33.693092>,  <20.073486, 17.561930, 33.959064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.116978, 16.863619, 33.693092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.778391, 17.041632, 33.576168>,  <19.575239, 17.148439, 33.506016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.778391, 17.041632, 33.576168>,  <20.116978, 16.863619, 33.693092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.778391, 17.041632, 33.576168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106412, -0.396517, -0.911839,
		-0.521702, -0.802945, 0.288282,
		-0.846466, 0.445032, -0.292306,
		19.524450, 17.175140, 33.488476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.969349, 16.491165, 33.106895>,  <20.116978, 16.863619, 33.693092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.969349, 16.491165, 33.106895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.716957, 16.799023, 33.067879>,  <19.565523, 16.983738, 33.044468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.716957, 16.799023, 33.067879>,  <19.969349, 16.491165, 33.106895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.716957, 16.799023, 33.067879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036874, -0.095837, -0.994714,
		-0.774924, -0.631239, 0.032091,
		-0.630978, 0.769644, -0.097542,
		19.527664, 17.029917, 33.038616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.563177, 16.339106, 32.504486>,  <19.969349, 16.491165, 33.106895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.563177, 16.339106, 32.504486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.474838, 16.727617, 32.539906>,  <19.421835, 16.960724, 32.561157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.474838, 16.727617, 32.539906>,  <19.563177, 16.339106, 32.504486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.474838, 16.727617, 32.539906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137600, 0.058853, -0.988738,
		-0.965553, -0.230544, 0.120650,
		-0.220847, 0.971280, 0.088549,
		19.408585, 17.019001, 32.566471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.829250, 16.565529, 32.223568>,  <19.563177, 16.339106, 32.504486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.829250, 16.565529, 32.223568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.063673, 16.889557, 32.216400>,  <19.204327, 17.083973, 32.212101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.063673, 16.889557, 32.216400>,  <18.829250, 16.565529, 32.223568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.063673, 16.889557, 32.216400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203867, 0.126015, -0.970854,
		-0.784203, 0.572631, 0.238999,
		0.586058, 0.810071, -0.017920,
		19.239491, 17.132578, 32.211025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.482872, 17.076113, 31.773558>,  <18.829250, 16.565529, 32.223568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.482872, 17.076113, 31.773558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.862951, 17.197626, 31.801390>,  <19.090998, 17.270535, 31.818089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.862951, 17.197626, 31.801390>,  <18.482872, 17.076113, 31.773558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.862951, 17.197626, 31.801390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011803, 0.188027, -0.982093,
		-0.311426, 0.934003, 0.175077,
		0.950197, 0.303782, 0.069580,
		19.148010, 17.288761, 31.822264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.535791, 17.750832, 31.289646>,  <18.482872, 17.076113, 31.773558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.535791, 17.750832, 31.289646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.912285, 17.623018, 31.333427>,  <19.138182, 17.546331, 31.359695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.912285, 17.623018, 31.333427>,  <18.535791, 17.750832, 31.289646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.912285, 17.623018, 31.333427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201479, 0.271083, -0.941234,
		0.271083, 0.907973, 0.319531,
		0.941234, -0.319531, 0.109451,
		19.194654, 17.527159, 31.366262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.029160, 18.310120, 31.005095>,  <18.535791, 17.750832, 31.289646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.029160, 18.310120, 31.005095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.184883, 17.941679, 31.003891>,  <19.278318, 17.720615, 31.003168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.184883, 17.941679, 31.003891>,  <19.029160, 18.310120, 31.005095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.184883, 17.941679, 31.003891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406968, 0.174937, -0.896535,
		0.826326, 0.347805, 0.442963,
		0.389310, -0.921102, -0.003009,
		19.301676, 17.665348, 31.002989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.642477, 18.458004, 30.778593>,  <19.029160, 18.310120, 31.005095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.642477, 18.458004, 30.778593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.513340, 18.089943, 30.689968>,  <19.435858, 17.869106, 30.636793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.513340, 18.089943, 30.689968>,  <19.642477, 18.458004, 30.778593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.513340, 18.089943, 30.689968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388940, 0.084434, -0.917386,
		0.862843, -0.382345, 0.330626,
		-0.322842, -0.920154, -0.221562,
		19.416487, 17.813896, 30.623499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.036825, 18.269350, 30.240492>,  <19.642477, 18.458004, 30.778593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.036825, 18.269350, 30.240492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.763372, 17.977421, 30.241419>,  <19.599300, 17.802263, 30.241976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.763372, 17.977421, 30.241419>,  <20.036825, 18.269350, 30.240492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.763372, 17.977421, 30.241419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060730, -0.060049, -0.996346,
		0.727296, -0.680993, 0.085374,
		-0.683632, -0.729823, 0.002317,
		19.558283, 17.758474, 30.242113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.351154, 17.817228, 29.948376>,  <20.036825, 18.269350, 30.240492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.351154, 17.817228, 29.948376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.977678, 17.688709, 29.885149>,  <19.753592, 17.611597, 29.847212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.977678, 17.688709, 29.885149>,  <20.351154, 17.817228, 29.948376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.977678, 17.688709, 29.885149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215630, -0.152085, -0.964559,
		0.285872, -0.934685, 0.211282,
		-0.933692, -0.321299, -0.158069,
		19.697571, 17.592319, 29.837729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.449150, 17.360270, 29.425241>,  <20.351154, 17.817228, 29.948376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.449150, 17.360270, 29.425241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.051718, 17.399698, 29.403042>,  <19.813259, 17.423355, 29.389723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.051718, 17.399698, 29.403042>,  <20.449150, 17.360270, 29.425241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.051718, 17.399698, 29.403042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042985, -0.124833, -0.991246,
		-0.104623, -0.987270, 0.119796,
		-0.993583, 0.098558, -0.055498,
		19.753643, 17.429270, 29.386393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275261, 16.754883, 29.020151>,  <20.449150, 17.360270, 29.425241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.275261, 16.754883, 29.020151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.941673, 16.975382, 29.010183>,  <19.741520, 17.107681, 29.004202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.941673, 16.975382, 29.010183>,  <20.275261, 16.754883, 29.020151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.941673, 16.975382, 29.010183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130860, -0.241444, -0.961551,
		-0.536070, -0.798643, 0.273493,
		-0.833969, 0.551247, -0.024920,
		19.691483, 17.140757, 29.002707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.669991, 16.343616, 28.795103>,  <20.275261, 16.754883, 29.020151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.669991, 16.343616, 28.795103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.603092, 16.730984, 28.721132>,  <19.562954, 16.963404, 28.676750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.603092, 16.730984, 28.721132>,  <19.669991, 16.343616, 28.795103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.603092, 16.730984, 28.721132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071481, -0.198984, -0.977392,
		-0.983321, -0.150244, 0.102502,
		-0.167244, 0.968417, -0.184926,
		19.552919, 17.021509, 28.665655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.217369, 16.320156, 28.285894>,  <19.669991, 16.343616, 28.795103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.217369, 16.320156, 28.285894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.317297, 16.706524, 28.258785>,  <19.377253, 16.938345, 28.242519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.317297, 16.706524, 28.258785>,  <19.217369, 16.320156, 28.285894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.317297, 16.706524, 28.258785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283735, 0.006106, -0.958883,
		-0.925789, 0.258776, 0.275590,
		0.249819, 0.965918, -0.067771,
		19.392242, 16.996300, 28.238455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.661505, 16.620758, 28.114761>,  <19.217369, 16.320156, 28.285894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.661505, 16.620758, 28.114761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976336, 16.840076, 28.001705>,  <19.165234, 16.971666, 27.933872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.976336, 16.840076, 28.001705>,  <18.661505, 16.620758, 28.114761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.976336, 16.840076, 28.001705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275480, -0.097535, -0.956346,
		-0.551927, 0.830578, 0.074276,
		0.787075, 0.548295, -0.282640,
		19.212458, 17.004564, 27.916914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.351688, 17.204739, 27.650101>,  <18.661505, 16.620758, 28.114761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.351688, 17.204739, 27.650101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.746040, 17.187143, 27.585478>,  <18.982653, 17.176586, 27.546703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.746040, 17.187143, 27.585478>,  <18.351688, 17.204739, 27.650101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.746040, 17.187143, 27.585478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146861, 0.236273, -0.960524,
		0.080424, 0.970691, 0.226477,
		0.985882, -0.043989, -0.161558,
		19.041805, 17.173946, 27.537010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.404341, 17.719389, 27.213884>,  <18.351688, 17.204739, 27.650101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.404341, 17.719389, 27.213884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.744431, 17.518269, 27.151524>,  <18.948484, 17.397596, 27.114107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.744431, 17.518269, 27.151524>,  <18.404341, 17.719389, 27.213884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.744431, 17.518269, 27.151524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077269, 0.173747, -0.981754,
		0.520716, 0.846759, 0.108873,
		0.850226, -0.502803, -0.155901,
		18.999498, 17.367428, 27.104753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.781897, 18.124264, 26.679495>,  <18.404341, 17.719389, 27.213884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.781897, 18.124264, 26.679495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.929892, 17.752899, 26.665850>,  <19.018688, 17.530081, 26.657663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.929892, 17.752899, 26.665850>,  <18.781897, 18.124264, 26.679495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.929892, 17.752899, 26.665850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050425, 0.056730, -0.997115,
		0.927668, 0.367198, 0.067805,
		0.369986, -0.928411, -0.034111,
		19.040888, 17.474377, 26.655617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.380270, 18.119154, 26.165756>,  <18.781897, 18.124264, 26.679495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.380270, 18.119154, 26.165756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.257601, 17.739973, 26.200026>,  <19.184000, 17.512465, 26.220587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.257601, 17.739973, 26.200026>,  <19.380270, 18.119154, 26.165756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.257601, 17.739973, 26.200026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139046, -0.044429, -0.989289,
		0.941604, -0.315300, -0.118184,
		-0.306672, -0.947951, 0.085675,
		19.165600, 17.455587, 26.225729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.779013, 17.715649, 25.601807>,  <19.380270, 18.119154, 26.165756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.779013, 17.715649, 25.601807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.433905, 17.540817, 25.703463>,  <19.226839, 17.435919, 25.764456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.433905, 17.540817, 25.703463>,  <19.779013, 17.715649, 25.601807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.433905, 17.540817, 25.703463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141954, -0.273028, -0.951475,
		0.485259, -0.856981, 0.173516,
		-0.862771, -0.437081, 0.254141,
		19.175074, 17.409693, 25.779705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.695988, 16.946213, 25.209780>,  <19.779013, 17.715649, 25.601807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.695988, 16.946213, 25.209780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.323872, 17.054087, 25.309240>,  <19.100601, 17.118811, 25.368917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.323872, 17.054087, 25.309240>,  <19.695988, 16.946213, 25.209780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.323872, 17.054087, 25.309240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300218, -0.170259, -0.938553,
		-0.210783, -0.947776, 0.239356,
		-0.930290, 0.269690, 0.248652,
		19.044785, 17.134993, 25.383837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208515, 16.417526, 24.778744>,  <19.695988, 16.946213, 25.209780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.208515, 16.417526, 24.778744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.982826, 16.718002, 24.915777>,  <18.847412, 16.898289, 24.997997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.982826, 16.718002, 24.915777>,  <19.208515, 16.417526, 24.778744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.982826, 16.718002, 24.915777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728838, -0.258239, -0.634120,
		-0.387878, -0.607472, 0.693202,
		-0.564221, 0.751193, 0.342584,
		18.813559, 16.943359, 25.018553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.554672, 16.136847, 24.854454>,  <19.208515, 16.417526, 24.778744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.554672, 16.136847, 24.854454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.498833, 16.531925, 24.826260>,  <18.465330, 16.768972, 24.809343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.498833, 16.531925, 24.826260>,  <18.554672, 16.136847, 24.854454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.498833, 16.531925, 24.826260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812734, -0.154951, -0.561653,
		-0.565665, -0.021118, 0.824365,
		-0.139597, 0.987697, -0.070487,
		18.456953, 16.828234, 24.805113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.938688, 16.294315, 25.003868>,  <18.554672, 16.136847, 24.854454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.938688, 16.294315, 25.003868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.051765, 16.603230, 24.776302>,  <18.119612, 16.788578, 24.639763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.051765, 16.603230, 24.776302>,  <17.938688, 16.294315, 25.003868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.051765, 16.603230, 24.776302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719591, -0.221429, -0.658147,
		-0.634250, 0.595439, 0.493132,
		0.282693, 0.772283, -0.568914,
		18.136574, 16.834915, 24.605629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.377556, 16.589920, 24.758829>,  <17.938688, 16.294315, 25.003868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.377556, 16.589920, 24.758829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.650873, 16.758162, 24.520098>,  <17.814863, 16.859106, 24.376860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.650873, 16.758162, 24.520098>,  <17.377556, 16.589920, 24.758829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.650873, 16.758162, 24.520098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599463, -0.143495, -0.787435,
		-0.416840, 0.895825, 0.154087,
		0.683293, 0.420604, -0.596828,
		17.855862, 16.884342, 24.341049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.071590, 17.142811, 24.500690>,  <17.377556, 16.589920, 24.758829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.071590, 17.142811, 24.500690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.350700, 17.013418, 24.245043>,  <17.518166, 16.935781, 24.091654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.350700, 17.013418, 24.245043>,  <17.071590, 17.142811, 24.500690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.350700, 17.013418, 24.245043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667330, 0.030729, -0.744128,
		0.260352, 0.945735, -0.194428,
		0.697773, -0.323483, -0.639118,
		17.560032, 16.916374, 24.053307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086445, 17.637209, 23.904032>,  <17.071590, 17.142811, 24.500690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.086445, 17.637209, 23.904032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.237555, 17.301241, 23.748177>,  <17.328220, 17.099659, 23.654663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.237555, 17.301241, 23.748177>,  <17.086445, 17.637209, 23.904032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.237555, 17.301241, 23.748177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601068, 0.097623, -0.793212,
		0.704274, 0.533854, -0.467971,
		0.377775, -0.839922, -0.389637,
		17.350887, 17.049265, 23.631285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032375, 17.702503, 23.164810>,  <17.086445, 17.637209, 23.904032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.032375, 17.702503, 23.164810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.059467, 17.308908, 23.230759>,  <17.075722, 17.072752, 23.270329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.059467, 17.308908, 23.230759>,  <17.032375, 17.702503, 23.164810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.059467, 17.308908, 23.230759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553279, -0.174557, -0.814501,
		0.830238, -0.036054, -0.556242,
		0.067730, -0.983987, 0.164872,
		17.079786, 17.013712, 23.280220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140133, 17.440365, 22.490143>,  <17.032375, 17.702503, 23.164810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.140133, 17.440365, 22.490143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.038471, 17.108150, 22.688383>,  <16.977474, 16.908823, 22.807327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.038471, 17.108150, 22.688383>,  <17.140133, 17.440365, 22.490143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.038471, 17.108150, 22.688383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440547, -0.356765, -0.823795,
		0.861002, -0.427705, -0.275216,
		-0.254154, -0.830534, 0.495600,
		16.962225, 16.858990, 22.837063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.456247, 16.949343, 22.096363>,  <17.140133, 17.440365, 22.490143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.456247, 16.949343, 22.096363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.164188, 16.779629, 22.310604>,  <16.988953, 16.677801, 22.439148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.164188, 16.779629, 22.310604>,  <17.456247, 16.949343, 22.096363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.164188, 16.779629, 22.310604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485348, -0.229707, -0.843606,
		0.480961, -0.875909, -0.038206,
		-0.730147, -0.424284, 0.535601,
		16.945145, 16.652344, 22.471285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.266590, 16.354586, 21.783964>,  <17.456247, 16.949343, 22.096363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.266590, 16.354586, 21.783964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.941864, 16.419449, 22.008343>,  <16.747028, 16.458366, 22.142969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.941864, 16.419449, 22.008343>,  <17.266590, 16.354586, 21.783964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.941864, 16.419449, 22.008343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576528, -0.070281, -0.814049,
		-0.092590, -0.984257, 0.150551,
		-0.811814, 0.162170, 0.560944,
		16.698318, 16.468096, 22.176626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812639, 15.812102, 21.684875>,  <17.266590, 16.354586, 21.783964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.812639, 15.812102, 21.684875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.575691, 16.110653, 21.806213>,  <16.433523, 16.289783, 21.879017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.575691, 16.110653, 21.806213>,  <16.812639, 15.812102, 21.684875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575691, 16.110653, 21.806213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423323, 0.032006, -0.905413,
		-0.685489, -0.664753, 0.296999,
		-0.592370, 0.746377, 0.303345,
		16.397980, 16.334566, 21.897217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128298, 15.592317, 21.559692>,  <16.812639, 15.812102, 21.684875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.128298, 15.592317, 21.559692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.118340, 15.992173, 21.555714>,  <16.112364, 16.232086, 21.553326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.118340, 15.992173, 21.555714>,  <16.128298, 15.592317, 21.559692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.118340, 15.992173, 21.555714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429531, -0.019682, -0.902838,
		-0.902709, -0.018205, 0.429867,
		-0.024897, 0.999640, -0.009948,
		16.110870, 16.292065, 21.552729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445957, 15.777475, 21.559469>,  <16.128298, 15.592317, 21.559692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445957, 15.777475, 21.559469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.623559, 16.114065, 21.436321>,  <15.730120, 16.316019, 21.362432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.623559, 16.114065, 21.436321>,  <15.445957, 15.777475, 21.559469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.623559, 16.114065, 21.436321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676051, 0.089106, -0.731447,
		-0.588060, 0.532900, 0.608442,
		0.444004, 0.841473, -0.307868,
		15.756761, 16.366507, 21.343962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.859435, 16.171291, 21.330078>,  <15.445957, 15.777475, 21.559469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.859435, 16.171291, 21.330078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.186424, 16.336981, 21.170000>,  <15.382618, 16.436396, 21.073954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.186424, 16.336981, 21.170000>,  <14.859435, 16.171291, 21.330078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.186424, 16.336981, 21.170000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517273, 0.222410, -0.826415,
		-0.253314, 0.882582, 0.396082,
		0.817472, 0.414224, -0.400196,
		15.431666, 16.461248, 21.049942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592039, 16.598158, 20.978800>,  <14.859435, 16.171291, 21.330078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592039, 16.598158, 20.978800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.960293, 16.586744, 20.823048>,  <15.181245, 16.579897, 20.729595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.960293, 16.586744, 20.823048>,  <14.592039, 16.598158, 20.978800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.960293, 16.586744, 20.823048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362802, 0.305950, -0.880210,
		0.144246, 0.951620, 0.271316,
		0.920634, -0.028532, -0.389382,
		15.236483, 16.578184, 20.706232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.666788, 17.229404, 20.674812>,  <14.592039, 16.598158, 20.978800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.666788, 17.229404, 20.674812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.900514, 16.958969, 20.495266>,  <15.040750, 16.796707, 20.387539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.900514, 16.958969, 20.495266>,  <14.666788, 17.229404, 20.674812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.900514, 16.958969, 20.495266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314143, 0.321549, -0.893264,
		0.748258, 0.662955, -0.024503,
		0.584315, -0.676089, -0.448864,
		15.075809, 16.756142, 20.360607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.924665, 17.603401, 20.146204>,  <14.666788, 17.229404, 20.674812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.924665, 17.603401, 20.146204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.910352, 17.212238, 20.063828>,  <14.901764, 16.977539, 20.014400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.910352, 17.212238, 20.063828>,  <14.924665, 17.603401, 20.146204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.910352, 17.212238, 20.063828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449369, 0.199811, -0.870714,
		0.892629, 0.061387, -0.446593,
		-0.035784, -0.977910, -0.205943,
		14.899616, 16.918865, 20.002045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.689284, 18.238697, 19.716858>,  <14.924665, 17.603401, 20.146204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.689284, 18.238697, 19.716858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.935927, 18.454947, 19.487940>,  <15.083913, 18.584696, 19.350590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.935927, 18.454947, 19.487940>,  <14.689284, 18.238697, 19.716858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.935927, 18.454947, 19.487940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462701, 0.339273, 0.819025,
		0.636948, -0.769818, -0.040948,
		0.616608, 0.540623, -0.572295,
		15.120910, 18.617134, 19.316252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.419264, 18.164288, 19.809818>,  <14.689284, 18.238697, 19.716858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.419264, 18.164288, 19.809818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.373685, 18.532604, 19.660603>,  <15.346337, 18.753593, 19.571074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.373685, 18.532604, 19.660603>,  <15.419264, 18.164288, 19.809818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.373685, 18.532604, 19.660603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233682, 0.389791, 0.890762,
		0.965613, 0.014328, -0.259588,
		-0.113947, 0.920792, -0.373039,
		15.339500, 18.808842, 19.548691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.024275, 18.644930, 20.005789>,  <15.419264, 18.164288, 19.809818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.024275, 18.644930, 20.005789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.703982, 18.882418, 19.973982>,  <15.511806, 19.024910, 19.954899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.703982, 18.882418, 19.973982>,  <16.024275, 18.644930, 20.005789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.703982, 18.882418, 19.973982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126177, 0.296937, 0.946524,
		0.585582, 0.747880, -0.312681,
		-0.800733, 0.593720, -0.079516,
		15.463762, 19.060534, 19.950127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.222029, 19.179409, 20.530664>,  <16.024275, 18.644930, 20.005789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.222029, 19.179409, 20.530664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830689, 19.249691, 20.486919>,  <15.595885, 19.291861, 20.460672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.830689, 19.249691, 20.486919>,  <16.222029, 19.179409, 20.530664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.830689, 19.249691, 20.486919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017968, 0.454313, 0.890661,
		0.206178, 0.873343, -0.441320,
		-0.978350, 0.175705, -0.109361,
		15.537185, 19.302402, 20.454111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.174637, 19.836151, 20.567883>,  <16.222029, 19.179409, 20.530664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.174637, 19.836151, 20.567883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.823318, 19.686518, 20.686987>,  <15.612528, 19.596739, 20.758450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.823318, 19.686518, 20.686987>,  <16.174637, 19.836151, 20.567883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.823318, 19.686518, 20.686987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057376, 0.535809, 0.842387,
		-0.474664, 0.756949, -0.449135,
		-0.878295, -0.374082, 0.297760,
		15.559830, 19.574293, 20.776316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660928, 20.409109, 20.798140>,  <16.174637, 19.836151, 20.567883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.660928, 20.409109, 20.798140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.534128, 20.078173, 20.983622>,  <15.458048, 19.879612, 21.094910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.534128, 20.078173, 20.983622>,  <15.660928, 20.409109, 20.798140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.534128, 20.078173, 20.983622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154621, 0.527460, 0.835391,
		-0.935737, 0.193120, -0.295129,
		-0.316999, -0.827340, 0.463704,
		15.439029, 19.829971, 21.122732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.115182, 20.648376, 21.194660>,  <15.660928, 20.409109, 20.798140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.115182, 20.648376, 21.194660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221446, 20.298679, 21.357203>,  <15.285204, 20.088861, 21.454727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221446, 20.298679, 21.357203>,  <15.115182, 20.648376, 21.194660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.221446, 20.298679, 21.357203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016202, 0.417394, 0.908581,
		-0.963931, -0.247957, 0.096721,
		0.265660, -0.874242, 0.406356,
		15.301144, 20.036407, 21.479109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.631565, 20.664663, 21.733858>,  <15.115182, 20.648376, 21.194660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.631565, 20.664663, 21.733858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.933340, 20.417074, 21.821215>,  <15.114406, 20.268520, 21.873629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.933340, 20.417074, 21.821215>,  <14.631565, 20.664663, 21.733858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.933340, 20.417074, 21.821215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208050, 0.541081, 0.814829,
		-0.622526, -0.569301, 0.536989,
		0.754438, -0.618973, 0.218394,
		15.159672, 20.231382, 21.886732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.410527, 20.381815, 22.381824>,  <14.631565, 20.664663, 21.733858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.410527, 20.381815, 22.381824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.803479, 20.314949, 22.348394>,  <15.039250, 20.274830, 22.328337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.803479, 20.314949, 22.348394>,  <14.410527, 20.381815, 22.381824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.803479, 20.314949, 22.348394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154921, 0.478254, 0.864449,
		-0.104535, -0.862165, 0.495725,
		0.982381, -0.167164, -0.083574,
		15.098193, 20.264799, 22.323322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.600013, 19.973358, 23.029650>,  <14.410527, 20.381815, 22.381824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.600013, 19.973358, 23.029650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945015, 20.116903, 22.886932>,  <15.152017, 20.203030, 22.801302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.945015, 20.116903, 22.886932>,  <14.600013, 19.973358, 23.029650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.945015, 20.116903, 22.886932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297263, 0.211299, 0.931122,
		0.409535, -0.909159, 0.075570,
		0.862506, 0.358863, -0.356793,
		15.203767, 20.224562, 22.779894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228133, 19.696726, 23.277712>,  <14.600013, 19.973358, 23.029650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.228133, 19.696726, 23.277712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.382812, 20.043470, 23.151842>,  <15.475620, 20.251516, 23.076321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.382812, 20.043470, 23.151842>,  <15.228133, 19.696726, 23.277712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.382812, 20.043470, 23.151842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403171, 0.147973, 0.903082,
		0.829408, -0.476087, -0.292272,
		0.386698, 0.866859, -0.314675,
		15.498822, 20.303528, 23.057440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.900109, 19.781269, 23.611601>,  <15.228133, 19.696726, 23.277712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.900109, 19.781269, 23.611601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.790228, 20.148163, 23.496214>,  <15.724298, 20.368299, 23.426981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.790228, 20.148163, 23.496214>,  <15.900109, 19.781269, 23.611601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.790228, 20.148163, 23.496214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435093, 0.386117, 0.813393,
		0.857457, 0.097932, -0.505151,
		-0.274704, 0.917237, -0.288469,
		15.707817, 20.423334, 23.409674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547491, 20.191349, 23.437872>,  <15.900109, 19.781269, 23.611601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547491, 20.191349, 23.437872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.237185, 20.401432, 23.577784>,  <16.051001, 20.527481, 23.661730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.237185, 20.401432, 23.577784>,  <16.547491, 20.191349, 23.437872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.237185, 20.401432, 23.577784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542505, 0.271991, 0.794801,
		0.322297, 0.806337, -0.495929,
		-0.775766, 0.525206, 0.349780,
		16.004456, 20.558994, 23.682718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.819963, 20.800903, 23.715412>,  <16.547491, 20.191349, 23.437872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.819963, 20.800903, 23.715412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463892, 20.750561, 23.890568>,  <16.250250, 20.720356, 23.995661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.463892, 20.750561, 23.890568>,  <16.819963, 20.800903, 23.715412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.463892, 20.750561, 23.890568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394151, 0.269366, 0.878684,
		-0.228538, 0.954779, -0.190178,
		-0.890177, -0.125854, 0.437888,
		16.196838, 20.712805, 24.021935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.745800, 21.414087, 24.279366>,  <16.819963, 20.800903, 23.715412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.745800, 21.414087, 24.279366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.479736, 21.140633, 24.399504>,  <16.320099, 20.976561, 24.471586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.479736, 21.140633, 24.399504>,  <16.745800, 21.414087, 24.279366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.479736, 21.140633, 24.399504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448031, -0.043620, 0.892953,
		-0.597353, 0.728520, 0.335304,
		-0.665160, -0.683635, 0.300343,
		16.280188, 20.935543, 24.489607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.508392, 21.549652, 25.049490>,  <16.745800, 21.414087, 24.279366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.508392, 21.549652, 25.049490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.417658, 21.164722, 24.989521>,  <16.363216, 20.933765, 24.953541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.417658, 21.164722, 24.989521>,  <16.508392, 21.549652, 25.049490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.417658, 21.164722, 24.989521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367927, -0.227198, 0.901671,
		-0.901762, 0.149373, 0.405602,
		-0.226837, -0.962325, -0.149920,
		16.349607, 20.876024, 24.944546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.278103, 21.305038, 25.650652>,  <16.508392, 21.549652, 25.049490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.278103, 21.305038, 25.650652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.392267, 20.967104, 25.469635>,  <16.460766, 20.764343, 25.361025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.392267, 20.967104, 25.469635>,  <16.278103, 21.305038, 25.650652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.392267, 20.967104, 25.469635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311879, -0.364610, 0.877377,
		-0.906240, -0.391552, 0.159422,
		0.285412, -0.844835, -0.452541,
		16.477890, 20.713654, 25.333872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.126801, 20.780338, 26.152699>,  <16.278103, 21.305038, 25.650652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.126801, 20.780338, 26.152699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.371260, 20.552507, 25.932852>,  <16.517935, 20.415810, 25.800943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.371260, 20.552507, 25.932852>,  <16.126801, 20.780338, 26.152699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.371260, 20.552507, 25.932852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430218, -0.343817, 0.834687,
		-0.664387, -0.746573, 0.034920,
		0.611149, -0.569578, -0.549616,
		16.554604, 20.381634, 25.767967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.071983, 20.195494, 26.469585>,  <16.126801, 20.780338, 26.152699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.071983, 20.195494, 26.469585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.413353, 20.208311, 26.261492>,  <16.618174, 20.216002, 26.136637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.413353, 20.208311, 26.261492>,  <16.071983, 20.195494, 26.469585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.413353, 20.208311, 26.261492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493277, -0.372070, 0.786284,
		-0.168366, -0.927651, -0.333340,
		0.853423, 0.032045, -0.520233,
		16.669380, 20.217924, 26.105421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.391739, 19.415850, 26.515022>,  <16.071983, 20.195494, 26.469585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.391739, 19.415850, 26.515022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.692327, 19.662170, 26.420301>,  <16.872681, 19.809963, 26.363468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.692327, 19.662170, 26.420301>,  <16.391739, 19.415850, 26.515022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.692327, 19.662170, 26.420301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547151, -0.381126, 0.745231,
		0.368663, -0.689588, -0.623343,
		0.751474, 0.615802, -0.236802,
		16.917770, 19.846910, 26.349260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.905485, 18.924788, 26.583269>,  <16.391739, 19.415850, 26.515022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.905485, 18.924788, 26.583269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.083710, 19.282887, 26.582239>,  <17.190643, 19.497746, 26.581621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.083710, 19.282887, 26.582239>,  <16.905485, 18.924788, 26.583269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.083710, 19.282887, 26.582239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487350, -0.240137, 0.839538,
		0.750977, -0.375319, -0.543294,
		0.445560, 0.895249, -0.002574,
		17.217379, 19.551460, 26.581467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.610912, 18.859472, 26.475164>,  <16.905485, 18.924788, 26.583269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.610912, 18.859472, 26.475164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.524885, 19.194124, 26.676676>,  <17.473269, 19.394917, 26.797583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.524885, 19.194124, 26.676676>,  <17.610912, 18.859472, 26.475164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.524885, 19.194124, 26.676676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580892, -0.305086, 0.754644,
		0.785055, 0.454940, -0.420379,
		-0.215066, 0.836632, 0.503780,
		17.460365, 19.445114, 26.827810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126387, 19.071884, 26.788380>,  <17.610912, 18.859472, 26.475164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.126387, 19.071884, 26.788380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.847631, 19.263840, 27.001568>,  <17.680378, 19.379013, 27.129480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.847631, 19.263840, 27.001568>,  <18.126387, 19.071884, 26.788380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.847631, 19.263840, 27.001568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436885, -0.305281, 0.846129,
		0.568753, 0.822502, 0.003090,
		-0.696886, 0.479889, 0.532969,
		17.638565, 19.407806, 27.161459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.513052, 19.547623, 27.288589>,  <18.126387, 19.071884, 26.788380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.513052, 19.547623, 27.288589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.155325, 19.484503, 27.456064>,  <17.940689, 19.446630, 27.556549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.155325, 19.484503, 27.456064>,  <18.513052, 19.547623, 27.288589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.155325, 19.484503, 27.456064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445040, -0.410412, 0.795928,
		0.046239, 0.898143, 0.437265,
		-0.894316, -0.157797, 0.418687,
		17.887030, 19.437164, 27.581671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.525425, 19.760059, 28.008879>,  <18.513052, 19.547623, 27.288589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.525425, 19.760059, 28.008879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.233070, 19.488548, 27.980408>,  <18.057657, 19.325642, 27.963326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.233070, 19.488548, 27.980408>,  <18.525425, 19.760059, 28.008879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.233070, 19.488548, 27.980408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009189, -0.114069, 0.993430,
		-0.682435, 0.725432, 0.089609,
		-0.730888, -0.678775, -0.071179,
		18.013803, 19.284916, 27.959055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.793810, 19.964207, 28.298498>,  <18.525425, 19.760059, 28.008879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.793810, 19.964207, 28.298498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.862350, 19.571140, 28.326792>,  <17.903475, 19.335300, 28.343767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.862350, 19.571140, 28.326792>,  <17.793810, 19.964207, 28.298498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.862350, 19.571140, 28.326792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048847, 0.080179, 0.995583,
		-0.983998, -0.167141, 0.061739,
		0.171352, -0.982667, 0.070732,
		17.913755, 19.276340, 28.348011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293116, 19.703566, 28.697901>,  <17.793810, 19.964207, 28.298498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.293116, 19.703566, 28.697901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633461, 19.495279, 28.725849>,  <17.837669, 19.370308, 28.742619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.633461, 19.495279, 28.725849>,  <17.293116, 19.703566, 28.697901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.633461, 19.495279, 28.725849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012985, 0.112103, 0.993612,
		-0.525223, -0.846337, 0.088624,
		0.850866, -0.520717, 0.069869,
		17.888721, 19.339064, 28.746809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.144669, 19.144554, 29.071455>,  <17.293116, 19.703566, 28.697901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.144669, 19.144554, 29.071455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.542536, 19.165165, 29.107185>,  <17.781256, 19.177532, 29.128624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.542536, 19.165165, 29.107185>,  <17.144669, 19.144554, 29.071455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.542536, 19.165165, 29.107185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084985, -0.081020, 0.993083,
		0.058409, -0.995380, -0.076209,
		0.994669, 0.051529, 0.089325,
		17.840937, 19.180624, 29.133984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.403540, 18.497898, 29.373850>,  <17.144669, 19.144554, 29.071455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.403540, 18.497898, 29.373850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.663734, 18.796080, 29.432049>,  <17.819851, 18.974989, 29.466969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.663734, 18.796080, 29.432049>,  <17.403540, 18.497898, 29.373850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.663734, 18.796080, 29.432049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219275, 0.000912, 0.975663,
		0.727178, -0.666558, 0.164052,
		0.650486, 0.745452, 0.145496,
		17.858881, 19.019714, 29.475698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.589249, 18.474348, 30.046724>,  <17.403540, 18.497898, 29.373850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.589249, 18.474348, 30.046724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.759775, 18.830027, 29.980288>,  <17.862091, 19.043434, 29.940426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.759775, 18.830027, 29.980288>,  <17.589249, 18.474348, 30.046724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.759775, 18.830027, 29.980288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086162, 0.222697, 0.971072,
		0.900462, -0.399671, 0.171554,
		0.426314, 0.889196, -0.166094,
		17.887669, 19.096785, 29.930460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.258673, 18.574287, 30.423492>,  <17.589249, 18.474348, 30.046724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.258673, 18.574287, 30.423492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079157, 18.927578, 30.369093>,  <17.971447, 19.139553, 30.336452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079157, 18.927578, 30.369093>,  <18.258673, 18.574287, 30.423492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.079157, 18.927578, 30.369093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032817, 0.135796, 0.990193,
		0.893035, 0.448850, -0.031959,
		-0.448788, 0.883229, -0.136001,
		17.944521, 19.192547, 30.328293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.692585, 19.089115, 30.775175>,  <18.258673, 18.574287, 30.423492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.692585, 19.089115, 30.775175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.320835, 19.227795, 30.724482>,  <18.097784, 19.311003, 30.694065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.320835, 19.227795, 30.724482>,  <18.692585, 19.089115, 30.775175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.320835, 19.227795, 30.724482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022107, 0.290432, 0.956640,
		0.368472, 0.891880, -0.262256,
		-0.929376, 0.346697, -0.126733,
		18.042023, 19.331804, 30.686462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.646612, 19.836061, 31.037312>,  <18.692585, 19.089115, 30.775175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.646612, 19.836061, 31.037312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337429, 19.596333, 31.120592>,  <18.151918, 19.452496, 31.170561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337429, 19.596333, 31.120592>,  <18.646612, 19.836061, 31.037312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337429, 19.596333, 31.120592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223621, 0.049751, 0.973406,
		-0.593742, 0.798960, 0.095566,
		-0.772958, -0.599323, 0.208204,
		18.105541, 19.416536, 31.183054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.318850, 20.188139, 31.626783>,  <18.646612, 19.836061, 31.037312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.318850, 20.188139, 31.626783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.233900, 19.797565, 31.611403>,  <18.182930, 19.563221, 31.602175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.233900, 19.797565, 31.611403>,  <18.318850, 20.188139, 31.626783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.233900, 19.797565, 31.611403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285396, -0.099611, 0.953219,
		-0.934584, 0.191464, 0.299825,
		-0.212373, -0.976432, -0.038451,
		18.170189, 19.504637, 31.599867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.095057, 19.897964, 32.281654>,  <18.318850, 20.188139, 31.626783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.095057, 19.897964, 32.281654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.206621, 19.560101, 32.098896>,  <18.273560, 19.357382, 31.989241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.206621, 19.560101, 32.098896>,  <18.095057, 19.897964, 32.281654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.206621, 19.560101, 32.098896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207249, -0.411623, 0.887476,
		-0.937687, -0.342218, 0.060250,
		0.278910, -0.844662, -0.456898,
		18.290295, 19.306702, 31.961826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.631350, 19.488586, 32.713943>,  <18.095057, 19.897964, 32.281654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.631350, 19.488586, 32.713943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.329044, 19.583443, 32.469784>,  <17.147661, 19.640356, 32.323288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.329044, 19.583443, 32.469784>,  <17.631350, 19.488586, 32.713943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.329044, 19.583443, 32.469784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651296, -0.175298, 0.738298,
		0.068079, 0.955528, 0.286933,
		-0.755763, 0.237142, -0.610398,
		17.102316, 19.654585, 32.286663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.252205, 19.937483, 33.128082>,  <17.631350, 19.488586, 32.713943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.252205, 19.937483, 33.128082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.029350, 19.745314, 32.857143>,  <16.895638, 19.630013, 32.694580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.029350, 19.745314, 32.857143>,  <17.252205, 19.937483, 33.128082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.029350, 19.745314, 32.857143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762384, -0.027436, 0.646543,
		-0.329198, 0.876608, -0.350981,
		-0.557135, -0.480423, -0.677344,
		16.862209, 19.601187, 32.653942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.114319, 19.451725, 33.593243>,  <17.252205, 19.937483, 33.128082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.114319, 19.451725, 33.593243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.891300, 19.355045, 33.910915>,  <16.757488, 19.297037, 34.101521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.891300, 19.355045, 33.910915>,  <17.114319, 19.451725, 33.593243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.891300, 19.355045, 33.910915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823319, 0.038563, -0.566267,
		0.106246, -0.969582, -0.220504,
		-0.557546, -0.241709, 0.794179,
		16.724037, 19.282536, 34.149170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751591, 18.801268, 33.486759>,  <17.114319, 19.451725, 33.593243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.751591, 18.801268, 33.486759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555109, 19.040100, 33.740440>,  <16.437220, 19.183399, 33.892647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555109, 19.040100, 33.740440>,  <16.751591, 18.801268, 33.486759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555109, 19.040100, 33.740440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801971, -0.025860, -0.596803,
		-0.339940, -0.801764, 0.491544,
		-0.491206, 0.597081, 0.634200,
		16.407747, 19.219225, 33.930702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.075134, 18.499971, 33.581470>,  <16.751591, 18.801268, 33.486759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.075134, 18.499971, 33.581470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.052423, 18.891792, 33.658676>,  <16.038797, 19.126884, 33.704998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.052423, 18.891792, 33.658676>,  <16.075134, 18.499971, 33.581470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.052423, 18.891792, 33.658676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764757, 0.081608, -0.639129,
		-0.641812, -0.183894, 0.744487,
		-0.056776, 0.979553, 0.193011,
		16.035391, 19.185658, 33.716579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.393819, 18.559944, 33.731880>,  <16.075134, 18.499971, 33.581470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.393819, 18.559944, 33.731880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.547415, 18.922998, 33.664055>,  <15.639572, 19.140831, 33.623360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.547415, 18.922998, 33.664055>,  <15.393819, 18.559944, 33.731880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.547415, 18.922998, 33.664055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744110, 0.195462, -0.638823,
		-0.546674, 0.371477, 0.750435,
		0.383990, 0.907634, -0.169565,
		15.662612, 19.195290, 33.613186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.856238, 18.983654, 33.774342>,  <15.393819, 18.559944, 33.731880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.856238, 18.983654, 33.774342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.123501, 19.198034, 33.567913>,  <15.283858, 19.326662, 33.444057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.123501, 19.198034, 33.567913>,  <14.856238, 18.983654, 33.774342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.123501, 19.198034, 33.567913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718154, 0.283263, -0.635623,
		-0.194479, 0.795312, 0.574158,
		0.668156, 0.535949, -0.516068,
		15.323948, 19.358820, 33.413094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.468287, 19.612669, 33.521500>,  <14.856238, 18.983654, 33.774342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.468287, 19.612669, 33.521500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.792609, 19.588640, 33.288609>,  <14.987203, 19.574223, 33.148872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.792609, 19.588640, 33.288609>,  <14.468287, 19.612669, 33.521500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792609, 19.588640, 33.288609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522088, 0.375476, -0.765795,
		0.264615, 0.924883, 0.273075,
		0.810804, -0.060072, -0.582227,
		15.035851, 19.570620, 33.113941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.441256, 20.192320, 33.053032>,  <14.468287, 19.612669, 33.521500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.441256, 20.192320, 33.053032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.651669, 19.914755, 32.856350>,  <14.777916, 19.748217, 32.738338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.651669, 19.914755, 32.856350>,  <14.441256, 20.192320, 33.053032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.651669, 19.914755, 32.856350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367112, 0.336255, -0.867272,
		0.767150, 0.636725, -0.077863,
		0.526032, -0.693912, -0.491707,
		14.809478, 19.706581, 32.708839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.761176, 20.522299, 32.605515>,  <14.441256, 20.192320, 33.053032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.761176, 20.522299, 32.605515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.810528, 20.156364, 32.451706>,  <14.840138, 19.936804, 32.359421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.810528, 20.156364, 32.451706>,  <14.761176, 20.522299, 32.605515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.810528, 20.156364, 32.451706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195015, 0.357572, -0.913297,
		0.973009, 0.187668, -0.134290,
		0.123378, -0.914835, -0.384519,
		14.847541, 19.881914, 32.336349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.199584, 20.628630, 32.098236>,  <14.761176, 20.522299, 32.605515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.199584, 20.628630, 32.098236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.015284, 20.282291, 32.020245>,  <14.904703, 20.074488, 31.973448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.015284, 20.282291, 32.020245>,  <15.199584, 20.628630, 32.098236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.015284, 20.282291, 32.020245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135173, 0.285589, -0.948771,
		0.877175, -0.410792, -0.248625,
		-0.460752, -0.865846, -0.194984,
		14.877058, 20.022537, 31.961750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.561276, 20.290243, 31.447603>,  <15.199584, 20.628630, 32.098236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.561276, 20.290243, 31.447603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191080, 20.139820, 31.465693>,  <14.968962, 20.049566, 31.476547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191080, 20.139820, 31.465693>,  <15.561276, 20.290243, 31.447603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.191080, 20.139820, 31.465693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105161, 0.140409, -0.984493,
		0.363877, -0.915896, -0.169494,
		-0.925492, -0.376058, 0.045225,
		14.913432, 20.027002, 31.479259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.489737, 19.953712, 30.765280>,  <15.561276, 20.290243, 31.447603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.489737, 19.953712, 30.765280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.121280, 19.977539, 30.919136>,  <14.900206, 19.991835, 31.011450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.121280, 19.977539, 30.919136>,  <15.489737, 19.953712, 30.765280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.121280, 19.977539, 30.919136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373541, 0.142403, -0.916618,
		-0.109376, -0.988015, -0.108922,
		-0.921143, 0.059569, 0.384639,
		14.844936, 19.995409, 31.034527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.961733, 19.419832, 30.358252>,  <15.489737, 19.953712, 30.765280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.961733, 19.419832, 30.358252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.713398, 19.696732, 30.505413>,  <14.564397, 19.862871, 30.593710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.713398, 19.696732, 30.505413>,  <14.961733, 19.419832, 30.358252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.713398, 19.696732, 30.505413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492255, 0.021002, -0.870198,
		-0.610121, -0.721352, 0.327724,
		-0.620836, 0.692250, 0.367903,
		14.527147, 19.904406, 30.615784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.231649, 19.160471, 30.332584>,  <14.961733, 19.419832, 30.358252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.231649, 19.160471, 30.332584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.239060, 19.559025, 30.299412>,  <14.243507, 19.798157, 30.279509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.239060, 19.559025, 30.299412>,  <14.231649, 19.160471, 30.332584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.239060, 19.559025, 30.299412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437949, -0.066476, -0.896539,
		-0.898809, 0.052931, 0.435133,
		0.018529, 0.996383, -0.082930,
		14.244619, 19.857941, 30.274532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.587758, 19.366592, 30.015259>,  <14.231649, 19.160471, 30.332584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.587758, 19.366592, 30.015259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.793799, 19.705034, 29.960453>,  <13.917424, 19.908100, 29.927570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.793799, 19.705034, 29.960453>,  <13.587758, 19.366592, 30.015259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.793799, 19.705034, 29.960453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443885, 0.126580, -0.887099,
		-0.733236, 0.517766, 0.440775,
		0.515103, 0.846106, -0.137015,
		13.948330, 19.958866, 29.919348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.138992, 19.672104, 29.586245>,  <13.587758, 19.366592, 30.015259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.138992, 19.672104, 29.586245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.447302, 19.920910, 29.531099>,  <13.632287, 20.070194, 29.498013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.447302, 19.920910, 29.531099>,  <13.138992, 19.672104, 29.586245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.447302, 19.920910, 29.531099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267879, 0.120071, -0.955941,
		-0.578057, 0.773744, 0.259172,
		0.770773, 0.622015, -0.137862,
		13.678534, 20.107515, 29.489740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.796077, 20.265223, 29.239361>,  <13.138992, 19.672104, 29.586245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.796077, 20.265223, 29.239361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.190103, 20.216917, 29.190262>,  <13.426517, 20.187935, 29.160803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.190103, 20.216917, 29.190262>,  <12.796077, 20.265223, 29.239361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.190103, 20.216917, 29.190262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111288, 0.097464, -0.988997,
		0.131397, 0.987885, 0.082568,
		0.985063, -0.120762, -0.122746,
		13.485621, 20.180689, 29.153439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.951641, 20.776546, 28.868113>,  <12.796077, 20.265223, 29.239361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.951641, 20.776546, 28.868113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.255655, 20.528990, 28.788795>,  <13.438064, 20.380455, 28.741205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.255655, 20.528990, 28.788795>,  <12.951641, 20.776546, 28.868113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.255655, 20.528990, 28.788795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093809, 0.197447, -0.975815,
		0.643076, 0.760255, 0.092009,
		0.760035, -0.618892, -0.198292,
		13.483665, 20.343323, 28.729307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.534548, 21.238352, 28.488714>,  <12.951641, 20.776546, 28.868113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.534548, 21.238352, 28.488714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.615321, 20.858938, 28.391138>,  <13.663785, 20.631290, 28.332592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.615321, 20.858938, 28.391138>,  <13.534548, 21.238352, 28.488714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.615321, 20.858938, 28.391138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269645, 0.293289, -0.917209,
		0.941549, 0.119439, 0.314993,
		0.201935, -0.948534, -0.243940,
		13.675901, 20.574379, 28.317957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.135332, 21.242914, 28.193272>,  <13.534548, 21.238352, 28.488714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.135332, 21.242914, 28.193272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.995585, 20.889940, 28.067255>,  <13.911737, 20.678156, 27.991644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.995585, 20.889940, 28.067255>,  <14.135332, 21.242914, 28.193272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.995585, 20.889940, 28.067255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221776, 0.248799, -0.942823,
		0.910362, -0.399259, 0.108781,
		-0.349366, -0.882435, -0.315043,
		13.890776, 20.625210, 27.972742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.584655, 21.011740, 27.642256>,  <14.135332, 21.242914, 28.193272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.584655, 21.011740, 27.642256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.244829, 20.818726, 27.557028>,  <14.040934, 20.702917, 27.505892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.244829, 20.818726, 27.557028>,  <14.584655, 21.011740, 27.642256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.244829, 20.818726, 27.557028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134307, 0.192738, -0.972015,
		0.510100, -0.854407, -0.098935,
		-0.849565, -0.482537, -0.213069,
		13.989960, 20.673965, 27.493107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.738526, 20.543013, 27.034857>,  <14.584655, 21.011740, 27.642256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.738526, 20.543013, 27.034857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.339955, 20.509516, 27.030485>,  <14.100813, 20.489418, 27.027863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.339955, 20.509516, 27.030485>,  <14.738526, 20.543013, 27.034857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.339955, 20.509516, 27.030485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002403, 0.157454, -0.987523,
		0.084416, -0.983970, -0.157093,
		-0.996428, -0.083740, -0.010927,
		14.041027, 20.484392, 27.027206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.658699, 20.080721, 26.518503>,  <14.738526, 20.543013, 27.034857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.658699, 20.080721, 26.518503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338500, 20.311106, 26.584805>,  <14.146380, 20.449337, 26.624586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338500, 20.311106, 26.584805>,  <14.658699, 20.080721, 26.518503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338500, 20.311106, 26.584805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039802, 0.327041, -0.944172,
		-0.598014, -0.749209, -0.284719,
		-0.800497, 0.575960, 0.165755,
		14.098351, 20.483894, 26.634531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.160763, 20.006319, 25.963327>,  <14.658699, 20.080721, 26.518503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.160763, 20.006319, 25.963327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.054103, 20.364420, 26.106112>,  <13.990107, 20.579281, 26.191782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.054103, 20.364420, 26.106112>,  <14.160763, 20.006319, 25.963327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.054103, 20.364420, 26.106112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025425, 0.363708, -0.931166,
		-0.963458, -0.257371, -0.074221,
		-0.266650, 0.895252, 0.356961,
		13.974108, 20.632996, 26.213200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.462280, 20.118097, 25.620291>,  <14.160763, 20.006319, 25.963327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.462280, 20.118097, 25.620291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.599753, 20.466742, 25.760107>,  <13.682237, 20.675928, 25.843996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.599753, 20.466742, 25.760107>,  <13.462280, 20.118097, 25.620291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.599753, 20.466742, 25.760107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090951, 0.401357, -0.911395,
		-0.934671, 0.281438, 0.217213,
		0.343682, 0.871610, 0.349540,
		13.702858, 20.728224, 25.864969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.995256, 20.519321, 25.476782>,  <13.462280, 20.118097, 25.620291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.995256, 20.519321, 25.476782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.305278, 20.764666, 25.537548>,  <13.491291, 20.911873, 25.574007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.305278, 20.764666, 25.537548>,  <12.995256, 20.519321, 25.476782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.305278, 20.764666, 25.537548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244479, 0.512762, -0.822986,
		-0.582684, 0.600719, 0.547372,
		0.775054, 0.613362, 0.151915,
		13.537794, 20.948673, 25.583122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.757857, 21.296095, 25.606743>,  <12.995256, 20.519321, 25.476782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.757857, 21.296095, 25.606743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.108763, 21.245213, 25.421604>,  <13.319306, 21.214684, 25.310520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.108763, 21.245213, 25.421604>,  <12.757857, 21.296095, 25.606743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.108763, 21.245213, 25.421604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324406, 0.553581, -0.767013,
		0.353793, 0.823022, 0.444369,
		0.877263, -0.127208, -0.462847,
		13.371942, 21.207050, 25.282751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.773592, 21.844780, 25.043812>,  <12.757857, 21.296095, 25.606743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.773592, 21.844780, 25.043812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.149653, 21.723288, 25.105598>,  <13.375290, 21.650393, 25.142670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.149653, 21.723288, 25.105598>,  <12.773592, 21.844780, 25.043812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.149653, 21.723288, 25.105598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338006, -0.888691, 0.309807,
		0.043175, -0.343477, -0.938168,
		0.940153, -0.303731, 0.154466,
		13.431700, 21.632168, 25.151937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.179650, 21.972446, 24.424763>,  <12.773592, 21.844780, 25.043812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.179650, 21.972446, 24.424763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.494787, 21.929129, 24.182251>,  <13.683869, 21.903139, 24.036743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.494787, 21.929129, 24.182251>,  <13.179650, 21.972446, 24.424763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.494787, 21.929129, 24.182251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602710, -0.338031, -0.722824,
		-0.126665, 0.934884, -0.331585,
		0.787843, -0.108293, -0.606281,
		13.731140, 21.896641, 24.000366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.976214, 22.230257, 23.784180>,  <13.179650, 21.972446, 24.424763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.976214, 22.230257, 23.784180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.285332, 21.985098, 23.718277>,  <13.470802, 21.838003, 23.678736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.285332, 21.985098, 23.718277>,  <12.976214, 22.230257, 23.784180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.285332, 21.985098, 23.718277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484091, -0.401370, -0.777533,
		0.410420, 0.680630, -0.606875,
		0.772794, -0.612898, -0.164757,
		13.517170, 21.801228, 23.668850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.987450, 22.191366, 23.065971>,  <12.976214, 22.230257, 23.784180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.987450, 22.191366, 23.065971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.219436, 21.879089, 23.159060>,  <13.358627, 21.691723, 23.214912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.219436, 21.879089, 23.159060>,  <12.987450, 22.191366, 23.065971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.219436, 21.879089, 23.159060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366171, -0.505014, -0.781588,
		0.727708, 0.368079, -0.578757,
		0.579966, -0.780692, 0.232723,
		13.393426, 21.644882, 23.228876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.520642, 22.053137, 22.448872>,  <12.987450, 22.191366, 23.065971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.520642, 22.053137, 22.448872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.449450, 21.726528, 22.668550>,  <13.406735, 21.530563, 22.800358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.449450, 21.726528, 22.668550>,  <13.520642, 22.053137, 22.448872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.449450, 21.726528, 22.668550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197184, -0.517197, -0.832842,
		0.964076, -0.256522, -0.068954,
		-0.177980, -0.816519, 0.549199,
		13.396056, 21.481573, 22.833309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.893535, 21.419226, 22.122108>,  <13.520642, 22.053137, 22.448872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.893535, 21.419226, 22.122108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.582537, 21.303509, 22.345469>,  <13.395938, 21.234079, 22.479485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.582537, 21.303509, 22.345469>,  <13.893535, 21.419226, 22.122108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.582537, 21.303509, 22.345469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290302, -0.622560, -0.726735,
		0.557877, -0.727138, 0.400055,
		-0.777495, -0.289292, 0.558401,
		13.349288, 21.216721, 22.512989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.887695, 20.706772, 21.897806>,  <13.893535, 21.419226, 22.122108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.887695, 20.706772, 21.897806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.542017, 20.766865, 22.089888>,  <13.334610, 20.802921, 22.205135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.542017, 20.766865, 22.089888>,  <13.887695, 20.706772, 21.897806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.542017, 20.766865, 22.089888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422663, -0.734554, -0.530835,
		0.272985, -0.661709, 0.698298,
		-0.864197, 0.150234, 0.480202,
		13.282758, 20.811935, 22.233948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.767454, 20.117968, 22.134651>,  <13.887695, 20.706772, 21.897806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.767454, 20.117968, 22.134651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414712, 20.297905, 22.078127>,  <13.203066, 20.405867, 22.044212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.414712, 20.297905, 22.078127>,  <13.767454, 20.117968, 22.134651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.414712, 20.297905, 22.078127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325733, -0.797890, -0.507218,
		-0.340920, -0.401263, 0.850154,
		-0.881856, 0.449844, -0.141312,
		13.150155, 20.432858, 22.035732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.353690, 19.513273, 22.073622>,  <13.767454, 20.117968, 22.134651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.353690, 19.513273, 22.073622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.139391, 19.822308, 21.937338>,  <13.010812, 20.007729, 21.855568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.139391, 19.822308, 21.937338>,  <13.353690, 19.513273, 22.073622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.139391, 19.822308, 21.937338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473969, -0.609098, -0.635888,
		-0.698806, -0.179187, 0.692504,
		-0.535746, 0.772588, -0.340712,
		12.978667, 20.054085, 21.835125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.701809, 19.162865, 21.943468>,  <13.353690, 19.513273, 22.073622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.701809, 19.162865, 21.943468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.704423, 19.513794, 21.751526>,  <12.705992, 19.724352, 21.636360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.704423, 19.513794, 21.751526>,  <12.701809, 19.162865, 21.943468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.704423, 19.513794, 21.751526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577860, -0.388319, -0.717835,
		-0.816110, 0.281981, 0.504432,
		0.006535, 0.877322, -0.479856,
		12.706384, 19.776991, 21.607569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.005708, 19.283915, 21.690069>,  <12.701809, 19.162865, 21.943468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.005708, 19.283915, 21.690069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.214125, 19.534639, 21.458338>,  <12.339174, 19.685074, 21.319298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.214125, 19.534639, 21.458338>,  <12.005708, 19.283915, 21.690069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.214125, 19.534639, 21.458338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405556, -0.415419, -0.814219,
		-0.751026, 0.659192, 0.037757,
		0.521042, 0.626812, -0.579329,
		12.370438, 19.722683, 21.284538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.581706, 19.574116, 21.060860>,  <12.005708, 19.283915, 21.690069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.581706, 19.574116, 21.060860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.964359, 19.615818, 20.952061>,  <12.193952, 19.640839, 20.886782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.964359, 19.615818, 20.952061>,  <11.581706, 19.574116, 21.060860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.964359, 19.615818, 20.952061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193168, -0.471873, -0.860246,
		-0.218034, 0.875481, -0.431270,
		0.956633, 0.104255, -0.271999,
		12.251349, 19.647095, 20.870461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.560239, 19.789196, 20.377707>,  <11.581706, 19.574116, 21.060860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.560239, 19.789196, 20.377707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.923348, 19.629410, 20.428890>,  <12.141214, 19.533537, 20.459600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.923348, 19.629410, 20.428890>,  <11.560239, 19.789196, 20.377707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.923348, 19.629410, 20.428890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033044, -0.372214, -0.927559,
		0.418158, 0.837784, -0.351086,
		0.907773, -0.399467, 0.127960,
		12.195681, 19.509569, 20.467278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.753572, 19.716276, 19.688393>,  <11.560239, 19.789196, 20.377707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.753572, 19.716276, 19.688393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.989758, 19.468893, 19.895800>,  <12.131470, 19.320463, 20.020243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.989758, 19.468893, 19.895800>,  <11.753572, 19.716276, 19.688393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.989758, 19.468893, 19.895800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041903, -0.665099, -0.745579,
		0.805975, 0.418511, -0.418633,
		0.590465, -0.618459, 0.518516,
		12.166898, 19.283356, 20.051355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.089275, 19.457731, 19.209055>,  <11.753572, 19.716276, 19.688393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.089275, 19.457731, 19.209055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.167861, 19.187309, 19.493126>,  <12.215013, 19.025055, 19.663568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.167861, 19.187309, 19.493126>,  <12.089275, 19.457731, 19.209055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.167861, 19.187309, 19.493126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143760, -0.736325, -0.661180,
		0.969915, 0.027804, -0.241851,
		0.196464, -0.676057, 0.710175,
		12.226800, 18.984491, 19.706179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.730248, 19.006382, 19.018723>,  <12.089275, 19.457731, 19.209055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.730248, 19.006382, 19.018723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.439159, 18.826014, 19.225445>,  <12.264505, 18.717793, 19.349478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.439159, 18.826014, 19.225445>,  <12.730248, 19.006382, 19.018723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.439159, 18.826014, 19.225445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199576, -0.581681, -0.788554,
		0.656193, -0.676991, 0.333309,
		-0.727723, -0.450923, 0.516806,
		12.220842, 18.690737, 19.380486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.891427, 18.242615, 19.039610>,  <12.730248, 19.006382, 19.018723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.891427, 18.242615, 19.039610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.499221, 18.315838, 19.011099>,  <12.263897, 18.359772, 18.993992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.499221, 18.315838, 19.011099>,  <12.891427, 18.242615, 19.039610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.499221, 18.315838, 19.011099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045326, -0.563875, -0.824615,
		-0.191144, -0.805317, 0.561185,
		-0.980515, 0.183057, -0.071280,
		12.205067, 18.370754, 18.989716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.623614, 18.124861, 18.758322>,  <12.891427, 18.242615, 19.039610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.623614, 18.124861, 18.758322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.823427, 18.191330, 18.418238>,  <13.943315, 18.231211, 18.214188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.823427, 18.191330, 18.418238>,  <13.623614, 18.124861, 18.758322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.823427, 18.191330, 18.418238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729642, -0.609773, 0.309515,
		-0.467001, -0.774960, -0.425848,
		0.499532, 0.166173, -0.850208,
		13.973287, 18.241182, 18.163176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.936081, 17.488569, 18.448555>,  <13.623614, 18.124861, 18.758322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.936081, 17.488569, 18.448555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.152166, 17.806742, 18.338676>,  <14.281817, 17.997646, 18.272749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.152166, 17.806742, 18.338676>,  <13.936081, 17.488569, 18.448555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.152166, 17.806742, 18.338676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830757, -0.452027, 0.324831,
		0.134212, -0.403682, -0.905002,
		0.540214, 0.795432, -0.274694,
		14.314230, 18.045372, 18.256268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.564014, 17.379314, 18.643429>,  <13.936081, 17.488569, 18.448555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.564014, 17.379314, 18.643429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.641944, 17.722561, 18.453405>,  <14.688702, 17.928509, 18.339392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.641944, 17.722561, 18.453405>,  <14.564014, 17.379314, 18.643429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.641944, 17.722561, 18.453405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976144, -0.122302, 0.179402,
		0.095847, -0.498677, -0.861472,
		0.194823, 0.858116, -0.475058,
		14.700391, 17.979996, 18.310888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.263840, 17.362804, 18.256880>,  <14.564014, 17.379314, 18.643429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.263840, 17.362804, 18.256880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.168390, 17.744545, 18.328735>,  <15.111120, 17.973589, 18.371849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.168390, 17.744545, 18.328735>,  <15.263840, 17.362804, 18.256880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.168390, 17.744545, 18.328735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942995, 0.183526, 0.277632,
		0.231990, 0.235648, -0.943743,
		-0.238625, 0.954352, 0.179638,
		15.096803, 18.030851, 18.382627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.902139, 17.759022, 18.239885>,  <15.263840, 17.362804, 18.256880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.902139, 17.759022, 18.239885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.661919, 18.034288, 18.402744>,  <15.517787, 18.199448, 18.500460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.661919, 18.034288, 18.402744>,  <15.902139, 17.759022, 18.239885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.661919, 18.034288, 18.402744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799529, 0.523001, 0.295336,
		-0.009697, 0.502889, -0.864297,
		-0.600550, 0.688166, 0.407146,
		15.481753, 18.240738, 18.524889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.875466, 18.348585, 17.854889>,  <15.902139, 17.759022, 18.239885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.875466, 18.348585, 17.854889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.837589, 18.404995, 18.249075>,  <15.814863, 18.438841, 18.485586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.837589, 18.404995, 18.249075>,  <15.875466, 18.348585, 17.854889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.837589, 18.404995, 18.249075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749937, 0.661125, -0.022548,
		-0.654697, 0.736903, -0.168363,
		-0.094693, 0.141023, 0.985467,
		15.809181, 18.447302, 18.544716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.459900, 18.783966, 17.633833>,  <15.875466, 18.348585, 17.854889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.459900, 18.783966, 17.633833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.459885, 18.491257, 17.361214>,  <16.459875, 18.315630, 17.197643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.459885, 18.491257, 17.361214>,  <16.459900, 18.783966, 17.633833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.459885, 18.491257, 17.361214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025194, 0.681329, -0.731543,
		0.999683, -0.017200, 0.018409,
		-0.000040, -0.731775, -0.681546,
		16.459873, 18.271725, 17.156750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.069569, 19.060507, 17.175566>,  <16.459900, 18.783966, 17.633833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.069569, 19.060507, 17.175566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.814518, 18.832409, 16.968393>,  <16.661488, 18.695551, 16.844090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.814518, 18.832409, 16.968393>,  <17.069569, 19.060507, 17.175566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.814518, 18.832409, 16.968393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008059, 0.667364, -0.744689,
		0.770303, -0.479007, -0.420933,
		-0.637627, -0.570244, -0.517933,
		16.623230, 18.661337, 16.813013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.352135, 19.102304, 16.505941>,  <17.069569, 19.060507, 17.175566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.352135, 19.102304, 16.505941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.972807, 18.984337, 16.459103>,  <16.745211, 18.913557, 16.431000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.972807, 18.984337, 16.459103>,  <17.352135, 19.102304, 16.505941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.972807, 18.984337, 16.459103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067842, 0.548929, -0.833111,
		0.309977, -0.782113, -0.540568,
		-0.948321, -0.294918, -0.117095,
		16.688311, 18.895861, 16.423973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.391783, 18.593563, 15.951123>,  <17.352135, 19.102304, 16.505941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.391783, 18.593563, 15.951123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.998383, 18.663843, 15.968365>,  <16.762342, 18.706011, 15.978709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.998383, 18.663843, 15.968365>,  <17.391783, 18.593563, 15.951123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.998383, 18.663843, 15.968365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008969, 0.285316, -0.958391,
		-0.180688, -0.942191, -0.282184,
		-0.983499, 0.175701, 0.043103,
		16.703333, 18.716553, 15.981296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.165417, 18.307289, 15.404240>,  <17.391783, 18.593563, 15.951123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.165417, 18.307289, 15.404240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.899343, 18.587662, 15.507181>,  <16.739700, 18.755884, 15.568946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.899343, 18.587662, 15.507181>,  <17.165417, 18.307289, 15.404240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.899343, 18.587662, 15.507181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067421, 0.399638, -0.914190,
		-0.743632, -0.590751, -0.313089,
		-0.665181, 0.700930, 0.257355,
		16.699789, 18.797941, 15.584388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.855244, 18.315506, 14.771916>,  <17.165417, 18.307289, 15.404240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.855244, 18.315506, 14.771916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705013, 18.637880, 14.954962>,  <16.614876, 18.831305, 15.064789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.705013, 18.637880, 14.954962>,  <16.855244, 18.315506, 14.771916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.705013, 18.637880, 14.954962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021301, 0.501136, -0.865106,
		-0.926547, -0.315165, -0.205382,
		-0.375576, 0.805937, 0.457612,
		16.592340, 18.879662, 15.092245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.143440, 18.514128, 14.480562>,  <16.855244, 18.315506, 14.771916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.143440, 18.514128, 14.480562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.325102, 18.838667, 14.627781>,  <16.434099, 19.033390, 14.716112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.325102, 18.838667, 14.627781>,  <16.143440, 18.514128, 14.480562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.325102, 18.838667, 14.627781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145054, 0.474934, -0.867985,
		-0.879036, 0.340812, 0.333382,
		0.454154, 0.811348, 0.368047,
		16.461348, 19.082071, 14.738195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.777272, 19.056564, 14.110027>,  <16.143440, 18.514128, 14.480562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.777272, 19.056564, 14.110027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.111885, 19.211958, 14.264583>,  <16.312653, 19.305193, 14.357316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.111885, 19.211958, 14.264583>,  <15.777272, 19.056564, 14.110027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.111885, 19.211958, 14.264583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059532, 0.636577, -0.768912,
		-0.544675, 0.666222, 0.509390,
		0.836532, 0.388482, 0.386389,
		16.362844, 19.328503, 14.380499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.704733, 19.674097, 13.951414>,  <15.777272, 19.056564, 14.110027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.704733, 19.674097, 13.951414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.094835, 19.656242, 14.038027>,  <16.328896, 19.645531, 14.089994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.094835, 19.656242, 14.038027>,  <15.704733, 19.674097, 13.951414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094835, 19.656242, 14.038027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186478, 0.692187, -0.697211,
		-0.118760, 0.720337, 0.683382,
		0.975255, -0.044636, 0.216531,
		16.387411, 19.642851, 14.102986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.871953, 20.374210, 13.989337>,  <15.704733, 19.674097, 13.951414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.871953, 20.374210, 13.989337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.188227, 20.144781, 13.903705>,  <16.377991, 20.007124, 13.852325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.188227, 20.144781, 13.903705>,  <15.871953, 20.374210, 13.989337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.188227, 20.144781, 13.903705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275903, 0.645989, -0.711742,
		0.546531, 0.503697, 0.669024,
		0.790684, -0.573574, -0.214081,
		16.425432, 19.972710, 13.839480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.405737, 20.780434, 14.038099>,  <15.871953, 20.374210, 13.989337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.405737, 20.780434, 14.038099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.530165, 20.483400, 13.800846>,  <16.604822, 20.305182, 13.658494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.530165, 20.483400, 13.800846>,  <16.405737, 20.780434, 14.038099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.530165, 20.483400, 13.800846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373810, 0.669394, -0.642011,
		0.873786, -0.022009, 0.485813,
		0.311070, -0.742582, -0.593134,
		16.623486, 20.260626, 13.622906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.991524, 21.070988, 13.725944>,  <16.405737, 20.780434, 14.038099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.991524, 21.070988, 13.725944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.908520, 20.747173, 13.506274>,  <16.858717, 20.552885, 13.374473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.908520, 20.747173, 13.506274>,  <16.991524, 21.070988, 13.725944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.908520, 20.747173, 13.506274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187140, 0.518172, -0.834551,
		0.960166, -0.275948, 0.043972,
		-0.207508, -0.809537, -0.549173,
		16.846268, 20.504313, 13.341522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.446207, 21.127855, 13.167238>,  <16.991524, 21.070988, 13.725944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.446207, 21.127855, 13.167238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.210999, 20.850101, 13.001317>,  <17.069874, 20.683449, 12.901764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.210999, 20.850101, 13.001317>,  <17.446207, 21.127855, 13.167238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.210999, 20.850101, 13.001317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382363, 0.213277, -0.899061,
		0.712761, -0.687274, 0.140095,
		-0.588023, -0.694383, -0.414804,
		17.034592, 20.641787, 12.876876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837793, 20.602283, 12.777416>,  <17.446207, 21.127855, 13.167238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.837793, 20.602283, 12.777416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.470301, 20.617399, 12.620190>,  <17.249805, 20.626469, 12.525854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.470301, 20.617399, 12.620190>,  <17.837793, 20.602283, 12.777416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.470301, 20.617399, 12.620190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389481, 0.250755, -0.886243,
		0.065072, -0.967313, -0.245095,
		-0.918733, 0.037790, -0.393067,
		17.194681, 20.628736, 12.502270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.841208, 20.203163, 12.119062>,  <17.837793, 20.602283, 12.777416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.841208, 20.203163, 12.119062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.544136, 20.470343, 12.099998>,  <17.365892, 20.630650, 12.088558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.544136, 20.470343, 12.099998>,  <17.841208, 20.203163, 12.119062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.544136, 20.470343, 12.099998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238723, 0.197587, -0.950774,
		-0.625649, -0.717499, -0.306198,
		-0.742680, 0.667947, -0.047663,
		17.321331, 20.670727, 12.085698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.587656, 20.045626, 11.443163>,  <17.841208, 20.203163, 12.119062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.587656, 20.045626, 11.443163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.429110, 20.398914, 11.543415>,  <17.333981, 20.610888, 11.603566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.429110, 20.398914, 11.543415>,  <17.587656, 20.045626, 11.443163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.429110, 20.398914, 11.543415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026696, 0.283963, -0.958464,
		-0.917704, -0.373213, -0.136132,
		-0.396367, 0.883220, 0.250630,
		17.310200, 20.663879, 11.618604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.236593, 20.263506, 10.904478>,  <17.587656, 20.045626, 11.443163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.236593, 20.263506, 10.904478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.269016, 20.615480, 11.091729>,  <17.288471, 20.826664, 11.204080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.269016, 20.615480, 11.091729>,  <17.236593, 20.263506, 10.904478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.269016, 20.615480, 11.091729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100409, 0.460076, -0.882184,
		-0.991639, 0.118513, -0.051060,
		0.081059, 0.879935, 0.468129,
		17.293333, 20.879461, 11.232168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.894524, 20.677439, 10.524487>,  <17.236593, 20.263506, 10.904478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.894524, 20.677439, 10.524487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.137972, 20.914410, 10.735620>,  <17.284040, 21.056593, 10.862301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.137972, 20.914410, 10.735620>,  <16.894524, 20.677439, 10.524487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.137972, 20.914410, 10.735620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286212, 0.456531, -0.842414,
		-0.740042, 0.663785, 0.108295,
		0.608622, 0.592426, 0.527836,
		17.320559, 21.092138, 10.893971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.747129, 21.408997, 10.303572>,  <16.894524, 20.677439, 10.524487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.747129, 21.408997, 10.303572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.107973, 21.415194, 10.476063>,  <17.324480, 21.418911, 10.579557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.107973, 21.415194, 10.476063>,  <16.747129, 21.408997, 10.303572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.107973, 21.415194, 10.476063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340549, 0.588167, -0.733543,
		-0.264999, 0.808591, 0.525316,
		0.902110, 0.015493, 0.431229,
		17.378607, 21.419842, 10.605432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.927351, 22.130993, 10.248417>,  <16.747129, 21.408997, 10.303572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.927351, 22.130993, 10.248417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.267202, 21.949913, 10.356636>,  <17.471113, 21.841265, 10.421568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.267202, 21.949913, 10.356636>,  <16.927351, 22.130993, 10.248417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.267202, 21.949913, 10.356636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508069, 0.565046, -0.650069,
		0.141413, 0.689774, 0.710081,
		0.849629, -0.452698, 0.270548,
		17.522091, 21.814104, 10.437800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.321280, 22.667873, 10.241214>,  <16.927351, 22.130993, 10.248417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.321280, 22.667873, 10.241214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.544050, 22.337385, 10.207294>,  <17.677713, 22.139091, 10.186941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.544050, 22.337385, 10.207294>,  <17.321280, 22.667873, 10.241214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.544050, 22.337385, 10.207294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717212, 0.529899, -0.452564,
		0.418853, 0.191225, 0.887691,
		0.556928, -0.826220, -0.084801,
		17.711128, 22.089520, 10.181853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.040276, 22.887226, 10.394215>,  <17.321280, 22.667873, 10.241214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.040276, 22.887226, 10.394215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.072428, 22.532917, 10.211371>,  <18.091719, 22.320332, 10.101665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.072428, 22.532917, 10.211371>,  <18.040276, 22.887226, 10.394215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.072428, 22.532917, 10.211371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748315, 0.356568, -0.559360,
		0.658456, -0.297099, 0.691497,
		0.080380, -0.885771, -0.457108,
		18.096542, 22.267185, 10.074239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.788654, 22.857216, 10.352000>,  <18.040276, 22.887226, 10.394215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.788654, 22.857216, 10.352000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573690, 22.661236, 10.077443>,  <18.444712, 22.543648, 9.912708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.573690, 22.661236, 10.077443>,  <18.788654, 22.857216, 10.352000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.573690, 22.661236, 10.077443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530614, 0.436163, -0.726781,
		0.655467, -0.754791, 0.025577,
		-0.537411, -0.489952, -0.686393,
		18.412468, 22.514250, 9.871525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.959000, 22.146315, 10.700990>,  <18.788654, 22.857216, 10.352000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.959000, 22.146315, 10.700990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.232452, 22.432312, 10.642426>,  <19.396524, 22.603910, 10.607288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.232452, 22.432312, 10.642426>,  <18.959000, 22.146315, 10.700990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.232452, 22.432312, 10.642426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627097, 0.472834, -0.619013,
		-0.373363, 0.514989, 0.771613,
		0.683630, 0.714993, -0.146409,
		19.437542, 22.646811, 10.598504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.373075, 21.624413, 10.843320>,  <18.959000, 22.146315, 10.700990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.373075, 21.624413, 10.843320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.596241, 21.324863, 10.700254>,  <19.730141, 21.145134, 10.614415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.596241, 21.324863, 10.700254>,  <19.373075, 21.624413, 10.843320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.596241, 21.324863, 10.700254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493795, -0.046832, 0.868316,
		-0.667009, -0.661057, 0.343662,
		0.557912, -0.748873, -0.357664,
		19.763615, 21.100201, 10.592955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.472042, 21.046265, 11.404372>,  <19.373075, 21.624413, 10.843320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.472042, 21.046265, 11.404372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.771778, 21.049129, 11.139514>,  <19.951620, 21.050848, 10.980599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.771778, 21.049129, 11.139514>,  <19.472042, 21.046265, 11.404372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.771778, 21.049129, 11.139514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658509, -0.113278, 0.743999,
		-0.069675, -0.993537, -0.089603,
		0.749341, 0.007166, -0.662146,
		19.996580, 21.051279, 10.940870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.761179, 20.427397, 11.453097>,  <19.472042, 21.046265, 11.404372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.761179, 20.427397, 11.453097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.046064, 20.700998, 11.389991>,  <20.216995, 20.865158, 11.352127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.046064, 20.700998, 11.389991>,  <19.761179, 20.427397, 11.453097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.046064, 20.700998, 11.389991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542872, -0.394227, 0.741535,
		0.445017, -0.613779, -0.652101,
		0.712215, 0.684003, -0.157766,
		20.259729, 20.906199, 11.342661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.388926, 19.949305, 11.508054>,  <19.761179, 20.427397, 11.453097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.388926, 19.949305, 11.508054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.411667, 20.340895, 11.586409>,  <20.425312, 20.575850, 11.633421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.411667, 20.340895, 11.586409>,  <20.388926, 19.949305, 11.508054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.411667, 20.340895, 11.586409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670089, -0.182861, 0.719404,
		0.740100, 0.090362, -0.666398,
		0.056851, 0.978977, 0.195887,
		20.428722, 20.634588, 11.645175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.062218, 20.030993, 11.688740>,  <20.388926, 19.949305, 11.508054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.062218, 20.030993, 11.688740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.852459, 20.320330, 11.868421>,  <20.726604, 20.493933, 11.976229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.852459, 20.320330, 11.868421>,  <21.062218, 20.030993, 11.688740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.852459, 20.320330, 11.868421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483193, -0.181582, 0.856477,
		0.701095, 0.666184, -0.254294,
		-0.524396, 0.723344, 0.449202,
		20.695141, 20.537333, 12.003181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.456650, 20.279825, 12.168078>,  <21.062218, 20.030993, 11.688740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.456650, 20.279825, 12.168078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.081249, 20.370350, 12.272385>,  <20.856009, 20.424665, 12.334969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.081249, 20.370350, 12.272385>,  <21.456650, 20.279825, 12.168078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.081249, 20.370350, 12.272385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254532, -0.056840, 0.965393,
		0.233302, 0.972395, -0.004259,
		-0.938501, 0.226312, 0.260766,
		20.799700, 20.438244, 12.350615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.493233, 20.678326, 12.718715>,  <21.456650, 20.279825, 12.168078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.493233, 20.678326, 12.718715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.113169, 20.554781, 12.735703>,  <20.885130, 20.480654, 12.745895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.113169, 20.554781, 12.735703>,  <21.493233, 20.678326, 12.718715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.113169, 20.554781, 12.735703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041704, 0.009082, 0.999089,
		-0.308966, 0.951063, 0.004251,
		-0.950158, -0.308862, 0.042469,
		20.828121, 20.462122, 12.748444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.194273, 21.068068, 13.238951>,  <21.493233, 20.678326, 12.718715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.194273, 21.068068, 13.238951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.958857, 20.746807, 13.201927>,  <20.817606, 20.554050, 13.179713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.958857, 20.746807, 13.201927>,  <21.194273, 21.068068, 13.238951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.958857, 20.746807, 13.201927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049951, -0.150392, 0.987364,
		-0.806921, 0.576483, 0.128630,
		-0.588543, -0.803150, -0.092559,
		20.782293, 20.505861, 13.174160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.895533, 21.062042, 13.853922>,  <21.194273, 21.068068, 13.238951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.895533, 21.062042, 13.853922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.782330, 20.698059, 13.732671>,  <20.714407, 20.479670, 13.659920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.782330, 20.698059, 13.732671>,  <20.895533, 21.062042, 13.853922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.782330, 20.698059, 13.732671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049500, -0.329485, 0.942862,
		-0.957839, 0.251833, 0.138290,
		-0.283009, -0.909956, -0.303128,
		20.697428, 20.425072, 13.641732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.319557, 20.707508, 14.390064>,  <20.895533, 21.062042, 13.853922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.319557, 20.707508, 14.390064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.523727, 20.443638, 14.169413>,  <20.646229, 20.285316, 14.037022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.523727, 20.443638, 14.169413>,  <20.319557, 20.707508, 14.390064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.523727, 20.443638, 14.169413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083861, -0.600244, 0.795409,
		-0.855823, -0.452257, -0.251059,
		0.510425, -0.659675, -0.551629,
		20.676855, 20.245735, 14.003924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.070375, 20.134789, 14.499498>,  <20.319557, 20.707508, 14.390064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.070375, 20.134789, 14.499498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.446081, 20.028563, 14.412539>,  <20.671505, 19.964827, 14.360363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.446081, 20.028563, 14.412539>,  <20.070375, 20.134789, 14.499498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.446081, 20.028563, 14.412539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020408, -0.675547, 0.737035,
		-0.342592, -0.687832, -0.639936,
		0.939263, -0.265562, -0.217399,
		20.727859, 19.948895, 14.347319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.155197, 19.414766, 14.547515>,  <20.070375, 20.134789, 14.499498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.155197, 19.414766, 14.547515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.517748, 19.554493, 14.642560>,  <20.735279, 19.638329, 14.699587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.517748, 19.554493, 14.642560>,  <20.155197, 19.414766, 14.547515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.517748, 19.554493, 14.642560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049311, -0.646065, 0.761688,
		0.419584, -0.678658, -0.602803,
		0.906376, 0.349317, 0.237613,
		20.789661, 19.659288, 14.713844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.937317, 18.713272, 14.373329>,  <20.155197, 19.414766, 14.547515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.937317, 18.713272, 14.373329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195641, 18.835621, 14.653150>,  <20.350636, 18.909031, 14.821042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.195641, 18.835621, 14.653150>,  <19.937317, 18.713272, 14.373329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.195641, 18.835621, 14.653150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661430, -0.233525, 0.712725,
		0.381365, -0.922989, 0.051500,
		0.645810, 0.305872, 0.699551,
		20.389383, 18.927383, 14.863015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.168463, 18.110785, 14.782225>,  <19.937317, 18.713272, 14.373329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.168463, 18.110785, 14.782225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.175558, 18.462914, 14.971843>,  <20.179815, 18.674191, 15.085614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.175558, 18.462914, 14.971843>,  <20.168463, 18.110785, 14.782225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.175558, 18.462914, 14.971843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526347, -0.394885, 0.753010,
		0.850085, -0.262868, 0.456351,
		0.017736, 0.880322, 0.474046,
		20.180880, 18.727011, 15.114057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.524694, 18.456892, 15.153517>,  <20.168463, 18.110785, 14.782225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.524694, 18.456892, 15.153517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.534512, 18.058466, 15.187572>,  <19.540401, 17.819410, 15.208005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.534512, 18.058466, 15.187572>,  <19.524694, 18.456892, 15.153517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.534512, 18.058466, 15.187572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787275, 0.033229, 0.615706,
		-0.616114, -0.082137, -0.783363,
		0.024542, -0.996067, 0.085137,
		19.541874, 17.759645, 15.213113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.042679, 18.108351, 15.630676>,  <19.524694, 18.456892, 15.153517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.042679, 18.108351, 15.630676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.377607, 18.024914, 15.428534>,  <20.578564, 17.974852, 15.307248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.377607, 18.024914, 15.428534>,  <20.042679, 18.108351, 15.630676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.377607, 18.024914, 15.428534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259265, -0.662302, 0.702949,
		-0.481330, -0.719614, -0.500477,
		0.837319, -0.208594, -0.505357,
		20.628803, 17.962336, 15.276927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.051971, 17.331404, 15.560760>,  <20.042679, 18.108351, 15.630676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.051971, 17.331404, 15.560760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.420767, 17.474432, 15.501321>,  <20.642044, 17.560249, 15.465657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.420767, 17.474432, 15.501321>,  <20.051971, 17.331404, 15.560760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.420767, 17.474432, 15.501321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381279, -0.771357, 0.509544,
		0.067575, -0.526451, -0.847516,
		0.921987, 0.357572, -0.148600,
		20.697363, 17.581703, 15.456740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.367514, 16.707760, 15.432191>,  <20.051971, 17.331404, 15.560760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.367514, 16.707760, 15.432191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.624775, 16.993813, 15.541694>,  <20.779131, 17.165443, 15.607395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.624775, 16.993813, 15.541694>,  <20.367514, 16.707760, 15.432191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.624775, 16.993813, 15.541694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441318, -0.638332, 0.630691,
		0.625774, -0.284817, -0.726145,
		0.643153, 0.715130, 0.273757,
		20.817720, 17.208351, 15.623820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.972744, 16.416004, 15.368167>,  <20.367514, 16.707760, 15.432191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.972744, 16.416004, 15.368167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.040264, 16.714462, 15.625779>,  <21.080776, 16.893538, 15.780347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.040264, 16.714462, 15.625779>,  <20.972744, 16.416004, 15.368167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.040264, 16.714462, 15.625779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370199, -0.653563, 0.660157,
		0.913487, 0.126984, -0.386545,
		0.168802, 0.746144, 0.644031,
		21.090904, 16.938305, 15.818989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.631165, 16.299623, 15.661940>,  <20.972744, 16.416004, 15.368167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.631165, 16.299623, 15.661940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.505680, 16.544292, 15.952440>,  <21.430389, 16.691093, 16.126741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.505680, 16.544292, 15.952440>,  <21.631165, 16.299623, 15.661940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.505680, 16.544292, 15.952440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473603, -0.562128, 0.678021,
		0.822974, 0.556657, -0.113345,
		-0.313711, 0.611674, 0.726251,
		21.411568, 16.727795, 16.170315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.169542, 16.387386, 16.134823>,  <21.631165, 16.299623, 15.661940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.169542, 16.387386, 16.134823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.854008, 16.459051, 16.369987>,  <21.664686, 16.502050, 16.511086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.854008, 16.459051, 16.369987>,  <22.169542, 16.387386, 16.134823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.854008, 16.459051, 16.369987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463403, -0.454979, 0.760429,
		0.403725, 0.872293, 0.275880,
		-0.788837, 0.179161, 0.587910,
		21.617357, 16.512800, 16.546360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.509008, 16.377218, 16.784323>,  <22.169542, 16.387386, 16.134823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.509008, 16.377218, 16.784323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.116758, 16.303593, 16.811125>,  <21.881409, 16.259417, 16.827206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.116758, 16.303593, 16.811125>,  <22.509008, 16.377218, 16.784323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.116758, 16.303593, 16.811125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185764, -0.765367, 0.616202,
		-0.062140, 0.616712, 0.784732,
		-0.980627, -0.184066, 0.067003,
		21.822571, 16.248373, 16.831226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.870838, 15.940922, 16.341574>,  <22.509008, 16.377218, 16.784323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.870838, 15.940922, 16.341574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.163517, 16.114302, 16.551998>,  <23.339125, 16.218330, 16.678253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.163517, 16.114302, 16.551998>,  <22.870838, 15.940922, 16.341574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.163517, 16.114302, 16.551998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452384, -0.886099, 0.100884,
		0.509870, 0.164166, -0.844442,
		0.731697, 0.433450, 0.526061,
		23.383026, 16.244337, 16.709816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.428621, 15.632595, 16.147493>,  <22.870838, 15.940922, 16.341574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.428621, 15.632595, 16.147493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.445320, 15.777435, 16.519976>,  <23.455339, 15.864340, 16.743465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.445320, 15.777435, 16.519976>,  <23.428621, 15.632595, 16.147493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.445320, 15.777435, 16.519976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348435, -0.878780, 0.326095,
		0.936403, 0.310851, -0.162856,
		0.041748, 0.362101, 0.931204,
		23.457844, 15.886065, 16.799337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.157890, 15.601851, 16.559734>,  <23.428621, 15.632595, 16.147493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.157890, 15.601851, 16.559734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.851183, 15.565815, 16.813961>,  <23.667158, 15.544193, 16.966497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.851183, 15.565815, 16.813961>,  <24.157890, 15.601851, 16.559734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.851183, 15.565815, 16.813961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320752, -0.911411, 0.257775,
		0.556042, 0.401514, 0.727739,
		-0.766770, -0.090090, 0.635569,
		23.621153, 15.538788, 17.004631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.788036, 15.320445, 16.912483>,  <24.157890, 15.601851, 16.559734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.788036, 15.320445, 16.912483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930182, 15.367449, 17.283409>,  <25.015469, 15.395651, 17.505964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.930182, 15.367449, 17.283409>,  <24.788036, 15.320445, 16.912483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.930182, 15.367449, 17.283409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513093, -0.853765, -0.088437,
		0.781315, 0.507225, -0.363689,
		0.355363, 0.117510, 0.927313,
		25.036791, 15.402701, 17.561604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.636127, 15.301279, 17.007088>,  <24.788036, 15.320445, 16.912483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.636127, 15.301279, 17.007088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417450, 15.148491, 17.305141>,  <25.286243, 15.056818, 17.483973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417450, 15.148491, 17.305141>,  <25.636127, 15.301279, 17.007088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417450, 15.148491, 17.305141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567765, -0.823173, -0.005414,
		0.615442, 0.420100, 0.666894,
		-0.546695, -0.381971, 0.745133,
		25.253441, 15.033899, 17.528681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190609, 15.344411, 16.421204>,  <25.636127, 15.301279, 17.007088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190609, 15.344411, 16.421204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353251, 15.460299, 16.074623>,  <26.450834, 15.529833, 15.866675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353251, 15.460299, 16.074623>,  <26.190609, 15.344411, 16.421204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353251, 15.460299, 16.074623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908912, -0.032271, 0.415737,
		0.092487, -0.956567, -0.276453,
		0.406602, 0.289721, -0.866450,
		26.475231, 15.547215, 15.814688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.706160, 14.872499, 16.289787>,  <26.190609, 15.344411, 16.421204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.706160, 14.872499, 16.289787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970413, 15.043028, 16.042624>,  <27.128965, 15.145345, 15.894325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970413, 15.043028, 16.042624>,  <26.706160, 14.872499, 16.289787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970413, 15.043028, 16.042624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411966, -0.482211, -0.773147,
		-0.627573, 0.765324, -0.142935,
		0.660633, 0.426322, -0.617911,
		27.168604, 15.170924, 15.857250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335924, 14.981006, 15.632351>,  <26.706160, 14.872499, 16.289787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335924, 14.981006, 15.632351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725735, 14.956591, 15.546030>,  <26.959621, 14.941941, 15.494238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725735, 14.956591, 15.546030>,  <26.335924, 14.981006, 15.632351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725735, 14.956591, 15.546030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213991, -0.541031, -0.813322,
		-0.067111, 0.838785, -0.540311,
		0.974528, -0.061039, -0.215802,
		27.018093, 14.938279, 15.481290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522722, 15.308957, 14.977504>,  <26.335924, 14.981006, 15.632351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522722, 15.308957, 14.977504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792894, 15.017193, 15.020867>,  <26.954998, 14.842134, 15.046885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792894, 15.017193, 15.020867>,  <26.522722, 15.308957, 14.977504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792894, 15.017193, 15.020867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174379, -0.300827, -0.937601,
		0.716508, 0.614381, -0.330381,
		0.675432, -0.729410, 0.108410,
		26.995523, 14.798369, 15.053391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.069033, 15.264424, 29.087755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.313817, 14.955638, 29.018972>,  <13.460688, 14.770366, 28.977703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.313817, 14.955638, 29.018972>,  <13.069033, 15.264424, 29.087755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.313817, 14.955638, 29.018972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030065, 0.194561, -0.980429,
		0.790316, 0.605155, 0.095855,
		0.611961, -0.771967, -0.171959,
		13.497405, 14.724048, 28.967384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.620543, 15.513282, 28.673925>,  <13.069033, 15.264424, 29.087755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.620543, 15.513282, 28.673925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.620653, 15.117316, 28.617260>,  <13.620719, 14.879737, 28.583261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.620653, 15.117316, 28.617260>,  <13.620543, 15.513282, 28.673925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.620653, 15.117316, 28.617260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167571, 0.139706, -0.975911,
		0.985860, -0.023471, 0.165920,
		0.000275, -0.989915, -0.141663,
		13.620735, 14.820342, 28.574760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.121303, 15.418716, 28.151766>,  <13.620543, 15.513282, 28.673925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.121303, 15.418716, 28.151766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.911616, 15.078413, 28.136753>,  <13.785805, 14.874231, 28.127747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.911616, 15.078413, 28.136753>,  <14.121303, 15.418716, 28.151766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.911616, 15.078413, 28.136753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202708, -0.081857, -0.975812,
		0.827108, -0.519144, 0.215366,
		-0.524216, -0.850758, -0.037530,
		13.754352, 14.823186, 28.125494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.588520, 14.942665, 27.772333>,  <14.121303, 15.418716, 28.151766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.588520, 14.942665, 27.772333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.214751, 14.804383, 27.738054>,  <13.990490, 14.721415, 27.717487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.214751, 14.804383, 27.738054>,  <14.588520, 14.942665, 27.772333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.214751, 14.804383, 27.738054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122570, -0.086214, -0.988708,
		0.334412, -0.934375, 0.122934,
		-0.934423, -0.345704, -0.085695,
		13.934424, 14.700672, 27.712345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.636024, 14.357852, 27.239357>,  <14.588520, 14.942665, 27.772333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.636024, 14.357852, 27.239357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.241411, 14.421923, 27.252617>,  <14.004643, 14.460365, 27.260572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.241411, 14.421923, 27.252617>,  <14.636024, 14.357852, 27.239357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.241411, 14.421923, 27.252617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079917, -0.295171, -0.952096,
		-0.142718, -0.941922, 0.303996,
		-0.986532, 0.160176, 0.033150,
		13.945452, 14.469975, 27.262562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.212969, 13.761159, 26.832329>,  <14.636024, 14.357852, 27.239357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.212969, 13.761159, 26.832329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.951509, 14.063577, 26.845833>,  <13.794634, 14.245028, 26.853935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.951509, 14.063577, 26.845833>,  <14.212969, 13.761159, 26.832329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.951509, 14.063577, 26.845833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317024, -0.233038, -0.919342,
		-0.687196, -0.611629, 0.392010,
		-0.653649, 0.756045, 0.033758,
		13.755415, 14.290390, 26.855961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.607094, 13.537457, 26.505898>,  <14.212969, 13.761159, 26.832329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.607094, 13.537457, 26.505898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.591194, 13.936982, 26.494667>,  <13.581655, 14.176698, 26.487928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.591194, 13.936982, 26.494667>,  <13.607094, 13.537457, 26.505898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.591194, 13.936982, 26.494667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352872, -0.040320, -0.934802,
		-0.934827, -0.027249, 0.354056,
		-0.039748, 0.998815, -0.028077,
		13.579269, 14.236627, 26.486244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.070769, 13.681646, 26.059406>,  <13.607094, 13.537457, 26.505898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.070769, 13.681646, 26.059406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.220124, 14.050669, 26.098343>,  <13.309737, 14.272082, 26.121704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.220124, 14.050669, 26.098343>,  <13.070769, 13.681646, 26.059406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.220124, 14.050669, 26.098343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308467, 0.222431, -0.924863,
		-0.874889, 0.315305, 0.367630,
		0.373386, 0.922555, 0.097341,
		13.332140, 14.327435, 26.127544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.539310, 14.073731, 25.881618>,  <13.070769, 13.681646, 26.059406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.539310, 14.073731, 25.881618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.879977, 14.267349, 25.801256>,  <13.084377, 14.383520, 25.753038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.879977, 14.267349, 25.801256>,  <12.539310, 14.073731, 25.881618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.879977, 14.267349, 25.801256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399983, 0.352639, -0.845966,
		-0.338639, 0.800841, 0.493941,
		0.851668, 0.484045, -0.200905,
		13.135477, 14.412562, 25.740984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.268854, 14.625275, 25.584427>,  <12.539310, 14.073731, 25.881618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.268854, 14.625275, 25.584427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.653157, 14.601783, 25.475985>,  <12.883739, 14.587687, 25.410919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.653157, 14.601783, 25.475985>,  <12.268854, 14.625275, 25.584427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.653157, 14.601783, 25.475985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219823, 0.434897, -0.873237,
		0.169188, 0.898563, 0.404920,
		0.960757, -0.058731, -0.271104,
		12.941384, 14.584164, 25.394653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.440904, 15.314878, 25.395052>,  <12.268854, 14.625275, 25.584427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.440904, 15.314878, 25.395052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.709279, 15.088765, 25.203094>,  <12.870304, 14.953097, 25.087921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.709279, 15.088765, 25.203094>,  <12.440904, 15.314878, 25.395052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.709279, 15.088765, 25.203094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252400, 0.434433, -0.864617,
		0.697233, 0.701230, 0.148801,
		0.670940, -0.565282, -0.479892,
		12.910561, 14.919181, 25.059128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.757588, 15.760160, 24.861223>,  <12.440904, 15.314878, 25.395052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.757588, 15.760160, 24.861223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.856606, 15.390060, 24.746239>,  <12.916016, 15.168000, 24.677248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.856606, 15.390060, 24.746239>,  <12.757588, 15.760160, 24.861223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.856606, 15.390060, 24.746239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196242, 0.242663, -0.950054,
		0.948795, 0.291591, -0.121503,
		0.247543, -0.925251, -0.287460,
		12.930868, 15.112485, 24.660000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.201834, 15.811331, 24.300869>,  <12.757588, 15.760160, 24.861223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.201834, 15.811331, 24.300869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.126316, 15.424884, 24.230473>,  <13.081005, 15.193015, 24.188234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.126316, 15.424884, 24.230473>,  <13.201834, 15.811331, 24.300869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.126316, 15.424884, 24.230473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099902, 0.197180, -0.975264,
		0.976922, -0.166543, -0.133744,
		-0.188795, -0.966118, -0.175991,
		13.069677, 15.135049, 24.177675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.575448, 15.600419, 23.741158>,  <13.201834, 15.811331, 24.300869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.575448, 15.600419, 23.741158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.263902, 15.349887, 23.754305>,  <13.076974, 15.199568, 23.762194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.263902, 15.349887, 23.754305>,  <13.575448, 15.600419, 23.741158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.263902, 15.349887, 23.754305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146806, 0.131108, -0.980438,
		0.609768, -0.768454, -0.194064,
		-0.778865, -0.626330, 0.032868,
		13.030242, 15.161988, 23.764166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.620812, 15.197316, 23.131636>,  <13.575448, 15.600419, 23.741158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.620812, 15.197316, 23.131636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.242560, 15.181106, 23.260721>,  <13.015610, 15.171379, 23.338173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.242560, 15.181106, 23.260721>,  <13.620812, 15.197316, 23.131636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.242560, 15.181106, 23.260721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325218, 0.104623, -0.939833,
		0.004322, -0.993686, -0.112113,
		-0.945629, -0.040523, 0.322713,
		12.958872, 15.168948, 23.357534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.321016, 14.799809, 22.586203>,  <13.620812, 15.197316, 23.131636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.321016, 14.799809, 22.586203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.011655, 14.951572, 22.789337>,  <12.826038, 15.042630, 22.911217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.011655, 14.951572, 22.789337>,  <13.321016, 14.799809, 22.586203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.011655, 14.951572, 22.789337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485220, 0.161210, -0.859403,
		-0.407933, -0.911076, 0.059417,
		-0.773403, 0.379409, 0.507835,
		12.779634, 15.065395, 22.941689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.732737, 14.583145, 22.333803>,  <13.321016, 14.799809, 22.586203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.732737, 14.583145, 22.333803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.587157, 14.918313, 22.496496>,  <12.499809, 15.119413, 22.594112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.587157, 14.918313, 22.496496>,  <12.732737, 14.583145, 22.333803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.587157, 14.918313, 22.496496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372010, 0.269571, -0.888223,
		-0.853903, -0.474576, 0.213605,
		-0.363948, 0.837919, 0.406734,
		12.477973, 15.169689, 22.618517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.082034, 14.563030, 22.143076>,  <12.732737, 14.583145, 22.333803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.082034, 14.563030, 22.143076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.160764, 14.945896, 22.228020>,  <12.208001, 15.175615, 22.278986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.160764, 14.945896, 22.228020>,  <12.082034, 14.563030, 22.143076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.160764, 14.945896, 22.228020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419638, 0.277995, -0.864073,
		-0.886095, 0.080957, 0.456379,
		0.196824, 0.957165, 0.212357,
		12.219810, 15.233046, 22.291727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.528135, 14.837186, 21.902815>,  <12.082034, 14.563030, 22.143076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.528135, 14.837186, 21.902815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.743952, 15.171532, 21.943260>,  <11.873442, 15.372139, 21.967527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.743952, 15.171532, 21.943260>,  <11.528135, 14.837186, 21.902815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.743952, 15.171532, 21.943260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526809, 0.428826, -0.733880,
		-0.656785, 0.342691, 0.671711,
		0.539541, 0.835865, 0.101114,
		11.905814, 15.422292, 21.973595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.049273, 15.277128, 22.010986>,  <11.528135, 14.837186, 21.902815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.049273, 15.277128, 22.010986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.357959, 15.512948, 21.915583>,  <11.543170, 15.654440, 21.858341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.357959, 15.512948, 21.915583>,  <11.049273, 15.277128, 22.010986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.357959, 15.512948, 21.915583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552369, 0.435481, -0.710805,
		-0.315189, 0.680284, 0.661717,
		0.771715, 0.589550, -0.238509,
		11.589474, 15.689813, 21.844030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.838434, 16.068615, 22.063461>,  <11.049273, 15.277128, 22.010986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.838434, 16.068615, 22.063461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.137113, 16.011383, 21.803623>,  <11.316319, 15.977044, 21.647720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.137113, 16.011383, 21.803623>,  <10.838434, 16.068615, 22.063461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.137113, 16.011383, 21.803623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581626, 0.333389, -0.741999,
		0.322732, 0.931870, 0.165722,
		0.746696, -0.143079, -0.649595,
		11.361121, 15.968459, 21.608746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.958015, 16.709896, 21.558451>,  <10.838434, 16.068615, 22.063461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.958015, 16.709896, 21.558451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.047003, 16.349808, 21.408726>,  <11.100395, 16.133755, 21.318892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.047003, 16.349808, 21.408726>,  <10.958015, 16.709896, 21.558451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.047003, 16.349808, 21.408726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383449, 0.272198, -0.882539,
		0.896367, 0.339867, -0.284634,
		0.222469, -0.900221, -0.374311,
		11.113744, 16.079741, 21.296432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.647060, 16.866009, 22.259621>,  <10.958015, 16.709896, 21.558451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.647060, 16.866009, 22.259621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.795045, 17.189833, 22.077309>,  <10.883836, 17.384127, 21.967920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.795045, 17.189833, 22.077309>,  <10.647060, 16.866009, 22.259621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.795045, 17.189833, 22.077309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184224, 0.416924, 0.890077,
		0.910598, -0.413261, 0.005106,
		0.369962, 0.809562, -0.455782,
		10.906034, 17.432701, 21.940575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.253533, 16.981602, 22.565903>,  <10.647060, 16.866009, 22.259621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.253533, 16.981602, 22.565903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.185581, 17.336380, 22.394104>,  <11.144810, 17.549248, 22.291025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.185581, 17.336380, 22.394104>,  <11.253533, 16.981602, 22.565903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.185581, 17.336380, 22.394104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230388, 0.459501, 0.857776,
		0.958156, 0.046767, -0.282401,
		-0.169879, 0.886945, -0.429499,
		11.134618, 17.602463, 22.265255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.843402, 17.344580, 22.640585>,  <11.253533, 16.981602, 22.565903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.843402, 17.344580, 22.640585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.568428, 17.630951, 22.591791>,  <11.403443, 17.802774, 22.562515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.568428, 17.630951, 22.591791>,  <11.843402, 17.344580, 22.640585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.568428, 17.630951, 22.591791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304071, 0.436264, 0.846885,
		0.659526, 0.545088, -0.517596,
		-0.687435, 0.715928, -0.121982,
		11.362198, 17.845730, 22.555197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.178934, 17.960371, 22.813372>,  <11.843402, 17.344580, 22.640585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.178934, 17.960371, 22.813372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.787362, 18.036457, 22.843073>,  <11.552419, 18.082108, 22.860893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.787362, 18.036457, 22.843073>,  <12.178934, 17.960371, 22.813372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.787362, 18.036457, 22.843073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117390, 0.226726, 0.966858,
		0.167075, 0.955204, -0.244279,
		-0.978931, 0.190214, 0.074251,
		11.493683, 18.093521, 22.865349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.170716, 18.513901, 23.165514>,  <12.178934, 17.960371, 22.813372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.170716, 18.513901, 23.165514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.788371, 18.404678, 23.208902>,  <11.558964, 18.339144, 23.234936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.788371, 18.404678, 23.208902>,  <12.170716, 18.513901, 23.165514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.788371, 18.404678, 23.208902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009290, 0.397080, 0.917737,
		-0.293666, 0.876223, -0.382091,
		-0.955863, -0.273058, 0.108469,
		11.501613, 18.322762, 23.241444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.882117, 18.918116, 23.728245>,  <12.170716, 18.513901, 23.165514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.882117, 18.918116, 23.728245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.647368, 18.595133, 23.704279>,  <11.506519, 18.401342, 23.689899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.647368, 18.595133, 23.704279>,  <11.882117, 18.918116, 23.728245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.647368, 18.595133, 23.704279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220395, 0.088103, 0.971424,
		-0.779106, 0.583307, -0.229666,
		-0.586873, -0.807459, -0.059917,
		11.471307, 18.352896, 23.686304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.404995, 19.184330, 23.994780>,  <11.882117, 18.918116, 23.728245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.404995, 19.184330, 23.994780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.360863, 18.788897, 24.035824>,  <11.334384, 18.551636, 24.060452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.360863, 18.788897, 24.035824>,  <11.404995, 19.184330, 23.994780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.360863, 18.788897, 24.035824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381078, 0.137429, 0.914272,
		-0.917936, 0.061768, -0.391890,
		-0.110330, -0.988584, 0.102613,
		11.327764, 18.492321, 24.066608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.855212, 19.154099, 24.441362>,  <11.404995, 19.184330, 23.994780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.855212, 19.154099, 24.441362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.060356, 18.810732, 24.445232>,  <11.183442, 18.604712, 24.447556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.060356, 18.810732, 24.445232>,  <10.855212, 19.154099, 24.441362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.060356, 18.810732, 24.445232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030157, -0.006750, 0.999523,
		-0.857943, -0.512907, -0.029349,
		0.512860, -0.858418, 0.009677,
		11.214214, 18.553207, 24.448135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.446883, 18.628345, 24.778673>,  <10.855212, 19.154099, 24.441362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.446883, 18.628345, 24.778673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.840438, 18.560490, 24.801258>,  <11.076571, 18.519775, 24.814810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.840438, 18.560490, 24.801258>,  <10.446883, 18.628345, 24.778673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.840438, 18.560490, 24.801258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057355, -0.000360, 0.998354,
		-0.169343, -0.985505, -0.010084,
		0.983887, -0.169643, 0.056463,
		11.135604, 18.509598, 24.818197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.534347, 18.070873, 25.303932>,  <10.446883, 18.628345, 24.778673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.534347, 18.070873, 25.303932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.900683, 18.226324, 25.263527>,  <11.120485, 18.319595, 25.239285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.900683, 18.226324, 25.263527>,  <10.534347, 18.070873, 25.303932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.900683, 18.226324, 25.263527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177762, -0.166841, 0.969827,
		0.360049, -0.906164, -0.221884,
		0.915842, 0.388627, -0.101011,
		11.175436, 18.342913, 25.233223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.918802, 17.495691, 25.536816>,  <10.534347, 18.070873, 25.303932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.918802, 17.495691, 25.536816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.125334, 17.835287, 25.581751>,  <11.249252, 18.039045, 25.608711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.125334, 17.835287, 25.581751>,  <10.918802, 17.495691, 25.536816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.125334, 17.835287, 25.581751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074998, -0.175498, 0.981619,
		0.853101, -0.498412, -0.154287,
		0.516328, 0.848991, 0.112338,
		11.280232, 18.089985, 25.615452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.409018, 17.296585, 26.017076>,  <10.918802, 17.495691, 25.536816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.409018, 17.296585, 26.017076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.446813, 17.694790, 26.015076>,  <11.469489, 17.933714, 26.013876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.446813, 17.694790, 26.015076>,  <11.409018, 17.296585, 26.017076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.446813, 17.694790, 26.015076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227265, -0.016679, 0.973690,
		0.969238, -0.093138, -0.227821,
		0.094487, 0.995514, -0.005001,
		11.475159, 17.993444, 26.013575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.985625, 17.359163, 26.334023>,  <11.409018, 17.296585, 26.017076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.985625, 17.359163, 26.334023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.754804, 17.682802, 26.378513>,  <11.616311, 17.876986, 26.405207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.754804, 17.682802, 26.378513>,  <11.985625, 17.359163, 26.334023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.754804, 17.682802, 26.378513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128396, -0.044620, 0.990718,
		0.806550, 0.585979, -0.078137,
		-0.577054, 0.809097, 0.111226,
		11.581688, 17.925531, 26.411880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.395031, 17.937332, 26.643591>,  <11.985625, 17.359163, 26.334023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.395031, 17.937332, 26.643591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.004755, 17.943144, 26.731062>,  <11.770590, 17.946630, 26.783545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.004755, 17.943144, 26.731062>,  <12.395031, 17.937332, 26.643591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.004755, 17.943144, 26.731062> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217494, -0.058554, 0.974304,
		0.026961, 0.998179, 0.053970,
		-0.975689, 0.014530, 0.218676,
		11.712049, 17.947502, 26.796665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.305490, 18.501562, 27.110027>,  <12.395031, 17.937332, 26.643591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.305490, 18.501562, 27.110027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.021256, 18.222118, 27.143541>,  <11.850717, 18.054453, 27.163651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.021256, 18.222118, 27.143541>,  <12.305490, 18.501562, 27.110027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.021256, 18.222118, 27.143541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175456, -0.060616, 0.982619,
		-0.681386, 0.712933, 0.165648,
		-0.710583, -0.698607, 0.083786,
		11.808082, 18.012537, 27.168676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.853192, 18.731867, 27.730680>,  <12.305490, 18.501562, 27.110027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.853192, 18.731867, 27.730680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.820401, 18.337976, 27.669243>,  <11.800726, 18.101643, 27.632381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.820401, 18.337976, 27.669243>,  <11.853192, 18.731867, 27.730680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.820401, 18.337976, 27.669243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146916, -0.164368, 0.975397,
		-0.985746, 0.057397, 0.158147,
		-0.081979, -0.984728, -0.153592,
		11.795808, 18.042559, 27.623165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.531508, 18.483505, 28.380819>,  <11.853192, 18.731867, 27.730680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.531508, 18.483505, 28.380819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.664834, 18.139187, 28.226971>,  <11.744829, 17.932596, 28.134663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.664834, 18.139187, 28.226971>,  <11.531508, 18.483505, 28.380819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.664834, 18.139187, 28.226971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272731, -0.302476, 0.913305,
		-0.902508, -0.409314, 0.133946,
		0.333313, -0.860796, -0.384620,
		11.764828, 17.880947, 28.111586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.287691, 17.960579, 28.838741>,  <11.531508, 18.483505, 28.380819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.287691, 17.960579, 28.838741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.594443, 17.798454, 28.639696>,  <11.778495, 17.701180, 28.520269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.594443, 17.798454, 28.639696>,  <11.287691, 17.960579, 28.838741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.594443, 17.798454, 28.639696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392792, -0.316764, 0.863351,
		-0.507554, -0.857543, -0.083716,
		0.766879, -0.405314, -0.497611,
		11.824507, 17.676861, 28.490414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<11.365623, 17.122149, 29.118069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.686782, 17.244967, 28.913685>,  <11.879478, 17.318657, 28.791056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.686782, 17.244967, 28.913685>,  <11.365623, 17.122149, 29.118069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.686782, 17.244967, 28.913685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586398, -0.252665, 0.769609,
		0.107204, -0.917542, -0.382915,
		0.802897, 0.307046, -0.510958,
		11.927651, 17.337080, 28.760397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.768819, 16.495392, 29.132227>,  <11.365623, 17.122149, 29.118069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.768819, 16.495392, 29.132227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.963641, 16.837332, 29.060665>,  <12.080535, 17.042496, 29.017727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.963641, 16.837332, 29.060665>,  <11.768819, 16.495392, 29.132227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.963641, 16.837332, 29.060665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674110, -0.237720, 0.699332,
		0.555295, -0.461216, -0.692046,
		0.487057, 0.854850, -0.178905,
		12.109758, 17.093786, 29.006994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.470203, 16.268490, 29.114153>,  <11.768819, 16.495392, 29.132227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.470203, 16.268490, 29.114153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.493045, 16.652704, 29.223047>,  <12.506750, 16.883232, 29.288383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.493045, 16.652704, 29.223047>,  <12.470203, 16.268490, 29.114153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.493045, 16.652704, 29.223047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727358, -0.226812, 0.647693,
		0.683878, 0.161027, -0.711604,
		0.057104, 0.960535, 0.272236,
		12.510176, 16.940865, 29.304718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.186120, 16.475466, 29.051695>,  <12.470203, 16.268490, 29.114153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.186120, 16.475466, 29.051695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.000384, 16.715054, 29.312654>,  <12.888943, 16.858807, 29.469231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.000384, 16.715054, 29.312654>,  <13.186120, 16.475466, 29.051695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.000384, 16.715054, 29.312654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632642, -0.291185, 0.717618,
		0.619801, 0.745953, -0.243726,
		-0.464340, 0.598971, 0.652397,
		12.861082, 16.894745, 29.508373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.772211, 16.684757, 29.364719>,  <13.186120, 16.475466, 29.051695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.772211, 16.684757, 29.364719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.478599, 16.828953, 29.594936>,  <13.302431, 16.915470, 29.733067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.478599, 16.828953, 29.594936>,  <13.772211, 16.684757, 29.364719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.478599, 16.828953, 29.594936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509750, -0.267509, 0.817676,
		0.448724, 0.893582, 0.012602,
		-0.734031, 0.360487, 0.575541,
		13.258389, 16.937099, 29.767599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.036880, 17.034348, 29.907196>,  <13.772211, 16.684757, 29.364719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.036880, 17.034348, 29.907196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.679032, 16.960016, 30.069738>,  <13.464324, 16.915417, 30.167263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.679032, 16.960016, 30.069738>,  <14.036880, 17.034348, 29.907196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.679032, 16.960016, 30.069738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436262, -0.166659, 0.884251,
		-0.096597, 0.968345, 0.230166,
		-0.894620, -0.185829, 0.406354,
		13.410646, 16.904268, 30.191645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.927445, 17.573387, 30.510214>,  <14.036880, 17.034348, 29.907196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.927445, 17.573387, 30.510214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.700871, 17.251888, 30.583035>,  <13.564927, 17.058989, 30.626728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.700871, 17.251888, 30.583035>,  <13.927445, 17.573387, 30.510214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.700871, 17.251888, 30.583035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391448, -0.068009, 0.917684,
		-0.725204, 0.591073, 0.353147,
		-0.566435, -0.803746, 0.182054,
		13.530941, 17.010765, 30.637651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.697721, 17.629467, 31.250973>,  <13.927445, 17.573387, 30.510214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.697721, 17.629467, 31.250973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.601891, 17.249262, 31.171848>,  <13.544392, 17.021139, 31.124374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.601891, 17.249262, 31.171848>,  <13.697721, 17.629467, 31.250973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.601891, 17.249262, 31.171848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496888, -0.295080, 0.816106,
		-0.834089, 0.097231, 0.542993,
		-0.239577, -0.950512, -0.197811,
		13.530018, 16.964108, 31.112505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.310239, 17.373920, 31.755987>,  <13.697721, 17.629467, 31.250973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.310239, 17.373920, 31.755987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.487025, 17.057384, 31.587013>,  <13.593097, 16.867464, 31.485630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.487025, 17.057384, 31.587013>,  <13.310239, 17.373920, 31.755987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.487025, 17.057384, 31.587013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352050, -0.280123, 0.893080,
		-0.825062, -0.543428, 0.154786,
		0.441966, -0.791339, -0.422433,
		13.619616, 16.819983, 31.460283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.059672, 16.764908, 32.150822>,  <13.310239, 17.373920, 31.755987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.059672, 16.764908, 32.150822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.399300, 16.645515, 31.976469>,  <13.603076, 16.573879, 31.871859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.399300, 16.645515, 31.976469>,  <13.059672, 16.764908, 32.150822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.399300, 16.645515, 31.976469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427293, -0.097160, 0.898878,
		-0.310650, -0.949456, 0.045045,
		0.849069, -0.298484, -0.435879,
		13.654020, 16.555971, 31.845705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.347347, 16.321537, 32.569450>,  <13.059672, 16.764908, 32.150822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.347347, 16.321537, 32.569450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.660934, 16.422325, 32.342503>,  <13.849087, 16.482798, 32.206333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.660934, 16.422325, 32.342503>,  <13.347347, 16.321537, 32.569450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.660934, 16.422325, 32.342503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564006, 0.092806, 0.820539,
		0.259407, -0.963275, -0.069356,
		0.783968, 0.251970, -0.567367,
		13.896125, 16.497915, 32.172291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.846507, 15.797345, 32.686035>,  <13.347347, 16.321537, 32.569450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.846507, 15.797345, 32.686035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.007442, 16.140194, 32.557373>,  <14.104004, 16.345903, 32.480175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.007442, 16.140194, 32.557373>,  <13.846507, 15.797345, 32.686035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.007442, 16.140194, 32.557373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515585, 0.078193, 0.853263,
		0.756503, -0.509143, -0.410460,
		0.402338, 0.857123, -0.321660,
		14.128144, 16.397331, 32.460876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.536114, 15.791855, 32.924530>,  <13.846507, 15.797345, 32.686035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.536114, 15.791855, 32.924530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.470360, 16.171667, 32.817669>,  <14.430907, 16.399555, 32.753551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.470360, 16.171667, 32.817669>,  <14.536114, 15.791855, 32.924530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.470360, 16.171667, 32.817669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530868, 0.313429, 0.787363,
		0.831358, -0.012391, -0.555599,
		-0.164385, 0.949531, -0.267149,
		14.421044, 16.456526, 32.737526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.181529, 16.135893, 33.008625>,  <14.536114, 15.791855, 32.924530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.181529, 16.135893, 33.008625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.930035, 16.444656, 32.971004>,  <14.779138, 16.629915, 32.948433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.930035, 16.444656, 32.971004>,  <15.181529, 16.135893, 33.008625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.930035, 16.444656, 32.971004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485639, 0.484239, 0.727783,
		0.607327, 0.411908, -0.679328,
		-0.628736, 0.771910, -0.094053,
		14.741414, 16.676229, 32.942787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.536427, 16.706421, 33.160725>,  <15.181529, 16.135893, 33.008625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.536427, 16.706421, 33.160725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.160966, 16.833334, 33.214779>,  <14.935689, 16.909481, 33.247211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.160966, 16.833334, 33.214779>,  <15.536427, 16.706421, 33.160725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.160966, 16.833334, 33.214779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244183, 0.334771, 0.910111,
		0.243522, 0.887277, -0.391709,
		-0.938654, 0.317281, 0.135134,
		14.879370, 16.928518, 33.255318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.593874, 17.376072, 33.474415>,  <15.536427, 16.706421, 33.160725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.593874, 17.376072, 33.474415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.221790, 17.265213, 33.570663>,  <14.998540, 17.198698, 33.628414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.221790, 17.265213, 33.570663>,  <15.593874, 17.376072, 33.474415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.221790, 17.265213, 33.570663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214144, 0.122612, 0.969076,
		-0.298080, 0.952972, -0.054705,
		-0.930210, -0.277148, 0.240621,
		14.942727, 17.182068, 33.642849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.422618, 17.841776, 33.909233>,  <15.593874, 17.376072, 33.474415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.422618, 17.841776, 33.909233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.179201, 17.538567, 34.003113>,  <15.033152, 17.356642, 34.059441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.179201, 17.538567, 34.003113>,  <15.422618, 17.841776, 33.909233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.179201, 17.538567, 34.003113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208551, 0.132587, 0.968983,
		-0.765627, 0.638612, 0.077401,
		-0.608541, -0.758021, 0.234695,
		14.996639, 17.311161, 34.073521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103331, 18.079897, 34.467720>,  <15.422618, 17.841776, 33.909233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.103331, 18.079897, 34.467720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.035883, 17.686905, 34.499477>,  <14.995414, 17.451111, 34.518532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.035883, 17.686905, 34.499477>,  <15.103331, 18.079897, 34.467720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.035883, 17.686905, 34.499477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148117, 0.054372, 0.987474,
		-0.974489, 0.178267, 0.136353,
		-0.168620, -0.982479, 0.079389,
		14.985297, 17.392160, 34.523293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.599744, 17.926525, 34.986538>,  <15.103331, 18.079897, 34.467720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.599744, 17.926525, 34.986538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.772574, 17.567705, 34.949417>,  <14.876273, 17.352413, 34.927147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.772574, 17.567705, 34.949417>,  <14.599744, 17.926525, 34.986538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.772574, 17.567705, 34.949417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150419, -0.029776, 0.988174,
		-0.889204, -0.440925, 0.122068,
		0.432076, -0.897050, -0.092800,
		14.902197, 17.298590, 34.921577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.367116, 17.502352, 35.553692>,  <14.599744, 17.926525, 34.986538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.367116, 17.502352, 35.553692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.723427, 17.376617, 35.422417>,  <14.937214, 17.301176, 35.343651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.723427, 17.376617, 35.422417>,  <14.367116, 17.502352, 35.553692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.723427, 17.376617, 35.422417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331687, -0.043950, 0.942365,
		-0.310644, -0.948293, 0.065112,
		0.890777, -0.314337, -0.328189,
		14.990660, 17.282316, 35.323959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.492448, 17.212894, 36.180172>,  <14.367116, 17.502352, 35.553692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.492448, 17.212894, 36.180172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.838163, 17.209455, 35.979004>,  <15.045592, 17.207392, 35.858303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.838163, 17.209455, 35.979004>,  <14.492448, 17.212894, 36.180172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.838163, 17.209455, 35.979004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497349, 0.164022, 0.851904,
		0.075167, -0.986419, 0.146038,
		0.864288, -0.008597, -0.502923,
		15.097450, 17.206877, 35.828129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.939785, 16.981047, 36.667740>,  <14.492448, 17.212894, 36.180172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.939785, 16.981047, 36.667740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.163826, 17.159393, 36.388458>,  <15.298250, 17.266401, 36.220890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.163826, 17.159393, 36.388458>,  <14.939785, 16.981047, 36.667740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.163826, 17.159393, 36.388458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641066, 0.300547, 0.706191,
		0.524710, -0.843134, -0.117493,
		0.560101, 0.445866, -0.698205,
		15.331857, 17.293154, 36.178997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.571468, 16.636311, 36.542130>,  <14.939785, 16.981047, 36.667740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.571468, 16.636311, 36.542130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.590111, 17.030014, 36.473942>,  <15.601296, 17.266237, 36.433029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.590111, 17.030014, 36.473942>,  <15.571468, 16.636311, 36.542130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.590111, 17.030014, 36.473942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667114, 0.096350, 0.738698,
		0.743496, -0.148149, -0.652124,
		0.046605, 0.984260, -0.170468,
		15.604093, 17.325293, 36.422802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.875237, 15.867389, 36.492825>,  <15.571468, 16.636311, 36.542130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.875237, 15.867389, 36.492825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.074129, 16.038218, 36.794918>,  <16.193464, 16.140715, 36.976173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.074129, 16.038218, 36.794918>,  <15.875237, 15.867389, 36.492825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.074129, 16.038218, 36.794918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675648, 0.355485, -0.645857,
		-0.544300, 0.831409, -0.111792,
		0.497230, 0.427072, 0.755230,
		16.223299, 16.166340, 37.021488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002127, 15.070922, 36.384636>,  <15.875237, 15.867389, 36.492825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.002127, 15.070922, 36.384636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.303438, 14.821312, 36.301533>,  <16.484226, 14.671546, 36.251671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.303438, 14.821312, 36.301533>,  <16.002127, 15.070922, 36.384636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.303438, 14.821312, 36.301533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205758, 0.076430, -0.975614,
		0.624686, 0.777658, -0.070825,
		0.753280, -0.624025, -0.207754,
		16.529423, 14.634105, 36.239208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.242607, 15.438898, 35.729607>,  <16.002127, 15.070922, 36.384636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.242607, 15.438898, 35.729607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.393270, 15.069159, 35.753956>,  <16.483669, 14.847315, 35.768566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.393270, 15.069159, 35.753956>,  <16.242607, 15.438898, 35.729607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.393270, 15.069159, 35.753956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071894, -0.094680, -0.992908,
		0.923558, 0.369612, -0.102117,
		0.376659, -0.924350, 0.060870,
		16.506268, 14.791854, 35.772217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749250, 15.352540, 35.304695>,  <16.242607, 15.438898, 35.729607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.749250, 15.352540, 35.304695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.627581, 14.975389, 35.359043>,  <16.554579, 14.749099, 35.391651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.627581, 14.975389, 35.359043>,  <16.749250, 15.352540, 35.304695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.627581, 14.975389, 35.359043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175680, -0.084663, -0.980800,
		0.936276, -0.322206, -0.139892,
		-0.304176, -0.942876, 0.135873,
		16.536327, 14.692527, 35.399807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.905159, 15.078242, 34.624924>,  <16.749250, 15.352540, 35.304695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.905159, 15.078242, 34.624924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.682394, 14.790645, 34.791245>,  <16.548735, 14.618086, 34.891037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.682394, 14.790645, 34.791245>,  <16.905159, 15.078242, 34.624924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.682394, 14.790645, 34.791245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256250, -0.327465, -0.909452,
		0.790053, -0.613036, -0.001873,
		-0.556913, -0.718995, 0.415805,
		16.515320, 14.574946, 34.915985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.035950, 14.442594, 34.308311>,  <16.905159, 15.078242, 34.624924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.035950, 14.442594, 34.308311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.669342, 14.430433, 34.467846>,  <16.449377, 14.423137, 34.563568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.669342, 14.430433, 34.467846>,  <17.035950, 14.442594, 34.308311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669342, 14.430433, 34.467846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370785, -0.309466, -0.875642,
		0.150048, -0.950424, 0.272359,
		-0.916517, -0.030401, 0.398838,
		16.394386, 14.421313, 34.587498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.768496, 13.838591, 34.046009>,  <17.035950, 14.442594, 34.308311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.768496, 13.838591, 34.046009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.448885, 14.043670, 34.171677>,  <16.257118, 14.166717, 34.247078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.448885, 14.043670, 34.171677>,  <16.768496, 13.838591, 34.046009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448885, 14.043670, 34.171677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429980, -0.121951, -0.894564,
		-0.420328, -0.849864, 0.317892,
		-0.799025, 0.512698, 0.314165,
		16.209177, 14.197479, 34.265926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.281864, 13.526127, 33.647102>,  <16.768496, 13.838591, 34.046009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.281864, 13.526127, 33.647102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.124758, 13.874609, 33.764908>,  <16.030495, 14.083698, 33.835590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.124758, 13.874609, 33.764908>,  <16.281864, 13.526127, 33.647102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.124758, 13.874609, 33.764908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446277, 0.099457, -0.889351,
		-0.804098, -0.480740, 0.349735,
		-0.392763, 0.871204, 0.294516,
		16.006929, 14.135970, 33.853264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.636060, 13.506160, 33.571815>,  <16.281864, 13.526127, 33.647102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.636060, 13.506160, 33.571815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.697886, 13.901325, 33.576504>,  <15.734982, 14.138424, 33.579315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.697886, 13.901325, 33.576504>,  <15.636060, 13.506160, 33.571815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.697886, 13.901325, 33.576504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491738, 0.087213, -0.866365,
		-0.856915, 0.128149, 0.499274,
		0.154567, 0.987913, 0.011718,
		15.744256, 14.197700, 33.580021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.975801, 13.774370, 33.437317>,  <15.636060, 13.506160, 33.571815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.975801, 13.774370, 33.437317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.242827, 14.051685, 33.328720>,  <15.403043, 14.218074, 33.263561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.242827, 14.051685, 33.328720>,  <14.975801, 13.774370, 33.437317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.242827, 14.051685, 33.328720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403293, 0.030178, -0.914574,
		-0.625869, 0.720030, 0.299743,
		0.667565, 0.693287, -0.271495,
		15.443097, 14.259671, 33.247272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.633506, 14.489267, 33.210178>,  <14.975801, 13.774370, 33.437317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.633506, 14.489267, 33.210178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.986712, 14.419600, 33.035847>,  <15.198636, 14.377799, 32.931248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.986712, 14.419600, 33.035847>,  <14.633506, 14.489267, 33.210178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.986712, 14.419600, 33.035847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439566, 0.018599, -0.898018,
		0.164513, 0.984540, -0.060135,
		0.883016, -0.174169, -0.435830,
		15.251617, 14.367349, 32.905098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.744949, 15.064113, 32.727299>,  <14.633506, 14.489267, 33.210178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.744949, 15.064113, 32.727299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.950099, 14.748636, 32.591698>,  <15.073189, 14.559350, 32.510338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.950099, 14.748636, 32.591698>,  <14.744949, 15.064113, 32.727299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.950099, 14.748636, 32.591698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393460, 0.135018, -0.909373,
		0.762986, 0.599780, -0.241071,
		0.512875, -0.788691, -0.339007,
		15.103962, 14.512029, 32.489994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196078, 15.290895, 32.240940>,  <14.744949, 15.064113, 32.727299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.196078, 15.290895, 32.240940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.139712, 14.902797, 32.162186>,  <15.105893, 14.669937, 32.114933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.139712, 14.902797, 32.162186>,  <15.196078, 15.290895, 32.240940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.139712, 14.902797, 32.162186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404991, 0.237963, -0.882812,
		0.903397, -0.044664, -0.426473,
		-0.140915, -0.970247, -0.196887,
		15.097438, 14.611723, 32.103119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.470926, 15.113838, 31.593988>,  <15.196078, 15.290895, 32.240940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.470926, 15.113838, 31.593988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.235583, 14.791178, 31.616430>,  <15.094378, 14.597581, 31.629896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.235583, 14.791178, 31.616430>,  <15.470926, 15.113838, 31.593988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.235583, 14.791178, 31.616430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322241, 0.170267, -0.931220,
		0.741618, -0.565969, -0.360114,
		-0.588357, -0.806652, 0.056105,
		15.059076, 14.549182, 31.633263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.516452, 14.673594, 30.869083>,  <15.470926, 15.113838, 31.593988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.516452, 14.673594, 30.869083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.169712, 14.594373, 31.052101>,  <14.961668, 14.546840, 31.161911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.169712, 14.594373, 31.052101>,  <15.516452, 14.673594, 30.869083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.169712, 14.594373, 31.052101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477298, 0.064463, -0.876374,
		0.144080, -0.978068, -0.150413,
		-0.866849, -0.198060, 0.457542,
		14.909657, 14.534957, 31.189363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.229874, 14.122066, 30.420546>,  <15.516452, 14.673594, 30.869083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.229874, 14.122066, 30.420546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.924002, 14.264906, 30.635113>,  <14.740479, 14.350610, 30.763853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.924002, 14.264906, 30.635113>,  <15.229874, 14.122066, 30.420546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.924002, 14.264906, 30.635113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604065, -0.107300, -0.789679,
		-0.224441, -0.927881, 0.297765,
		-0.764678, 0.357106, 0.536417,
		14.694598, 14.372036, 30.796038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.705428, 13.665474, 30.312798>,  <15.229874, 14.122066, 30.420546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.705428, 13.665474, 30.312798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.512004, 13.979841, 30.466942>,  <14.395949, 14.168462, 30.559429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.512004, 13.979841, 30.466942>,  <14.705428, 13.665474, 30.312798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.512004, 13.979841, 30.466942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631008, -0.007877, -0.775736,
		-0.606629, -0.618281, 0.499729,
		-0.483559, 0.785917, 0.385362,
		14.366936, 14.215616, 30.582550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.979220, 13.462291, 30.434498>,  <14.705428, 13.665474, 30.312798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.979220, 13.462291, 30.434498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.996074, 13.860009, 30.395309>,  <14.006186, 14.098640, 30.371798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.996074, 13.860009, 30.395309>,  <13.979220, 13.462291, 30.434498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.996074, 13.860009, 30.395309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645501, -0.047753, -0.762265,
		-0.762596, 0.095356, 0.639808,
		0.042134, 0.994297, -0.097969,
		14.008714, 14.158298, 30.365919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.309210, 13.564419, 30.147173>,  <13.979220, 13.462291, 30.434498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.309210, 13.564419, 30.147173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.530847, 13.892017, 30.087540>,  <13.663829, 14.088577, 30.051760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.530847, 13.892017, 30.087540>,  <13.309210, 13.564419, 30.147173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.530847, 13.892017, 30.087540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372356, 0.083662, -0.924312,
		-0.744536, 0.567665, 0.351315,
		0.554091, 0.818998, -0.149084,
		13.697074, 14.137716, 30.042814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.834041, 14.023124, 29.778584>,  <13.309210, 13.564419, 30.147173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.834041, 14.023124, 29.778584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.214193, 14.134404, 29.722902>,  <13.442286, 14.201173, 29.689493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.214193, 14.134404, 29.722902>,  <12.834041, 14.023124, 29.778584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.214193, 14.134404, 29.722902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166269, 0.076079, -0.983141,
		-0.262921, 0.957505, 0.118561,
		0.950383, 0.278201, -0.139201,
		13.499309, 14.217865, 29.681143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.777851, 14.672873, 29.466974>,  <12.834041, 14.023124, 29.778584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.777851, 14.672873, 29.466974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.148667, 14.543877, 29.390455>,  <13.371158, 14.466479, 29.344543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.148667, 14.543877, 29.390455>,  <12.777851, 14.672873, 29.466974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.148667, 14.543877, 29.390455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124333, 0.216935, -0.968236,
		0.353745, 0.921379, 0.161012,
		0.927041, -0.322489, -0.191298,
		13.426780, 14.447130, 29.333067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.362730, 25.124371, 10.104342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.355011, 24.784321, 9.893849>,  <19.350380, 24.580292, 9.767554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.355011, 24.784321, 9.893849>,  <19.362730, 25.124371, 10.104342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.355011, 24.784321, 9.893849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577799, 0.439021, -0.688047,
		0.815951, 0.290780, -0.499671,
		-0.019296, -0.850123, -0.526231,
		19.349222, 24.529284, 9.735980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.638678, 25.048222, 9.364511>,  <19.362730, 25.124371, 10.104342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.638678, 25.048222, 9.364511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.326843, 24.802046, 9.410960>,  <19.139744, 24.654341, 9.438829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.326843, 24.802046, 9.410960>,  <19.638678, 25.048222, 9.364511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.326843, 24.802046, 9.410960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443819, 0.412044, -0.795767,
		0.441906, -0.671898, -0.594367,
		-0.779579, -0.615445, 0.116117,
		19.092968, 24.617414, 9.445797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.528555, 24.408648, 9.044639>,  <19.638678, 25.048222, 9.364511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.528555, 24.408648, 9.044639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.725065, 24.061270, 9.071327>,  <19.842972, 23.852842, 9.087340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.725065, 24.061270, 9.071327>,  <19.528555, 24.408648, 9.044639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.725065, 24.061270, 9.071327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758462, 0.388878, -0.522982,
		0.428235, 0.307533, 0.849728,
		0.491275, -0.868445, 0.066721,
		19.872448, 23.800735, 9.091343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.028568, 24.054001, 9.583942>,  <19.528555, 24.408648, 9.044639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.028568, 24.054001, 9.583942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.161678, 24.175943, 9.940890>,  <19.241545, 24.249109, 10.155059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.161678, 24.175943, 9.940890>,  <19.028568, 24.054001, 9.583942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.161678, 24.175943, 9.940890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942484, -0.076034, -0.325488,
		-0.031378, 0.949358, -0.312626,
		0.332775, 0.304858, 0.892369,
		19.261511, 24.267401, 10.208601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.759037, 23.510262, 9.023801>,  <19.028568, 24.054001, 9.583942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.759037, 23.510262, 9.023801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.725470, 23.201017, 8.772324>,  <18.705330, 23.015471, 8.621437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.725470, 23.201017, 8.772324>,  <18.759037, 23.510262, 9.023801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.725470, 23.201017, 8.772324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163905, -0.611616, 0.773990,
		-0.982901, 0.167996, -0.075392,
		-0.083916, -0.773113, -0.628693,
		18.700294, 22.969084, 8.583715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.108229, 23.055353, 9.218512>,  <18.759037, 23.510262, 9.023801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.108229, 23.055353, 9.218512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.367958, 22.817013, 9.029475>,  <18.523796, 22.674009, 8.916054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.367958, 22.817013, 9.029475>,  <18.108229, 23.055353, 9.218512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.367958, 22.817013, 9.029475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179724, -0.724033, 0.665940,
		-0.738971, -0.347474, -0.577220,
		0.649323, -0.595850, -0.472590,
		18.562756, 22.638258, 8.887698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.756800, 22.505497, 8.819073>,  <18.108229, 23.055353, 9.218512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.756800, 22.505497, 8.819073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.123262, 22.436991, 8.964026>,  <18.343140, 22.395887, 9.050999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.123262, 22.436991, 8.964026>,  <17.756800, 22.505497, 8.819073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.123262, 22.436991, 8.964026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365934, -0.726305, 0.581870,
		0.163546, -0.665693, -0.728083,
		0.916158, -0.171268, 0.362384,
		18.398109, 22.385611, 9.072742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866241, 21.838648, 8.853700>,  <17.756800, 22.505497, 8.819073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.866241, 21.838648, 8.853700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.067921, 22.032978, 9.139289>,  <18.188929, 22.149576, 9.310642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.067921, 22.032978, 9.139289>,  <17.866241, 21.838648, 8.853700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.067921, 22.032978, 9.139289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369937, -0.625549, 0.686902,
		0.780340, -0.610460, -0.135677,
		0.504199, 0.485825, 0.713973,
		18.219181, 22.178726, 9.353480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.210876, 21.322454, 9.244774>,  <17.866241, 21.838648, 8.853700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.210876, 21.322454, 9.244774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.197950, 21.620314, 9.511444>,  <18.190195, 21.799028, 9.671447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.197950, 21.620314, 9.511444>,  <18.210876, 21.322454, 9.244774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.197950, 21.620314, 9.511444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310101, -0.641578, 0.701581,
		0.950154, -0.184065, 0.251648,
		-0.032315, 0.744646, 0.666677,
		18.188255, 21.843708, 9.711447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.303297, 20.975039, 9.887254>,  <18.210876, 21.322454, 9.244774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.303297, 20.975039, 9.887254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.141333, 21.330210, 9.974555>,  <18.044153, 21.543312, 10.026936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.141333, 21.330210, 9.974555>,  <18.303297, 20.975039, 9.887254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.141333, 21.330210, 9.974555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506748, -0.416605, 0.754749,
		0.761087, 0.195007, 0.618643,
		-0.404911, 0.887926, 0.218253,
		18.019859, 21.596588, 10.040031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.599556, 21.166660, 10.500986>,  <18.303297, 20.975039, 9.887254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.599556, 21.166660, 10.500986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.250608, 21.361401, 10.483340>,  <18.041239, 21.478245, 10.472753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.250608, 21.361401, 10.483340>,  <18.599556, 21.166660, 10.500986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.250608, 21.361401, 10.483340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263317, -0.391952, 0.881497,
		0.411868, 0.780608, 0.470124,
		-0.872370, 0.486852, -0.044115,
		17.988897, 21.507456, 10.470106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.538578, 21.592911, 11.172877>,  <18.599556, 21.166660, 10.500986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.538578, 21.592911, 11.172877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.179619, 21.536476, 11.005655>,  <17.964243, 21.502615, 10.905322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.179619, 21.536476, 11.005655>,  <18.538578, 21.592911, 11.172877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.179619, 21.536476, 11.005655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349735, -0.350203, 0.868932,
		-0.268999, 0.925987, 0.264929,
		-0.897399, -0.141087, -0.418054,
		17.910398, 21.494150, 10.880239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070656, 21.917442, 11.656260>,  <18.538578, 21.592911, 11.172877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.070656, 21.917442, 11.656260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.857681, 21.680672, 11.414224>,  <17.729897, 21.538609, 11.269002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.857681, 21.680672, 11.414224>,  <18.070656, 21.917442, 11.656260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.857681, 21.680672, 11.414224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535703, -0.317838, 0.782305,
		-0.655388, 0.740676, -0.147869,
		-0.532436, -0.591927, -0.605090,
		17.697950, 21.503094, 11.232697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.434666, 22.016356, 11.921938>,  <18.070656, 21.917442, 11.656260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.434666, 22.016356, 11.921938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.426117, 21.675196, 11.713284>,  <17.420988, 21.470499, 11.588091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.426117, 21.675196, 11.713284>,  <17.434666, 22.016356, 11.921938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.426117, 21.675196, 11.713284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548953, -0.426059, 0.719114,
		-0.835580, 0.301722, -0.459096,
		-0.021370, -0.852899, -0.521637,
		17.419706, 21.419325, 11.556792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.733356, 21.816528, 11.944792>,  <17.434666, 22.016356, 11.921938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.733356, 21.816528, 11.944792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.945683, 21.484953, 11.874252>,  <17.073078, 21.286007, 11.831929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.945683, 21.484953, 11.874252>,  <16.733356, 21.816528, 11.944792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.945683, 21.484953, 11.874252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610080, -0.518186, 0.599405,
		-0.588252, -0.210584, -0.780778,
		0.530813, -0.828938, -0.176351,
		17.104927, 21.236271, 11.821348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.221769, 21.364950, 11.966542>,  <16.733356, 21.816528, 11.944792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.221769, 21.364950, 11.966542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.559496, 21.155375, 12.011475>,  <16.762133, 21.029629, 12.038434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.559496, 21.155375, 12.011475>,  <16.221769, 21.364950, 11.966542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.559496, 21.155375, 12.011475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464990, -0.612213, 0.639515,
		-0.266295, -0.592186, -0.760528,
		0.844317, -0.523937, 0.112331,
		16.812792, 20.998194, 12.045174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.979876, 20.616844, 12.057896>,  <16.221769, 21.364950, 11.966542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.979876, 20.616844, 12.057896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.357594, 20.629990, 12.188878>,  <16.584225, 20.637877, 12.267467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.357594, 20.629990, 12.188878>,  <15.979876, 20.616844, 12.057896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.357594, 20.629990, 12.188878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231557, -0.640691, 0.732049,
		0.233855, -0.767095, -0.597392,
		0.944295, 0.032863, 0.327455,
		16.640882, 20.639849, 12.287114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105091, 20.018627, 12.267365>,  <15.979876, 20.616844, 12.057896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.105091, 20.018627, 12.267365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.407106, 20.200235, 12.456589>,  <16.588316, 20.309200, 12.570123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.407106, 20.200235, 12.456589>,  <16.105091, 20.018627, 12.267365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.407106, 20.200235, 12.456589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106174, -0.627291, 0.771513,
		0.647029, -0.632747, -0.425423,
		0.755037, 0.454022, 0.473057,
		16.633617, 20.336443, 12.598506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.664671, 19.541733, 12.501125>,  <16.105091, 20.018627, 12.267365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.664671, 19.541733, 12.501125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.702791, 19.846264, 12.757656>,  <16.725664, 20.028982, 12.911574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.702791, 19.846264, 12.757656>,  <16.664671, 19.541733, 12.501125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.702791, 19.846264, 12.757656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039035, -0.640906, 0.766627,
		0.994683, -0.098094, -0.031360,
		0.095301, 0.761326, 0.641327,
		16.731382, 20.074661, 12.950054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.057417, 19.294483, 12.941243>,  <16.664671, 19.541733, 12.501125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.057417, 19.294483, 12.941243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.919895, 19.607506, 13.148861>,  <16.837383, 19.795319, 13.273432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.919895, 19.607506, 13.148861>,  <17.057417, 19.294483, 12.941243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.919895, 19.607506, 13.148861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081257, -0.525873, 0.846672,
		0.935520, 0.333264, 0.117209,
		-0.343802, 0.782555, 0.519045,
		16.816755, 19.842272, 13.304574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.469606, 19.322189, 13.546135>,  <17.057417, 19.294483, 12.941243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.469606, 19.322189, 13.546135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.159361, 19.550379, 13.654197>,  <16.973213, 19.687292, 13.719034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.159361, 19.550379, 13.654197>,  <17.469606, 19.322189, 13.546135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.159361, 19.550379, 13.654197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048030, -0.373416, 0.926420,
		0.629380, 0.731518, 0.262226,
		-0.775612, 0.570475, 0.270155,
		16.926678, 19.721521, 13.735243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660168, 19.460119, 14.199060>,  <17.469606, 19.322189, 13.546135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.660168, 19.460119, 14.199060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.267048, 19.532331, 14.183490>,  <17.031176, 19.575659, 14.174148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.267048, 19.532331, 14.183490>,  <17.660168, 19.460119, 14.199060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.267048, 19.532331, 14.183490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114037, -0.427432, 0.896826,
		0.145267, 0.885839, 0.440667,
		-0.982799, 0.180531, -0.038926,
		16.972208, 19.586491, 14.171812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.508051, 19.742313, 14.854879>,  <17.660168, 19.460119, 14.199060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.508051, 19.742313, 14.854879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.164389, 19.609411, 14.699209>,  <16.958191, 19.529669, 14.605807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.164389, 19.609411, 14.699209>,  <17.508051, 19.742313, 14.854879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.164389, 19.609411, 14.699209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221720, -0.443723, 0.868303,
		-0.461186, 0.832295, 0.307559,
		-0.859155, -0.332257, -0.389176,
		16.906643, 19.509733, 14.582457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.959457, 20.110828, 15.265105>,  <17.508051, 19.742313, 14.854879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.959457, 20.110828, 15.265105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.794456, 19.788958, 15.094301>,  <16.695456, 19.595835, 14.991818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.794456, 19.788958, 15.094301>,  <16.959457, 20.110828, 15.265105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.794456, 19.788958, 15.094301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199217, -0.377719, 0.904235,
		-0.888907, 0.458067, -0.004496,
		-0.412502, -0.804676, -0.427011,
		16.670706, 19.547554, 14.966198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.360451, 20.010353, 15.644041>,  <16.959457, 20.110828, 15.265105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.360451, 20.010353, 15.644041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.421997, 19.657558, 15.465862>,  <16.458925, 19.445881, 15.358955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.421997, 19.657558, 15.465862>,  <16.360451, 20.010353, 15.644041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.421997, 19.657558, 15.465862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321273, -0.470976, 0.821562,
		-0.934403, 0.016700, -0.355826,
		0.153866, -0.881988, -0.445447,
		16.468157, 19.392962, 15.332229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.790275, 19.656601, 15.840458>,  <16.360451, 20.010353, 15.644041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.790275, 19.656601, 15.840458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.055721, 19.367407, 15.763615>,  <16.214989, 19.193890, 15.717509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.055721, 19.367407, 15.763615>,  <15.790275, 19.656601, 15.840458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.055721, 19.367407, 15.763615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376016, -0.544382, 0.749840,
		-0.646704, -0.425370, -0.633115,
		0.663616, -0.722986, -0.192108,
		16.254807, 19.150511, 15.705982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.482233, 19.078312, 16.012680>,  <15.790275, 19.656601, 15.840458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.482233, 19.078312, 16.012680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.859830, 18.946650, 16.003429>,  <16.086388, 18.867651, 15.997879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.859830, 18.946650, 16.003429>,  <15.482233, 19.078312, 16.012680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.859830, 18.946650, 16.003429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185413, -0.587110, 0.787987,
		-0.272949, -0.739566, -0.615257,
		0.943992, -0.329157, -0.023126,
		16.143028, 18.847902, 15.996491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544438, 18.340832, 16.148481>,  <15.482233, 19.078312, 16.012680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.544438, 18.340832, 16.148481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.918201, 18.465755, 16.217001>,  <16.142460, 18.540710, 16.258112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.918201, 18.465755, 16.217001>,  <15.544438, 18.340832, 16.148481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.918201, 18.465755, 16.217001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104263, -0.699639, 0.706848,
		0.340603, -0.642625, -0.686311,
		0.934409, 0.312312, 0.171297,
		16.198524, 18.559448, 16.268391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874266, 17.678877, 16.239983>,  <15.544438, 18.340832, 16.148481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.874266, 17.678877, 16.239983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.126678, 17.957081, 16.377424>,  <16.278126, 18.124004, 16.459888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.126678, 17.957081, 16.377424>,  <15.874266, 17.678877, 16.239983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.126678, 17.957081, 16.377424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413371, -0.676275, 0.609734,
		0.656447, -0.242726, -0.714255,
		0.631032, 0.695511, 0.343603,
		16.315989, 18.165733, 16.480505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.501076, 17.351952, 16.150150>,  <15.874266, 17.678877, 16.239983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.501076, 17.351952, 16.150150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.492109, 17.620493, 16.446470>,  <16.486729, 17.781618, 16.624262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.492109, 17.620493, 16.446470>,  <16.501076, 17.351952, 16.150150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.492109, 17.620493, 16.446470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463319, -0.649632, 0.602755,
		0.885908, 0.356738, -0.296487,
		-0.022418, 0.671354, 0.740798,
		16.485384, 17.821899, 16.668709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.258226, 17.382690, 16.527605>,  <16.501076, 17.351952, 16.150150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.258226, 17.382690, 16.527605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.957834, 17.502005, 16.763250>,  <16.777599, 17.573593, 16.904638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.957834, 17.502005, 16.763250>,  <17.258226, 17.382690, 16.527605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.957834, 17.502005, 16.763250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340907, -0.588928, 0.732767,
		0.565519, 0.751126, 0.340585,
		-0.750980, 0.298285, 0.589114,
		16.732540, 17.591490, 16.939985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.486273, 17.469702, 17.256994>,  <17.258226, 17.382690, 16.527605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.486273, 17.469702, 17.256994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.089310, 17.440998, 17.296957>,  <16.851131, 17.423777, 17.320934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.089310, 17.440998, 17.296957>,  <17.486273, 17.469702, 17.256994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.089310, 17.440998, 17.296957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117847, -0.321837, 0.939432,
		-0.035259, 0.944072, 0.327850,
		-0.992406, -0.071760, 0.099908,
		16.791588, 17.419470, 17.326929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750263, 16.949480, 16.818422>,  <17.486273, 17.469702, 17.256994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750263, 16.949480, 16.818422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.897770, 17.313707, 16.893122>,  <17.986273, 17.532244, 16.937941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.897770, 17.313707, 16.893122>,  <17.750263, 16.949480, 16.818422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.897770, 17.313707, 16.893122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465158, -0.354720, 0.811050,
		0.804761, -0.212219, -0.554367,
		0.368765, 0.910570, 0.186749,
		18.008400, 17.586878, 16.949146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400368, 16.884157, 17.273979>,  <17.750263, 16.949480, 16.818422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.400368, 16.884157, 17.273979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.357050, 17.280647, 17.304306>,  <18.331060, 17.518541, 17.322502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.357050, 17.280647, 17.304306>,  <18.400368, 16.884157, 17.273979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.357050, 17.280647, 17.304306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625925, 0.008733, 0.779835,
		0.772329, 0.131907, -0.621377,
		-0.108292, 0.991224, 0.075819,
		18.324562, 17.578014, 17.327051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.043816, 17.062708, 16.760557>,  <18.400368, 16.884157, 17.273979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.043816, 17.062708, 16.760557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.425573, 17.071619, 16.641472>,  <19.654629, 17.076965, 16.570021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.425573, 17.071619, 16.641472>,  <19.043816, 17.062708, 16.760557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.425573, 17.071619, 16.641472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074476, 0.947920, 0.309678,
		0.289108, -0.317728, 0.903031,
		0.954395, 0.022276, -0.297714,
		19.711891, 17.078302, 16.552158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.469080, 17.168013, 17.410511>,  <19.043816, 17.062708, 16.760557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.469080, 17.168013, 17.410511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.610279, 17.281429, 17.053862>,  <19.695000, 17.349480, 16.839872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.610279, 17.281429, 17.053862>,  <19.469080, 17.168013, 17.410511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.610279, 17.281429, 17.053862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027260, 0.955686, 0.293122,
		0.935226, -0.079166, 0.345087,
		0.353000, 0.283542, -0.891625,
		19.716179, 17.366491, 16.786373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.123520, 17.484724, 17.448418>,  <19.469080, 17.168013, 17.410511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.123520, 17.484724, 17.448418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.884472, 17.629793, 17.162392>,  <19.741043, 17.716835, 16.990776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.884472, 17.629793, 17.162392>,  <20.123520, 17.484724, 17.448418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884472, 17.629793, 17.162392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025468, 0.882810, 0.469039,
		0.801375, 0.298519, -0.518348,
		-0.597620, 0.362675, -0.715064,
		19.705185, 17.738596, 16.947872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.558182, 16.900484, 17.181992>,  <20.123520, 17.484724, 17.448418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.558182, 16.900484, 17.181992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.889717, 16.775185, 16.996563>,  <21.088638, 16.700005, 16.885305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.889717, 16.775185, 16.996563>,  <20.558182, 16.900484, 17.181992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.889717, 16.775185, 16.996563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135412, 0.691621, -0.709454,
		0.542852, 0.650797, 0.530825,
		0.828840, -0.313248, -0.463573,
		21.138369, 16.681210, 16.857491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.828806, 17.512943, 17.020834>,  <20.558182, 16.900484, 17.181992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.828806, 17.512943, 17.020834> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.025002, 17.265936, 16.774878>,  <21.142719, 17.117731, 16.627304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.025002, 17.265936, 16.774878>,  <20.828806, 17.512943, 17.020834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.025002, 17.265936, 16.774878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149836, 0.754849, -0.638555,
		0.858468, 0.221073, 0.462773,
		0.490491, -0.617519, -0.614890,
		21.172150, 17.080681, 16.590410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.456959, 17.791933, 16.727272>,  <20.828806, 17.512943, 17.020834>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.456959, 17.791933, 16.727272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.331783, 17.525068, 16.456875>,  <21.256678, 17.364948, 16.294638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.331783, 17.525068, 16.456875>,  <21.456959, 17.791933, 16.727272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.331783, 17.525068, 16.456875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072620, 0.692848, -0.717418,
		0.946994, -0.273597, -0.168368,
		-0.312937, -0.667163, -0.675991,
		21.237902, 17.324919, 16.254078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.645412, 18.058828, 16.105186>,  <21.456959, 17.791933, 16.727272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.645412, 18.058828, 16.105186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.373068, 17.807409, 15.954796>,  <21.209661, 17.656559, 15.864561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.373068, 17.807409, 15.954796>,  <21.645412, 18.058828, 16.105186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.373068, 17.807409, 15.954796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201780, 0.654450, -0.728684,
		0.704071, -0.420266, -0.572416,
		-0.680859, -0.628547, -0.375978,
		21.168810, 17.618845, 15.842003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.885260, 18.209358, 15.449273>,  <21.645412, 18.058828, 16.105186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.885260, 18.209358, 15.449273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.524080, 18.038383, 15.467077>,  <21.307373, 17.935799, 15.477760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.524080, 18.038383, 15.467077>,  <21.885260, 18.209358, 15.449273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.524080, 18.038383, 15.467077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240821, 0.417484, -0.876192,
		0.355931, -0.801877, -0.479902,
		-0.902950, -0.427435, 0.044513,
		21.253197, 17.910152, 15.480431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.795347, 17.876385, 14.795959>,  <21.885260, 18.209358, 15.449273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.795347, 17.876385, 14.795959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.423613, 17.925982, 14.935076>,  <21.200571, 17.955740, 15.018545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.423613, 17.925982, 14.935076>,  <21.795347, 17.876385, 14.795959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.423613, 17.925982, 14.935076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314746, 0.226440, -0.921770,
		-0.193049, -0.966100, -0.171412,
		-0.929337, 0.123995, 0.347790,
		21.144812, 17.963181, 15.039412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.402678, 17.724874, 14.234430>,  <21.795347, 17.876385, 14.795959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.402678, 17.724874, 14.234430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.197239, 17.966663, 14.478014>,  <21.073977, 18.111736, 14.624165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.197239, 17.966663, 14.478014>,  <21.402678, 17.724874, 14.234430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.197239, 17.966663, 14.478014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436247, 0.427179, -0.791964,
		-0.738856, -0.672406, 0.044302,
		-0.513596, 0.604474, 0.608959,
		21.043159, 18.148005, 14.660702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.983219, 17.647259, 13.601134>,  <21.402678, 17.724874, 14.234430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.983219, 17.647259, 13.601134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.676949, 17.834288, 13.424448>,  <20.493185, 17.946505, 13.318436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.676949, 17.834288, 13.424448>,  <20.983219, 17.647259, 13.601134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.676949, 17.834288, 13.424448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642857, 0.579479, -0.500937,
		0.021741, -0.667517, -0.744277,
		-0.765677, 0.467573, -0.441716,
		20.447245, 17.974560, 13.291933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.047329, 17.716093, 12.970319>,  <20.983219, 17.647259, 13.601134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.047329, 17.716093, 12.970319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.845451, 18.040396, 13.088947>,  <20.724325, 18.234978, 13.160124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.845451, 18.040396, 13.088947>,  <21.047329, 17.716093, 12.970319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.845451, 18.040396, 13.088947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634560, 0.581317, -0.509317,
		-0.585335, -0.068857, -0.807862,
		-0.504694, 0.810759, 0.296571,
		20.694042, 18.283623, 13.177918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.271236, 18.027300, 12.447604>,  <21.047329, 17.716093, 12.970319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.271236, 18.027300, 12.447604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.172852, 18.287027, 12.735461>,  <21.113821, 18.442863, 12.908175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.172852, 18.287027, 12.735461>,  <21.271236, 18.027300, 12.447604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.172852, 18.287027, 12.735461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616106, 0.677900, -0.401080,
		-0.748275, 0.344726, -0.566787,
		-0.245962, 0.649319, 0.719644,
		21.099062, 18.481823, 12.951354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.249691, 18.751690, 12.176535>,  <21.271236, 18.027300, 12.447604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.249691, 18.751690, 12.176535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.249222, 18.830412, 12.568711>,  <21.248941, 18.877645, 12.804017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.249222, 18.830412, 12.568711>,  <21.249691, 18.751690, 12.176535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.249222, 18.830412, 12.568711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395902, 0.900424, -0.180271,
		-0.918292, 0.387948, -0.078971,
		-0.001172, 0.196806, 0.980442,
		21.248871, 18.889454, 12.862844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.797016, 19.324879, 12.376934>,  <21.249691, 18.751690, 12.176535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.797016, 19.324879, 12.376934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.094038, 19.308130, 12.644323>,  <21.272251, 19.298080, 12.804757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.094038, 19.308130, 12.644323>,  <20.797016, 19.324879, 12.376934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.094038, 19.308130, 12.644323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242213, 0.947286, -0.209718,
		-0.624454, 0.317641, 0.713555,
		0.742556, -0.041873, 0.668474,
		21.316805, 19.295568, 12.844866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.641903, 19.272144, 13.118473>,  <20.797016, 19.324879, 12.376934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.641903, 19.272144, 13.118473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.606972, 19.637442, 13.277652>,  <20.586014, 19.856621, 13.373159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.606972, 19.637442, 13.277652>,  <20.641903, 19.272144, 13.118473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.606972, 19.637442, 13.277652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284302, 0.360012, -0.888574,
		-0.954750, -0.190733, 0.228198,
		-0.087326, 0.913243, 0.397947,
		20.580774, 19.911415, 13.397036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.034939, 19.479364, 12.992466>,  <20.641903, 19.272144, 13.118473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.034939, 19.479364, 12.992466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.282240, 19.790285, 13.039054>,  <20.430620, 19.976837, 13.067007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.282240, 19.790285, 13.039054>,  <20.034939, 19.479364, 12.992466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.282240, 19.790285, 13.039054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338848, 0.397303, -0.852838,
		-0.709186, 0.487805, 0.509021,
		0.618254, 0.777301, 0.116470,
		20.467716, 20.023476, 13.073995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.623392, 19.967859, 12.808894>,  <20.034939, 19.479364, 12.992466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.623392, 19.967859, 12.808894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.988600, 20.130751, 12.799423>,  <20.207724, 20.228485, 12.793741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.988600, 20.130751, 12.799423>,  <19.623392, 19.967859, 12.808894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.988600, 20.130751, 12.799423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227751, 0.460754, -0.857808,
		-0.338414, 0.788588, 0.513424,
		0.913020, 0.407227, -0.023677,
		20.262506, 20.252918, 12.792320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<11.546186, 19.293077, 25.997950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.532504, 18.893320, 26.000614>,  <11.524295, 18.653465, 26.002213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.532504, 18.893320, 26.000614>,  <11.546186, 19.293077, 25.997950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.532504, 18.893320, 26.000614> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113701, -0.002730, -0.993511,
		0.992926, -0.034741, -0.113538,
		-0.034206, -0.999393, 0.006661,
		11.522243, 18.593502, 26.002613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.093740, 19.149441, 25.610456>,  <11.546186, 19.293077, 25.997950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.093740, 19.149441, 25.610456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.849404, 18.833315, 25.629549>,  <11.702804, 18.643639, 25.641005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.849404, 18.833315, 25.629549>,  <12.093740, 19.149441, 25.610456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.849404, 18.833315, 25.629549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010023, -0.052559, -0.998567,
		0.791692, -0.610441, 0.024184,
		-0.610838, -0.790316, 0.047729,
		11.666153, 18.596220, 25.643867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.368773, 18.731842, 25.202911>,  <12.093740, 19.149441, 25.610456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.368773, 18.731842, 25.202911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.991111, 18.600674, 25.215769>,  <11.764513, 18.521973, 25.223484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.991111, 18.600674, 25.215769>,  <12.368773, 18.731842, 25.202911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.991111, 18.600674, 25.215769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050788, -0.241224, -0.969140,
		0.325556, -0.913388, 0.244408,
		-0.944158, -0.327922, 0.032143,
		11.707864, 18.502296, 25.225412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.376748, 17.942966, 24.838036>,  <12.368773, 18.731842, 25.202911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.376748, 17.942966, 24.838036> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.007118, 18.094604, 24.857519>,  <11.785340, 18.185587, 24.869209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.007118, 18.094604, 24.857519>,  <12.376748, 17.942966, 24.838036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.007118, 18.094604, 24.857519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227338, -0.442713, -0.867365,
		-0.307251, -0.812584, 0.495283,
		-0.924075, 0.379096, 0.048707,
		11.729896, 18.208334, 24.872131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.890221, 17.441935, 24.541452>,  <12.376748, 17.942966, 24.838036>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.890221, 17.441935, 24.541452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.656730, 17.765995, 24.519861>,  <11.516635, 17.960432, 24.506907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.656730, 17.765995, 24.519861>,  <11.890221, 17.441935, 24.541452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.656730, 17.765995, 24.519861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277396, -0.261462, -0.924494,
		-0.763094, -0.524680, 0.377357,
		-0.583728, 0.810154, -0.053976,
		11.481611, 18.009041, 24.503668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.327810, 17.203163, 24.306086>,  <11.890221, 17.441935, 24.541452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.327810, 17.203163, 24.306086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.327186, 17.594685, 24.224169>,  <11.326811, 17.829597, 24.175018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.327186, 17.594685, 24.224169>,  <11.327810, 17.203163, 24.306086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.327186, 17.594685, 24.224169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244354, -0.198959, -0.949055,
		-0.969685, 0.048560, 0.239485,
		-0.001561, 0.978804, -0.204794,
		11.326717, 17.888327, 24.162731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.737697, 17.288855, 23.798277>,  <11.327810, 17.203163, 24.306086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.737697, 17.288855, 23.798277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.955363, 17.621954, 23.757467>,  <11.085963, 17.821814, 23.732981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.955363, 17.621954, 23.757467>,  <10.737697, 17.288855, 23.798277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.955363, 17.621954, 23.757467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035523, -0.098626, -0.994490,
		-0.838224, 0.544793, -0.024087,
		0.544167, 0.832750, -0.102023,
		11.118613, 17.871778, 23.726860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.338576, 17.787418, 23.430918>,  <10.737697, 17.288855, 23.798277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.338576, 17.787418, 23.430918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.704203, 17.943146, 23.385458>,  <10.923578, 18.036583, 23.358181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.704203, 17.943146, 23.385458>,  <10.338576, 17.787418, 23.430918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.704203, 17.943146, 23.385458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145348, 0.052844, -0.987968,
		-0.378629, 0.919586, 0.104890,
		0.914065, 0.389319, -0.113651,
		10.978422, 18.059942, 23.351362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.222122, 18.358738, 22.973299>,  <10.338576, 17.787418, 23.430918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.222122, 18.358738, 22.973299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.616419, 18.300247, 22.940001>,  <10.852997, 18.265152, 22.920021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.616419, 18.300247, 22.940001>,  <10.222122, 18.358738, 22.973299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.616419, 18.300247, 22.940001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088364, -0.028832, -0.995671,
		0.143193, 0.988831, -0.041342,
		0.985742, -0.146227, -0.083248,
		10.912142, 18.256380, 22.915026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.487816, 18.761206, 22.456081>,  <10.222122, 18.358738, 22.973299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.487816, 18.761206, 22.456081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.733912, 18.447441, 22.487518>,  <10.881570, 18.259182, 22.506380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.733912, 18.447441, 22.487518>,  <10.487816, 18.761206, 22.456081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.733912, 18.447441, 22.487518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023796, -0.118129, -0.992713,
		0.787980, 0.608888, -0.091343,
		0.615241, -0.784411, 0.078594,
		10.918485, 18.212118, 22.511097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.803207, 18.803827, 21.787153>,  <10.487816, 18.761206, 22.456081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.803207, 18.803827, 21.787153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.913918, 18.452530, 21.943146>,  <10.980346, 18.241753, 22.036741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.913918, 18.452530, 21.943146>,  <10.803207, 18.803827, 21.787153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.913918, 18.452530, 21.943146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110705, -0.373989, -0.920802,
		0.954535, 0.298032, -0.006286,
		0.276779, -0.878242, 0.389979,
		10.996952, 18.189056, 22.060139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.500676, 18.531580, 21.450796>,  <10.803207, 18.803827, 21.787153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.500676, 18.531580, 21.450796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.298863, 18.213785, 21.585995>,  <11.177776, 18.023109, 21.667114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.298863, 18.213785, 21.585995>,  <11.500676, 18.531580, 21.450796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.298863, 18.213785, 21.585995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003845, -0.389403, -0.921059,
		0.863385, -0.466003, 0.193411,
		-0.504531, -0.794485, 0.337996,
		11.147504, 17.975439, 21.687393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.811159, 18.012571, 21.156513>,  <11.500676, 18.531580, 21.450796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.811159, 18.012571, 21.156513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.426972, 17.920689, 21.219429>,  <11.196461, 17.865559, 21.257177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.426972, 17.920689, 21.219429>,  <11.811159, 18.012571, 21.156513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.426972, 17.920689, 21.219429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030259, -0.475495, -0.879198,
		0.276746, -0.849200, 0.449746,
		-0.960467, -0.229705, 0.157287,
		11.138832, 17.851778, 21.266615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.643613, 18.528074, 20.624681>,  <11.811159, 18.012571, 21.156513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.643613, 18.528074, 20.624681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.841475, 18.501789, 20.278042>,  <11.960193, 18.486017, 20.070057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.841475, 18.501789, 20.278042>,  <11.643613, 18.528074, 20.624681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.841475, 18.501789, 20.278042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661121, 0.675690, 0.326131,
		0.564121, -0.734251, 0.377681,
		0.494657, -0.065715, -0.866600,
		11.989873, 18.482075, 20.018063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.319889, 18.150137, 20.646338>,  <11.643613, 18.528074, 20.624681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.319889, 18.150137, 20.646338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.320256, 18.414150, 20.345842>,  <12.320477, 18.572557, 20.165546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.320256, 18.414150, 20.345842>,  <12.319889, 18.150137, 20.646338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.320256, 18.414150, 20.345842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355967, 0.701814, 0.617046,
		0.934498, -0.267982, -0.234306,
		0.000918, 0.660033, -0.751236,
		12.320532, 18.612160, 20.120472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.000877, 18.544201, 20.649847>,  <12.319889, 18.150137, 20.646338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.000877, 18.544201, 20.649847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.721317, 18.770756, 20.475149>,  <12.553581, 18.906689, 20.370331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.721317, 18.770756, 20.475149>,  <13.000877, 18.544201, 20.649847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.721317, 18.770756, 20.475149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316233, 0.792423, 0.521596,
		0.641510, 0.226431, -0.732935,
		-0.698900, 0.566388, -0.436743,
		12.511647, 18.940672, 20.344126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.385661, 19.125078, 20.431070>,  <13.000877, 18.544201, 20.649847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.385661, 19.125078, 20.431070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.004138, 19.244087, 20.447714>,  <12.775224, 19.315493, 20.457699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.004138, 19.244087, 20.447714>,  <13.385661, 19.125078, 20.431070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.004138, 19.244087, 20.447714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281764, 0.837919, 0.467441,
		0.104211, 0.457573, -0.883044,
		-0.953808, 0.297523, 0.041608,
		12.717996, 19.333344, 20.460196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.491283, 19.834642, 20.521723>,  <13.385661, 19.125078, 20.431070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.491283, 19.834642, 20.521723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.109744, 19.775669, 20.626364>,  <12.880820, 19.740286, 20.689148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.109744, 19.775669, 20.626364>,  <13.491283, 19.834642, 20.521723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.109744, 19.775669, 20.626364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049667, 0.781721, 0.621648,
		-0.296153, 0.605951, -0.738320,
		-0.953848, -0.147433, 0.261605,
		12.823589, 19.731440, 20.704845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.300640, 20.474087, 20.657337>,  <13.491283, 19.834642, 20.521723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.300640, 20.474087, 20.657337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.021066, 20.248447, 20.833193>,  <12.853321, 20.113064, 20.938705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.021066, 20.248447, 20.833193>,  <13.300640, 20.474087, 20.657337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.021066, 20.248447, 20.833193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074207, 0.668603, 0.739907,
		-0.711325, 0.484523, -0.509170,
		-0.698935, -0.564098, 0.439639,
		12.811385, 20.079218, 20.965084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.745396, 20.876804, 20.943420>,  <13.300640, 20.474087, 20.657337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.745396, 20.876804, 20.943420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.728089, 20.534384, 21.149452>,  <12.717706, 20.328932, 21.273071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.728089, 20.534384, 21.149452>,  <12.745396, 20.876804, 20.943420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.728089, 20.534384, 21.149452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035598, 0.516556, 0.855513,
		-0.998429, 0.018679, -0.052823,
		-0.043266, -0.856049, 0.515080,
		12.715110, 20.277569, 21.303976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.047055, 20.878565, 21.346409>,  <12.745396, 20.876804, 20.943420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.047055, 20.878565, 21.346409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.358189, 20.675554, 21.494673>,  <12.544868, 20.553747, 21.583632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.358189, 20.675554, 21.494673>,  <12.047055, 20.878565, 21.346409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.358189, 20.675554, 21.494673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056453, 0.643823, 0.763089,
		-0.625929, -0.572632, 0.529439,
		0.777834, -0.507528, 0.370661,
		12.591538, 20.523296, 21.605871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.913187, 20.814426, 22.045723>,  <12.047055, 20.878565, 21.346409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.913187, 20.814426, 22.045723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.303804, 20.736998, 22.007999>,  <12.538175, 20.690540, 21.985365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.303804, 20.736998, 22.007999>,  <11.913187, 20.814426, 22.045723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.303804, 20.736998, 22.007999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191154, 0.577742, 0.793520,
		-0.099115, -0.792934, 0.601192,
		0.976543, -0.193570, -0.094310,
		12.596767, 20.678926, 21.979706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.106416, 20.924982, 22.779787>,  <11.913187, 20.814426, 22.045723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.106416, 20.924982, 22.779787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.471366, 20.890629, 22.619688>,  <12.690336, 20.870016, 22.523628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.471366, 20.890629, 22.619688>,  <12.106416, 20.924982, 22.779787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.471366, 20.890629, 22.619688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406975, 0.295619, 0.864280,
		0.044091, -0.951437, 0.304668,
		0.912374, -0.085886, -0.400246,
		12.745078, 20.864862, 22.499615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.462157, 20.833101, 23.362740>,  <12.106416, 20.924982, 22.779787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.462157, 20.833101, 23.362740> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.735040, 20.928030, 23.086111>,  <12.898769, 20.984987, 22.920134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.735040, 20.928030, 23.086111>,  <12.462157, 20.833101, 23.362740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.735040, 20.928030, 23.086111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651882, 0.230931, 0.722302,
		0.331125, -0.943583, 0.002835,
		0.682207, 0.237324, -0.691572,
		12.939702, 20.999228, 22.878639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.112243, 20.537043, 23.615931>,  <12.462157, 20.833101, 23.362740>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.112243, 20.537043, 23.615931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.202172, 20.830976, 23.359970>,  <13.256130, 21.007336, 23.206394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.202172, 20.830976, 23.359970>,  <13.112243, 20.537043, 23.615931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.202172, 20.830976, 23.359970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675546, 0.355717, 0.645836,
		0.702205, -0.577482, -0.416440,
		0.224824, 0.734833, -0.639902,
		13.269620, 21.051426, 23.167999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862971, 20.500172, 23.559364>,  <13.112243, 20.537043, 23.615931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.862971, 20.500172, 23.559364> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.741887, 20.869415, 23.464504>,  <13.669236, 21.090961, 23.407589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.741887, 20.869415, 23.464504>,  <13.862971, 20.500172, 23.559364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.741887, 20.869415, 23.464504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606353, 0.378500, 0.699339,
		0.735325, 0.067902, -0.674304,
		-0.302711, 0.923107, -0.237148,
		13.651073, 21.146347, 23.393360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.490269, 20.986208, 23.471872>,  <13.862971, 20.500172, 23.559364>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.490269, 20.986208, 23.471872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.184290, 21.236311, 23.533720>,  <14.000703, 21.386374, 23.570827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.184290, 21.236311, 23.533720>,  <14.490269, 20.986208, 23.471872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.184290, 21.236311, 23.533720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573306, 0.551561, 0.605888,
		0.293555, 0.552117, -0.780380,
		-0.764948, 0.625258, 0.154618,
		13.954805, 21.423889, 23.580105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.762432, 21.731369, 23.269945>,  <14.490269, 20.986208, 23.471872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.762432, 21.731369, 23.269945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.440101, 21.760069, 23.505060>,  <14.246702, 21.777288, 23.646130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.440101, 21.760069, 23.505060>,  <14.762432, 21.731369, 23.269945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.440101, 21.760069, 23.505060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546186, 0.473504, 0.690995,
		-0.228740, 0.877864, -0.420752,
		-0.805828, 0.071751, 0.587786,
		14.198352, 21.781593, 23.681396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.524416, 21.604116, 22.971043>,  <14.762432, 21.731369, 23.269945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.524416, 21.604116, 22.971043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583691, 21.234459, 23.111898>,  <15.619255, 21.012665, 23.196411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583691, 21.234459, 23.111898>,  <15.524416, 21.604116, 22.971043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.583691, 21.234459, 23.111898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107087, -0.368970, -0.923252,
		0.983145, 0.099104, -0.153640,
		0.148186, -0.924142, 0.352138,
		15.628146, 20.957216, 23.217541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.956654, 21.376959, 22.509426>,  <15.524416, 21.604116, 22.971043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.956654, 21.376959, 22.509426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.818284, 21.044144, 22.682884>,  <15.735262, 20.844454, 22.786959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.818284, 21.044144, 22.682884>,  <15.956654, 21.376959, 22.509426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.818284, 21.044144, 22.682884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185201, -0.392535, -0.900898,
		0.919803, -0.391954, -0.018307,
		-0.345924, -0.832039, 0.433645,
		15.714507, 20.794533, 22.812977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.337263, 20.692480, 22.346857>,  <15.956654, 21.376959, 22.509426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.337263, 20.692480, 22.346857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.955508, 20.610300, 22.433517>,  <15.726456, 20.560993, 22.485514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.955508, 20.610300, 22.433517>,  <16.337263, 20.692480, 22.346857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.955508, 20.610300, 22.433517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055052, -0.592093, -0.803987,
		0.293456, -0.779241, 0.553775,
		-0.954386, -0.205448, 0.216652,
		15.669192, 20.548666, 22.498512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381277, 19.973696, 22.281492>,  <16.337263, 20.692480, 22.346857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.381277, 19.973696, 22.281492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.990062, 20.053364, 22.306049>,  <15.755332, 20.101164, 22.320784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.990062, 20.053364, 22.306049>,  <16.381277, 19.973696, 22.281492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.990062, 20.053364, 22.306049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183291, -0.681753, -0.708250,
		-0.099208, -0.703949, 0.703288,
		-0.978040, 0.199170, 0.061392,
		15.696650, 20.113115, 22.324467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.059597, 19.350878, 22.270752>,  <16.381277, 19.973696, 22.281492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.059597, 19.350878, 22.270752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.800303, 19.625841, 22.139751>,  <15.644726, 19.790819, 22.061152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.800303, 19.625841, 22.139751>,  <16.059597, 19.350878, 22.270752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.800303, 19.625841, 22.139751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274736, -0.612288, -0.741366,
		-0.710148, -0.390604, 0.585763,
		-0.648236, 0.687410, -0.327502,
		15.605831, 19.832064, 22.041500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.643144, 18.887108, 22.030033>,  <16.059597, 19.350878, 22.270752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.643144, 18.887108, 22.030033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.513123, 19.228733, 21.867592>,  <15.435110, 19.433708, 21.770128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.513123, 19.228733, 21.867592>,  <15.643144, 18.887108, 22.030033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.513123, 19.228733, 21.867592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345409, -0.506972, -0.789729,
		-0.880360, -0.116432, 0.459793,
		-0.325052, 0.854063, -0.406101,
		15.415606, 19.484951, 21.745762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.096895, 18.717674, 21.696526>,  <15.643144, 18.887108, 22.030033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.096895, 18.717674, 21.696526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180386, 19.066832, 21.520121>,  <15.230479, 19.276325, 21.414278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.180386, 19.066832, 21.520121>,  <15.096895, 18.717674, 21.696526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.180386, 19.066832, 21.520121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170377, -0.411591, -0.895301,
		-0.963019, 0.262010, 0.062812,
		0.208725, 0.872894, -0.441011,
		15.243003, 19.328699, 21.387817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.513666, 18.906233, 21.188677>,  <15.096895, 18.717674, 21.696526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.513666, 18.906233, 21.188677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.813781, 19.138964, 21.063108>,  <14.993850, 19.278603, 20.987768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.813781, 19.138964, 21.063108>,  <14.513666, 18.906233, 21.188677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.813781, 19.138964, 21.063108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274045, -0.158410, -0.948581,
		-0.601639, 0.797736, 0.040594,
		0.750287, 0.581827, -0.313921,
		15.038867, 19.313513, 20.968931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.276937, 19.438152, 20.782063>,  <14.513666, 18.906233, 21.188677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.276937, 19.438152, 20.782063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.649721, 19.331358, 20.683943>,  <14.873391, 19.267281, 20.625071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.649721, 19.331358, 20.683943>,  <14.276937, 19.438152, 20.782063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.649721, 19.331358, 20.683943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299828, -0.187122, -0.935462,
		0.203857, 0.945359, -0.254440,
		0.931958, -0.266988, -0.245299,
		14.929309, 19.251261, 20.610353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.563576, 19.831730, 20.194977>,  <14.276937, 19.438152, 20.782063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.563576, 19.831730, 20.194977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.764097, 19.488371, 20.151432>,  <14.884410, 19.282356, 20.125305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.764097, 19.488371, 20.151432>,  <14.563576, 19.831730, 20.194977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.764097, 19.488371, 20.151432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542656, -0.213901, -0.812263,
		0.673957, 0.466265, -0.573044,
		0.501304, -0.858396, -0.108861,
		14.914489, 19.230852, 20.118774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.067737, 20.017204, 19.608112>,  <14.563576, 19.831730, 20.194977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.067737, 20.017204, 19.608112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.682021, 19.923567, 19.558556>,  <14.450592, 19.867384, 19.528822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.682021, 19.923567, 19.558556>,  <15.067737, 20.017204, 19.608112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.682021, 19.923567, 19.558556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264787, -0.841555, -0.470820,
		0.005955, -0.486811, 0.873487,
		-0.964288, -0.234092, -0.123890,
		14.392735, 19.853338, 19.521389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.252643, 19.422443, 19.113836>,  <15.067737, 20.017204, 19.608112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.252643, 19.422443, 19.113836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.947242, 19.497559, 18.866676>,  <14.764001, 19.542627, 18.718380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.947242, 19.497559, 18.866676>,  <15.252643, 19.422443, 19.113836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.947242, 19.497559, 18.866676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374588, -0.650619, -0.660589,
		-0.526067, -0.735819, 0.426408,
		-0.763503, 0.187787, -0.617899,
		14.718191, 19.553894, 18.681307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<16.887632, 17.977915, 28.271307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.812428, 17.954895, 27.879116>,  <16.767305, 17.941084, 27.643801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.812428, 17.954895, 27.879116>,  <16.887632, 17.977915, 28.271307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812428, 17.954895, 27.879116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397127, -0.917493, -0.022300,
		-0.898299, -0.393568, 0.195353,
		-0.188012, -0.057548, -0.980479,
		16.756023, 17.937630, 27.584972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.941751, 18.621075, 27.868706>,  <16.887632, 17.977915, 28.271307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.941751, 18.621075, 27.868706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.224525, 18.880358, 27.981894>,  <17.394190, 19.035927, 28.049807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.224525, 18.880358, 27.981894>,  <16.941751, 18.621075, 27.868706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.224525, 18.880358, 27.981894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302650, 0.638842, -0.707308,
		-0.639255, 0.414379, 0.647799,
		0.706935, 0.648206, 0.282971,
		17.436605, 19.074820, 28.066784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.700584, 19.374403, 28.029020>,  <16.941751, 18.621075, 27.868706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.700584, 19.374403, 28.029020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.083195, 19.413069, 27.918953>,  <17.312761, 19.436268, 27.852913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.083195, 19.413069, 27.918953>,  <16.700584, 19.374403, 28.029020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.083195, 19.413069, 27.918953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272223, 0.634503, -0.723395,
		0.104668, 0.766852, 0.633231,
		0.956525, 0.096664, -0.275167,
		17.370152, 19.442068, 27.836403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.894657, 20.072742, 27.959610>,  <16.700584, 19.374403, 28.029020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.894657, 20.072742, 27.959610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.125849, 19.876936, 27.698439>,  <17.264563, 19.759453, 27.541737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.125849, 19.876936, 27.698439>,  <16.894657, 20.072742, 27.959610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.125849, 19.876936, 27.698439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270893, 0.639646, -0.719354,
		0.769778, 0.592645, 0.237095,
		0.577978, -0.489515, -0.652929,
		17.299242, 19.730082, 27.502560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.215797, 20.599854, 27.439831>,  <16.894657, 20.072742, 27.959610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.215797, 20.599854, 27.439831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.266397, 20.250359, 27.251966>,  <17.296757, 20.040663, 27.139248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.266397, 20.250359, 27.251966>,  <17.215797, 20.599854, 27.439831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.266397, 20.250359, 27.251966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108600, 0.458421, -0.882075,
		0.986004, 0.162589, -0.036897,
		0.126501, -0.873736, -0.469662,
		17.304348, 19.988237, 27.111069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.697550, 20.742392, 26.787092>,  <17.215797, 20.599854, 27.439831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.697550, 20.742392, 26.787092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.513630, 20.392361, 26.726662>,  <17.403278, 20.182343, 26.690403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.513630, 20.392361, 26.726662>,  <17.697550, 20.742392, 26.787092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.513630, 20.392361, 26.726662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132984, 0.236058, -0.962596,
		0.878010, -0.422509, -0.224911,
		-0.459798, -0.875079, -0.151074,
		17.375690, 20.129837, 26.681339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.852764, 20.684343, 26.056067>,  <17.697550, 20.742392, 26.787092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.852764, 20.684343, 26.056067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.570971, 20.416098, 26.149004>,  <17.401896, 20.255150, 26.204767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.570971, 20.416098, 26.149004>,  <17.852764, 20.684343, 26.056067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.570971, 20.416098, 26.149004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469412, 0.194729, -0.861239,
		0.532313, -0.715793, -0.451977,
		-0.704482, -0.670612, 0.232345,
		17.359627, 20.214914, 26.218708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.839670, 20.173040, 25.526917>,  <17.852764, 20.684343, 26.056067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.839670, 20.173040, 25.526917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.477259, 20.194590, 25.694826>,  <17.259811, 20.207520, 25.795572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.477259, 20.194590, 25.694826>,  <17.839670, 20.173040, 25.526917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.477259, 20.194590, 25.694826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401497, 0.204270, -0.892790,
		-0.133845, -0.977431, -0.163444,
		-0.906028, 0.053873, 0.419776,
		17.205450, 20.210751, 25.820759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.406429, 19.751410, 25.018599>,  <17.839670, 20.173040, 25.526917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.406429, 19.751410, 25.018599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.159594, 19.982965, 25.231798>,  <17.011492, 20.121899, 25.359718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.159594, 19.982965, 25.231798>,  <17.406429, 19.751410, 25.018599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.159594, 19.982965, 25.231798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544097, 0.175431, -0.820477,
		-0.568470, -0.796310, 0.206717,
		-0.617089, 0.578891, 0.532997,
		16.974466, 20.156633, 25.391697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.815243, 19.644276, 24.695387>,  <17.406429, 19.751410, 25.018599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.815243, 19.644276, 24.695387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.726170, 19.976332, 24.899849>,  <16.672726, 20.175566, 25.022526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.726170, 19.976332, 24.899849>,  <16.815243, 19.644276, 24.695387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.726170, 19.976332, 24.899849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491403, 0.357260, -0.794285,
		-0.841984, -0.428055, 0.328379,
		-0.222680, 0.830141, 0.511155,
		16.659365, 20.225374, 25.053196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.052032, 19.617046, 24.739998>,  <16.815243, 19.644276, 24.695387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.052032, 19.617046, 24.739998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.158749, 19.999701, 24.786770>,  <16.222778, 20.229292, 24.814833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.158749, 19.999701, 24.786770>,  <16.052032, 19.617046, 24.739998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.158749, 19.999701, 24.786770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541536, 0.249166, -0.802904,
		-0.797221, 0.150887, 0.584528,
		0.266792, 0.956635, 0.116930,
		16.238787, 20.286692, 24.821848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.420350, 20.016886, 24.550829>,  <16.052032, 19.617046, 24.739998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.420350, 20.016886, 24.550829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.680614, 20.319530, 24.576689>,  <15.836772, 20.501118, 24.592205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.680614, 20.319530, 24.576689>,  <15.420350, 20.016886, 24.550829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.680614, 20.319530, 24.576689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583115, 0.552360, -0.595713,
		-0.486435, 0.349907, 0.800591,
		0.650659, 0.756613, 0.064651,
		15.875812, 20.546515, 24.596085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.978483, 20.559971, 24.579062>,  <15.420350, 20.016886, 24.550829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.978483, 20.559971, 24.579062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.337483, 20.616531, 24.411970>,  <15.552883, 20.650469, 24.311714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.337483, 20.616531, 24.411970>,  <14.978483, 20.559971, 24.579062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.337483, 20.616531, 24.411970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433772, 0.112096, -0.894022,
		-0.079592, 0.983585, 0.161943,
		0.897500, 0.141403, -0.417730,
		15.606733, 20.658953, 24.286652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.919458, 21.160408, 24.156754>,  <14.978483, 20.559971, 24.579062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.919458, 21.160408, 24.156754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.232738, 20.960424, 24.008894>,  <15.420705, 20.840433, 23.920177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.232738, 20.960424, 24.008894>,  <14.919458, 21.160408, 24.156754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.232738, 20.960424, 24.008894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387926, 0.071698, -0.918898,
		0.485915, 0.863075, -0.137793,
		0.783199, -0.499960, -0.369649,
		15.467697, 20.810436, 23.897999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.349499, 20.996954, 24.478607>,  <14.919458, 21.160408, 24.156754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.349499, 20.996954, 24.478607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.087981, 21.252190, 24.641283>,  <13.931071, 21.405331, 24.738888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.087981, 21.252190, 24.641283>,  <14.349499, 20.996954, 24.478607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.087981, 21.252190, 24.641283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402169, -0.162237, 0.901077,
		0.640948, 0.752675, -0.150551,
		-0.653793, 0.638091, 0.406688,
		13.891844, 21.443617, 24.763290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.644744, 21.327515, 25.123739>,  <14.349499, 20.996954, 24.478607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.644744, 21.327515, 25.123739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.252482, 21.369476, 25.189844>,  <14.017125, 21.394653, 25.229507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.252482, 21.369476, 25.189844>,  <14.644744, 21.327515, 25.123739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.252482, 21.369476, 25.189844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153134, -0.114738, 0.981522,
		0.121928, 0.987841, 0.096454,
		-0.980655, 0.104905, 0.165262,
		13.958286, 21.400948, 25.239422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.592015, 21.653242, 25.856865>,  <14.644744, 21.327515, 25.123739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.592015, 21.653242, 25.856865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.251945, 21.461832, 25.769033>,  <14.047902, 21.346987, 25.716335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.251945, 21.461832, 25.769033>,  <14.592015, 21.653242, 25.856865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.251945, 21.461832, 25.769033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095414, -0.270114, 0.958089,
		-0.517780, 0.835495, 0.183986,
		-0.850176, -0.478525, -0.219578,
		13.996892, 21.318275, 25.703159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.993217, 21.960894, 26.270500>,  <14.592015, 21.653242, 25.856865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.993217, 21.960894, 26.270500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.927978, 21.583673, 26.154531>,  <13.888834, 21.357342, 26.084949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.927978, 21.583673, 26.154531>,  <13.993217, 21.960894, 26.270500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.927978, 21.583673, 26.154531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112944, -0.274079, 0.955052,
		-0.980124, 0.188512, -0.061811,
		-0.163098, -0.943051, -0.289922,
		13.879048, 21.300758, 26.067554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.481430, 21.709436, 26.687088>,  <13.993217, 21.960894, 26.270500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.481430, 21.709436, 26.687088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.658533, 21.377054, 26.552340>,  <13.764795, 21.177626, 26.471491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.658533, 21.377054, 26.552340>,  <13.481430, 21.709436, 26.687088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.658533, 21.377054, 26.552340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027513, -0.388117, 0.921199,
		-0.896219, -0.398599, -0.194704,
		0.442757, -0.830953, -0.336871,
		13.791360, 21.127768, 26.451279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.013471, 21.250624, 26.845984>,  <13.481430, 21.709436, 26.687088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.013471, 21.250624, 26.845984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.343465, 21.033247, 26.783924>,  <13.541461, 20.902821, 26.746689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.343465, 21.033247, 26.783924>,  <13.013471, 21.250624, 26.845984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.343465, 21.033247, 26.783924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080603, -0.384859, 0.919449,
		-0.559378, -0.746026, -0.361306,
		0.824985, -0.543442, -0.155150,
		13.590961, 20.870214, 26.737379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.744604, 20.641811, 27.008175>,  <13.013471, 21.250624, 26.845984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.744604, 20.641811, 27.008175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.141335, 20.593262, 27.023901>,  <13.379375, 20.564131, 27.033337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.141335, 20.593262, 27.023901>,  <12.744604, 20.641811, 27.008175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.141335, 20.593262, 27.023901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085979, -0.408186, 0.908841,
		-0.094263, -0.904794, -0.415286,
		0.991828, -0.121375, 0.039316,
		13.438884, 20.556849, 27.035696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.896476, 19.938030, 27.173836>,  <12.744604, 20.641811, 27.008175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.896476, 19.938030, 27.173836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.215278, 20.156746, 27.276447>,  <13.406559, 20.287975, 27.338015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.215278, 20.156746, 27.276447>,  <12.896476, 19.938030, 27.173836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.215278, 20.156746, 27.276447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088439, -0.314501, 0.945128,
		0.597463, -0.775959, -0.202301,
		0.797005, 0.546788, 0.256528,
		13.454379, 20.320782, 27.353405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.390419, 19.500473, 27.520739>,  <12.896476, 19.938030, 27.173836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.390419, 19.500473, 27.520739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.523729, 19.851616, 27.658316>,  <13.603715, 20.062302, 27.740862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.523729, 19.851616, 27.658316>,  <13.390419, 19.500473, 27.520739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.523729, 19.851616, 27.658316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174963, -0.416049, 0.892352,
		0.926454, -0.237221, -0.292250,
		0.333275, 0.877855, 0.343945,
		13.623712, 20.114973, 27.761499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.045019, 19.408812, 27.880430>,  <13.390419, 19.500473, 27.520739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.045019, 19.408812, 27.880430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.896832, 19.748911, 28.030005>,  <13.807920, 19.952971, 28.119749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.896832, 19.748911, 28.030005>,  <14.045019, 19.408812, 27.880430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.896832, 19.748911, 28.030005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365289, -0.236778, 0.900278,
		0.854001, 0.470119, -0.222868,
		-0.370468, 0.850249, 0.373938,
		13.785692, 20.003986, 28.142185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.512473, 19.546131, 28.468792>,  <14.045019, 19.408812, 27.880430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.512473, 19.546131, 28.468792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.211446, 19.800127, 28.538567>,  <14.030829, 19.952524, 28.580431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.211446, 19.800127, 28.538567>,  <14.512473, 19.546131, 28.468792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.211446, 19.800127, 28.538567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246667, 0.026218, 0.968746,
		0.610572, 0.772074, -0.176362,
		-0.752567, 0.634992, 0.174438,
		13.985676, 19.990625, 28.590899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.769139, 20.176825, 28.779970>,  <14.512473, 19.546131, 28.468792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.769139, 20.176825, 28.779970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.389601, 20.156065, 28.904549>,  <14.161878, 20.143608, 28.979296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.389601, 20.156065, 28.904549>,  <14.769139, 20.176825, 28.779970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.389601, 20.156065, 28.904549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305852, 0.093820, 0.947445,
		-0.078392, 0.994236, -0.073147,
		-0.948846, -0.051900, 0.311444,
		14.104947, 20.140495, 28.997982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.832350, 20.654978, 29.277689>,  <14.769139, 20.176825, 28.779970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.832350, 20.654978, 29.277689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.473535, 20.497311, 29.357645>,  <14.258245, 20.402710, 29.405619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.473535, 20.497311, 29.357645>,  <14.832350, 20.654978, 29.277689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.473535, 20.497311, 29.357645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199259, 0.042999, 0.979003,
		-0.394486, 0.918032, 0.039969,
		-0.897038, -0.394167, 0.199889,
		14.204423, 20.379061, 29.417612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.488697, 21.101397, 29.743643>,  <14.832350, 20.654978, 29.277689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.488697, 21.101397, 29.743643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.325080, 20.738871, 29.786116>,  <14.226910, 20.521355, 29.811600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.325080, 20.738871, 29.786116>,  <14.488697, 21.101397, 29.743643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.325080, 20.738871, 29.786116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264666, -0.006473, 0.964319,
		-0.873290, 0.422551, 0.242519,
		-0.409044, -0.906316, 0.106182,
		14.202367, 20.466976, 29.817970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<17.617502, 14.690174, 29.295650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.352905, 14.981210, 29.368361>,  <17.194147, 15.155831, 29.411987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.352905, 14.981210, 29.368361>,  <17.617502, 14.690174, 29.295650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.352905, 14.981210, 29.368361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203022, 0.059600, -0.977359,
		-0.721950, -0.683419, 0.108292,
		-0.661491, 0.727590, 0.181777,
		17.154457, 15.199487, 29.422894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.060154, 14.483747, 28.901484>,  <17.617502, 14.690174, 29.295650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.060154, 14.483747, 28.901484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.986845, 14.871461, 28.967091>,  <16.942860, 15.104089, 29.006454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.986845, 14.871461, 28.967091>,  <17.060154, 14.483747, 28.901484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.986845, 14.871461, 28.967091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261926, 0.112667, -0.958489,
		-0.947526, -0.218626, 0.233231,
		-0.183273, 0.969283, 0.164018,
		16.931864, 15.162246, 29.016296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.404467, 14.572680, 28.729336>,  <17.060154, 14.483747, 28.901484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.404467, 14.572680, 28.729336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.542681, 14.946661, 28.697163>,  <16.625608, 15.171050, 28.677858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.542681, 14.946661, 28.697163>,  <16.404467, 14.572680, 28.729336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.542681, 14.946661, 28.697163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492559, 0.107744, -0.863584,
		-0.798744, 0.338016, 0.497749,
		0.345534, 0.934953, -0.080433,
		16.646341, 15.227147, 28.673033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.887815, 14.976527, 28.403088>,  <16.404467, 14.572680, 28.729336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.887815, 14.976527, 28.403088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.224739, 15.186094, 28.352448>,  <16.426893, 15.311834, 28.322063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.224739, 15.186094, 28.352448>,  <15.887815, 14.976527, 28.403088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224739, 15.186094, 28.352448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300713, 0.261862, -0.917060,
		-0.447312, 0.810518, 0.378117,
		0.842308, 0.523917, -0.126599,
		16.477432, 15.343269, 28.314468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.643932, 15.515420, 28.160006>,  <15.887815, 14.976527, 28.403088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.643932, 15.515420, 28.160006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.029295, 15.525361, 28.053249>,  <16.260513, 15.531325, 27.989195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.029295, 15.525361, 28.053249>,  <15.643932, 15.515420, 28.160006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.029295, 15.525361, 28.053249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267926, 0.059551, -0.961597,
		-0.008005, 0.997916, 0.064031,
		0.963406, 0.024853, -0.266891,
		16.318317, 15.532817, 27.973183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.565565, 15.934322, 27.647409>,  <15.643932, 15.515420, 28.160006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.565565, 15.934322, 27.647409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.922903, 15.759973, 27.603689>,  <16.137306, 15.655363, 27.577457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.922903, 15.759973, 27.603689>,  <15.565565, 15.934322, 27.647409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.922903, 15.759973, 27.603689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117666, 0.007850, -0.993022,
		0.433691, 0.899973, -0.044275,
		0.893346, -0.435874, -0.109301,
		16.190907, 15.629210, 27.570898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.921528, 16.375286, 27.084496>,  <15.565565, 15.934322, 27.647409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.921528, 16.375286, 27.084496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.081455, 16.010530, 27.121601>,  <16.177412, 15.791677, 27.143864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.081455, 16.010530, 27.121601>,  <15.921528, 16.375286, 27.084496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.081455, 16.010530, 27.121601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065300, -0.129285, -0.989455,
		0.914265, 0.389545, -0.111237,
		0.399819, -0.911888, 0.092763,
		16.201401, 15.736964, 27.149429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.348427, 16.424812, 26.579700>,  <15.921528, 16.375286, 27.084496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.348427, 16.424812, 26.579700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.271940, 16.038721, 26.651003>,  <16.226048, 15.807067, 26.693785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.271940, 16.038721, 26.651003>,  <16.348427, 16.424812, 26.579700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.271940, 16.038721, 26.651003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358617, -0.100350, -0.928075,
		0.913690, -0.241390, -0.326957,
		-0.191217, -0.965226, 0.178255,
		16.214575, 15.749153, 26.704479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.701817, 15.990458, 26.035238>,  <16.348427, 16.424812, 26.579700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.701817, 15.990458, 26.035238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.426149, 15.751304, 26.198986>,  <16.260750, 15.607811, 26.297234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.426149, 15.751304, 26.198986>,  <16.701817, 15.990458, 26.035238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.426149, 15.751304, 26.198986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255727, -0.327914, -0.909437,
		0.677976, -0.731441, 0.073093,
		-0.689168, -0.597884, 0.409367,
		16.219398, 15.571939, 26.321796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.889740, 15.272921, 25.865538>,  <16.701817, 15.990458, 26.035238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.889740, 15.272921, 25.865538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.498310, 15.257309, 25.946400>,  <16.263453, 15.247942, 25.994917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.498310, 15.257309, 25.946400>,  <16.889740, 15.272921, 25.865538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.498310, 15.257309, 25.946400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165745, -0.433145, -0.885954,
		0.122141, -0.900479, 0.417396,
		-0.978576, -0.039030, 0.202155,
		16.204737, 15.245600, 26.007046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.613920, 14.528589, 25.751635>,  <16.889740, 15.272921, 25.865538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.613920, 14.528589, 25.751635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.309044, 14.783419, 25.705669>,  <16.126118, 14.936316, 25.678091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.309044, 14.783419, 25.705669>,  <16.613920, 14.528589, 25.751635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.309044, 14.783419, 25.705669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208816, -0.409973, -0.887873,
		-0.612752, -0.652731, 0.445508,
		-0.762188, 0.637075, -0.114911,
		16.080387, 14.974541, 25.671196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.086525, 14.152567, 25.480841>,  <16.613920, 14.528589, 25.751635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.086525, 14.152567, 25.480841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.950273, 14.523237, 25.417290>,  <15.868521, 14.745640, 25.379160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.950273, 14.523237, 25.417290>,  <16.086525, 14.152567, 25.480841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.950273, 14.523237, 25.417290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257355, -0.254427, -0.932220,
		-0.904289, -0.276655, 0.325151,
		-0.340631, 0.926676, -0.158877,
		15.848083, 14.801240, 25.369627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.422100, 14.061299, 25.181469>,  <16.086525, 14.152567, 25.480841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.422100, 14.061299, 25.181469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.527175, 14.432590, 25.076101>,  <15.590219, 14.655365, 25.012880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.527175, 14.432590, 25.076101>,  <15.422100, 14.061299, 25.181469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.527175, 14.432590, 25.076101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359334, -0.159258, -0.919520,
		-0.895475, 0.336201, 0.291709,
		0.262687, 0.928227, -0.263420,
		15.605981, 14.711059, 24.997076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.754019, 14.341956, 24.838802>,  <15.422100, 14.061299, 25.181469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.754019, 14.341956, 24.838802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.075403, 14.558604, 24.739929>,  <15.268233, 14.688593, 24.680605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.075403, 14.558604, 24.739929>,  <14.754019, 14.341956, 24.838802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.075403, 14.558604, 24.739929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112910, -0.269023, -0.956493,
		-0.584554, 0.796413, -0.154995,
		0.803460, 0.541621, -0.247182,
		15.316442, 14.721090, 24.665775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.191456, 14.547373, 25.129070>,  <14.754019, 14.341956, 24.838802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.191456, 14.547373, 25.129070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.797647, 14.547303, 25.199171>,  <13.561361, 14.547261, 25.241232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.797647, 14.547303, 25.199171>,  <14.191456, 14.547373, 25.129070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.797647, 14.547303, 25.199171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174495, -0.093873, 0.980173,
		0.016280, 0.995584, 0.092451,
		-0.984523, -0.000175, 0.175253,
		13.502290, 14.547251, 25.251747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.114068, 15.089222, 25.442738>,  <14.191456, 14.547373, 25.129070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.114068, 15.089222, 25.442738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.819150, 14.838881, 25.544487>,  <13.642199, 14.688677, 25.605536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.819150, 14.838881, 25.544487>,  <14.114068, 15.089222, 25.442738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.819150, 14.838881, 25.544487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219750, 0.133873, 0.966327,
		-0.638830, 0.768367, 0.038827,
		-0.737296, -0.625851, 0.254371,
		13.597961, 14.651126, 25.620798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.055367, 15.388019, 26.047564>,  <14.114068, 15.089222, 25.442738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.055367, 15.388019, 26.047564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.828103, 15.060338, 26.078815>,  <13.691745, 14.863729, 26.097567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.828103, 15.060338, 26.078815>,  <14.055367, 15.388019, 26.047564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.828103, 15.060338, 26.078815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148098, -0.008394, 0.988937,
		-0.809483, 0.573444, 0.126091,
		-0.568158, -0.819202, 0.078131,
		13.657656, 14.814577, 26.102255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.526646, 15.533884, 26.504501>,  <14.055367, 15.388019, 26.047564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.526646, 15.533884, 26.504501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.541028, 15.134144, 26.503653>,  <13.549658, 14.894300, 26.503143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.541028, 15.134144, 26.503653>,  <13.526646, 15.533884, 26.504501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.541028, 15.134144, 26.503653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094768, -0.005522, 0.995484,
		-0.994850, -0.035594, -0.094905,
		0.035957, -0.999351, -0.002121,
		13.551815, 14.834338, 26.503016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.038031, 15.353604, 27.002714>,  <13.526646, 15.533884, 26.504501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.038031, 15.353604, 27.002714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.252534, 15.018492, 26.961628>,  <13.381235, 14.817424, 26.936975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.252534, 15.018492, 26.961628>,  <13.038031, 15.353604, 27.002714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.252534, 15.018492, 26.961628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070004, -0.165421, 0.983735,
		-0.841147, -0.520345, -0.147356,
		0.536257, -0.837781, -0.102718,
		13.413411, 14.767158, 26.930813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.661904, 14.741316, 27.217751>,  <13.038031, 15.353604, 27.002714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.661904, 14.741316, 27.217751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.050405, 14.653386, 27.254297>,  <13.283504, 14.600628, 27.276226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.050405, 14.653386, 27.254297>,  <12.661904, 14.741316, 27.217751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.050405, 14.653386, 27.254297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129485, -0.165768, 0.977627,
		-0.199767, -0.961351, -0.189467,
		0.971250, -0.219831, 0.091366,
		13.341780, 14.587439, 27.281708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.769029, 14.150908, 27.676693>,  <12.661904, 14.741316, 27.217751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.769029, 14.150908, 27.676693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.128001, 14.326052, 27.698229>,  <13.343385, 14.431138, 27.711149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.128001, 14.326052, 27.698229>,  <12.769029, 14.150908, 27.676693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.128001, 14.326052, 27.698229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042283, -0.206850, 0.977459,
		0.439125, -0.874925, -0.204148,
		0.897431, 0.437858, 0.053839,
		13.397230, 14.457409, 27.714380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.219953, 13.691907, 27.978672>,  <12.769029, 14.150908, 27.676693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.219953, 13.691907, 27.978672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.387379, 14.050908, 28.034231>,  <13.487834, 14.266309, 28.067566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.387379, 14.050908, 28.034231>,  <13.219953, 13.691907, 27.978672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.387379, 14.050908, 28.034231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147584, -0.218124, 0.964697,
		0.896115, -0.383289, -0.223756,
		0.418565, 0.897503, 0.138897,
		13.512948, 14.320159, 28.075901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.674788, 13.544030, 28.422804>,  <13.219953, 13.691907, 27.978672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.674788, 13.544030, 28.422804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.660542, 13.941832, 28.462191>,  <13.651994, 14.180512, 28.485823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.660542, 13.941832, 28.462191>,  <13.674788, 13.544030, 28.422804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.660542, 13.941832, 28.462191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312143, -0.082528, 0.946444,
		0.949367, 0.064443, -0.307488,
		-0.035615, 0.994503, 0.098465,
		13.649858, 14.240183, 28.491730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.336051, 13.752171, 28.723478>,  <13.674788, 13.544030, 28.422804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.336051, 13.752171, 28.723478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.076795, 14.048017, 28.796013>,  <13.921241, 14.225524, 28.839533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.076795, 14.048017, 28.796013>,  <14.336051, 13.752171, 28.723478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.076795, 14.048017, 28.796013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293696, 0.023079, 0.955620,
		0.702607, 0.672634, -0.232181,
		-0.648141, 0.739616, 0.181335,
		13.882353, 14.269901, 28.850412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.623071, 14.095074, 29.181700>,  <14.336051, 13.752171, 28.723478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.623071, 14.095074, 29.181700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.252320, 14.237516, 29.229177>,  <14.029870, 14.322982, 29.257664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.252320, 14.237516, 29.229177>,  <14.623071, 14.095074, 29.181700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.252320, 14.237516, 29.229177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162359, 0.095231, 0.982125,
		0.338438, 0.929580, -0.146085,
		-0.926876, 0.356107, 0.118696,
		13.974257, 14.344349, 29.264786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.671374, 14.823371, 29.408827>,  <14.623071, 14.095074, 29.181700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.671374, 14.823371, 29.408827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.324473, 14.644703, 29.496790>,  <14.116333, 14.537502, 29.549568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.324473, 14.644703, 29.496790>,  <14.671374, 14.823371, 29.408827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.324473, 14.644703, 29.496790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222085, 0.048241, 0.973833,
		-0.445590, 0.893398, 0.057361,
		-0.867253, -0.446669, 0.219906,
		14.064298, 14.510702, 29.562761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.365508, 15.217699, 29.906954>,  <14.671374, 14.823371, 29.408827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.365508, 15.217699, 29.906954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.144530, 14.886350, 29.944059>,  <14.011944, 14.687540, 29.966322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.144530, 14.886350, 29.944059>,  <14.365508, 15.217699, 29.906954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.144530, 14.886350, 29.944059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094099, 0.048597, 0.994376,
		-0.828221, 0.558066, 0.051102,
		-0.552444, -0.828372, 0.092763,
		13.978797, 14.637838, 29.971888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.850252, 15.445248, 30.346258>,  <14.365508, 15.217699, 29.906954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.850252, 15.445248, 30.346258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.938024, 15.055369, 30.363317>,  <13.990686, 14.821443, 30.373552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.938024, 15.055369, 30.363317>,  <13.850252, 15.445248, 30.346258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.938024, 15.055369, 30.363317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098203, 0.065556, 0.993005,
		-0.970673, -0.213706, 0.110103,
		0.219429, -0.974696, 0.042646,
		14.003853, 14.762960, 30.376112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.316539, 15.737923, 30.743776>,  <13.850252, 15.445248, 30.346258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.316539, 15.737923, 30.743776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.384684, 16.117165, 30.851164>,  <13.425570, 16.344709, 30.915596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.384684, 16.117165, 30.851164>,  <13.316539, 15.737923, 30.743776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.384684, 16.117165, 30.851164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589676, 0.316374, -0.743094,
		-0.789467, -0.031713, 0.612973,
		0.170363, 0.948104, 0.268467,
		13.435792, 16.401596, 30.931704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.694976, 16.036016, 30.692959>,  <13.316539, 15.737923, 30.743776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.694976, 16.036016, 30.692959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.942765, 16.349834, 30.703833>,  <13.091438, 16.538126, 30.710358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.942765, 16.349834, 30.703833>,  <12.694976, 16.036016, 30.692959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.942765, 16.349834, 30.703833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503996, 0.424024, -0.752458,
		-0.601865, 0.452427, 0.658079,
		0.619473, 0.784547, 0.027184,
		13.128607, 16.585199, 30.711988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.308266, 16.551313, 30.700678>,  <12.694976, 16.036016, 30.692959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.308266, 16.551313, 30.700678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.649902, 16.682444, 30.539156>,  <12.854884, 16.761122, 30.442242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.649902, 16.682444, 30.539156>,  <12.308266, 16.551313, 30.700678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.649902, 16.682444, 30.539156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520080, 0.528364, -0.671080,
		-0.006639, 0.783175, 0.621766,
		0.854092, 0.327823, -0.403806,
		12.906130, 16.780790, 30.418015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.214367, 17.180403, 30.499416>,  <12.308266, 16.551313, 30.700678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.214367, 17.180403, 30.499416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.539797, 17.123976, 30.273781>,  <12.735055, 17.090118, 30.138399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.539797, 17.123976, 30.273781>,  <12.214367, 17.180403, 30.499416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.539797, 17.123976, 30.273781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432032, 0.502628, -0.748808,
		0.389161, 0.852915, 0.347979,
		0.813574, -0.141069, -0.564089,
		12.783869, 17.081656, 30.104553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.259668, 17.867769, 30.156240>,  <12.214367, 17.180403, 30.499416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.259668, 17.867769, 30.156240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.435028, 17.567741, 29.958168>,  <12.540244, 17.387724, 29.839325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.435028, 17.567741, 29.958168>,  <12.259668, 17.867769, 30.156240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.435028, 17.567741, 29.958168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433258, 0.306343, -0.847609,
		0.787460, 0.586131, -0.190674,
		0.438399, -0.750069, -0.495179,
		12.566547, 17.342720, 29.809614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.488561, 18.190922, 29.534744>,  <12.259668, 17.867769, 30.156240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.488561, 18.190922, 29.534744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.485614, 17.796320, 29.469320>,  <12.483846, 17.559559, 29.430065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.485614, 17.796320, 29.469320>,  <12.488561, 18.190922, 29.534744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.485614, 17.796320, 29.469320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371223, 0.154574, -0.915588,
		0.928515, 0.053972, -0.367352,
		-0.007367, -0.986506, -0.163560,
		12.483404, 17.500368, 29.420252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.814816, 18.129364, 28.848999>,  <12.488561, 18.190922, 29.534744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.814816, 18.129364, 28.848999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.592807, 17.799387, 28.891741>,  <12.459600, 17.601400, 28.917385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.592807, 17.799387, 28.891741>,  <12.814816, 18.129364, 28.848999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.592807, 17.799387, 28.891741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082771, -0.073047, -0.993888,
		0.827705, -0.560477, -0.027738,
		-0.555025, -0.824942, 0.106853,
		12.426299, 17.551905, 28.923798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.072348, 17.796825, 28.205235>,  <12.814816, 18.129364, 28.848999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.072348, 17.796825, 28.205235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.744069, 17.625883, 28.356930>,  <12.547102, 17.523317, 28.447947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.744069, 17.625883, 28.356930>,  <13.072348, 17.796825, 28.205235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.744069, 17.625883, 28.356930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462479, 0.107105, -0.880137,
		0.335515, -0.897716, -0.285545,
		-0.820696, -0.427358, 0.379240,
		12.497860, 17.497675, 28.470701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.805654, 17.159142, 27.815353>,  <13.072348, 17.796825, 28.205235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.805654, 17.159142, 27.815353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.502568, 17.327019, 28.015244>,  <12.320717, 17.427746, 28.135178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.502568, 17.327019, 28.015244>,  <12.805654, 17.159142, 27.815353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.502568, 17.327019, 28.015244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521002, 0.072081, -0.850507,
		-0.392974, -0.904799, 0.164045,
		-0.757713, 0.419695, 0.499728,
		12.275254, 17.452927, 28.165161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.180045, 16.739462, 27.590864>,  <12.805654, 17.159142, 27.815353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.180045, 16.739462, 27.590864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.075312, 17.092041, 27.748085>,  <12.012472, 17.303589, 27.842417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.075312, 17.092041, 27.748085>,  <12.180045, 16.739462, 27.590864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.075312, 17.092041, 27.748085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543185, 0.202043, -0.814941,
		-0.797743, -0.426878, 0.425889,
		-0.261833, 0.881450, 0.393052,
		11.996761, 17.356476, 27.866001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.462894, 16.797947, 27.504597>,  <12.180045, 16.739462, 27.590864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.462894, 16.797947, 27.504597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.598321, 17.173838, 27.523706>,  <11.679577, 17.399372, 27.535173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.598321, 17.173838, 27.523706>,  <11.462894, 16.797947, 27.504597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.598321, 17.173838, 27.523706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546568, 0.237741, -0.802959,
		-0.765922, 0.245742, 0.594116,
		0.338566, 0.939729, 0.047776,
		11.699891, 17.455757, 27.538040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.858084, 17.189135, 27.336637>,  <11.462894, 16.797947, 27.504597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.858084, 17.189135, 27.336637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.153348, 17.449806, 27.266853>,  <11.330506, 17.606209, 27.224983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.153348, 17.449806, 27.266853>,  <10.858084, 17.189135, 27.336637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.153348, 17.449806, 27.266853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528301, 0.397570, -0.750224,
		-0.419544, 0.645953, 0.637752,
		0.738161, 0.651677, -0.174459,
		11.374796, 17.645309, 27.214516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.472387, 17.776091, 27.126659>,  <10.858084, 17.189135, 27.336637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.472387, 17.776091, 27.126659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.852843, 17.808605, 27.007511>,  <11.081117, 17.828114, 26.936022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.852843, 17.808605, 27.007511>,  <10.472387, 17.776091, 27.126659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.852843, 17.808605, 27.007511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307098, 0.349077, -0.885345,
		0.032012, 0.933562, 0.356984,
		0.951139, 0.081288, -0.297870,
		11.138186, 17.832991, 26.918150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.406614, 18.177811, 26.539434>,  <10.472387, 17.776091, 27.126659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.406614, 18.177811, 26.539434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.796126, 18.090693, 26.513151>,  <11.029834, 18.038422, 26.497381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.796126, 18.090693, 26.513151>,  <10.406614, 18.177811, 26.539434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.796126, 18.090693, 26.513151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014936, 0.227000, -0.973780,
		0.227000, 0.949229, 0.217795,
		0.973780, -0.217795, -0.065706,
		11.088261, 18.025354, 26.493439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<7.147507, 4.732950, 11.162877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.216224, 5.001592, 11.451164>,  <7.257454, 5.162777, 11.624137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.216224, 5.001592, 11.451164>,  <7.147507, 4.732950, 11.162877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.216224, 5.001592, 11.451164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972567, -0.000858, 0.232622,
		0.156849, -0.740908, 0.653034,
		0.171791, 0.671606, 0.720718,
		7.267761, 5.203073, 11.667379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.984066, 4.457570, 11.770782>,  <7.147507, 4.732950, 11.162877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.984066, 4.457570, 11.770782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.907353, 4.848756, 11.737795>,  <6.861325, 5.083468, 11.718003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.907353, 4.848756, 11.737795>,  <6.984066, 4.457570, 11.770782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.907353, 4.848756, 11.737795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981366, -0.190078, 0.028121,
		0.011827, 0.086323, 0.996197,
		-0.191782, 0.977967, -0.082466,
		6.849818, 5.142146, 11.713055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.557872, 4.530562, 12.247293>,  <6.984066, 4.457570, 11.770782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.557872, 4.530562, 12.247293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.524391, 4.265011, 12.544549>,  <7.504302, 4.105680, 12.722903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.524391, 4.265011, 12.544549>,  <7.557872, 4.530562, 12.247293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.524391, 4.265011, 12.544549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183645, 0.743262, 0.643301,
		-0.979423, -0.082628, -0.184131,
		-0.083703, -0.663878, 0.743142,
		7.499280, 4.065847, 12.767491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.925097, 4.706347, 12.667493>,  <7.557872, 4.530562, 12.247293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.925097, 4.706347, 12.667493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.216996, 4.544192, 12.887721>,  <7.392136, 4.446898, 13.019858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.216996, 4.544192, 12.887721>,  <6.925097, 4.706347, 12.667493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.216996, 4.544192, 12.887721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002573, 0.806885, 0.590703,
		-0.683711, -0.429648, 0.589866,
		0.729748, -0.405388, 0.550570,
		7.435921, 4.422575, 13.052893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.804875, 4.527953, 13.416886>,  <6.925097, 4.706347, 12.667493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.804875, 4.527953, 13.416886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.174007, 4.662335, 13.341497>,  <7.395486, 4.742965, 13.296264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.174007, 4.662335, 13.341497>,  <6.804875, 4.527953, 13.416886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.174007, 4.662335, 13.341497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161385, 0.781445, 0.602742,
		0.349775, -0.525811, 0.775358,
		0.922829, 0.335955, -0.188472,
		7.450855, 4.763122, 13.284956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.144362, 4.761046, 14.065188>,  <6.804875, 4.527953, 13.416886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.144362, 4.761046, 14.065188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.322227, 4.936361, 13.752732>,  <7.428946, 5.041551, 13.565259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.322227, 4.936361, 13.752732>,  <7.144362, 4.761046, 14.065188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.322227, 4.936361, 13.752732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144375, 0.825626, 0.545434,
		0.883986, -0.355311, 0.303846,
		0.444662, 0.438288, -0.781140,
		7.455626, 5.067848, 13.518391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.335275, 5.275322, 14.548876>,  <7.144362, 4.761046, 14.065188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.335275, 5.275322, 14.548876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.111762, 5.079871, 14.816907>,  <6.977654, 4.962600, 14.977725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.111762, 5.079871, 14.816907>,  <7.335275, 5.275322, 14.548876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.111762, 5.079871, 14.816907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670943, 0.208544, 0.711579,
		-0.487439, 0.847202, 0.211312,
		-0.558783, -0.488630, 0.670077,
		6.944127, 4.933282, 15.017930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.334217, 5.618152, 15.264193>,  <7.335275, 5.275322, 14.548876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.334217, 5.618152, 15.264193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.223506, 5.243513, 15.350150>,  <7.157080, 5.018730, 15.401725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.223506, 5.243513, 15.350150>,  <7.334217, 5.618152, 15.264193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.223506, 5.243513, 15.350150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579511, 0.015698, 0.814813,
		-0.766526, 0.350054, 0.538424,
		-0.276777, -0.936598, 0.214893,
		7.140473, 4.962534, 15.414618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.722186, 5.406099, 15.618982>,  <7.334217, 5.618152, 15.264193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.722186, 5.406099, 15.618982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.646959, 5.713692, 15.374590>,  <6.601823, 5.898248, 15.227955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.646959, 5.713692, 15.374590>,  <6.722186, 5.406099, 15.618982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.646959, 5.713692, 15.374590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370150, 0.631705, 0.681130,
		0.909736, -0.098057, -0.403441,
		-0.188067, 0.768982, -0.610981,
		6.590539, 5.944387, 15.191296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.166222, 5.881719, 15.974293>,  <6.722186, 5.406099, 15.618982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.166222, 5.881719, 15.974293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.956160, 6.082818, 15.699641>,  <6.830123, 6.203477, 15.534850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.956160, 6.082818, 15.699641>,  <7.166222, 5.881719, 15.974293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.956160, 6.082818, 15.699641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212995, 0.858812, 0.465914,
		0.823921, 0.098428, -0.558091,
		-0.525154, 0.502747, -0.686628,
		6.798614, 6.233642, 15.493652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.543722, 6.493317, 15.630872>,  <7.166222, 5.881719, 15.974293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.543722, 6.493317, 15.630872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.158137, 6.582685, 15.573104>,  <6.926785, 6.636306, 15.538444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.158137, 6.582685, 15.573104>,  <7.543722, 6.493317, 15.630872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.158137, 6.582685, 15.573104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161665, 0.923087, 0.348963,
		0.211278, 0.313040, -0.925942,
		-0.963964, 0.223420, -0.144420,
		6.868948, 6.649711, 15.529778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.561647, 7.117753, 15.237814>,  <7.543722, 6.493317, 15.630872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.561647, 7.117753, 15.237814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.220815, 7.090719, 15.445425>,  <7.016315, 7.074499, 15.569992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.220815, 7.090719, 15.445425>,  <7.561647, 7.117753, 15.237814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.220815, 7.090719, 15.445425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087153, 0.959465, 0.268013,
		-0.516103, 0.273603, -0.811652,
		-0.852081, -0.067585, 0.519028,
		6.965190, 7.070444, 15.601133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.306733, 7.750868, 15.240561>,  <7.561647, 7.117753, 15.237814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.306733, 7.750868, 15.240561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.080329, 7.577553, 15.521102>,  <6.944487, 7.473564, 15.689426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.080329, 7.577553, 15.521102>,  <7.306733, 7.750868, 15.240561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.080329, 7.577553, 15.521102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247395, 0.900806, 0.356854,
		-0.786402, 0.028473, -0.617059,
		-0.566011, -0.433288, 0.701351,
		6.910526, 7.447567, 15.731507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.626075, 8.076326, 15.297361>,  <7.306733, 7.750868, 15.240561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.626075, 8.076326, 15.297361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.711441, 7.895590, 15.643840>,  <6.762660, 7.787148, 15.851727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.711441, 7.895590, 15.643840>,  <6.626075, 8.076326, 15.297361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.711441, 7.895590, 15.643840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138104, 0.863765, 0.484600,
		-0.967151, -0.223046, 0.121938,
		0.213414, -0.451841, 0.866195,
		6.775465, 7.760037, 15.903698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.162942, 8.308184, 15.834038>,  <6.626075, 8.076326, 15.297361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.162942, 8.308184, 15.834038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.469324, 8.176476, 16.054907>,  <6.653153, 8.097451, 16.187428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.469324, 8.176476, 16.054907>,  <6.162942, 8.308184, 15.834038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.469324, 8.176476, 16.054907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142863, 0.924587, 0.353171,
		-0.626821, -0.191627, 0.755232,
		0.765955, -0.329269, 0.552174,
		6.699110, 8.077695, 16.220558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.069989, 8.509451, 16.513088>,  <6.162942, 8.308184, 15.834038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.069989, 8.509451, 16.513088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.465995, 8.454260, 16.501541>,  <6.703599, 8.421145, 16.494614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.465995, 8.454260, 16.501541>,  <6.069989, 8.509451, 16.513088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.465995, 8.454260, 16.501541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139449, 0.928671, 0.343690,
		-0.020614, -0.344284, 0.938639,
		0.990015, -0.137977, -0.028867,
		6.763000, 8.412867, 16.492882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.300347, 8.901184, 17.051317>,  <6.069989, 8.509451, 16.513088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.300347, 8.901184, 17.051317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.630656, 8.854854, 16.830523>,  <6.828841, 8.827055, 16.698046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.630656, 8.854854, 16.830523>,  <6.300347, 8.901184, 17.051317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.630656, 8.854854, 16.830523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156382, 0.987334, 0.026768,
		0.541893, -0.108425, 0.833425,
		0.825771, -0.115827, -0.551985,
		6.878387, 8.820106, 16.664927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.804464, 9.306547, 17.383375>,  <6.300347, 8.901184, 17.051317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.804464, 9.306547, 17.383375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.925967, 9.259686, 17.005167>,  <6.998868, 9.231570, 16.778242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.925967, 9.259686, 17.005167>,  <6.804464, 9.306547, 17.383375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.925967, 9.259686, 17.005167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095543, 0.991154, -0.092113,
		0.947947, -0.062358, 0.312263,
		0.303756, -0.117153, -0.945520,
		7.017094, 9.224541, 16.721512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.337677, 9.832222, 17.287912>,  <6.804464, 9.306547, 17.383375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.337677, 9.832222, 17.287912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.253789, 9.752213, 16.905079>,  <7.203456, 9.704206, 16.675379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.253789, 9.752213, 16.905079>,  <7.337677, 9.832222, 17.287912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.253789, 9.752213, 16.905079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137489, 0.963093, -0.231407,
		0.968047, -0.180119, -0.174475,
		-0.209717, -0.200025, -0.957084,
		7.190873, 9.692205, 16.617954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.803395, 10.242010, 16.923721>,  <7.337677, 9.832222, 17.287912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.803395, 10.242010, 16.923721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.549370, 10.121533, 16.639193>,  <7.396955, 10.049247, 16.468475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.549370, 10.121533, 16.639193>,  <7.803395, 10.242010, 16.923721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.549370, 10.121533, 16.639193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038881, 0.907221, -0.418854,
		0.771481, -0.293656, -0.564431,
		-0.635063, -0.301192, -0.711321,
		7.358851, 10.031176, 16.425797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.087447, 10.412270, 16.260551>,  <7.803395, 10.242010, 16.923721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.087447, 10.412270, 16.260551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.692365, 10.398495, 16.199556>,  <7.455316, 10.390229, 16.162960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.692365, 10.398495, 16.199556>,  <8.087447, 10.412270, 16.260551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.692365, 10.398495, 16.199556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026145, 0.925307, -0.378317,
		0.154127, -0.377653, -0.913030,
		-0.987705, -0.034438, -0.152488,
		7.396054, 10.388164, 16.153811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.011245, 10.595453, 15.525114>,  <8.087447, 10.412270, 16.260551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.011245, 10.595453, 15.525114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.676080, 10.667123, 15.731339>,  <7.474982, 10.710125, 15.855073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.676080, 10.667123, 15.731339>,  <8.011245, 10.595453, 15.525114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.676080, 10.667123, 15.731339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053290, 0.913214, -0.403981,
		-0.543200, -0.365974, -0.755643,
		-0.837911, 0.179174, 0.515560,
		7.424707, 10.720875, 15.886006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.573011, 10.828002, 15.084463>,  <8.011245, 10.595453, 15.525114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.573011, 10.828002, 15.084463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.444239, 10.962161, 15.438609>,  <7.366975, 11.042656, 15.651096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.444239, 10.962161, 15.438609>,  <7.573011, 10.828002, 15.084463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.444239, 10.962161, 15.438609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039888, 0.929513, -0.366625,
		-0.945923, -0.153343, -0.285860,
		-0.321930, 0.335397, 0.885364,
		7.347660, 11.062780, 15.704219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.233298, 11.344277, 14.894187>,  <7.573011, 10.828002, 15.084463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.233298, 11.344277, 14.894187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.174817, 11.410422, 15.284322>,  <7.139729, 11.450109, 15.518402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.174817, 11.410422, 15.284322>,  <7.233298, 11.344277, 14.894187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.174817, 11.410422, 15.284322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194460, 0.961890, -0.192232,
		-0.969954, -0.217769, -0.108474,
		-0.146202, 0.165362, 0.975336,
		7.130956, 11.460031, 15.576922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.682240, 11.890430, 15.038296>,  <7.233298, 11.344277, 14.894187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.682240, 11.890430, 15.038296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.912263, 11.915009, 15.364616>,  <7.050277, 11.929755, 15.560409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.912263, 11.915009, 15.364616>,  <6.682240, 11.890430, 15.038296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.912263, 11.915009, 15.364616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143379, 0.989311, 0.026554,
		-0.805451, -0.132239, 0.577721,
		0.575057, 0.061445, 0.815802,
		7.084780, 11.933442, 15.609357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.220329, 12.326853, 15.614507>,  <6.682240, 11.890430, 15.038296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.220329, 12.326853, 15.614507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.615679, 12.333022, 15.675012>,  <6.852889, 12.336723, 15.711315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.615679, 12.333022, 15.675012>,  <6.220329, 12.326853, 15.614507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.615679, 12.333022, 15.675012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034661, 0.991502, 0.125386,
		-0.148044, -0.129171, 0.980509,
		0.988373, 0.015423, 0.151264,
		6.912191, 12.337649, 15.720390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.263681, 12.918952, 16.111938>,  <6.220329, 12.326853, 15.614507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.263681, 12.918952, 16.111938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.645822, 12.851911, 16.014603>,  <6.875106, 12.811686, 15.956202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.645822, 12.851911, 16.014603>,  <6.263681, 12.918952, 16.111938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.645822, 12.851911, 16.014603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232405, 0.934805, 0.268566,
		0.182461, -0.313128, 0.932019,
		0.955351, -0.167603, -0.243338,
		6.932427, 12.801630, 15.941601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.662153, 13.175616, 16.682419>,  <6.263681, 12.918952, 16.111938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.662153, 13.175616, 16.682419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.913808, 13.140635, 16.373476>,  <7.064801, 13.119647, 16.188110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.913808, 13.140635, 16.373476>,  <6.662153, 13.175616, 16.682419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.913808, 13.140635, 16.373476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240303, 0.966857, 0.086267,
		0.739216, -0.239874, 0.629301,
		0.629138, -0.087453, -0.772359,
		7.102549, 13.114400, 16.141768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.362451, 13.459873, 16.919634>,  <6.662153, 13.175616, 16.682419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.362451, 13.459873, 16.919634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.329634, 13.491655, 16.522251>,  <7.309945, 13.510725, 16.283821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.329634, 13.491655, 16.522251>,  <7.362451, 13.459873, 16.919634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.329634, 13.491655, 16.522251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377996, 0.924820, 0.042752,
		0.922166, -0.372014, -0.105907,
		-0.082041, 0.079457, -0.993457,
		7.305022, 13.515492, 16.224215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.854875, 13.890155, 16.731716>,  <7.362451, 13.459873, 16.919634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.854875, 13.890155, 16.731716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.631686, 13.906780, 16.400188>,  <7.497773, 13.916756, 16.201271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.631686, 13.906780, 16.400188>,  <7.854875, 13.890155, 16.731716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.631686, 13.906780, 16.400188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175005, 0.982178, -0.068561,
		0.811198, -0.183302, -0.555300,
		-0.557971, 0.041564, -0.828819,
		7.464295, 13.919250, 16.151543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.346616, 14.111967, 16.215170>,  <7.854875, 13.890155, 16.731716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.346616, 14.111967, 16.215170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.968914, 14.204047, 16.121027>,  <7.742293, 14.259295, 16.064541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.968914, 14.204047, 16.121027>,  <8.346616, 14.111967, 16.215170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.968914, 14.204047, 16.121027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227126, 0.973024, 0.040474,
		0.238324, -0.015237, -0.971066,
		-0.944254, 0.230200, -0.235356,
		7.685638, 14.273108, 16.050421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.712494, 14.514341, 16.624556>,  <8.346616, 14.111967, 16.215170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.712494, 14.514341, 16.624556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.074788, 14.513156, 16.794088>,  <9.292165, 14.512444, 16.895807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.074788, 14.513156, 16.794088>,  <8.712494, 14.514341, 16.624556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.074788, 14.513156, 16.794088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376118, -0.455368, -0.806954,
		0.195391, 0.890298, -0.411328,
		0.905736, -0.002964, 0.423832,
		9.346509, 14.512267, 16.921238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.282650, 14.823302, 16.207403>,  <8.712494, 14.514341, 16.624556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.282650, 14.823302, 16.207403> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.457561, 14.570542, 16.463369>,  <9.562509, 14.418886, 16.616949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.457561, 14.570542, 16.463369>,  <9.282650, 14.823302, 16.207403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.457561, 14.570542, 16.463369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418191, -0.487068, -0.766735,
		0.796181, 0.602882, 0.051271,
		0.437278, -0.631901, 0.639914,
		9.588745, 14.380972, 16.655344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.757603, 14.637630, 15.791642>,  <9.282650, 14.823302, 16.207403>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.757603, 14.637630, 15.791642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.748196, 14.352002, 16.071514>,  <9.742552, 14.180625, 16.239437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.748196, 14.352002, 16.071514>,  <9.757603, 14.637630, 15.791642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.748196, 14.352002, 16.071514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510861, -0.610180, -0.605559,
		0.859342, 0.343199, 0.379140,
		-0.023516, -0.714070, 0.699680,
		9.741140, 14.137781, 16.281418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.424672, 14.230708, 15.784169>,  <9.757603, 14.637630, 15.791642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.424672, 14.230708, 15.784169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.158798, 13.996402, 15.969674>,  <9.999274, 13.855818, 16.080976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.158798, 13.996402, 15.969674>,  <10.424672, 14.230708, 15.784169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.158798, 13.996402, 15.969674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364938, -0.796189, -0.482601,
		0.651932, -0.151533, 0.742982,
		-0.664684, -0.585765, 0.463761,
		9.959393, 13.820672, 16.108803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.799499, 13.537185, 15.923959>,  <10.424672, 14.230708, 15.784169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.799499, 13.537185, 15.923959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.405461, 13.468423, 15.926541>,  <10.169039, 13.427166, 15.928091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.405461, 13.468423, 15.926541>,  <10.799499, 13.537185, 15.923959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.405461, 13.468423, 15.926541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151430, -0.884351, -0.441579,
		0.081619, -0.434019, 0.897199,
		-0.985093, -0.171905, 0.006457,
		10.109934, 13.416852, 15.928478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.764327, 12.866010, 16.233919>,  <10.799499, 13.537185, 15.923959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.764327, 12.866010, 16.233919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.426702, 12.911020, 16.024195>,  <10.224128, 12.938026, 15.898360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.426702, 12.911020, 16.024195>,  <10.764327, 12.866010, 16.233919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.426702, 12.911020, 16.024195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121407, -0.912248, -0.391234,
		-0.522324, -0.393880, 0.756331,
		-0.844060, 0.112527, -0.524309,
		10.173485, 12.944778, 15.866902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.380143, 12.301417, 16.390644>,  <10.764327, 12.866010, 16.233919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.380143, 12.301417, 16.390644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.230594, 12.421059, 16.039473>,  <10.140863, 12.492844, 15.828771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.230594, 12.421059, 16.039473>,  <10.380143, 12.301417, 16.390644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.230594, 12.421059, 16.039473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053675, -0.951964, -0.301470,
		-0.925924, -0.065590, 0.371971,
		-0.373876, 0.299104, -0.877926,
		10.118431, 12.510790, 15.776094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.668000, 11.997936, 16.324976>,  <10.380143, 12.301417, 16.390644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.668000, 11.997936, 16.324976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.799244, 12.063469, 15.952847>,  <9.877990, 12.102789, 15.729568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.799244, 12.063469, 15.952847>,  <9.668000, 11.997936, 16.324976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.799244, 12.063469, 15.952847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280505, -0.923526, -0.261565,
		-0.902032, 0.346782, -0.257061,
		0.328109, 0.163833, -0.930324,
		9.897676, 12.112618, 15.673749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.194633, 11.617713, 16.018774>,  <9.668000, 11.997936, 16.324976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.194633, 11.617713, 16.018774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.486104, 11.710367, 15.760977>,  <9.660987, 11.765960, 15.606298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.486104, 11.710367, 15.760977>,  <9.194633, 11.617713, 16.018774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.486104, 11.710367, 15.760977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102897, -0.893354, -0.437415,
		-0.677081, 0.385051, -0.627134,
		0.728679, 0.231635, -0.644494,
		9.704708, 11.779858, 15.567629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.897722, 11.428275, 15.392145>,  <9.194633, 11.617713, 16.018774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.897722, 11.428275, 15.392145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.291398, 11.451709, 15.325286>,  <9.527603, 11.465769, 15.285171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.291398, 11.451709, 15.325286>,  <8.897722, 11.428275, 15.392145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.291398, 11.451709, 15.325286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037843, -0.852366, -0.521574,
		-0.173028, 0.519654, -0.836673,
		0.984190, 0.058585, -0.167148,
		9.586655, 11.469284, 15.275142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.995677, 11.310665, 14.621627>,  <8.897722, 11.428275, 15.392145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.995677, 11.310665, 14.621627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.347979, 11.233487, 14.794621>,  <9.559360, 11.187181, 14.898418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.347979, 11.233487, 14.794621>,  <8.995677, 11.310665, 14.621627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.347979, 11.233487, 14.794621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043148, -0.876745, -0.479015,
		0.471604, 0.440556, -0.763872,
		0.880754, -0.192946, 0.432485,
		9.612205, 11.175604, 14.924367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.477886, 10.947416, 14.087486>,  <8.995677, 11.310665, 14.621627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.477886, 10.947416, 14.087486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.641621, 10.867499, 14.443582>,  <9.739861, 10.819550, 14.657239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.641621, 10.867499, 14.443582>,  <9.477886, 10.947416, 14.087486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.641621, 10.867499, 14.443582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242418, -0.916842, -0.317228,
		0.879589, 0.345663, -0.326864,
		0.409337, -0.199793, 0.890239,
		9.764421, 10.807562, 14.710653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.213448, 10.615545, 13.999014>,  <9.477886, 10.947416, 14.087486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.213448, 10.615545, 13.999014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.089125, 10.523438, 14.367877>,  <10.014531, 10.468174, 14.589195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.089125, 10.523438, 14.367877>,  <10.213448, 10.615545, 13.999014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.089125, 10.523438, 14.367877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065068, -0.973089, -0.221054,
		0.948243, -0.008702, 0.317426,
		-0.310808, -0.230267, 0.922158,
		9.995882, 10.454358, 14.644525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.654737, 9.958176, 14.215537>,  <10.213448, 10.615545, 13.999014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.654737, 9.958176, 14.215537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.315855, 9.988521, 14.425864>,  <10.112525, 10.006728, 14.552060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.315855, 9.988521, 14.425864>,  <10.654737, 9.958176, 14.215537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.315855, 9.988521, 14.425864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197235, -0.963929, -0.178717,
		0.493293, -0.255120, 0.831610,
		-0.847207, 0.075863, 0.525818,
		10.061693, 10.011279, 14.583610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.567718, 9.234813, 14.600050>,  <10.654737, 9.958176, 14.215537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.567718, 9.234813, 14.600050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.197726, 9.376122, 14.656072>,  <9.975732, 9.460907, 14.689685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.197726, 9.376122, 14.656072>,  <10.567718, 9.234813, 14.600050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.197726, 9.376122, 14.656072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361029, -0.931947, -0.033651,
		0.118636, -0.081691, 0.989572,
		-0.924978, 0.353272, 0.140055,
		9.920233, 9.482103, 14.698089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.349387, 8.901612, 15.221984>,  <10.567718, 9.234813, 14.600050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.349387, 8.901612, 15.221984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.038886, 8.993421, 14.987121>,  <9.852586, 9.048506, 14.846203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.038886, 8.993421, 14.987121>,  <10.349387, 8.901612, 15.221984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.038886, 8.993421, 14.987121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420447, -0.882467, 0.210896,
		-0.469742, 0.410577, 0.781518,
		-0.776252, 0.229520, -0.587157,
		9.806010, 9.062277, 14.810973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.837955, 8.536937, 15.609372>,  <10.349387, 8.901612, 15.221984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.837955, 8.536937, 15.609372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.660173, 8.662791, 15.273881>,  <9.553504, 8.738304, 15.072586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.660173, 8.662791, 15.273881>,  <9.837955, 8.536937, 15.609372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.660173, 8.662791, 15.273881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688474, -0.718998, 0.095111,
		-0.573118, 0.619715, 0.536181,
		-0.444455, 0.314636, -0.838728,
		9.526837, 8.757182, 15.022263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.072845, 8.622660, 15.737260>,  <9.837955, 8.536937, 15.609372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.072845, 8.622660, 15.737260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.122356, 8.588787, 15.341784>,  <9.152063, 8.568463, 15.104498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.122356, 8.588787, 15.341784>,  <9.072845, 8.622660, 15.737260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.122356, 8.588787, 15.341784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268558, -0.962028, 0.048776,
		-0.955278, 0.259483, -0.141821,
		0.123779, -0.084681, -0.988690,
		9.159490, 8.563383, 15.045177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.466500, 8.428434, 15.436181>,  <9.072845, 8.622660, 15.737260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.466500, 8.428434, 15.436181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.756136, 8.316752, 15.183915>,  <8.929917, 8.249743, 15.032556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.756136, 8.316752, 15.183915>,  <8.466500, 8.428434, 15.436181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.756136, 8.316752, 15.183915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424658, -0.901001, -0.088677,
		-0.543471, 0.332027, -0.770971,
		0.724089, -0.279206, -0.630666,
		8.973363, 8.232990, 14.994716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.141927, 8.152897, 14.755650>,  <8.466500, 8.428434, 15.436181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.141927, 8.152897, 14.755650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.503260, 7.982131, 14.738987>,  <8.720059, 7.879672, 14.728990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.503260, 7.982131, 14.738987>,  <8.141927, 8.152897, 14.755650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.503260, 7.982131, 14.738987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426143, -0.882118, -0.200676,
		0.048926, 0.199028, -0.978772,
		0.903332, -0.426915, -0.041656,
		8.774260, 7.854057, 14.726490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.163609, 7.735917, 14.163505>,  <8.141927, 8.152897, 14.755650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.163609, 7.735917, 14.163505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.449759, 7.588726, 14.401103>,  <8.621449, 7.500411, 14.543662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.449759, 7.588726, 14.401103>,  <8.163609, 7.735917, 14.163505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.449759, 7.588726, 14.401103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393768, -0.914560, -0.092336,
		0.577223, -0.167842, -0.799151,
		0.715374, -0.367979, 0.593997,
		8.664371, 7.478332, 14.579302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<14.162859, 21.126080, 30.436417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.203483, 20.733320, 30.372467>,  <14.227857, 20.497665, 30.334097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.203483, 20.733320, 30.372467>,  <14.162859, 21.126080, 30.436417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.203483, 20.733320, 30.372467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201198, -0.137112, 0.969907,
		-0.974272, -0.130669, 0.183631,
		0.101559, -0.981899, -0.159875,
		14.233951, 20.438751, 30.324505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.746962, 20.756924, 31.071684>,  <14.162859, 21.126080, 30.436417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.746962, 20.756924, 31.071684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.006240, 20.488569, 30.927599>,  <14.161807, 20.327557, 30.841148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.006240, 20.488569, 30.927599>,  <13.746962, 20.756924, 31.071684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.006240, 20.488569, 30.927599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168557, -0.334900, 0.927055,
		-0.742585, -0.661628, -0.103997,
		0.648194, -0.670888, -0.360214,
		14.200698, 20.287304, 30.819534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.600868, 20.154581, 31.457880>,  <13.746962, 20.756924, 31.071684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.600868, 20.154581, 31.457880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.969992, 20.096292, 31.315226>,  <14.191466, 20.061319, 31.229633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.969992, 20.096292, 31.315226>,  <13.600868, 20.154581, 31.457880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.969992, 20.096292, 31.315226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248343, -0.482702, 0.839836,
		-0.294531, -0.863576, -0.409253,
		0.922809, -0.145723, -0.356634,
		14.246835, 20.052576, 31.208235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.737898, 19.456217, 31.493917>,  <13.600868, 20.154581, 31.457880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.737898, 19.456217, 31.493917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.099673, 19.626726, 31.487167>,  <14.316738, 19.729031, 31.483118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.099673, 19.626726, 31.487167>,  <13.737898, 19.456217, 31.493917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.099673, 19.626726, 31.487167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266992, -0.534749, 0.801723,
		0.332728, -0.729614, -0.597458,
		0.904438, 0.426271, -0.016875,
		14.371005, 19.754608, 31.482105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.318403, 18.913342, 31.619879>,  <13.737898, 19.456217, 31.493917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.318403, 18.913342, 31.619879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.499733, 19.257408, 31.713352>,  <14.608531, 19.463848, 31.769436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.499733, 19.257408, 31.713352>,  <14.318403, 18.913342, 31.619879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.499733, 19.257408, 31.713352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409388, -0.433806, 0.802630,
		0.791770, -0.268183, -0.548797,
		0.453323, 0.860169, 0.233683,
		14.635730, 19.515459, 31.783457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.939571, 18.706970, 31.824076>,  <14.318403, 18.913342, 31.619879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.939571, 18.706970, 31.824076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.913376, 19.070105, 31.989746>,  <14.897658, 19.287985, 32.089149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.913376, 19.070105, 31.989746>,  <14.939571, 18.706970, 31.824076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.913376, 19.070105, 31.989746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487063, -0.333183, 0.807316,
		0.870908, 0.254600, -0.420354,
		-0.065488, 0.907837, 0.414178,
		14.893729, 19.342455, 32.113998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.622778, 18.892952, 32.060783>,  <14.939571, 18.706970, 31.824076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.622778, 18.892952, 32.060783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.378953, 19.138407, 32.261536>,  <15.232658, 19.285679, 32.381989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.378953, 19.138407, 32.261536>,  <15.622778, 18.892952, 32.060783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.378953, 19.138407, 32.261536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652790, 0.029345, 0.756970,
		0.449776, 0.789044, -0.418463,
		-0.609562, 0.613636, 0.501882,
		15.196084, 19.322498, 32.412102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041729, 19.400948, 32.298496>,  <15.622778, 18.892952, 32.060783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041729, 19.400948, 32.298496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.737533, 19.430328, 32.556568>,  <15.555016, 19.447956, 32.711411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.737533, 19.430328, 32.556568>,  <16.041729, 19.400948, 32.298496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.737533, 19.430328, 32.556568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646443, 0.179561, 0.741532,
		-0.061382, 0.981001, -0.184037,
		-0.760489, 0.073452, 0.645183,
		15.509386, 19.452364, 32.750122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290604, 19.939112, 32.704361>,  <16.041729, 19.400948, 32.298496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290604, 19.939112, 32.704361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.002605, 19.747753, 32.905457>,  <15.829807, 19.632938, 33.026115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.002605, 19.747753, 32.905457>,  <16.290604, 19.939112, 32.704361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.002605, 19.747753, 32.905457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544459, 0.059806, 0.836653,
		-0.430317, 0.876106, 0.217407,
		-0.719994, -0.478395, 0.502739,
		15.786607, 19.604235, 33.056278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339228, 20.308498, 33.363834>,  <16.290604, 19.939112, 32.704361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.339228, 20.308498, 33.363834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.108236, 19.989113, 33.431923>,  <15.969642, 19.797482, 33.472775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.108236, 19.989113, 33.431923>,  <16.339228, 20.308498, 33.363834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.108236, 19.989113, 33.431923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361078, -0.062798, 0.930419,
		-0.732216, 0.598758, 0.324572,
		-0.577479, -0.798464, 0.170217,
		15.934993, 19.749573, 33.482986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.964310, 20.418217, 34.020378>,  <16.339228, 20.308498, 33.363834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.964310, 20.418217, 34.020378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.998204, 20.024551, 33.958103>,  <16.018541, 19.788351, 33.920738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.998204, 20.024551, 33.958103>,  <15.964310, 20.418217, 34.020378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.998204, 20.024551, 33.958103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387292, -0.111433, 0.915198,
		-0.918055, -0.137848, 0.371717,
		0.084736, -0.984165, -0.155689,
		16.023624, 19.729301, 33.911396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.749450, 20.051859, 34.676189>,  <15.964310, 20.418217, 34.020378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.749450, 20.051859, 34.676189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.966434, 19.790058, 34.465527>,  <16.096624, 19.632978, 34.339130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.966434, 19.790058, 34.465527>,  <15.749450, 20.051859, 34.676189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.966434, 19.790058, 34.465527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574655, -0.168198, 0.800925,
		-0.612789, -0.737114, 0.284872,
		0.542458, -0.654501, -0.526657,
		16.129171, 19.593708, 34.307529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.837936, 19.417545, 35.078506>,  <15.749450, 20.051859, 34.676189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.837936, 19.417545, 35.078506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.134123, 19.416954, 34.809669>,  <16.311834, 19.416599, 34.648369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.134123, 19.416954, 34.809669>,  <15.837936, 19.417545, 35.078506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.134123, 19.416954, 34.809669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667449, -0.115737, 0.735607,
		-0.078868, -0.993279, -0.084717,
		0.740467, -0.001472, -0.672091,
		16.356262, 19.416512, 34.608044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.368301, 18.785513, 35.198212>,  <15.837936, 19.417545, 35.078506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.368301, 18.785513, 35.198212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.539831, 19.093559, 35.009308>,  <16.642750, 19.278387, 34.895966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.539831, 19.093559, 35.009308>,  <16.368301, 18.785513, 35.198212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.539831, 19.093559, 35.009308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582514, 0.163857, 0.796133,
		0.690497, -0.616503, -0.378336,
		0.428826, 0.770114, -0.472264,
		16.668478, 19.324593, 34.867630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.142303, 18.015856, 35.416378>,  <16.368301, 18.785513, 35.198212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.142303, 18.015856, 35.416378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.938197, 17.749134, 35.633633>,  <15.815734, 17.589102, 35.763985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.938197, 17.749134, 35.633633>,  <16.142303, 18.015856, 35.416378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.938197, 17.749134, 35.633633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261545, -0.481317, -0.836617,
		0.819283, -0.568952, 0.071199,
		-0.510264, -0.666805, 0.543141,
		15.785118, 17.549093, 35.796574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.246824, 17.325644, 35.184784>,  <16.142303, 18.015856, 35.416378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.246824, 17.325644, 35.184784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.897153, 17.266754, 35.369884>,  <15.687350, 17.231421, 35.480946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.897153, 17.266754, 35.369884>,  <16.246824, 17.325644, 35.184784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.897153, 17.266754, 35.369884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404910, -0.305055, -0.861968,
		0.268067, -0.940886, 0.207061,
		-0.874179, -0.147224, 0.462749,
		15.634899, 17.222588, 35.508709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.095671, 16.636196, 35.045322>,  <16.246824, 17.325644, 35.184784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.095671, 16.636196, 35.045322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.750929, 16.824688, 35.120316>,  <15.544084, 16.937782, 35.165310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.750929, 16.824688, 35.120316>,  <16.095671, 16.636196, 35.045322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.750929, 16.824688, 35.120316> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343605, -0.270654, -0.899267,
		-0.373022, -0.839456, 0.395182,
		-0.861853, 0.471233, 0.187481,
		15.492373, 16.966057, 35.176559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.501592, 16.170052, 34.797668>,  <16.095671, 16.636196, 35.045322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.501592, 16.170052, 34.797668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.319781, 16.524387, 34.834972>,  <15.210695, 16.736988, 34.857357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.319781, 16.524387, 34.834972>,  <15.501592, 16.170052, 34.797668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.319781, 16.524387, 34.834972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369141, -0.092043, -0.924804,
		-0.810642, -0.454775, 0.368834,
		-0.454527, 0.885837, 0.093262,
		15.183423, 16.790138, 34.862949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.966043, 16.115826, 34.316952>,  <15.501592, 16.170052, 34.797668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.966043, 16.115826, 34.316952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.951663, 16.502983, 34.416462>,  <14.943034, 16.735277, 34.476166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.951663, 16.502983, 34.416462>,  <14.966043, 16.115826, 34.316952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.951663, 16.502983, 34.416462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634056, 0.170321, -0.754297,
		-0.772451, -0.184853, 0.607576,
		-0.035952, 0.967895, 0.248772,
		14.940878, 16.793352, 34.491093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.257812, 16.226866, 34.402874>,  <14.966043, 16.115826, 34.316952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.257812, 16.226866, 34.402874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.462001, 16.557758, 34.308971>,  <14.584515, 16.756294, 34.252632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.462001, 16.557758, 34.308971>,  <14.257812, 16.226866, 34.402874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.462001, 16.557758, 34.308971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522956, 0.081946, -0.848412,
		-0.682594, 0.555856, 0.474436,
		0.510473, 0.827230, -0.234753,
		14.615143, 16.805927, 34.238544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.889202, 16.586054, 33.993351>,  <14.257812, 16.226866, 34.402874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.889202, 16.586054, 33.993351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.222281, 16.775248, 33.878181>,  <14.422129, 16.888763, 33.809078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.222281, 16.775248, 33.878181>,  <13.889202, 16.586054, 33.993351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.222281, 16.775248, 33.878181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352136, 0.051045, -0.934556,
		-0.427333, 0.879591, 0.209060,
		0.832699, 0.472984, -0.287923,
		14.472091, 16.917143, 33.791805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.659197, 17.098185, 33.537270>,  <13.889202, 16.586054, 33.993351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.659197, 17.098185, 33.537270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.037302, 17.002024, 33.449013>,  <14.264165, 16.944326, 33.396057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.037302, 17.002024, 33.449013>,  <13.659197, 17.098185, 33.537270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.037302, 17.002024, 33.449013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199809, 0.108146, -0.973848,
		0.257978, 0.964630, 0.054192,
		0.945264, -0.240403, -0.220641,
		14.320881, 16.929903, 33.382820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.812567, 17.605326, 32.991123>,  <13.659197, 17.098185, 33.537270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.812567, 17.605326, 32.991123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.081739, 17.309589, 32.981831>,  <14.243243, 17.132149, 32.976257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.081739, 17.309589, 32.981831>,  <13.812567, 17.605326, 32.991123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.081739, 17.309589, 32.981831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077076, -0.038852, -0.996268,
		0.735677, 0.672211, -0.083130,
		0.672932, -0.739339, -0.023229,
		14.283619, 17.087788, 32.974861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.283312, 17.701174, 32.491833>,  <13.812567, 17.605326, 32.991123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.283312, 17.701174, 32.491833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.303839, 17.309273, 32.569241>,  <14.316154, 17.074131, 32.615685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.303839, 17.309273, 32.569241>,  <14.283312, 17.701174, 32.491833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.303839, 17.309273, 32.569241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184965, -0.199743, -0.962232,
		0.981404, 0.013585, -0.191470,
		0.051317, -0.979754, 0.193516,
		14.319234, 17.015347, 32.627296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.710189, 17.505426, 32.006721>,  <14.283312, 17.701174, 32.491833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.710189, 17.505426, 32.006721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.548049, 17.165915, 32.142521>,  <14.450766, 16.962208, 32.224003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.548049, 17.165915, 32.142521>,  <14.710189, 17.505426, 32.006721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.548049, 17.165915, 32.142521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371330, -0.186486, -0.909581,
		0.835348, -0.494765, -0.239586,
		-0.405349, -0.848782, 0.339502,
		14.426444, 16.911280, 32.244373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.987116, 16.988661, 31.576971>,  <14.710189, 17.505426, 32.006721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.987116, 16.988661, 31.576971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.665238, 16.834677, 31.757757>,  <14.472112, 16.742287, 31.866228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.665238, 16.834677, 31.757757>,  <14.987116, 16.988661, 31.576971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.665238, 16.834677, 31.757757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374600, -0.261380, -0.889582,
		0.460590, -0.885147, 0.066124,
		-0.804694, -0.384962, 0.451965,
		14.423830, 16.719189, 31.893347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.793109, 16.321447, 31.226068>,  <14.987116, 16.988661, 31.576971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.793109, 16.321447, 31.226068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.447943, 16.407450, 31.409000>,  <14.240843, 16.459051, 31.518759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.447943, 16.407450, 31.409000>,  <14.793109, 16.321447, 31.226068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.447943, 16.407450, 31.409000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503853, -0.296469, -0.811319,
		-0.038854, -0.930526, 0.364159,
		-0.862915, 0.215005, 0.457330,
		14.189068, 16.471951, 31.546200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.284918, 15.834623, 30.981169>,  <14.793109, 16.321447, 31.226068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.284918, 15.834623, 30.981169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.054798, 16.121525, 31.138435>,  <13.916726, 16.293665, 31.232796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.054798, 16.121525, 31.138435>,  <14.284918, 15.834623, 30.981169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.054798, 16.121525, 31.138435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595619, -0.037915, -0.802372,
		-0.560596, -0.695781, 0.449022,
		-0.575300, 0.717252, 0.393165,
		13.882208, 16.336700, 31.256386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.837800, 15.273305, 31.079229>,  <14.284918, 15.834623, 30.981169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.837800, 15.273305, 31.079229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.993705, 14.932336, 30.939823>,  <14.087248, 14.727755, 30.856180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.993705, 14.932336, 30.939823>,  <13.837800, 15.273305, 31.079229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.993705, 14.932336, 30.939823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493869, -0.125947, 0.860367,
		-0.777290, -0.507458, 0.371896,
		0.389761, -0.852422, -0.348515,
		14.110633, 14.676609, 30.835268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.691651, 14.710230, 31.600334>,  <13.837800, 15.273305, 31.079229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.691651, 14.710230, 31.600334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.995753, 14.611838, 31.359833>,  <14.178214, 14.552803, 31.215532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.995753, 14.611838, 31.359833>,  <13.691651, 14.710230, 31.600334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.995753, 14.611838, 31.359833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583999, -0.146593, 0.798408,
		-0.284532, -0.958125, 0.032204,
		0.760254, -0.245980, -0.601255,
		14.223829, 14.538045, 31.179457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.928953, 14.184581, 31.909882>,  <13.691651, 14.710230, 31.600334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.928953, 14.184581, 31.909882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.215469, 14.322465, 31.667194>,  <14.387379, 14.405195, 31.521582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.215469, 14.322465, 31.667194>,  <13.928953, 14.184581, 31.909882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.215469, 14.322465, 31.667194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687308, -0.198288, 0.698777,
		0.120571, -0.917527, -0.378954,
		0.716289, 0.344710, -0.606716,
		14.430356, 14.425878, 31.485180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.396317, 13.537395, 31.956293>,  <13.928953, 14.184581, 31.909882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.396317, 13.537395, 31.956293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.622471, 13.834641, 31.813116>,  <14.758163, 14.012989, 31.727211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.622471, 13.834641, 31.813116>,  <14.396317, 13.537395, 31.956293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.622471, 13.834641, 31.813116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580912, -0.050667, 0.812388,
		0.585562, -0.667243, -0.460330,
		0.565384, 0.743115, -0.357941,
		14.792086, 14.057576, 31.705734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086789, 13.306288, 31.878485>,  <14.396317, 13.537395, 31.956293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086789, 13.306288, 31.878485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.083290, 13.700790, 31.944483>,  <15.081191, 13.937491, 31.984081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.083290, 13.700790, 31.944483>,  <15.086789, 13.306288, 31.878485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.083290, 13.700790, 31.944483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679351, -0.115214, 0.724712,
		0.733761, 0.118427, -0.669006,
		-0.008747, 0.986256, 0.164993,
		15.080667, 13.996667, 31.993980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.787871, 13.555789, 31.951763>,  <15.086789, 13.306288, 31.878485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.787871, 13.555789, 31.951763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.554380, 13.824689, 32.133904>,  <15.414286, 13.986029, 32.243187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.554380, 13.824689, 32.133904>,  <15.787871, 13.555789, 31.951763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.554380, 13.824689, 32.133904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580814, -0.046168, 0.812726,
		0.567377, 0.738884, -0.363502,
		-0.583728, 0.672249, 0.455349,
		15.379262, 14.026363, 32.270508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318008, 14.016248, 32.283550>,  <15.787871, 13.555789, 31.951763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318008, 14.016248, 32.283550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.990261, 14.130085, 32.482605>,  <15.793612, 14.198387, 32.602039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.990261, 14.130085, 32.482605>,  <16.318008, 14.016248, 32.283550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.990261, 14.130085, 32.482605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545704, 0.121275, 0.829156,
		0.175621, 0.950947, -0.254672,
		-0.819368, 0.284593, 0.497637,
		15.744451, 14.215463, 32.631897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.585077, 14.794461, 32.322876>,  <16.318008, 14.016248, 32.283550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.585077, 14.794461, 32.322876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.929131, 14.988594, 32.260113>,  <17.135563, 15.105074, 32.222454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.929131, 14.988594, 32.260113>,  <16.585077, 14.794461, 32.322876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929131, 14.988594, 32.260113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290854, 0.213984, -0.932531,
		-0.419012, 0.847740, 0.325216,
		0.860135, 0.485332, -0.156906,
		17.187172, 15.134193, 32.213039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.392536, 15.401425, 31.926880>,  <16.585077, 14.794461, 32.322876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.392536, 15.401425, 31.926880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.770983, 15.291940, 31.857662>,  <16.998051, 15.226249, 31.816132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.770983, 15.291940, 31.857662>,  <16.392536, 15.401425, 31.926880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.770983, 15.291940, 31.857662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157828, 0.076848, -0.984472,
		0.282761, 0.958736, 0.029508,
		0.946117, -0.273713, -0.173045,
		17.054817, 15.209826, 31.805748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.542154, 15.882027, 31.458250>,  <16.392536, 15.401425, 31.926880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.542154, 15.882027, 31.458250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.817030, 15.593616, 31.422722>,  <16.981955, 15.420568, 31.401405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.817030, 15.593616, 31.422722>,  <16.542154, 15.882027, 31.458250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.817030, 15.593616, 31.422722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165947, 0.274826, -0.947065,
		0.707271, 0.636073, 0.308510,
		0.687189, -0.721028, -0.088822,
		17.023188, 15.377307, 31.396074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.218409, 16.212521, 31.275064>,  <16.542154, 15.882027, 31.458250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.218409, 16.212521, 31.275064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.196051, 15.830966, 31.157095>,  <17.182636, 15.602034, 31.086313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.196051, 15.830966, 31.157095>,  <17.218409, 16.212521, 31.275064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.196051, 15.830966, 31.157095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282713, 0.268175, -0.920954,
		0.957575, -0.134853, 0.254686,
		-0.055893, -0.953885, -0.294922,
		17.179283, 15.544801, 31.068619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.791769, 16.106041, 30.808126>,  <17.218409, 16.212521, 31.275064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.791769, 16.106041, 30.808126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.556145, 15.791555, 30.733433>,  <17.414770, 15.602863, 30.688616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.556145, 15.791555, 30.733433>,  <17.791769, 16.106041, 30.808126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.556145, 15.791555, 30.733433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045656, 0.198333, -0.979071,
		0.806797, -0.585259, -0.080936,
		-0.589062, -0.786216, -0.186735,
		17.379427, 15.555691, 30.677412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.009113, 15.746924, 30.160151>,  <17.791769, 16.106041, 30.808126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.009113, 15.746924, 30.160151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.650200, 15.578331, 30.212658>,  <17.434851, 15.477175, 30.244162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.650200, 15.578331, 30.212658>,  <18.009113, 15.746924, 30.160151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.650200, 15.578331, 30.212658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135318, -0.020437, -0.990592,
		0.420202, -0.906605, -0.038697,
		-0.897284, -0.421485, 0.131268,
		17.381014, 15.451885, 30.252039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028440, 15.212021, 29.726830>,  <18.009113, 15.746924, 30.160151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.028440, 15.212021, 29.726830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.640390, 15.285902, 29.789743>,  <17.407560, 15.330231, 29.827492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.640390, 15.285902, 29.789743>,  <18.028440, 15.212021, 29.726830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.640390, 15.285902, 29.789743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141245, 0.097074, -0.985204,
		-0.197239, -0.977988, -0.068085,
		-0.970127, 0.184704, 0.157283,
		17.349352, 15.341313, 29.836927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<16.852875, 22.859421, 29.553055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.131685, 23.146109, 29.544357>,  <17.298971, 23.318121, 29.539139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.131685, 23.146109, 29.544357>,  <16.852875, 22.859421, 29.553055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.131685, 23.146109, 29.544357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674481, -0.665638, -0.319377,
		-0.243375, 0.207949, -0.947378,
		0.697025, 0.716717, -0.021742,
		17.340794, 23.361124, 29.537834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.271580, 22.899662, 28.809706>,  <16.852875, 22.859421, 29.553055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.271580, 22.899662, 28.809706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.459116, 23.004976, 29.146957>,  <17.571638, 23.068165, 29.349308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.459116, 23.004976, 29.146957>,  <17.271580, 22.899662, 28.809706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.459116, 23.004976, 29.146957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663666, -0.734895, -0.139561,
		0.582867, 0.624989, -0.519283,
		0.468842, 0.263285, 0.843130,
		17.599770, 23.083961, 29.399897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.018044, 22.735025, 28.819845>,  <17.271580, 22.899662, 28.809706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.018044, 22.735025, 28.819845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.938780, 22.759083, 29.211174>,  <17.891222, 22.773518, 29.445972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.938780, 22.759083, 29.211174>,  <18.018044, 22.735025, 28.819845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.938780, 22.759083, 29.211174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680027, -0.710390, 0.181411,
		0.705901, 0.701234, 0.099872,
		-0.198160, 0.060143, 0.978323,
		17.879332, 22.777126, 29.504671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.101435, 22.026964, 28.815083>,  <18.018044, 22.735025, 28.819845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.101435, 22.026964, 28.815083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.009726, 21.964418, 29.199371>,  <17.954700, 21.926891, 29.429945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.009726, 21.964418, 29.199371>,  <18.101435, 22.026964, 28.815083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.009726, 21.964418, 29.199371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884369, -0.378842, -0.272710,
		0.406604, -0.912156, -0.051428,
		-0.229271, -0.156367, 0.960721,
		17.940945, 21.917509, 29.487587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.925877, 21.253166, 28.876474>,  <18.101435, 22.026964, 28.815083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.925877, 21.253166, 28.876474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.763151, 21.499290, 29.146555>,  <17.665516, 21.646965, 29.308603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.763151, 21.499290, 29.146555>,  <17.925877, 21.253166, 28.876474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.763151, 21.499290, 29.146555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888528, -0.438199, -0.136013,
		0.212183, -0.655268, 0.724985,
		-0.406812, 0.615309, 0.675202,
		17.641108, 21.683884, 29.349115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.532270, 20.781988, 29.184250>,  <17.925877, 21.253166, 28.876474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.532270, 20.781988, 29.184250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.400267, 21.153093, 29.253931>,  <17.321064, 21.375757, 29.295740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.400267, 21.153093, 29.253931>,  <17.532270, 20.781988, 29.184250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.400267, 21.153093, 29.253931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943968, -0.323523, -0.065249,
		-0.004177, -0.185975, 0.982546,
		-0.330011, 0.927764, 0.174203,
		17.301264, 21.431423, 29.306192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.248806, 21.108461, 29.915806>,  <17.532270, 20.781988, 29.184250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.248806, 21.108461, 29.915806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.096832, 21.234770, 29.568027>,  <17.005648, 21.310555, 29.359360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.096832, 21.234770, 29.568027>,  <17.248806, 21.108461, 29.915806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.096832, 21.234770, 29.568027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807162, -0.572277, 0.144873,
		-0.451818, 0.756827, 0.472306,
		-0.379933, 0.315771, -0.869448,
		16.982853, 21.329502, 29.307194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.589314, 20.309170, 29.896620>,  <17.248806, 21.108461, 29.915806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.589314, 20.309170, 29.896620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.717970, 19.964094, 30.052731>,  <17.795164, 19.757050, 30.146397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.717970, 19.964094, 30.052731>,  <17.589314, 20.309170, 29.896620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.717970, 19.964094, 30.052731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407825, -0.245767, -0.879362,
		0.854533, 0.442003, 0.272777,
		0.321641, -0.862689, 0.390276,
		17.814463, 19.705288, 30.169813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.358839, 20.253281, 29.639477>,  <17.589314, 20.309170, 29.896620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.358839, 20.253281, 29.639477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.215879, 19.894691, 29.744246>,  <18.130104, 19.679539, 29.807106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.215879, 19.894691, 29.744246>,  <18.358839, 20.253281, 29.639477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.215879, 19.894691, 29.744246> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379832, -0.395724, -0.836140,
		0.853225, -0.199349, 0.481940,
		-0.357399, -0.896472, 0.261922,
		18.108660, 19.625750, 29.822823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841637, 19.843309, 29.625839>,  <18.358839, 20.253281, 29.639477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.841637, 19.843309, 29.625839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.544281, 19.579184, 29.583212>,  <18.365868, 19.420708, 29.557634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.544281, 19.579184, 29.583212>,  <18.841637, 19.843309, 29.625839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.544281, 19.579184, 29.583212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316850, -0.207340, -0.925536,
		0.589047, -0.721801, 0.363354,
		-0.743391, -0.660313, -0.106570,
		18.321264, 19.381090, 29.551241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.138412, 19.401634, 29.161272>,  <18.841637, 19.843309, 29.625839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.138412, 19.401634, 29.161272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.750734, 19.303194, 29.165142>,  <18.518127, 19.244131, 29.167463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.750734, 19.303194, 29.165142>,  <19.138412, 19.401634, 29.161272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.750734, 19.303194, 29.165142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032726, -0.167613, -0.985310,
		0.244105, -0.954642, 0.170504,
		-0.969196, -0.246099, 0.009673,
		18.459976, 19.229364, 29.168043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032127, 18.742502, 28.952688>,  <19.138412, 19.401634, 29.161272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.032127, 18.742502, 28.952688> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.702677, 18.955359, 28.874233>,  <18.505007, 19.083073, 28.827160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.702677, 18.955359, 28.874233>,  <19.032127, 18.742502, 28.952688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.702677, 18.955359, 28.874233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170365, -0.097717, -0.980524,
		-0.540943, -0.840998, -0.010176,
		-0.823624, 0.532141, -0.196136,
		18.455589, 19.115000, 28.815392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.732458, 18.056755, 28.933477>,  <19.032127, 18.742502, 28.952688>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.732458, 18.056755, 28.933477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.002060, 17.761749, 28.950399>,  <19.163820, 17.584745, 28.960552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.002060, 17.761749, 28.950399>,  <18.732458, 18.056755, 28.933477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.002060, 17.761749, 28.950399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009972, 0.048181, 0.998789,
		-0.738660, -0.673609, 0.025120,
		0.674004, -0.737515, 0.042307,
		19.204262, 17.540495, 28.963091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463467, 17.617325, 29.324759>,  <18.732458, 18.056755, 28.933477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.463467, 17.617325, 29.324759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.857548, 17.556276, 29.355942>,  <19.093996, 17.519648, 29.374653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.857548, 17.556276, 29.355942>,  <18.463467, 17.617325, 29.324759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.857548, 17.556276, 29.355942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102136, -0.157590, 0.982209,
		-0.137605, -0.975642, -0.170845,
		0.985207, -0.152606, 0.077963,
		19.153109, 17.510490, 29.379330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.540442, 17.012508, 29.647415>,  <18.463467, 17.617325, 29.324759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.540442, 17.012508, 29.647415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.881056, 17.212345, 29.711039>,  <19.085424, 17.332247, 29.749212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.881056, 17.212345, 29.711039>,  <18.540442, 17.012508, 29.647415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.881056, 17.212345, 29.711039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112536, -0.122144, 0.986112,
		0.512081, -0.857607, -0.047788,
		0.851533, 0.499591, 0.159059,
		19.136517, 17.362223, 29.758757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.766258, 16.772490, 30.300682>,  <18.540442, 17.012508, 29.647415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.766258, 16.772490, 30.300682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.012938, 17.084341, 30.257116>,  <19.160946, 17.271452, 30.230978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.012938, 17.084341, 30.257116>,  <18.766258, 16.772490, 30.300682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.012938, 17.084341, 30.257116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099759, 0.059838, 0.993211,
		0.780852, -0.623377, -0.040873,
		0.616699, 0.779628, -0.108912,
		19.197947, 17.318230, 30.224443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.391809, 16.434561, 30.635134>,  <18.766258, 16.772490, 30.300682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.391809, 16.434561, 30.635134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.455538, 16.829451, 30.635693>,  <19.493774, 17.066385, 30.636028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.455538, 16.829451, 30.635693>,  <19.391809, 16.434561, 30.635134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.455538, 16.829451, 30.635693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018050, 0.001499, 0.999836,
		0.987062, -0.159319, 0.018058,
		0.159319, 0.987226, 0.001396,
		19.503334, 17.125618, 30.636112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.914398, 16.523048, 31.119064>,  <19.391809, 16.434561, 30.635134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.914398, 16.523048, 31.119064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.733385, 16.876377, 31.070148>,  <19.624777, 17.088375, 31.040798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.733385, 16.876377, 31.070148>,  <19.914398, 16.523048, 31.119064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.733385, 16.876377, 31.070148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021440, 0.147873, 0.988774,
		0.891491, 0.444829, -0.085855,
		-0.452531, 0.883324, -0.122290,
		19.597626, 17.141375, 31.033461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.374655, 17.082310, 31.490704>,  <19.914398, 16.523048, 31.119064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.374655, 17.082310, 31.490704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.996817, 17.209450, 31.457941>,  <19.770113, 17.285734, 31.438284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.996817, 17.209450, 31.457941>,  <20.374655, 17.082310, 31.490704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.996817, 17.209450, 31.457941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006052, 0.232628, 0.972547,
		0.328179, 0.919160, -0.217816,
		-0.944596, 0.317852, -0.081907,
		19.713438, 17.304806, 31.433369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.397797, 17.694670, 31.802753>,  <20.374655, 17.082310, 31.490704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.397797, 17.694670, 31.802753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.024279, 17.553082, 31.823675>,  <19.800169, 17.468128, 31.836227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.024279, 17.553082, 31.823675>,  <20.397797, 17.694670, 31.802753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.024279, 17.553082, 31.823675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055762, 0.288346, 0.955901,
		-0.353442, 0.889697, -0.288994,
		-0.933793, -0.353970, 0.052302,
		19.744141, 17.446890, 31.839365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.985327, 18.182827, 32.273815>,  <20.397797, 17.694670, 31.802753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.985327, 18.182827, 32.273815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.767294, 17.848301, 32.250282>,  <19.636475, 17.647585, 32.236160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.767294, 17.848301, 32.250282>,  <19.985327, 18.182827, 32.273815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767294, 17.848301, 32.250282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247445, 0.093430, 0.964387,
		-0.801036, 0.540227, -0.257869,
		-0.545080, -0.836317, -0.058836,
		19.603769, 17.597406, 32.232632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.344791, 18.343513, 32.670578>,  <19.985327, 18.182827, 32.273815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.344791, 18.343513, 32.670578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.345121, 17.944574, 32.641457>,  <19.345320, 17.705212, 32.623981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.345121, 17.944574, 32.641457>,  <19.344791, 18.343513, 32.670578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.345121, 17.944574, 32.641457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317726, -0.069294, 0.945647,
		-0.948182, 0.022354, -0.316940,
		0.000823, -0.997346, -0.072806,
		19.345369, 17.645370, 32.619614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.818689, 18.162903, 32.936615>,  <19.344791, 18.343513, 32.670578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.818689, 18.162903, 32.936615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.008787, 17.811068, 32.945229>,  <19.122847, 17.599966, 32.950397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.008787, 17.811068, 32.945229>,  <18.818689, 18.162903, 32.936615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.008787, 17.811068, 32.945229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259050, -0.116494, 0.958813,
		-0.840854, -0.461249, -0.283221,
		0.475245, -0.879590, 0.021532,
		19.151361, 17.547190, 32.951687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.313808, 17.553213, 33.149067>,  <18.818689, 18.162903, 32.936615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.313808, 17.553213, 33.149067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.691740, 17.449345, 33.228931>,  <18.918499, 17.387024, 33.276848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.691740, 17.449345, 33.228931>,  <18.313808, 17.553213, 33.149067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.691740, 17.449345, 33.228931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247653, -0.167358, 0.954285,
		-0.214389, -0.951084, -0.222435,
		0.944831, -0.259675, 0.199659,
		18.975189, 17.371443, 33.288830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.214291, 17.014622, 33.438915>,  <18.313808, 17.553213, 33.149067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.214291, 17.014622, 33.438915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.574919, 17.138634, 33.559616>,  <18.791296, 17.213041, 33.632038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.574919, 17.138634, 33.559616>,  <18.214291, 17.014622, 33.438915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.574919, 17.138634, 33.559616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275673, -0.125875, 0.952974,
		0.333434, -0.942357, -0.028018,
		0.901569, 0.310031, 0.301754,
		18.845390, 17.231642, 33.650143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.480297, 16.509193, 33.937870>,  <18.214291, 17.014622, 33.438915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.480297, 16.509193, 33.937870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.652384, 16.865602, 33.995823>,  <18.755636, 17.079449, 34.030594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.652384, 16.865602, 33.995823>,  <18.480297, 16.509193, 33.937870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.652384, 16.865602, 33.995823> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294917, -0.012964, 0.955435,
		0.853192, -0.453775, 0.257200,
		0.430218, 0.891022, 0.144886,
		18.781448, 17.132910, 34.039288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.167837, 16.644848, 34.346981>,  <18.480297, 16.509193, 33.937870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.167837, 16.644848, 34.346981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.051374, 16.274948, 34.445015>,  <18.981497, 16.053009, 34.503834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.051374, 16.274948, 34.445015>,  <19.167837, 16.644848, 34.346981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.051374, 16.274948, 34.445015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646670, 0.001450, -0.762769,
		0.705015, -0.380573, -0.598430,
		-0.291157, -0.924749, 0.245083,
		18.964027, 15.997523, 34.518539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.283501, 16.291780, 33.755241>,  <19.167837, 16.644848, 34.346981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.283501, 16.291780, 33.755241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.033152, 16.060150, 33.964222>,  <18.882942, 15.921172, 34.089611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.033152, 16.060150, 33.964222>,  <19.283501, 16.291780, 33.755241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033152, 16.060150, 33.964222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463791, -0.262229, -0.846247,
		0.627044, -0.771950, -0.104449,
		-0.625871, -0.579076, 0.522453,
		18.845390, 15.886428, 34.120956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.360559, 15.516719, 33.614643>,  <19.283501, 16.291780, 33.755241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.360559, 15.516719, 33.614643> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.988682, 15.577856, 33.748692>,  <18.765554, 15.614538, 33.829121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.988682, 15.577856, 33.748692>,  <19.360559, 15.516719, 33.614643>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.988682, 15.577856, 33.748692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367363, -0.318968, -0.873673,
		-0.026644, -0.935360, 0.352692,
		-0.929696, 0.152844, 0.335118,
		18.709772, 15.623709, 33.849228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.923605, 14.992403, 33.205345>,  <19.360559, 15.516719, 33.614643>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.923605, 14.992403, 33.205345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.656219, 15.225664, 33.389992>,  <18.495789, 15.365621, 33.500778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.656219, 15.225664, 33.389992>,  <18.923605, 14.992403, 33.205345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.656219, 15.225664, 33.389992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631587, -0.117331, -0.766375,
		-0.392753, -0.803843, 0.446745,
		-0.668463, 0.583155, 0.461615,
		18.455681, 15.400610, 33.528477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.398230, 14.603749, 33.131466>,  <18.923605, 14.992403, 33.205345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.398230, 14.603749, 33.131466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.250128, 14.973779, 33.165283>,  <18.161266, 15.195797, 33.185574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.250128, 14.973779, 33.165283>,  <18.398230, 14.603749, 33.131466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.250128, 14.973779, 33.165283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691214, -0.213563, -0.690372,
		-0.620591, -0.314050, 0.718498,
		-0.370256, 0.925075, 0.084541,
		18.139051, 15.251301, 33.190647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.582945, 14.532356, 33.255985>,  <18.398230, 14.603749, 33.131466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.582945, 14.532356, 33.255985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.638132, 14.911360, 33.140614>,  <17.671246, 15.138762, 33.071392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.638132, 14.911360, 33.140614>,  <17.582945, 14.532356, 33.255985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.638132, 14.911360, 33.140614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470946, -0.193423, -0.860696,
		-0.871306, 0.254583, 0.419539,
		0.137970, 0.947510, -0.288426,
		17.679523, 15.195613, 33.054085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.845140, 14.796005, 33.076626>,  <17.582945, 14.532356, 33.255985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.845140, 14.796005, 33.076626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.112665, 15.014010, 32.874378>,  <17.273180, 15.144814, 32.753029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.112665, 15.014010, 32.874378>,  <16.845140, 14.796005, 33.076626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.112665, 15.014010, 32.874378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550408, -0.094169, -0.829568,
		-0.499739, 0.833122, 0.236998,
		0.668814, 0.545013, -0.505617,
		17.313309, 15.177514, 32.722694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.279804, 15.252123, 32.969982>,  <16.845140, 14.796005, 33.076626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.279804, 15.252123, 32.969982> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.011881, 14.965610, 33.048256>,  <15.851127, 14.793701, 33.095219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.011881, 14.965610, 33.048256>,  <16.279804, 15.252123, 32.969982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.011881, 14.965610, 33.048256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203367, 0.076496, 0.976110,
		-0.714140, 0.693604, 0.094431,
		-0.669810, -0.716283, 0.195685,
		15.810938, 14.750725, 33.106960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.971602, 15.487870, 33.523384>,  <16.279804, 15.252123, 32.969982>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.971602, 15.487870, 33.523384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.896487, 15.097103, 33.564110>,  <15.851418, 14.862642, 33.588547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.896487, 15.097103, 33.564110>,  <15.971602, 15.487870, 33.523384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.896487, 15.097103, 33.564110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126445, 0.078755, 0.988842,
		-0.974037, 0.198566, 0.108737,
		-0.187787, -0.976918, 0.101818,
		15.840151, 14.804028, 33.594654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.588644, 15.348954, 34.205734>,  <15.971602, 15.487870, 33.523384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.588644, 15.348954, 34.205734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.718516, 14.986220, 34.098228>,  <15.796440, 14.768580, 34.033726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.718516, 14.986220, 34.098228>,  <15.588644, 15.348954, 34.205734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.718516, 14.986220, 34.098228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073012, -0.259283, 0.963037,
		-0.943002, -0.332302, -0.017974,
		0.324680, -0.906834, -0.268766,
		15.815921, 14.714170, 34.017597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.102653, 14.777665, 34.507092>,  <15.588644, 15.348954, 34.205734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.102653, 14.777665, 34.507092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.465109, 14.619261, 34.447651>,  <15.682583, 14.524219, 34.411987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.465109, 14.619261, 34.447651>,  <15.102653, 14.777665, 34.507092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.465109, 14.619261, 34.447651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054193, -0.239739, 0.969324,
		-0.419490, -0.886397, -0.195776,
		0.906141, -0.396012, -0.148605,
		15.736951, 14.500458, 34.403069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196880, 14.157425, 34.956257>,  <15.102653, 14.777665, 34.507092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.196880, 14.157425, 34.956257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.561131, 14.254407, 34.822407>,  <15.779682, 14.312596, 34.742096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.561131, 14.254407, 34.822407>,  <15.196880, 14.157425, 34.956257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.561131, 14.254407, 34.822407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366875, -0.101712, 0.924693,
		0.190162, -0.964816, -0.181573,
		0.910627, 0.242456, -0.334625,
		15.834319, 14.327144, 34.722019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.598615, 13.830835, 35.449089>,  <15.196880, 14.157425, 34.956257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.598615, 13.830835, 35.449089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.885743, 14.057946, 35.287910>,  <16.058020, 14.194213, 35.191204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.885743, 14.057946, 35.287910>,  <15.598615, 13.830835, 35.449089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.885743, 14.057946, 35.287910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549995, -0.107574, 0.828211,
		0.426892, -0.816124, -0.389493,
		0.717822, 0.567776, -0.402942,
		16.101089, 14.228279, 35.167027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.227983, 13.482700, 35.480721>,  <15.598615, 13.830835, 35.449089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.227983, 13.482700, 35.480721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.298637, 13.876339, 35.473209>,  <16.341030, 14.112522, 35.468700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.298637, 13.876339, 35.473209>,  <16.227983, 13.482700, 35.480721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.298637, 13.876339, 35.473209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525584, -0.078170, 0.847143,
		0.832203, -0.159507, -0.531033,
		0.176637, 0.984097, -0.018781,
		16.351629, 14.171568, 35.467575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.926672, 13.536668, 35.689610>,  <16.227983, 13.482700, 35.480721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.926672, 13.536668, 35.689610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.824755, 13.921759, 35.725910>,  <16.763605, 14.152813, 35.747692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.824755, 13.921759, 35.725910>,  <16.926672, 13.536668, 35.689610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.824755, 13.921759, 35.725910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424393, 0.027002, 0.905075,
		0.868890, 0.269122, -0.415455,
		-0.254794, 0.962728, 0.090751,
		16.748316, 14.210577, 35.753136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.522264, 13.868038, 35.916508>,  <16.926672, 13.536668, 35.689610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.522264, 13.868038, 35.916508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.215389, 14.104753, 36.015469>,  <17.031263, 14.246782, 36.074844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.215389, 14.104753, 36.015469>,  <17.522264, 13.868038, 35.916508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.215389, 14.104753, 36.015469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330038, 0.033469, 0.943374,
		0.549996, 0.805399, -0.220989,
		-0.767189, 0.591787, 0.247405,
		16.985233, 14.282290, 36.089691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<11.816998, 15.637210, 20.541906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.672593, 15.915707, 20.790073>,  <11.585950, 16.082804, 20.938974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.672593, 15.915707, 20.790073>,  <11.816998, 15.637210, 20.541906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.672593, 15.915707, 20.790073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785306, -0.131835, 0.604908,
		0.502955, 0.705597, -0.499168,
		-0.361013, 0.696241, 0.620417,
		11.564289, 16.124578, 20.976198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.358706, 16.118488, 20.835083>,  <11.816998, 15.637210, 20.541906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.358706, 16.118488, 20.835083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.058275, 16.054739, 21.091358>,  <11.878016, 16.016489, 21.245123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.058275, 16.054739, 21.091358>,  <12.358706, 16.118488, 20.835083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.058275, 16.054739, 21.091358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660154, -0.168297, 0.732033,
		-0.008840, 0.972767, 0.231615,
		-0.751078, -0.159373, 0.640689,
		11.832952, 16.006927, 21.283566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.606954, 16.400805, 21.480196>,  <12.358706, 16.118488, 20.835083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.606954, 16.400805, 21.480196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.293865, 16.179426, 21.594069>,  <12.106012, 16.046598, 21.662392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.293865, 16.179426, 21.594069>,  <12.606954, 16.400805, 21.480196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.293865, 16.179426, 21.594069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451194, -0.189534, 0.872067,
		-0.428684, 0.811033, 0.398064,
		-0.782722, -0.553446, 0.284683,
		12.059049, 16.013393, 21.679474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.691010, 16.474430, 22.081858>,  <12.606954, 16.400805, 21.480196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.691010, 16.474430, 22.081858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.442678, 16.161381, 22.063646>,  <12.293680, 15.973551, 22.052719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.442678, 16.161381, 22.063646>,  <12.691010, 16.474430, 22.081858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.442678, 16.161381, 22.063646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184542, -0.202340, 0.961771,
		-0.761917, 0.588691, 0.270045,
		-0.620827, -0.782624, -0.045529,
		12.256431, 15.926594, 22.049988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.325009, 16.448341, 22.628330>,  <12.691010, 16.474430, 22.081858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.325009, 16.448341, 22.628330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.293482, 16.065062, 22.518320>,  <12.274566, 15.835093, 22.452314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.293482, 16.065062, 22.518320>,  <12.325009, 16.448341, 22.628330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.293482, 16.065062, 22.518320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106686, -0.282407, 0.953344,
		-0.991164, 0.045799, 0.124486,
		-0.078818, -0.958201, -0.275026,
		12.269836, 15.777601, 22.435812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.891311, 16.174160, 23.197960>,  <12.325009, 16.448341, 22.628330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.891311, 16.174160, 23.197960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.086503, 15.870728, 23.025249>,  <12.203619, 15.688668, 22.921623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.086503, 15.870728, 23.025249>,  <11.891311, 16.174160, 23.197960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.086503, 15.870728, 23.025249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243681, -0.356607, 0.901915,
		-0.838149, -0.545334, 0.010834,
		0.487982, -0.758579, -0.431777,
		12.232898, 15.643154, 22.895716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.824365, 15.684137, 23.627531>,  <11.891311, 16.174160, 23.197960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.824365, 15.684137, 23.627531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.086698, 15.464325, 23.420494>,  <12.244097, 15.332438, 23.296272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.086698, 15.464325, 23.420494>,  <11.824365, 15.684137, 23.627531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.086698, 15.464325, 23.420494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348711, -0.387574, 0.853338,
		-0.669541, -0.740136, -0.062555,
		0.655831, -0.549532, -0.517591,
		12.283447, 15.299465, 23.265217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.701046, 14.971785, 23.787397>,  <11.824365, 15.684137, 23.627531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.701046, 14.971785, 23.787397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.077834, 15.006106, 23.657579>,  <12.303907, 15.026700, 23.579689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.077834, 15.006106, 23.657579>,  <11.701046, 14.971785, 23.787397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.077834, 15.006106, 23.657579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326863, -0.454767, 0.828461,
		-0.076506, -0.886467, -0.456424,
		0.941970, 0.085806, -0.324546,
		12.360425, 15.031848, 23.560215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.011065, 14.393929, 23.931767>,  <11.701046, 14.971785, 23.787397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.011065, 14.393929, 23.931767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.331949, 14.624578, 23.869848>,  <12.524480, 14.762967, 23.832697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.331949, 14.624578, 23.869848>,  <12.011065, 14.393929, 23.931767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.331949, 14.624578, 23.869848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435654, -0.388067, 0.812164,
		0.408242, -0.718964, -0.562520,
		0.802212, 0.576623, -0.154794,
		12.572613, 14.797565, 23.823410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.559096, 13.947270, 24.051991>,  <12.011065, 14.393929, 23.931767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.559096, 13.947270, 24.051991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.719441, 14.312405, 24.083080>,  <12.815648, 14.531486, 24.101734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.719441, 14.312405, 24.083080>,  <12.559096, 13.947270, 24.051991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.719441, 14.312405, 24.083080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357263, -0.233882, 0.904247,
		0.843607, -0.334710, -0.419877,
		0.400862, 0.912835, 0.077725,
		12.839700, 14.586255, 24.106398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.255385, 13.918462, 24.288397>,  <12.559096, 13.947270, 24.051991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.255385, 13.918462, 24.288397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.141134, 14.287476, 24.392200>,  <13.072583, 14.508884, 24.454483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.141134, 14.287476, 24.392200>,  <13.255385, 13.918462, 24.288397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.141134, 14.287476, 24.392200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377036, -0.140780, 0.915437,
		0.881057, 0.359319, -0.307618,
		-0.285628, 0.922535, 0.259511,
		13.055446, 14.564236, 24.470055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.850863, 14.302711, 24.459011>,  <13.255385, 13.918462, 24.288397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.850863, 14.302711, 24.459011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.555229, 14.472971, 24.667847>,  <13.377849, 14.575127, 24.793148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.555229, 14.472971, 24.667847>,  <13.850863, 14.302711, 24.459011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.555229, 14.472971, 24.667847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433922, -0.291986, 0.852324,
		0.515233, 0.856485, 0.031104,
		-0.739085, 0.425649, 0.522089,
		13.333504, 14.600666, 24.824472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.496777, 14.755872, 24.323963>,  <13.850863, 14.302711, 24.459011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.496777, 14.755872, 24.323963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.894353, 14.770026, 24.282333>,  <15.132898, 14.778519, 24.257355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.894353, 14.770026, 24.282333>,  <14.496777, 14.755872, 24.323963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.894353, 14.770026, 24.282333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083870, -0.367921, -0.926067,
		-0.071061, 0.929184, -0.362723,
		0.993940, 0.035385, -0.104075,
		15.192534, 14.780642, 24.251110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.494272, 15.059634, 23.760540>,  <14.496777, 14.755872, 24.323963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.494272, 15.059634, 23.760540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.877324, 14.944878, 23.750435>,  <15.107155, 14.876023, 23.744371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.877324, 14.944878, 23.750435>,  <14.494272, 15.059634, 23.760540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.877324, 14.944878, 23.750435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065439, -0.131324, -0.989177,
		0.280469, 0.948919, -0.144533,
		0.957630, -0.286892, -0.025264,
		15.164613, 14.858810, 23.742855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.869227, 15.430473, 23.223007>,  <14.494272, 15.059634, 23.760540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.869227, 15.430473, 23.223007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.053262, 15.080671, 23.284407>,  <15.163682, 14.870790, 23.321247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.053262, 15.080671, 23.284407>,  <14.869227, 15.430473, 23.223007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.053262, 15.080671, 23.284407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007574, -0.169011, -0.985585,
		0.887842, 0.454615, -0.071136,
		0.460085, -0.874506, 0.153498,
		15.191287, 14.818319, 23.330456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.359896, 15.416231, 22.662775>,  <14.869227, 15.430473, 23.223007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.359896, 15.416231, 22.662775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.321284, 15.038674, 22.789108>,  <15.298118, 14.812140, 22.864908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.321284, 15.038674, 22.789108>,  <15.359896, 15.416231, 22.662775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.321284, 15.038674, 22.789108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110077, -0.305244, -0.945891,
		0.989224, -0.126072, -0.074436,
		-0.096529, -0.943892, 0.315832,
		15.292326, 14.755507, 22.883858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.750554, 15.091728, 22.246691>,  <15.359896, 15.416231, 22.662775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.750554, 15.091728, 22.246691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.505921, 14.809590, 22.390053>,  <15.359141, 14.640307, 22.476070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.505921, 14.809590, 22.390053>,  <15.750554, 15.091728, 22.246691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.505921, 14.809590, 22.390053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203872, -0.297208, -0.932793,
		0.764463, -0.643549, 0.037967,
		-0.611582, -0.705345, 0.358406,
		15.322447, 14.597987, 22.497574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.838527, 14.424314, 21.784891>,  <15.750554, 15.091728, 22.246691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.838527, 14.424314, 21.784891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.489888, 14.383109, 21.976603>,  <15.280704, 14.358386, 22.091629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.489888, 14.383109, 21.976603>,  <15.838527, 14.424314, 21.784891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.489888, 14.383109, 21.976603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460306, -0.164334, -0.872417,
		0.168634, -0.981011, 0.095815,
		-0.871597, -0.103016, 0.479278,
		15.228409, 14.352204, 22.120386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469807, 13.867893, 21.502232>,  <15.838527, 14.424314, 21.784891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.469807, 13.867893, 21.502232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.196739, 14.095615, 21.685471>,  <15.032899, 14.232249, 21.795414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.196739, 14.095615, 21.685471>,  <15.469807, 13.867893, 21.502232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.196739, 14.095615, 21.685471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589449, -0.058521, -0.805683,
		-0.431873, -0.820039, 0.375528,
		-0.682668, 0.569308, 0.458097,
		14.991939, 14.266407, 21.822901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.827572, 13.488553, 21.409424>,  <15.469807, 13.867893, 21.502232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.827572, 13.488553, 21.409424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708013, 13.862941, 21.483849>,  <14.636277, 14.087574, 21.528503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708013, 13.862941, 21.483849>,  <14.827572, 13.488553, 21.409424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.708013, 13.862941, 21.483849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687128, -0.075789, -0.722572,
		-0.662204, -0.343825, 0.665785,
		-0.298898, 0.935970, 0.186064,
		14.618343, 14.143732, 21.539667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.145407, 13.471204, 21.435354>,  <14.827572, 13.488553, 21.409424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.145407, 13.471204, 21.435354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.231761, 13.856726, 21.372776>,  <14.283574, 14.088038, 21.335230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.231761, 13.856726, 21.372776>,  <14.145407, 13.471204, 21.435354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.231761, 13.856726, 21.372776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788293, 0.077492, -0.610400,
		-0.576183, 0.255102, 0.776490,
		0.215886, 0.963804, -0.156446,
		14.296527, 14.145866, 21.325842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479286, 13.698103, 21.416018>,  <14.145407, 13.471204, 21.435354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.479286, 13.698103, 21.416018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.690031, 14.013268, 21.288509>,  <13.816478, 14.202366, 21.212006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.690031, 14.013268, 21.288509>,  <13.479286, 13.698103, 21.416018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.690031, 14.013268, 21.288509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711454, 0.203627, -0.672584,
		-0.465026, 0.581149, 0.667845,
		0.526862, 0.787910, -0.318768,
		13.848090, 14.249640, 21.192879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.976666, 14.207835, 21.389416>,  <13.479286, 13.698103, 21.416018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.976666, 14.207835, 21.389416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.273283, 14.310148, 21.141321>,  <13.451253, 14.371536, 20.992464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.273283, 14.310148, 21.141321>,  <12.976666, 14.207835, 21.389416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.273283, 14.310148, 21.141321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642325, 0.003697, -0.766424,
		-0.193745, 0.966727, 0.167037,
		0.741540, 0.255783, -0.620237,
		13.495745, 14.386883, 20.955250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.835546, 14.919386, 21.212185>,  <12.976666, 14.207835, 21.389416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.835546, 14.919386, 21.212185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.060117, 14.733694, 20.938166>,  <13.194859, 14.622279, 20.773754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.060117, 14.733694, 20.938166>,  <12.835546, 14.919386, 21.212185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.060117, 14.733694, 20.938166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740100, 0.088666, -0.666626,
		0.370208, 0.881265, -0.293798,
		0.561425, -0.464231, -0.685049,
		13.228544, 14.594425, 20.732651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.000365, 15.433768, 20.735254>,  <12.835546, 14.919386, 21.212185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.000365, 15.433768, 20.735254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.083544, 15.104832, 20.523401>,  <13.133451, 14.907470, 20.396290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.083544, 15.104832, 20.523401>,  <13.000365, 15.433768, 20.735254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.083544, 15.104832, 20.523401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718367, 0.239098, -0.653284,
		0.663858, 0.516319, -0.541025,
		0.207945, -0.822342, -0.529633,
		13.145927, 14.858129, 20.364511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.073816, 15.649878, 20.112665>,  <13.000365, 15.433768, 20.735254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.073816, 15.649878, 20.112665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.972579, 15.262990, 20.104359>,  <12.911837, 15.030857, 20.099375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.972579, 15.262990, 20.104359>,  <13.073816, 15.649878, 20.112665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.972579, 15.262990, 20.104359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795203, 0.220212, -0.564941,
		0.550995, -0.126469, -0.824870,
		-0.253093, -0.967219, -0.020767,
		12.896651, 14.972824, 20.098129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.784290, 16.033611, 19.980446>,  <13.073816, 15.649878, 20.112665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.784290, 16.033611, 19.980446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.916096, 15.869623, 20.320644>,  <13.995179, 15.771231, 20.524763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.916096, 15.869623, 20.320644>,  <13.784290, 16.033611, 19.980446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.916096, 15.869623, 20.320644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932892, -0.280072, 0.226432,
		0.145370, -0.868035, -0.474744,
		0.329514, -0.409969, 0.850498,
		14.014950, 15.746633, 20.575794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.558900, 16.028332, 20.047659>,  <13.784290, 16.033611, 19.980446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.558900, 16.028332, 20.047659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.739662, 16.261684, 19.777712>,  <14.848120, 16.401697, 19.615744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.739662, 16.261684, 19.777712>,  <14.558900, 16.028332, 20.047659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.739662, 16.261684, 19.777712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876888, -0.151546, 0.456182,
		0.163856, -0.797933, -0.580047,
		0.451906, 0.583384, -0.674866,
		14.875234, 16.436699, 19.575253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241542, 15.656707, 19.644587>,  <14.558900, 16.028332, 20.047659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.241542, 15.656707, 19.644587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.216138, 16.046215, 19.731983>,  <15.200895, 16.279921, 19.784420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.216138, 16.046215, 19.731983>,  <15.241542, 15.656707, 19.644587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.216138, 16.046215, 19.731983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619418, -0.133195, 0.773680,
		0.782488, 0.184474, -0.594711,
		-0.063511, 0.973770, 0.218490,
		15.197084, 16.338346, 19.797531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.943905, 15.926434, 19.864334>,  <15.241542, 15.656707, 19.644587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.943905, 15.926434, 19.864334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685549, 16.198980, 20.002068>,  <15.530536, 16.362509, 20.084707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.685549, 16.198980, 20.002068>,  <15.943905, 15.926434, 19.864334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.685549, 16.198980, 20.002068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554779, 0.109065, 0.824818,
		0.524449, 0.723770, -0.448452,
		-0.645889, 0.681367, 0.344334,
		15.491782, 16.403391, 20.105368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414015, 16.484888, 20.133102>,  <15.943905, 15.926434, 19.864334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.414015, 16.484888, 20.133102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.054367, 16.529848, 20.302313>,  <15.838578, 16.556824, 20.403839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.054367, 16.529848, 20.302313>,  <16.414015, 16.484888, 20.133102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.054367, 16.529848, 20.302313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437681, 0.240941, 0.866247,
		-0.004556, 0.964009, -0.265831,
		-0.899119, 0.112402, 0.423026,
		15.784632, 16.563568, 20.429220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.502464, 17.035000, 20.577431>,  <16.414015, 16.484888, 20.133102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.502464, 17.035000, 20.577431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168846, 16.877302, 20.731802>,  <15.968675, 16.782684, 20.824425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168846, 16.877302, 20.731802>,  <16.502464, 17.035000, 20.577431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.168846, 16.877302, 20.731802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433589, -0.035882, 0.900396,
		-0.341127, 0.918305, 0.200867,
		-0.834046, -0.394244, 0.385927,
		15.918633, 16.759029, 20.847580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351845, 17.472181, 21.154678>,  <16.502464, 17.035000, 20.577431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.351845, 17.472181, 21.154678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.162128, 17.124184, 21.208580>,  <16.048298, 16.915386, 21.240921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.162128, 17.124184, 21.208580>,  <16.351845, 17.472181, 21.154678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.162128, 17.124184, 21.208580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127982, 0.083303, 0.988272,
		-0.871015, 0.485976, 0.071833,
		-0.474292, -0.869993, 0.134755,
		16.019840, 16.863186, 21.249006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.011000, 17.598656, 21.792526>,  <16.351845, 17.472181, 21.154678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.011000, 17.598656, 21.792526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.030981, 17.207405, 21.711760>,  <16.042969, 16.972654, 21.663300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.030981, 17.207405, 21.711760>,  <16.011000, 17.598656, 21.792526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.030981, 17.207405, 21.711760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202978, -0.188006, 0.960965,
		-0.977908, -0.088986, 0.189148,
		0.049951, -0.978129, -0.201915,
		16.045967, 16.913967, 21.651186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.656325, 17.258305, 22.298803>,  <16.011000, 17.598656, 21.792526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.656325, 17.258305, 22.298803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.917329, 16.993507, 22.151291>,  <16.073931, 16.834629, 22.062784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.917329, 16.993507, 22.151291>,  <15.656325, 17.258305, 22.298803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.917329, 16.993507, 22.151291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332452, -0.187242, 0.924346,
		-0.680961, -0.725746, 0.097903,
		0.652509, -0.661992, -0.368780,
		16.113081, 16.794910, 22.040657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.658022, 16.663273, 22.844461>,  <15.656325, 17.258305, 22.298803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.658022, 16.663273, 22.844461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.997207, 16.622498, 22.636396>,  <16.200718, 16.598032, 22.511557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.997207, 16.622498, 22.636396>,  <15.658022, 16.663273, 22.844461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.997207, 16.622498, 22.636396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474200, -0.292602, 0.830372,
		-0.236843, -0.950786, -0.199779,
		0.847962, -0.101933, -0.520163,
		16.251595, 16.591917, 22.480347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.056976, 16.165186, 23.249216>,  <15.658022, 16.663273, 22.844461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.056976, 16.165186, 23.249216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340332, 16.305183, 23.004042>,  <16.510345, 16.389183, 22.856937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340332, 16.305183, 23.004042>,  <16.056976, 16.165186, 23.249216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.340332, 16.305183, 23.004042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697841, -0.217057, 0.682573,
		0.105856, -0.911257, -0.398001,
		0.708388, 0.349995, -0.612936,
		16.552849, 16.410181, 22.820162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.636820, 15.863882, 23.554527>,  <16.056976, 16.165186, 23.249216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.636820, 15.863882, 23.554527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.750298, 16.163191, 23.314659>,  <16.818384, 16.342775, 23.170738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.750298, 16.163191, 23.314659>,  <16.636820, 15.863882, 23.554527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.750298, 16.163191, 23.314659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787099, 0.175489, 0.591337,
		0.547716, -0.639760, -0.539178,
		0.283694, 0.748272, -0.599673,
		16.835405, 16.387672, 23.134758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.379387, 15.776275, 23.256405>,  <16.636820, 15.863882, 23.554527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.379387, 15.776275, 23.256405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.262268, 16.158030, 23.279776>,  <17.191998, 16.387083, 23.293798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.262268, 16.158030, 23.279776>,  <17.379387, 15.776275, 23.256405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.262268, 16.158030, 23.279776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873610, 0.242176, 0.422087,
		0.388685, 0.174626, -0.904671,
		-0.292797, 0.954388, 0.058425,
		17.174429, 16.444345, 23.297302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046455, 16.101635, 23.112246>,  <17.379387, 15.776275, 23.256405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.046455, 16.101635, 23.112246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823471, 16.380812, 23.292074>,  <17.689680, 16.548317, 23.399971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.823471, 16.380812, 23.292074>,  <18.046455, 16.101635, 23.112246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.823471, 16.380812, 23.292074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802148, 0.313223, 0.508380,
		0.214004, 0.644025, -0.734462,
		-0.557460, 0.697942, 0.449572,
		17.656233, 16.590195, 23.426947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.511612, 16.713520, 23.222303>,  <18.046455, 16.101635, 23.112246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.511612, 16.713520, 23.222303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.215567, 16.768501, 23.485617>,  <18.037939, 16.801491, 23.643604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.215567, 16.768501, 23.485617>,  <18.511612, 16.713520, 23.222303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.215567, 16.768501, 23.485617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651959, 0.386645, 0.652270,
		-0.164864, 0.911928, -0.375776,
		-0.740115, 0.137454, 0.658283,
		17.993532, 16.809738, 23.683102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.725159, 17.318007, 23.529751>,  <18.511612, 16.713520, 23.222303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.725159, 17.318007, 23.529751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.446377, 17.162718, 23.770926>,  <18.279108, 17.069544, 23.915630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.446377, 17.162718, 23.770926>,  <18.725159, 17.318007, 23.529751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.446377, 17.162718, 23.770926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470731, 0.386606, 0.793063,
		-0.540985, 0.836552, -0.086699,
		-0.696956, -0.388223, 0.602939,
		18.237289, 17.046251, 23.951807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.439281, 17.881033, 23.949835>,  <18.725159, 17.318007, 23.529751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.439281, 17.881033, 23.949835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.363543, 17.538975, 24.142860>,  <18.318098, 17.333740, 24.258677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.363543, 17.538975, 24.142860>,  <18.439281, 17.881033, 23.949835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.363543, 17.538975, 24.142860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311656, 0.413705, 0.855406,
		-0.931138, 0.312364, 0.188177,
		-0.189349, -0.855147, 0.482566,
		18.306738, 17.282431, 24.287630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265837, 18.102186, 24.622467>,  <18.439281, 17.881033, 23.949835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265837, 18.102186, 24.622467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.332447, 17.713531, 24.689623>,  <18.372414, 17.480339, 24.729916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.332447, 17.713531, 24.689623>,  <18.265837, 18.102186, 24.622467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.332447, 17.713531, 24.689623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281413, 0.210018, 0.936322,
		-0.945027, -0.108676, 0.308405,
		0.166526, -0.971639, 0.167889,
		18.382404, 17.422039, 24.739990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.067446, 17.955940, 25.342834>,  <18.265837, 18.102186, 24.622467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.067446, 17.955940, 25.342834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.304388, 17.651604, 25.236828>,  <18.446554, 17.469002, 25.173223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.304388, 17.651604, 25.236828>,  <18.067446, 17.955940, 25.342834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.304388, 17.651604, 25.236828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378045, -0.027991, 0.925364,
		-0.711474, -0.648333, 0.271052,
		0.592357, -0.760842, -0.265014,
		18.482096, 17.423351, 25.157324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.880812, 17.427296, 25.898649>,  <18.067446, 17.955940, 25.342834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.880812, 17.427296, 25.898649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.231750, 17.349672, 25.723103>,  <18.442314, 17.303099, 25.617775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.231750, 17.349672, 25.723103>,  <17.880812, 17.427296, 25.898649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.231750, 17.349672, 25.723103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451369, 0.023303, 0.892033,
		-0.162880, -0.980713, 0.108038,
		0.877346, -0.194060, -0.438868,
		18.494955, 17.291454, 25.591442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.137148, 16.697830, 26.002396>,  <17.880812, 17.427296, 25.898649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.137148, 16.697830, 26.002396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.437561, 16.958324, 25.958860>,  <18.617809, 17.114620, 25.932739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.437561, 16.958324, 25.958860>,  <18.137148, 16.697830, 26.002396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.437561, 16.958324, 25.958860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353428, -0.257274, 0.899388,
		0.557711, -0.713935, -0.423386,
		0.751030, 0.651235, -0.108840,
		18.662870, 17.153694, 25.926208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.659592, 16.253750, 26.315170>,  <18.137148, 16.697830, 26.002396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.659592, 16.253750, 26.315170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.814262, 16.622406, 26.302179>,  <18.907064, 16.843599, 26.294386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.814262, 16.622406, 26.302179>,  <18.659592, 16.253750, 26.315170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.814262, 16.622406, 26.302179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250145, -0.070925, 0.965607,
		0.887641, -0.381503, -0.257970,
		0.386678, 0.921643, -0.032475,
		18.930265, 16.898899, 26.292437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.375025, 16.261274, 26.591482>,  <18.659592, 16.253750, 26.315170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.375025, 16.261274, 26.591482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.270988, 16.646669, 26.616932>,  <19.208567, 16.877907, 26.632202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.270988, 16.646669, 26.616932>,  <19.375025, 16.261274, 26.591482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.270988, 16.646669, 26.616932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413884, 0.051709, 0.908860,
		0.872384, 0.262718, -0.412220,
		-0.260090, 0.963486, 0.063624,
		19.192961, 16.935715, 26.636019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.000582, 16.595667, 26.912508>,  <19.375025, 16.261274, 26.591482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.000582, 16.595667, 26.912508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.708559, 16.865593, 26.955667>,  <19.533344, 17.027548, 26.981564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.708559, 16.865593, 26.955667>,  <20.000582, 16.595667, 26.912508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.708559, 16.865593, 26.955667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340398, 0.222177, 0.913656,
		0.592575, 0.703750, -0.391908,
		-0.730058, 0.674814, 0.107898,
		19.489542, 17.068037, 26.988037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.299381, 17.220707, 27.235443>,  <20.000582, 16.595667, 26.912508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.299381, 17.220707, 27.235443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.911118, 17.226471, 27.331453>,  <19.678160, 17.229929, 27.389059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.911118, 17.226471, 27.331453>,  <20.299381, 17.220707, 27.235443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.911118, 17.226471, 27.331453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239359, 0.153205, 0.958768,
		-0.022958, 0.988089, -0.152159,
		-0.970660, 0.014410, 0.240026,
		19.619919, 17.230793, 27.403461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.328165, 17.805622, 27.639311>,  <20.299381, 17.220707, 27.235443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.328165, 17.805622, 27.639311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.995432, 17.596762, 27.714586>,  <19.795792, 17.471445, 27.759750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.995432, 17.596762, 27.714586>,  <20.328165, 17.805622, 27.639311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.995432, 17.596762, 27.714586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053173, 0.262528, 0.963458,
		-0.552476, 0.811441, -0.190615,
		-0.831831, -0.522152, 0.188187,
		19.745882, 17.440117, 27.771042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.949961, 18.182077, 28.166172>,  <20.328165, 17.805622, 27.639311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.949961, 18.182077, 28.166172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.755352, 17.833309, 28.188282>,  <19.638588, 17.624048, 28.201548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.755352, 17.833309, 28.188282>,  <19.949961, 18.182077, 28.166172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.755352, 17.833309, 28.188282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201272, 0.173425, 0.964061,
		-0.850169, 0.457910, -0.259867,
		-0.486521, -0.871919, 0.055276,
		19.609396, 17.571733, 28.204865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.267653, 18.272551, 28.375412>,  <19.949961, 18.182077, 28.166172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.267653, 18.272551, 28.375412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.351755, 17.892019, 28.465542>,  <19.402216, 17.663700, 28.519621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.351755, 17.892019, 28.465542>,  <19.267653, 18.272551, 28.375412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.351755, 17.892019, 28.465542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332503, 0.147154, 0.931551,
		-0.919366, -0.270785, -0.285379,
		0.210255, -0.951326, 0.225326,
		19.414831, 17.606621, 28.533140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
