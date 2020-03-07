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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<5.179810, 3.950186, 1.055882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.291126, 3.909790, 0.673813>,  <5.357916, 3.885553, 0.444571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.291126, 3.909790, 0.673813>,  <5.179810, 3.950186, 1.055882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.291126, 3.909790, 0.673813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960483, -0.023968, -0.277305,
		0.005112, 0.994599, -0.103668,
		0.278292, -0.100989, -0.955173,
		5.374614, 3.879493, 0.387261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.790665, 4.385354, 0.704926>,  <5.179810, 3.950186, 1.055882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.790665, 4.385354, 0.704926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.923050, 4.101135, 0.456543>,  <5.002481, 3.930604, 0.307513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.923050, 4.101135, 0.456543>,  <4.790665, 4.385354, 0.704926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.923050, 4.101135, 0.456543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936909, -0.168953, -0.306034,
		0.112539, 0.683066, -0.721634,
		0.330964, -0.710546, -0.620957,
		5.022339, 3.887971, 0.270256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.344258, 4.312232, 0.118227>,  <4.790665, 4.385354, 0.704926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.344258, 4.312232, 0.118227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.520401, 3.958176, 0.178379>,  <4.626087, 3.745742, 0.214470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.520401, 3.958176, 0.178379>,  <4.344258, 4.312232, 0.118227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.520401, 3.958176, 0.178379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874516, -0.460783, -0.151333,
		0.203243, -0.064868, -0.976977,
		0.440358, -0.885139, 0.150379,
		4.652508, 3.692634, 0.223493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.104103, 3.855233, -0.350335>,  <4.344258, 4.312232, 0.118228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.104103, 3.855233, -0.350335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.220104, 3.639847, -0.033867>,  <4.289705, 3.510615, 0.156014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.220104, 3.639847, -0.033867>,  <4.104103, 3.855233, -0.350335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.220104, 3.639847, -0.033867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854278, -0.518304, -0.039619,
		0.431401, -0.664391, -0.610310,
		0.290004, -0.538466, 0.791171,
		4.307105, 3.478307, 0.203485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.949679, 3.189985, -0.499173>,  <4.104103, 3.855233, -0.350335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.949679, 3.189985, -0.499173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.980755, 3.152313, -0.102165>,  <3.999400, 3.129710, 0.136039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.980755, 3.152313, -0.102165>,  <3.949679, 3.189985, -0.499173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.980755, 3.152313, -0.102165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848057, -0.529660, 0.016122,
		0.524180, -0.842965, -0.121018,
		0.077689, -0.094180, 0.992519,
		4.004062, 3.124059, 0.195591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.775652, 2.466696, -0.357025>,  <3.949679, 3.189985, -0.499173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.775652, 2.466696, -0.357025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.722046, 2.649399, -0.005249>,  <3.689882, 2.759020, 0.205816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.722046, 2.649399, -0.005249>,  <3.775652, 2.466696, -0.357025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.722046, 2.649399, -0.005249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793838, -0.580687, 0.180622,
		0.593179, -0.673926, 0.440412,
		-0.134016, 0.456756, 0.879439,
		3.681841, 2.786426, 0.258583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.728502, 1.923251, 0.133496>,  <3.775652, 2.466696, -0.357025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.728502, 1.923251, 0.133496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.563541, 2.246735, 0.301266>,  <3.464565, 2.440825, 0.401928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.563541, 2.246735, 0.301266>,  <3.728502, 1.923251, 0.133496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.563541, 2.246735, 0.301266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761902, -0.558576, 0.327869,
		0.499431, -0.184347, 0.846513,
		-0.412400, 0.808708, 0.419424,
		3.439821, 2.489347, 0.427093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.475913, 1.722481, 0.807193>,  <3.728502, 1.923251, 0.133496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.475913, 1.722481, 0.807193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.272396, 2.038193, 0.669689>,  <3.150286, 2.227619, 0.587187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.272396, 2.038193, 0.669689>,  <3.475913, 1.722481, 0.807193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.272396, 2.038193, 0.669689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856520, -0.504282, 0.109878,
		-0.086628, 0.350342, 0.932607,
		-0.508792, 0.789278, -0.343760,
		3.119758, 2.274976, 0.566561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.757177, 1.344927, 0.092216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.771289, 1.656509, -0.158218>,  <1.779756, 1.843459, -0.308479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.771289, 1.656509, -0.158218>,  <1.757177, 1.344927, 0.092216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.771289, 1.656509, -0.158218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447397, 0.547882, 0.706867,
		0.893640, -0.305047, -0.329173,
		0.035279, 0.778956, -0.626086,
		1.781873, 1.890196, -0.346044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.565089, 1.499487, -0.040808>,  <1.757177, 1.344927, 0.092216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.565089, 1.499487, -0.040808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.270087, 1.769623, -0.041832>,  <2.093086, 1.931704, -0.042446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.270087, 1.769623, -0.041832>,  <2.565089, 1.499487, -0.040808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.270087, 1.769623, -0.041832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508412, 0.557699, 0.656117,
		0.444529, 0.482587, -0.754655,
		-0.737504, 0.675338, -0.002560,
		2.048836, 1.972224, -0.042600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.787423, 2.175914, -0.369849>,  <2.565089, 1.499487, -0.040808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.787423, 2.175914, -0.369849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.515922, 2.220993, -0.079582>,  <2.353021, 2.248041, 0.094578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.515922, 2.220993, -0.079582>,  <2.787423, 2.175914, -0.369849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.515922, 2.220993, -0.079582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619267, 0.618965, 0.483105,
		-0.394718, 0.777291, -0.489915,
		-0.678753, 0.112698, 0.725667,
		2.312296, 2.254802, 0.138118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.579390, 2.877695, -0.303829>,  <2.787423, 2.175914, -0.369849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.579390, 2.877695, -0.303829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.545135, 2.686111, 0.045631>,  <2.524581, 2.571162, 0.255308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.545135, 2.686111, 0.045631>,  <2.579390, 2.877695, -0.303829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.545135, 2.686111, 0.045631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713261, 0.582770, 0.389407,
		-0.695647, 0.656489, 0.291714,
		-0.085639, -0.478958, 0.873651,
		2.519443, 2.542424, 0.307727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.567051, 3.392037, 0.223284>,  <2.579390, 2.877695, -0.303829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.567051, 3.392037, 0.223284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.709157, 3.044205, 0.360466>,  <2.794421, 2.835505, 0.442775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.709157, 3.044205, 0.360466>,  <2.567051, 3.392037, 0.223284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.709157, 3.044205, 0.360466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848722, 0.453823, 0.271507,
		-0.391738, 0.194615, 0.899259,
		0.355265, -0.869580, 0.342954,
		2.815737, 2.783331, 0.463352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.832717, 3.482275, 0.995043>,  <2.567051, 3.392037, 0.223284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.832717, 3.482275, 0.995043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.024499, 3.189301, 0.801689>,  <3.139568, 3.013516, 0.685677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.024499, 3.189301, 0.801689>,  <2.832717, 3.482275, 0.995043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.024499, 3.189301, 0.801689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874995, 0.441128, 0.199472,
		0.067134, -0.518597, 0.852379,
		0.479454, -0.732436, -0.483385,
		3.168335, 2.969570, 0.656674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.449749, 3.377836, 1.371478>,  <2.832717, 3.482275, 0.995043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.449749, 3.377836, 1.371478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.528485, 3.197296, 1.023331>,  <3.575727, 3.088973, 0.814443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.528485, 3.197296, 1.023331>,  <3.449749, 3.377836, 1.371478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.528485, 3.197296, 1.023331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930707, 0.365155, 0.021126,
		0.308284, -0.814215, 0.491950,
		0.196839, -0.451348, -0.870367,
		3.587537, 3.061892, 0.762221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.081136, 3.091490, 1.495654>,  <3.449749, 3.377836, 1.371478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.081136, 3.091490, 1.495654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.046067, 3.130859, 1.099144>,  <4.025026, 3.154481, 0.861238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.046067, 3.130859, 1.099144>,  <4.081136, 3.091490, 1.495654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.046067, 3.130859, 1.099144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873428, 0.486090, -0.028986,
		0.478996, -0.868349, -0.128582,
		-0.087672, 0.098423, -0.991275,
		4.019765, 3.160386, 0.801761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
