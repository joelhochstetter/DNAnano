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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.456697, 34.866539, 34.883202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.122986, 34.940628, 35.090919>,  <23.922758, 34.985081, 35.215549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.122986, 34.940628, 35.090919>,  <24.456697, 34.866539, 34.883202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.122986, 34.940628, 35.090919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224077, -0.974492, -0.012404,
		0.503754, -0.126712, 0.854504,
		-0.834279, 0.185226, 0.519297,
		23.872702, 34.996197, 35.246708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.229475, 34.608368, 35.175613>,  <24.456697, 34.866539, 34.883202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.229475, 34.608368, 35.175613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489536, 34.321026, 35.274624>,  <25.645573, 34.148621, 35.334030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.489536, 34.321026, 35.274624>,  <25.229475, 34.608368, 35.175613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.489536, 34.321026, 35.274624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430363, 0.616646, 0.659193,
		-0.626169, -0.322051, 0.710068,
		0.650154, -0.718353, 0.247526,
		25.684582, 34.105518, 35.348881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.041794, 34.466507, 35.945248>,  <25.229475, 34.608368, 35.175613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.041794, 34.466507, 35.945248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409212, 34.401928, 35.800907>,  <25.629663, 34.363182, 35.714302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409212, 34.401928, 35.800907>,  <25.041794, 34.466507, 35.945248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409212, 34.401928, 35.800907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386988, 0.553619, 0.737391,
		0.080726, -0.816971, 0.571001,
		0.918544, -0.161444, -0.360850,
		25.684776, 34.353497, 35.692654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539927, 34.174942, 36.507168>,  <25.041794, 34.466507, 35.945248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539927, 34.174942, 36.507168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767759, 34.341362, 36.223625>,  <25.904459, 34.441216, 36.053501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767759, 34.341362, 36.223625>,  <25.539927, 34.174942, 36.507168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767759, 34.341362, 36.223625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437548, 0.576583, 0.690002,
		0.695791, -0.703171, 0.146369,
		0.569584, 0.416054, -0.708853,
		25.938635, 34.466179, 36.010967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109016, 34.375492, 36.876678>,  <25.539927, 34.174942, 36.507168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109016, 34.375492, 36.876678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120373, 34.579960, 36.533073>,  <26.127188, 34.702641, 36.326912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.120373, 34.579960, 36.533073>,  <26.109016, 34.375492, 36.876678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.120373, 34.579960, 36.533073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335676, 0.804578, 0.489873,
		0.941549, -0.302258, -0.148743,
		0.028392, 0.511169, -0.859011,
		26.128891, 34.733311, 36.275372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.895742, 34.554489, 36.766605>,  <26.109016, 34.375492, 36.876678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.895742, 34.554489, 36.766605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595196, 34.794178, 36.656055>,  <26.414867, 34.937992, 36.589725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.595196, 34.794178, 36.656055>,  <26.895742, 34.554489, 36.766605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595196, 34.794178, 36.656055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468143, 0.779217, 0.416728,
		0.465070, 0.183732, -0.865998,
		-0.751367, 0.599219, -0.276378,
		26.369785, 34.973942, 36.573143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160370, 35.164200, 36.333244>,  <26.895742, 34.554489, 36.766605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160370, 35.164200, 36.333244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824398, 35.242535, 36.535694>,  <26.622814, 35.289536, 36.657166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824398, 35.242535, 36.535694>,  <27.160370, 35.164200, 36.333244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824398, 35.242535, 36.535694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427600, 0.813104, 0.394993,
		-0.334180, 0.548187, -0.766691,
		-0.839930, 0.195839, 0.506128,
		26.572418, 35.301285, 36.687534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818182, 35.836185, 36.147808>,  <27.160370, 35.164200, 36.333244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818182, 35.836185, 36.147808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782898, 35.729988, 36.531834>,  <26.761726, 35.666267, 36.762249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782898, 35.729988, 36.531834>,  <26.818182, 35.836185, 36.147808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782898, 35.729988, 36.531834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415340, 0.866238, 0.277711,
		-0.905379, 0.423252, 0.033859,
		-0.088212, -0.265497, 0.960068,
		26.756433, 35.650337, 36.819855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495876, 36.397457, 36.497250>,  <26.818182, 35.836185, 36.147808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495876, 36.397457, 36.497250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682278, 36.209587, 36.797180>,  <26.794119, 36.096863, 36.977139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.682278, 36.209587, 36.797180>,  <26.495876, 36.397457, 36.497250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682278, 36.209587, 36.797180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185114, 0.880471, 0.436466,
		-0.865201, -0.064592, 0.497248,
		0.466005, -0.469679, 0.749827,
		26.822079, 36.068684, 37.022129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317116, 36.715637, 37.110580>,  <26.495876, 36.397457, 36.497250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317116, 36.715637, 37.110580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655315, 36.525349, 37.207592>,  <26.858236, 36.411175, 37.265800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655315, 36.525349, 37.207592>,  <26.317116, 36.715637, 37.110580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655315, 36.525349, 37.207592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369938, 0.849394, 0.376399,
		-0.385064, -0.228524, 0.894149,
		0.845501, -0.475717, 0.242531,
		26.908966, 36.382633, 37.280350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390530, 37.031578, 37.715397>,  <26.317116, 36.715637, 37.110580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390530, 37.031578, 37.715397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753601, 36.881195, 37.640804>,  <26.971443, 36.790966, 37.596046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753601, 36.881195, 37.640804>,  <26.390530, 37.031578, 37.715397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753601, 36.881195, 37.640804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418407, 0.776301, 0.471479,
		-0.032485, -0.505979, 0.861934,
		0.907679, -0.375955, -0.186486,
		27.025906, 36.768410, 37.584858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797626, 37.102890, 38.319580>,  <26.390530, 37.031578, 37.715397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797626, 37.102890, 38.319580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000553, 37.104343, 37.974880>,  <27.122309, 37.105217, 37.768059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000553, 37.104343, 37.974880>,  <26.797626, 37.102890, 38.319580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000553, 37.104343, 37.974880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492705, 0.819204, 0.293509,
		0.707018, -0.573491, 0.413804,
		0.507315, 0.003633, -0.861753,
		27.152748, 37.105434, 37.716354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615232, 37.056789, 38.239342>,  <26.797626, 37.102890, 38.319580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615232, 37.056789, 38.239342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421371, 37.295628, 37.983658>,  <27.305056, 37.438931, 37.830246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421371, 37.295628, 37.983658>,  <27.615232, 37.056789, 38.239342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421371, 37.295628, 37.983658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460951, 0.795408, 0.393511,
		0.743396, -0.103928, -0.660728,
		-0.484651, 0.597098, -0.639208,
		27.275976, 37.474758, 37.791897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019438, 37.658760, 38.222603>,  <27.615232, 37.056789, 38.239342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019438, 37.658760, 38.222603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165859, 37.287136, 38.243965>,  <28.253712, 37.064163, 38.256783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.165859, 37.287136, 38.243965>,  <28.019438, 37.658760, 38.222603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165859, 37.287136, 38.243965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628600, -0.289173, -0.721970,
		0.686197, 0.230711, -0.689860,
		0.366056, -0.929059, 0.053405,
		28.275677, 37.008419, 38.259987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967379, 37.444126, 37.507179>,  <28.019438, 37.658760, 38.222603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967379, 37.444126, 37.507179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032757, 37.125351, 37.739792>,  <28.071983, 36.934086, 37.879360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032757, 37.125351, 37.739792>,  <27.967379, 37.444126, 37.507179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032757, 37.125351, 37.739792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652351, -0.529499, -0.542281,
		0.740084, -0.290731, -0.606425,
		0.163444, -0.796936, 0.581532,
		28.081789, 36.886269, 37.914253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179037, 36.914207, 36.998138>,  <27.967379, 37.444126, 37.507179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179037, 36.914207, 36.998138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987488, 36.812019, 37.334095>,  <27.872559, 36.750706, 37.535667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.987488, 36.812019, 37.334095>,  <28.179037, 36.914207, 36.998138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987488, 36.812019, 37.334095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602664, -0.600001, -0.526114,
		0.638340, -0.758114, 0.133363,
		-0.478872, -0.255466, 0.839892,
		27.843826, 36.735378, 37.586063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176092, 36.227940, 37.153381>,  <28.179037, 36.914207, 36.998138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176092, 36.227940, 37.153381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847515, 36.366234, 37.334793>,  <27.650368, 36.449211, 37.443642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.847515, 36.366234, 37.334793>,  <28.176092, 36.227940, 37.153381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847515, 36.366234, 37.334793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541057, -0.723824, -0.428178,
		0.180240, -0.597112, 0.781646,
		-0.821444, 0.345740, 0.453534,
		27.601082, 36.469955, 37.470852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945827, 35.681110, 37.518246>,  <28.176092, 36.227940, 37.153381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945827, 35.681110, 37.518246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619915, 35.907097, 37.466179>,  <27.424368, 36.042690, 37.434940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619915, 35.907097, 37.466179>,  <27.945827, 35.681110, 37.518246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619915, 35.907097, 37.466179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527356, -0.815488, -0.238486,
		-0.240882, -0.125673, 0.962384,
		-0.814783, 0.564965, -0.130162,
		27.375481, 36.076588, 37.427132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.346539, 35.432922, 38.049938>,  <27.945827, 35.681110, 37.518246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.346539, 35.432922, 38.049938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202927, 35.622368, 37.728245>,  <27.116760, 35.736034, 37.535229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202927, 35.622368, 37.728245>,  <27.346539, 35.432922, 38.049938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202927, 35.622368, 37.728245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560472, -0.798422, -0.219988,
		-0.746305, 0.371766, 0.552105,
		-0.359028, 0.473617, -0.804230,
		27.095219, 35.764454, 37.486977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529877, 35.464909, 38.068058>,  <27.346539, 35.432922, 38.049938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529877, 35.464909, 38.068058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600538, 35.506538, 37.676556>,  <26.642935, 35.531517, 37.441654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.600538, 35.506538, 37.676556>,  <26.529877, 35.464909, 38.068058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.600538, 35.506538, 37.676556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773450, -0.600324, -0.203433,
		-0.608743, 0.792956, -0.025553,
		0.176654, 0.104074, -0.978755,
		26.653534, 35.537762, 37.382931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.895821, 35.734055, 37.637226>,  <26.529877, 35.464909, 38.068058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.895821, 35.734055, 37.637226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128296, 35.495628, 37.415623>,  <26.267780, 35.352573, 37.282661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128296, 35.495628, 37.415623>,  <25.895821, 35.734055, 37.637226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128296, 35.495628, 37.415623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813525, -0.442285, -0.377571,
		-0.019971, 0.670139, -0.741967,
		0.581186, -0.596068, -0.554008,
		26.302652, 35.316807, 37.249420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.721647, 35.899231, 36.944370>,  <25.895821, 35.734055, 37.637226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.721647, 35.899231, 36.944370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868790, 35.532433, 37.006069>,  <25.957075, 35.312351, 37.043087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.868790, 35.532433, 37.006069>,  <25.721647, 35.899231, 36.944370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.868790, 35.532433, 37.006069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781945, -0.394817, -0.482371,
		0.503234, 0.056831, -0.862279,
		0.367856, -0.917001, 0.154246,
		25.979147, 35.257332, 37.052341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622049, 35.446278, 36.330460>,  <25.721647, 35.899231, 36.944370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622049, 35.446278, 36.330460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638798, 35.205872, 36.649715>,  <25.648848, 35.061630, 36.841270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638798, 35.205872, 36.649715>,  <25.622049, 35.446278, 36.330460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638798, 35.205872, 36.649715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696103, -0.590598, -0.408208,
		0.716720, -0.538498, -0.443095,
		0.041872, -0.601011, 0.798143,
		25.651360, 35.025570, 36.889160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727282, 35.616096, 35.691395>,  <25.622049, 35.446278, 36.330460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727282, 35.616096, 35.691395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051964, 35.456711, 35.862209>,  <26.246773, 35.361080, 35.964699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051964, 35.456711, 35.862209>,  <25.727282, 35.616096, 35.691395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051964, 35.456711, 35.862209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176320, -0.864203, -0.471237,
		0.556818, 0.307210, -0.771736,
		0.811705, -0.398465, 0.427037,
		26.295475, 35.337170, 35.990322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.260424, 35.426685, 35.191761>,  <25.727282, 35.616096, 35.691395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.260424, 35.426685, 35.191761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248911, 35.213844, 35.530235>,  <26.242002, 35.086140, 35.733322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248911, 35.213844, 35.530235>,  <26.260424, 35.426685, 35.191761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248911, 35.213844, 35.530235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193930, -0.827484, -0.526937,
		0.980593, -0.179268, -0.079374,
		-0.028782, -0.532103, 0.846190,
		26.240276, 35.054214, 35.784092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727100, 34.967213, 35.130238>,  <26.260424, 35.426685, 35.191761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727100, 34.967213, 35.130238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462885, 34.822540, 35.393410>,  <26.304356, 34.735737, 35.551315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462885, 34.822540, 35.393410>,  <26.727100, 34.967213, 35.130238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462885, 34.822540, 35.393410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126130, -0.810409, -0.572126,
		0.740122, -0.460896, 0.489688,
		-0.660538, -0.361679, 0.657934,
		26.264723, 34.714035, 35.590790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892698, 34.270855, 35.308372>,  <26.727100, 34.967213, 35.130238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892698, 34.270855, 35.308372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505165, 34.309620, 35.399563>,  <26.272646, 34.332878, 35.454277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505165, 34.309620, 35.399563>,  <26.892698, 34.270855, 35.308372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505165, 34.309620, 35.399563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174660, -0.919851, -0.351238,
		0.175664, -0.380109, 0.908108,
		-0.968832, 0.096910, 0.227975,
		26.214516, 34.338692, 35.467957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513710, 34.371510, 35.820248>,  <26.892698, 34.270855, 35.308372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513710, 34.371510, 35.820248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753010, 34.093758, 35.980213>,  <27.896589, 33.927105, 36.076195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753010, 34.093758, 35.980213>,  <27.513710, 34.371510, 35.820248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753010, 34.093758, 35.980213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735331, 0.277414, -0.618329,
		0.318412, 0.663987, 0.676562,
		0.598250, -0.694380, 0.399918,
		27.932486, 33.885445, 36.100189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094231, 34.725170, 36.080593>,  <27.513710, 34.371510, 35.820248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094231, 34.725170, 36.080593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192654, 34.342594, 36.017754>,  <28.251707, 34.113049, 35.980049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192654, 34.342594, 36.017754>,  <28.094231, 34.725170, 36.080593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192654, 34.342594, 36.017754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910239, 0.283715, -0.301614,
		0.333047, -0.068784, 0.940398,
		0.246059, -0.956438, -0.157100,
		28.266472, 34.055664, 35.970623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742992, 34.558678, 36.387005>,  <28.094231, 34.725170, 36.080593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742992, 34.558678, 36.387005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673082, 34.330078, 36.066296>,  <28.631136, 34.192917, 35.873871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673082, 34.330078, 36.066296>,  <28.742992, 34.558678, 36.387005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673082, 34.330078, 36.066296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911492, 0.214028, -0.351248,
		0.372340, -0.792200, 0.483511,
		-0.174773, -0.571499, -0.801775,
		28.620651, 34.158627, 35.825764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282751, 34.030048, 36.546032>,  <28.742992, 34.558678, 36.387005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282751, 34.030048, 36.546032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519169, 33.824650, 36.297199>,  <29.661018, 33.701408, 36.147900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519169, 33.824650, 36.297199>,  <29.282751, 34.030048, 36.546032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519169, 33.824650, 36.297199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045481, -0.791190, 0.609877,
		-0.805363, -0.332166, -0.490975,
		0.591035, -0.513503, -0.622088,
		29.696482, 33.670601, 36.110573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.940193, 33.327831, 36.186970>,  <29.282751, 34.030048, 36.546032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.940193, 33.327831, 36.186970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330004, 33.298214, 36.271652>,  <29.563890, 33.280441, 36.322460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330004, 33.298214, 36.271652>,  <28.940193, 33.327831, 36.186970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330004, 33.298214, 36.271652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190718, -0.770305, 0.608488,
		0.118024, -0.633362, -0.764802,
		0.974524, -0.074045, 0.211708,
		29.622360, 33.276001, 36.335163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970449, 32.664997, 36.219566>,  <28.940193, 33.327831, 36.186970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970449, 32.664997, 36.219566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311119, 32.760460, 36.406197>,  <29.515520, 32.817738, 36.518177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311119, 32.760460, 36.406197>,  <28.970449, 32.664997, 36.219566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311119, 32.760460, 36.406197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082171, -0.818467, 0.568648,
		0.517593, -0.522641, -0.677454,
		0.851672, 0.238661, 0.466578,
		29.566620, 32.832058, 36.546169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339081, 32.101162, 36.083160>,  <28.970449, 32.664997, 36.219566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339081, 32.101162, 36.083160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515495, 32.291767, 36.387379>,  <29.621344, 32.406128, 36.569908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515495, 32.291767, 36.387379>,  <29.339081, 32.101162, 36.083160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515495, 32.291767, 36.387379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060408, -0.861251, 0.504577,
		0.895455, -0.176592, -0.408627,
		0.441034, 0.476510, 0.760544,
		29.647806, 32.434719, 36.615543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745934, 32.661743, 35.955139>,  <29.339081, 32.101162, 36.083160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745934, 32.661743, 35.955139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004463, 32.694973, 36.258549>,  <30.159582, 32.714909, 36.440594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.004463, 32.694973, 36.258549>,  <29.745934, 32.661743, 35.955139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004463, 32.694973, 36.258549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417931, -0.793161, 0.442977,
		0.638432, -0.603320, -0.477922,
		0.646326, 0.083072, 0.758526,
		30.198360, 32.719894, 36.486107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213772, 32.033325, 35.979012>,  <29.745934, 32.661743, 35.955139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213772, 32.033325, 35.979012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115154, 32.211552, 36.323265>,  <30.055984, 32.318489, 36.529816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115154, 32.211552, 36.323265>,  <30.213772, 32.033325, 35.979012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115154, 32.211552, 36.323265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239381, -0.888524, 0.391436,
		0.939102, -0.109512, 0.325722,
		-0.246544, 0.445569, 0.860629,
		30.041191, 32.345222, 36.581455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057693, 31.536228, 36.436428>,  <30.213772, 32.033325, 35.979012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057693, 31.536228, 36.436428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957621, 31.824905, 36.694595>,  <29.897577, 31.998112, 36.849495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957621, 31.824905, 36.694595>,  <30.057693, 31.536228, 36.436428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957621, 31.824905, 36.694595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366209, -0.687632, 0.626939,
		0.896270, -0.079511, 0.436323,
		-0.250181, 0.721692, 0.645422,
		29.882566, 32.041412, 36.888222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418289, 31.408689, 36.990677>,  <30.057693, 31.536228, 36.436428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418289, 31.408689, 36.990677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109077, 31.617441, 37.134937>,  <29.923550, 31.742693, 37.221493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109077, 31.617441, 37.134937>,  <30.418289, 31.408689, 36.990677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109077, 31.617441, 37.134937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184825, -0.729135, 0.658939,
		0.606850, 0.442722, 0.660099,
		-0.773029, 0.521880, 0.360649,
		29.877169, 31.774006, 37.243134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428480, 31.304008, 37.726303>,  <30.418289, 31.408689, 36.990677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428480, 31.304008, 37.726303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.056881, 31.424961, 37.640953>,  <29.833921, 31.497532, 37.589745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.056881, 31.424961, 37.640953>,  <30.428480, 31.304008, 37.726303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056881, 31.424961, 37.640953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370071, -0.763862, 0.528737,
		-0.003108, 0.570159, 0.821529,
		-0.928998, 0.302381, -0.213373,
		29.778181, 31.515675, 37.576942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081049, 31.347437, 38.318966>,  <30.428480, 31.304008, 37.726303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081049, 31.347437, 38.318966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836374, 31.247110, 38.018852>,  <29.689569, 31.186914, 37.838783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836374, 31.247110, 38.018852>,  <30.081049, 31.347437, 38.318966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836374, 31.247110, 38.018852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248557, -0.839450, 0.483264,
		-0.751039, 0.482095, 0.451137,
		-0.611686, -0.250817, -0.750288,
		29.652868, 31.171865, 37.793766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.453512, 30.935764, 38.285480>,  <30.081049, 31.347437, 38.318966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.453512, 30.935764, 38.285480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082756, 30.917635, 38.136448>,  <28.860302, 30.906757, 38.047028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082756, 30.917635, 38.136448>,  <29.453512, 30.935764, 38.285480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082756, 30.917635, 38.136448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257771, 0.644679, -0.719683,
		0.272814, -0.763109, -0.585864,
		-0.926891, -0.045321, -0.372585,
		28.804689, 30.904039, 38.024673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169685, 30.608744, 37.561615>,  <29.453512, 30.935764, 38.285480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169685, 30.608744, 37.561615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037542, 30.946869, 37.729568>,  <28.958256, 31.149744, 37.830341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037542, 30.946869, 37.729568>,  <29.169685, 30.608744, 37.561615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037542, 30.946869, 37.729568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575965, 0.532981, -0.619836,
		-0.747748, 0.037072, -0.662947,
		-0.330360, 0.845315, 0.419887,
		28.938435, 31.200464, 37.855534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855545, 31.145666, 37.081818>,  <29.169685, 30.608744, 37.561615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855545, 31.145666, 37.081818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996313, 31.334063, 37.405376>,  <29.080774, 31.447100, 37.599514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996313, 31.334063, 37.405376>,  <28.855545, 31.145666, 37.081818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996313, 31.334063, 37.405376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492942, 0.641381, -0.587911,
		-0.795713, 0.605639, -0.006456,
		0.351921, 0.470991, 0.808900,
		29.101889, 31.475361, 37.648045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616554, 31.962973, 37.201622>,  <28.855545, 31.145666, 37.081818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616554, 31.962973, 37.201622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968750, 31.844442, 37.349636>,  <29.180067, 31.773325, 37.438446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.968750, 31.844442, 37.349636>,  <28.616554, 31.962973, 37.201622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968750, 31.844442, 37.349636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462920, 0.705681, -0.536396,
		-0.102182, 0.643589, 0.758520,
		0.880491, -0.296324, 0.370038,
		29.232897, 31.755545, 37.460648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868786, 32.529411, 37.669872>,  <28.616554, 31.962973, 37.201622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868786, 32.529411, 37.669872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178537, 32.313393, 37.537998>,  <29.364388, 32.183781, 37.458874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178537, 32.313393, 37.537998>,  <28.868786, 32.529411, 37.669872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178537, 32.313393, 37.537998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426726, 0.830476, -0.358070,
		0.467168, 0.136598, 0.873553,
		0.774377, -0.540047, -0.329682,
		29.410851, 32.151379, 37.439095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443874, 32.926815, 37.729057>,  <28.868786, 32.529411, 37.669872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443874, 32.926815, 37.729057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587116, 32.650276, 37.478043>,  <29.673061, 32.484352, 37.327435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587116, 32.650276, 37.478043>,  <29.443874, 32.926815, 37.729057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587116, 32.650276, 37.478043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507287, 0.708320, -0.490859,
		0.783851, -0.142564, 0.604361,
		0.358103, -0.691345, -0.627538,
		29.694548, 32.442871, 37.289780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117826, 33.037792, 37.650517>,  <29.443874, 32.926815, 37.729057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117826, 33.037792, 37.650517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028381, 32.846207, 37.310966>,  <29.974714, 32.731255, 37.107235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028381, 32.846207, 37.310966>,  <30.117826, 33.037792, 37.650517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028381, 32.846207, 37.310966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231827, 0.819798, -0.523630,
		0.946706, -0.313883, -0.072281,
		-0.223614, -0.478967, -0.848874,
		29.961296, 32.702515, 37.056305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680126, 33.125530, 37.221153>,  <30.117826, 33.037792, 37.650517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680126, 33.125530, 37.221153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364939, 33.027725, 36.995121>,  <30.175825, 32.969044, 36.859501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.364939, 33.027725, 36.995121>,  <30.680126, 33.125530, 37.221153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364939, 33.027725, 36.995121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233546, 0.730488, -0.641750,
		0.569699, -0.637653, -0.518499,
		-0.787971, -0.244511, -0.565080,
		30.128548, 32.954372, 36.825596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804251, 32.857670, 36.433662>,  <30.680126, 33.125530, 37.221153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804251, 32.857670, 36.433662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449627, 33.042610, 36.439892>,  <30.236853, 33.153576, 36.443630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449627, 33.042610, 36.439892>,  <30.804251, 32.857670, 36.433662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449627, 33.042610, 36.439892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301457, 0.602933, -0.738644,
		-0.350905, -0.650157, -0.673915,
		-0.886560, 0.462350, 0.015577,
		30.183659, 33.181316, 36.444565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673904, 32.873989, 35.774506>,  <30.804251, 32.857670, 36.433662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673904, 32.873989, 35.774506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453068, 33.167183, 35.933464>,  <30.320566, 33.343102, 36.028839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453068, 33.167183, 35.933464>,  <30.673904, 32.873989, 35.774506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453068, 33.167183, 35.933464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163458, 0.562521, -0.810464,
		-0.817604, -0.382493, -0.430376,
		-0.552092, 0.732987, 0.397398,
		30.287439, 33.387077, 36.052685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239668, 33.231739, 35.239422>,  <30.673904, 32.873989, 35.774506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239668, 33.231739, 35.239422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320244, 33.463787, 35.555111>,  <30.368589, 33.603016, 35.744526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320244, 33.463787, 35.555111>,  <30.239668, 33.231739, 35.239422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320244, 33.463787, 35.555111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337255, 0.715398, -0.611936,
		-0.919609, 0.389440, -0.051538,
		0.201442, 0.580123, 0.789227,
		30.380676, 33.637825, 35.791878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134558, 33.137539, 34.495991>,  <30.239668, 33.231739, 35.239422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134558, 33.137539, 34.495991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206686, 32.744759, 34.518822>,  <30.249964, 32.509090, 34.532520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206686, 32.744759, 34.518822>,  <30.134558, 33.137539, 34.495991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206686, 32.744759, 34.518822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841751, 0.124038, -0.525424,
		0.508861, 0.142787, 0.848924,
		0.180323, -0.981950, 0.057073,
		30.260782, 32.450172, 34.535942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781572, 33.031761, 34.757759>,  <30.134558, 33.137539, 34.495991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781572, 33.031761, 34.757759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718351, 32.716618, 34.519665>,  <30.680418, 32.527531, 34.376808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718351, 32.716618, 34.519665>,  <30.781572, 33.031761, 34.757759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718351, 32.716618, 34.519665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902726, 0.128983, -0.410427,
		0.400132, -0.602200, 0.690833,
		-0.158054, -0.787857, -0.595231,
		30.670935, 32.480259, 34.341095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395603, 32.680782, 34.832966>,  <30.781572, 33.031761, 34.757759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395603, 32.680782, 34.832966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251060, 32.574749, 34.475384>,  <31.164335, 32.511131, 34.260834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251060, 32.574749, 34.475384>,  <31.395603, 32.680782, 34.832966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251060, 32.574749, 34.475384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932226, -0.082826, -0.352269,
		0.019337, -0.960662, 0.277045,
		-0.361358, -0.265081, -0.893953,
		31.142653, 32.495224, 34.207199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040005, 33.167118, 34.664711>,  <31.395603, 32.680782, 34.832966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040005, 33.167118, 34.664711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349758, 32.954769, 34.527012>,  <32.535610, 32.827358, 34.444393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349758, 32.954769, 34.527012>,  <32.040005, 33.167118, 34.664711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349758, 32.954769, 34.527012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408416, 0.003849, 0.912788,
		-0.483252, -0.847440, 0.219799,
		0.774379, -0.530876, -0.344248,
		32.582073, 32.795506, 34.423737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072643, 32.726833, 35.121704>,  <32.040005, 33.167118, 34.664711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072643, 32.726833, 35.121704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427853, 32.717037, 34.938042>,  <32.640976, 32.711159, 34.827847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427853, 32.717037, 34.938042>,  <32.072643, 32.726833, 35.121704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427853, 32.717037, 34.938042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453360, -0.119989, 0.883214,
		-0.076712, -0.992474, -0.095456,
		0.888020, -0.024477, -0.459152,
		32.694260, 32.709690, 34.800297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494762, 32.253094, 35.474483>,  <32.072643, 32.726833, 35.121704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494762, 32.253094, 35.474483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779724, 32.444492, 35.269146>,  <32.950703, 32.559330, 35.145943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779724, 32.444492, 35.269146>,  <32.494762, 32.253094, 35.474483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779724, 32.444492, 35.269146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644534, -0.156784, 0.748328,
		0.277589, -0.863979, -0.420102,
		0.712404, 0.478498, -0.513342,
		32.993446, 32.588043, 35.115143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105804, 31.794413, 35.538315>,  <32.494762, 32.253094, 35.474483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105804, 31.794413, 35.538315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201710, 32.181206, 35.503757>,  <33.259251, 32.413280, 35.483025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201710, 32.181206, 35.503757>,  <33.105804, 31.794413, 35.538315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201710, 32.181206, 35.503757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239234, 0.027395, 0.970575,
		0.940895, -0.253372, -0.224766,
		0.239759, 0.966981, -0.086391,
		33.273636, 32.471298, 35.477840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883060, 31.997738, 35.623672>,  <33.105804, 31.794413, 35.538315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883060, 31.997738, 35.623672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650360, 32.301517, 35.740154>,  <33.510738, 32.483784, 35.810043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650360, 32.301517, 35.740154>,  <33.883060, 31.997738, 35.623672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650360, 32.301517, 35.740154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351435, -0.088184, 0.932050,
		0.733523, 0.644565, -0.215595,
		-0.581755, 0.759447, 0.291208,
		33.475834, 32.529350, 35.827518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303474, 32.540165, 35.875694>,  <33.883060, 31.997738, 35.623672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303474, 32.540165, 35.875694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950703, 32.518772, 36.063034>,  <33.739040, 32.505936, 36.175438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950703, 32.518772, 36.063034>,  <34.303474, 32.540165, 35.875694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950703, 32.518772, 36.063034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470621, -0.156611, 0.868325,
		0.026906, 0.986211, 0.163290,
		-0.881925, -0.053485, 0.468346,
		33.686127, 32.502728, 36.203537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545124, 32.865101, 35.070488>,  <34.303474, 32.540165, 35.875694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545124, 32.865101, 35.070488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791027, 33.123589, 34.889610>,  <34.938568, 33.278683, 34.781086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791027, 33.123589, 34.889610>,  <34.545124, 32.865101, 35.070488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791027, 33.123589, 34.889610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019769, -0.560519, -0.827905,
		-0.788469, 0.517900, -0.331808,
		0.614757, 0.646218, -0.452190,
		34.975452, 33.317455, 34.753952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098358, 33.132538, 35.513760>,  <34.545124, 32.865101, 35.070488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098358, 33.132538, 35.513760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974274, 32.951008, 35.847900>,  <33.899822, 32.842091, 36.048386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974274, 32.951008, 35.847900>,  <34.098358, 33.132538, 35.513760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974274, 32.951008, 35.847900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627252, -0.757998, -0.178869,
		0.714368, 0.468487, 0.519806,
		-0.310214, -0.453828, 0.835349,
		33.881210, 32.814861, 36.098503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560822, 33.652382, 35.178619>,  <34.098358, 33.132538, 35.513760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560822, 33.652382, 35.178619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528400, 33.265285, 35.274044>,  <33.508949, 33.033028, 35.331299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528400, 33.265285, 35.274044>,  <33.560822, 33.652382, 35.178619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528400, 33.265285, 35.274044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550544, -0.156050, -0.820091,
		0.830862, -0.197807, -0.520135,
		-0.081053, -0.967740, 0.238557,
		33.504086, 32.974964, 35.345612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715260, 33.437397, 34.530800>,  <33.560822, 33.652382, 35.178619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715260, 33.437397, 34.530800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511631, 33.139839, 34.703987>,  <33.389454, 32.961304, 34.807899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511631, 33.139839, 34.703987>,  <33.715260, 33.437397, 34.530800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511631, 33.139839, 34.703987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441073, -0.206492, -0.873393,
		0.739120, -0.635591, -0.222994,
		-0.509074, -0.743899, 0.432964,
		33.358910, 32.916668, 34.833878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839336, 32.720684, 34.144100>,  <33.715260, 33.437397, 34.530800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839336, 32.720684, 34.144100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496887, 32.692215, 34.348839>,  <33.291416, 32.675133, 34.471680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496887, 32.692215, 34.348839>,  <33.839336, 32.720684, 34.144100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496887, 32.692215, 34.348839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483616, -0.238697, -0.842104,
		0.182113, -0.968482, 0.169932,
		-0.856125, -0.071176, 0.511843,
		33.240051, 32.670864, 34.502392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496414, 31.986635, 34.072392>,  <33.839336, 32.720684, 34.144100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496414, 31.986635, 34.072392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240166, 32.283901, 34.149662>,  <33.086418, 32.462261, 34.196026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240166, 32.283901, 34.149662>,  <33.496414, 31.986635, 34.072392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240166, 32.283901, 34.149662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505949, -0.219289, -0.834223,
		-0.577602, -0.632156, 0.516483,
		-0.640618, 0.743163, 0.193177,
		33.047981, 32.506851, 34.207615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830593, 31.790413, 33.947098>,  <33.496414, 31.986635, 34.072392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830593, 31.790413, 33.947098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864414, 32.185780, 33.896683>,  <32.884708, 32.423000, 33.866436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864414, 32.185780, 33.896683>,  <32.830593, 31.790413, 33.947098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864414, 32.185780, 33.896683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542671, -0.060404, -0.837770,
		-0.835679, 0.139231, 0.531278,
		0.084552, 0.988416, -0.126035,
		32.889778, 32.482304, 33.858871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274910, 32.022060, 33.571548>,  <32.830593, 31.790413, 33.947098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274910, 32.022060, 33.571548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497570, 32.351868, 33.530918>,  <32.631165, 32.549751, 33.506542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497570, 32.351868, 33.530918>,  <32.274910, 32.022060, 33.571548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497570, 32.351868, 33.530918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401758, 0.160163, -0.901631,
		-0.727139, 0.542701, 0.420410,
		0.556650, 0.824514, -0.101574,
		32.664566, 32.599220, 33.500446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824759, 32.480717, 33.378551>,  <32.274910, 32.022060, 33.571548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824759, 32.480717, 33.378551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157433, 32.674767, 33.270512>,  <32.357037, 32.791195, 33.205688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157433, 32.674767, 33.270512>,  <31.824759, 32.480717, 33.378551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157433, 32.674767, 33.270512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486435, 0.402041, -0.775721,
		-0.267727, 0.776544, 0.570352,
		0.831687, 0.485121, -0.270101,
		32.406940, 32.820301, 33.189480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658510, 33.228771, 33.286095>,  <31.824759, 32.480717, 33.378551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658510, 33.228771, 33.286095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977289, 33.133621, 33.063999>,  <32.168556, 33.076530, 32.930740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977289, 33.133621, 33.063999>,  <31.658510, 33.228771, 33.286095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977289, 33.133621, 33.063999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476291, 0.317874, -0.819819,
		0.371511, 0.917808, 0.140031,
		0.796948, -0.237876, -0.555237,
		32.216373, 33.062260, 32.897427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712530, 33.693348, 32.799042>,  <31.658510, 33.228771, 33.286095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712530, 33.693348, 32.799042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922218, 33.400043, 32.625828>,  <32.048031, 33.224060, 32.521900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922218, 33.400043, 32.625828>,  <31.712530, 33.693348, 32.799042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922218, 33.400043, 32.625828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306518, 0.311956, -0.899294,
		0.794505, 0.604164, -0.061223,
		0.524222, -0.733259, -0.433038,
		32.079487, 33.180065, 32.495918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050537, 34.066162, 32.256836>,  <31.712530, 33.693348, 32.799042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050537, 34.066162, 32.256836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060387, 33.674168, 32.177822>,  <32.066296, 33.438972, 32.130413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060387, 33.674168, 32.177822>,  <32.050537, 34.066162, 32.256836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060387, 33.674168, 32.177822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278435, 0.183055, -0.942849,
		0.960140, 0.078217, -0.268355,
		0.024623, -0.979986, -0.197537,
		32.067772, 33.380173, 32.118561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505768, 33.932884, 31.724382>,  <32.050537, 34.066162, 32.256836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505768, 33.932884, 31.724382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290333, 33.596268, 31.707737>,  <32.161072, 33.394299, 31.697750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290333, 33.596268, 31.707737>,  <32.505768, 33.932884, 31.724382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290333, 33.596268, 31.707737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150195, 0.144490, -0.978041,
		0.829072, -0.520514, -0.204216,
		-0.538592, -0.841539, -0.041614,
		32.128754, 33.343807, 31.695253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777287, 33.559082, 31.085070>,  <32.505768, 33.932884, 31.724382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777287, 33.559082, 31.085070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418076, 33.412895, 31.183029>,  <32.202549, 33.325184, 31.241804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418076, 33.412895, 31.183029>,  <32.777287, 33.559082, 31.085070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418076, 33.412895, 31.183029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257709, -0.014145, -0.966119,
		0.356552, -0.930715, -0.081483,
		-0.898029, -0.365471, 0.244897,
		32.148666, 33.303253, 31.256498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595615, 33.215290, 30.422216>,  <32.777287, 33.559082, 31.085070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595615, 33.215290, 30.422216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264400, 33.279484, 30.637102>,  <32.065670, 33.318001, 30.766033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264400, 33.279484, 30.637102>,  <32.595615, 33.215290, 30.422216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264400, 33.279484, 30.637102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447244, 0.388766, -0.805502,
		-0.338122, -0.907251, -0.250137,
		-0.828037, 0.160486, 0.537214,
		32.015987, 33.327629, 30.798265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114044, 32.829502, 30.045881>,  <32.595615, 33.215290, 30.422216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114044, 32.829502, 30.045881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920345, 33.103485, 30.263628>,  <31.804127, 33.267876, 30.394276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920345, 33.103485, 30.263628>,  <32.114044, 32.829502, 30.045881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920345, 33.103485, 30.263628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540791, 0.254776, -0.801645,
		-0.687787, -0.682581, 0.247047,
		-0.484246, 0.684962, 0.544365,
		31.775072, 33.308975, 30.426937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421286, 32.735214, 29.753408>,  <32.114044, 32.829502, 30.045881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421286, 32.735214, 29.753408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479990, 33.082520, 29.942968>,  <31.515213, 33.290901, 30.056704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479990, 33.082520, 29.942968>,  <31.421286, 32.735214, 29.753408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479990, 33.082520, 29.942968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429614, 0.487490, -0.760122,
		-0.891007, -0.092039, 0.444562,
		0.146759, 0.868264, 0.473898,
		31.524017, 33.342999, 30.085138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145353, 33.129322, 29.292202>,  <31.421286, 32.735214, 29.753408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145353, 33.129322, 29.292202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309290, 33.402653, 29.533894>,  <31.407652, 33.566650, 29.678909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309290, 33.402653, 29.533894>,  <31.145353, 33.129322, 29.292202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309290, 33.402653, 29.533894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388779, 0.730098, -0.561968,
		-0.825156, -0.004595, 0.564887,
		0.409841, 0.683327, 0.604231,
		31.432241, 33.607651, 29.715162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672800, 33.682541, 29.289488>,  <31.145353, 33.129322, 29.292202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672800, 33.682541, 29.289488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018932, 33.843750, 29.408665>,  <31.226612, 33.940475, 29.480171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018932, 33.843750, 29.408665>,  <30.672800, 33.682541, 29.289488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018932, 33.843750, 29.408665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121710, 0.745639, -0.655141,
		-0.486196, 0.530652, 0.694277,
		0.865332, 0.403027, 0.297941,
		31.278532, 33.964657, 29.498047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543297, 34.317310, 29.592859>,  <30.672800, 33.682541, 29.289488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543297, 34.317310, 29.592859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916828, 34.328503, 29.450209>,  <31.140947, 34.335217, 29.364618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.916828, 34.328503, 29.450209>,  <30.543297, 34.317310, 29.592859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916828, 34.328503, 29.450209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267230, 0.717313, -0.643467,
		0.237811, 0.696189, 0.677323,
		0.933828, 0.027978, -0.356627,
		31.196976, 34.336895, 29.343220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788876, 35.054131, 29.546007>,  <30.543297, 34.317310, 29.592859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788876, 35.054131, 29.546007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040569, 34.849091, 29.312323>,  <31.191586, 34.726067, 29.172112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040569, 34.849091, 29.312323>,  <30.788876, 35.054131, 29.546007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040569, 34.849091, 29.312323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220226, 0.603273, -0.766526,
		0.745363, 0.610982, 0.266711,
		0.629233, -0.512604, -0.584212,
		31.229340, 34.695309, 29.137058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132214, 35.585835, 29.252899>,  <30.788876, 35.054131, 29.546007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132214, 35.585835, 29.252899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211912, 35.275234, 29.013784>,  <31.259731, 35.088875, 28.870316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.211912, 35.275234, 29.013784>,  <31.132214, 35.585835, 29.252899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.211912, 35.275234, 29.013784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057420, 0.618219, -0.783906,
		0.978266, 0.121864, 0.167763,
		0.199244, -0.776501, -0.597785,
		31.271685, 35.042282, 28.834448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639700, 35.741760, 28.793230>,  <31.132214, 35.585835, 29.252899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639700, 35.741760, 28.793230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465565, 35.442627, 28.592739>,  <31.361084, 35.263145, 28.472445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.465565, 35.442627, 28.592739>,  <31.639700, 35.741760, 28.793230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465565, 35.442627, 28.592739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094443, 0.591619, -0.800667,
		0.895301, -0.301221, -0.328180,
		-0.435336, -0.747832, -0.501228,
		31.334965, 35.218277, 28.442371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871895, 35.950436, 28.197340>,  <31.639700, 35.741760, 28.793230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871895, 35.950436, 28.197340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574169, 35.692410, 28.128193>,  <31.395533, 35.537594, 28.086704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574169, 35.692410, 28.128193>,  <31.871895, 35.950436, 28.197340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574169, 35.692410, 28.128193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131079, 0.394928, -0.909313,
		0.654837, -0.654157, -0.378506,
		-0.744316, -0.645066, -0.172867,
		31.350874, 35.498890, 28.076332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871513, 35.796917, 27.394024>,  <31.871895, 35.950436, 28.197340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871513, 35.796917, 27.394024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525511, 35.623425, 27.494936>,  <31.317909, 35.519329, 27.555483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525511, 35.623425, 27.494936>,  <31.871513, 35.796917, 27.394024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525511, 35.623425, 27.494936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373895, 0.221868, -0.900543,
		0.334616, -0.873302, -0.354085,
		-0.865006, -0.433726, 0.252283,
		31.266008, 35.493305, 27.570621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640095, 35.355309, 26.817684>,  <31.871513, 35.796917, 27.394024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640095, 35.355309, 26.817684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319927, 35.445881, 27.039696>,  <31.127827, 35.500225, 27.172903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319927, 35.445881, 27.039696>,  <31.640095, 35.355309, 26.817684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319927, 35.445881, 27.039696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472242, 0.332096, -0.816517,
		-0.369209, -0.915664, -0.158885,
		-0.800420, 0.226433, 0.555028,
		31.079802, 35.513809, 27.206203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865183, 35.074516, 26.551943>,  <31.640095, 35.355309, 26.817684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865183, 35.074516, 26.551943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814569, 35.406097, 26.769869>,  <30.784201, 35.605045, 26.900625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814569, 35.406097, 26.769869>,  <30.865183, 35.074516, 26.551943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814569, 35.406097, 26.769869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520734, 0.411958, -0.747748,
		-0.844290, -0.378320, 0.379538,
		-0.126534, 0.828954, 0.544816,
		30.776609, 35.654785, 26.933313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070162, 35.198547, 26.470755>,  <30.865183, 35.074516, 26.551943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070162, 35.198547, 26.470755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203518, 35.544735, 26.620321>,  <30.283531, 35.752449, 26.710062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203518, 35.544735, 26.620321>,  <30.070162, 35.198547, 26.470755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203518, 35.544735, 26.620321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511445, 0.499201, -0.699445,
		-0.792008, 0.041949, 0.609068,
		0.333388, 0.865470, 0.373916,
		30.303534, 35.804375, 26.732496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485592, 35.740414, 26.531338>,  <30.070162, 35.198547, 26.470755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485592, 35.740414, 26.531338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826014, 35.950344, 26.524847>,  <30.030266, 36.076302, 26.520952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826014, 35.950344, 26.524847>,  <29.485592, 35.740414, 26.531338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826014, 35.950344, 26.524847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411570, 0.647565, -0.641303,
		-0.326068, 0.552461, 0.767116,
		0.851052, 0.524830, -0.016227,
		30.081329, 36.107792, 26.519979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276197, 36.445744, 26.444771>,  <29.485592, 35.740414, 26.531338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276197, 36.445744, 26.444771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655746, 36.404156, 26.325552>,  <29.883476, 36.379204, 26.254021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655746, 36.404156, 26.325552>,  <29.276197, 36.445744, 26.444771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655746, 36.404156, 26.325552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234426, 0.400207, -0.885934,
		0.211395, 0.910507, 0.355371,
		0.948871, -0.103974, -0.298049,
		29.940409, 36.372963, 26.236137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431763, 37.166409, 26.257441>,  <29.276197, 36.445744, 26.444771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431763, 37.166409, 26.257441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651203, 36.900211, 26.054993>,  <29.782867, 36.740494, 25.933523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651203, 36.900211, 26.054993>,  <29.431763, 37.166409, 26.257441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651203, 36.900211, 26.054993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293657, 0.413408, -0.861893,
		0.782817, 0.621460, 0.031369,
		0.548600, -0.665493, -0.506119,
		29.815783, 36.700565, 25.903156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794455, 37.666859, 25.812981>,  <29.431763, 37.166409, 26.257441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794455, 37.666859, 25.812981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848421, 37.300995, 25.660566>,  <29.880800, 37.081474, 25.569117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.848421, 37.300995, 25.660566>,  <29.794455, 37.666859, 25.812981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848421, 37.300995, 25.660566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142925, 0.362568, -0.920933,
		0.980495, 0.178709, -0.081812,
		0.134917, -0.914663, -0.381038,
		29.888897, 37.026596, 25.546255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173067, 37.755665, 25.243780>,  <29.794455, 37.666859, 25.812981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173067, 37.755665, 25.243780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005095, 37.397194, 25.186472>,  <29.904310, 37.182114, 25.152086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005095, 37.397194, 25.186472>,  <30.173067, 37.755665, 25.243780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005095, 37.397194, 25.186472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149831, 0.224159, -0.962966,
		0.895102, -0.382915, -0.228406,
		-0.419933, -0.896175, -0.143272,
		29.879114, 37.128342, 25.143490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523808, 37.416767, 24.663055>,  <30.173067, 37.755665, 25.243780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523808, 37.416767, 24.663055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164488, 37.241753, 24.679142>,  <29.948896, 37.136742, 24.688793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164488, 37.241753, 24.679142>,  <30.523808, 37.416767, 24.663055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164488, 37.241753, 24.679142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162928, 0.246699, -0.955298,
		0.408062, -0.864695, -0.292897,
		-0.898298, -0.437541, 0.040215,
		29.894999, 37.110489, 24.691206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465439, 36.918781, 24.077271>,  <30.523808, 37.416767, 24.663055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465439, 36.918781, 24.077271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096209, 37.037621, 24.174973>,  <29.874670, 37.108925, 24.233593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096209, 37.037621, 24.174973>,  <30.465439, 36.918781, 24.077271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096209, 37.037621, 24.174973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245932, 0.032339, -0.968747,
		-0.295713, -0.954299, 0.043215,
		-0.923077, 0.297099, 0.244255,
		29.819284, 37.126751, 24.248249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133024, 36.494087, 23.691208>,  <30.465439, 36.918781, 24.077271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133024, 36.494087, 23.691208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910416, 36.813412, 23.783279>,  <29.776850, 37.005005, 23.838522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910416, 36.813412, 23.783279>,  <30.133024, 36.494087, 23.691208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910416, 36.813412, 23.783279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246246, 0.106108, -0.963382,
		-0.793503, -0.592823, 0.137530,
		-0.556521, 0.798313, 0.230177,
		29.743460, 37.052906, 23.852333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560957, 36.616879, 23.191954>,  <30.133024, 36.494087, 23.691208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560957, 36.616879, 23.191954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598343, 36.978996, 23.357700>,  <29.620775, 37.196266, 23.457148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598343, 36.978996, 23.357700>,  <29.560957, 36.616879, 23.191954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598343, 36.978996, 23.357700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111673, 0.423096, -0.899177,
		-0.989340, 0.037770, 0.140643,
		0.093467, 0.905298, 0.414367,
		29.626383, 37.250587, 23.482010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987940, 36.973610, 22.964319>,  <29.560957, 36.616879, 23.191954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987940, 36.973610, 22.964319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261189, 37.247013, 23.067207>,  <29.425138, 37.411057, 23.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.261189, 37.247013, 23.067207>,  <28.987940, 36.973610, 22.964319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261189, 37.247013, 23.067207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191308, 0.507390, -0.840212,
		-0.704801, 0.524761, 0.477370,
		0.683123, 0.683507, 0.257218,
		29.466125, 37.452065, 23.144373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667744, 37.598537, 22.663549>,  <28.987940, 36.973610, 22.964319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667744, 37.598537, 22.663549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030678, 37.728962, 22.769703>,  <29.248438, 37.807217, 22.833395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030678, 37.728962, 22.769703>,  <28.667744, 37.598537, 22.663549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030678, 37.728962, 22.769703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041081, 0.559462, -0.827838,
		-0.418397, 0.762028, 0.494224,
		0.907335, 0.326062, 0.265382,
		29.302877, 37.826782, 22.849318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673231, 38.290707, 22.391731>,  <28.667744, 37.598537, 22.663549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673231, 38.290707, 22.391731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062059, 38.229492, 22.462906>,  <29.295357, 38.192764, 22.505610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.062059, 38.229492, 22.462906>,  <28.673231, 38.290707, 22.391731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062059, 38.229492, 22.462906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230374, 0.766981, -0.598889,
		-0.044821, 0.623153, 0.780814,
		0.972069, -0.153037, 0.177935,
		29.353680, 38.183582, 22.516287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857237, 38.850578, 22.616665>,  <28.673231, 38.290707, 22.391731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857237, 38.850578, 22.616665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173330, 38.667679, 22.453470>,  <29.362986, 38.557938, 22.355553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173330, 38.667679, 22.453470>,  <28.857237, 38.850578, 22.616665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173330, 38.667679, 22.453470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210658, 0.827888, -0.519831,
		0.575463, 0.324841, 0.750547,
		0.790231, -0.457252, -0.407988,
		29.410400, 38.530502, 22.331074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432253, 39.260838, 22.688206>,  <28.857237, 38.850578, 22.616665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432253, 39.260838, 22.688206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535870, 39.017910, 22.387789>,  <29.598040, 38.872154, 22.207539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.535870, 39.017910, 22.387789>,  <29.432253, 39.260838, 22.688206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.535870, 39.017910, 22.387789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333988, 0.785940, -0.520337,
		0.906283, -0.116049, 0.406428,
		0.259043, -0.607315, -0.751043,
		29.613583, 38.835716, 22.162476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060564, 39.564339, 22.375271>,  <29.432253, 39.260838, 22.688206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060564, 39.564339, 22.375271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921902, 39.325882, 22.085598>,  <29.838703, 39.182808, 21.911795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921902, 39.325882, 22.085598>,  <30.060564, 39.564339, 22.375271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921902, 39.325882, 22.085598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192008, 0.710606, -0.676884,
		0.918129, -0.373695, -0.131872,
		-0.346657, -0.596146, -0.724181,
		29.817904, 39.147038, 21.868343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587055, 39.659946, 21.779537>,  <30.060564, 39.564339, 22.375271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587055, 39.659946, 21.779537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259167, 39.502205, 21.613384>,  <30.062433, 39.407562, 21.513693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259167, 39.502205, 21.613384>,  <30.587055, 39.659946, 21.779537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259167, 39.502205, 21.613384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013527, 0.738354, -0.674277,
		0.572600, -0.547102, -0.610581,
		-0.819723, -0.394350, -0.415381,
		30.013250, 39.383900, 21.488770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634087, 39.700600, 20.929031>,  <30.587055, 39.659946, 21.779537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634087, 39.700600, 20.929031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254974, 39.656055, 21.048571>,  <30.027508, 39.629330, 21.120295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254974, 39.656055, 21.048571>,  <30.634087, 39.700600, 20.929031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254974, 39.656055, 21.048571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299921, 0.629846, -0.716478,
		-0.108438, -0.768695, -0.630356,
		-0.947781, -0.111364, 0.298847,
		29.970640, 39.622646, 21.138226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190165, 39.681015, 20.289919>,  <30.634087, 39.700600, 20.929031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190165, 39.681015, 20.289919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926275, 39.743351, 20.583988>,  <29.767941, 39.780754, 20.760429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926275, 39.743351, 20.583988>,  <30.190165, 39.681015, 20.289919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926275, 39.743351, 20.583988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393552, 0.761752, -0.514637,
		-0.640219, -0.628847, -0.441216,
		-0.659725, 0.155839, 0.735172,
		29.728357, 39.790104, 20.804541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554356, 39.867088, 19.944340>,  <30.190165, 39.681015, 20.289919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554356, 39.867088, 19.944340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515434, 40.030720, 20.307259>,  <29.492081, 40.128899, 20.525011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.515434, 40.030720, 20.307259>,  <29.554356, 39.867088, 19.944340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515434, 40.030720, 20.307259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227001, 0.878473, -0.420423,
		-0.969021, -0.246866, 0.007382,
		-0.097303, 0.409075, 0.907298,
		29.486244, 40.153442, 20.579449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007589, 40.257309, 19.952068>,  <29.554356, 39.867088, 19.944340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007589, 40.257309, 19.952068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226488, 40.394749, 20.257343>,  <29.357828, 40.477215, 20.440508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226488, 40.394749, 20.257343>,  <29.007589, 40.257309, 19.952068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226488, 40.394749, 20.257343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297409, 0.932168, -0.206422,
		-0.782347, -0.114015, 0.612318,
		0.547248, 0.343603, 0.763188,
		29.390663, 40.497829, 20.486300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506363, 40.747185, 20.375120>,  <29.007589, 40.257309, 19.952068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506363, 40.747185, 20.375120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888083, 40.835426, 20.455763>,  <29.117115, 40.888371, 20.504148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888083, 40.835426, 20.455763>,  <28.506363, 40.747185, 20.375120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888083, 40.835426, 20.455763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141673, 0.927929, -0.344784,
		-0.263137, 0.300465, 0.916777,
		0.954300, 0.220608, 0.201605,
		29.174372, 40.901608, 20.516245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465723, 41.285023, 20.822565>,  <28.506363, 40.747185, 20.375120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465723, 41.285023, 20.822565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825222, 41.299702, 20.647795>,  <29.040922, 41.308510, 20.542933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.825222, 41.299702, 20.647795>,  <28.465723, 41.285023, 20.822565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825222, 41.299702, 20.647795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230831, 0.886821, -0.400332,
		0.372787, 0.460654, 0.805499,
		0.898748, 0.036696, -0.436928,
		29.094847, 41.310711, 20.516716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648483, 42.002037, 20.800224>,  <28.465723, 41.285023, 20.822565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648483, 42.002037, 20.800224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822989, 42.271133, 21.039253>,  <28.927692, 42.432590, 21.182671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822989, 42.271133, 21.039253>,  <28.648483, 42.002037, 20.800224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822989, 42.271133, 21.039253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671426, 0.685504, -0.281551,
		-0.599050, -0.278396, 0.750756,
		0.436264, 0.672740, 0.597574,
		28.953867, 42.472954, 21.218525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155611, 42.218441, 21.318506>,  <28.648483, 42.002037, 20.800224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155611, 42.218441, 21.318506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434469, 42.495586, 21.244825>,  <28.601784, 42.661873, 21.200617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434469, 42.495586, 21.244825>,  <28.155611, 42.218441, 21.318506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434469, 42.495586, 21.244825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712690, 0.641865, -0.282988,
		-0.077837, 0.328565, 0.941269,
		0.697147, 0.692860, -0.184204,
		28.643614, 42.703445, 21.189564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790390, 42.808640, 21.428724>,  <28.155611, 42.218441, 21.318506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790390, 42.808640, 21.428724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126989, 42.946762, 21.262522>,  <28.328949, 43.029636, 21.162800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126989, 42.946762, 21.262522>,  <27.790390, 42.808640, 21.428724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126989, 42.946762, 21.262522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523451, 0.711450, -0.468869,
		0.133711, 0.612051, 0.779432,
		0.841499, 0.345302, -0.415508,
		28.379438, 43.050354, 21.137869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879297, 43.570923, 21.555168>,  <27.790390, 42.808640, 21.428724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879297, 43.570923, 21.555168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998314, 43.407875, 21.209843>,  <28.069725, 43.310047, 21.002647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.998314, 43.407875, 21.209843>,  <27.879297, 43.570923, 21.555168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998314, 43.407875, 21.209843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531786, 0.680236, -0.504463,
		0.792888, 0.609198, -0.014369,
		0.297544, -0.407624, -0.863314,
		28.087578, 43.285587, 20.950848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003611, 44.208294, 21.172989>,  <27.879297, 43.570923, 21.555168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003611, 44.208294, 21.172989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921135, 43.894661, 20.938826>,  <27.871649, 43.706482, 20.798328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921135, 43.894661, 20.938826>,  <28.003611, 44.208294, 21.172989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921135, 43.894661, 20.938826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455184, 0.606450, -0.651941,
		0.866195, 0.132046, -0.481944,
		-0.206188, -0.784081, -0.585409,
		27.859278, 43.659435, 20.763203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282658, 44.115261, 20.461325>,  <28.003611, 44.208294, 21.172989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282658, 44.115261, 20.461325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908766, 43.974072, 20.477751>,  <27.684431, 43.889359, 20.487606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908766, 43.974072, 20.477751>,  <28.282658, 44.115261, 20.461325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908766, 43.974072, 20.477751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268113, 0.624680, -0.733410,
		0.233222, -0.696552, -0.678545,
		-0.934732, -0.352974, 0.041065,
		27.628345, 43.868179, 20.490070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153715, 43.936802, 19.780029>,  <28.282658, 44.115261, 20.461325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153715, 43.936802, 19.780029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843475, 44.066212, 19.996834>,  <27.657331, 44.143860, 20.126917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.843475, 44.066212, 19.996834>,  <28.153715, 43.936802, 19.780029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.843475, 44.066212, 19.996834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150424, 0.739196, -0.656476,
		-0.613041, -0.590694, -0.524653,
		-0.775598, 0.323527, 0.542013,
		27.610796, 44.163269, 20.159437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787655, 43.670723, 19.982010>,  <28.153715, 43.936802, 19.780029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.787655, 43.670723, 19.982010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679083, 43.662739, 20.366911>,  <28.613939, 43.657948, 20.597851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679083, 43.662739, 20.366911>,  <28.787655, 43.670723, 19.982010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679083, 43.662739, 20.366911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832669, -0.506278, 0.224376,
		0.482687, 0.862139, 0.154043,
		-0.271432, -0.019963, 0.962251,
		28.597652, 43.656750, 20.655586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360989, 43.817631, 20.506506>,  <28.787655, 43.670723, 19.982010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360989, 43.817631, 20.506506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093102, 43.595886, 20.704157>,  <28.932369, 43.462841, 20.822746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093102, 43.595886, 20.704157>,  <29.360989, 43.817631, 20.506506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093102, 43.595886, 20.704157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721153, -0.326681, 0.610916,
		-0.177246, 0.765482, 0.618564,
		-0.669718, -0.554362, 0.494126,
		28.892185, 43.429577, 20.852394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595369, 43.673653, 21.224554>,  <29.360989, 43.817631, 20.506506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595369, 43.673653, 21.224554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303007, 43.401428, 21.204117>,  <29.127590, 43.238094, 21.191854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.303007, 43.401428, 21.204117>,  <29.595369, 43.673653, 21.224554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303007, 43.401428, 21.204117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529751, -0.612950, 0.586222,
		-0.430278, 0.401407, 0.808538,
		-0.730907, -0.680562, -0.051093,
		29.083735, 43.197258, 21.188789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366268, 43.524857, 21.916151>,  <29.595369, 43.673653, 21.224554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366268, 43.524857, 21.916151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267221, 43.209652, 21.690683>,  <29.207792, 43.020531, 21.555403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267221, 43.209652, 21.690683>,  <29.366268, 43.524857, 21.916151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267221, 43.209652, 21.690683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196611, -0.610551, 0.767185,
		-0.948699, 0.079146, 0.306115,
		-0.247619, -0.788013, -0.563668,
		29.192936, 42.973248, 21.521584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783609, 43.116398, 22.170166>,  <29.366268, 43.524857, 21.916151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783609, 43.116398, 22.170166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023649, 42.884377, 21.949831>,  <29.167673, 42.745163, 21.817631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.023649, 42.884377, 21.949831>,  <28.783609, 43.116398, 22.170166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023649, 42.884377, 21.949831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057873, -0.655324, 0.753128,
		-0.797829, -0.483830, -0.359690,
		0.600099, -0.580051, -0.550837,
		29.203680, 42.710361, 21.784580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519245, 42.410313, 22.278593>,  <28.783609, 43.116398, 22.170166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519245, 42.410313, 22.278593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900259, 42.360195, 22.167614>,  <29.128868, 42.330124, 22.101027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.900259, 42.360195, 22.167614>,  <28.519245, 42.410313, 22.278593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900259, 42.360195, 22.167614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139530, -0.630336, 0.763680,
		-0.270568, -0.766145, -0.582936,
		0.952536, -0.125291, -0.277449,
		29.186020, 42.322609, 22.084379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610703, 41.786961, 22.425505>,  <28.519245, 42.410313, 22.278593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610703, 41.786961, 22.425505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979048, 41.939415, 22.392656>,  <29.200056, 42.030888, 22.372948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979048, 41.939415, 22.392656>,  <28.610703, 41.786961, 22.425505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979048, 41.939415, 22.392656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280607, -0.501671, 0.818282,
		0.270678, -0.776571, -0.568921,
		0.920865, 0.381135, -0.082120,
		29.255308, 42.053757, 22.368021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079203, 41.111607, 22.501137>,  <28.610703, 41.786961, 22.425505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079203, 41.111607, 22.501137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320288, 41.424835, 22.562510>,  <29.464939, 41.612770, 22.599333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320288, 41.424835, 22.562510>,  <29.079203, 41.111607, 22.501137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320288, 41.424835, 22.562510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467128, -0.502138, 0.727770,
		0.646937, -0.366965, -0.668438,
		0.602714, 0.783068, 0.153432,
		29.501102, 41.659756, 22.608540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804483, 40.801178, 22.409245>,  <29.079203, 41.111607, 22.501137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804483, 40.801178, 22.409245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810181, 41.145653, 22.612482>,  <29.813599, 41.352337, 22.734425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810181, 41.145653, 22.612482>,  <29.804483, 40.801178, 22.409245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810181, 41.145653, 22.612482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644971, -0.396215, 0.653472,
		0.764074, 0.318399, -0.561082,
		0.014245, 0.861183, 0.508096,
		29.814455, 41.404007, 22.764912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492102, 40.936413, 22.445187>,  <29.804483, 40.801178, 22.409245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492102, 40.936413, 22.445187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349161, 41.153191, 22.749447>,  <30.263397, 41.283257, 22.932003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349161, 41.153191, 22.749447>,  <30.492102, 40.936413, 22.445187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349161, 41.153191, 22.749447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743352, -0.328034, 0.582942,
		0.565444, 0.773749, -0.285633,
		-0.357353, 0.541947, 0.760652,
		30.241955, 41.315773, 22.977642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.074007, 41.008286, 22.930395>,  <30.492102, 40.936413, 22.445187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.074007, 41.008286, 22.930395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781134, 41.154697, 23.160154>,  <30.605410, 41.242546, 23.298010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781134, 41.154697, 23.160154>,  <31.074007, 41.008286, 22.930395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781134, 41.154697, 23.160154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529400, -0.224768, 0.818056,
		0.428539, 0.903051, -0.029205,
		-0.732182, 0.366030, 0.574397,
		30.561480, 41.264507, 23.332474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366966, 41.479389, 23.340765>,  <31.074007, 41.008286, 22.930395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366966, 41.479389, 23.340765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040491, 41.348824, 23.531466>,  <30.844606, 41.270485, 23.645885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040491, 41.348824, 23.531466>,  <31.366966, 41.479389, 23.340765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040491, 41.348824, 23.531466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563358, -0.266339, 0.782107,
		-0.128314, 0.906927, 0.401271,
		-0.816188, -0.326414, 0.476750,
		30.795635, 41.250900, 23.674490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451258, 41.674152, 24.025593>,  <31.366966, 41.479389, 23.340765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451258, 41.674152, 24.025593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182463, 41.378120, 24.014864>,  <31.021187, 41.200500, 24.008427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182463, 41.378120, 24.014864>,  <31.451258, 41.674152, 24.025593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182463, 41.378120, 24.014864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468291, -0.452705, 0.758790,
		-0.573706, 0.497335, 0.650783,
		-0.671986, -0.740078, -0.026822,
		30.980867, 41.156097, 24.006817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104546, 41.562809, 24.753393>,  <31.451258, 41.674152, 24.025593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104546, 41.562809, 24.753393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065592, 41.214825, 24.560028>,  <31.042219, 41.006035, 24.444010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065592, 41.214825, 24.560028>,  <31.104546, 41.562809, 24.753393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065592, 41.214825, 24.560028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316609, -0.487567, 0.813656,
		-0.943544, -0.073817, 0.322917,
		-0.097382, -0.869959, -0.483412,
		31.036377, 40.953838, 24.415005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906683, 41.071808, 25.304728>,  <31.104546, 41.562809, 24.753393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906683, 41.071808, 25.304728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000908, 40.836555, 24.995247>,  <31.057444, 40.695404, 24.809559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000908, 40.836555, 24.995247>,  <30.906683, 41.071808, 25.304728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000908, 40.836555, 24.995247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398905, -0.667440, 0.628807,
		-0.886219, -0.456757, 0.077383,
		0.235563, -0.588130, -0.773701,
		31.071577, 40.660118, 24.763136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745077, 40.384109, 25.571329>,  <30.906683, 41.071808, 25.304728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745077, 40.384109, 25.571329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986097, 40.322227, 25.258152>,  <31.130711, 40.285099, 25.070246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986097, 40.322227, 25.258152>,  <30.745077, 40.384109, 25.571329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986097, 40.322227, 25.258152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628129, -0.513255, 0.584828,
		-0.492323, -0.844178, -0.212091,
		0.602555, -0.154703, -0.782939,
		31.166862, 40.275814, 25.023270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801624, 39.755718, 25.407970>,  <30.745077, 40.384109, 25.571329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801624, 39.755718, 25.407970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154509, 39.895679, 25.281942>,  <31.366240, 39.979656, 25.206326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154509, 39.895679, 25.281942>,  <30.801624, 39.755718, 25.407970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154509, 39.895679, 25.281942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470808, -0.664581, 0.580235,
		-0.006363, -0.660227, -0.751039,
		0.882213, 0.349903, -0.315069,
		31.419172, 40.000648, 25.187422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304737, 39.143623, 25.445059>,  <30.801624, 39.755718, 25.407970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304737, 39.143623, 25.445059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561920, 39.442932, 25.379707>,  <31.716230, 39.622517, 25.340496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561920, 39.442932, 25.379707>,  <31.304737, 39.143623, 25.445059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561920, 39.442932, 25.379707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723942, -0.524108, 0.448574,
		0.250030, -0.406688, -0.878686,
		0.642956, 0.748275, -0.163376,
		31.754807, 39.667416, 25.330694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826630, 38.878860, 25.139540>,  <31.304737, 39.143623, 25.445059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826630, 38.878860, 25.139540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947359, 39.205585, 25.336199>,  <32.019798, 39.401619, 25.454195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947359, 39.205585, 25.336199>,  <31.826630, 38.878860, 25.139540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947359, 39.205585, 25.336199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587219, -0.565540, 0.579083,
		0.751050, 0.113925, -0.650342,
		0.301823, 0.816814, 0.491648,
		32.037907, 39.450630, 25.483694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531834, 38.803768, 25.267513>,  <31.826630, 38.878860, 25.139540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531834, 38.803768, 25.267513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382198, 39.053524, 25.541798>,  <32.292416, 39.203377, 25.706367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382198, 39.053524, 25.541798>,  <32.531834, 38.803768, 25.267513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382198, 39.053524, 25.541798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314286, -0.610286, 0.727170,
		0.872514, 0.487535, 0.032066,
		-0.374090, 0.624388, 0.685709,
		32.269970, 39.240841, 25.747511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013012, 38.852287, 25.852892>,  <32.531834, 38.803768, 25.267513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013012, 38.852287, 25.852892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677475, 38.986916, 26.024035>,  <32.476154, 39.067692, 26.126720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677475, 38.986916, 26.024035>,  <33.013012, 38.852287, 25.852892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677475, 38.986916, 26.024035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294354, -0.380717, 0.876590,
		0.457928, 0.861263, 0.220291,
		-0.838843, 0.336571, 0.427858,
		32.425823, 39.087887, 26.152391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232498, 39.066669, 26.487556>,  <33.013012, 38.852287, 25.852892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232498, 39.066669, 26.487556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836678, 39.018234, 26.518864>,  <32.599186, 38.989174, 26.537647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836678, 39.018234, 26.518864>,  <33.232498, 39.066669, 26.487556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836678, 39.018234, 26.518864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129435, -0.506893, 0.852236,
		-0.063523, 0.853461, 0.517270,
		-0.989551, -0.121090, 0.078268,
		32.539814, 38.981907, 26.542345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050144, 39.256546, 27.186558>,  <33.232498, 39.066669, 26.487556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050144, 39.256546, 27.186558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735123, 39.021885, 27.111082>,  <32.546112, 38.881088, 27.065798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735123, 39.021885, 27.111082>,  <33.050144, 39.256546, 27.186558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735123, 39.021885, 27.111082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119432, -0.445684, 0.887187,
		-0.604564, 0.676171, 0.421065,
		-0.787552, -0.586650, -0.188688,
		32.498856, 38.845890, 27.054476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625614, 39.311420, 27.821161>,  <33.050144, 39.256546, 27.186558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625614, 39.311420, 27.821161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490520, 38.981174, 27.640368>,  <32.409462, 38.783028, 27.531891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490520, 38.981174, 27.640368>,  <32.625614, 39.311420, 27.821161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490520, 38.981174, 27.640368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029011, -0.489105, 0.871742,
		-0.940793, 0.281309, 0.189142,
		-0.337739, -0.825616, -0.451985,
		32.389198, 38.733490, 27.504772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033531, 39.021263, 28.265802>,  <32.625614, 39.311420, 27.821161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033531, 39.021263, 28.265802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140301, 38.721390, 28.023569>,  <32.204361, 38.541466, 27.878229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.140301, 38.721390, 28.023569>,  <32.033531, 39.021263, 28.265802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140301, 38.721390, 28.023569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016080, -0.631757, 0.775000,
		-0.963585, -0.197125, -0.180683,
		0.266919, -0.749683, -0.605582,
		32.220375, 38.496487, 27.841894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563623, 38.530609, 28.320595>,  <32.033531, 39.021263, 28.265802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563623, 38.530609, 28.320595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881641, 38.325638, 28.190786>,  <32.072453, 38.202656, 28.112902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881641, 38.325638, 28.190786>,  <31.563623, 38.530609, 28.320595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881641, 38.325638, 28.190786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064217, -0.603139, 0.795047,
		-0.603139, -0.611260, -0.512431,
		-0.795047, 0.512431, 0.324523,
		32.120155, 38.171909, 28.093430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326359, 37.857422, 28.344841>,  <31.563623, 38.530609, 28.320595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326359, 37.857422, 28.344841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725929, 37.874603, 28.351822>,  <31.965672, 37.884914, 28.356010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725929, 37.874603, 28.351822>,  <31.326359, 37.857422, 28.344841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725929, 37.874603, 28.351822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016608, -0.682899, 0.730325,
		0.043290, -0.729249, -0.682877,
		0.998925, 0.042957, 0.017451,
		32.025608, 37.887489, 28.357058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489401, 37.195656, 28.485226>,  <31.326359, 37.857422, 28.344841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489401, 37.195656, 28.485226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820635, 37.409477, 28.552792>,  <32.019375, 37.537769, 28.593332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820635, 37.409477, 28.552792>,  <31.489401, 37.195656, 28.485226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820635, 37.409477, 28.552792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179787, -0.538623, 0.823141,
		0.530992, -0.651262, -0.542131,
		0.828084, 0.534550, 0.168916,
		32.069061, 37.569843, 28.603466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000290, 36.701099, 28.494341>,  <31.489401, 37.195656, 28.485226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000290, 36.701099, 28.494341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127831, 37.018246, 28.702072>,  <32.204357, 37.208534, 28.826712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127831, 37.018246, 28.702072>,  <32.000290, 36.701099, 28.494341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127831, 37.018246, 28.702072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320936, -0.605878, 0.727950,
		0.891814, -0.065440, -0.447645,
		0.318856, 0.792861, 0.519328,
		32.223488, 37.256104, 28.857870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517078, 36.459732, 28.913147>,  <32.000290, 36.701099, 28.494341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517078, 36.459732, 28.913147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451134, 36.814312, 29.086134>,  <32.411568, 37.027061, 29.189926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.451134, 36.814312, 29.086134>,  <32.517078, 36.459732, 28.913147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451134, 36.814312, 29.086134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250070, -0.386573, 0.887708,
		0.954089, 0.254494, -0.157945,
		-0.164860, 0.886450, 0.432466,
		32.401676, 37.080246, 29.215874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125401, 36.634953, 29.353148>,  <32.517078, 36.459732, 28.913147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125401, 36.634953, 29.353148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783447, 36.809250, 29.465794>,  <32.578278, 36.913830, 29.533381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783447, 36.809250, 29.465794>,  <33.125401, 36.634953, 29.353148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783447, 36.809250, 29.465794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139923, -0.329046, 0.933890,
		0.499602, 0.837768, 0.220324,
		-0.854880, 0.435745, 0.281615,
		32.526985, 36.939972, 29.550278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250736, 37.019463, 29.954000>,  <33.125401, 36.634953, 29.353148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250736, 37.019463, 29.954000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851246, 37.003597, 29.966448>,  <32.611549, 36.994080, 29.973917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851246, 37.003597, 29.966448>,  <33.250736, 37.019463, 29.954000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851246, 37.003597, 29.966448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033579, -0.062936, 0.997452,
		-0.037601, 0.997229, 0.064188,
		-0.998728, -0.039661, 0.031119,
		32.551628, 36.991699, 29.975784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059185, 37.442215, 30.576553>,  <33.250736, 37.019463, 29.954000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059185, 37.442215, 30.576553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766842, 37.180447, 30.499020>,  <32.591434, 37.023384, 30.452499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766842, 37.180447, 30.499020>,  <33.059185, 37.442215, 30.576553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766842, 37.180447, 30.499020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159097, -0.112820, 0.980795,
		-0.663723, 0.747665, -0.021661,
		-0.730862, -0.654423, -0.193833,
		32.547585, 36.984119, 30.440870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653435, 37.500118, 31.204819>,  <33.059185, 37.442215, 30.576553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653435, 37.500118, 31.204819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501522, 37.177517, 31.023569>,  <32.410374, 36.983955, 30.914820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501522, 37.177517, 31.023569>,  <32.653435, 37.500118, 31.204819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501522, 37.177517, 31.023569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306443, -0.352486, 0.884220,
		-0.872845, 0.474668, -0.113278,
		-0.379782, -0.806501, -0.453125,
		32.387589, 36.935566, 30.887632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888021, 37.259239, 31.542175>,  <32.653435, 37.500118, 31.204819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888021, 37.259239, 31.542175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017414, 36.931263, 31.353262>,  <32.095051, 36.734478, 31.239914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017414, 36.931263, 31.353262>,  <31.888021, 37.259239, 31.542175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017414, 36.931263, 31.353262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235772, -0.553221, 0.798973,
		-0.916390, -0.147103, -0.372277,
		0.323483, -0.819943, -0.472283,
		32.114460, 36.685280, 31.211576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365093, 36.742908, 31.718147>,  <31.888021, 37.259239, 31.542175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365093, 36.742908, 31.718147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703478, 36.558392, 31.611149>,  <31.906509, 36.447681, 31.546949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703478, 36.558392, 31.611149>,  <31.365093, 36.742908, 31.718147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703478, 36.558392, 31.611149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013228, -0.519641, 0.854282,
		-0.533094, -0.719143, -0.445694,
		0.845952, -0.461309, -0.267505,
		31.957266, 36.420002, 31.530901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317335, 36.201626, 32.223106>,  <31.365093, 36.742908, 31.718147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317335, 36.201626, 32.223106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689260, 36.174400, 32.078430>,  <31.912415, 36.158066, 31.991625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689260, 36.174400, 32.078430>,  <31.317335, 36.201626, 32.223106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689260, 36.174400, 32.078430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301486, -0.422793, 0.854607,
		-0.211082, -0.903667, -0.372599,
		0.929812, -0.068059, -0.361687,
		31.968204, 36.153984, 31.969923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567373, 35.652954, 32.677307>,  <31.317335, 36.201626, 32.223106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567373, 35.652954, 32.677307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901539, 35.767605, 32.489719>,  <32.102039, 35.836395, 32.377167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901539, 35.767605, 32.489719>,  <31.567373, 35.652954, 32.677307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901539, 35.767605, 32.489719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549242, -0.467119, 0.692917,
		-0.020453, -0.836447, -0.547665,
		0.835413, 0.286628, -0.468966,
		32.152164, 35.853592, 32.349030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978048, 35.066948, 32.476063>,  <31.567373, 35.652954, 32.677307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978048, 35.066948, 32.476063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216682, 35.385490, 32.515873>,  <32.359863, 35.576614, 32.539757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216682, 35.385490, 32.515873>,  <31.978048, 35.066948, 32.476063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216682, 35.385490, 32.515873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610903, -0.531037, 0.587195,
		0.520466, -0.289513, -0.803304,
		0.596585, 0.796356, 0.099522,
		32.395657, 35.624397, 32.545731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660240, 34.920204, 32.341873>,  <31.978048, 35.066948, 32.476063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660240, 34.920204, 32.341873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733131, 35.251083, 32.554493>,  <32.776867, 35.449612, 32.682064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733131, 35.251083, 32.554493>,  <32.660240, 34.920204, 32.341873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733131, 35.251083, 32.554493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710488, -0.484481, 0.510377,
		0.679706, 0.284654, -0.675997,
		0.182226, 0.827194, 0.531548,
		32.787800, 35.499241, 32.713959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382439, 34.887508, 32.391094>,  <32.660240, 34.920204, 32.341873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382439, 34.887508, 32.391094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254440, 35.142628, 32.671326>,  <33.177643, 35.295700, 32.839466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254440, 35.142628, 32.671326>,  <33.382439, 34.887508, 32.391094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254440, 35.142628, 32.671326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565660, -0.464578, 0.681319,
		0.760020, 0.614309, -0.212116,
		-0.319996, 0.637802, 0.700579,
		33.158440, 35.333969, 32.881500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974247, 35.150867, 32.711311>,  <33.382439, 34.887508, 32.391094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974247, 35.150867, 32.711311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672226, 35.197392, 32.969418>,  <33.491013, 35.225307, 33.124283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672226, 35.197392, 32.969418>,  <33.974247, 35.150867, 32.711311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672226, 35.197392, 32.969418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481444, -0.569721, 0.666055,
		0.445092, 0.813566, 0.374171,
		-0.755053, 0.116313, 0.645265,
		33.445709, 35.232285, 33.162998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087513, 34.791981, 32.067875>,  <33.974247, 35.150867, 32.711311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087513, 34.791981, 32.067875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395283, 35.034721, 32.147598>,  <34.579945, 35.180367, 32.195431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395283, 35.034721, 32.147598>,  <34.087513, 34.791981, 32.067875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395283, 35.034721, 32.147598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298976, 0.617896, -0.727198,
		-0.564452, 0.499934, 0.656856,
		0.769420, 0.606853, 0.199305,
		34.626110, 35.216778, 32.207390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853859, 35.518867, 31.966490>,  <34.087513, 34.791981, 32.067875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853859, 35.518867, 31.966490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252758, 35.542068, 31.948025>,  <34.492096, 35.555988, 31.936947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252758, 35.542068, 31.948025>,  <33.853859, 35.518867, 31.966490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252758, 35.542068, 31.948025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070330, 0.543528, -0.836439,
		-0.023424, 0.837385, 0.546112,
		0.997249, 0.058001, -0.046161,
		34.551933, 35.559467, 31.934175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053783, 36.229275, 31.927391>,  <33.853859, 35.518867, 31.966490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053783, 36.229275, 31.927391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369999, 36.019306, 31.801208>,  <34.559727, 35.893326, 31.725498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369999, 36.019306, 31.801208>,  <34.053783, 36.229275, 31.927391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369999, 36.019306, 31.801208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080547, 0.599748, -0.796125,
		0.607094, 0.603957, 0.516403,
		0.790537, -0.524917, -0.315457,
		34.607159, 35.861832, 31.706572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627544, 36.667439, 31.906191>,  <34.053783, 36.229275, 31.927391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627544, 36.667439, 31.906191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706848, 36.379429, 31.640182>,  <34.754429, 36.206623, 31.480577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706848, 36.379429, 31.640182>,  <34.627544, 36.667439, 31.906191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706848, 36.379429, 31.640182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179703, 0.693691, -0.697495,
		0.963535, 0.018779, 0.266923,
		0.198260, -0.720028, -0.665021,
		34.766327, 36.163422, 31.440676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155563, 36.978127, 31.611801>,  <34.627544, 36.667439, 31.906191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155563, 36.978127, 31.611801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139805, 36.696136, 31.328547>,  <35.130348, 36.526943, 31.158594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.139805, 36.696136, 31.328547>,  <35.155563, 36.978127, 31.611801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139805, 36.696136, 31.328547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011114, 0.708951, -0.705170,
		0.999162, -0.019911, -0.035765,
		-0.039396, -0.704977, -0.708135,
		35.127987, 36.484642, 31.116106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649731, 37.198742, 31.177837>,  <35.155563, 36.978127, 31.611801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649731, 37.198742, 31.177837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401848, 36.963554, 30.969893>,  <35.253117, 36.822441, 30.845125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401848, 36.963554, 30.969893>,  <35.649731, 37.198742, 31.177837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401848, 36.963554, 30.969893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028666, 0.644988, -0.763655,
		0.784307, -0.488148, -0.382851,
		-0.619711, -0.587964, -0.519862,
		35.215935, 36.787167, 30.813934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988247, 37.031189, 30.574245>,  <35.649731, 37.198742, 31.177837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988247, 37.031189, 30.574245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601288, 36.965363, 30.497240>,  <35.369114, 36.925865, 30.451036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601288, 36.965363, 30.497240>,  <35.988247, 37.031189, 30.574245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601288, 36.965363, 30.497240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051105, 0.617646, -0.784794,
		0.248055, -0.769046, -0.589099,
		-0.967397, -0.164566, -0.192512,
		35.311069, 36.915993, 30.439486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980186, 36.905819, 29.852045>,  <35.988247, 37.031189, 30.574245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980186, 36.905819, 29.852045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601612, 36.993774, 29.946625>,  <35.374466, 37.046547, 30.003372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601612, 36.993774, 29.946625>,  <35.980186, 36.905819, 29.852045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601612, 36.993774, 29.946625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110489, 0.467537, -0.877041,
		-0.303399, -0.856188, -0.418199,
		-0.946436, 0.219887, 0.236450,
		35.317680, 37.059742, 30.017559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674435, 36.810780, 29.249237>,  <35.980186, 36.905819, 29.852045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674435, 36.810780, 29.249237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454479, 37.062477, 29.468939>,  <35.322506, 37.213493, 29.600760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454479, 37.062477, 29.468939>,  <35.674435, 36.810780, 29.249237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454479, 37.062477, 29.468939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050252, 0.631488, -0.773756,
		-0.833727, -0.453078, -0.315625,
		-0.549886, 0.629241, 0.549256,
		35.289513, 37.251247, 29.633717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082394, 36.983887, 28.815887>,  <35.674435, 36.810780, 29.249237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082394, 36.983887, 28.815887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110073, 37.264088, 29.100002>,  <35.126682, 37.432209, 29.270472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110073, 37.264088, 29.100002>,  <35.082394, 36.983887, 28.815887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110073, 37.264088, 29.100002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069447, 0.713651, -0.697050,
		-0.995183, -0.001092, 0.098032,
		0.069200, 0.700500, 0.710289,
		35.130833, 37.474239, 29.313089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527363, 37.530472, 28.685114>,  <35.082394, 36.983887, 28.815887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.527363, 37.530472, 28.685114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794994, 37.705273, 28.925570>,  <34.955574, 37.810154, 29.069843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794994, 37.705273, 28.925570>,  <34.527363, 37.530472, 28.685114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794994, 37.705273, 28.925570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028722, 0.823459, -0.566649,
		-0.742636, 0.361867, 0.563510,
		0.669079, 0.436998, 0.601137,
		34.995720, 37.836372, 29.105911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318794, 38.137634, 28.790150>,  <34.527363, 37.530472, 28.685114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318794, 38.137634, 28.790150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708740, 38.184082, 28.866213>,  <34.942707, 38.211952, 28.911850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708740, 38.184082, 28.866213>,  <34.318794, 38.137634, 28.790150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708740, 38.184082, 28.866213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005961, 0.866738, -0.498728,
		-0.222730, 0.485058, 0.845642,
		0.974862, 0.116123, 0.190157,
		35.001198, 38.218918, 28.923260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312271, 38.752148, 29.032633>,  <34.318794, 38.137634, 28.790150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312271, 38.752148, 29.032633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660969, 38.652340, 28.863968>,  <34.870190, 38.592457, 28.762770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660969, 38.652340, 28.863968>,  <34.312271, 38.752148, 29.032633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660969, 38.652340, 28.863968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143548, 0.692776, -0.706721,
		0.468458, 0.676610, 0.568107,
		0.871746, -0.249519, -0.421662,
		34.922493, 38.577484, 28.737469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509102, 39.424828, 28.807375>,  <34.312271, 38.752148, 29.032633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509102, 39.424828, 28.807375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763771, 39.178272, 28.622025>,  <34.916573, 39.030338, 28.510815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763771, 39.178272, 28.622025>,  <34.509102, 39.424828, 28.807375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763771, 39.178272, 28.622025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091497, 0.657038, -0.748285,
		0.765689, 0.434013, 0.474714,
		0.636670, -0.616388, -0.463376,
		34.954773, 38.993355, 28.483011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035934, 39.838379, 28.586493>,  <34.509102, 39.424828, 28.807375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035934, 39.838379, 28.586493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031445, 39.517166, 28.348160>,  <35.028751, 39.324440, 28.205160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031445, 39.517166, 28.348160>,  <35.035934, 39.838379, 28.586493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031445, 39.517166, 28.348160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183458, 0.584102, -0.790675,
		0.982963, -0.118183, 0.140768,
		-0.011222, -0.803030, -0.595833,
		35.028076, 39.276257, 28.169411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567158, 39.942680, 28.054609>,  <35.035934, 39.838379, 28.586493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567158, 39.942680, 28.054609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354973, 39.643665, 27.894709>,  <35.227661, 39.464256, 27.798769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354973, 39.643665, 27.894709>,  <35.567158, 39.942680, 28.054609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354973, 39.643665, 27.894709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025347, 0.457368, -0.888916,
		0.847328, -0.481672, -0.223670,
		-0.530465, -0.747534, -0.399750,
		35.195831, 39.419407, 27.774784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969429, 39.690899, 27.485388>,  <35.567158, 39.942680, 28.054609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969429, 39.690899, 27.485388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585354, 39.591560, 27.434219>,  <35.354908, 39.531956, 27.403519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585354, 39.591560, 27.434219>,  <35.969429, 39.690899, 27.485388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585354, 39.591560, 27.434219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069682, 0.656352, -0.751230,
		0.270529, -0.712407, -0.647526,
		-0.960186, -0.248351, -0.127920,
		35.297298, 39.517056, 27.395844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821980, 39.553120, 26.751736>,  <35.969429, 39.690899, 27.485388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821980, 39.553120, 26.751736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462822, 39.641594, 26.903980>,  <35.247326, 39.694679, 26.995327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462822, 39.641594, 26.903980>,  <35.821980, 39.553120, 26.751736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462822, 39.641594, 26.903980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331006, 0.230777, -0.914974,
		-0.290212, -0.947534, -0.134001,
		-0.897893, 0.221181, 0.380614,
		35.193455, 39.707947, 27.018164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338020, 39.134903, 26.354298>,  <35.821980, 39.553120, 26.751736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338020, 39.134903, 26.354298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110668, 39.421921, 26.515326>,  <34.974255, 39.594131, 26.611942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110668, 39.421921, 26.515326>,  <35.338020, 39.134903, 26.354298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110668, 39.421921, 26.515326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422351, 0.165446, -0.891206,
		-0.706087, -0.676573, 0.209021,
		-0.568384, 0.717549, 0.402570,
		34.940151, 39.637184, 26.636097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810692, 39.069317, 25.977865>,  <35.338020, 39.134903, 26.354298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810692, 39.069317, 25.977865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726479, 39.415211, 26.160254>,  <34.675949, 39.622746, 26.269688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726479, 39.415211, 26.160254>,  <34.810692, 39.069317, 25.977865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726479, 39.415211, 26.160254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551311, 0.280154, -0.785856,
		-0.807299, -0.416832, 0.417755,
		-0.210534, 0.864734, 0.455972,
		34.663319, 39.674629, 26.297045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109138, 39.151134, 26.037043>,  <34.810692, 39.069317, 25.977865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109138, 39.151134, 26.037043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252922, 39.523720, 26.059553>,  <34.339191, 39.747269, 26.073059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252922, 39.523720, 26.059553>,  <34.109138, 39.151134, 26.037043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252922, 39.523720, 26.059553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646602, 0.292107, -0.704684,
		-0.672825, 0.216918, 0.707286,
		0.359463, 0.931461, 0.056277,
		34.360760, 39.803158, 26.076437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496075, 39.630451, 26.069962>,  <34.109138, 39.151134, 26.037043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496075, 39.630451, 26.069962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819000, 39.829102, 25.942457>,  <34.012756, 39.948292, 25.865953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819000, 39.829102, 25.942457>,  <33.496075, 39.630451, 26.069962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819000, 39.829102, 25.942457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561489, 0.480218, -0.673885,
		-0.181591, 0.723018, 0.666535,
		0.807313, 0.496624, -0.318763,
		34.061195, 39.978088, 25.846828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187145, 40.335724, 25.986151>,  <33.496075, 39.630451, 26.069962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187145, 40.335724, 25.986151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534107, 40.342484, 25.787222>,  <33.742283, 40.346539, 25.667864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534107, 40.342484, 25.787222>,  <33.187145, 40.335724, 25.986151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534107, 40.342484, 25.787222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388096, 0.648488, -0.654862,
		0.311442, 0.761038, 0.569057,
		0.867401, 0.016898, -0.497322,
		33.794327, 40.347553, 25.638025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185558, 41.044025, 25.800760>,  <33.187145, 40.335724, 25.986151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185558, 41.044025, 25.800760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438972, 40.834881, 25.572639>,  <33.591022, 40.709393, 25.435766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438972, 40.834881, 25.572639>,  <33.185558, 41.044025, 25.800760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438972, 40.834881, 25.572639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378957, 0.432938, -0.817898,
		0.674555, 0.734288, 0.076139,
		0.633536, -0.522863, -0.570304,
		33.629032, 40.678020, 25.401548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573738, 41.543903, 25.453457>,  <33.185558, 41.044025, 25.800760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573738, 41.543903, 25.453457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612495, 41.209785, 25.236977>,  <33.635750, 41.009315, 25.107088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612495, 41.209785, 25.236977>,  <33.573738, 41.543903, 25.453457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612495, 41.209785, 25.236977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098943, 0.532982, -0.840322,
		0.990365, 0.134967, -0.031006,
		0.096890, -0.835293, -0.541200,
		33.641563, 40.959198, 25.074617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984608, 41.814907, 24.984434>,  <33.573738, 41.543903, 25.453457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984608, 41.814907, 24.984434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818077, 41.482033, 24.837936>,  <33.718159, 41.282307, 24.750038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818077, 41.482033, 24.837936>,  <33.984608, 41.814907, 24.984434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818077, 41.482033, 24.837936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102076, 0.443047, -0.890668,
		0.903469, -0.333420, -0.269397,
		-0.416323, -0.832190, -0.366245,
		33.693180, 41.232376, 24.728064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250443, 41.713593, 24.475204>,  <33.984608, 41.814907, 24.984434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250443, 41.713593, 24.475204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920750, 41.503265, 24.391146>,  <33.722935, 41.377071, 24.340710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920750, 41.503265, 24.391146>,  <34.250443, 41.713593, 24.475204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920750, 41.503265, 24.391146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034038, 0.416456, -0.908519,
		0.565232, -0.741675, -0.361153,
		-0.824230, -0.525816, -0.210149,
		33.673481, 41.345520, 24.328102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454254, 41.380096, 23.864559>,  <34.250443, 41.713593, 24.475204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454254, 41.380096, 23.864559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056400, 41.380707, 23.905930>,  <33.817688, 41.381073, 23.930752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056400, 41.380707, 23.905930>,  <34.454254, 41.380096, 23.864559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056400, 41.380707, 23.905930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099436, 0.261247, -0.960137,
		-0.028486, -0.965271, -0.259694,
		-0.994636, 0.001527, 0.103425,
		33.758011, 41.381165, 23.936956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234074, 41.013885, 23.296322>,  <34.454254, 41.380096, 23.864559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234074, 41.013885, 23.296322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915249, 41.230045, 23.404146>,  <33.723953, 41.359741, 23.468840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915249, 41.230045, 23.404146>,  <34.234074, 41.013885, 23.296322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915249, 41.230045, 23.404146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273852, 0.074390, -0.958890,
		-0.538238, -0.838113, 0.088697,
		-0.797060, 0.540401, 0.269559,
		33.676132, 41.392166, 23.485014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650673, 40.776958, 22.896097>,  <34.234074, 41.013885, 23.296322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650673, 40.776958, 22.896097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541618, 41.144768, 23.009336>,  <33.476185, 41.365452, 23.077280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541618, 41.144768, 23.009336>,  <33.650673, 40.776958, 22.896097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541618, 41.144768, 23.009336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365954, 0.173022, -0.914407,
		-0.889803, -0.352899, 0.289333,
		-0.272633, 0.919525, 0.283100,
		33.459827, 41.420624, 23.094267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031719, 40.854801, 22.676748>,  <33.650673, 40.776958, 22.896097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031719, 40.854801, 22.676748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121349, 41.238037, 22.748138>,  <33.175125, 41.467979, 22.790972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121349, 41.238037, 22.748138>,  <33.031719, 40.854801, 22.676748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121349, 41.238037, 22.748138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256880, 0.234717, -0.937508,
		-0.940109, 0.164222, 0.298708,
		0.224071, 0.958091, 0.178474,
		33.188572, 41.525463, 22.801682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443523, 41.213451, 22.628071>,  <33.031719, 40.854801, 22.676748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443523, 41.213451, 22.628071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758316, 41.447079, 22.548550>,  <32.947193, 41.587254, 22.500837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758316, 41.447079, 22.548550>,  <32.443523, 41.213451, 22.628071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758316, 41.447079, 22.548550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367122, 0.184341, -0.911724,
		-0.495859, 0.790497, 0.359497,
		0.786985, 0.584065, -0.198802,
		32.994411, 41.622299, 22.488909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197453, 41.841282, 22.074635>,  <32.443523, 41.213451, 22.628071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197453, 41.841282, 22.074635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595963, 41.851959, 22.041834>,  <32.835068, 41.858364, 22.022154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595963, 41.851959, 22.041834>,  <32.197453, 41.841282, 22.074635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595963, 41.851959, 22.041834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086075, 0.249943, -0.964427,
		-0.005248, 0.967892, 0.251310,
		0.996275, 0.026693, -0.081999,
		32.894844, 41.859966, 22.017235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349392, 42.366100, 21.845419>,  <32.197453, 41.841282, 22.074635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349392, 42.366100, 21.845419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699173, 42.197887, 21.748690>,  <32.909042, 42.096958, 21.690653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699173, 42.197887, 21.748690>,  <32.349392, 42.366100, 21.845419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699173, 42.197887, 21.748690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131473, 0.274390, -0.952588,
		0.466948, 0.864790, 0.184653,
		0.874456, -0.420532, -0.241823,
		32.961510, 42.071728, 21.676144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829823, 42.858852, 21.475988>,  <32.349392, 42.366100, 21.845419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829823, 42.858852, 21.475988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955673, 42.494942, 21.367685>,  <33.031185, 42.276596, 21.302704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955673, 42.494942, 21.367685>,  <32.829823, 42.858852, 21.475988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955673, 42.494942, 21.367685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017184, 0.279737, -0.959923,
		0.949059, 0.306673, 0.072380,
		0.314630, -0.909780, -0.270757,
		33.050064, 42.222008, 21.286459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368992, 43.013561, 20.963774>,  <32.829823, 42.858852, 21.475988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368992, 43.013561, 20.963774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287296, 42.626595, 20.903927>,  <33.238277, 42.394413, 20.868019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287296, 42.626595, 20.903927>,  <33.368992, 43.013561, 20.963774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287296, 42.626595, 20.903927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061591, 0.139838, -0.988257,
		0.976981, -0.211059, 0.031024,
		-0.204242, -0.967419, -0.149618,
		33.226025, 42.336369, 20.859041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857880, 42.753708, 20.454782>,  <33.368992, 43.013561, 20.963774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857880, 42.753708, 20.454782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560608, 42.486259, 20.444712>,  <33.382244, 42.325790, 20.438669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560608, 42.486259, 20.444712>,  <33.857880, 42.753708, 20.454782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560608, 42.486259, 20.444712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046892, -0.014510, -0.998795,
		0.667449, -0.743462, 0.042137,
		-0.743178, -0.668620, -0.025178,
		33.337654, 42.285675, 20.437159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046436, 42.249519, 20.082058>,  <33.857880, 42.753708, 20.454782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046436, 42.249519, 20.082058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649052, 42.214165, 20.053143>,  <33.410622, 42.192951, 20.035793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649052, 42.214165, 20.053143>,  <34.046436, 42.249519, 20.082058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649052, 42.214165, 20.053143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082544, -0.118480, -0.989520,
		0.078898, -0.989015, 0.125002,
		-0.993459, -0.088390, -0.072289,
		33.351013, 42.187649, 20.031456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317699, 41.495045, 19.908947>,  <34.046436, 42.249519, 20.082058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317699, 41.495045, 19.908947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569988, 41.380180, 19.620579>,  <34.721363, 41.311260, 19.447557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569988, 41.380180, 19.620579>,  <34.317699, 41.495045, 19.908947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569988, 41.380180, 19.620579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632934, -0.347134, 0.692020,
		-0.448979, -0.892768, -0.037190,
		0.630724, -0.287163, -0.720919,
		34.759205, 41.294033, 19.404303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449543, 40.857231, 20.090363>,  <34.317699, 41.495045, 19.908947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449543, 40.857231, 20.090363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749855, 41.027176, 19.888048>,  <34.930042, 41.129143, 19.766659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.749855, 41.027176, 19.888048>,  <34.449543, 40.857231, 20.090363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749855, 41.027176, 19.888048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627921, -0.221366, 0.746132,
		0.205038, -0.877776, -0.432977,
		0.750783, 0.424861, -0.505786,
		34.975090, 41.154633, 19.736313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921993, 40.456676, 20.085623>,  <34.449543, 40.857231, 20.090363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921993, 40.456676, 20.085623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145733, 40.777473, 20.001772>,  <35.279976, 40.969952, 19.951462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145733, 40.777473, 20.001772>,  <34.921993, 40.456676, 20.085623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145733, 40.777473, 20.001772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702641, -0.324544, 0.633220,
		0.439803, -0.501482, -0.745043,
		0.559348, 0.801990, -0.209626,
		35.313538, 41.018070, 19.938885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488384, 40.158844, 20.074999>,  <34.921993, 40.456676, 20.085623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488384, 40.158844, 20.074999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553207, 40.549065, 20.134384>,  <35.592102, 40.783195, 20.170015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553207, 40.549065, 20.134384>,  <35.488384, 40.158844, 20.074999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553207, 40.549065, 20.134384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680003, -0.219426, 0.699606,
		0.715077, -0.012420, -0.698935,
		0.162054, 0.975550, 0.148461,
		35.601822, 40.841728, 20.178923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292007, 40.309036, 20.197790>,  <35.488384, 40.158844, 20.074999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292007, 40.309036, 20.197790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119171, 40.647942, 20.321367>,  <36.015469, 40.851284, 20.395514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119171, 40.647942, 20.321367>,  <36.292007, 40.309036, 20.197790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119171, 40.647942, 20.321367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358092, -0.153219, 0.921029,
		0.827686, 0.508602, -0.237192,
		-0.432095, 0.847259, 0.308943,
		35.989544, 40.902119, 20.414051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799328, 40.655678, 20.422340>,  <36.292007, 40.309036, 20.197790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799328, 40.655678, 20.422340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483418, 40.805817, 20.616396>,  <36.293869, 40.895901, 20.732830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483418, 40.805817, 20.616396>,  <36.799328, 40.655678, 20.422340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483418, 40.805817, 20.616396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478299, -0.118321, 0.870189,
		0.384029, 0.919299, -0.086083,
		-0.789779, 0.375352, 0.485139,
		36.246483, 40.918423, 20.761938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118347, 41.122166, 21.009108>,  <36.799328, 40.655678, 20.422340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118347, 41.122166, 21.009108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732559, 41.077526, 21.104897>,  <36.501087, 41.050743, 21.162371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732559, 41.077526, 21.104897>,  <37.118347, 41.122166, 21.009108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732559, 41.077526, 21.104897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250414, -0.097156, 0.963252,
		-0.084232, 0.988993, 0.121650,
		-0.964468, -0.111600, 0.239474,
		36.443218, 41.044044, 21.176739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009533, 41.499504, 21.644115>,  <37.118347, 41.122166, 21.009108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009533, 41.499504, 21.644115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700146, 41.245983, 21.641392>,  <36.514515, 41.093872, 21.639757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700146, 41.245983, 21.641392>,  <37.009533, 41.499504, 21.644115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700146, 41.245983, 21.641392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119009, -0.155766, 0.980599,
		-0.622566, 0.757649, 0.195908,
		-0.773465, -0.633802, -0.006808,
		36.468105, 41.055843, 21.639349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516056, 41.671577, 22.124107>,  <37.009533, 41.499504, 21.644115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516056, 41.671577, 22.124107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435806, 41.283287, 22.071270>,  <36.387657, 41.050312, 22.039568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435806, 41.283287, 22.071270>,  <36.516056, 41.671577, 22.124107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435806, 41.283287, 22.071270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132235, -0.106766, 0.985452,
		-0.970703, 0.215173, -0.106944,
		-0.200625, -0.970722, -0.132091,
		36.375618, 40.992069, 22.031643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970104, 41.456837, 22.598246>,  <36.516056, 41.671577, 22.124107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970104, 41.456837, 22.598246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182873, 41.133156, 22.498446>,  <36.310535, 40.938950, 22.438566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182873, 41.133156, 22.498446>,  <35.970104, 41.456837, 22.598246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182873, 41.133156, 22.498446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041631, -0.319275, 0.946747,
		-0.845767, -0.493212, -0.203519,
		0.531926, -0.809201, -0.249499,
		36.342449, 40.890396, 22.423595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792980, 40.993614, 23.056646>,  <35.970104, 41.456837, 22.598246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792980, 40.993614, 23.056646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100498, 40.776661, 22.921133>,  <36.285011, 40.646488, 22.839825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100498, 40.776661, 22.921133>,  <35.792980, 40.993614, 23.056646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100498, 40.776661, 22.921133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098897, -0.422558, 0.900924,
		-0.631800, -0.726132, -0.271222,
		0.768797, -0.542380, -0.338784,
		36.331139, 40.613949, 22.819498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657219, 40.178333, 23.099176>,  <35.792980, 40.993614, 23.056646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657219, 40.178333, 23.099176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047821, 40.264519, 23.100332>,  <36.282185, 40.316231, 23.101025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047821, 40.264519, 23.100332>,  <35.657219, 40.178333, 23.099176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047821, 40.264519, 23.100332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085064, -0.397770, 0.913533,
		0.197978, -0.891827, -0.406754,
		0.976508, 0.215459, 0.002888,
		36.340775, 40.329155, 23.101198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018761, 39.536633, 23.302416>,  <35.657219, 40.178333, 23.099176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018761, 39.536633, 23.302416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282219, 39.829350, 23.372459>,  <36.440292, 40.004982, 23.414486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282219, 39.829350, 23.372459>,  <36.018761, 39.536633, 23.302416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282219, 39.829350, 23.372459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161335, -0.364650, 0.917061,
		0.734956, -0.575764, -0.358239,
		0.658643, 0.731796, 0.175111,
		36.479813, 40.048889, 23.424994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698280, 39.238365, 23.496040>,  <36.018761, 39.536633, 23.302416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698280, 39.238365, 23.496040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720352, 39.614162, 23.631281>,  <36.733597, 39.839642, 23.712425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.720352, 39.614162, 23.631281>,  <36.698280, 39.238365, 23.496040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720352, 39.614162, 23.631281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207497, -0.342016, 0.916499,
		0.976678, 0.019583, -0.213813,
		0.055180, 0.939490, 0.338103,
		36.736908, 39.896011, 23.732712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325783, 39.124466, 23.873890>,  <36.698280, 39.238365, 23.496040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325783, 39.124466, 23.873890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161289, 39.467289, 23.998043>,  <37.062595, 39.672985, 24.072535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161289, 39.467289, 23.998043>,  <37.325783, 39.124466, 23.873890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161289, 39.467289, 23.998043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386651, -0.144345, 0.910860,
		0.825463, 0.494585, -0.272024,
		-0.411232, 0.857059, 0.310383,
		37.037918, 39.724407, 24.091158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820412, 39.491890, 24.363346>,  <37.325783, 39.124466, 23.873890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820412, 39.491890, 24.363346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447449, 39.608646, 24.448597>,  <37.223671, 39.678699, 24.499748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447449, 39.608646, 24.448597>,  <37.820412, 39.491890, 24.363346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447449, 39.608646, 24.448597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129205, -0.281527, 0.950815,
		0.337532, 0.914081, 0.224784,
		-0.932404, 0.291887, 0.213129,
		37.167728, 39.696213, 24.512535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869419, 40.098724, 24.885801>,  <37.820412, 39.491890, 24.363346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869419, 40.098724, 24.885801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505959, 39.932220, 24.898928>,  <37.287880, 39.832317, 24.906803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505959, 39.932220, 24.898928>,  <37.869419, 40.098724, 24.885801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505959, 39.932220, 24.898928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126705, -0.199995, 0.971570,
		-0.397860, 0.886979, 0.234468,
		-0.908655, -0.416257, 0.032814,
		37.233360, 39.807343, 24.908772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600494, 40.291016, 25.592953>,  <37.869419, 40.098724, 24.885801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600494, 40.291016, 25.592953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369488, 39.983887, 25.482014>,  <37.230885, 39.799610, 25.415451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369488, 39.983887, 25.482014>,  <37.600494, 40.291016, 25.592953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369488, 39.983887, 25.482014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000440, -0.340019, 0.940419,
		-0.816381, 0.542983, 0.196703,
		-0.577514, -0.767826, -0.277346,
		37.196232, 39.753540, 25.398809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104248, 40.147907, 26.144575>,  <37.600494, 40.291016, 25.592953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104248, 40.147907, 26.144575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103790, 39.809883, 25.930706>,  <37.103516, 39.607067, 25.802385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.103790, 39.809883, 25.930706>,  <37.104248, 40.147907, 26.144575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103790, 39.809883, 25.930706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137721, -0.529709, 0.836923,
		-0.990471, -0.072681, 0.116986,
		-0.001140, -0.845059, -0.534671,
		37.103447, 39.556366, 25.770304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615688, 39.755444, 26.504091>,  <37.104248, 40.147907, 26.144575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615688, 39.755444, 26.504091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864475, 39.511036, 26.308210>,  <37.013748, 39.364391, 26.190681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864475, 39.511036, 26.308210>,  <36.615688, 39.755444, 26.504091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864475, 39.511036, 26.308210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175101, -0.501022, 0.847536,
		-0.763212, -0.612889, -0.204631,
		0.621970, -0.611018, -0.489704,
		37.051067, 39.327732, 26.161299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455978, 39.127392, 26.907660>,  <36.615688, 39.755444, 26.504091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455978, 39.127392, 26.907660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778759, 39.061302, 26.680847>,  <36.972427, 39.021648, 26.544760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778759, 39.061302, 26.680847>,  <36.455978, 39.127392, 26.907660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778759, 39.061302, 26.680847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370144, -0.606658, 0.703533,
		-0.460235, -0.777603, -0.428389,
		0.806955, -0.165225, -0.567031,
		37.020847, 39.011734, 26.510738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562073, 38.390965, 26.915451>,  <36.455978, 39.127392, 26.907660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562073, 38.390965, 26.915451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915386, 38.555809, 26.826025>,  <37.127373, 38.654716, 26.772369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915386, 38.555809, 26.826025>,  <36.562073, 38.390965, 26.915451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915386, 38.555809, 26.826025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413554, -0.460177, 0.785628,
		0.220889, -0.786384, -0.576895,
		0.883279, 0.412113, -0.223564,
		37.180370, 38.679443, 26.758955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915138, 37.824013, 26.882767>,  <36.562073, 38.390965, 26.915451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915138, 37.824013, 26.882767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129768, 38.152367, 26.960981>,  <37.258549, 38.349377, 27.007910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129768, 38.152367, 26.960981>,  <36.915138, 37.824013, 26.882767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129768, 38.152367, 26.960981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269758, -0.386423, 0.881991,
		0.799571, -0.420510, -0.428786,
		0.536579, 0.820883, 0.195536,
		37.290741, 38.398632, 27.019642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385384, 37.512085, 27.346786>,  <36.915138, 37.824013, 26.882767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385384, 37.512085, 27.346786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473827, 37.901569, 27.368662>,  <37.526894, 38.135262, 27.381786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473827, 37.901569, 27.368662>,  <37.385384, 37.512085, 27.346786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473827, 37.901569, 27.368662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347749, -0.131107, 0.928376,
		0.911143, -0.186253, -0.367597,
		0.221107, 0.973715, 0.054688,
		37.540161, 38.193684, 27.385069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171425, 37.589790, 27.508192>,  <37.385384, 37.512085, 27.346786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171425, 37.589790, 27.508192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945816, 37.894997, 27.634489>,  <37.810452, 38.078121, 27.710268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945816, 37.894997, 27.634489>,  <38.171425, 37.589790, 27.508192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945816, 37.894997, 27.634489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385365, -0.094963, 0.917865,
		0.730325, 0.639371, -0.240477,
		-0.564020, 0.763011, 0.315745,
		37.776611, 38.123901, 27.729212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656460, 38.105858, 27.913769>,  <38.171425, 37.589790, 27.508192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656460, 38.105858, 27.913769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285892, 38.191677, 28.037523>,  <38.063553, 38.243168, 28.111776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285892, 38.191677, 28.037523>,  <38.656460, 38.105858, 27.913769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285892, 38.191677, 28.037523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300160, -0.075173, 0.950922,
		0.227276, 0.973816, 0.005242,
		-0.926418, 0.214548, 0.309386,
		38.007969, 38.256042, 28.130339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789619, 38.454201, 28.429554>,  <38.656460, 38.105858, 27.913769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789619, 38.454201, 28.429554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410690, 38.343098, 28.493336>,  <38.183331, 38.276436, 28.531605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410690, 38.343098, 28.493336>,  <38.789619, 38.454201, 28.429554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410690, 38.343098, 28.493336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188282, -0.080229, 0.978833,
		-0.259083, 0.957296, 0.128299,
		-0.947326, -0.277755, 0.159456,
		38.126492, 38.259769, 28.541172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525631, 38.820843, 29.019907>,  <38.789619, 38.454201, 28.429554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525631, 38.820843, 29.019907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263844, 38.521194, 28.978928>,  <38.106770, 38.341408, 28.954340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263844, 38.521194, 28.978928>,  <38.525631, 38.820843, 29.019907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263844, 38.521194, 28.978928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039429, -0.169128, 0.984805,
		-0.755061, 0.640484, 0.140226,
		-0.654468, -0.749117, -0.102449,
		38.067505, 38.296459, 28.948193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993286, 38.898075, 29.586481>,  <38.525631, 38.820843, 29.019907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993286, 38.898075, 29.586481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974236, 38.517540, 29.464699>,  <37.962807, 38.289219, 29.391630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974236, 38.517540, 29.464699>,  <37.993286, 38.898075, 29.586481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974236, 38.517540, 29.464699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095194, -0.299089, 0.949465,
		-0.994319, 0.074201, -0.076317,
		-0.047626, -0.951336, -0.304453,
		37.959949, 38.232140, 29.373363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691437, 38.489201, 30.212091>,  <37.993286, 38.898075, 29.586481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691437, 38.489201, 30.212091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829353, 38.190746, 29.984264>,  <37.912102, 38.011673, 29.847569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829353, 38.190746, 29.984264>,  <37.691437, 38.489201, 30.212091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829353, 38.190746, 29.984264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112932, -0.635339, 0.763931,
		-0.931862, -0.199072, -0.303319,
		0.344788, -0.746133, -0.569566,
		37.932789, 37.966908, 29.813395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109173, 37.974606, 30.154991>,  <37.691437, 38.489201, 30.212091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109173, 37.974606, 30.154991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453453, 37.786869, 30.076082>,  <37.660019, 37.674225, 30.028738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453453, 37.786869, 30.076082>,  <37.109173, 37.974606, 30.154991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453453, 37.786869, 30.076082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155301, -0.611044, 0.776213,
		-0.484853, -0.637448, -0.598813,
		0.860696, -0.469346, -0.197270,
		37.711662, 37.646065, 30.016901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968277, 37.197285, 30.129436>,  <37.109173, 37.974606, 30.154991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968277, 37.197285, 30.129436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357994, 37.242397, 30.207453>,  <37.591824, 37.269466, 30.254263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357994, 37.242397, 30.207453>,  <36.968277, 37.197285, 30.129436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357994, 37.242397, 30.207453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054786, -0.721115, 0.690646,
		0.218541, -0.683574, -0.696395,
		0.974289, 0.112782, 0.195043,
		37.650280, 37.276234, 30.265966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191536, 36.542797, 30.182766>,  <36.968277, 37.197285, 30.129436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191536, 36.542797, 30.182766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500599, 36.732986, 30.351019>,  <37.686035, 36.847099, 30.451971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500599, 36.732986, 30.351019>,  <37.191536, 36.542797, 30.182766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500599, 36.732986, 30.351019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033485, -0.692196, 0.720932,
		0.633944, -0.542945, -0.550749,
		0.772653, 0.475473, 0.420633,
		37.732395, 36.875629, 30.477209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574596, 36.005756, 30.404934>,  <37.191536, 36.542797, 30.182766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574596, 36.005756, 30.404934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717937, 36.316177, 30.612522>,  <37.803940, 36.502430, 30.737076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717937, 36.316177, 30.612522>,  <37.574596, 36.005756, 30.404934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717937, 36.316177, 30.612522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133473, -0.592768, 0.794236,
		0.923997, -0.215346, -0.316001,
		0.358351, 0.776049, 0.518973,
		37.825443, 36.548992, 30.768213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282562, 35.807690, 30.666756>,  <37.574596, 36.005756, 30.404934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282562, 35.807690, 30.666756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139030, 36.088303, 30.913036>,  <38.052910, 36.256672, 31.060804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139030, 36.088303, 30.913036>,  <38.282562, 35.807690, 30.666756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139030, 36.088303, 30.913036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195579, -0.588477, 0.784502,
		0.912681, 0.401924, 0.073960,
		-0.358834, 0.701536, 0.615700,
		38.031380, 36.298763, 31.097746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688919, 35.792515, 31.244606>,  <38.282562, 35.807690, 30.666756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688919, 35.792515, 31.244606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374886, 35.994282, 31.388384>,  <38.186466, 36.115341, 31.474649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374886, 35.994282, 31.388384>,  <38.688919, 35.792515, 31.244606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374886, 35.994282, 31.388384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094433, -0.476058, 0.874329,
		0.612144, 0.720368, 0.326113,
		-0.785087, 0.504420, 0.359443,
		38.139359, 36.145607, 31.496216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891998, 36.218414, 31.810314>,  <38.688919, 35.792515, 31.244606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891998, 36.218414, 31.810314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500099, 36.150177, 31.852261>,  <38.264961, 36.109234, 31.877428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500099, 36.150177, 31.852261>,  <38.891998, 36.218414, 31.810314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500099, 36.150177, 31.852261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179412, -0.515224, 0.838067,
		-0.088939, 0.839906, 0.535394,
		-0.979745, -0.170593, 0.104865,
		38.206177, 36.098999, 31.883720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815228, 36.187752, 32.549435>,  <38.891998, 36.218414, 31.810314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815228, 36.187752, 32.549435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464813, 36.024498, 32.446678>,  <38.254566, 35.926544, 32.385025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464813, 36.024498, 32.446678>,  <38.815228, 36.187752, 32.549435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464813, 36.024498, 32.446678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118553, -0.698602, 0.705621,
		-0.467449, 0.587693, 0.660385,
		-0.876034, -0.408133, -0.256888,
		38.202003, 35.902058, 32.369614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271641, 36.299625, 33.069462>,  <38.815228, 36.187752, 32.549435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271641, 36.299625, 33.069462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177582, 35.973576, 32.857693>,  <38.121147, 35.777946, 32.730633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177582, 35.973576, 32.857693>,  <38.271641, 36.299625, 33.069462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177582, 35.973576, 32.857693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191492, -0.572868, 0.796965,
		-0.952909, 0.086025, 0.290798,
		-0.235148, -0.815121, -0.529418,
		38.107037, 35.729038, 32.698868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794186, 36.027775, 33.553856>,  <38.271641, 36.299625, 33.069462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794186, 36.027775, 33.553856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895317, 35.729904, 33.306782>,  <37.955994, 35.551182, 33.158539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895317, 35.729904, 33.306782>,  <37.794186, 36.027775, 33.553856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895317, 35.729904, 33.306782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208539, -0.581473, 0.786385,
		-0.944770, -0.327629, 0.008284,
		0.252825, -0.744681, -0.617681,
		37.971165, 35.506500, 33.121479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428967, 35.387249, 33.666378>,  <37.794186, 36.027775, 33.553856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428967, 35.387249, 33.666378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812622, 35.333729, 33.566650>,  <38.042816, 35.301617, 33.506813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812622, 35.333729, 33.566650>,  <37.428967, 35.387249, 33.666378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812622, 35.333729, 33.566650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138431, -0.546583, 0.825884,
		-0.246776, -0.826647, -0.505724,
		0.959134, -0.133800, -0.249317,
		38.100361, 35.293591, 33.491856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610538, 34.695255, 33.848881>,  <37.428967, 35.387249, 33.666378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610538, 34.695255, 33.848881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937187, 34.924202, 33.878616>,  <38.133175, 35.061569, 33.896458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937187, 34.924202, 33.878616>,  <37.610538, 34.695255, 33.848881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937187, 34.924202, 33.878616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269350, -0.491828, 0.827983,
		0.510468, -0.656127, -0.555805,
		0.816623, 0.572365, 0.074335,
		38.182175, 35.095913, 33.900917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242241, 34.193558, 34.003155>,  <37.610538, 34.695255, 33.848881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242241, 34.193558, 34.003155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321999, 34.569225, 34.115009>,  <38.369854, 34.794628, 34.182121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321999, 34.569225, 34.115009>,  <38.242241, 34.193558, 34.003155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321999, 34.569225, 34.115009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256515, -0.325444, 0.910103,
		0.945749, -0.109738, -0.305803,
		0.199394, 0.939172, 0.279639,
		38.381817, 34.850975, 34.198902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886658, 34.218842, 34.246155>,  <38.242241, 34.193558, 34.003155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886658, 34.218842, 34.246155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715237, 34.538666, 34.414463>,  <38.612385, 34.730560, 34.515450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715237, 34.538666, 34.414463>,  <38.886658, 34.218842, 34.246155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715237, 34.538666, 34.414463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225180, -0.356492, 0.906757,
		0.875009, 0.483338, -0.027272,
		-0.428548, 0.799561, 0.420771,
		38.586674, 34.778534, 34.540695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276016, 34.185883, 34.766392>,  <38.886658, 34.218842, 34.246155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276016, 34.185883, 34.766392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016094, 34.471237, 34.871330>,  <38.860142, 34.642448, 34.934296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.016094, 34.471237, 34.871330>,  <39.276016, 34.185883, 34.766392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016094, 34.471237, 34.871330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257540, -0.118093, 0.959024,
		0.715137, 0.690748, -0.106987,
		-0.649809, 0.713387, 0.262348,
		38.821152, 34.685253, 34.950035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652710, 34.641499, 35.265831>,  <39.276016, 34.185883, 34.766392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652710, 34.641499, 35.265831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262417, 34.692833, 35.336796>,  <39.028240, 34.723633, 35.379375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262417, 34.692833, 35.336796>,  <39.652710, 34.641499, 35.265831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262417, 34.692833, 35.336796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171396, -0.056572, 0.983577,
		0.136264, 0.990116, 0.033203,
		-0.975733, 0.128335, 0.177411,
		38.969696, 34.731335, 35.390018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487812, 35.180672, 35.724369>,  <39.652710, 34.641499, 35.265831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487812, 35.180672, 35.724369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162964, 34.953281, 35.776966>,  <38.968056, 34.816845, 35.808525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.162964, 34.953281, 35.776966>,  <39.487812, 35.180672, 35.724369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162964, 34.953281, 35.776966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168466, -0.012693, 0.985626,
		-0.558639, 0.822600, 0.106078,
		-0.812122, -0.568479, 0.131490,
		38.919327, 34.782738, 35.816414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296406, 35.449276, 36.470310>,  <39.487812, 35.180672, 35.724369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296406, 35.449276, 36.470310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089329, 35.115868, 36.393116>,  <38.965084, 34.915825, 36.346802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089329, 35.115868, 36.393116>,  <39.296406, 35.449276, 36.470310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089329, 35.115868, 36.393116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217468, -0.089957, 0.971913,
		-0.827467, 0.545120, -0.134693,
		-0.517693, -0.833517, -0.192983,
		38.934021, 34.865814, 36.335220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761360, 35.379524, 36.967556>,  <39.296406, 35.449276, 36.470310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761360, 35.379524, 36.967556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796333, 35.002361, 36.839005>,  <38.817318, 34.776066, 36.761875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796333, 35.002361, 36.839005>,  <38.761360, 35.379524, 36.967556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796333, 35.002361, 36.839005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228131, -0.332993, 0.914916,
		-0.969697, -0.006677, -0.244220,
		0.087433, -0.942906, -0.321379,
		38.822563, 34.719490, 36.742592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083374, 34.980133, 37.048985>,  <38.761360, 35.379524, 36.967556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083374, 34.980133, 37.048985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384747, 34.717125, 37.047478>,  <38.565571, 34.559322, 37.046574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.384747, 34.717125, 37.047478>,  <38.083374, 34.980133, 37.048985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384747, 34.717125, 37.047478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304870, -0.354405, 0.883997,
		-0.582577, -0.664883, -0.467477,
		0.753431, -0.657516, -0.003766,
		38.610775, 34.519871, 37.046349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783367, 34.292973, 37.140312>,  <38.083374, 34.980133, 37.048985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783367, 34.292973, 37.140312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161083, 34.307114, 37.271198>,  <38.387714, 34.315598, 37.349728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161083, 34.307114, 37.271198>,  <37.783367, 34.292973, 37.140312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161083, 34.307114, 37.271198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290626, -0.376986, 0.879442,
		0.154445, -0.925544, -0.345710,
		0.944290, 0.035353, 0.327211,
		38.444370, 34.317719, 37.369362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005135, 33.599037, 37.419346>,  <37.783367, 34.292973, 37.140312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005135, 33.599037, 37.419346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243637, 33.868221, 37.594433>,  <38.386738, 34.029732, 37.699486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243637, 33.868221, 37.594433>,  <38.005135, 33.599037, 37.419346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243637, 33.868221, 37.594433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197044, -0.405883, 0.892431,
		0.778234, -0.618370, -0.109408,
		0.596259, 0.672962, 0.437718,
		38.422516, 34.070110, 37.725750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283848, 33.353920, 38.023705>,  <38.005135, 33.599037, 37.419346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283848, 33.353920, 38.023705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436111, 33.703453, 38.144711>,  <38.527470, 33.913174, 38.217316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436111, 33.703453, 38.144711>,  <38.283848, 33.353920, 38.023705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436111, 33.703453, 38.144711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048861, -0.307679, 0.950235,
		0.923425, -0.376494, -0.074424,
		0.380657, 0.873834, 0.302514,
		38.550308, 33.965603, 38.235466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718651, 33.146893, 38.453114>,  <38.283848, 33.353920, 38.023705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718651, 33.146893, 38.453114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660179, 33.528797, 38.556705>,  <38.625095, 33.757938, 38.618858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660179, 33.528797, 38.556705>,  <38.718651, 33.146893, 38.453114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660179, 33.528797, 38.556705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165190, -0.281671, 0.945184,
		0.975368, 0.095390, 0.198892,
		-0.146183, 0.954757, 0.258976,
		38.616325, 33.815224, 38.634399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218636, 33.269775, 39.002541>,  <38.718651, 33.146893, 38.453114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218636, 33.269775, 39.002541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922512, 33.537910, 39.022934>,  <38.744839, 33.698792, 39.035168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922512, 33.537910, 39.022934>,  <39.218636, 33.269775, 39.002541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922512, 33.537910, 39.022934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218253, -0.311375, 0.924885,
		0.635857, 0.673570, 0.376815,
		-0.740305, 0.670335, 0.050982,
		38.700420, 33.739010, 39.038227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276478, 33.614723, 39.682060>,  <39.218636, 33.269775, 39.002541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276478, 33.614723, 39.682060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900742, 33.702374, 39.576519>,  <38.675301, 33.754963, 39.513195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900742, 33.702374, 39.576519>,  <39.276478, 33.614723, 39.682060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900742, 33.702374, 39.576519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262205, 0.037094, 0.964299,
		0.221087, 0.974992, 0.022611,
		-0.939345, 0.219123, -0.263848,
		38.618938, 33.768112, 39.497364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041107, 34.219330, 40.149300>,  <39.276478, 33.614723, 39.682060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041107, 34.219330, 40.149300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721447, 34.020267, 40.014427>,  <38.529652, 33.900829, 39.933502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.721447, 34.020267, 40.014427>,  <39.041107, 34.219330, 40.149300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721447, 34.020267, 40.014427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371710, -0.031727, 0.927806,
		-0.472427, 0.866794, -0.159629,
		-0.799152, -0.497657, -0.337185,
		38.481701, 33.870972, 39.913273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411339, 34.594147, 40.385071>,  <39.041107, 34.219330, 40.149300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411339, 34.594147, 40.385071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314026, 34.210350, 40.328232>,  <38.255638, 33.980072, 40.294128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314026, 34.210350, 40.328232>,  <38.411339, 34.594147, 40.385071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314026, 34.210350, 40.328232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350656, -0.049589, 0.935191,
		-0.904354, 0.277341, -0.324387,
		-0.243281, -0.959491, -0.142097,
		38.241043, 33.922504, 40.285603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724934, 34.489235, 40.661934>,  <38.411339, 34.594147, 40.385071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724934, 34.489235, 40.661934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883411, 34.122349, 40.645229>,  <37.978497, 33.902218, 40.635208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883411, 34.122349, 40.645229>,  <37.724934, 34.489235, 40.661934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883411, 34.122349, 40.645229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286926, -0.166887, 0.943304,
		-0.872184, -0.361746, -0.329293,
		0.396192, -0.917218, -0.041762,
		38.002270, 33.847183, 40.632702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315639, 34.102837, 41.082405>,  <37.724934, 34.489235, 40.661934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315639, 34.102837, 41.082405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640949, 33.871853, 41.053772>,  <37.836136, 33.733261, 41.036594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640949, 33.871853, 41.053772>,  <37.315639, 34.102837, 41.082405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640949, 33.871853, 41.053772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072247, -0.222272, 0.972304,
		-0.577380, -0.785577, -0.222487,
		0.813273, -0.577463, -0.071580,
		37.884930, 33.698612, 41.032299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179073, 33.548420, 41.534115>,  <37.315639, 34.102837, 41.082405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179073, 33.548420, 41.534115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570358, 33.605724, 41.474018>,  <37.805130, 33.640106, 41.437958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570358, 33.605724, 41.474018>,  <37.179073, 33.548420, 41.534115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570358, 33.605724, 41.474018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165270, -0.099445, 0.981222,
		0.125629, -0.984677, -0.120955,
		0.978214, 0.143260, -0.150244,
		37.863823, 33.648701, 41.428944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507759, 33.018917, 41.907997>,  <37.179073, 33.548420, 41.534115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507759, 33.018917, 41.907997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727741, 33.351353, 41.874893>,  <37.859730, 33.550812, 41.855030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727741, 33.351353, 41.874893>,  <37.507759, 33.018917, 41.907997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727741, 33.351353, 41.874893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022374, 0.084389, 0.996182,
		0.834897, -0.549703, 0.027815,
		0.549951, 0.831087, -0.082755,
		37.892727, 33.600677, 41.850067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182331, 33.044407, 42.284634>,  <37.507759, 33.018917, 41.907997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182331, 33.044407, 42.284634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013199, 33.406605, 42.270229>,  <37.911720, 33.623924, 42.261585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013199, 33.406605, 42.270229>,  <38.182331, 33.044407, 42.284634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013199, 33.406605, 42.270229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174239, 0.120232, 0.977336,
		0.889300, 0.406974, -0.208610,
		-0.422832, 0.905492, -0.036012,
		37.886349, 33.678253, 42.259426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444916, 33.788731, 42.087692>,  <38.182331, 33.044407, 42.284634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444916, 33.788731, 42.087692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277710, 33.465084, 41.922478>,  <38.177387, 33.270897, 41.823349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277710, 33.465084, 41.922478>,  <38.444916, 33.788731, 42.087692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277710, 33.465084, 41.922478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214506, 0.353899, -0.910353,
		0.882752, -0.469140, 0.025625,
		-0.418014, -0.809113, -0.413038,
		38.152306, 33.222351, 41.798565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899971, 33.310055, 41.685085>,  <38.444916, 33.788731, 42.087692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899971, 33.310055, 41.685085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532249, 33.265797, 41.534016>,  <38.311615, 33.239243, 41.443375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532249, 33.265797, 41.534016>,  <38.899971, 33.310055, 41.685085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532249, 33.265797, 41.534016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350891, 0.204102, -0.913902,
		0.178200, -0.972677, -0.148808,
		-0.919304, -0.110642, -0.377675,
		38.256458, 33.232601, 41.420712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966816, 33.052402, 41.055824>,  <38.899971, 33.310055, 41.685085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966816, 33.052402, 41.055824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599895, 33.211678, 41.055119>,  <38.379742, 33.307243, 41.054695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599895, 33.211678, 41.055119>,  <38.966816, 33.052402, 41.055824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599895, 33.211678, 41.055119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139428, 0.317048, -0.938105,
		-0.372980, -0.860772, -0.346347,
		-0.917304, 0.398185, -0.001763,
		38.324703, 33.331135, 41.054588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530800, 32.619884, 40.638866>,  <38.966816, 33.052402, 41.055824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530800, 32.619884, 40.638866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390312, 32.994225, 40.627300>,  <38.306019, 33.218826, 40.620361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390312, 32.994225, 40.627300>,  <38.530800, 32.619884, 40.638866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390312, 32.994225, 40.627300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070094, -0.004519, -0.997530,
		-0.933667, -0.352375, -0.064010,
		-0.351216, 0.935848, -0.028919,
		38.284946, 33.274979, 40.618626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975475, 32.679688, 40.073048>,  <38.530800, 32.619884, 40.638866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975475, 32.679688, 40.073048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106796, 33.049339, 40.151237>,  <38.185589, 33.271130, 40.198151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106796, 33.049339, 40.151237>,  <37.975475, 32.679688, 40.073048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106796, 33.049339, 40.151237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055708, 0.225525, -0.972643,
		-0.942928, 0.308432, 0.125521,
		0.328303, 0.924125, 0.195472,
		38.205288, 33.326576, 40.209881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477135, 33.138641, 39.541210>,  <37.975475, 32.679688, 40.073048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477135, 33.138641, 39.541210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760811, 33.398796, 39.650059>,  <37.931015, 33.554890, 39.715366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.760811, 33.398796, 39.650059>,  <37.477135, 33.138641, 39.541210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760811, 33.398796, 39.650059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086398, 0.302890, -0.949101,
		-0.699702, 0.696605, 0.158615,
		0.709192, 0.650383, 0.272118,
		37.973568, 33.593910, 39.731693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447346, 33.878429, 39.086094>,  <37.477135, 33.138641, 39.541210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447346, 33.878429, 39.086094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793797, 33.978233, 39.259327>,  <38.001667, 34.038116, 39.363266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793797, 33.978233, 39.259327>,  <37.447346, 33.878429, 39.086094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793797, 33.978233, 39.259327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384850, 0.219961, -0.896386,
		-0.318919, 0.943060, 0.094490,
		0.866130, 0.249510, 0.433086,
		38.053635, 34.053085, 39.389252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650887, 34.589230, 38.994553>,  <37.447346, 33.878429, 39.086094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650887, 34.589230, 38.994553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979588, 34.366512, 39.043068>,  <38.176807, 34.232883, 39.072178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979588, 34.366512, 39.043068>,  <37.650887, 34.589230, 38.994553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979588, 34.366512, 39.043068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270274, 0.193438, -0.943151,
		0.501680, 0.807813, 0.309444,
		0.821748, -0.556794, 0.121287,
		38.226112, 34.199474, 39.079453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153408, 34.978485, 38.850681>,  <37.650887, 34.589230, 38.994553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153408, 34.978485, 38.850681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296886, 34.611923, 38.779648>,  <38.382973, 34.391987, 38.737026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296886, 34.611923, 38.779648>,  <38.153408, 34.978485, 38.850681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296886, 34.611923, 38.779648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297857, 0.292668, -0.908640,
		0.884658, 0.273028, 0.377936,
		0.358694, -0.916407, -0.177587,
		38.404495, 34.337002, 38.726372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933262, 35.068878, 38.683537>,  <38.153408, 34.978485, 38.850681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933262, 35.068878, 38.683537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777050, 34.740791, 38.516335>,  <38.683323, 34.543938, 38.416016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777050, 34.740791, 38.516335>,  <38.933262, 35.068878, 38.683537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777050, 34.740791, 38.516335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468465, 0.213807, -0.857220,
		0.792481, -0.530589, 0.300746,
		-0.390530, -0.820220, -0.418001,
		38.659889, 34.494724, 38.390934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417702, 34.897915, 38.014679>,  <38.933262, 35.068878, 38.683537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417702, 34.897915, 38.014679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157822, 34.597183, 37.969700>,  <39.001892, 34.416744, 37.942715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157822, 34.597183, 37.969700>,  <39.417702, 34.897915, 38.014679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157822, 34.597183, 37.969700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233273, -0.056395, -0.970775,
		0.723514, -0.656943, 0.212021,
		-0.649701, -0.751828, -0.112444,
		38.962910, 34.371635, 37.935966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685287, 34.257713, 37.579235>,  <39.417702, 34.897915, 38.014679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685287, 34.257713, 37.579235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288025, 34.233334, 37.539398>,  <39.049667, 34.218704, 37.515495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288025, 34.233334, 37.539398>,  <39.685287, 34.257713, 37.579235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288025, 34.233334, 37.539398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107375, -0.141720, -0.984066,
		0.045870, -0.988028, 0.147296,
		-0.993160, -0.060955, -0.099588,
		38.990078, 34.215046, 37.509521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623692, 33.697327, 37.010765>,  <39.685287, 34.257713, 37.579235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623692, 33.697327, 37.010765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302036, 33.934830, 37.022121>,  <39.109043, 34.077332, 37.028934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302036, 33.934830, 37.022121>,  <39.623692, 33.697327, 37.010765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302036, 33.934830, 37.022121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026346, 0.083305, -0.996176,
		-0.593855, -0.800317, -0.082632,
		-0.804140, 0.593761, 0.028386,
		39.060795, 34.112957, 37.030636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122314, 33.484928, 36.462555>,  <39.623692, 33.697327, 37.010765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122314, 33.484928, 36.462555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058121, 33.872444, 36.538120>,  <39.019604, 34.104954, 36.583462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058121, 33.872444, 36.538120>,  <39.122314, 33.484928, 36.462555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058121, 33.872444, 36.538120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082573, 0.177549, -0.980642,
		-0.983579, -0.172974, 0.051502,
		-0.160482, 0.968791, 0.188917,
		39.009975, 34.163082, 36.594795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568291, 33.437508, 36.791576>,  <39.122314, 33.484928, 36.462555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568291, 33.437508, 36.791576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564182, 33.609032, 37.152912>,  <38.561718, 33.711945, 37.369713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564182, 33.609032, 37.152912>,  <38.568291, 33.437508, 36.791576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564182, 33.609032, 37.152912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652994, -0.687039, 0.318710,
		0.757293, -0.586599, 0.287068,
		-0.010272, 0.428811, 0.903336,
		38.561100, 33.737675, 37.423912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426067, 33.630928, 36.081825>,  <38.568291, 33.437508, 36.791576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426067, 33.630928, 36.081825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582718, 33.991535, 36.155468>,  <38.676708, 34.207901, 36.199654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.582718, 33.991535, 36.155468>,  <38.426067, 33.630928, 36.081825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582718, 33.991535, 36.155468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186719, 0.273792, -0.943490,
		-0.900982, 0.335115, 0.275553,
		0.391622, 0.901519, 0.184109,
		38.700203, 34.261990, 36.210701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852222, 34.141541, 35.823483>,  <38.426067, 33.630928, 36.081825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852222, 34.141541, 35.823483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203793, 34.331688, 35.839062>,  <38.414734, 34.445778, 35.848408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203793, 34.331688, 35.839062>,  <37.852222, 34.141541, 35.823483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203793, 34.331688, 35.839062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171319, 0.390848, -0.904372,
		-0.445131, 0.788202, 0.424966,
		0.878924, 0.475369, 0.038945,
		38.467468, 34.474300, 35.850746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673695, 34.799618, 35.619358>,  <37.852222, 34.141541, 35.823483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673695, 34.799618, 35.619358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066284, 34.759418, 35.554108>,  <38.301838, 34.735298, 35.514957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066284, 34.759418, 35.554108>,  <37.673695, 34.799618, 35.619358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066284, 34.759418, 35.554108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094271, 0.487921, -0.867783,
		0.166802, 0.867084, 0.469407,
		0.981474, -0.100496, -0.163127,
		38.360725, 34.729271, 35.505169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840446, 35.399406, 35.343601>,  <37.673695, 34.799618, 35.619358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840446, 35.399406, 35.343601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169224, 35.207111, 35.221420>,  <38.366489, 35.091732, 35.148113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169224, 35.207111, 35.221420>,  <37.840446, 35.399406, 35.343601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169224, 35.207111, 35.221420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055284, 0.466412, -0.882838,
		0.566881, 0.742528, 0.356787,
		0.821942, -0.480740, -0.305451,
		38.415806, 35.062889, 35.129784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303444, 35.863728, 35.132519>,  <37.840446, 35.399406, 35.343601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303444, 35.863728, 35.132519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380032, 35.514896, 34.952377>,  <38.425983, 35.305599, 34.844292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380032, 35.514896, 34.952377>,  <38.303444, 35.863728, 35.132519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380032, 35.514896, 34.952377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247941, 0.400990, -0.881891,
		0.949665, 0.280518, -0.139446,
		0.191470, -0.872076, -0.450358,
		38.437473, 35.253273, 34.817268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849331, 36.061211, 34.536293>,  <38.303444, 35.863728, 35.132519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849331, 36.061211, 34.536293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690758, 35.708138, 34.435337>,  <38.595612, 35.496292, 34.374763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690758, 35.708138, 34.435337>,  <38.849331, 36.061211, 34.536293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690758, 35.708138, 34.435337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183114, 0.345420, -0.920410,
		0.899615, -0.318667, -0.298569,
		-0.396436, -0.882687, -0.252393,
		38.571827, 35.443333, 34.359619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136120, 35.991058, 33.921906>,  <38.849331, 36.061211, 34.536293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136120, 35.991058, 33.921906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839130, 35.723152, 33.917217>,  <38.660934, 35.562408, 33.914402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839130, 35.723152, 33.917217>,  <39.136120, 35.991058, 33.921906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839130, 35.723152, 33.917217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264547, 0.309255, -0.913442,
		0.615422, -0.675107, -0.406800,
		-0.742476, -0.669770, -0.011725,
		38.616386, 35.522221, 33.913700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302315, 35.394257, 33.442833>,  <39.136120, 35.991058, 33.921906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302315, 35.394257, 33.442833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914925, 35.475647, 33.500324>,  <38.682491, 35.524483, 33.534821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.914925, 35.475647, 33.500324>,  <39.302315, 35.394257, 33.442833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914925, 35.475647, 33.500324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165186, -0.092627, -0.981903,
		-0.186482, -0.974688, 0.123318,
		-0.968472, 0.203477, 0.143731,
		38.624382, 35.536690, 33.543442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889969, 35.739182, 33.630848>,  <39.302315, 35.394257, 33.442833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889969, 35.739182, 33.630848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968975, 36.130451, 33.605022>,  <40.016380, 36.365211, 33.589527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968975, 36.130451, 33.605022>,  <39.889969, 35.739182, 33.630848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968975, 36.130451, 33.605022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953653, -0.176483, 0.243722,
		0.227008, -0.109711, -0.967694,
		0.197520, 0.978171, -0.064563,
		40.028233, 36.423901, 33.585655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606995, 35.816032, 33.294868>,  <39.889969, 35.739182, 33.630848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606995, 35.816032, 33.294868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510941, 36.142685, 33.504799>,  <40.453308, 36.338676, 33.630756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.510941, 36.142685, 33.504799>,  <40.606995, 35.816032, 33.294868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510941, 36.142685, 33.504799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890645, -0.029702, 0.453728,
		0.386119, 0.576390, -0.720200,
		-0.240133, 0.816635, 0.524827,
		40.438900, 36.387676, 33.662247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172489, 36.387726, 33.212296>,  <40.606995, 35.816032, 33.294868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172489, 36.387726, 33.212296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990421, 36.465828, 33.559788>,  <40.881180, 36.512691, 33.768284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.990421, 36.465828, 33.559788>,  <41.172489, 36.387726, 33.212296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990421, 36.465828, 33.559788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876267, 0.271399, 0.398119,
		-0.158037, 0.942453, -0.294631,
		-0.455171, 0.195258, 0.868731,
		40.853870, 36.524406, 33.820408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292599, 37.107632, 33.502182>,  <41.172489, 36.387726, 33.212296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292599, 37.107632, 33.502182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246456, 36.803524, 33.757896>,  <41.218769, 36.621059, 33.911324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246456, 36.803524, 33.757896>,  <41.292599, 37.107632, 33.502182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246456, 36.803524, 33.757896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901307, 0.190413, 0.389086,
		-0.417538, 0.621077, 0.663269,
		-0.115357, -0.760267, 0.639286,
		41.211849, 36.575443, 33.949680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664841, 37.331879, 33.981876>,  <41.292599, 37.107632, 33.502182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664841, 37.331879, 33.981876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591354, 36.956928, 34.100243>,  <41.547260, 36.731956, 34.171265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591354, 36.956928, 34.100243>,  <41.664841, 37.331879, 33.981876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591354, 36.956928, 34.100243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841385, 0.005696, 0.540406,
		-0.508251, 0.348264, 0.787650,
		-0.183718, -0.937379, 0.295919,
		41.536240, 36.675713, 34.189018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858078, 37.216957, 34.743572>,  <41.664841, 37.331879, 33.981876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858078, 37.216957, 34.743572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939568, 36.906509, 34.504868>,  <41.988461, 36.720242, 34.361645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939568, 36.906509, 34.504868>,  <41.858078, 37.216957, 34.743572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939568, 36.906509, 34.504868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934970, -0.026565, 0.353730,
		-0.290391, -0.630022, 0.720240,
		0.203725, -0.776123, -0.596766,
		42.000687, 36.673672, 34.325836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147327, 36.547001, 35.081974>,  <41.858078, 37.216957, 34.743572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147327, 36.547001, 35.081974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290131, 36.599400, 34.712025>,  <42.375813, 36.630836, 34.490055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290131, 36.599400, 34.712025>,  <42.147327, 36.547001, 35.081974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290131, 36.599400, 34.712025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930523, -0.136459, 0.339862,
		-0.081687, -0.981947, -0.170610,
		0.357008, 0.130994, -0.924871,
		42.397232, 36.638699, 34.434563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616047, 36.023106, 35.017033>,  <42.147327, 36.547001, 35.081974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616047, 36.023106, 35.017033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722530, 36.338661, 34.795483>,  <42.786419, 36.527996, 34.662552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722530, 36.338661, 34.795483>,  <42.616047, 36.023106, 35.017033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722530, 36.338661, 34.795483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932564, -0.065426, 0.355027,
		0.243841, -0.611037, -0.753110,
		0.266207, 0.788894, -0.553877,
		42.802391, 36.575329, 34.629318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194691, 35.822605, 34.688305>,  <42.616047, 36.023106, 35.017033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194691, 35.822605, 34.688305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265560, 36.207226, 34.772236>,  <43.308083, 36.438000, 34.822594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265560, 36.207226, 34.772236>,  <43.194691, 35.822605, 34.688305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265560, 36.207226, 34.772236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939406, -0.228795, 0.255284,
		0.293476, 0.151881, -0.943824,
		0.177170, 0.961554, 0.209823,
		43.318710, 36.495693, 34.835182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820236, 36.044727, 34.244671>,  <43.194691, 35.822605, 34.688305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820236, 36.044727, 34.244671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737099, 36.156647, 34.619587>,  <43.687218, 36.223797, 34.844536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.737099, 36.156647, 34.619587>,  <43.820236, 36.044727, 34.244671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737099, 36.156647, 34.619587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857145, -0.409572, 0.312333,
		0.471278, 0.868312, -0.154699,
		-0.207842, 0.279795, 0.937292,
		43.674747, 36.240585, 34.900776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457661, 36.045567, 34.430870>,  <43.820236, 36.044727, 34.244671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457661, 36.045567, 34.430870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242584, 36.120083, 34.759792>,  <44.113541, 36.164791, 34.957146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.242584, 36.120083, 34.759792>,  <44.457661, 36.045567, 34.430870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242584, 36.120083, 34.759792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756700, -0.323545, 0.568088,
		0.371882, 0.927693, 0.033001,
		-0.537688, 0.186290, 0.822306,
		44.081276, 36.175968, 35.006485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830318, 36.510742, 34.891685>,  <44.457661, 36.045567, 34.430870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830318, 36.510742, 34.891685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597694, 36.262405, 35.101959>,  <44.458118, 36.113403, 35.228123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597694, 36.262405, 35.101959>,  <44.830318, 36.510742, 34.891685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597694, 36.262405, 35.101959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778320, -0.236654, 0.581561,
		-0.236654, 0.747362, 0.620843,
		-0.581561, -0.620843, 0.525681,
		44.423225, 36.076153, 35.259663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.847988, 36.756760, 35.647659>,  <44.830318, 36.510742, 34.891685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.847988, 36.756760, 35.647659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.791679, 36.368633, 35.568996>,  <44.757893, 36.135757, 35.521801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.791679, 36.368633, 35.568996>,  <44.847988, 36.756760, 35.647659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.791679, 36.368633, 35.568996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944728, -0.191058, 0.266430,
		-0.296093, -0.148278, 0.943580,
		-0.140773, -0.970315, -0.196653,
		44.749447, 36.077538, 35.510002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.136105, 36.413128, 36.137615>,  <44.847988, 36.756760, 35.647659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.136105, 36.413128, 36.137615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141171, 36.149956, 35.836426>,  <45.144211, 35.992054, 35.655712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141171, 36.149956, 35.836426>,  <45.136105, 36.413128, 36.137615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141171, 36.149956, 35.836426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921900, -0.283932, 0.263595,
		-0.387220, -0.697506, 0.602948,
		0.012663, -0.657927, -0.752975,
		45.144970, 35.952579, 35.610535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.210964, 35.745190, 36.316853>,  <45.136105, 36.413128, 36.137615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.210964, 35.745190, 36.316853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.388401, 35.830135, 35.968571>,  <45.494862, 35.881104, 35.759602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.388401, 35.830135, 35.968571>,  <45.210964, 35.745190, 36.316853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388401, 35.830135, 35.968571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762088, -0.600645, 0.241760,
		-0.471645, -0.770798, -0.428277,
		0.443591, 0.212360, -0.870707,
		45.521477, 35.893845, 35.707359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260681, 35.126888, 35.939274>,  <45.210964, 35.745190, 36.316853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.260681, 35.126888, 35.939274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566940, 35.360321, 35.831039>,  <45.750694, 35.500381, 35.766098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.566940, 35.360321, 35.831039>,  <45.260681, 35.126888, 35.939274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.566940, 35.360321, 35.831039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640471, -0.730746, 0.236234,
		-0.059865, -0.354172, -0.933262,
		0.765646, 0.583585, -0.270583,
		45.796635, 35.535397, 35.749863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706238, 34.773727, 35.540314>,  <45.260681, 35.126888, 35.939274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706238, 34.773727, 35.540314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.940254, 35.055412, 35.701218>,  <46.080666, 35.224422, 35.797760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.940254, 35.055412, 35.701218>,  <45.706238, 34.773727, 35.540314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940254, 35.055412, 35.701218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641367, -0.705318, 0.301952,
		0.496359, 0.081341, -0.864298,
		0.585044, 0.704209, 0.402260,
		46.115768, 35.266674, 35.821896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.416115, 34.921383, 35.265049>,  <45.706238, 34.773727, 35.540314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.416115, 34.921383, 35.265049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324272, 34.947834, 35.653461>,  <46.269165, 34.963703, 35.886509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324272, 34.947834, 35.653461>,  <46.416115, 34.921383, 35.265049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324272, 34.947834, 35.653461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491546, -0.853224, 0.174331,
		0.840038, 0.517335, 0.163402,
		-0.229606, 0.066125, 0.971035,
		46.255390, 34.967670, 35.944771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.961086, 35.163868, 35.655560>,  <46.416115, 34.921383, 35.265049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.961086, 35.163868, 35.655560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734974, 34.909931, 35.866249>,  <46.599308, 34.757568, 35.992661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734974, 34.909931, 35.866249>,  <46.961086, 35.163868, 35.655560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.734974, 34.909931, 35.866249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711470, -0.698357, -0.078157,
		0.417457, 0.330565, 0.846437,
		-0.565279, -0.634842, 0.526721,
		46.565392, 34.719479, 36.024265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.436230, 35.706879, 35.511169>,  <46.961086, 35.163868, 35.655560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.436230, 35.706879, 35.511169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.421379, 35.623322, 35.120277>,  <47.412468, 35.573189, 34.885742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.421379, 35.623322, 35.120277>,  <47.436230, 35.706879, 35.511169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.421379, 35.623322, 35.120277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651070, -0.746929, 0.134927,
		-0.758109, -0.631237, 0.163737,
		-0.037129, -0.208894, -0.977233,
		47.410240, 35.560654, 34.827106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.011391, 35.225838, 35.407036>,  <47.436230, 35.706879, 35.511169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.011391, 35.225838, 35.407036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.793591, 35.164856, 35.077122>,  <47.662910, 35.128269, 34.879173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.793591, 35.164856, 35.077122>,  <48.011391, 35.225838, 35.407036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.793591, 35.164856, 35.077122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541441, -0.814904, -0.206818,
		-0.640594, -0.559187, 0.526260,
		-0.544501, -0.152452, -0.824789,
		47.630241, 35.119122, 34.829685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.004810, 34.994198, 23.980534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.621117, 34.881245, 23.975992>,  <32.390900, 34.813473, 23.973267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.621117, 34.881245, 23.975992>,  <33.004810, 34.994198, 23.980534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621117, 34.881245, 23.975992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141247, -0.513836, 0.846181,
		-0.244781, 0.810082, 0.532775,
		-0.959235, -0.282382, -0.011356,
		32.333347, 34.796532, 23.972586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649097, 35.328526, 24.451756>,  <33.004810, 34.994198, 23.980534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649097, 35.328526, 24.451756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.413982, 35.009483, 24.397604>,  <32.272915, 34.818058, 24.365112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.413982, 35.009483, 24.397604>,  <32.649097, 35.328526, 24.451756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413982, 35.009483, 24.397604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203952, -0.308022, 0.929261,
		-0.782887, 0.518595, 0.343724,
		-0.587785, -0.797610, -0.135378,
		32.237648, 34.770199, 24.356991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298130, 35.354332, 25.101233>,  <32.649097, 35.328526, 24.451756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298130, 35.354332, 25.101233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.267307, 34.991032, 24.936728>,  <32.248814, 34.773052, 24.838024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.267307, 34.991032, 24.936728>,  <32.298130, 35.354332, 25.101233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267307, 34.991032, 24.936728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121084, -0.417963, 0.900359,
		-0.989647, 0.019583, 0.142183,
		-0.077059, -0.908253, -0.411265,
		32.244190, 34.718555, 24.813349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816118, 35.037949, 25.515526>,  <32.298130, 35.354332, 25.101233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816118, 35.037949, 25.515526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.019863, 34.757023, 25.316605>,  <32.142109, 34.588467, 25.197252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.019863, 34.757023, 25.316605>,  <31.816118, 35.037949, 25.515526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019863, 34.757023, 25.316605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006588, -0.581051, 0.813841,
		-0.860528, -0.411262, -0.300591,
		0.509361, -0.702313, -0.497301,
		32.172672, 34.546329, 25.167414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530449, 34.418854, 25.838018>,  <31.816118, 35.037949, 25.515526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530449, 34.418854, 25.838018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.854568, 34.304466, 25.633417>,  <32.049042, 34.235832, 25.510656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.854568, 34.304466, 25.633417>,  <31.530449, 34.418854, 25.838018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854568, 34.304466, 25.633417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322968, -0.510399, 0.796985,
		-0.488984, -0.810996, -0.321218,
		0.810300, -0.285969, -0.511503,
		32.097660, 34.218674, 25.479967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599972, 33.657360, 26.041349>,  <31.530449, 34.418854, 25.838018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599972, 33.657360, 26.041349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.948524, 33.815159, 25.924688>,  <32.157658, 33.909840, 25.854692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.948524, 33.815159, 25.924688>,  <31.599972, 33.657360, 26.041349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948524, 33.815159, 25.924688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468150, -0.490846, 0.734783,
		0.146716, -0.776814, -0.612400,
		0.871384, 0.394500, -0.291651,
		32.209938, 33.933510, 25.837193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997868, 33.099171, 26.086212>,  <31.599972, 33.657360, 26.041349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997868, 33.099171, 26.086212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.243252, 33.414471, 26.105486>,  <32.390484, 33.603653, 26.117050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.243252, 33.414471, 26.105486>,  <31.997868, 33.099171, 26.086212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243252, 33.414471, 26.105486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454515, -0.402309, 0.794710,
		0.645817, -0.465624, -0.605074,
		0.613463, 0.788252, 0.048185,
		32.427292, 33.650948, 26.119942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620110, 32.815792, 26.325230>,  <31.997868, 33.099171, 26.086212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620110, 32.815792, 26.325230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.651489, 33.210552, 26.381628>,  <32.670319, 33.447407, 26.415466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.651489, 33.210552, 26.381628>,  <32.620110, 32.815792, 26.325230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651489, 33.210552, 26.381628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623385, -0.158931, 0.765593,
		0.777970, 0.027834, -0.627685,
		0.078449, 0.986897, 0.140995,
		32.675022, 33.506622, 26.423927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251671, 32.947151, 26.446411>,  <32.620110, 32.815792, 26.325230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251671, 32.947151, 26.446411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.084045, 33.270134, 26.612492>,  <32.983471, 33.463924, 26.712139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.084045, 33.270134, 26.612492>,  <33.251671, 32.947151, 26.446411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084045, 33.270134, 26.612492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600514, -0.096500, 0.793770,
		0.681005, 0.581974, -0.444452,
		-0.419064, 0.807461, 0.415201,
		32.958324, 33.512371, 26.737051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815590, 33.400345, 26.748899>,  <33.251671, 32.947151, 26.446411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815590, 33.400345, 26.748899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.490250, 33.530792, 26.941610>,  <33.295044, 33.609058, 27.057238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.490250, 33.530792, 26.941610>,  <33.815590, 33.400345, 26.748899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490250, 33.530792, 26.941610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501672, -0.026189, 0.864661,
		0.294596, 0.944968, -0.142301,
		-0.813350, 0.326114, 0.481779,
		33.246246, 33.628628, 27.086143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115200, 33.899670, 27.176502>,  <33.815590, 33.400345, 26.748899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115200, 33.899670, 27.176502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.765671, 33.789944, 27.337095>,  <33.555954, 33.724110, 27.433451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.765671, 33.789944, 27.337095>,  <34.115200, 33.899670, 27.176502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765671, 33.789944, 27.337095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422571, -0.019911, 0.906111,
		-0.240565, 0.961434, 0.133316,
		-0.873820, -0.274314, 0.401484,
		33.503525, 33.707649, 27.457541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157207, 34.229057, 27.812569>,  <34.115200, 33.899670, 27.176502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157207, 34.229057, 27.812569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.887405, 33.941074, 27.877935>,  <33.725525, 33.768284, 27.917156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.887405, 33.941074, 27.877935>,  <34.157207, 34.229057, 27.812569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887405, 33.941074, 27.877935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319816, -0.085443, 0.943619,
		-0.665402, 0.688740, 0.287885,
		-0.674506, -0.719956, 0.163416,
		33.685055, 33.725086, 27.926960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773197, 34.555206, 28.398073>,  <34.157207, 34.229057, 27.812569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773197, 34.555206, 28.398073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.718334, 34.159550, 28.376972>,  <33.685417, 33.922153, 28.364311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.718334, 34.159550, 28.376972>,  <33.773197, 34.555206, 28.398073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718334, 34.159550, 28.376972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153886, -0.073888, 0.985322,
		-0.978523, 0.127028, 0.162350,
		-0.137159, -0.989143, -0.052754,
		33.677185, 33.862808, 28.361147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713512, 34.420727, 29.080515>,  <33.773197, 34.555206, 28.398073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713512, 34.420727, 29.080515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.750477, 34.045197, 28.947815>,  <33.772655, 33.819878, 28.868195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.750477, 34.045197, 28.947815>,  <33.713512, 34.420727, 29.080515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750477, 34.045197, 28.947815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469772, -0.252657, 0.845860,
		-0.877937, -0.234016, 0.417687,
		0.092413, -0.938830, -0.331751,
		33.778202, 33.763546, 28.848289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405075, 33.934582, 29.592896>,  <33.713512, 34.420727, 29.080515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405075, 33.934582, 29.592896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.668114, 33.732849, 29.369032>,  <33.825935, 33.611809, 29.234713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.668114, 33.732849, 29.369032>,  <33.405075, 33.934582, 29.592896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668114, 33.732849, 29.369032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406083, -0.388433, 0.827174,
		-0.634558, -0.771215, -0.050633,
		0.657596, -0.504328, -0.559660,
		33.865395, 33.581551, 29.201134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465038, 33.358139, 29.967863>,  <33.405075, 33.934582, 29.592896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465038, 33.358139, 29.967863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.800598, 33.343163, 29.750664>,  <34.001934, 33.334175, 29.620344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.800598, 33.343163, 29.750664>,  <33.465038, 33.358139, 29.967863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800598, 33.343163, 29.750664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439692, -0.541400, 0.716629,
		-0.320810, -0.839931, -0.437717,
		0.838899, -0.037441, -0.542997,
		34.052269, 33.331928, 29.587765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515072, 32.630116, 29.854004>,  <33.465038, 33.358139, 29.967863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515072, 32.630116, 29.854004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.860676, 32.831032, 29.840212>,  <34.068039, 32.951584, 29.831938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.860676, 32.831032, 29.840212>,  <33.515072, 32.630116, 29.854004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860676, 32.831032, 29.840212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318742, -0.492696, 0.809725,
		0.389733, -0.710599, -0.585796,
		0.864009, 0.502294, -0.034478,
		34.119877, 32.981720, 29.829868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007202, 32.145466, 30.070902>,  <33.515072, 32.630116, 29.854004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007202, 32.145466, 30.070902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.178825, 32.502865, 30.123907>,  <34.281799, 32.717304, 30.155710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.178825, 32.502865, 30.123907>,  <34.007202, 32.145466, 30.070902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178825, 32.502865, 30.123907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376325, -0.310187, 0.873020,
		0.821149, -0.324713, -0.469336,
		0.429063, 0.893502, 0.132512,
		34.307545, 32.770916, 30.163660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677555, 32.011700, 30.380011>,  <34.007202, 32.145466, 30.070902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677555, 32.011700, 30.380011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.630207, 32.403290, 30.446463>,  <34.601799, 32.638245, 30.486334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.630207, 32.403290, 30.446463>,  <34.677555, 32.011700, 30.380011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630207, 32.403290, 30.446463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505073, -0.084688, 0.858911,
		0.854921, 0.185575, -0.484429,
		-0.118367, 0.978974, 0.166131,
		34.594696, 32.696983, 30.496302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336746, 32.221344, 30.735661>,  <34.677555, 32.011700, 30.380011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336746, 32.221344, 30.735661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088680, 32.525513, 30.812761>,  <34.939842, 32.708015, 30.859022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.088680, 32.525513, 30.812761>,  <35.336746, 32.221344, 30.735661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088680, 32.525513, 30.812761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298199, 0.001247, 0.954503,
		0.725587, 0.649425, -0.227531,
		-0.620162, 0.760424, 0.192753,
		34.902630, 32.753639, 30.870586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794823, 32.791191, 31.035351>,  <35.336746, 32.221344, 30.735661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794823, 32.791191, 31.035351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.415695, 32.869583, 31.135929>,  <35.188217, 32.916618, 31.196276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.415695, 32.869583, 31.135929>,  <35.794823, 32.791191, 31.035351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415695, 32.869583, 31.135929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285357, 0.169875, 0.943246,
		0.142146, 0.965781, -0.216936,
		-0.947822, 0.195983, 0.251445,
		35.131348, 32.928379, 31.211363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898743, 33.475101, 31.345446>,  <35.794823, 32.791191, 31.035351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898743, 33.475101, 31.345446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.546562, 33.325504, 31.462017>,  <35.335255, 33.235744, 31.531960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.546562, 33.325504, 31.462017>,  <35.898743, 33.475101, 31.345446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546562, 33.325504, 31.462017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311156, 0.008008, 0.950325,
		-0.357749, 0.927397, 0.109320,
		-0.880453, -0.373993, 0.291430,
		35.282425, 33.213306, 31.549446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533566, 33.540710, 31.748772>,  <35.898743, 33.475101, 31.345446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533566, 33.540710, 31.748772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907936, 33.512558, 31.610731>,  <37.132557, 33.495667, 31.527906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907936, 33.512558, 31.610731>,  <36.533566, 33.540710, 31.748772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907936, 33.512558, 31.610731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269427, 0.488017, -0.830210,
		0.226843, 0.869992, 0.437785,
		0.935923, -0.070377, -0.345102,
		37.188713, 33.491444, 31.507200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795155, 34.183575, 31.516537>,  <36.533566, 33.540710, 31.748772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795155, 34.183575, 31.516537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009270, 33.926201, 31.297644>,  <37.137737, 33.771778, 31.166307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009270, 33.926201, 31.297644>,  <36.795155, 34.183575, 31.516537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009270, 33.926201, 31.297644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216018, 0.522038, -0.825114,
		0.816580, 0.559885, 0.140448,
		0.535288, -0.643432, -0.547231,
		37.169857, 33.733170, 31.133474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248341, 34.573742, 31.032085>,  <36.795155, 34.183575, 31.516537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248341, 34.573742, 31.032085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275608, 34.209000, 30.870159>,  <37.291969, 33.990154, 30.773005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.275608, 34.209000, 30.870159>,  <37.248341, 34.573742, 31.032085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275608, 34.209000, 30.870159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059432, 0.401326, -0.914005,
		0.995902, 0.086368, -0.026834,
		0.068171, -0.911854, -0.404814,
		37.296059, 33.935444, 30.748714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736034, 34.519310, 30.436544>,  <37.248341, 34.573742, 31.032085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736034, 34.519310, 30.436544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458221, 34.238289, 30.374523>,  <37.291534, 34.069675, 30.337311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458221, 34.238289, 30.374523>,  <37.736034, 34.519310, 30.436544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458221, 34.238289, 30.374523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223454, 0.415499, -0.881719,
		0.683881, -0.577735, -0.445567,
		-0.694532, -0.702554, -0.155055,
		37.249863, 34.027523, 30.328007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837811, 34.348824, 29.740122>,  <37.736034, 34.519310, 30.436544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837811, 34.348824, 29.740122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.481022, 34.196175, 29.837078>,  <37.266949, 34.104584, 29.895252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.481022, 34.196175, 29.837078>,  <37.837811, 34.348824, 29.740122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481022, 34.196175, 29.837078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377248, 0.332812, -0.864246,
		0.249148, -0.862321, -0.440826,
		-0.891969, -0.381626, 0.242389,
		37.213432, 34.081688, 29.909796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621628, 34.029396, 29.086637>,  <37.837811, 34.348824, 29.740122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621628, 34.029396, 29.086637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.290329, 34.075947, 29.305897>,  <37.091549, 34.103878, 29.437452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.290329, 34.075947, 29.305897>,  <37.621628, 34.029396, 29.086637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290329, 34.075947, 29.305897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443570, 0.461596, -0.768228,
		-0.342425, -0.879424, -0.330695,
		-0.828246, 0.116374, 0.548148,
		37.041855, 34.110859, 29.470341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108032, 33.709778, 28.686844>,  <37.621628, 34.029396, 29.086637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108032, 33.709778, 28.686844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892349, 33.927917, 28.943544>,  <36.762939, 34.058804, 29.097565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892349, 33.927917, 28.943544>,  <37.108032, 33.709778, 28.686844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892349, 33.927917, 28.943544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486283, 0.420539, -0.765947,
		-0.687594, -0.725078, 0.038438,
		-0.539207, 0.545352, 0.641753,
		36.730587, 34.091522, 29.136070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456570, 33.622219, 28.535049>,  <37.108032, 33.709778, 28.686844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456570, 33.622219, 28.535049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.456520, 33.980850, 28.712206>,  <36.456490, 34.196030, 28.818501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.456520, 33.980850, 28.712206>,  <36.456570, 33.622219, 28.535049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456520, 33.980850, 28.712206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574809, 0.362348, -0.733688,
		-0.818287, -0.254669, 0.515315,
		-0.000124, 0.896575, 0.442891,
		36.456482, 34.249825, 28.845074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815636, 33.802097, 28.463825>,  <36.456570, 33.622219, 28.535049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815636, 33.802097, 28.463825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.991451, 34.148090, 28.560658>,  <36.096943, 34.355686, 28.618757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.991451, 34.148090, 28.560658>,  <35.815636, 33.802097, 28.463825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991451, 34.148090, 28.560658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651893, 0.492609, -0.576517,
		-0.617929, 0.095594, 0.780401,
		0.439544, 0.864985, 0.242080,
		36.123314, 34.407585, 28.633282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279053, 34.248535, 28.732803>,  <35.815636, 33.802097, 28.463825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279053, 34.248535, 28.732803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.581413, 34.473450, 28.598671>,  <35.762829, 34.608398, 28.518190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.581413, 34.473450, 28.598671>,  <35.279053, 34.248535, 28.732803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581413, 34.473450, 28.598671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632887, 0.496537, -0.594059,
		-0.167524, 0.661278, 0.731195,
		0.755903, 0.562283, -0.335332,
		35.808186, 34.642136, 28.498072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959267, 34.850418, 28.501354>,  <35.279053, 34.248535, 28.732803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959267, 34.850418, 28.501354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.323563, 34.877850, 28.338459>,  <35.542141, 34.894306, 28.240723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.323563, 34.877850, 28.338459>,  <34.959267, 34.850418, 28.501354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323563, 34.877850, 28.338459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386399, 0.489512, -0.781712,
		0.145742, 0.869296, 0.472317,
		0.910744, 0.068574, -0.407238,
		35.596786, 34.898422, 28.216288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045776, 35.506153, 28.357821>,  <34.959267, 34.850418, 28.501354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045776, 35.506153, 28.357821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.293472, 35.311684, 28.111187>,  <35.442089, 35.195004, 27.963207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.293472, 35.311684, 28.111187>,  <35.045776, 35.506153, 28.357821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293472, 35.311684, 28.111187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382439, 0.499071, -0.777604,
		0.685767, 0.717332, 0.123116,
		0.619244, -0.486171, -0.616582,
		35.479244, 35.165833, 27.926212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.344624, 36.066879, 27.907246>,  <35.045776, 35.506153, 28.357821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.344624, 36.066879, 27.907246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.407982, 35.723728, 27.711714>,  <35.445999, 35.517838, 27.594395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.407982, 35.723728, 27.711714>,  <35.344624, 36.066879, 27.907246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407982, 35.723728, 27.711714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254653, 0.442834, -0.859680,
		0.953971, 0.260655, -0.148317,
		0.158400, -0.857879, -0.488827,
		35.455502, 35.466366, 27.565065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763241, 36.205429, 27.201077>,  <35.344624, 36.066879, 27.907246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763241, 36.205429, 27.201077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.600109, 35.841286, 27.173000>,  <35.502232, 35.622799, 27.156155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.600109, 35.841286, 27.173000>,  <35.763241, 36.205429, 27.201077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600109, 35.841286, 27.173000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233511, 0.178310, -0.955865,
		0.882694, -0.373438, -0.285298,
		-0.407828, -0.910357, -0.070191,
		35.477760, 35.568180, 27.151943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130783, 35.888859, 26.691380>,  <35.763241, 36.205429, 27.201077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130783, 35.888859, 26.691380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777222, 35.703526, 26.716810>,  <35.565086, 35.592327, 26.732069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.777222, 35.703526, 26.716810>,  <36.130783, 35.888859, 26.691380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777222, 35.703526, 26.716810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199466, 0.250534, -0.947336,
		0.423007, -0.850031, -0.313867,
		-0.883900, -0.463335, 0.063575,
		35.512051, 35.564526, 26.735882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166016, 35.581490, 26.096884>,  <36.130783, 35.888859, 26.691380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166016, 35.581490, 26.096884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.780903, 35.531742, 26.192875>,  <35.549835, 35.501892, 26.250469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.780903, 35.531742, 26.192875>,  <36.166016, 35.581490, 26.096884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780903, 35.531742, 26.192875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259824, 0.181191, -0.948505,
		0.074481, -0.975552, -0.206761,
		-0.962779, -0.124367, 0.239976,
		35.492069, 35.494431, 26.264868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873737, 35.108192, 25.721535>,  <36.166016, 35.581490, 26.096884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873737, 35.108192, 25.721535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565987, 35.346626, 25.813400>,  <35.381336, 35.489685, 25.868519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565987, 35.346626, 25.813400>,  <35.873737, 35.108192, 25.721535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565987, 35.346626, 25.813400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222571, 0.086853, -0.971040,
		-0.598767, -0.798212, 0.065848,
		-0.769377, 0.596082, 0.229664,
		35.335175, 35.525452, 25.882299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375748, 34.873257, 25.353235>,  <35.873737, 35.108192, 25.721535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375748, 34.873257, 25.353235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.255539, 35.245892, 25.435045>,  <35.183414, 35.469475, 25.484131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.255539, 35.245892, 25.435045>,  <35.375748, 34.873257, 25.353235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255539, 35.245892, 25.435045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098052, 0.183122, -0.978188,
		-0.948722, -0.314020, 0.036313,
		-0.300521, 0.931589, 0.204523,
		35.165382, 35.525368, 25.496403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.644096, 34.868336, 25.167116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723736, 35.259987, 25.183451>,  <34.771519, 35.494976, 25.193251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.723736, 35.259987, 25.183451>,  <34.644096, 34.868336, 25.167116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723736, 35.259987, 25.183451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447801, 0.127962, -0.884929,
		-0.871685, 0.157901, 0.463932,
		0.199097, 0.979129, 0.040835,
		34.783466, 35.553726, 25.195702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964924, 35.189919, 25.041891>,  <34.644096, 34.868336, 25.167116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964924, 35.189919, 25.041891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.245594, 35.466785, 24.974297>,  <34.413998, 35.632904, 24.933741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.245594, 35.466785, 24.974297>,  <33.964924, 35.189919, 25.041891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245594, 35.466785, 24.974297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394292, 0.179681, -0.901248,
		-0.593448, 0.699016, 0.398993,
		0.701679, 0.692164, -0.168985,
		34.456097, 35.674435, 24.923601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555344, 35.762894, 24.756237>,  <33.964924, 35.189919, 25.041891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555344, 35.762894, 24.756237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.934917, 35.803047, 24.636604>,  <34.162663, 35.827137, 24.564825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.934917, 35.803047, 24.636604>,  <33.555344, 35.762894, 24.756237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934917, 35.803047, 24.636604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315448, 0.289103, -0.903832,
		-0.004264, 0.952020, 0.306005,
		0.948933, 0.100382, -0.299080,
		34.219597, 35.833160, 24.546881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540680, 36.432037, 24.418303>,  <33.555344, 35.762894, 24.756237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540680, 36.432037, 24.418303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855320, 36.221363, 24.289385>,  <34.044102, 36.094959, 24.212034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.855320, 36.221363, 24.289385>,  <33.540680, 36.432037, 24.418303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855320, 36.221363, 24.289385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245195, 0.212612, -0.945873,
		0.566698, 0.823044, 0.038100,
		0.786596, -0.526683, -0.322293,
		34.091297, 36.063358, 24.192698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986176, 36.902527, 24.089718>,  <33.540680, 36.432037, 24.418303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986176, 36.902527, 24.089718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.076622, 36.548168, 23.927696>,  <34.130890, 36.335552, 23.830484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.076622, 36.548168, 23.927696>,  <33.986176, 36.902527, 24.089718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076622, 36.548168, 23.927696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110138, 0.389904, -0.914245,
		0.967855, 0.251334, -0.009409,
		0.226112, -0.885893, -0.405052,
		34.144455, 36.282402, 23.806181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276440, 37.068398, 23.527378>,  <33.986176, 36.902527, 24.089718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276440, 37.068398, 23.527378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.219265, 36.684074, 23.432371>,  <34.184959, 36.453480, 23.375366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.219265, 36.684074, 23.432371>,  <34.276440, 37.068398, 23.527378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219265, 36.684074, 23.432371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137083, 0.256886, -0.956670,
		0.980193, -0.104180, -0.168428,
		-0.142933, -0.960810, -0.237517,
		34.176384, 36.395832, 23.361116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777733, 36.908466, 23.056236>,  <34.276440, 37.068398, 23.527378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777733, 36.908466, 23.056236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.477947, 36.645401, 23.025805>,  <34.298077, 36.487564, 23.007545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.477947, 36.645401, 23.025805>,  <34.777733, 36.908466, 23.056236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477947, 36.645401, 23.025805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073091, 0.196406, -0.977795,
		0.657998, -0.727261, -0.195268,
		-0.749464, -0.657660, -0.076078,
		34.253109, 36.448105, 23.002981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867207, 36.576496, 22.454147>,  <34.777733, 36.908466, 23.056236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867207, 36.576496, 22.454147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480068, 36.518909, 22.536655>,  <34.247784, 36.484356, 22.586161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.480068, 36.518909, 22.536655>,  <34.867207, 36.576496, 22.454147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480068, 36.518909, 22.536655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223454, 0.115512, -0.967846,
		0.115512, -0.982817, -0.143968,
		0.967846, 0.143968, -0.206271,
		34.189716, 36.475719, 22.598537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638210, 36.049091, 22.054111>,  <34.867207, 36.576496, 22.454147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638210, 36.049091, 22.054111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.314625, 36.265079, 22.147074>,  <34.120472, 36.394672, 22.202850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.314625, 36.265079, 22.147074>,  <34.638210, 36.049091, 22.054111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314625, 36.265079, 22.147074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176997, 0.153268, -0.972204,
		-0.560582, -0.827611, -0.028415,
		-0.808962, 0.539971, 0.232404,
		34.071938, 36.427071, 22.216795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156120, 35.851452, 21.587135>,  <34.638210, 36.049091, 22.054111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156120, 35.851452, 21.587135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.008575, 36.194778, 21.729815>,  <33.920048, 36.400776, 21.815422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.008575, 36.194778, 21.729815>,  <34.156120, 35.851452, 21.587135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008575, 36.194778, 21.729815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322332, 0.241826, -0.915217,
		-0.871806, -0.452562, 0.187464,
		-0.368859, 0.858317, 0.356700,
		33.897919, 36.452274, 21.836824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547073, 35.918457, 21.264753>,  <34.156120, 35.851452, 21.587135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547073, 35.918457, 21.264753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.623596, 36.289593, 21.392830>,  <33.669510, 36.512272, 21.469677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.623596, 36.289593, 21.392830>,  <33.547073, 35.918457, 21.264753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623596, 36.289593, 21.392830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459917, 0.372927, -0.805855,
		-0.867108, 0.006906, 0.498072,
		0.191310, 0.927835, 0.320192,
		33.680988, 36.567944, 21.488888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035278, 36.364208, 20.940357>,  <33.547073, 35.918457, 21.264753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035278, 36.364208, 20.940357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.293686, 36.642933, 21.065010>,  <33.448730, 36.810169, 21.139801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.293686, 36.642933, 21.065010>,  <33.035278, 36.364208, 20.940357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293686, 36.642933, 21.065010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267629, 0.589107, -0.762448,
		-0.714866, 0.409155, 0.567061,
		0.646019, 0.696811, 0.311631,
		33.487492, 36.851974, 21.158499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741703, 37.017052, 20.948685>,  <33.035278, 36.364208, 20.940357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741703, 37.017052, 20.948685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127705, 37.120419, 20.930834>,  <33.359306, 37.182438, 20.920122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.127705, 37.120419, 20.930834>,  <32.741703, 37.017052, 20.948685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127705, 37.120419, 20.930834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203465, 0.630410, -0.749123,
		-0.165455, 0.731985, 0.660926,
		0.965001, 0.258422, -0.044629,
		33.417206, 37.197945, 20.917446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756733, 37.754967, 20.865946>,  <32.741703, 37.017052, 20.948685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756733, 37.754967, 20.865946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113064, 37.635971, 20.728582>,  <33.326862, 37.564571, 20.646164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113064, 37.635971, 20.728582>,  <32.756733, 37.754967, 20.865946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113064, 37.635971, 20.728582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117795, 0.578760, -0.806945,
		0.438813, 0.759298, 0.480531,
		0.890824, -0.297494, -0.343409,
		33.380310, 37.546722, 20.625559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944241, 38.238617, 20.423805>,  <32.756733, 37.754967, 20.865946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944241, 38.238617, 20.423805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232182, 37.985943, 20.308708>,  <33.404945, 37.834339, 20.239651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232182, 37.985943, 20.308708>,  <32.944241, 38.238617, 20.423805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232182, 37.985943, 20.308708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218698, 0.599820, -0.769667,
		0.658777, 0.491116, 0.569928,
		0.719850, -0.631681, -0.287741,
		33.448135, 37.796440, 20.222385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624477, 38.646366, 20.330570>,  <32.944241, 38.238617, 20.423805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624477, 38.646366, 20.330570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.671368, 38.308918, 20.120974>,  <33.699501, 38.106449, 19.995216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.671368, 38.308918, 20.120974>,  <33.624477, 38.646366, 20.330570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671368, 38.308918, 20.120974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379510, 0.525637, -0.761366,
		0.917731, -0.109606, 0.381781,
		0.117228, -0.843619, -0.523990,
		33.706535, 38.055832, 19.963778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308006, 38.691315, 20.088778>,  <33.624477, 38.646366, 20.330570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308006, 38.691315, 20.088778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.111275, 38.434933, 19.853058>,  <33.993237, 38.281101, 19.711626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.111275, 38.434933, 19.853058>,  <34.308006, 38.691315, 20.088778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111275, 38.434933, 19.853058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270823, 0.530630, -0.803173,
		0.827501, -0.554621, -0.087394,
		-0.491830, -0.640958, -0.589302,
		33.963726, 38.242645, 19.676268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688141, 38.706951, 19.550426>,  <34.308006, 38.691315, 20.088778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688141, 38.706951, 19.550426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.348026, 38.551407, 19.408548>,  <34.143959, 38.458080, 19.323421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.348026, 38.551407, 19.408548>,  <34.688141, 38.706951, 19.550426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348026, 38.551407, 19.408548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159949, 0.451127, -0.878010,
		0.501438, -0.803287, -0.321386,
		-0.850280, -0.388862, -0.354697,
		34.092941, 38.434750, 19.302139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822567, 38.587543, 18.870975>,  <34.688141, 38.706951, 19.550426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822567, 38.587543, 18.870975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423187, 38.592220, 18.849173>,  <34.183559, 38.595028, 18.836090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423187, 38.592220, 18.849173>,  <34.822567, 38.587543, 18.870975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423187, 38.592220, 18.849173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051758, 0.557752, -0.828392,
		0.020716, -0.829925, -0.557490,
		-0.998445, 0.011693, -0.054509,
		34.123653, 38.595730, 18.832819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560482, 38.404739, 18.108919>,  <34.822567, 38.587543, 18.870975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560482, 38.404739, 18.108919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.266346, 38.600670, 18.296253>,  <34.089863, 38.718227, 18.408653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.266346, 38.600670, 18.296253>,  <34.560482, 38.404739, 18.108919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266346, 38.600670, 18.296253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234988, 0.463903, -0.854151,
		-0.635648, -0.738149, -0.226025,
		-0.735345, 0.489826, 0.468336,
		34.045742, 38.747620, 18.436754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909885, 38.362629, 17.694166>,  <34.560482, 38.404739, 18.108919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909885, 38.362629, 17.694166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.901684, 38.693764, 17.918404>,  <33.896763, 38.892445, 18.052946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.901684, 38.693764, 17.918404>,  <33.909885, 38.362629, 17.694166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901684, 38.693764, 17.918404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338671, 0.521811, -0.782953,
		-0.940681, -0.205911, 0.269664,
		-0.020505, 0.827837, 0.560594,
		33.895531, 38.942116, 18.086582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296146, 38.718357, 17.518734>,  <33.909885, 38.362629, 17.694166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296146, 38.718357, 17.518734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482918, 39.006924, 17.723299>,  <33.594978, 39.180061, 17.846039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.482918, 39.006924, 17.723299>,  <33.296146, 38.718357, 17.518734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482918, 39.006924, 17.723299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370895, 0.684769, -0.627318,
		-0.802755, 0.103231, 0.587305,
		0.466927, 0.721412, 0.511414,
		33.622997, 39.223347, 17.876724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824615, 39.345463, 17.755400>,  <33.296146, 38.718357, 17.518734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824615, 39.345463, 17.755400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202385, 39.459873, 17.690580>,  <33.429047, 39.528519, 17.651690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202385, 39.459873, 17.690580>,  <32.824615, 39.345463, 17.755400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202385, 39.459873, 17.690580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327299, 0.772000, -0.544877,
		-0.030750, 0.567630, 0.822709,
		0.944420, 0.286027, -0.162046,
		33.485710, 39.545681, 17.641966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822647, 40.051716, 17.815546>,  <32.824615, 39.345463, 17.755400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822647, 40.051716, 17.815546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.151299, 39.982872, 17.598181>,  <33.348492, 39.941566, 17.467762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.151299, 39.982872, 17.598181>,  <32.822647, 40.051716, 17.815546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151299, 39.982872, 17.598181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250141, 0.747769, -0.615037,
		0.512201, 0.641265, 0.571340,
		0.821632, -0.172107, -0.543415,
		33.397789, 39.931240, 17.435156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068138, 40.102932, 18.188671>,  <32.822647, 40.051716, 17.815546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068138, 40.102932, 18.188671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.813437, 39.829182, 18.046593>,  <31.660614, 39.664932, 17.961346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.813437, 39.829182, 18.046593>,  <32.068138, 40.102932, 18.188671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813437, 39.829182, 18.046593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084749, -0.395750, 0.914440,
		-0.766392, 0.612379, 0.193997,
		-0.636758, -0.684378, -0.355198,
		31.622410, 39.623867, 17.940033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742905, 39.902309, 18.674839>,  <32.068138, 40.102932, 18.188671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742905, 39.902309, 18.674839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.620279, 39.607464, 18.433945>,  <31.546705, 39.430557, 18.289408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.620279, 39.607464, 18.433945>,  <31.742905, 39.902309, 18.674839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620279, 39.607464, 18.433945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228066, -0.557389, 0.798313,
		-0.924124, 0.382082, 0.002765,
		-0.306562, -0.737110, -0.602237,
		31.528311, 39.386330, 18.253273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015728, 39.801327, 18.758751>,  <31.742905, 39.902309, 18.674839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015728, 39.801327, 18.758751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.147877, 39.453800, 18.611229>,  <31.227167, 39.245285, 18.522717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.147877, 39.453800, 18.611229>,  <31.015728, 39.801327, 18.758751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.147877, 39.453800, 18.611229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342251, -0.474423, 0.811041,
		-0.879613, -0.141722, -0.454089,
		0.330373, -0.868814, -0.368804,
		31.246988, 39.193157, 18.500587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520199, 39.454929, 18.795156>,  <31.015728, 39.801327, 18.758751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520199, 39.454929, 18.795156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.810846, 39.180538, 18.779840>,  <30.985235, 39.015903, 18.770651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.810846, 39.180538, 18.779840>,  <30.520199, 39.454929, 18.795156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810846, 39.180538, 18.779840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393522, -0.461225, 0.795243,
		-0.563178, -0.562769, -0.605080,
		0.726617, -0.685976, -0.038290,
		31.028831, 38.974747, 18.768354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195414, 38.813560, 18.911615>,  <30.520199, 39.454929, 18.795156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195414, 38.813560, 18.911615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.572639, 38.707355, 18.991743>,  <30.798975, 38.643631, 19.039820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.572639, 38.707355, 18.991743>,  <30.195414, 38.813560, 18.911615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572639, 38.707355, 18.991743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332550, -0.741793, 0.582368,
		-0.006035, -0.615828, -0.787858,
		0.943066, -0.265517, 0.200317,
		30.855560, 38.627701, 19.051838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209579, 38.056717, 18.979549>,  <30.195414, 38.813560, 18.911615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209579, 38.056717, 18.979549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.556398, 38.161736, 19.148924>,  <30.764490, 38.224747, 19.250547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.556398, 38.161736, 19.148924>,  <30.209579, 38.056717, 18.979549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556398, 38.161736, 19.148924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155325, -0.665086, 0.730434,
		0.473394, -0.699091, -0.535882,
		0.867048, 0.262548, 0.423434,
		30.816513, 38.240501, 19.275953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512787, 37.436310, 19.069159>,  <30.209579, 38.056717, 18.979549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512787, 37.436310, 19.069159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.698172, 37.698196, 19.308006>,  <30.809402, 37.855328, 19.451315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.698172, 37.698196, 19.308006>,  <30.512787, 37.436310, 19.069159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698172, 37.698196, 19.308006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036205, -0.659306, 0.751002,
		0.885376, -0.369680, -0.281860,
		0.463463, 0.654715, 0.597119,
		30.837210, 37.894611, 19.487143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035318, 37.085705, 19.487732>,  <30.512787, 37.436310, 19.069159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035318, 37.085705, 19.487732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.971462, 37.420883, 19.696486>,  <30.933147, 37.621990, 19.821737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.971462, 37.420883, 19.696486>,  <31.035318, 37.085705, 19.487732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.971462, 37.420883, 19.696486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013356, -0.530449, 0.847611,
		0.987085, 0.128345, 0.095874,
		-0.159643, 0.837945, 0.521884,
		30.923569, 37.672268, 19.853050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501226, 37.054031, 20.090164>,  <31.035318, 37.085705, 19.487732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501226, 37.054031, 20.090164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.201204, 37.292889, 20.203894>,  <31.021191, 37.436203, 20.272131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.201204, 37.292889, 20.203894>,  <31.501226, 37.054031, 20.090164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201204, 37.292889, 20.203894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034784, -0.393684, 0.918587,
		0.660462, 0.698879, 0.274513,
		-0.750054, 0.597143, 0.284323,
		30.976189, 37.472031, 20.289190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772833, 37.492725, 20.544556>,  <31.501226, 37.054031, 20.090164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772833, 37.492725, 20.544556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.379448, 37.457813, 20.608028>,  <31.143417, 37.436867, 20.646112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.379448, 37.457813, 20.608028>,  <31.772833, 37.492725, 20.544556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379448, 37.457813, 20.608028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180953, -0.437997, 0.880576,
		-0.007357, 0.894729, 0.446549,
		-0.983464, -0.087283, 0.158681,
		31.084408, 37.431629, 20.655632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732109, 37.624649, 21.304996>,  <31.772833, 37.492725, 20.544556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732109, 37.624649, 21.304996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.377352, 37.463852, 21.213938>,  <31.164497, 37.367374, 21.159302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.377352, 37.463852, 21.213938>,  <31.732109, 37.624649, 21.304996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377352, 37.463852, 21.213938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122384, -0.679611, 0.723291,
		-0.445466, 0.613623, 0.651941,
		-0.886895, -0.401989, -0.227646,
		31.111284, 37.343254, 21.145643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341059, 37.581028, 21.968216>,  <31.732109, 37.624649, 21.304996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341059, 37.581028, 21.968216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217205, 37.308788, 21.702610>,  <31.142893, 37.145447, 21.543247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.217205, 37.308788, 21.702610>,  <31.341059, 37.581028, 21.968216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217205, 37.308788, 21.702610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073924, -0.713450, 0.696796,
		-0.947977, 0.166667, 0.271222,
		-0.309636, -0.680597, -0.664013,
		31.124313, 37.104610, 21.503407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838905, 37.220703, 22.281826>,  <31.341059, 37.581028, 21.968216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838905, 37.220703, 22.281826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.974543, 36.980881, 21.991846>,  <31.055925, 36.836987, 21.817858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.974543, 36.980881, 21.991846>,  <30.838905, 37.220703, 22.281826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974543, 36.980881, 21.991846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179982, -0.715024, 0.675535,
		-0.923376, -0.359545, -0.134549,
		0.339091, -0.599556, -0.724948,
		31.076271, 36.801014, 21.774363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636827, 36.587029, 22.525272>,  <30.838905, 37.220703, 22.281826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636827, 36.587029, 22.525272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.872839, 36.465668, 22.225990>,  <31.014446, 36.392853, 22.046421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.872839, 36.465668, 22.225990>,  <30.636827, 36.587029, 22.525272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872839, 36.465668, 22.225990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217952, -0.832450, 0.509435,
		-0.777406, -0.463655, -0.425045,
		0.590031, -0.303398, -0.748206,
		31.049849, 36.374649, 22.001528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475075, 36.013760, 22.395594>,  <30.636827, 36.587029, 22.525272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475075, 36.013760, 22.395594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.849964, 36.013210, 22.256102>,  <31.074898, 36.012878, 22.172407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.849964, 36.013210, 22.256102>,  <30.475075, 36.013760, 22.395594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849964, 36.013210, 22.256102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216917, -0.780700, 0.586051,
		-0.273060, -0.624905, -0.731391,
		0.937222, -0.001376, -0.348730,
		31.131130, 36.012798, 22.151482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730583, 35.324669, 22.425512>,  <30.475075, 36.013760, 22.395594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730583, 35.324669, 22.425512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.076372, 35.512257, 22.353121>,  <31.283846, 35.624809, 22.309685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.076372, 35.512257, 22.353121>,  <30.730583, 35.324669, 22.425512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076372, 35.512257, 22.353121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482600, -0.673539, 0.559860,
		0.140661, -0.571325, -0.808581,
		0.864472, 0.468971, -0.180981,
		31.335714, 35.652946, 22.298826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.197605, 34.821148, 22.174545>,  <30.730583, 35.324669, 22.425512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.197605, 34.821148, 22.174545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.403574, 35.122337, 22.338444>,  <31.527155, 35.303051, 22.436783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.403574, 35.122337, 22.338444>,  <31.197605, 34.821148, 22.174545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403574, 35.122337, 22.338444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495225, -0.651443, 0.574783,
		0.699721, -0.093051, -0.708331,
		0.514921, 0.752970, 0.409747,
		31.558050, 35.348228, 22.461369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880440, 34.663620, 22.208870>,  <31.197605, 34.821148, 22.174545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880440, 34.663620, 22.208870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.869102, 34.936203, 22.501392>,  <31.862301, 35.099754, 22.676907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.869102, 34.936203, 22.501392>,  <31.880440, 34.663620, 22.208870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869102, 34.936203, 22.501392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456168, -0.642160, 0.616069,
		0.889442, 0.351059, -0.292661,
		-0.028341, 0.681460, 0.731306,
		31.860600, 35.140640, 22.720785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502949, 34.496376, 22.679602>,  <31.880440, 34.663620, 22.208870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502949, 34.496376, 22.679602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.258469, 34.734699, 22.888004>,  <32.111782, 34.877693, 23.013046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.258469, 34.734699, 22.888004>,  <32.502949, 34.496376, 22.679602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258469, 34.734699, 22.888004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248498, -0.480531, 0.841035,
		0.751454, 0.643510, 0.145644,
		-0.611200, 0.595807, 0.521007,
		32.075108, 34.913441, 23.044306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902214, 34.707809, 23.212574>,  <32.502949, 34.496376, 22.679602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902214, 34.707809, 23.212574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.529804, 34.752964, 23.351398>,  <32.306358, 34.780056, 23.434692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.529804, 34.752964, 23.351398>,  <32.902214, 34.707809, 23.212574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529804, 34.752964, 23.351398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247906, -0.502277, 0.828409,
		0.267836, 0.857307, 0.439647,
		-0.931025, 0.112886, 0.347059,
		32.250496, 34.786831, 23.455517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.336235, 34.592838, 27.120697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.077171, 34.768066, 27.370058>,  <35.921734, 34.873203, 27.519674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.077171, 34.768066, 27.370058>,  <36.336235, 34.592838, 27.120697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077171, 34.768066, 27.370058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562610, -0.276796, 0.779008,
		0.513814, 0.855267, -0.067191,
		-0.647661, 0.438067, 0.623404,
		35.882874, 34.899487, 27.557079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770481, 34.957973, 27.639948>,  <36.336235, 34.592838, 27.120697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770481, 34.957973, 27.639948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.414864, 34.943596, 27.822512>,  <36.201492, 34.934967, 27.932049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.414864, 34.943596, 27.822512>,  <36.770481, 34.957973, 27.639948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414864, 34.943596, 27.822512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457628, -0.040788, 0.888208,
		-0.013312, 0.998521, 0.052713,
		-0.889044, -0.035946, 0.456408,
		36.148151, 34.932812, 27.959435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847549, 35.390484, 28.200552>,  <36.770481, 34.957973, 27.639948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847549, 35.390484, 28.200552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.529610, 35.166061, 28.293022>,  <36.338848, 35.031410, 28.348505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.529610, 35.166061, 28.293022>,  <36.847549, 35.390484, 28.200552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529610, 35.166061, 28.293022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416082, -0.226607, 0.880639,
		-0.441698, 0.796159, 0.413561,
		-0.794845, -0.561052, 0.231176,
		36.291157, 34.997746, 28.362375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705540, 35.557758, 28.879070>,  <36.847549, 35.390484, 28.200552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705540, 35.557758, 28.879070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.515057, 35.209610, 28.828989>,  <36.400768, 35.000721, 28.798941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.515057, 35.209610, 28.828989>,  <36.705540, 35.557758, 28.879070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515057, 35.209610, 28.828989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437330, -0.357952, 0.824992,
		-0.762870, 0.338110, 0.551100,
		-0.476206, -0.870375, -0.125205,
		36.372196, 34.948498, 28.791428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542149, 35.357712, 29.546936>,  <36.705540, 35.557758, 28.879070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542149, 35.357712, 29.546936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.486073, 35.027729, 29.327921>,  <36.452427, 34.829739, 29.196512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.486073, 35.027729, 29.327921>,  <36.542149, 35.357712, 29.546936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486073, 35.027729, 29.327921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368048, -0.556793, 0.744663,
		-0.919178, -0.097128, 0.381678,
		-0.140188, -0.824953, -0.547539,
		36.444016, 34.780243, 29.163658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137131, 34.882133, 29.955635>,  <36.542149, 35.357712, 29.546936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137131, 34.882133, 29.955635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.322372, 34.632481, 29.703924>,  <36.433517, 34.482689, 29.552898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.322372, 34.632481, 29.703924>,  <36.137131, 34.882133, 29.955635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322372, 34.632481, 29.703924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372045, -0.507522, 0.777177,
		-0.804434, -0.594036, -0.002831,
		0.463108, -0.624134, -0.629276,
		36.461304, 34.445240, 29.515141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864201, 34.131115, 30.088867>,  <36.137131, 34.882133, 29.955635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864201, 34.131115, 30.088867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.223557, 34.113663, 29.914055>,  <36.439171, 34.103191, 29.809168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.223557, 34.113663, 29.914055>,  <35.864201, 34.131115, 30.088867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223557, 34.113663, 29.914055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308678, -0.645129, 0.698947,
		-0.312437, -0.762827, -0.566108,
		0.898388, -0.043631, -0.437030,
		36.493073, 34.100574, 29.782946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127617, 33.439594, 30.103302>,  <35.864201, 34.131115, 30.088867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127617, 33.439594, 30.103302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.462822, 33.653641, 30.060644>,  <36.663944, 33.782070, 30.035049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.462822, 33.653641, 30.060644>,  <36.127617, 33.439594, 30.103302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462822, 33.653641, 30.060644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474393, -0.617967, 0.626952,
		0.269592, -0.575988, -0.771724,
		0.838017, 0.535121, -0.106646,
		36.714226, 33.814178, 30.028650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622242, 32.930538, 30.108398>,  <36.127617, 33.439594, 30.103302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622242, 32.930538, 30.108398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.811665, 33.276649, 30.174158>,  <36.925320, 33.484318, 30.213614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.811665, 33.276649, 30.174158>,  <36.622242, 32.930538, 30.108398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811665, 33.276649, 30.174158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582843, -0.447812, 0.678055,
		0.660329, -0.225280, -0.716390,
		0.473561, 0.865282, 0.164401,
		36.953732, 33.536236, 30.223478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317261, 32.761543, 30.191341>,  <36.622242, 32.930538, 30.108398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317261, 32.761543, 30.191341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.320755, 33.126968, 30.353981>,  <37.322853, 33.346226, 30.451565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.320755, 33.126968, 30.353981>,  <37.317261, 32.761543, 30.191341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320755, 33.126968, 30.353981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599787, -0.330135, 0.728880,
		0.800112, 0.237506, -0.550828,
		0.008735, 0.913565, 0.406598,
		37.323376, 33.401039, 30.475960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999527, 32.932259, 30.540255>,  <37.317261, 32.761543, 30.191341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999527, 32.932259, 30.540255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.744225, 33.183903, 30.717726>,  <37.591042, 33.334888, 30.824209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.744225, 33.183903, 30.717726>,  <37.999527, 32.932259, 30.540255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744225, 33.183903, 30.717726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423605, -0.194226, 0.884779,
		0.642798, 0.752660, -0.142528,
		-0.638255, 0.629110, 0.443679,
		37.552750, 33.372635, 30.850830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374878, 33.313042, 30.936960>,  <37.999527, 32.932259, 30.540255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374878, 33.313042, 30.936960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019051, 33.359135, 31.113770>,  <37.805553, 33.386791, 31.219854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.019051, 33.359135, 31.113770>,  <38.374878, 33.313042, 30.936960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019051, 33.359135, 31.113770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354800, -0.435182, 0.827486,
		0.287711, 0.892938, 0.346242,
		-0.889573, 0.115230, 0.442021,
		37.752178, 33.393703, 31.246376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.532131, 33.747654, 31.561630>,  <38.374878, 33.313042, 30.936960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.532131, 33.747654, 31.561630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.228058, 33.487804, 31.565874>,  <38.045616, 33.331894, 31.568420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.228058, 33.487804, 31.565874>,  <38.532131, 33.747654, 31.561630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228058, 33.487804, 31.565874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428195, -0.488648, 0.760179,
		-0.488648, 0.582416, 0.649627,
		-0.760179, -0.649627, 0.010611,
		38.000004, 33.292915, 31.569057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980045, 33.856117, 32.008434>,  <38.532131, 33.747654, 31.561630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980045, 33.856117, 32.008434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068851, 33.469982, 31.953537>,  <38.122135, 33.238300, 31.920597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.068851, 33.469982, 31.953537>,  <37.980045, 33.856117, 32.008434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068851, 33.469982, 31.953537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537977, 0.003884, 0.842951,
		-0.813196, -0.260987, 0.520190,
		0.222020, -0.965335, -0.137247,
		38.135456, 33.180382, 31.912363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277290, 34.544056, 32.296837>,  <37.980045, 33.856117, 32.008434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277290, 34.544056, 32.296837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.177372, 34.826019, 32.562378>,  <38.117420, 34.995197, 32.721703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.177372, 34.826019, 32.562378>,  <38.277290, 34.544056, 32.296837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177372, 34.826019, 32.562378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415210, 0.541380, -0.731101,
		-0.874758, -0.458266, 0.157451,
		-0.249798, 0.704912, 0.663853,
		38.102432, 35.037495, 32.761536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629597, 34.746243, 32.027706>,  <38.277290, 34.544056, 32.296837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629597, 34.746243, 32.027706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.761684, 35.041695, 32.262787>,  <37.840935, 35.218964, 32.403835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.761684, 35.041695, 32.262787>,  <37.629597, 34.746243, 32.027706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761684, 35.041695, 32.262787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358866, 0.674112, -0.645591,
		-0.873025, 0.002280, 0.487671,
		0.330217, 0.738626, 0.587698,
		37.860748, 35.263283, 32.439095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090469, 35.243435, 31.957302>,  <37.629597, 34.746243, 32.027706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090469, 35.243435, 31.957302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.422585, 35.432186, 32.075932>,  <37.621853, 35.545437, 32.147110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.422585, 35.432186, 32.075932>,  <37.090469, 35.243435, 31.957302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422585, 35.432186, 32.075932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179082, 0.729787, -0.659803,
		-0.527783, 0.494714, 0.690437,
		0.830286, 0.471878, 0.296575,
		37.671669, 35.573750, 32.164906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942036, 35.923389, 32.011597>,  <37.090469, 35.243435, 31.957302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942036, 35.923389, 32.011597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.337643, 35.951530, 31.959610>,  <37.575008, 35.968414, 31.928419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.337643, 35.951530, 31.959610>,  <36.942036, 35.923389, 32.011597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337643, 35.951530, 31.959610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134792, 0.789983, -0.598129,
		0.060591, 0.609080, 0.790791,
		0.989020, 0.070351, -0.129965,
		37.634350, 35.972637, 31.920620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042263, 36.628880, 32.042637>,  <36.942036, 35.923389, 32.011597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042263, 36.628880, 32.042637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.381935, 36.504467, 31.871922>,  <37.585739, 36.429821, 31.769493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.381935, 36.504467, 31.871922>,  <37.042263, 36.628880, 32.042637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381935, 36.504467, 31.871922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044248, 0.847226, -0.529386,
		0.526240, 0.430661, 0.733213,
		0.849184, -0.311028, -0.426789,
		37.636692, 36.411160, 31.743885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512051, 37.184643, 31.878145>,  <37.042263, 36.628880, 32.042637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512051, 37.184643, 31.878145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.658741, 36.901245, 31.636965>,  <37.746754, 36.731205, 31.492256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.658741, 36.901245, 31.636965>,  <37.512051, 37.184643, 31.878145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658741, 36.901245, 31.636965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240775, 0.698303, -0.674092,
		0.898632, 0.102030, 0.426673,
		0.366724, -0.708493, -0.602952,
		37.768757, 36.688698, 31.456079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118946, 37.523964, 31.582739>,  <37.512051, 37.184643, 31.878145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118946, 37.523964, 31.582739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.038151, 37.236473, 31.316616>,  <37.989674, 37.063980, 31.156942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.038151, 37.236473, 31.316616>,  <38.118946, 37.523964, 31.582739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038151, 37.236473, 31.316616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080707, 0.664785, -0.742662,
		0.976057, -0.203705, -0.076274,
		-0.201990, -0.718724, -0.665309,
		37.977554, 37.020855, 31.117023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653934, 37.570225, 31.037722>,  <38.118946, 37.523964, 31.582739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653934, 37.570225, 31.037722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.345020, 37.371292, 30.879614>,  <38.159672, 37.251934, 30.784750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.345020, 37.371292, 30.879614>,  <38.653934, 37.570225, 31.037722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345020, 37.371292, 30.879614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076158, 0.545236, -0.834816,
		0.630693, -0.674820, -0.383203,
		-0.772286, -0.497329, -0.395270,
		38.113335, 37.222092, 30.761032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924461, 37.353127, 30.479382>,  <38.653934, 37.570225, 31.037722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924461, 37.353127, 30.479382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.532345, 37.332855, 30.403011>,  <38.297073, 37.320694, 30.357189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.532345, 37.332855, 30.403011>,  <38.924461, 37.353127, 30.479382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532345, 37.332855, 30.403011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151938, 0.424211, -0.892726,
		0.126234, -0.904144, -0.408152,
		-0.980296, -0.050679, -0.190924,
		38.238255, 37.317650, 30.345734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887794, 37.130203, 29.796585>,  <38.924461, 37.353127, 30.479382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887794, 37.130203, 29.796585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.526447, 37.285004, 29.870516>,  <38.309639, 37.377884, 29.914873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.526447, 37.285004, 29.870516>,  <38.887794, 37.130203, 29.796585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526447, 37.285004, 29.870516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020469, 0.391558, -0.919926,
		-0.428384, -0.834812, -0.345799,
		-0.903365, 0.387003, 0.184825,
		38.255436, 37.401104, 29.925962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524971, 37.003197, 29.225746>,  <38.887794, 37.130203, 29.796585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524971, 37.003197, 29.225746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.311546, 37.294758, 29.397329>,  <38.183491, 37.469696, 29.500278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.311546, 37.294758, 29.397329>,  <38.524971, 37.003197, 29.225746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311546, 37.294758, 29.397329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257392, 0.343183, -0.903313,
		-0.805642, -0.592385, 0.004505,
		-0.533564, 0.728907, 0.428958,
		38.151478, 37.513432, 29.526016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981667, 37.107544, 28.816999>,  <38.524971, 37.003197, 29.225746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981667, 37.107544, 28.816999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.952114, 37.453575, 29.015465>,  <37.934383, 37.661194, 29.134544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.952114, 37.453575, 29.015465>,  <37.981667, 37.107544, 28.816999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952114, 37.453575, 29.015465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349698, 0.443458, -0.825261,
		-0.933945, -0.234477, 0.269755,
		-0.073880, 0.865081, 0.496162,
		37.929951, 37.713100, 29.164312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277740, 37.266609, 28.735134>,  <37.981667, 37.107544, 28.816999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277740, 37.266609, 28.735134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.520367, 37.580482, 28.786264>,  <37.665943, 37.768806, 28.816942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.520367, 37.580482, 28.786264>,  <37.277740, 37.266609, 28.735134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520367, 37.580482, 28.786264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361269, 0.415268, -0.834887,
		-0.708207, 0.460238, 0.535373,
		0.606570, 0.784687, 0.127826,
		37.702339, 37.815887, 28.824612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903839, 37.897179, 28.583147>,  <37.277740, 37.266609, 28.735134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903839, 37.897179, 28.583147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.283276, 38.023762, 28.581272>,  <37.510937, 38.099712, 28.580147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.283276, 38.023762, 28.581272>,  <36.903839, 37.897179, 28.583147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283276, 38.023762, 28.581272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138387, 0.401407, -0.905385,
		-0.284636, 0.859492, 0.424566,
		0.948595, 0.316459, -0.004688,
		37.567856, 38.118698, 28.579866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289734, 38.189632, 29.104725>,  <36.903839, 37.897179, 28.583147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289734, 38.189632, 29.104725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.896175, 38.216656, 29.038538>,  <35.660038, 38.232868, 28.998825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.896175, 38.216656, 29.038538>,  <36.289734, 38.189632, 29.104725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896175, 38.216656, 29.038538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174598, -0.561187, 0.809064,
		-0.038198, 0.824927, 0.563947,
		-0.983899, 0.067559, -0.165467,
		35.601006, 38.236923, 28.988897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940376, 38.417423, 29.784988>,  <36.289734, 38.189632, 29.104725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940376, 38.417423, 29.784988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.652691, 38.236042, 29.574423>,  <35.480080, 38.127213, 29.448084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.652691, 38.236042, 29.574423>,  <35.940376, 38.417423, 29.784988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652691, 38.236042, 29.574423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346932, -0.422060, 0.837558,
		-0.601972, 0.785013, 0.146233,
		-0.719213, -0.453453, -0.526415,
		35.436928, 38.100006, 29.416498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224808, 38.480507, 30.158512>,  <35.940376, 38.417423, 29.784988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224808, 38.480507, 30.158512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.187145, 38.165028, 29.915501>,  <35.164547, 37.975742, 29.769693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.187145, 38.165028, 29.915501>,  <35.224808, 38.480507, 30.158512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187145, 38.165028, 29.915501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383803, -0.534313, 0.753130,
		-0.918601, 0.304088, -0.252393,
		-0.094161, -0.788695, -0.607530,
		35.158897, 37.928417, 29.733242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721985, 38.080452, 30.447029>,  <35.224808, 38.480507, 30.158512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721985, 38.080452, 30.447029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.868561, 37.816669, 30.184475>,  <34.956509, 37.658401, 30.026941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.868561, 37.816669, 30.184475>,  <34.721985, 38.080452, 30.447029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868561, 37.816669, 30.184475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214014, -0.746281, 0.630288,
		-0.905494, -0.090488, -0.414600,
		0.366441, -0.659452, -0.656387,
		34.978493, 37.618835, 29.987558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179142, 37.591045, 30.272734>,  <34.721985, 38.080452, 30.447029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179142, 37.591045, 30.272734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.539921, 37.426414, 30.220436>,  <34.756390, 37.327637, 30.189058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.539921, 37.426414, 30.220436>,  <34.179142, 37.591045, 30.272734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539921, 37.426414, 30.220436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308895, -0.826454, 0.470699,
		-0.301780, -0.384161, -0.872553,
		0.901950, -0.411575, -0.130742,
		34.810505, 37.302940, 30.181213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989040, 36.978436, 30.327061>,  <34.179142, 37.591045, 30.272734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989040, 36.978436, 30.327061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.387924, 36.954208, 30.344498>,  <34.627254, 36.939671, 30.354959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.387924, 36.954208, 30.344498>,  <33.989040, 36.978436, 30.327061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387924, 36.954208, 30.344498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074614, -0.800173, 0.595110,
		-0.001162, -0.596704, -0.802461,
		0.997212, -0.060566, 0.043593,
		34.687088, 36.936039, 30.357574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262890, 36.240540, 30.106195>,  <33.989040, 36.978436, 30.327061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262890, 36.240540, 30.106195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.537918, 36.408546, 30.343121>,  <34.702934, 36.509350, 30.485275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.537918, 36.408546, 30.343121>,  <34.262890, 36.240540, 30.106195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537918, 36.408546, 30.343121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005592, -0.818766, 0.574100,
		0.726096, -0.391423, -0.565308,
		0.687571, 0.420013, 0.592314,
		34.744190, 36.534550, 30.520815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784195, 35.687256, 30.211832>,  <34.262890, 36.240540, 30.106195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784195, 35.687256, 30.211832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.889839, 35.939991, 30.503319>,  <34.953224, 36.091633, 30.678211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.889839, 35.939991, 30.503319>,  <34.784195, 35.687256, 30.211832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889839, 35.939991, 30.503319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039702, -0.762026, 0.646328,
		0.963675, -0.141771, -0.226345,
		0.264111, 0.631837, 0.728717,
		34.969074, 36.129543, 30.721933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375660, 35.353420, 30.658934>,  <34.784195, 35.687256, 30.211832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375660, 35.353420, 30.658934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.185535, 35.611202, 30.898521>,  <35.071461, 35.765869, 31.042274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.185535, 35.611202, 30.898521>,  <35.375660, 35.353420, 30.658934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185535, 35.611202, 30.898521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141931, -0.615704, 0.775089,
		0.868295, 0.453420, 0.201183,
		-0.475310, 0.644452, 0.598967,
		35.042942, 35.804539, 31.078211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741093, 35.334873, 31.296741>,  <35.375660, 35.353420, 30.658934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741093, 35.334873, 31.296741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.384678, 35.471130, 31.416748>,  <35.170830, 35.552883, 31.488752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.384678, 35.471130, 31.416748>,  <35.741093, 35.334873, 31.296741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384678, 35.471130, 31.416748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124323, -0.452534, 0.883038,
		0.436566, 0.824122, 0.360877,
		-0.891041, 0.340639, 0.300018,
		35.117367, 35.573322, 31.506754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899868, 35.584190, 31.928711>,  <35.741093, 35.334873, 31.296741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899868, 35.584190, 31.928711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.500484, 35.563377, 31.920973>,  <35.260853, 35.550888, 31.916330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.500484, 35.563377, 31.920973>,  <35.899868, 35.584190, 31.928711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500484, 35.563377, 31.920973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000660, -0.337373, 0.941371,
		-0.055508, 0.939932, 0.336818,
		-0.998458, -0.052031, -0.019347,
		35.200947, 35.547768, 31.915169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696594, 35.915825, 32.583569>,  <35.899868, 35.584190, 31.928711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696594, 35.915825, 32.583569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.381390, 35.712849, 32.444122>,  <35.192268, 35.591061, 32.360455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.381390, 35.712849, 32.444122>,  <35.696594, 35.915825, 32.583569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381390, 35.712849, 32.444122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045136, -0.517113, 0.854726,
		-0.614002, 0.689271, 0.384587,
		-0.788013, -0.507445, -0.348620,
		35.144985, 35.560616, 32.339535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.872993, 40.953667, 26.214540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701466, 40.596447, 26.160021>,  <34.598549, 40.382114, 26.127310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701466, 40.596447, 26.160021>,  <34.872993, 40.953667, 26.214540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701466, 40.596447, 26.160021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210484, -0.245491, 0.946272,
		-0.878529, 0.377088, 0.293244,
		-0.428817, -0.893050, -0.136300,
		34.572819, 40.328533, 26.119131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517654, 40.858013, 26.825920>,  <34.872993, 40.953667, 26.214540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517654, 40.858013, 26.825920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524006, 40.482468, 26.688347>,  <34.527817, 40.257141, 26.605803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524006, 40.482468, 26.688347>,  <34.517654, 40.858013, 26.825920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524006, 40.482468, 26.688347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360736, -0.315433, 0.877708,
		-0.932533, -0.138004, 0.333672,
		0.015876, -0.938859, -0.343935,
		34.528770, 40.200809, 26.585167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367046, 40.616039, 27.406843>,  <34.517654, 40.858013, 26.825920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367046, 40.616039, 27.406843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475040, 40.305763, 27.178663>,  <34.539837, 40.119598, 27.041756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475040, 40.305763, 27.178663>,  <34.367046, 40.616039, 27.406843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475040, 40.305763, 27.178663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387721, -0.454711, 0.801817,
		-0.881350, -0.437657, 0.177984,
		0.269990, -0.775690, -0.570448,
		34.556038, 40.073055, 27.007528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119427, 39.914734, 27.635729>,  <34.367046, 40.616039, 27.406843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119427, 39.914734, 27.635729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457687, 39.867119, 27.427612>,  <34.660645, 39.838551, 27.302742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457687, 39.867119, 27.427612>,  <34.119427, 39.914734, 27.635729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457687, 39.867119, 27.427612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373425, -0.564536, 0.736107,
		-0.381349, -0.816779, -0.432948,
		0.845652, -0.119040, -0.520291,
		34.711384, 39.831406, 27.271524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033951, 39.277378, 27.322906>,  <34.119427, 39.914734, 27.635729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033951, 39.277378, 27.322906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425900, 39.355270, 27.340481>,  <34.661068, 39.402008, 27.351025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425900, 39.355270, 27.340481>,  <34.033951, 39.277378, 27.322906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425900, 39.355270, 27.340481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111338, -0.715775, 0.689398,
		0.165696, -0.670630, -0.723049,
		0.979872, 0.194734, 0.043934,
		34.719860, 39.413689, 27.353661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410637, 38.612305, 27.186970>,  <34.033951, 39.277378, 27.322906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410637, 38.612305, 27.186970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655651, 38.848305, 27.397377>,  <34.802662, 38.989906, 27.523621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655651, 38.848305, 27.397377>,  <34.410637, 38.612305, 27.186970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655651, 38.848305, 27.397377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159280, -0.743953, 0.648972,
		0.774227, -0.313735, -0.549675,
		0.612537, 0.590004, 0.526017,
		34.839413, 39.025307, 27.555182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929008, 38.206955, 27.444254>,  <34.410637, 38.612305, 27.186970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929008, 38.206955, 27.444254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956902, 38.528290, 27.680824>,  <34.973637, 38.721092, 27.822765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956902, 38.528290, 27.680824>,  <34.929008, 38.206955, 27.444254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956902, 38.528290, 27.680824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337333, -0.576930, 0.743880,
		0.938799, 0.147637, -0.311222,
		0.069729, 0.803340, 0.591424,
		34.977821, 38.769291, 27.858252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710049, 38.246601, 27.800714>,  <34.929008, 38.206955, 27.444254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710049, 38.246601, 27.800714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497978, 38.504509, 28.020964>,  <35.370735, 38.659252, 28.153112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.497978, 38.504509, 28.020964>,  <35.710049, 38.246601, 27.800714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497978, 38.504509, 28.020964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163098, -0.559725, 0.812470,
		0.832053, 0.520557, 0.191592,
		-0.530176, 0.644770, 0.550622,
		35.338924, 38.697941, 28.186150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088165, 38.250996, 28.339573>,  <35.710049, 38.246601, 27.800714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088165, 38.250996, 28.339573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735008, 38.383961, 28.472233>,  <35.523113, 38.463741, 28.551828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735008, 38.383961, 28.472233>,  <36.088165, 38.250996, 28.339573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735008, 38.383961, 28.472233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094606, -0.565883, 0.819040,
		0.459939, 0.754503, 0.468168,
		-0.882896, 0.332417, 0.331652,
		35.470139, 38.483685, 28.571728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807510, 38.688290, 28.401058>,  <36.088165, 38.250996, 28.339573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807510, 38.688290, 28.401058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187065, 38.591354, 28.320171>,  <37.414799, 38.533195, 28.271639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187065, 38.591354, 28.320171>,  <36.807510, 38.688290, 28.401058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187065, 38.591354, 28.320171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158853, 0.186941, -0.969442,
		0.272731, 0.952012, 0.138890,
		0.948885, -0.242334, -0.202215,
		37.471729, 38.518654, 28.259506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154411, 39.215256, 28.080572>,  <36.807510, 38.688290, 28.401058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154411, 39.215256, 28.080572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371120, 38.896301, 27.974249>,  <37.501144, 38.704929, 27.910456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371120, 38.896301, 27.974249>,  <37.154411, 39.215256, 28.080572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371120, 38.896301, 27.974249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122943, 0.237662, -0.963536,
		0.831486, 0.554695, 0.030724,
		0.541770, -0.797390, -0.265809,
		37.533653, 38.657085, 27.894506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695499, 39.411411, 27.700010>,  <37.154411, 39.215256, 28.080572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695499, 39.411411, 27.700010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642090, 39.029423, 27.594028>,  <37.610043, 38.800228, 27.530439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642090, 39.029423, 27.594028>,  <37.695499, 39.411411, 27.700010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642090, 39.029423, 27.594028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046926, 0.273141, -0.960829,
		0.989934, -0.115860, -0.081283,
		-0.133524, -0.954971, -0.264955,
		37.602032, 38.742931, 27.514542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080490, 39.358540, 27.207417>,  <37.695499, 39.411411, 27.700010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080490, 39.358540, 27.207417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850323, 39.037670, 27.143650>,  <37.712223, 38.845150, 27.105391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850323, 39.037670, 27.143650>,  <38.080490, 39.358540, 27.207417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850323, 39.037670, 27.143650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067637, 0.240925, -0.968184,
		0.815060, -0.546326, -0.192889,
		-0.575416, -0.802174, -0.159417,
		37.677696, 38.797016, 27.095825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365993, 39.132824, 26.622784>,  <38.080490, 39.358540, 27.207417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365993, 39.132824, 26.622784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992886, 38.993591, 26.660254>,  <37.769020, 38.910053, 26.682735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992886, 38.993591, 26.660254>,  <38.365993, 39.132824, 26.622784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992886, 38.993591, 26.660254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140120, 0.110693, -0.983927,
		0.332117, -0.930906, -0.152024,
		-0.932773, -0.348081, 0.093676,
		37.713055, 38.889168, 26.688356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156765, 38.869175, 25.913408>,  <38.365993, 39.132824, 26.622784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156765, 38.869175, 25.913408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797672, 38.879753, 26.089308>,  <37.582218, 38.886101, 26.194847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797672, 38.879753, 26.089308>,  <38.156765, 38.869175, 25.913408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797672, 38.879753, 26.089308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424008, 0.219045, -0.878770,
		-0.119568, -0.975356, -0.185429,
		-0.897731, 0.026449, 0.439750,
		37.528355, 38.887688, 26.221233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742027, 38.447300, 25.493902>,  <38.156765, 38.869175, 25.913408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742027, 38.447300, 25.493902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533104, 38.721622, 25.696629>,  <37.407749, 38.886215, 25.818264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533104, 38.721622, 25.696629>,  <37.742027, 38.447300, 25.493902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533104, 38.721622, 25.696629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399378, 0.328389, -0.855954,
		-0.753450, -0.649486, 0.102374,
		-0.522312, 0.685805, 0.506815,
		37.376411, 38.927364, 25.848673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065804, 38.425575, 25.145330>,  <37.742027, 38.447300, 25.493902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065804, 38.425575, 25.145330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093094, 38.775383, 25.337397>,  <37.109470, 38.985268, 25.452637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093094, 38.775383, 25.337397>,  <37.065804, 38.425575, 25.145330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093094, 38.775383, 25.337397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511040, 0.443988, -0.736012,
		-0.856845, -0.195167, 0.477207,
		0.068229, 0.874520, 0.480167,
		37.113564, 39.037739, 25.481447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394413, 38.799942, 25.094404>,  <37.065804, 38.425575, 25.145330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394413, 38.799942, 25.094404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651527, 39.094395, 25.179195>,  <36.805794, 39.271069, 25.230070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651527, 39.094395, 25.179195>,  <36.394413, 38.799942, 25.094404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651527, 39.094395, 25.179195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397567, 0.557102, -0.729093,
		-0.654805, 0.384374, 0.650759,
		0.642784, 0.736134, 0.211979,
		36.844364, 39.315235, 25.242788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997936, 39.360176, 24.919369>,  <36.394413, 38.799942, 25.094404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997936, 39.360176, 24.919369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381462, 39.473785, 24.918751>,  <36.611580, 39.541950, 24.918379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381462, 39.473785, 24.918751>,  <35.997936, 39.360176, 24.919369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381462, 39.473785, 24.918751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186090, 0.624082, -0.758876,
		-0.214573, 0.727910, 0.651234,
		0.958816, 0.284022, -0.001546,
		36.669106, 39.558990, 24.918287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018066, 40.152458, 24.855362>,  <35.997936, 39.360176, 24.919369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018066, 40.152458, 24.855362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370838, 40.000263, 24.744055>,  <36.582500, 39.908947, 24.677271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370838, 40.000263, 24.744055>,  <36.018066, 40.152458, 24.855362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370838, 40.000263, 24.744055> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064413, 0.487505, -0.870741,
		0.466966, 0.785854, 0.405435,
		0.881926, -0.380491, -0.278268,
		36.635418, 39.886116, 24.660574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261986, 40.687649, 24.515249>,  <36.018066, 40.152458, 24.855362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261986, 40.687649, 24.515249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518242, 40.405838, 24.393126>,  <36.671997, 40.236752, 24.319851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518242, 40.405838, 24.393126>,  <36.261986, 40.687649, 24.515249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518242, 40.405838, 24.393126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012185, 0.406898, -0.913393,
		0.767741, 0.581440, 0.269262,
		0.640645, -0.704529, -0.305307,
		36.710434, 40.194481, 24.301533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633984, 41.106415, 24.226503>,  <36.261986, 40.687649, 24.515249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633984, 41.106415, 24.226503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676361, 40.738731, 24.074802>,  <36.701790, 40.518120, 23.983782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676361, 40.738731, 24.074802>,  <36.633984, 41.106415, 24.226503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676361, 40.738731, 24.074802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065241, 0.387002, -0.919768,
		0.992229, 0.072705, 0.100973,
		0.105948, -0.919208, -0.379251,
		36.708145, 40.462971, 23.961027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223064, 41.052094, 23.804707>,  <36.633984, 41.106415, 24.226503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223064, 41.052094, 23.804707> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991352, 40.752945, 23.675016>,  <36.852325, 40.573456, 23.597202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991352, 40.752945, 23.675016>,  <37.223064, 41.052094, 23.804707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991352, 40.752945, 23.675016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089891, 0.336726, -0.937302,
		0.810153, -0.572110, -0.127834,
		-0.579285, -0.747867, -0.324227,
		36.817566, 40.528584, 23.577749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.650372, 37.337086, 24.755266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.004307, 37.252346, 24.589287>,  <29.216667, 37.201504, 24.489698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.004307, 37.252346, 24.589287>,  <28.650372, 37.337086, 24.755266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004307, 37.252346, 24.589287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248233, -0.539322, 0.804681,
		-0.394262, -0.815016, -0.424624,
		0.884838, -0.211850, -0.414948,
		29.269758, 37.188789, 24.464802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.752815, 36.585079, 24.870602>,  <28.650372, 37.337086, 24.755266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.752815, 36.585079, 24.870602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.115211, 36.727348, 24.778793>,  <29.332649, 36.812710, 24.723707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.115211, 36.727348, 24.778793>,  <28.752815, 36.585079, 24.870602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115211, 36.727348, 24.778793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391557, -0.498146, 0.773650,
		0.160831, -0.790790, -0.590581,
		0.905989, 0.355672, -0.229522,
		29.387009, 36.834049, 24.709936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307981, 35.966194, 24.928295>,  <28.752815, 36.585079, 24.870602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307981, 35.966194, 24.928295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.488062, 36.318672, 24.986012>,  <29.596109, 36.530159, 25.020641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.488062, 36.318672, 24.986012>,  <29.307981, 35.966194, 24.928295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488062, 36.318672, 24.986012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502631, -0.383648, 0.774710,
		0.738026, -0.276249, -0.615633,
		0.450199, 0.881193, 0.144291,
		29.623121, 36.583031, 25.029299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999023, 35.818584, 25.094225>,  <29.307981, 35.966194, 24.928295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999023, 35.818584, 25.094225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.953562, 36.195385, 25.220539>,  <29.926285, 36.421463, 25.296328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.953562, 36.195385, 25.220539>,  <29.999023, 35.818584, 25.094225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953562, 36.195385, 25.220539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530707, -0.211136, 0.820836,
		0.839901, 0.260880, -0.475929,
		-0.113654, 0.942000, 0.315784,
		29.919466, 36.477985, 25.315275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700705, 36.039879, 25.234917>,  <29.999023, 35.818584, 25.094225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700705, 36.039879, 25.234917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.438469, 36.255939, 25.445986>,  <30.281128, 36.385574, 25.572626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.438469, 36.255939, 25.445986>,  <30.700705, 36.039879, 25.234917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438469, 36.255939, 25.445986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553389, -0.131773, 0.822433,
		0.513771, 0.831188, -0.212524,
		-0.655591, 0.540151, 0.527671,
		30.241791, 36.417984, 25.604288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111181, 36.402042, 25.705080>,  <30.700705, 36.039879, 25.234917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111181, 36.402042, 25.705080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.755497, 36.407768, 25.887991>,  <30.542088, 36.411201, 25.997738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.755497, 36.407768, 25.887991>,  <31.111181, 36.402042, 25.705080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755497, 36.407768, 25.887991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450523, -0.146495, 0.880664,
		0.079593, 0.989108, 0.123817,
		-0.889210, 0.014313, 0.457276,
		30.488733, 36.412064, 26.025173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165953, 36.777142, 26.380968>,  <31.111181, 36.402042, 25.705080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165953, 36.777142, 26.380968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.845779, 36.539223, 26.410698>,  <30.653675, 36.396473, 26.428535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.845779, 36.539223, 26.410698>,  <31.165953, 36.777142, 26.380968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845779, 36.539223, 26.410698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271258, -0.248855, 0.929780,
		-0.534532, 0.764389, 0.360535,
		-0.800434, -0.594795, 0.074325,
		30.605650, 36.360783, 26.432995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952154, 36.844517, 27.162758>,  <31.165953, 36.777142, 26.380968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952154, 36.844517, 27.162758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.736172, 36.538372, 27.022659>,  <30.606583, 36.354687, 26.938601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.736172, 36.538372, 27.022659>,  <30.952154, 36.844517, 27.162758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736172, 36.538372, 27.022659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207496, -0.524315, 0.825856,
		-0.815716, 0.373252, 0.441916,
		-0.539956, -0.765360, -0.350244,
		30.574184, 36.308765, 26.917585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491188, 36.687798, 27.655832>,  <30.952154, 36.844517, 27.162758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491188, 36.687798, 27.655832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.601707, 36.382511, 27.422197>,  <30.668020, 36.199341, 27.282017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.601707, 36.382511, 27.422197>,  <30.491188, 36.687798, 27.655832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601707, 36.382511, 27.422197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261299, -0.525199, 0.809870,
		-0.924868, -0.376389, 0.054315,
		0.276300, -0.763215, -0.584090,
		30.684597, 36.153545, 27.246971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130198, 36.081329, 28.024483>,  <30.491188, 36.687798, 27.655832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130198, 36.081329, 28.024483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.415457, 35.935356, 27.785070>,  <30.586613, 35.847775, 27.641422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.415457, 35.935356, 27.785070>,  <30.130198, 36.081329, 28.024483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415457, 35.935356, 27.785070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228224, -0.686432, 0.690453,
		-0.662818, -0.628997, -0.406246,
		0.713153, -0.364929, -0.598531,
		30.629402, 35.825878, 27.605511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059362, 35.385365, 28.004782>,  <30.130198, 36.081329, 28.024483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059362, 35.385365, 28.004782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.440205, 35.420506, 27.887630>,  <30.668711, 35.441589, 27.817341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.440205, 35.420506, 27.887630>,  <30.059362, 35.385365, 28.004782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440205, 35.420506, 27.887630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275177, -0.663810, 0.695438,
		-0.133316, -0.742723, -0.656193,
		0.952105, 0.087856, -0.292877,
		30.725836, 35.446861, 27.799767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284973, 34.674435, 27.852806>,  <30.059362, 35.385365, 28.004782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284973, 34.674435, 27.852806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.612944, 34.891720, 27.925070>,  <30.809727, 35.022091, 27.968428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.612944, 34.891720, 27.925070>,  <30.284973, 34.674435, 27.852806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612944, 34.891720, 27.925070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253878, -0.627889, 0.735732,
		0.513096, -0.557380, -0.652733,
		0.819926, 0.543215, 0.180661,
		30.858921, 35.054684, 27.979269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779644, 34.158009, 28.079323>,  <30.284973, 34.674435, 27.852806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779644, 34.158009, 28.079323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.957335, 34.508015, 28.156271>,  <31.063950, 34.718018, 28.202440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.957335, 34.508015, 28.156271>,  <30.779644, 34.158009, 28.079323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.957335, 34.508015, 28.156271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603806, -0.451034, 0.657257,
		0.661876, -0.175818, -0.728703,
		0.444228, 0.875018, 0.192369,
		31.090603, 34.770519, 28.213982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517462, 33.990292, 28.076031>,  <30.779644, 34.158009, 28.079323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517462, 33.990292, 28.076031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.440046, 34.301212, 28.315479>,  <31.393597, 34.487762, 28.459148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.440046, 34.301212, 28.315479>,  <31.517462, 33.990292, 28.076031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440046, 34.301212, 28.315479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433107, -0.479795, 0.763030,
		0.880319, 0.406944, -0.243795,
		-0.193539, 0.777299, 0.598623,
		31.381985, 34.534401, 28.495066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196808, 34.116879, 27.607094>,  <31.517462, 33.990292, 28.076031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196808, 34.116879, 27.607094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.522213, 33.943569, 27.451929>,  <32.717457, 33.839584, 27.358829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.522213, 33.943569, 27.451929>,  <32.196808, 34.116879, 27.607094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522213, 33.943569, 27.451929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267935, 0.312778, -0.911252,
		0.516152, 0.845248, 0.138358,
		0.813510, -0.433274, -0.387912,
		32.766266, 33.813587, 27.335556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378120, 34.593281, 27.154037>,  <32.196808, 34.116879, 27.607094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378120, 34.593281, 27.154037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.558002, 34.255257, 27.038357>,  <32.665932, 34.052441, 26.968948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.558002, 34.255257, 27.038357>,  <32.378120, 34.593281, 27.154037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558002, 34.255257, 27.038357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109175, 0.269355, -0.956833,
		0.886478, 0.461869, 0.028872,
		0.449708, -0.845059, -0.289202,
		32.692913, 34.001740, 26.951595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881020, 34.793304, 26.617544>,  <32.378120, 34.593281, 27.154037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881020, 34.793304, 26.617544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.800896, 34.405083, 26.564030>,  <32.752823, 34.172150, 26.531921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.800896, 34.405083, 26.564030>,  <32.881020, 34.793304, 26.617544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800896, 34.405083, 26.564030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110007, 0.157969, -0.981297,
		0.973538, -0.181842, -0.138410,
		-0.200306, -0.970556, -0.133785,
		32.740803, 34.113914, 26.523893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127621, 34.744583, 26.036888>,  <32.881020, 34.793304, 26.617544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127621, 34.744583, 26.036888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.915470, 34.406563, 26.064009>,  <32.788181, 34.203751, 26.080282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.915470, 34.406563, 26.064009>,  <33.127621, 34.744583, 26.036888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915470, 34.406563, 26.064009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481922, 0.234732, -0.844187,
		0.697464, -0.480410, -0.531743,
		-0.530373, -0.845049, 0.067803,
		32.756359, 34.153049, 26.084351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355267, 34.356049, 25.494547>,  <33.127621, 34.744583, 26.036888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355267, 34.356049, 25.494547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.993763, 34.221935, 25.600979>,  <32.776859, 34.141468, 25.664837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.993763, 34.221935, 25.600979>,  <33.355267, 34.356049, 25.494547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993763, 34.221935, 25.600979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336306, 0.171675, -0.925973,
		0.264786, -0.926343, -0.267912,
		-0.903763, -0.335285, 0.266078,
		32.722633, 34.121349, 25.680803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223057, 33.792168, 25.056955>,  <33.355267, 34.356049, 25.494547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223057, 33.792168, 25.056955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.877556, 33.954006, 25.177113>,  <32.670254, 34.051109, 25.249207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.877556, 33.954006, 25.177113>,  <33.223057, 33.792168, 25.056955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877556, 33.954006, 25.177113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261512, 0.149662, -0.953526,
		-0.430747, -0.902168, -0.023465,
		-0.863753, 0.404592, 0.300394,
		32.618431, 34.075382, 25.267231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771713, 33.558174, 24.528156>,  <33.223057, 33.792168, 25.056955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771713, 33.558174, 24.528156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.583595, 33.858871, 24.713066>,  <32.470726, 34.039291, 24.824013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.583595, 33.858871, 24.713066>,  <32.771713, 33.558174, 24.528156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583595, 33.858871, 24.713066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329702, 0.336223, -0.882185,
		-0.818608, -0.567300, 0.089728,
		-0.470295, 0.751747, 0.462275,
		32.442505, 34.084396, 24.851749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064949, 33.517212, 24.317240>,  <32.771713, 33.558174, 24.528156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064949, 33.517212, 24.317240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.106617, 33.886837, 24.464344>,  <32.131618, 34.108612, 24.552607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.106617, 33.886837, 24.464344>,  <32.064949, 33.517212, 24.317240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106617, 33.886837, 24.464344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525471, 0.365085, -0.768501,
		-0.844410, -0.113192, 0.523602,
		0.104171, 0.924067, 0.367761,
		32.137867, 34.164059, 24.574673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589945, 33.756264, 23.995440>,  <32.064949, 33.517212, 24.317240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589945, 33.756264, 23.995440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.780928, 34.078197, 24.136454>,  <31.895517, 34.271358, 24.221062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.780928, 34.078197, 24.136454>,  <31.589945, 33.756264, 23.995440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780928, 34.078197, 24.136454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421129, 0.561747, -0.712103,
		-0.771158, 0.191535, 0.607148,
		0.477456, 0.804832, 0.352535,
		31.924164, 34.319649, 24.242214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105253, 34.312321, 23.874071>,  <31.589945, 33.756264, 23.995440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105253, 34.312321, 23.874071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.478706, 34.454945, 23.887905>,  <31.702778, 34.540520, 23.896206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.478706, 34.454945, 23.887905>,  <31.105253, 34.312321, 23.874071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478706, 34.454945, 23.887905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190936, 0.576992, -0.794118,
		-0.303104, 0.734811, 0.606779,
		0.933633, 0.356556, 0.034587,
		31.758797, 34.561913, 23.898281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109222, 35.109474, 23.870188>,  <31.105253, 34.312321, 23.874071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109222, 35.109474, 23.870188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.471073, 34.998718, 23.740582>,  <31.688183, 34.932266, 23.662819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.471073, 34.998718, 23.740582>,  <31.109222, 35.109474, 23.870188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471073, 34.998718, 23.740582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018046, 0.734660, -0.678196,
		0.425826, 0.619360, 0.659595,
		0.904625, -0.276890, -0.324014,
		31.742460, 34.915649, 23.643377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247229, 35.674755, 23.690588>,  <31.109222, 35.109474, 23.870188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247229, 35.674755, 23.690588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.535740, 35.456936, 23.519373>,  <31.708847, 35.326244, 23.416643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.535740, 35.456936, 23.519373>,  <31.247229, 35.674755, 23.690588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535740, 35.456936, 23.519373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128897, 0.712711, -0.689513,
		0.680544, 0.442160, 0.584256,
		0.721281, -0.544553, -0.428038,
		31.752125, 35.293571, 23.390961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844147, 36.076275, 23.588488>,  <31.247229, 35.674755, 23.690588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844147, 36.076275, 23.588488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.840212, 35.768688, 23.332802>,  <31.837851, 35.584137, 23.179390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.840212, 35.768688, 23.332802>,  <31.844147, 36.076275, 23.588488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840212, 35.768688, 23.332802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008077, 0.639163, -0.769029,
		0.999919, -0.012730, -0.000077,
		-0.009839, -0.768966, -0.639214,
		31.837259, 35.537998, 23.141037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247101, 36.302326, 23.026831>,  <31.844147, 36.076275, 23.588488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247101, 36.302326, 23.026831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.019157, 36.015347, 22.866566>,  <31.882393, 35.843159, 22.770407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.019157, 36.015347, 22.866566>,  <32.247101, 36.302326, 23.026831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019157, 36.015347, 22.866566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234136, 0.609122, -0.757727,
		0.787685, -0.337985, -0.515092,
		-0.569854, -0.717452, -0.400662,
		31.848202, 35.800110, 22.746367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932114, 36.173710, 22.664103>,  <32.247101, 36.302326, 23.026831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932114, 36.173710, 22.664103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.324799, 36.249855, 22.664537>,  <33.560410, 36.295544, 22.664799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.324799, 36.249855, 22.664537>,  <32.932114, 36.173710, 22.664103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.324799, 36.249855, 22.664537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107694, -0.560058, 0.821423,
		0.156979, -0.806285, -0.570318,
		0.981713, 0.190366, 0.001085,
		33.619312, 36.306965, 22.664864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266521, 35.612877, 22.839083>,  <32.932114, 36.173710, 22.664103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266521, 35.612877, 22.839083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.566898, 35.874851, 22.872871>,  <33.747124, 36.032036, 22.893145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.566898, 35.874851, 22.872871>,  <33.266521, 35.612877, 22.839083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566898, 35.874851, 22.872871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342467, -0.495615, 0.798174,
		0.564622, -0.570456, -0.596475,
		0.750945, 0.654940, 0.084473,
		33.792183, 36.071335, 22.898212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935165, 35.138145, 22.997959>,  <33.266521, 35.612877, 22.839083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935165, 35.138145, 22.997959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.012589, 35.513824, 23.111416>,  <34.059040, 35.739231, 23.179489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.012589, 35.513824, 23.111416>,  <33.935165, 35.138145, 22.997959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012589, 35.513824, 23.111416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309671, -0.332814, 0.890696,
		0.930935, -0.084564, -0.355259,
		0.193556, 0.939193, 0.283641,
		34.070656, 35.795582, 23.196508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584457, 35.126019, 23.397200>,  <33.935165, 35.138145, 22.997959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584457, 35.126019, 23.397200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.431400, 35.478561, 23.508045>,  <34.339565, 35.690086, 23.574553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.431400, 35.478561, 23.508045>,  <34.584457, 35.126019, 23.397200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431400, 35.478561, 23.508045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311163, -0.159476, 0.936880,
		0.869919, 0.444721, -0.213223,
		-0.382646, 0.881357, 0.277112,
		34.316605, 35.742970, 23.591179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142498, 35.375706, 23.805458>,  <34.584457, 35.126019, 23.397200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142498, 35.375706, 23.805458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.812374, 35.568291, 23.923483>,  <34.614300, 35.683842, 23.994299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.812374, 35.568291, 23.923483>,  <35.142498, 35.375706, 23.805458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812374, 35.568291, 23.923483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371112, 0.068619, 0.926049,
		0.425614, 0.873775, -0.235310,
		-0.825305, 0.481466, 0.295063,
		34.564781, 35.712730, 24.012001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476688, 35.960766, 24.093380>,  <35.142498, 35.375706, 23.805458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476688, 35.960766, 24.093380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108795, 35.932850, 24.247900>,  <34.888062, 35.916100, 24.340612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.108795, 35.932850, 24.247900>,  <35.476688, 35.960766, 24.093380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108795, 35.932850, 24.247900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349108, 0.304580, 0.886202,
		-0.179509, 0.949926, -0.255766,
		-0.919728, -0.069791, 0.386302,
		34.832878, 35.911911, 24.363791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429073, 36.495052, 24.660589>,  <35.476688, 35.960766, 24.093380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429073, 36.495052, 24.660589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.130703, 36.240097, 24.737865>,  <34.951679, 36.087124, 24.784231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.130703, 36.240097, 24.737865>,  <35.429073, 36.495052, 24.660589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130703, 36.240097, 24.737865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225044, 0.031798, 0.973830,
		-0.626855, 0.769883, 0.119722,
		-0.745928, -0.637392, 0.193190,
		34.906925, 36.048878, 24.795822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037239, 36.813160, 25.199186>,  <35.429073, 36.495052, 24.660589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037239, 36.813160, 25.199186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.966270, 36.419518, 25.202063>,  <34.923691, 36.183331, 25.203789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.966270, 36.419518, 25.202063>,  <35.037239, 36.813160, 25.199186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966270, 36.419518, 25.202063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208306, -0.030412, 0.977591,
		-0.961837, 0.174942, 0.210392,
		-0.177420, -0.984109, 0.007191,
		34.913044, 36.124287, 25.204220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717239, 36.709435, 25.819998>,  <35.037239, 36.813160, 25.199186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717239, 36.709435, 25.819998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.850651, 36.347729, 25.713366>,  <34.930698, 36.130707, 25.649385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.850651, 36.347729, 25.713366>,  <34.717239, 36.709435, 25.819998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850651, 36.347729, 25.713366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102715, -0.246234, 0.963752,
		-0.937129, -0.348818, 0.010756,
		0.333526, -0.904265, -0.266581,
		34.950710, 36.076450, 25.633390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311485, 36.236221, 26.229097>,  <34.717239, 36.709435, 25.819998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311485, 36.236221, 26.229097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.634026, 36.029091, 26.114803>,  <34.827549, 35.904812, 26.046227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.634026, 36.029091, 26.114803>,  <34.311485, 36.236221, 26.229097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634026, 36.029091, 26.114803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095407, -0.362904, 0.926929,
		-0.583686, -0.774695, -0.243225,
		0.806355, -0.517830, -0.285733,
		34.875931, 35.873741, 26.029083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275959, 35.644020, 26.694563>,  <34.311485, 36.236221, 26.229097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275959, 35.644020, 26.694563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.643883, 35.582649, 26.550117>,  <34.864639, 35.545826, 26.463449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.643883, 35.582649, 26.550117>,  <34.275959, 35.644020, 26.694563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643883, 35.582649, 26.550117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248080, -0.485629, 0.838225,
		-0.303974, -0.860596, -0.408626,
		0.919813, -0.153427, -0.361115,
		34.919827, 35.536621, 26.441782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375031, 34.937752, 26.779867>,  <34.275959, 35.644020, 26.694563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375031, 34.937752, 26.779867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.731155, 35.118244, 26.755407>,  <34.944832, 35.226540, 26.740730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.731155, 35.118244, 26.755407>,  <34.375031, 34.937752, 26.779867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731155, 35.118244, 26.755407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363941, -0.624424, 0.691116,
		0.273667, -0.637564, -0.720152,
		0.890311, 0.451229, -0.061151,
		34.998249, 35.253613, 26.737062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820618, 34.449818, 26.914116>,  <34.375031, 34.937752, 26.779867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820618, 34.449818, 26.914116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.032692, 34.782417, 26.980463>,  <35.159935, 34.981976, 27.020271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.032692, 34.782417, 26.980463>,  <34.820618, 34.449818, 26.914116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032692, 34.782417, 26.980463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446183, -0.439960, 0.779331,
		0.720989, -0.339181, -0.604261,
		0.530185, 0.831500, 0.165869,
		35.191746, 35.031868, 27.030224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568367, 34.331444, 26.981764>,  <34.820618, 34.449818, 26.914116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568367, 34.331444, 26.981764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.526176, 34.688038, 27.158003>,  <35.500862, 34.901997, 27.263746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.526176, 34.688038, 27.158003>,  <35.568367, 34.331444, 26.981764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526176, 34.688038, 27.158003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585788, -0.302331, 0.751963,
		0.803571, 0.337410, -0.490334,
		-0.105476, 0.891488, 0.440595,
		35.494534, 34.955482, 27.290182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.566544, 40.586784, 22.898903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.186779, 40.491695, 22.980974>,  <36.958920, 40.434643, 23.030216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.186779, 40.491695, 22.980974>,  <37.566544, 40.586784, 22.898903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186779, 40.491695, 22.980974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246398, 0.158894, -0.956055,
		0.194692, -0.958244, -0.209435,
		-0.949412, -0.237740, 0.205174,
		36.901955, 40.420376, 23.042528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419418, 40.170738, 22.298420>,  <37.566544, 40.586784, 22.898903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419418, 40.170738, 22.298420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.080456, 40.290581, 22.473753>,  <36.877079, 40.362488, 22.578953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.080456, 40.290581, 22.473753>,  <37.419418, 40.170738, 22.298420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080456, 40.290581, 22.473753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400200, 0.182099, -0.898154,
		-0.348915, -0.936522, -0.034408,
		-0.847407, 0.299610, 0.438333,
		36.826233, 40.380463, 22.605253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806686, 39.808594, 21.908865>,  <37.419418, 40.170738, 22.298420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806686, 39.808594, 21.908865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.654594, 40.140163, 22.072968>,  <36.563339, 40.339104, 22.171429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.654594, 40.140163, 22.072968>,  <36.806686, 39.808594, 21.908865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654594, 40.140163, 22.072968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433876, 0.231877, -0.870623,
		-0.816810, -0.509037, 0.271483,
		-0.380229, 0.828924, 0.410259,
		36.540527, 40.388840, 22.196045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080677, 39.811066, 21.739210>,  <36.806686, 39.808594, 21.908865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080677, 39.811066, 21.739210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.153915, 40.186874, 21.854986>,  <36.197857, 40.412361, 21.924452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.153915, 40.186874, 21.854986>,  <36.080677, 39.811066, 21.739210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153915, 40.186874, 21.854986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524070, 0.342376, -0.779826,
		-0.831761, -0.008906, 0.555062,
		0.183095, 0.939521, 0.289443,
		36.208843, 40.468731, 21.941818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430710, 40.255260, 21.663343>,  <36.080677, 39.811066, 21.739210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430710, 40.255260, 21.663343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.735893, 40.513832, 21.661360>,  <35.919003, 40.668976, 21.660170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.735893, 40.513832, 21.661360>,  <35.430710, 40.255260, 21.663343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735893, 40.513832, 21.661360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388906, 0.452851, -0.802295,
		-0.516384, 0.614044, 0.596907,
		0.762954, 0.646433, -0.004960,
		35.964779, 40.707764, 21.659872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269447, 41.052933, 21.628372>,  <35.430710, 40.255260, 21.663343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269447, 41.052933, 21.628372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.637661, 41.029877, 21.473818>,  <35.858589, 41.016045, 21.381084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.637661, 41.029877, 21.473818>,  <35.269447, 41.052933, 21.628372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637661, 41.029877, 21.473818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303450, 0.517411, -0.800128,
		0.246041, 0.853794, 0.458803,
		0.920533, -0.057641, -0.386388,
		35.913822, 41.012585, 21.357901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246445, 41.593811, 21.227638>,  <35.269447, 41.052933, 21.628372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246445, 41.593811, 21.227638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.565224, 41.397751, 21.086430>,  <35.756493, 41.280117, 21.001705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.565224, 41.397751, 21.086430>,  <35.246445, 41.593811, 21.227638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565224, 41.397751, 21.086430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204812, 0.330541, -0.921301,
		0.568261, 0.806535, 0.163037,
		0.796951, -0.490148, -0.353022,
		35.804310, 41.250706, 20.980524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556995, 42.059879, 20.883081>,  <35.246445, 41.593811, 21.227638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556995, 42.059879, 20.883081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674004, 41.705849, 20.738268>,  <35.744209, 41.493431, 20.651381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674004, 41.705849, 20.738268>,  <35.556995, 42.059879, 20.883081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674004, 41.705849, 20.738268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277364, 0.283789, -0.917896,
		0.915152, 0.368915, -0.162476,
		0.292517, -0.885079, -0.362034,
		35.761757, 41.440327, 20.629658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904980, 42.134068, 20.236589>,  <35.556995, 42.059879, 20.883081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904980, 42.134068, 20.236589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811668, 41.745220, 20.226994>,  <35.755680, 41.511913, 20.221235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811668, 41.745220, 20.226994>,  <35.904980, 42.134068, 20.236589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811668, 41.745220, 20.226994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365915, 0.110613, -0.924052,
		0.900937, -0.206784, -0.381514,
		-0.233279, -0.972114, -0.023990,
		35.741684, 41.453587, 20.219797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020767, 41.993088, 19.568966>,  <35.904980, 42.134068, 20.236589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020767, 41.993088, 19.568966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.809334, 41.672871, 19.681915>,  <35.682472, 41.480740, 19.749685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.809334, 41.672871, 19.681915>,  <36.020767, 41.993088, 19.568966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809334, 41.672871, 19.681915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517944, 0.040600, -0.854450,
		0.672558, -0.597902, -0.436096,
		-0.528583, -0.800540, 0.282374,
		35.650761, 41.432709, 19.766628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989300, 41.520084, 19.011101>,  <36.020767, 41.993088, 19.568966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989300, 41.520084, 19.011101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.670132, 41.421288, 19.231031>,  <35.478630, 41.362007, 19.362989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.670132, 41.421288, 19.231031>,  <35.989300, 41.520084, 19.011101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670132, 41.421288, 19.231031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577798, 0.053647, -0.814415,
		0.171663, -0.967530, -0.185522,
		-0.797923, -0.246999, 0.549828,
		35.430756, 41.347187, 19.395981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685604, 41.052677, 18.544550>,  <35.989300, 41.520084, 19.011101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685604, 41.052677, 18.544550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.385632, 41.122089, 18.799891>,  <35.205650, 41.163738, 18.953094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.385632, 41.122089, 18.799891>,  <35.685604, 41.052677, 18.544550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385632, 41.122089, 18.799891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621353, 0.146345, -0.769742,
		-0.226996, -0.973894, -0.001922,
		-0.749929, 0.173534, 0.638352,
		35.160652, 41.174149, 18.991396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058987, 40.577934, 18.425055>,  <35.685604, 41.052677, 18.544550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058987, 40.577934, 18.425055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.958080, 40.937508, 18.568323>,  <34.897537, 41.153252, 18.654285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.958080, 40.937508, 18.568323>,  <35.058987, 40.577934, 18.425055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958080, 40.937508, 18.568323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699360, 0.086444, -0.709523,
		-0.668774, -0.429480, 0.606868,
		-0.252265, 0.898930, 0.358172,
		34.882401, 41.207188, 18.675776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590038, 40.147045, 17.902527>,  <35.058987, 40.577934, 18.425055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590038, 40.147045, 17.902527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.203785, 40.044456, 17.885664>,  <33.972034, 39.982903, 17.875546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.203785, 40.044456, 17.885664>,  <34.590038, 40.147045, 17.902527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203785, 40.044456, 17.885664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150558, -0.684169, 0.713614,
		-0.211864, 0.682742, 0.699269,
		-0.965632, -0.256470, -0.042158,
		33.914097, 39.967514, 17.873016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.359032, 40.048534, 18.530613>,  <34.590038, 40.147045, 17.902527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.359032, 40.048534, 18.530613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096340, 39.817520, 18.336639>,  <33.938725, 39.678913, 18.220255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096340, 39.817520, 18.336639>,  <34.359032, 40.048534, 18.530613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096340, 39.817520, 18.336639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007236, -0.638185, 0.769849,
		-0.754094, 0.509090, 0.414934,
		-0.656727, -0.577536, -0.484936,
		33.899323, 39.644260, 18.191158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710758, 39.877632, 18.939108>,  <34.359032, 40.048534, 18.530613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710758, 39.877632, 18.939108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.752270, 39.586845, 18.667593>,  <33.777176, 39.412373, 18.504684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.752270, 39.586845, 18.667593>,  <33.710758, 39.877632, 18.939108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752270, 39.586845, 18.667593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005880, -0.682907, 0.730482,
		-0.994583, -0.071819, -0.075148,
		0.103781, -0.726966, -0.678785,
		33.783405, 39.368755, 18.463957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162243, 39.390923, 19.076441>,  <33.710758, 39.877632, 18.939108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162243, 39.390923, 19.076441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.459087, 39.202045, 18.886154>,  <33.637196, 39.088718, 18.771982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.459087, 39.202045, 18.886154>,  <33.162243, 39.390923, 19.076441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459087, 39.202045, 18.886154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068926, -0.759731, 0.646574,
		-0.666724, -0.447040, -0.596351,
		0.742111, -0.472190, -0.475718,
		33.681721, 39.060387, 18.743439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889812, 38.740482, 19.015354>,  <33.162243, 39.390923, 19.076441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889812, 38.740482, 19.015354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.284004, 38.701305, 18.959869>,  <33.520519, 38.677799, 18.926579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.284004, 38.701305, 18.959869>,  <32.889812, 38.740482, 19.015354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284004, 38.701305, 18.959869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007443, -0.841011, 0.540966,
		-0.169646, -0.532077, -0.829526,
		0.985477, -0.097947, -0.138714,
		33.579647, 38.671921, 18.918255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990219, 38.055954, 18.704977>,  <32.889812, 38.740482, 19.015354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990219, 38.055954, 18.704977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.319229, 38.168789, 18.902512>,  <33.516636, 38.236488, 19.021032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.319229, 38.168789, 18.902512>,  <32.990219, 38.055954, 18.704977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319229, 38.168789, 18.902512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099735, -0.783323, 0.613562,
		0.559911, -0.553925, -0.616171,
		0.822529, 0.282087, 0.493836,
		33.565987, 38.253414, 19.050663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214348, 37.377441, 18.991264>,  <32.990219, 38.055954, 18.704977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214348, 37.377441, 18.991264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.435440, 37.650131, 19.182989>,  <33.568096, 37.813744, 19.298025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.435440, 37.650131, 19.182989>,  <33.214348, 37.377441, 18.991264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435440, 37.650131, 19.182989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130554, -0.638892, 0.758138,
		0.823069, -0.356471, -0.442138,
		0.552733, 0.681722, 0.479313,
		33.601261, 37.854649, 19.326782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909683, 37.014133, 19.263332>,  <33.214348, 37.377441, 18.991264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909683, 37.014133, 19.263332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.862335, 37.335865, 19.496244>,  <33.833927, 37.528904, 19.635992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.862335, 37.335865, 19.496244>,  <33.909683, 37.014133, 19.263332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862335, 37.335865, 19.496244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047573, -0.581135, 0.812416,
		0.991830, 0.123864, 0.030523,
		-0.118367, 0.804326, 0.582279,
		33.826824, 37.577164, 19.670929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244045, 36.841331, 19.762150>,  <33.909683, 37.014133, 19.263332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244045, 36.841331, 19.762150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029736, 37.140072, 19.919710>,  <33.901150, 37.319317, 20.014246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029736, 37.140072, 19.919710>,  <34.244045, 36.841331, 19.762150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029736, 37.140072, 19.919710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102297, -0.405659, 0.908282,
		0.838142, 0.526928, 0.140940,
		-0.535773, 0.746852, 0.393903,
		33.869003, 37.364128, 20.037882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567173, 37.133160, 20.280092>,  <34.244045, 36.841331, 19.762150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567173, 37.133160, 20.280092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208954, 37.281975, 20.377731>,  <33.994022, 37.371265, 20.436316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.208954, 37.281975, 20.377731>,  <34.567173, 37.133160, 20.280092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208954, 37.281975, 20.377731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188094, -0.180640, 0.965396,
		0.403257, 0.910471, 0.091794,
		-0.895547, 0.372037, 0.244098,
		33.940289, 37.393585, 20.450960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677673, 37.413574, 20.947611>,  <34.567173, 37.133160, 20.280092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677673, 37.413574, 20.947611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282887, 37.352245, 20.928089>,  <34.046013, 37.315449, 20.916376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282887, 37.352245, 20.928089>,  <34.677673, 37.413574, 20.947611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282887, 37.352245, 20.928089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001565, -0.294165, 0.955753,
		-0.160894, 0.943377, 0.290092,
		-0.986970, -0.153321, -0.048806,
		33.986794, 37.306248, 20.913448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438477, 37.632885, 21.588511>,  <34.677673, 37.413574, 20.947611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438477, 37.632885, 21.588511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.138767, 37.409164, 21.446650>,  <33.958942, 37.274933, 21.361532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.138767, 37.409164, 21.446650>,  <34.438477, 37.632885, 21.588511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138767, 37.409164, 21.446650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236783, -0.273876, 0.932162,
		-0.618490, 0.782416, 0.072774,
		-0.749269, -0.559301, -0.354652,
		33.913986, 37.241375, 21.340254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934242, 37.798431, 22.041637>,  <34.438477, 37.632885, 21.588511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934242, 37.798431, 22.041637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.856201, 37.448845, 21.863600>,  <33.809376, 37.239090, 21.756777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.856201, 37.448845, 21.863600>,  <33.934242, 37.798431, 22.041637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856201, 37.448845, 21.863600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082549, -0.437574, 0.895385,
		-0.977303, 0.211433, 0.013225,
		-0.195101, -0.873971, -0.445096,
		33.797672, 37.186653, 21.730070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287552, 37.504021, 22.264828>,  <33.934242, 37.798431, 22.041637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287552, 37.504021, 22.264828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.471298, 37.177876, 22.123877>,  <33.581547, 36.982189, 22.039307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.471298, 37.177876, 22.123877>,  <33.287552, 37.504021, 22.264828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471298, 37.177876, 22.123877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145213, -0.322437, 0.935386,
		-0.876296, -0.480856, -0.029716,
		0.459368, -0.815360, -0.352377,
		33.609108, 36.933266, 22.018164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931347, 36.900200, 22.544970>,  <33.287552, 37.504021, 22.264828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931347, 36.900200, 22.544970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.308266, 36.797409, 22.459148>,  <33.534416, 36.735737, 22.407656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.308266, 36.797409, 22.459148>,  <32.931347, 36.900200, 22.544970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308266, 36.797409, 22.459148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138916, -0.282954, 0.949020,
		-0.304594, -0.924065, -0.230928,
		0.942298, -0.256986, -0.214553,
		33.590958, 36.720318, 22.394783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349209, 36.445347, 22.172359>,  <32.931347, 36.900200, 22.544970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349209, 36.445347, 22.172359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.060539, 36.171162, 22.210997>,  <31.887339, 36.006649, 22.234179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.060539, 36.171162, 22.210997>,  <32.349209, 36.445347, 22.172359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060539, 36.171162, 22.210997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424528, 0.328032, -0.843902,
		0.546778, -0.650027, -0.527730,
		-0.721671, -0.685463, 0.096594,
		31.844038, 35.965523, 22.239975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323673, 36.039097, 21.623415>,  <32.349209, 36.445347, 22.172359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323673, 36.039097, 21.623415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.955956, 36.012268, 21.778542>,  <31.735325, 35.996170, 21.871618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.955956, 36.012268, 21.778542>,  <32.323673, 36.039097, 21.623415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955956, 36.012268, 21.778542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381070, 0.398099, -0.834448,
		-0.098423, -0.914888, -0.391527,
		-0.919292, -0.067070, 0.387819,
		31.680168, 35.992146, 21.894888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904446, 36.126717, 21.025307>,  <32.323673, 36.039097, 21.623415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904446, 36.126717, 21.025307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.648825, 36.191490, 21.326077>,  <31.495453, 36.230354, 21.506538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.648825, 36.191490, 21.326077>,  <31.904446, 36.126717, 21.025307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648825, 36.191490, 21.326077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560122, 0.572009, -0.599224,
		-0.527140, -0.804105, -0.274843,
		-0.639052, 0.161930, 0.751925,
		31.457109, 36.240070, 21.551655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215517, 36.008995, 20.775145>,  <31.904446, 36.126717, 21.025307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215517, 36.008995, 20.775145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.213257, 36.255478, 21.090170>,  <31.211901, 36.403366, 21.279184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.213257, 36.255478, 21.090170>,  <31.215517, 36.008995, 20.775145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213257, 36.255478, 21.090170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383718, 0.725949, -0.570753,
		-0.923433, -0.305428, 0.232347,
		-0.005652, 0.616207, 0.787564,
		31.211561, 36.440342, 21.326439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572353, 36.238415, 20.769352>,  <31.215517, 36.008995, 20.775145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572353, 36.238415, 20.769352> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.770443, 36.513138, 20.982162>,  <30.889297, 36.677971, 21.109848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.770443, 36.513138, 20.982162>,  <30.572353, 36.238415, 20.769352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770443, 36.513138, 20.982162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525507, 0.724471, -0.446077,
		-0.691805, -0.058674, 0.719697,
		0.495226, 0.686804, 0.532026,
		30.919010, 36.719177, 21.141769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018143, 36.720642, 20.892544>,  <30.572353, 36.238415, 20.769352>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018143, 36.720642, 20.892544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.367451, 36.904179, 20.958094>,  <30.577036, 37.014301, 20.997423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.367451, 36.904179, 20.958094>,  <30.018143, 36.720642, 20.892544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367451, 36.904179, 20.958094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317159, 0.790658, -0.523708,
		-0.369872, 0.405365, 0.835987,
		0.873272, 0.458846, 0.163877,
		30.629433, 37.041832, 21.007257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850430, 37.322281, 21.005104>,  <30.018143, 36.720642, 20.892544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850430, 37.322281, 21.005104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.222031, 37.353374, 20.860380>,  <30.444992, 37.372032, 20.773546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.222031, 37.353374, 20.860380>,  <29.850430, 37.322281, 21.005104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222031, 37.353374, 20.860380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261296, 0.830119, -0.492572,
		0.262057, 0.552141, 0.791496,
		0.929005, 0.077733, -0.361811,
		30.500732, 37.376694, 20.751837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995237, 37.935802, 21.367399>,  <29.850430, 37.322281, 21.005104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995237, 37.935802, 21.367399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.886980, 38.241283, 21.601837>,  <29.822025, 38.424572, 21.742500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.886980, 38.241283, 21.601837>,  <29.995237, 37.935802, 21.367399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886980, 38.241283, 21.601837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052707, -0.596146, 0.801144,
		0.961236, 0.247715, 0.121089,
		-0.270642, 0.763706, 0.586093,
		29.805788, 38.470394, 21.777664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472528, 37.945923, 21.859488>,  <29.995237, 37.935802, 21.367399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472528, 37.945923, 21.859488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.145687, 38.114571, 22.016754>,  <29.949583, 38.215759, 22.111115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.145687, 38.114571, 22.016754>,  <30.472528, 37.945923, 21.859488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145687, 38.114571, 22.016754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038288, -0.640806, 0.766748,
		0.575219, 0.641565, 0.507462,
		-0.817103, 0.421619, 0.393168,
		29.900557, 38.241055, 22.134705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612473, 38.031925, 22.489292>,  <30.472528, 37.945923, 21.859488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612473, 38.031925, 22.489292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.213366, 38.046711, 22.511553>,  <29.973902, 38.055584, 22.524908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.213366, 38.046711, 22.511553>,  <30.612473, 38.031925, 22.489292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213366, 38.046711, 22.511553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021128, -0.615634, 0.787749,
		0.063380, 0.787165, 0.613478,
		-0.997766, 0.036966, 0.055650,
		29.914036, 38.057800, 22.528248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507450, 38.260132, 23.199554>,  <30.612473, 38.031925, 22.489292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507450, 38.260132, 23.199554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153185, 38.115208, 23.083397>,  <29.940626, 38.028252, 23.013702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153185, 38.115208, 23.083397>,  <30.507450, 38.260132, 23.199554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153185, 38.115208, 23.083397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122240, -0.421408, 0.898595,
		-0.447948, 0.831350, 0.328937,
		-0.885664, -0.362314, -0.290393,
		29.887486, 38.006512, 22.996279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185148, 38.416569, 23.675636>,  <30.507450, 38.260132, 23.199554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185148, 38.416569, 23.675636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.970617, 38.124050, 23.507086>,  <29.841898, 37.948540, 23.405954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.970617, 38.124050, 23.507086>,  <30.185148, 38.416569, 23.675636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.970617, 38.124050, 23.507086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004542, -0.496749, 0.867882,
		-0.843997, 0.467383, 0.263099,
		-0.536328, -0.731296, -0.421378,
		29.809719, 37.904663, 23.380672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623501, 38.320004, 24.135399>,  <30.185148, 38.416569, 23.675636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623501, 38.320004, 24.135399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.631289, 37.986504, 23.914680>,  <29.635962, 37.786404, 23.782249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.631289, 37.986504, 23.914680>,  <29.623501, 38.320004, 24.135399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631289, 37.986504, 23.914680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087405, -0.551208, 0.829778,
		-0.995983, 0.032075, -0.083606,
		0.019469, -0.833751, -0.551797,
		29.637129, 37.736378, 23.749142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895891, 38.006229, 24.334831>,  <29.623501, 38.320004, 24.135399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895891, 38.006229, 24.334831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.167316, 37.747589, 24.195425>,  <29.330172, 37.592407, 24.111780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.167316, 37.747589, 24.195425>,  <28.895891, 38.006229, 24.334831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167316, 37.747589, 24.195425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043586, -0.509075, 0.859618,
		-0.733249, -0.568113, -0.373622,
		0.678562, -0.646598, -0.348517,
		29.370886, 37.553608, 24.090870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.119053, 41.999435, 20.068045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.514091, 42.054604, 20.038013>,  <32.751114, 42.087704, 20.019995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.514091, 42.054604, 20.038013>,  <32.119053, 41.999435, 20.068045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514091, 42.054604, 20.038013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120620, -0.360137, 0.925069,
		0.100546, -0.922648, -0.372305,
		0.987594, 0.137920, -0.075079,
		32.810371, 42.095978, 20.015490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418514, 41.394356, 20.379889>,  <32.119053, 41.999435, 20.068045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418514, 41.394356, 20.379889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.695461, 41.682194, 20.401081>,  <32.861629, 41.854897, 20.413795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.695461, 41.682194, 20.401081>,  <32.418514, 41.394356, 20.379889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695461, 41.682194, 20.401081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196339, -0.258547, 0.945835,
		0.694319, -0.644463, -0.320295,
		0.692367, 0.719598, 0.052981,
		32.903172, 41.898071, 20.416975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032059, 41.059372, 20.662535>,  <32.418514, 41.394356, 20.379889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032059, 41.059372, 20.662535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.067238, 41.453850, 20.718655>,  <33.088345, 41.690536, 20.752327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.067238, 41.453850, 20.718655>,  <33.032059, 41.059372, 20.662535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067238, 41.453850, 20.718655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320048, -0.161355, 0.933560,
		0.943310, -0.037202, -0.329821,
		0.087949, 0.986195, 0.140302,
		33.093624, 41.749710, 20.760746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736790, 41.173672, 20.961430>,  <33.032059, 41.059372, 20.662535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736790, 41.173672, 20.961430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.506584, 41.482727, 21.068619>,  <33.368462, 41.668159, 21.132933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.506584, 41.482727, 21.068619>,  <33.736790, 41.173672, 20.961430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506584, 41.482727, 21.068619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331221, -0.079376, 0.940209,
		0.747713, 0.629863, -0.210232,
		-0.575515, 0.772640, 0.267974,
		33.333931, 41.714520, 21.149012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025204, 41.377399, 21.399002>,  <33.736790, 41.173672, 20.961430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025204, 41.377399, 21.399002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.698505, 41.592007, 21.483923>,  <33.502487, 41.720772, 21.534876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.698505, 41.592007, 21.483923>,  <34.025204, 41.377399, 21.399002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698505, 41.592007, 21.483923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271118, 0.032052, 0.962012,
		0.509329, 0.843282, -0.171638,
		-0.816749, 0.536515, 0.212304,
		33.453480, 41.752960, 21.547615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216385, 41.911900, 21.844688>,  <34.025204, 41.377399, 21.399002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216385, 41.911900, 21.844688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.824425, 41.862965, 21.907724>,  <33.589249, 41.833603, 21.945545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.824425, 41.862965, 21.907724>,  <34.216385, 41.911900, 21.844688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824425, 41.862965, 21.907724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171169, -0.109779, 0.979107,
		-0.102485, 0.986398, 0.128513,
		-0.979897, -0.122341, 0.157590,
		33.530457, 41.826263, 21.955002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038601, 42.445900, 22.390160>,  <34.216385, 41.911900, 21.844688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038601, 42.445900, 22.390160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.731483, 42.189907, 22.402243>,  <33.547215, 42.036312, 22.409492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.731483, 42.189907, 22.402243>,  <34.038601, 42.445900, 22.390160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731483, 42.189907, 22.402243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110932, -0.086357, 0.990069,
		-0.631021, 0.763519, 0.137299,
		-0.767793, -0.639986, 0.030206,
		33.501144, 41.997910, 22.411304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678719, 42.698364, 23.037519>,  <34.038601, 42.445900, 22.390160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678719, 42.698364, 23.037519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.504253, 42.345959, 22.964228>,  <33.399574, 42.134514, 22.920254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.504253, 42.345959, 22.964228>,  <33.678719, 42.698364, 23.037519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504253, 42.345959, 22.964228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120031, -0.258758, 0.958455,
		-0.891825, 0.396053, 0.218611,
		-0.436166, -0.881014, -0.183228,
		33.373405, 42.081654, 22.909260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136833, 42.576206, 23.554588>,  <33.678719, 42.698364, 23.037519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136833, 42.576206, 23.554588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.246872, 42.224583, 23.398861>,  <33.312897, 42.013607, 23.305424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.246872, 42.224583, 23.398861>,  <33.136833, 42.576206, 23.554588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246872, 42.224583, 23.398861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047634, -0.391984, 0.918738,
		-0.960235, -0.271289, -0.065961,
		0.275099, -0.879063, -0.389319,
		33.329403, 41.960865, 23.282064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649113, 42.114471, 23.902151>,  <33.136833, 42.576206, 23.554588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649113, 42.114471, 23.902151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.937798, 41.875473, 23.762362>,  <33.111008, 41.732075, 23.678488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.937798, 41.875473, 23.762362>,  <32.649113, 42.114471, 23.902151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937798, 41.875473, 23.762362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004823, -0.509211, 0.860628,
		-0.692175, -0.619441, -0.370386,
		0.721713, -0.597492, -0.349476,
		33.154312, 41.696224, 23.657518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410225, 41.423519, 23.977499>,  <32.649113, 42.114471, 23.902151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410225, 41.423519, 23.977499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.807175, 41.385357, 23.946259>,  <33.045345, 41.362457, 23.927515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.807175, 41.385357, 23.946259>,  <32.410225, 41.423519, 23.977499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807175, 41.385357, 23.946259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007404, -0.678398, 0.734657,
		-0.123074, -0.728474, -0.673928,
		0.992370, -0.095407, -0.078099,
		33.104885, 41.356735, 23.922829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605244, 40.659588, 23.893145>,  <32.410225, 41.423519, 23.977499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605244, 40.659588, 23.893145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.914314, 40.862576, 24.045692>,  <33.099758, 40.984367, 24.137220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.914314, 40.862576, 24.045692>,  <32.605244, 40.659588, 23.893145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914314, 40.862576, 24.045692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034039, -0.633031, 0.773378,
		0.633885, -0.584590, -0.506403,
		0.772678, 0.507470, 0.381370,
		33.146118, 41.014816, 24.160103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137264, 40.121941, 24.193998>,  <32.605244, 40.659588, 23.893145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137264, 40.121941, 24.193998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.827627, 40.169411, 24.442736>,  <31.641844, 40.197891, 24.591978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.827627, 40.169411, 24.442736>,  <32.137264, 40.121941, 24.193998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827627, 40.169411, 24.442736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473585, 0.543289, -0.693220,
		-0.420111, -0.831116, -0.364354,
		-0.774096, 0.118677, 0.621845,
		31.595398, 40.205013, 24.629290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484539, 39.898922, 23.779585>,  <32.137264, 40.121941, 24.193998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484539, 39.898922, 23.779585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.362621, 40.131660, 24.081194>,  <31.289471, 40.271305, 24.262159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.362621, 40.131660, 24.081194>,  <31.484539, 39.898922, 23.779585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362621, 40.131660, 24.081194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668992, 0.432710, -0.604327,
		-0.677900, -0.688633, 0.257363,
		-0.304796, 0.581848, 0.754024,
		31.271183, 40.306213, 24.307402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793804, 39.901352, 23.739010>,  <31.484539, 39.898922, 23.779585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793804, 39.901352, 23.739010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.877031, 40.226700, 23.956318>,  <30.926968, 40.421909, 24.086704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.877031, 40.226700, 23.956318>,  <30.793804, 39.901352, 23.739010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877031, 40.226700, 23.956318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582489, 0.549236, -0.599205,
		-0.785757, -0.191775, 0.588055,
		0.208068, 0.813365, 0.543272,
		30.939451, 40.470711, 24.119299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123470, 40.166039, 24.073441>,  <30.793804, 39.901352, 23.739010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123470, 40.166039, 24.073441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.379593, 40.472115, 24.046631>,  <30.533266, 40.655758, 24.030544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.379593, 40.472115, 24.046631>,  <30.123470, 40.166039, 24.073441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379593, 40.472115, 24.046631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696531, 0.541634, -0.470614,
		-0.323806, 0.348023, 0.879790,
		0.640308, 0.765188, -0.067025,
		30.571686, 40.701672, 24.026524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648455, 40.776062, 24.164633>,  <30.123470, 40.166039, 24.073441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648455, 40.776062, 24.164633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.998188, 40.914948, 24.028994>,  <30.208029, 40.998280, 23.947611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.998188, 40.914948, 24.028994>,  <29.648455, 40.776062, 24.164633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998188, 40.914948, 24.028994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483904, 0.570219, -0.663842,
		-0.037134, 0.744509, 0.666578,
		0.874333, 0.347211, -0.339096,
		30.260489, 41.019112, 23.927265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476328, 41.465546, 24.059248>,  <29.648455, 40.776062, 24.164633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476328, 41.465546, 24.059248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.808378, 41.417439, 23.841467>,  <30.007608, 41.388573, 23.710798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.808378, 41.417439, 23.841467>,  <29.476328, 41.465546, 24.059248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808378, 41.417439, 23.841467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341026, 0.663013, -0.666420,
		0.441130, 0.738883, 0.509368,
		0.830124, -0.120270, -0.544453,
		30.057415, 41.381359, 23.678131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671194, 42.118610, 23.886724>,  <29.476328, 41.465546, 24.059248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671194, 42.118610, 23.886724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.851282, 41.876873, 23.623798>,  <29.959335, 41.731831, 23.466042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.851282, 41.876873, 23.623798>,  <29.671194, 42.118610, 23.886724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851282, 41.876873, 23.623798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339384, 0.565078, -0.752000,
		0.825904, 0.561650, 0.049305,
		0.450222, -0.604347, -0.657316,
		29.986349, 41.695568, 23.426603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027193, 42.467331, 23.459030>,  <29.671194, 42.118610, 23.886724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027193, 42.467331, 23.459030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.936686, 42.142517, 23.243847>,  <29.882381, 41.947628, 23.114737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.936686, 42.142517, 23.243847>,  <30.027193, 42.467331, 23.459030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936686, 42.142517, 23.243847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378052, 0.582198, -0.719807,
		0.897709, 0.040508, -0.438724,
		-0.226266, -0.812037, -0.537958,
		29.868805, 41.898907, 23.082460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123535, 42.761730, 22.837931>,  <30.027193, 42.467331, 23.459030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123535, 42.761730, 22.837931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.956371, 42.409409, 22.748898>,  <29.856073, 42.198017, 22.695478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.956371, 42.409409, 22.748898>,  <30.123535, 42.761730, 22.837931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956371, 42.409409, 22.748898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382907, 0.392950, -0.836046,
		0.823853, -0.264164, -0.501482,
		-0.417911, -0.880800, -0.222582,
		29.830997, 42.145168, 22.682123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440784, 42.600410, 22.275370>,  <30.123535, 42.761730, 22.837931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440784, 42.600410, 22.275370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.084396, 42.421074, 22.304110>,  <29.870564, 42.313473, 22.321354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.084396, 42.421074, 22.304110>,  <30.440784, 42.600410, 22.275370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084396, 42.421074, 22.304110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168100, 0.178705, -0.969437,
		0.421798, -0.875817, -0.234586,
		-0.890971, -0.448340, 0.071848,
		29.817104, 42.286572, 22.325665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430935, 42.223484, 21.670755>,  <30.440784, 42.600410, 22.275370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430935, 42.223484, 21.670755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.050846, 42.241093, 21.794132>,  <29.822792, 42.251659, 21.868158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.050846, 42.241093, 21.794132>,  <30.430935, 42.223484, 21.670755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050846, 42.241093, 21.794132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290861, 0.229555, -0.928819,
		-0.111695, -0.972300, -0.205323,
		-0.950223, 0.044024, 0.308444,
		29.765779, 42.254299, 21.886665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048315, 41.949738, 21.179306>,  <30.430935, 42.223484, 21.670755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048315, 41.949738, 21.179306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.797880, 42.194443, 21.372702>,  <29.647619, 42.341267, 21.488739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.797880, 42.194443, 21.372702>,  <30.048315, 41.949738, 21.179306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797880, 42.194443, 21.372702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267913, 0.413538, -0.870178,
		-0.732282, -0.674341, -0.095012,
		-0.626088, 0.611760, 0.483491,
		29.610054, 42.377972, 21.517750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732712, 42.046753, 20.765392>,  <30.048315, 41.949738, 21.179306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732712, 42.046753, 20.765392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.103500, 42.066944, 20.616707>,  <31.325974, 42.079060, 20.527494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.103500, 42.066944, 20.616707>,  <30.732712, 42.046753, 20.765392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103500, 42.066944, 20.616707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371742, 0.256435, -0.892216,
		0.050279, 0.965242, 0.256474,
		0.926973, 0.050482, -0.371715,
		31.381592, 42.082088, 20.505192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408163, 41.445492, 20.254787>,  <30.732712, 42.046753, 20.765392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408163, 41.445492, 20.254787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.015903, 41.415310, 20.327049>,  <29.780548, 41.397202, 20.370405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.015903, 41.415310, 20.327049>,  <30.408163, 41.445492, 20.254787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015903, 41.415310, 20.327049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159215, -0.844348, 0.511593,
		0.113931, 0.530456, 0.840022,
		-0.980648, -0.075457, 0.180653,
		29.721708, 41.392673, 20.381245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329651, 41.334045, 20.893988>,  <30.408163, 41.445492, 20.254787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329651, 41.334045, 20.893988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.986452, 41.169865, 20.770460>,  <29.780533, 41.071358, 20.696344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.986452, 41.169865, 20.770460>,  <30.329651, 41.334045, 20.893988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986452, 41.169865, 20.770460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189104, -0.811406, 0.553046,
		-0.477575, 0.416113, 0.773803,
		-0.857999, -0.410450, -0.308819,
		29.729052, 41.046730, 20.677814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067366, 41.011677, 21.446962>,  <30.329651, 41.334045, 20.893988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067366, 41.011677, 21.446962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.838257, 40.842285, 21.166222>,  <29.700790, 40.740650, 20.997776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.838257, 40.842285, 21.166222>,  <30.067366, 41.011677, 21.446962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838257, 40.842285, 21.166222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022367, -0.863973, 0.503040,
		-0.819408, 0.272430, 0.504333,
		-0.572774, -0.423476, -0.701854,
		29.666424, 40.715240, 20.955666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466393, 40.642239, 21.752085>,  <30.067366, 41.011677, 21.446962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466393, 40.642239, 21.752085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.489433, 40.477711, 21.388216>,  <29.503258, 40.378994, 21.169895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.489433, 40.477711, 21.388216>,  <29.466393, 40.642239, 21.752085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489433, 40.477711, 21.388216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041277, -0.911386, 0.409479,
		-0.997486, 0.013962, -0.069475,
		0.057601, -0.411317, -0.909671,
		29.506714, 40.354317, 21.115314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857445, 40.134552, 21.736774>,  <29.466393, 40.642239, 21.752085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857445, 40.134552, 21.736774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124718, 40.037395, 21.455481>,  <29.285082, 39.979103, 21.286705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124718, 40.037395, 21.455481>,  <28.857445, 40.134552, 21.736774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124718, 40.037395, 21.455481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062289, -0.923626, 0.378199,
		-0.741385, -0.296509, -0.602022,
		0.668182, -0.242892, -0.703232,
		29.325172, 39.964527, 21.244511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724171, 39.528740, 21.398022>,  <28.857445, 40.134552, 21.736774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724171, 39.528740, 21.398022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.114426, 39.549282, 21.312706>,  <29.348579, 39.561607, 21.261517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.114426, 39.549282, 21.312706>,  <28.724171, 39.528740, 21.398022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114426, 39.549282, 21.312706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109175, -0.956936, 0.268988,
		-0.190288, -0.285720, -0.939231,
		0.975639, 0.051355, -0.213287,
		29.407118, 39.564690, 21.248720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847597, 38.953110, 21.070475>,  <28.724171, 39.528740, 21.398022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847597, 38.953110, 21.070475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207850, 39.073318, 21.196047>,  <29.424002, 39.145443, 21.271391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207850, 39.073318, 21.196047>,  <28.847597, 38.953110, 21.070475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207850, 39.073318, 21.196047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146346, -0.889905, 0.432033,
		0.409202, -0.343160, -0.845456,
		0.900631, 0.300518, 0.313931,
		29.478039, 39.163475, 21.290226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348177, 38.326469, 20.978657>,  <28.847597, 38.953110, 21.070475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348177, 38.326469, 20.978657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509377, 38.582790, 21.240025>,  <29.606096, 38.736584, 21.396845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509377, 38.582790, 21.240025>,  <29.348177, 38.326469, 20.978657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509377, 38.582790, 21.240025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048615, -0.727945, 0.683909,
		0.913908, -0.243849, -0.324515,
		0.403000, 0.640807, 0.653420,
		29.630276, 38.775032, 21.436050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054773, 38.319695, 20.673550>,  <29.348177, 38.326469, 20.978657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054773, 38.319695, 20.673550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.356316, 38.079979, 20.565805>,  <30.537241, 37.936150, 20.501160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.356316, 38.079979, 20.565805>,  <30.054773, 38.319695, 20.673550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356316, 38.079979, 20.565805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230957, 0.625496, -0.745261,
		0.615110, 0.499609, 0.609943,
		0.753856, -0.599288, -0.269361,
		30.582472, 37.900192, 20.484997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632626, 38.774841, 20.524361>,  <30.054773, 38.319695, 20.673550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632626, 38.774841, 20.524361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.747831, 38.444981, 20.329628>,  <30.816954, 38.247066, 20.212790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.747831, 38.444981, 20.329628>,  <30.632626, 38.774841, 20.524361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747831, 38.444981, 20.329628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455222, 0.565159, -0.688018,
		0.842509, -0.023458, 0.538171,
		0.288013, -0.824649, -0.486830,
		30.834234, 38.197586, 20.183578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365892, 38.725761, 20.294676>,  <30.632626, 38.774841, 20.524361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365892, 38.725761, 20.294676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.202101, 38.455776, 20.049156>,  <31.103827, 38.293785, 19.901844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.202101, 38.455776, 20.049156>,  <31.365892, 38.725761, 20.294676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202101, 38.455776, 20.049156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426254, 0.453297, -0.782834,
		0.806620, -0.582187, 0.102092,
		-0.409478, -0.674967, -0.613798,
		31.079258, 38.253284, 19.865017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927809, 38.484898, 19.841179>,  <31.365892, 38.725761, 20.294676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927809, 38.484898, 19.841179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.576597, 38.411495, 19.664366>,  <31.365871, 38.367455, 19.558279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.576597, 38.411495, 19.664366>,  <31.927809, 38.484898, 19.841179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576597, 38.411495, 19.664366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368423, 0.330384, -0.868971,
		0.305491, -0.925838, -0.222484,
		-0.878032, -0.183495, -0.442029,
		31.313189, 38.356441, 19.531755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098778, 38.356224, 19.154039>,  <31.927809, 38.484898, 19.841179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098778, 38.356224, 19.154039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.707262, 38.436165, 19.136028>,  <31.472353, 38.484131, 19.125221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.707262, 38.436165, 19.136028>,  <32.098778, 38.356224, 19.154039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707262, 38.436165, 19.136028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111763, 0.336709, -0.934952,
		-0.171690, -0.920156, -0.351904,
		-0.978791, 0.199852, -0.045030,
		31.413624, 38.496120, 19.122519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870544, 38.018867, 18.616003>,  <32.098778, 38.356224, 19.154039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870544, 38.018867, 18.616003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.609055, 38.317112, 18.667713>,  <31.452162, 38.496059, 18.698740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.609055, 38.317112, 18.667713>,  <31.870544, 38.018867, 18.616003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609055, 38.317112, 18.667713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226139, 0.355513, -0.906902,
		-0.722154, -0.563629, -0.401019,
		-0.653724, 0.745609, 0.129277,
		31.412937, 38.540794, 18.706495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754911, 38.134781, 17.993414>,  <31.870544, 38.018867, 18.616003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754911, 38.134781, 17.993414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.593487, 38.458572, 18.164007>,  <31.496632, 38.652847, 18.266363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.593487, 38.458572, 18.164007>,  <31.754911, 38.134781, 17.993414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593487, 38.458572, 18.164007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074625, 0.493692, -0.866429,
		-0.911904, -0.317831, -0.259642,
		-0.403561, 0.809476, 0.426482,
		31.472418, 38.701416, 18.291952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264326, 38.353138, 17.517012>,  <31.754911, 38.134781, 17.993414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264326, 38.353138, 17.517012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.343227, 38.672115, 17.745108>,  <31.390568, 38.863503, 17.881966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.343227, 38.672115, 17.745108>,  <31.264326, 38.353138, 17.517012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343227, 38.672115, 17.745108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073130, 0.568076, -0.819720,
		-0.977621, 0.203394, 0.053738,
		0.197253, 0.797446, 0.570238,
		31.402403, 38.911350, 17.916180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.944962, 38.878616, 17.225533>,  <31.264326, 38.353138, 17.517012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.944962, 38.878616, 17.225533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.264214, 39.015362, 17.423973>,  <31.455765, 39.097408, 17.543037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.264214, 39.015362, 17.423973>,  <30.944962, 38.878616, 17.225533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264214, 39.015362, 17.423973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285864, 0.509957, -0.811311,
		-0.530347, 0.789351, 0.309286,
		0.798131, 0.341862, 0.496101,
		31.503653, 39.117920, 17.572803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.261562, 32.582520, 32.115143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.550446, 32.772209, 31.913736>,  <34.723774, 32.886024, 31.792892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.550446, 32.772209, 31.913736>,  <34.261562, 32.582520, 32.115143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550446, 32.772209, 31.913736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622119, 0.127198, -0.772521,
		-0.302302, 0.871167, 0.386887,
		0.722206, 0.474224, -0.503517,
		34.767109, 32.914474, 31.762682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893616, 33.097569, 31.637356>,  <34.261562, 32.582520, 32.115143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893616, 33.097569, 31.637356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269089, 33.072197, 31.501801>,  <34.494373, 33.056973, 31.420467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269089, 33.072197, 31.501801>,  <33.893616, 33.097569, 31.637356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269089, 33.072197, 31.501801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322205, 0.188382, -0.927737,
		0.122686, 0.980045, 0.156394,
		0.938686, -0.063429, -0.338888,
		34.550694, 33.053169, 31.400135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018024, 33.631588, 31.175959>,  <33.893616, 33.097569, 31.637356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018024, 33.631588, 31.175959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300602, 33.363560, 31.084805>,  <34.470150, 33.202744, 31.030111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300602, 33.363560, 31.084805>,  <34.018024, 33.631588, 31.175959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300602, 33.363560, 31.084805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042172, 0.361260, -0.931511,
		0.706507, 0.648454, 0.283470,
		0.706448, -0.670074, -0.227887,
		34.512535, 33.162537, 31.016439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557312, 33.982075, 30.763855>,  <34.018024, 33.631588, 31.175959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557312, 33.982075, 30.763855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566578, 33.592506, 30.673580>,  <34.572136, 33.358765, 30.619415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.566578, 33.592506, 30.673580>,  <34.557312, 33.982075, 30.763855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566578, 33.592506, 30.673580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027069, 0.226278, -0.973686,
		0.999365, 0.016445, 0.031604,
		0.023164, -0.973924, -0.225689,
		34.573528, 33.300331, 30.605873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062218, 33.822178, 30.229176>,  <34.557312, 33.982075, 30.763855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062218, 33.822178, 30.229176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823685, 33.501850, 30.207018>,  <34.680565, 33.309654, 30.193724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823685, 33.501850, 30.207018>,  <35.062218, 33.822178, 30.229176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823685, 33.501850, 30.207018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109341, 0.149399, -0.982713,
		0.795254, -0.579969, -0.176654,
		-0.596335, -0.800822, -0.055396,
		34.644783, 33.261604, 30.190399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189793, 33.585941, 29.557779>,  <35.062218, 33.822178, 30.229176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189793, 33.585941, 29.557779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857609, 33.392406, 29.668219>,  <34.658298, 33.276283, 29.734482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.857609, 33.392406, 29.668219>,  <35.189793, 33.585941, 29.557779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857609, 33.392406, 29.668219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379686, 0.128941, -0.916085,
		0.407638, -0.865606, -0.290788,
		-0.830463, -0.483840, 0.276097,
		34.608471, 33.247253, 29.751047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143021, 33.366825, 28.951244>,  <35.189793, 33.585941, 29.557779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143021, 33.366825, 28.951244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800419, 33.350349, 29.157043>,  <34.594860, 33.340466, 29.280523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800419, 33.350349, 29.157043>,  <35.143021, 33.366825, 28.951244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800419, 33.350349, 29.157043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509167, 0.230762, -0.829155,
		-0.084580, -0.972138, -0.218617,
		-0.856502, -0.041183, 0.514498,
		34.543468, 33.337994, 29.311394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728951, 32.916969, 28.515560>,  <35.143021, 33.366825, 28.951244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728951, 32.916969, 28.515560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474220, 33.129189, 28.739338>,  <34.321384, 33.256519, 28.873604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474220, 33.129189, 28.739338>,  <34.728951, 32.916969, 28.515560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474220, 33.129189, 28.739338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594156, 0.124726, -0.794621,
		-0.491363, -0.838427, 0.235801,
		-0.636821, 0.530550, 0.559442,
		34.283173, 33.288353, 28.907171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070370, 32.585926, 28.365974>,  <34.728951, 32.916969, 28.515560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070370, 32.585926, 28.365974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979378, 32.951893, 28.499350>,  <33.924782, 33.171474, 28.579374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979378, 32.951893, 28.499350>,  <34.070370, 32.585926, 28.365974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979378, 32.951893, 28.499350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613513, 0.131257, -0.778700,
		-0.756212, -0.381705, 0.531456,
		-0.227476, 0.914917, 0.333439,
		33.911137, 33.226368, 28.599380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440266, 32.502285, 28.168941>,  <34.070370, 32.585926, 28.365974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440266, 32.502285, 28.168941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511494, 32.887642, 28.249105>,  <33.554230, 33.118858, 28.297203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511494, 32.887642, 28.249105>,  <33.440266, 32.502285, 28.168941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511494, 32.887642, 28.249105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669659, 0.267870, -0.692678,
		-0.721005, -0.010860, 0.692845,
		0.178070, 0.963394, 0.200408,
		33.564915, 33.176659, 28.309227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744225, 32.867523, 28.247732>,  <33.440266, 32.502285, 28.168941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744225, 32.867523, 28.247732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.015823, 33.141479, 28.141991>,  <33.178783, 33.305855, 28.078545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.015823, 33.141479, 28.141991>,  <32.744225, 32.867523, 28.247732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015823, 33.141479, 28.141991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515408, 0.188291, -0.836003,
		-0.522797, 0.703895, 0.480849,
		0.678998, 0.684893, -0.264355,
		33.219524, 33.346947, 28.062685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411419, 33.453926, 28.106707>,  <32.744225, 32.867523, 28.247732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411419, 33.453926, 28.106707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754951, 33.524734, 27.914429>,  <32.961071, 33.567219, 27.799063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754951, 33.524734, 27.914429>,  <32.411419, 33.453926, 28.106707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754951, 33.524734, 27.914429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512240, 0.303481, -0.803436,
		0.003652, 0.936248, 0.351320,
		0.858835, 0.177026, -0.480693,
		33.012600, 33.577843, 27.770222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179848, 34.097263, 28.440460>,  <32.411419, 33.453926, 28.106707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179848, 34.097263, 28.440460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.889339, 34.276157, 28.649269>,  <31.715034, 34.383495, 28.774555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.889339, 34.276157, 28.649269>,  <32.179848, 34.097263, 28.440460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889339, 34.276157, 28.649269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365148, -0.392407, 0.844206,
		0.582405, 0.803739, 0.121686,
		-0.726272, 0.447236, 0.522024,
		31.671457, 34.410328, 28.805876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467007, 34.309433, 29.057535>,  <32.179848, 34.097263, 28.440460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467007, 34.309433, 29.057535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.074432, 34.320976, 29.133371>,  <31.838886, 34.327904, 29.178873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.074432, 34.320976, 29.133371>,  <32.467007, 34.309433, 29.057535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074432, 34.320976, 29.133371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170950, -0.316378, 0.933103,
		0.086909, 0.948194, 0.305573,
		-0.981439, 0.028858, 0.189590,
		31.780001, 34.329632, 29.190248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504379, 34.322811, 29.675072>,  <32.467007, 34.309433, 29.057535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504379, 34.322811, 29.675072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.113537, 34.249271, 29.632257>,  <31.879030, 34.205147, 29.606569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.113537, 34.249271, 29.632257>,  <32.504379, 34.322811, 29.675072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113537, 34.249271, 29.632257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035446, -0.355409, 0.934038,
		-0.209766, 0.916451, 0.340757,
		-0.977109, -0.183851, -0.107038,
		31.820404, 34.194115, 29.600145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079716, 34.605785, 30.198360>,  <32.504379, 34.322811, 29.675072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079716, 34.605785, 30.198360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.892254, 34.279629, 30.062420>,  <31.779776, 34.083935, 29.980856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.892254, 34.279629, 30.062420>,  <32.079716, 34.605785, 30.198360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892254, 34.279629, 30.062420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024835, -0.396728, 0.917600,
		-0.883032, 0.421598, 0.206179,
		-0.468656, -0.815391, -0.339853,
		31.751657, 34.035011, 29.960464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790777, 34.449345, 30.777515>,  <32.079716, 34.605785, 30.198360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790777, 34.449345, 30.777515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.702856, 34.125530, 30.559769>,  <31.650105, 33.931240, 30.429121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.702856, 34.125530, 30.559769>,  <31.790777, 34.449345, 30.777515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702856, 34.125530, 30.559769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092770, -0.538140, 0.837735,
		-0.971124, 0.234636, 0.043182,
		-0.219801, -0.809538, -0.544367,
		31.636915, 33.882668, 30.396458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243340, 34.128376, 31.146648>,  <31.790777, 34.449345, 30.777515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243340, 34.128376, 31.146648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.347448, 33.828613, 30.903128>,  <31.409914, 33.648754, 30.757015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.347448, 33.828613, 30.903128>,  <31.243340, 34.128376, 31.146648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347448, 33.828613, 30.903128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133689, -0.596489, 0.791409,
		-0.956235, -0.287373, -0.055062,
		0.260273, -0.749412, -0.608802,
		31.425531, 33.603790, 30.720488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947369, 33.521545, 31.481438>,  <31.243340, 34.128376, 31.146648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947369, 33.521545, 31.481438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.275726, 33.454948, 31.262930>,  <31.472740, 33.414989, 31.131824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.275726, 33.454948, 31.262930>,  <30.947369, 33.521545, 31.481438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275726, 33.454948, 31.262930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401152, -0.512711, 0.759082,
		-0.406456, -0.842265, -0.354095,
		0.820896, -0.166487, -0.546271,
		31.521996, 33.405003, 31.099049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062437, 32.788528, 31.620121>,  <30.947369, 33.521545, 31.481438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062437, 32.788528, 31.620121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.410524, 32.933876, 31.487043>,  <31.619377, 33.021084, 31.407196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.410524, 32.933876, 31.487043>,  <31.062437, 32.788528, 31.620121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410524, 32.933876, 31.487043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470321, -0.411631, 0.780614,
		0.146703, -0.835776, -0.529109,
		0.870216, 0.363369, -0.332696,
		31.671589, 33.042889, 31.387234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497097, 32.221226, 31.659962>,  <31.062437, 32.788528, 31.620121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497097, 32.221226, 31.659962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.700336, 32.565742, 31.658270>,  <31.822281, 32.772453, 31.657255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.700336, 32.565742, 31.658270>,  <31.497097, 32.221226, 31.659962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700336, 32.565742, 31.658270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459774, -0.267077, 0.846922,
		0.728315, -0.432264, -0.531700,
		0.508099, 0.861288, -0.004227,
		31.852766, 32.824127, 31.657001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236111, 32.089600, 31.803137>,  <31.497097, 32.221226, 31.659962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236111, 32.089600, 31.803137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193211, 32.473797, 31.905853>,  <32.167473, 32.704315, 31.967484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.193211, 32.473797, 31.905853>,  <32.236111, 32.089600, 31.803137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193211, 32.473797, 31.905853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618756, -0.137690, 0.773423,
		0.778228, 0.241839, -0.579547,
		-0.107246, 0.960497, 0.256793,
		32.161037, 32.761948, 31.982891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933701, 32.255051, 32.109425>,  <32.236111, 32.089600, 31.803137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933701, 32.255051, 32.109425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695004, 32.565460, 32.191082>,  <32.551785, 32.751705, 32.240078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.695004, 32.565460, 32.191082>,  <32.933701, 32.255051, 32.109425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695004, 32.565460, 32.191082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450339, 0.113316, 0.885638,
		0.664147, 0.620435, -0.417096,
		-0.596744, 0.776028, 0.204148,
		32.515980, 32.798267, 32.252327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386818, 32.864094, 32.308655>,  <32.933701, 32.255051, 32.109425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386818, 32.864094, 32.308655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.028515, 32.898300, 32.483154>,  <32.813534, 32.918823, 32.587852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.028515, 32.898300, 32.483154>,  <33.386818, 32.864094, 32.308655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028515, 32.898300, 32.483154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438554, 0.009332, 0.898656,
		0.072779, 0.996293, -0.045863,
		-0.895753, 0.085516, 0.436249,
		32.759789, 32.923954, 32.614029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604691, 32.991920, 32.890079>,  <33.386818, 32.864094, 32.308655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604691, 32.991920, 32.890079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216324, 32.962940, 32.981358>,  <32.983303, 32.945553, 33.036125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216324, 32.962940, 32.981358>,  <33.604691, 32.991920, 32.890079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216324, 32.962940, 32.981358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228162, 0.008856, 0.973583,
		-0.072553, 0.997333, 0.007931,
		-0.970916, -0.072446, 0.228196,
		32.925049, 32.941208, 33.049816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496826, 33.634781, 33.328594>,  <33.604691, 32.991920, 32.890079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496826, 33.634781, 33.328594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250099, 33.324524, 33.382126>,  <33.102062, 33.138371, 33.414246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.250099, 33.324524, 33.382126>,  <33.496826, 33.634781, 33.328594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250099, 33.324524, 33.382126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223429, -0.009506, 0.974674,
		-0.754730, 0.631096, 0.179165,
		-0.616817, -0.775646, 0.133830,
		33.065056, 33.091831, 33.422276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363434, 34.147545, 33.903282>,  <33.496826, 33.634781, 33.328594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363434, 34.147545, 33.903282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466801, 34.528946, 33.965313>,  <33.528820, 34.757786, 34.002529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466801, 34.528946, 33.965313>,  <33.363434, 34.147545, 33.903282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466801, 34.528946, 33.965313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717501, 0.296929, -0.630099,
		-0.646850, 0.051560, 0.760873,
		0.258413, 0.953506, 0.155074,
		33.544323, 34.814999, 34.011837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715363, 34.595154, 34.040630>,  <33.363434, 34.147545, 33.903282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715363, 34.595154, 34.040630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.023750, 34.830658, 33.943493>,  <33.208782, 34.971962, 33.885212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.023750, 34.830658, 33.943493>,  <32.715363, 34.595154, 34.040630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023750, 34.830658, 33.943493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575572, 0.480894, -0.661406,
		-0.272630, 0.649694, 0.709627,
		0.770967, 0.588760, -0.242839,
		33.255039, 35.007286, 33.870640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572407, 35.357719, 34.116688>,  <32.715363, 34.595154, 34.040630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572407, 35.357719, 34.116688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862255, 35.356735, 33.841030>,  <33.036163, 35.356144, 33.675636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862255, 35.356735, 33.841030>,  <32.572407, 35.357719, 34.116688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862255, 35.356735, 33.841030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523142, 0.648991, -0.552389,
		0.448606, 0.760792, 0.468986,
		0.724620, -0.002459, -0.689144,
		33.079639, 35.355999, 33.634289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626053, 36.062458, 33.903877>,  <32.572407, 35.357719, 34.116688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626053, 36.062458, 33.903877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782795, 35.864510, 33.593639>,  <32.876839, 35.745739, 33.407497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782795, 35.864510, 33.593639>,  <32.626053, 36.062458, 33.903877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782795, 35.864510, 33.593639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437439, 0.641415, -0.630265,
		0.809381, 0.586248, 0.034864,
		0.391854, -0.494874, -0.775597,
		32.900352, 35.716049, 33.360962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838871, 36.570488, 33.401798>,  <32.626053, 36.062458, 33.903877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838871, 36.570488, 33.401798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.820309, 36.234322, 33.185814>,  <32.809174, 36.032623, 33.056225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.820309, 36.234322, 33.185814>,  <32.838871, 36.570488, 33.401798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820309, 36.234322, 33.185814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466605, 0.496182, -0.732177,
		0.883248, 0.217972, -0.415164,
		-0.046403, -0.840411, -0.539958,
		32.806389, 35.982197, 33.023827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164337, 36.634590, 32.804798>,  <32.838871, 36.570488, 33.401798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164337, 36.634590, 32.804798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922741, 36.329029, 32.713898>,  <32.777782, 36.145691, 32.659359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922741, 36.329029, 32.713898>,  <33.164337, 36.634590, 32.804798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922741, 36.329029, 32.713898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216753, 0.431830, -0.875523,
		0.766949, -0.479554, -0.426401,
		-0.603994, -0.763905, -0.227247,
		32.741543, 36.099857, 32.645725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140747, 36.595638, 32.124676>,  <33.164337, 36.634590, 32.804798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140747, 36.595638, 32.124676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840702, 36.333046, 32.156582>,  <32.660675, 36.175491, 32.175728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840702, 36.333046, 32.156582>,  <33.140747, 36.595638, 32.124676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840702, 36.333046, 32.156582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380695, 0.330031, -0.863800,
		0.540742, -0.678315, -0.497480,
		-0.750113, -0.656482, 0.079770,
		32.615669, 36.136101, 32.180511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189453, 36.152561, 31.613443>,  <33.140747, 36.595638, 32.124676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189453, 36.152561, 31.613443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.805759, 36.151947, 31.726480>,  <32.575542, 36.151581, 31.794302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.805759, 36.151947, 31.726480>,  <33.189453, 36.152561, 31.613443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805759, 36.151947, 31.726480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282202, 0.058032, -0.957598,
		-0.014936, -0.998314, -0.056098,
		-0.959239, -0.001528, 0.282593,
		32.517986, 36.151485, 31.811258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942421, 35.610512, 31.193161>,  <33.189453, 36.152561, 31.613443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942421, 35.610512, 31.193161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.657116, 35.870583, 31.297869>,  <32.485931, 36.026627, 31.360693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.657116, 35.870583, 31.297869>,  <32.942421, 35.610512, 31.193161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657116, 35.870583, 31.297869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137708, 0.236201, -0.961897,
		-0.687236, -0.722133, -0.078938,
		-0.713263, 0.650180, 0.261769,
		32.443138, 36.065636, 31.376400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490383, 35.548973, 30.642992>,  <32.942421, 35.610512, 31.193161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490383, 35.548973, 30.642992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394039, 35.901104, 30.806463>,  <32.336231, 36.112381, 30.904547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.394039, 35.901104, 30.806463>,  <32.490383, 35.548973, 30.642992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394039, 35.901104, 30.806463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159919, 0.379322, -0.911340,
		-0.957295, -0.284859, 0.049418,
		-0.240859, 0.880324, 0.408677,
		32.321781, 36.165199, 30.929066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928677, 35.797680, 30.333681>,  <32.490383, 35.548973, 30.642992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928677, 35.797680, 30.333681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048153, 36.142998, 30.496408>,  <32.119839, 36.350189, 30.594044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048153, 36.142998, 30.496408>,  <31.928677, 35.797680, 30.333681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048153, 36.142998, 30.496408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361773, 0.496884, -0.788813,
		-0.883122, 0.088435, 0.460733,
		0.298689, 0.863299, 0.406816,
		32.137760, 36.401989, 30.618454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490023, 36.318680, 30.120232>,  <31.928677, 35.797680, 30.333681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490023, 36.318680, 30.120232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819176, 36.515617, 30.233696>,  <32.016666, 36.633778, 30.301775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.819176, 36.515617, 30.233696>,  <31.490023, 36.318680, 30.120232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819176, 36.515617, 30.233696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085661, 0.601003, -0.794643,
		-0.561718, 0.629599, 0.536729,
		0.822882, 0.492342, 0.283662,
		32.066040, 36.663319, 30.318794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272308, 37.083210, 29.995174>,  <31.490023, 36.318680, 30.120232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272308, 37.083210, 29.995174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.664097, 37.004990, 29.975597>,  <31.899170, 36.958057, 29.963852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.664097, 37.004990, 29.975597>,  <31.272308, 37.083210, 29.995174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664097, 37.004990, 29.975597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059963, 0.514440, -0.855427,
		0.192458, 0.834931, 0.515606,
		0.979472, -0.195551, -0.048943,
		31.957939, 36.946323, 29.960915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613111, 37.703865, 29.957914>,  <31.272308, 37.083210, 29.995174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613111, 37.703865, 29.957914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907061, 37.462994, 29.833118>,  <32.083431, 37.318470, 29.758240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.907061, 37.462994, 29.833118>,  <31.613111, 37.703865, 29.957914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907061, 37.462994, 29.833118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160303, 0.601216, -0.782842,
		0.658988, 0.525276, 0.538349,
		0.734872, -0.602183, -0.311991,
		32.127522, 37.282337, 29.739521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207050, 38.192455, 29.799753>,  <31.613111, 37.703865, 29.957914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207050, 38.192455, 29.799753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258015, 37.851097, 29.597574>,  <32.288593, 37.646282, 29.476267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258015, 37.851097, 29.597574>,  <32.207050, 38.192455, 29.799753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258015, 37.851097, 29.597574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197407, 0.521223, -0.830275,
		0.972007, 0.006005, 0.234875,
		0.127408, -0.853399, -0.505447,
		32.296238, 37.595078, 29.445940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781651, 38.313492, 29.421141>,  <32.207050, 38.192455, 29.799753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781651, 38.313492, 29.421141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611961, 37.994629, 29.249290>,  <32.510147, 37.803310, 29.146181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611961, 37.994629, 29.249290>,  <32.781651, 38.313492, 29.421141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611961, 37.994629, 29.249290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092333, 0.433880, -0.896227,
		0.900838, -0.419869, -0.110458,
		-0.424223, -0.797156, -0.429624,
		32.484695, 37.755482, 29.120403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204956, 38.244480, 28.833776>,  <32.781651, 38.313492, 29.421141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204956, 38.244480, 28.833776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.873898, 38.029716, 28.768383>,  <32.675262, 37.900860, 28.729147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.873898, 38.029716, 28.768383>,  <33.204956, 38.244480, 28.833776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873898, 38.029716, 28.768383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111907, 0.443309, -0.889356,
		0.549977, -0.717779, -0.426988,
		-0.827648, -0.536909, -0.163485,
		32.625603, 37.868645, 28.719337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343838, 37.942837, 28.273710>,  <33.204956, 38.244480, 28.833776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343838, 37.942837, 28.273710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.946964, 37.960102, 28.320538>,  <32.708839, 37.970463, 28.348635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.946964, 37.960102, 28.320538>,  <33.343838, 37.942837, 28.273710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946964, 37.960102, 28.320538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097520, 0.316996, -0.943400,
		-0.077835, -0.947444, -0.310309,
		-0.992185, 0.043168, 0.117068,
		32.649307, 37.973053, 28.355658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167934, 37.476814, 27.728922>,  <33.343838, 37.942837, 28.273710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167934, 37.476814, 27.728922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.846001, 37.696735, 27.818329>,  <32.652840, 37.828686, 27.871973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.846001, 37.696735, 27.818329>,  <33.167934, 37.476814, 27.728922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846001, 37.696735, 27.818329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125473, 0.210475, -0.969514,
		-0.580082, -0.808346, -0.100413,
		-0.804836, 0.549798, 0.223518,
		32.604549, 37.861675, 27.885384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769985, 37.524433, 27.161524>,  <33.167934, 37.476814, 27.728922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769985, 37.524433, 27.161524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574532, 37.811031, 27.360668>,  <32.457260, 37.982990, 27.480154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.574532, 37.811031, 27.360668>,  <32.769985, 37.524433, 27.161524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574532, 37.811031, 27.360668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060010, 0.541669, -0.838447,
		-0.870421, -0.439573, -0.221683,
		-0.488637, 0.716499, 0.497859,
		32.427940, 38.025982, 27.510025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147129, 37.620525, 26.786703>,  <32.769985, 37.524433, 27.161524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147129, 37.620525, 26.786703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.206192, 37.946716, 27.010557>,  <32.241631, 38.142429, 27.144869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.206192, 37.946716, 27.010557>,  <32.147129, 37.620525, 26.786703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206192, 37.946716, 27.010557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174521, 0.578442, -0.796836,
		-0.973519, 0.019993, 0.227731,
		0.147660, 0.815478, 0.559635,
		32.250488, 38.191360, 27.178448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515039, 38.113838, 26.680920>,  <32.147129, 37.620525, 26.786703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515039, 38.113838, 26.680920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824776, 38.337234, 26.799906>,  <32.010616, 38.471272, 26.871298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.824776, 38.337234, 26.799906>,  <31.515039, 38.113838, 26.680920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824776, 38.337234, 26.799906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281166, 0.724826, -0.628946,
		-0.566870, 0.403381, 0.718291,
		0.774341, 0.558490, 0.297465,
		32.057079, 38.504780, 26.889145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253815, 38.807201, 26.760887>,  <31.515039, 38.113838, 26.680920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253815, 38.807201, 26.760887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.644115, 38.855469, 26.687843>,  <31.878296, 38.884430, 26.644016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.644115, 38.855469, 26.687843>,  <31.253815, 38.807201, 26.760887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644115, 38.855469, 26.687843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212643, 0.720271, -0.660297,
		0.051854, 0.683118, 0.728465,
		0.975753, 0.120664, -0.182609,
		31.936842, 38.891666, 26.633060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344955, 39.584862, 26.650106>,  <31.253815, 38.807201, 26.760887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344955, 39.584862, 26.650106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.669060, 39.410313, 26.493616>,  <31.863522, 39.305584, 26.399721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.669060, 39.410313, 26.493616>,  <31.344955, 39.584862, 26.650106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669060, 39.410313, 26.493616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032399, 0.633171, -0.773334,
		0.585172, 0.639278, 0.498896,
		0.810261, -0.436370, -0.391226,
		31.912138, 39.279400, 26.376247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701353, 40.079327, 26.510830>,  <31.344955, 39.584862, 26.650106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701353, 40.079327, 26.510830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.891943, 39.810719, 26.283840>,  <32.006298, 39.649551, 26.147646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.891943, 39.810719, 26.283840>,  <31.701353, 40.079327, 26.510830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891943, 39.810719, 26.283840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036393, 0.659966, -0.750414,
		0.878433, 0.336903, 0.338897,
		0.476477, -0.671522, -0.567475,
		32.034885, 39.609261, 26.113598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347160, 40.483810, 26.165733>,  <31.701353, 40.079327, 26.510830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347160, 40.483810, 26.165733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222614, 40.166641, 25.956228>,  <32.147888, 39.976341, 25.830526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222614, 40.166641, 25.956228>,  <32.347160, 40.483810, 26.165733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222614, 40.166641, 25.956228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016210, 0.546648, -0.837206,
		0.950152, -0.269168, -0.157355,
		-0.311366, -0.792922, -0.523762,
		32.129204, 39.928764, 25.799099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660027, 40.558491, 25.416002>,  <32.347160, 40.483810, 26.165733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660027, 40.558491, 25.416002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.356037, 40.300350, 25.385101>,  <32.173645, 40.145466, 25.366560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.356037, 40.300350, 25.385101>,  <32.660027, 40.558491, 25.416002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356037, 40.300350, 25.385101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280054, 0.432395, -0.857090,
		0.586528, -0.629728, -0.509341,
		-0.759970, -0.645351, -0.077254,
		32.128048, 40.106747, 25.361925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552105, 40.451180, 24.738832>,  <32.660027, 40.558491, 25.416002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552105, 40.451180, 24.738832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203739, 40.300911, 24.865561>,  <31.994720, 40.210751, 24.941597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.203739, 40.300911, 24.865561>,  <32.552105, 40.451180, 24.738832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203739, 40.300911, 24.865561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455389, 0.374589, -0.807653,
		0.184739, -0.847674, -0.497314,
		-0.870915, -0.375676, 0.316820,
		31.942465, 40.188210, 24.960608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052116, 40.144947, 24.206209>,  <32.552105, 40.451180, 24.738832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052116, 40.144947, 24.206209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.247520, 40.464306, 24.347013>,  <33.364765, 40.655922, 24.431496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.247520, 40.464306, 24.347013>,  <33.052116, 40.144947, 24.206209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247520, 40.464306, 24.347013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346690, -0.547818, 0.761381,
		0.800725, -0.249905, -0.544414,
		0.488513, 0.798400, 0.352012,
		33.394073, 40.703827, 24.452618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766209, 39.865276, 24.420900>,  <33.052116, 40.144947, 24.206209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766209, 39.865276, 24.420900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741539, 40.216652, 24.610441>,  <33.726738, 40.427479, 24.724165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741539, 40.216652, 24.610441>,  <33.766209, 39.865276, 24.420900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741539, 40.216652, 24.610441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516710, -0.378081, 0.768157,
		0.853936, 0.292220, -0.430581,
		-0.061676, 0.878443, 0.473851,
		33.723038, 40.480186, 24.752596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377842, 40.020973, 24.569780>,  <33.766209, 39.865276, 24.420900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377842, 40.020973, 24.569780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.161564, 40.240921, 24.824430>,  <34.031799, 40.372890, 24.977221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.161564, 40.240921, 24.824430>,  <34.377842, 40.020973, 24.569780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161564, 40.240921, 24.824430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609742, -0.265197, 0.746917,
		0.579539, 0.792031, -0.191889,
		-0.540693, 0.549870, 0.636627,
		33.999355, 40.405884, 25.015419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885914, 40.398861, 24.934004>,  <34.377842, 40.020973, 24.569780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885914, 40.398861, 24.934004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561001, 40.390446, 25.167158>,  <34.366055, 40.385399, 25.307051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561001, 40.390446, 25.167158>,  <34.885914, 40.398861, 24.934004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561001, 40.390446, 25.167158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576382, -0.182037, 0.796647,
		0.089351, 0.983067, 0.159989,
		-0.812281, -0.021034, 0.582887,
		34.317318, 40.384136, 25.342024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968002, 40.832767, 25.505177>,  <34.885914, 40.398861, 24.934004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968002, 40.832767, 25.505177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695980, 40.555614, 25.601048>,  <34.532768, 40.389324, 25.658569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695980, 40.555614, 25.601048>,  <34.968002, 40.832767, 25.505177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695980, 40.555614, 25.601048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501590, -0.201265, 0.841368,
		-0.534728, 0.692395, 0.484413,
		-0.680054, -0.692879, 0.239676,
		34.491962, 40.347752, 25.672951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
