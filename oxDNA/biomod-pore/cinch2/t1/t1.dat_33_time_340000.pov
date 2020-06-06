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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.650082, 32.697098, 22.879194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291321, 32.701729, 22.702362>,  <42.076065, 32.704506, 22.596262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.291321, 32.701729, 22.702362>,  <42.650082, 32.697098, 22.879194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.291321, 32.701729, 22.702362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267868, 0.809624, -0.522259,
		0.351875, -0.586834, -0.729253,
		-0.896900, 0.011574, -0.442081,
		42.022251, 32.705200, 22.569738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698879, 32.549370, 22.285542>,  <42.650082, 32.697098, 22.879194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698879, 32.549370, 22.285542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367706, 32.773327, 22.298431>,  <42.169003, 32.907703, 22.306166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367706, 32.773327, 22.298431>,  <42.698879, 32.549370, 22.285542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367706, 32.773327, 22.298431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402236, 0.632877, -0.661569,
		-0.390804, -0.534775, -0.749191,
		-0.827936, 0.559896, 0.032225,
		42.119324, 32.941296, 22.308100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640678, 32.752342, 21.647299>,  <42.698879, 32.549370, 22.285542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640678, 32.752342, 21.647299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438641, 33.025581, 21.858299>,  <42.317417, 33.189526, 21.984900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438641, 33.025581, 21.858299>,  <42.640678, 32.752342, 21.647299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438641, 33.025581, 21.858299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237806, 0.697686, -0.675783,
		-0.829656, -0.215891, -0.514841,
		-0.505093, 0.683100, 0.527500,
		42.287113, 33.230511, 22.016550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061584, 33.096577, 21.185593>,  <42.640678, 32.752342, 21.647299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061584, 33.096577, 21.185593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237713, 33.297237, 21.483440>,  <42.343391, 33.417633, 21.662149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.237713, 33.297237, 21.483440>,  <42.061584, 33.096577, 21.185593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237713, 33.297237, 21.483440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305107, 0.696385, -0.649582,
		-0.844407, 0.513216, 0.153578,
		0.440325, 0.501654, 0.744618,
		42.369812, 33.447735, 21.706825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817348, 33.474937, 20.592716>,  <42.061584, 33.096577, 21.185593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817348, 33.474937, 20.592716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676575, 33.830887, 20.708828>,  <41.592110, 34.044456, 20.778494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676575, 33.830887, 20.708828>,  <41.817348, 33.474937, 20.592716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676575, 33.830887, 20.708828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896450, 0.409661, -0.168986,
		-0.269292, 0.200747, -0.941904,
		-0.351937, 0.889876, 0.290278,
		41.570995, 34.097851, 20.795912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925339, 33.986378, 20.124458>,  <41.817348, 33.474937, 20.592716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925339, 33.986378, 20.124458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908108, 34.191998, 20.467129>,  <41.897770, 34.315369, 20.672731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908108, 34.191998, 20.467129>,  <41.925339, 33.986378, 20.124458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908108, 34.191998, 20.467129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856611, 0.460295, -0.233122,
		-0.514161, 0.723796, -0.460172,
		-0.043082, 0.514051, 0.856677,
		41.895184, 34.346214, 20.724133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082626, 34.653793, 19.919743>,  <41.925339, 33.986378, 20.124458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082626, 34.653793, 19.919743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144577, 34.677795, 20.314186>,  <42.181747, 34.692196, 20.550852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.144577, 34.677795, 20.314186>,  <42.082626, 34.653793, 19.919743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144577, 34.677795, 20.314186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874852, 0.455379, -0.165117,
		-0.458962, 0.888273, 0.018030,
		0.154880, 0.060009, 0.986109,
		42.191040, 34.695797, 20.610020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192280, 35.354889, 20.141973>,  <42.082626, 34.653793, 19.919743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192280, 35.354889, 20.141973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356407, 35.126675, 20.426544>,  <42.454884, 34.989746, 20.597286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.356407, 35.126675, 20.426544>,  <42.192280, 35.354889, 20.141973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356407, 35.126675, 20.426544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898669, 0.385580, -0.209097,
		-0.155016, 0.725136, 0.670930,
		0.410321, -0.570531, 0.711429,
		42.479504, 34.955517, 20.639973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632004, 35.817875, 20.440498>,  <42.192280, 35.354889, 20.141973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632004, 35.817875, 20.440498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750496, 35.453136, 20.554188>,  <42.821590, 35.234291, 20.622400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750496, 35.453136, 20.554188>,  <42.632004, 35.817875, 20.440498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750496, 35.453136, 20.554188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935862, 0.217656, -0.277108,
		0.190818, 0.348079, 0.917839,
		0.296229, -0.911848, 0.284221,
		42.839363, 35.179581, 20.639454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198547, 35.987827, 20.893463>,  <42.632004, 35.817875, 20.440498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198547, 35.987827, 20.893463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256618, 35.605923, 20.789658>,  <43.291462, 35.376778, 20.727373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256618, 35.605923, 20.789658>,  <43.198547, 35.987827, 20.893463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256618, 35.605923, 20.789658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870937, 0.247778, -0.424352,
		0.469459, -0.164414, 0.867512,
		0.145181, -0.954764, -0.259516,
		43.300175, 35.319492, 20.711803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.874405, 35.787258, 21.079756>,  <43.198547, 35.987827, 20.893463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.874405, 35.787258, 21.079756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791817, 35.482246, 20.834507>,  <43.742264, 35.299240, 20.687357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791817, 35.482246, 20.834507>,  <43.874405, 35.787258, 21.079756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791817, 35.482246, 20.834507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917907, 0.066060, -0.391259,
		0.338850, -0.643571, 0.686292,
		-0.206466, -0.762530, -0.613123,
		43.729877, 35.253487, 20.650570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347687, 35.231438, 21.231220>,  <43.874405, 35.787258, 21.079756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347687, 35.231438, 21.231220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219902, 35.204834, 20.853115>,  <44.143230, 35.188873, 20.626251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.219902, 35.204834, 20.853115>,  <44.347687, 35.231438, 21.231220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219902, 35.204834, 20.853115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936658, 0.128995, -0.325626,
		0.143592, -0.989412, 0.021089,
		-0.319458, -0.066511, -0.945264,
		44.124065, 35.184883, 20.569536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.861000, 34.881374, 20.893867>,  <44.347687, 35.231438, 21.231220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.861000, 34.881374, 20.893867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679142, 35.099239, 20.611977>,  <44.570026, 35.229958, 20.442842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679142, 35.099239, 20.611977>,  <44.861000, 34.881374, 20.893867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679142, 35.099239, 20.611977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890512, 0.293068, -0.347995,
		0.016991, -0.785780, -0.618273,
		-0.454643, 0.544666, -0.704726,
		44.542747, 35.262638, 20.400558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253510, 34.742149, 20.324629>,  <44.861000, 34.881374, 20.893867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253510, 34.742149, 20.324629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044994, 35.059948, 20.200027>,  <44.919884, 35.250626, 20.125267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044994, 35.059948, 20.200027>,  <45.253510, 34.742149, 20.324629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044994, 35.059948, 20.200027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782304, 0.299050, -0.546414,
		-0.340970, -0.528529, -0.777430,
		-0.521286, 0.794497, -0.311504,
		44.888607, 35.298298, 20.106577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447369, 34.809944, 19.669878>,  <45.253510, 34.742149, 20.324629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447369, 34.809944, 19.669878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.310101, 35.169704, 19.778187>,  <45.227741, 35.385559, 19.843172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.310101, 35.169704, 19.778187>,  <45.447369, 34.809944, 19.669878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310101, 35.169704, 19.778187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824620, 0.426508, -0.371609,
		-0.449711, 0.095759, -0.888026,
		-0.343166, 0.899400, 0.270770,
		45.207150, 35.439526, 19.859417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.695415, 35.193363, 19.211456>,  <45.447369, 34.809944, 19.669878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.695415, 35.193363, 19.211456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572586, 35.475117, 19.467442>,  <45.498886, 35.644169, 19.621033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572586, 35.475117, 19.467442>,  <45.695415, 35.193363, 19.211456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572586, 35.475117, 19.467442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800360, 0.554968, -0.226789,
		-0.514905, 0.442560, -0.734175,
		-0.307076, 0.704380, 0.639963,
		45.480465, 35.686432, 19.659431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.381714, 35.852993, 18.916044>,  <45.695415, 35.193363, 19.211456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.381714, 35.852993, 18.916044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.555649, 35.913998, 19.271046>,  <45.660007, 35.950600, 19.484047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.555649, 35.913998, 19.271046>,  <45.381714, 35.852993, 18.916044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.555649, 35.913998, 19.271046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640445, 0.640459, -0.423843,
		-0.633049, 0.752698, 0.180819,
		0.434833, 0.152508, 0.887503,
		45.686100, 35.959751, 19.537296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563251, 36.501427, 18.800220>,  <45.381714, 35.852993, 18.916044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563251, 36.501427, 18.800220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776253, 36.409115, 19.125965>,  <45.904053, 36.353729, 19.321411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.776253, 36.409115, 19.125965>,  <45.563251, 36.501427, 18.800220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.776253, 36.409115, 19.125965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690885, 0.674339, -0.260662,
		-0.489000, 0.701433, 0.518528,
		0.532500, -0.230779, 0.814361,
		45.936005, 36.339882, 19.370274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.833130, 37.116680, 18.814690>,  <45.563251, 36.501427, 18.800220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.833130, 37.116680, 18.814690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.035412, 36.871124, 19.057144>,  <46.156780, 36.723789, 19.202618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.035412, 36.871124, 19.057144>,  <45.833130, 37.116680, 18.814690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.035412, 36.871124, 19.057144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802292, 0.592951, -0.068827,
		-0.317157, 0.521104, 0.792378,
		0.505707, -0.613889, 0.606136,
		46.187122, 36.686958, 19.238985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.986118, 37.496033, 19.362305>,  <45.833130, 37.116680, 18.814690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.986118, 37.496033, 19.362305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239269, 37.190456, 19.311932>,  <46.391159, 37.007111, 19.281708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239269, 37.190456, 19.311932>,  <45.986118, 37.496033, 19.362305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.239269, 37.190456, 19.311932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767440, 0.640486, -0.028543,
		0.102464, -0.078582, 0.991628,
		0.632880, -0.763939, -0.125934,
		46.429134, 36.961273, 19.274151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.484673, 37.672035, 19.782200>,  <45.986118, 37.496033, 19.362305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.484673, 37.672035, 19.782200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.650276, 37.405048, 19.534626>,  <46.749638, 37.244858, 19.386082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.650276, 37.405048, 19.534626>,  <46.484673, 37.672035, 19.782200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.650276, 37.405048, 19.534626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756178, 0.630711, -0.174354,
		0.506746, -0.395841, 0.765845,
		0.414010, -0.667468, -0.618936,
		46.774479, 37.204807, 19.348946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.144451, 37.685112, 20.022423>,  <46.484673, 37.672035, 19.782200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.144451, 37.685112, 20.022423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.185299, 37.493557, 19.673656>,  <47.209808, 37.378624, 19.464397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.185299, 37.493557, 19.673656>,  <47.144451, 37.685112, 20.022423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.185299, 37.493557, 19.673656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853952, 0.491769, -0.170083,
		0.510232, -0.727205, 0.459168,
		0.102120, -0.478889, -0.871915,
		47.215935, 37.349892, 19.412083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.879196, 37.419361, 19.972466>,  <47.144451, 37.685112, 20.022423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.879196, 37.419361, 19.972466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.761402, 37.465439, 19.592991>,  <47.690723, 37.493084, 19.365307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.761402, 37.465439, 19.592991>,  <47.879196, 37.419361, 19.972466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.761402, 37.465439, 19.592991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820994, 0.538587, -0.189455,
		0.489127, -0.834659, -0.253179,
		-0.294489, 0.115191, -0.948687,
		47.673054, 37.499996, 19.308384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.593971, 37.708794, 19.665625>,  <47.879196, 37.419361, 19.972466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.593971, 37.708794, 19.665625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.312386, 37.761116, 19.386391>,  <48.143433, 37.792507, 19.218851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.312386, 37.761116, 19.386391>,  <48.593971, 37.708794, 19.665625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.312386, 37.761116, 19.386391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573113, 0.685154, -0.449561,
		0.419492, -0.716557, -0.557290,
		-0.703966, 0.130803, -0.698085,
		48.101196, 37.800358, 19.176966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.928902, 37.582340, 19.081680>,  <48.593971, 37.708794, 19.665625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.928902, 37.582340, 19.081680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.608810, 37.800018, 18.980888>,  <48.416756, 37.930626, 18.920414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.608810, 37.800018, 18.980888>,  <48.928902, 37.582340, 19.081680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.608810, 37.800018, 18.980888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593367, 0.657597, -0.464199,
		-0.086912, -0.520981, -0.849132,
		-0.800226, 0.544192, -0.251980,
		48.368744, 37.963276, 18.905294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.932243, 37.703491, 18.285664>,  <48.928902, 37.582340, 19.081680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.932243, 37.703491, 18.285664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.731339, 37.978287, 18.495720>,  <48.610794, 38.143166, 18.621754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.731339, 37.978287, 18.495720>,  <48.932243, 37.703491, 18.285664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.731339, 37.978287, 18.495720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620999, 0.709178, -0.333807,
		-0.601742, 0.158453, -0.782815,
		-0.502262, 0.686993, 0.525141,
		48.580658, 38.184383, 18.653263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.024754, 38.325928, 17.868126>,  <48.932243, 37.703491, 18.285664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.024754, 38.325928, 17.868126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.954575, 38.389805, 18.256706>,  <48.912468, 38.428131, 18.489855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.954575, 38.389805, 18.256706>,  <49.024754, 38.325928, 17.868126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.954575, 38.389805, 18.256706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617879, 0.786075, -0.017623,
		-0.766448, 0.597147, -0.236587,
		-0.175452, 0.159690, 0.971450,
		48.901939, 38.437714, 18.548141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.801540, 38.946098, 17.986593>,  <49.024754, 38.325928, 17.868126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.801540, 38.946098, 17.986593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.941414, 38.868118, 18.353138>,  <49.025337, 38.821331, 18.573065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.941414, 38.868118, 18.353138>,  <48.801540, 38.946098, 17.986593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.941414, 38.868118, 18.353138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439358, 0.898008, 0.023386,
		-0.827458, 0.394433, 0.399669,
		0.349682, -0.194948, 0.916361,
		49.046318, 38.809635, 18.628046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.565742, 39.477097, 18.422365>,  <48.801540, 38.946098, 17.986593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.565742, 39.477097, 18.422365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.900417, 39.318661, 18.573662>,  <49.101223, 39.223598, 18.664440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.900417, 39.318661, 18.573662>,  <48.565742, 39.477097, 18.422365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.900417, 39.318661, 18.573662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314867, 0.912960, 0.259543,
		-0.448120, -0.098061, 0.888579,
		0.836688, -0.396091, 0.378239,
		49.151424, 39.199833, 18.687134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.717552, 39.799721, 19.096100>,  <48.565742, 39.477097, 18.422365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.717552, 39.799721, 19.096100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.075233, 39.664253, 18.978992>,  <49.289841, 39.582973, 18.908728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.075233, 39.664253, 18.978992>,  <48.717552, 39.799721, 19.096100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.075233, 39.664253, 18.978992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423787, 0.851127, 0.309819,
		0.144257, -0.401111, 0.904599,
		0.894200, -0.338664, -0.292767,
		49.343494, 39.562653, 18.891163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.381271, 40.329872, 18.805250>,  <48.717552, 39.799721, 19.096100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.381271, 40.329872, 18.805250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.181297, 40.538342, 19.081928>,  <48.061314, 40.663425, 19.247936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.181297, 40.538342, 19.081928>,  <48.381271, 40.329872, 18.805250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.181297, 40.538342, 19.081928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854705, -0.167959, -0.491192,
		-0.139819, -0.836761, 0.529417,
		-0.499931, 0.521173, 0.691700,
		48.031319, 40.694695, 19.289438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.910370, 40.049789, 19.311104>,  <48.381271, 40.329872, 18.805250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.910370, 40.049789, 19.311104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753181, 40.413513, 19.256359>,  <47.658867, 40.631748, 19.223513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753181, 40.413513, 19.256359>,  <47.910370, 40.049789, 19.311104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.753181, 40.413513, 19.256359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778393, -0.408181, -0.476962,
		-0.489570, -0.080900, 0.868203,
		-0.392970, 0.909310, -0.136861,
		47.635292, 40.686306, 19.215302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.291775, 39.935219, 19.375843>,  <47.910370, 40.049789, 19.311104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.291775, 39.935219, 19.375843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.277145, 40.283112, 19.178978>,  <47.268368, 40.491848, 19.060858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.277145, 40.283112, 19.178978>,  <47.291775, 39.935219, 19.375843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.277145, 40.283112, 19.178978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799271, -0.321084, -0.508007,
		-0.599857, 0.374791, 0.706897,
		-0.036577, 0.869734, -0.492164,
		47.266171, 40.544033, 19.031328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.603886, 40.136478, 19.323492>,  <47.291775, 39.935219, 19.375843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.603886, 40.136478, 19.323492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763031, 40.353893, 19.027851>,  <46.858517, 40.484344, 18.850466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763031, 40.353893, 19.027851>,  <46.603886, 40.136478, 19.323492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.763031, 40.353893, 19.027851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774753, -0.232439, -0.587988,
		-0.491391, 0.806558, 0.328632,
		0.397859, 0.543540, -0.739102,
		46.882389, 40.516956, 18.806120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.152569, 40.609947, 19.139122>,  <46.603886, 40.136478, 19.323492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.152569, 40.609947, 19.139122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368572, 40.517670, 18.815350>,  <46.498173, 40.462303, 18.621086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.368572, 40.517670, 18.815350>,  <46.152569, 40.609947, 19.139122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368572, 40.517670, 18.815350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829535, -0.308542, -0.465483,
		-0.142361, 0.922813, -0.357979,
		0.540005, -0.230689, -0.809430,
		46.530575, 40.448463, 18.572521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.819775, 41.042164, 18.582645>,  <46.152569, 40.609947, 19.139122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.819775, 41.042164, 18.582645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007271, 40.704311, 18.479202>,  <46.119770, 40.501598, 18.417137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.007271, 40.704311, 18.479202>,  <45.819775, 41.042164, 18.582645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.007271, 40.704311, 18.479202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880136, -0.421688, -0.218037,
		0.075109, 0.329814, -0.941053,
		0.468742, -0.844632, -0.258609,
		46.147892, 40.450920, 18.401619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477596, 40.696114, 17.966646>,  <45.819775, 41.042164, 18.582645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477596, 40.696114, 17.966646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651066, 40.419666, 18.197914>,  <45.755150, 40.253799, 18.336676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.651066, 40.419666, 18.197914>,  <45.477596, 40.696114, 17.966646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651066, 40.419666, 18.197914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841796, -0.539624, -0.013623,
		0.321410, -0.480794, -0.815802,
		0.433676, -0.691117, 0.578171,
		45.781170, 40.212330, 18.371365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469559, 40.105408, 17.573591>,  <45.477596, 40.696114, 17.966646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469559, 40.105408, 17.573591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468353, 39.994812, 17.957996>,  <45.467628, 39.928455, 18.188639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468353, 39.994812, 17.957996>,  <45.469559, 40.105408, 17.573591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468353, 39.994812, 17.957996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772244, -0.609911, -0.177895,
		0.635318, -0.742673, -0.211677,
		-0.003013, -0.276487, 0.961013,
		45.467449, 39.911865, 18.246300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348991, 39.373043, 17.583288>,  <45.469559, 40.105408, 17.573591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348991, 39.373043, 17.583288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276009, 39.476215, 17.962799>,  <45.232220, 39.538120, 18.190506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276009, 39.476215, 17.962799>,  <45.348991, 39.373043, 17.583288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276009, 39.476215, 17.962799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802781, -0.596224, 0.007707,
		0.567673, -0.760255, 0.315847,
		-0.182456, 0.257931, 0.948779,
		45.221272, 39.553596, 18.247433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077942, 38.721081, 17.797850>,  <45.348991, 39.373043, 17.583288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077942, 38.721081, 17.797850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983360, 38.983860, 18.084209>,  <44.926609, 39.141525, 18.256025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983360, 38.983860, 18.084209>,  <45.077942, 38.721081, 17.797850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983360, 38.983860, 18.084209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780711, -0.567078, 0.262515,
		0.578427, -0.496835, 0.646975,
		-0.236459, 0.656946, 0.715898,
		44.912422, 39.180943, 18.298979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.105427, 38.351578, 18.446026>,  <45.077942, 38.721081, 17.797850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.105427, 38.351578, 18.446026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832504, 38.643700, 18.459335>,  <44.668751, 38.818974, 18.467321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832504, 38.643700, 18.459335>,  <45.105427, 38.351578, 18.446026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.832504, 38.643700, 18.459335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630291, -0.610710, 0.479340,
		0.370385, 0.306086, 0.876998,
		-0.682311, 0.730305, 0.033274,
		44.627811, 38.862793, 18.469318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797089, 38.277527, 19.169477>,  <45.105427, 38.351578, 18.446026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797089, 38.277527, 19.169477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525436, 38.527668, 19.015739>,  <44.362446, 38.677753, 18.923496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525436, 38.527668, 19.015739>,  <44.797089, 38.277527, 19.169477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525436, 38.527668, 19.015739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688088, -0.360063, 0.629991,
		0.255577, 0.692308, 0.674826,
		-0.679128, 0.625351, -0.384345,
		44.321697, 38.715275, 18.900436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306580, 38.550110, 19.719185>,  <44.797089, 38.277527, 19.169477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306580, 38.550110, 19.719185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108330, 38.600643, 19.375465>,  <43.989380, 38.630962, 19.169233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.108330, 38.600643, 19.375465>,  <44.306580, 38.550110, 19.719185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108330, 38.600643, 19.375465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812427, -0.417269, 0.407245,
		-0.307108, 0.899959, 0.309448,
		-0.495627, 0.126336, -0.859298,
		43.959641, 38.638542, 19.117676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661583, 38.687923, 19.979053>,  <44.306580, 38.550110, 19.719185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661583, 38.687923, 19.979053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604393, 38.611435, 19.590622>,  <43.570080, 38.565544, 19.357563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604393, 38.611435, 19.590622>,  <43.661583, 38.687923, 19.979053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604393, 38.611435, 19.590622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924771, -0.323782, 0.199909,
		-0.352644, 0.926608, -0.130541,
		-0.142970, -0.191217, -0.971080,
		43.561501, 38.554070, 19.299297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107681, 39.073418, 19.763105>,  <43.661583, 38.687923, 19.979053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107681, 39.073418, 19.763105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148045, 38.741390, 19.543724>,  <43.172264, 38.542171, 19.412096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148045, 38.741390, 19.543724>,  <43.107681, 39.073418, 19.763105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148045, 38.741390, 19.543724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883463, -0.328264, 0.334268,
		-0.457503, 0.450806, -0.766463,
		0.100912, -0.830070, -0.548452,
		43.178318, 38.492371, 19.379189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366138, 38.916683, 19.648705>,  <43.107681, 39.073418, 19.763105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366138, 38.916683, 19.648705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573284, 38.593613, 19.535938>,  <42.697571, 38.399773, 19.468279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573284, 38.593613, 19.535938>,  <42.366138, 38.916683, 19.648705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573284, 38.593613, 19.535938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766745, -0.584374, 0.265724,
		-0.379363, 0.078548, -0.921908,
		0.517867, -0.807674, -0.281916,
		42.728645, 38.351311, 19.451363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855221, 38.456009, 19.249327>,  <42.366138, 38.916683, 19.648705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855221, 38.456009, 19.249327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163433, 38.240795, 19.386028>,  <42.348362, 38.111668, 19.468050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163433, 38.240795, 19.386028>,  <41.855221, 38.456009, 19.249327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163433, 38.240795, 19.386028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591876, -0.802954, 0.070342,
		0.236567, -0.256477, -0.937153,
		0.770532, -0.538038, 0.341755,
		42.394592, 38.079384, 19.488554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858559, 37.843655, 18.952375>,  <41.855221, 38.456009, 19.249327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858559, 37.843655, 18.952375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076271, 37.758701, 19.277004>,  <42.206898, 37.707729, 19.471783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.076271, 37.758701, 19.277004>,  <41.858559, 37.843655, 18.952375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076271, 37.758701, 19.277004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613833, -0.760236, 0.212722,
		0.571810, -0.613952, -0.544147,
		0.544281, -0.212379, 0.811574,
		42.239555, 37.694988, 19.520477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017090, 37.094398, 18.970863>,  <41.858559, 37.843655, 18.952375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017090, 37.094398, 18.970863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047104, 37.253956, 19.336433>,  <42.065113, 37.349689, 19.555775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047104, 37.253956, 19.336433>,  <42.017090, 37.094398, 18.970863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047104, 37.253956, 19.336433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614871, -0.703029, 0.357328,
		0.785049, -0.588759, 0.192512,
		0.075039, 0.398890, 0.913924,
		42.069614, 37.373623, 19.610611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106182, 36.543907, 19.461645>,  <42.017090, 37.094398, 18.970863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106182, 36.543907, 19.461645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000927, 36.865063, 19.675606>,  <41.937775, 37.057758, 19.803982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000927, 36.865063, 19.675606>,  <42.106182, 36.543907, 19.461645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000927, 36.865063, 19.675606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530743, -0.583477, 0.614708,
		0.805648, -0.122141, 0.579666,
		-0.263141, 0.802892, 0.534903,
		41.921986, 37.105930, 19.836077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130157, 36.318104, 20.056881>,  <42.106182, 36.543907, 19.461645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130157, 36.318104, 20.056881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929409, 36.656342, 20.129654>,  <41.808960, 36.859283, 20.173317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929409, 36.656342, 20.129654>,  <42.130157, 36.318104, 20.056881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929409, 36.656342, 20.129654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564405, -0.479546, 0.671925,
		0.655420, 0.234535, 0.717926,
		-0.501868, 0.845594, 0.181931,
		41.778847, 36.910019, 20.184233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040527, 36.215134, 20.757044>,  <42.130157, 36.318104, 20.056881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040527, 36.215134, 20.757044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778290, 36.490543, 20.633022>,  <41.620945, 36.655788, 20.558609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778290, 36.490543, 20.633022>,  <42.040527, 36.215134, 20.757044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778290, 36.490543, 20.633022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703333, -0.407367, 0.582559,
		0.274799, 0.599994, 0.751328,
		-0.655598, 0.688520, -0.310052,
		41.581612, 36.697098, 20.540007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818275, 36.705795, 21.315653>,  <42.040527, 36.215134, 20.757044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818275, 36.705795, 21.315653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541676, 36.661106, 21.030178>,  <41.375717, 36.634293, 20.858892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541676, 36.661106, 21.030178>,  <41.818275, 36.705795, 21.315653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541676, 36.661106, 21.030178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612870, -0.432246, 0.661478,
		-0.382390, 0.894808, 0.230426,
		-0.691497, -0.111722, -0.713688,
		41.334225, 36.627590, 20.816072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180603, 36.819824, 21.710180>,  <41.818275, 36.705795, 21.315653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180603, 36.819824, 21.710180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086666, 36.662655, 21.354549>,  <41.030304, 36.568352, 21.141171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086666, 36.662655, 21.354549>,  <41.180603, 36.819824, 21.710180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086666, 36.662655, 21.354549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826969, -0.399933, 0.395190,
		-0.510852, 0.828048, -0.231013,
		-0.234847, -0.392924, -0.889077,
		41.016212, 36.544777, 21.087826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472374, 36.847782, 21.626318>,  <41.180603, 36.819824, 21.710180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472374, 36.847782, 21.626318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550144, 36.571861, 21.347355>,  <40.596806, 36.406311, 21.179977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550144, 36.571861, 21.347355>,  <40.472374, 36.847782, 21.626318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550144, 36.571861, 21.347355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617128, -0.638657, 0.459641,
		-0.762464, 0.341024, -0.549865,
		0.194427, -0.689797, -0.697408,
		40.608471, 36.364922, 21.138132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799335, 36.640503, 21.423969>,  <40.472374, 36.847782, 21.626318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799335, 36.640503, 21.423969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058712, 36.351501, 21.328041>,  <40.214340, 36.178101, 21.270485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.058712, 36.351501, 21.328041>,  <39.799335, 36.640503, 21.423969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058712, 36.351501, 21.328041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572479, -0.670460, 0.471964,
		-0.501783, -0.168751, -0.848373,
		0.648445, -0.722500, -0.239820,
		40.253246, 36.134750, 21.256096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429028, 36.055595, 20.898232>,  <39.799335, 36.640503, 21.423969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429028, 36.055595, 20.898232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734314, 35.863575, 21.071228>,  <39.917488, 35.748363, 21.175026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734314, 35.863575, 21.071228>,  <39.429028, 36.055595, 20.898232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734314, 35.863575, 21.071228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645915, -0.584554, 0.491010,
		0.017104, -0.654100, -0.756215,
		0.763218, -0.480052, 0.432491,
		39.963280, 35.719559, 21.200975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302071, 35.386997, 20.660957>,  <39.429028, 36.055595, 20.898232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302071, 35.386997, 20.660957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501774, 35.408043, 21.006901>,  <39.621593, 35.420670, 21.214466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501774, 35.408043, 21.006901>,  <39.302071, 35.386997, 20.660957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501774, 35.408043, 21.006901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694323, -0.572815, 0.435659,
		0.518326, -0.817994, -0.249447,
		0.499254, 0.052617, 0.864857,
		39.651550, 35.423828, 21.266357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248383, 34.694637, 20.915451>,  <39.302071, 35.386997, 20.660957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.248383, 34.694637, 20.915451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330433, 34.934055, 21.225204>,  <39.379662, 35.077705, 21.411057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330433, 34.934055, 21.225204>,  <39.248383, 34.694637, 20.915451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330433, 34.934055, 21.225204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712431, -0.451198, 0.537460,
		0.671094, -0.661938, 0.333872,
		0.205123, 0.598547, 0.774382,
		39.391968, 35.113621, 21.457520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256557, 34.286354, 21.515396>,  <39.248383, 34.694637, 20.915451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256557, 34.286354, 21.515396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146927, 34.660355, 21.605415>,  <39.081146, 34.884754, 21.659426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146927, 34.660355, 21.605415>,  <39.256557, 34.286354, 21.515396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146927, 34.660355, 21.605415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708112, -0.354544, 0.610635,
		0.650736, 0.008005, 0.759262,
		-0.274080, 0.935005, 0.225046,
		39.064701, 34.940857, 21.672930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511066, 34.159756, 21.503666>,  <39.256557, 34.286354, 21.515396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511066, 34.159756, 21.503666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350323, 34.086720, 21.144741>,  <38.253876, 34.042896, 20.929386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350323, 34.086720, 21.144741>,  <38.511066, 34.159756, 21.503666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350323, 34.086720, 21.144741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083768, -0.968479, 0.234586,
		-0.911862, 0.169436, 0.373897,
		-0.401859, -0.182590, -0.897313,
		38.229767, 34.031944, 20.875547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953003, 33.699951, 21.552378>,  <38.511066, 34.159756, 21.503666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953003, 33.699951, 21.552378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041714, 33.661438, 21.164246>,  <38.094940, 33.638329, 20.931366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041714, 33.661438, 21.164246>,  <37.953003, 33.699951, 21.552378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041714, 33.661438, 21.164246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129746, -0.989178, 0.068500,
		-0.966427, 0.110704, -0.231871,
		0.221778, -0.096285, -0.970332,
		38.108246, 33.632553, 20.873146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435051, 33.310108, 21.293608>,  <37.953003, 33.699951, 21.552378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435051, 33.310108, 21.293608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745392, 33.262142, 21.045841>,  <37.931595, 33.233364, 20.897182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745392, 33.262142, 21.045841>,  <37.435051, 33.310108, 21.293608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745392, 33.262142, 21.045841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195266, -0.979206, -0.055012,
		-0.599937, 0.163632, -0.783134,
		0.775852, -0.119916, -0.619414,
		37.978146, 33.226166, 20.860018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277634, 32.791100, 20.652731>,  <37.435051, 33.310108, 21.293608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277634, 32.791100, 20.652731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671719, 32.816032, 20.716568>,  <37.908169, 32.830990, 20.754869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671719, 32.816032, 20.716568>,  <37.277634, 32.791100, 20.652731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671719, 32.816032, 20.716568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051918, -0.996292, 0.068602,
		0.163277, -0.059302, -0.984796,
		0.985213, 0.062330, 0.159593,
		37.967281, 32.834732, 20.764446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644909, 32.446896, 20.763988>,  <37.277634, 32.791100, 20.652731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644909, 32.446896, 20.763988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455193, 32.782242, 20.871456>,  <36.341362, 32.983452, 20.935936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455193, 32.782242, 20.871456>,  <36.644909, 32.446896, 20.763988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455193, 32.782242, 20.871456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530380, -0.515687, 0.672878,
		0.702669, 0.176645, 0.689241,
		-0.474293, 0.838370, 0.268668,
		36.312904, 33.033752, 20.952057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715168, 32.554771, 21.505505>,  <36.644909, 32.446896, 20.763988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715168, 32.554771, 21.505505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399662, 32.785919, 21.421677>,  <36.210358, 32.924606, 21.371380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399662, 32.785919, 21.421677>,  <36.715168, 32.554771, 21.505505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399662, 32.785919, 21.421677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466607, -0.340923, 0.816118,
		0.400164, 0.741510, 0.538546,
		-0.788763, 0.577871, -0.209568,
		36.163033, 32.959282, 21.358807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486755, 32.874088, 22.166754>,  <36.715168, 32.554771, 21.505505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486755, 32.874088, 22.166754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171326, 32.875721, 21.920784>,  <35.982067, 32.876701, 21.773201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171326, 32.875721, 21.920784>,  <36.486755, 32.874088, 22.166754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171326, 32.875721, 21.920784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572056, -0.371757, 0.731129,
		-0.225617, 0.928321, 0.295494,
		-0.788574, 0.004084, -0.614926,
		35.934753, 32.876945, 21.736305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894249, 33.202660, 22.617132>,  <36.486755, 32.874088, 22.166754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894249, 33.202660, 22.617132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762638, 32.998089, 22.299595>,  <35.683674, 32.875347, 22.109074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762638, 32.998089, 22.299595>,  <35.894249, 33.202660, 22.617132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762638, 32.998089, 22.299595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687203, -0.446903, 0.572739,
		-0.647685, 0.733975, -0.204414,
		-0.329023, -0.511428, -0.793842,
		35.663933, 32.844662, 22.061441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215233, 33.295853, 22.488642>,  <35.894249, 33.202660, 22.617132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215233, 33.295853, 22.488642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274784, 32.940723, 22.314465>,  <35.310513, 32.727646, 22.209959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274784, 32.940723, 22.314465>,  <35.215233, 33.295853, 22.488642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274784, 32.940723, 22.314465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716031, -0.400491, 0.571757,
		-0.682009, 0.226669, -0.695331,
		0.148874, -0.887822, -0.435441,
		35.319447, 32.674377, 22.183832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575024, 33.133030, 22.420933>,  <35.215233, 33.295853, 22.488642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575024, 33.133030, 22.420933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786739, 32.796356, 22.378174>,  <34.913769, 32.594353, 22.352518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786739, 32.796356, 22.378174>,  <34.575024, 33.133030, 22.420933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786739, 32.796356, 22.378174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741624, -0.520163, 0.423585,
		-0.412127, -0.144922, -0.899527,
		0.529287, -0.841682, -0.106896,
		34.945526, 32.543850, 22.346106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182247, 32.656719, 22.563463>,  <34.575024, 33.133030, 22.420933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182247, 32.656719, 22.563463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487289, 32.399441, 22.591011>,  <34.670315, 32.245075, 22.607540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487289, 32.399441, 22.591011>,  <34.182247, 32.656719, 22.563463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487289, 32.399441, 22.591011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526390, -0.555163, 0.643978,
		-0.375969, -0.527351, -0.761938,
		0.762602, -0.643192, 0.068868,
		34.716068, 32.206482, 22.611671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791740, 32.030529, 22.673586>,  <34.182247, 32.656719, 22.563463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791740, 32.030529, 22.673586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168251, 31.970329, 22.794487>,  <34.394157, 31.934210, 22.867027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168251, 31.970329, 22.794487>,  <33.791740, 32.030529, 22.673586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168251, 31.970329, 22.794487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315391, -0.711515, 0.627914,
		0.120557, -0.686366, -0.717195,
		0.941273, -0.150497, 0.302252,
		34.450634, 31.925180, 22.885162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893093, 31.373777, 22.695997>,  <33.791740, 32.030529, 22.673586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893093, 31.373777, 22.695997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191875, 31.506580, 22.926414>,  <34.371147, 31.586262, 23.064665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191875, 31.506580, 22.926414>,  <33.893093, 31.373777, 22.695997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191875, 31.506580, 22.926414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288788, -0.618389, 0.730888,
		0.598877, -0.712297, -0.366031,
		0.746959, 0.332007, 0.576042,
		34.415962, 31.606182, 23.099228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268017, 30.791695, 22.999674>,  <33.893093, 31.373777, 22.695997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268017, 30.791695, 22.999674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349365, 31.096500, 23.245594>,  <34.398174, 31.279383, 23.393147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349365, 31.096500, 23.245594>,  <34.268017, 30.791695, 22.999674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349365, 31.096500, 23.245594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229972, -0.573179, 0.786498,
		0.951711, -0.301336, 0.058675,
		0.203369, 0.762012, 0.614800,
		34.410378, 31.325104, 23.430035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676003, 30.506031, 23.676233>,  <34.268017, 30.791695, 22.999674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676003, 30.506031, 23.676233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533688, 30.869583, 23.763275>,  <34.448299, 31.087715, 23.815500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533688, 30.869583, 23.763275>,  <34.676003, 30.506031, 23.676233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533688, 30.869583, 23.763275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397512, -0.357897, 0.844923,
		0.845815, 0.214109, 0.488625,
		-0.355783, 0.908882, 0.217604,
		34.426952, 31.142248, 23.828556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902508, 30.557375, 24.291904>,  <34.676003, 30.506031, 23.676233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902508, 30.557375, 24.291904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597092, 30.814892, 24.271755>,  <34.413841, 30.969402, 24.259665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.597092, 30.814892, 24.271755>,  <34.902508, 30.557375, 24.291904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597092, 30.814892, 24.271755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345623, -0.341520, 0.874019,
		0.545483, 0.684758, 0.483274,
		-0.763539, 0.643793, -0.050375,
		34.368031, 31.008030, 24.256643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845245, 30.759325, 24.929766>,  <34.902508, 30.557375, 24.291904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845245, 30.759325, 24.929766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490425, 30.875755, 24.786427>,  <34.277534, 30.945614, 24.700424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490425, 30.875755, 24.786427>,  <34.845245, 30.759325, 24.929766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490425, 30.875755, 24.786427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427327, -0.223909, 0.875932,
		0.174728, 0.930128, 0.323004,
		-0.887052, 0.291078, -0.358346,
		34.224308, 30.963079, 24.678923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652027, 31.270275, 25.436695>,  <34.845245, 30.759325, 24.929766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652027, 31.270275, 25.436695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313473, 31.143589, 25.265430>,  <34.110340, 31.067577, 25.162672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313473, 31.143589, 25.265430>,  <34.652027, 31.270275, 25.436695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313473, 31.143589, 25.265430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401762, -0.148029, 0.903701,
		-0.349597, 0.936898, -0.001955,
		-0.846386, -0.316716, -0.428160,
		34.059555, 31.048574, 25.136982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028778, 31.627176, 25.735395>,  <34.652027, 31.270275, 25.436695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028778, 31.627176, 25.735395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923546, 31.266090, 25.599220>,  <33.860405, 31.049438, 25.517515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923546, 31.266090, 25.599220>,  <34.028778, 31.627176, 25.735395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923546, 31.266090, 25.599220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357823, -0.236402, 0.903370,
		-0.895964, 0.359476, -0.260818,
		-0.263082, -0.902713, -0.340437,
		33.844620, 30.995277, 25.497089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502884, 31.373714, 26.207190>,  <34.028778, 31.627176, 25.735395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502884, 31.373714, 26.207190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610100, 31.045307, 26.005562>,  <33.674427, 30.848263, 25.884584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610100, 31.045307, 26.005562>,  <33.502884, 31.373714, 26.207190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610100, 31.045307, 26.005562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218052, -0.561337, 0.798345,
		-0.938408, -0.104072, -0.329483,
		0.268037, -0.821017, -0.504070,
		33.690510, 30.799002, 25.854342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958347, 30.868412, 26.274467>,  <33.502884, 31.373714, 26.207190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958347, 30.868412, 26.274467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302349, 30.682873, 26.189384>,  <33.508751, 30.571550, 26.138334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302349, 30.682873, 26.189384>,  <32.958347, 30.868412, 26.274467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302349, 30.682873, 26.189384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058050, -0.503060, 0.862300,
		-0.507024, -0.729207, -0.459547,
		0.859975, -0.463884, -0.212733,
		33.560349, 30.543718, 26.125572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860878, 30.193363, 26.524628>,  <32.958347, 30.868412, 26.274467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860878, 30.193363, 26.524628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255749, 30.158024, 26.471443>,  <33.492672, 30.136820, 26.439531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255749, 30.158024, 26.471443>,  <32.860878, 30.193363, 26.524628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255749, 30.158024, 26.471443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053268, -0.602867, 0.796062,
		-0.150489, -0.792935, -0.590429,
		0.987175, -0.088348, -0.132963,
		33.551903, 30.131519, 26.431555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888889, 29.493223, 26.665283>,  <32.860878, 30.193363, 26.524628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888889, 29.493223, 26.665283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240898, 29.677872, 26.709949>,  <33.452103, 29.788660, 26.736750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240898, 29.677872, 26.709949>,  <32.888889, 29.493223, 26.665283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240898, 29.677872, 26.709949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239259, -0.634005, 0.735386,
		0.410267, -0.620438, -0.668385,
		0.880021, 0.461622, 0.111666,
		33.504906, 29.816359, 26.743448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323219, 28.937107, 26.772974>,  <32.888889, 29.493223, 26.665283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323219, 28.937107, 26.772974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529228, 29.259167, 26.890610>,  <33.652832, 29.452402, 26.961191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.529228, 29.259167, 26.890610>,  <33.323219, 28.937107, 26.772974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529228, 29.259167, 26.890610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376852, -0.520838, 0.765970,
		0.769894, -0.283661, -0.571664,
		0.515020, 0.805149, 0.294092,
		33.683735, 29.500711, 26.978838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128452, 28.807545, 26.742970>,  <33.323219, 28.937107, 26.772974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128452, 28.807545, 26.742970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045586, 29.109154, 26.992298>,  <33.995865, 29.290119, 27.141895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045586, 29.109154, 26.992298>,  <34.128452, 28.807545, 26.742970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045586, 29.109154, 26.992298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442558, -0.495994, 0.747083,
		0.872483, 0.430626, -0.230946,
		-0.207165, 0.754023, 0.623323,
		33.983437, 29.335361, 27.179295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748009, 28.952793, 27.158379>,  <34.128452, 28.807545, 26.742970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748009, 28.952793, 27.158379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467609, 29.135738, 27.377254>,  <34.299370, 29.245506, 27.508579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467609, 29.135738, 27.377254>,  <34.748009, 28.952793, 27.158379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467609, 29.135738, 27.377254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457432, -0.300287, 0.837009,
		0.547130, 0.837047, 0.001290,
		-0.701003, 0.457362, 0.547188,
		34.257309, 29.272947, 27.541410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090878, 28.943638, 27.815990>,  <34.748009, 28.952793, 27.158379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090878, 28.943638, 27.815990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706429, 29.034607, 27.878635>,  <34.475761, 29.089188, 27.916222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706429, 29.034607, 27.878635>,  <35.090878, 28.943638, 27.815990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706429, 29.034607, 27.878635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048628, -0.418901, 0.906729,
		0.271815, 0.879091, 0.391555,
		-0.961120, 0.227421, 0.156612,
		34.418091, 29.102833, 27.925619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062634, 29.352228, 28.447834>,  <35.090878, 28.943638, 27.815990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062634, 29.352228, 28.447834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719868, 29.155415, 28.386375>,  <34.514210, 29.037327, 28.349501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719868, 29.155415, 28.386375>,  <35.062634, 29.352228, 28.447834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719868, 29.155415, 28.386375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011796, -0.279277, 0.960138,
		-0.515329, 0.824565, 0.233512,
		-0.856911, -0.492033, -0.153647,
		34.462795, 29.007805, 28.340281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715298, 29.504734, 29.018373>,  <35.062634, 29.352228, 28.447834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715298, 29.504734, 29.018373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522583, 29.189724, 28.864651>,  <34.406956, 29.000719, 28.772417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.522583, 29.189724, 28.864651>,  <34.715298, 29.504734, 29.018373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522583, 29.189724, 28.864651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082395, -0.395906, 0.914587,
		-0.872408, 0.472298, 0.125853,
		-0.481784, -0.787523, -0.384306,
		34.378048, 28.953466, 28.749359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192230, 29.393309, 29.511919>,  <34.715298, 29.504734, 29.018373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192230, 29.393309, 29.511919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217693, 29.040070, 29.325977>,  <34.232971, 28.828127, 29.214413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217693, 29.040070, 29.325977>,  <34.192230, 29.393309, 29.511919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217693, 29.040070, 29.325977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033386, -0.463654, 0.885387,
		-0.997413, -0.071880, -0.000032,
		0.063656, -0.883096, -0.464854,
		34.236790, 28.775141, 29.186522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821075, 28.853859, 29.857830>,  <34.192230, 29.393309, 29.511919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821075, 28.853859, 29.857830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037567, 28.601135, 29.635880>,  <34.167461, 28.449501, 29.502708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037567, 28.601135, 29.635880>,  <33.821075, 28.853859, 29.857830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037567, 28.601135, 29.635880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060327, -0.687357, 0.723810,
		-0.838708, -0.358273, -0.410133,
		0.541229, -0.631808, -0.554879,
		34.199936, 28.411592, 29.469416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490379, 28.183945, 29.884907>,  <33.821075, 28.853859, 29.857830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490379, 28.183945, 29.884907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876083, 28.117580, 29.802277>,  <34.107506, 28.077763, 29.752699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876083, 28.117580, 29.802277>,  <33.490379, 28.183945, 29.884907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876083, 28.117580, 29.802277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009122, -0.800002, 0.599927,
		-0.264795, -0.576602, -0.772925,
		0.964261, -0.165909, -0.206577,
		34.165363, 28.067808, 29.740303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547779, 27.523678, 29.616278>,  <33.490379, 28.183945, 29.884907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547779, 27.523678, 29.616278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923038, 27.590767, 29.737434>,  <34.148193, 27.631020, 29.810129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923038, 27.590767, 29.737434>,  <33.547779, 27.523678, 29.616278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923038, 27.590767, 29.737434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032891, -0.914052, 0.404262,
		0.344663, -0.369296, -0.863034,
		0.938150, 0.167720, 0.302893,
		34.204483, 27.641083, 29.828302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824898, 26.814262, 29.550331>,  <33.547779, 27.523678, 29.616278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824898, 26.814262, 29.550331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069042, 27.019840, 29.791435>,  <34.215527, 27.143187, 29.936098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069042, 27.019840, 29.791435>,  <33.824898, 26.814262, 29.550331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069042, 27.019840, 29.791435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178045, -0.830483, 0.527824,
		0.771856, -0.214843, -0.598398,
		0.610359, 0.513946, 0.602762,
		34.252151, 27.174025, 29.972263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422859, 26.449558, 29.510881>,  <33.824898, 26.814262, 29.550331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422859, 26.449558, 29.510881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431923, 26.648788, 29.857616>,  <34.437359, 26.768326, 30.065657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431923, 26.648788, 29.857616>,  <34.422859, 26.449558, 29.510881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431923, 26.648788, 29.857616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212262, -0.849689, 0.482673,
		0.976950, 0.173062, -0.124972,
		0.022654, 0.498075, 0.866838,
		34.438721, 26.798210, 30.117668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728596, 25.958385, 29.863026>,  <34.422859, 26.449558, 29.510881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728596, 25.958385, 29.863026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604496, 26.214226, 30.144352>,  <34.530037, 26.367729, 30.313148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604496, 26.214226, 30.144352>,  <34.728596, 25.958385, 29.863026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604496, 26.214226, 30.144352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133397, -0.703214, 0.698352,
		0.941248, 0.310487, 0.132854,
		-0.310254, 0.639600, 0.703317,
		34.511421, 26.406105, 30.355347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144135, 25.838305, 30.397732>,  <34.728596, 25.958385, 29.863026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144135, 25.838305, 30.397732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825352, 26.028145, 30.547192>,  <34.634083, 26.142050, 30.636868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825352, 26.028145, 30.547192>,  <35.144135, 25.838305, 30.397732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825352, 26.028145, 30.547192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078959, -0.695134, 0.714531,
		0.598856, 0.539945, 0.591465,
		-0.796955, 0.474602, 0.373651,
		34.586266, 26.170527, 30.659286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273205, 25.938601, 31.128353>,  <35.144135, 25.838305, 30.397732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273205, 25.938601, 31.128353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877018, 25.946526, 31.073826>,  <34.639305, 25.951281, 31.041109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877018, 25.946526, 31.073826>,  <35.273205, 25.938601, 31.128353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877018, 25.946526, 31.073826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126487, -0.522720, 0.843069,
		-0.054550, 0.852274, 0.520244,
		-0.990467, 0.019815, -0.136316,
		34.579876, 25.952471, 31.032930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014198, 26.123280, 31.797281>,  <35.273205, 25.938601, 31.128353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014198, 26.123280, 31.797281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706921, 25.972565, 31.590244>,  <34.522552, 25.882135, 31.466022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706921, 25.972565, 31.590244>,  <35.014198, 26.123280, 31.797281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706921, 25.972565, 31.590244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223304, -0.600006, 0.768198,
		-0.600006, 0.705709, 0.376786,
		-0.768198, -0.376786, -0.517595,
		34.476460, 25.859529, 31.434965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425423, 26.231365, 32.224674>,  <35.014198, 26.123280, 31.797281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425423, 26.231365, 32.224674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327320, 25.929638, 31.981083>,  <34.268459, 25.748602, 31.834929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327320, 25.929638, 31.981083>,  <34.425423, 26.231365, 32.224674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327320, 25.929638, 31.981083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310988, -0.533746, 0.786386,
		-0.918224, 0.382251, -0.103679,
		-0.245259, -0.754320, -0.608974,
		34.253742, 25.703342, 31.798391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689850, 26.034853, 32.410461>,  <34.425423, 26.231365, 32.224674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689850, 26.034853, 32.410461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832134, 25.723160, 32.204060>,  <33.917503, 25.536144, 32.080219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832134, 25.723160, 32.204060>,  <33.689850, 26.034853, 32.410461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832134, 25.723160, 32.204060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328709, -0.621152, 0.711422,
		-0.874883, -0.083445, -0.477092,
		0.355711, -0.779235, -0.516006,
		33.938847, 25.489389, 32.049259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168415, 25.503271, 32.387135>,  <33.689850, 26.034853, 32.410461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168415, 25.503271, 32.387135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522217, 25.321140, 32.346485>,  <33.734497, 25.211863, 32.322094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522217, 25.321140, 32.346485>,  <33.168415, 25.503271, 32.387135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522217, 25.321140, 32.346485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246568, -0.641177, 0.726702,
		-0.396046, -0.617715, -0.679394,
		0.884506, -0.455325, -0.101627,
		33.787567, 25.184544, 32.315998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115540, 24.806623, 32.538548>,  <33.168415, 25.503271, 32.387135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115540, 24.806623, 32.538548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515266, 24.814232, 32.551182>,  <33.755104, 24.818796, 32.558762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515266, 24.814232, 32.551182>,  <33.115540, 24.806623, 32.538548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515266, 24.814232, 32.551182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008552, -0.713761, 0.700337,
		0.035867, -0.700131, -0.713113,
		0.999320, 0.019020, 0.031588,
		33.815063, 24.819939, 32.560658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378567, 24.122824, 32.589924>,  <33.115540, 24.806623, 32.538548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378567, 24.122824, 32.589924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702656, 24.327412, 32.704422>,  <33.897110, 24.450165, 32.773121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702656, 24.327412, 32.704422>,  <33.378567, 24.122824, 32.589924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702656, 24.327412, 32.704422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145077, -0.648175, 0.747544,
		0.567880, -0.564152, -0.599370,
		0.810225, 0.511470, 0.286241,
		33.945724, 24.480852, 32.790295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843468, 23.665689, 32.876671>,  <33.378567, 24.122824, 32.589924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843468, 23.665689, 32.876671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039696, 23.982792, 33.021378>,  <34.157433, 24.173054, 33.108204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039696, 23.982792, 33.021378>,  <33.843468, 23.665689, 32.876671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039696, 23.982792, 33.021378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159079, -0.489657, 0.857280,
		0.856758, -0.363006, -0.366323,
		0.490571, 0.792756, 0.361771,
		34.186867, 24.220619, 33.129910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552505, 23.519133, 33.101307>,  <33.843468, 23.665689, 32.876671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552505, 23.519133, 33.101307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396423, 23.829563, 33.299477>,  <34.302773, 24.015821, 33.418377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396423, 23.829563, 33.299477>,  <34.552505, 23.519133, 33.101307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396423, 23.829563, 33.299477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209791, -0.448982, 0.868564,
		0.896508, 0.442855, 0.012383,
		-0.390208, 0.776076, 0.495423,
		34.279362, 24.062386, 33.448105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975334, 23.683313, 33.585945>,  <34.552505, 23.519133, 33.101307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975334, 23.683313, 33.585945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626488, 23.840118, 33.703072>,  <34.417179, 23.934202, 33.773346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626488, 23.840118, 33.703072>,  <34.975334, 23.683313, 33.585945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626488, 23.840118, 33.703072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127121, -0.396355, 0.909254,
		0.472496, 0.830198, 0.295835,
		-0.872117, 0.392012, 0.292812,
		34.364853, 23.957722, 33.790916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023273, 24.137098, 34.144321>,  <34.975334, 23.683313, 33.585945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023273, 24.137098, 34.144321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663490, 23.975338, 34.210567>,  <34.447620, 23.878281, 34.250317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663490, 23.975338, 34.210567>,  <35.023273, 24.137098, 34.144321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663490, 23.975338, 34.210567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257194, -0.183484, 0.948781,
		-0.353301, 0.895987, 0.269046,
		-0.899461, -0.404402, 0.165617,
		34.393654, 23.854017, 34.260254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812599, 24.197628, 34.829124>,  <35.023273, 24.137098, 34.144321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812599, 24.197628, 34.829124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545074, 23.913429, 34.741596>,  <34.384560, 23.742910, 34.689079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545074, 23.913429, 34.741596>,  <34.812599, 24.197628, 34.829124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545074, 23.913429, 34.741596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041108, -0.329231, 0.943354,
		-0.742294, 0.621932, 0.249401,
		-0.668813, -0.710498, -0.218820,
		34.344429, 23.700279, 34.675949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423271, 24.185947, 35.459888>,  <34.812599, 24.197628, 34.829124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423271, 24.185947, 35.459888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346153, 23.827003, 35.301105>,  <34.299881, 23.611637, 35.205837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346153, 23.827003, 35.301105>,  <34.423271, 24.185947, 35.459888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346153, 23.827003, 35.301105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030070, -0.398953, 0.916478,
		-0.980778, 0.188627, 0.049932,
		-0.192794, -0.897361, -0.396956,
		34.288315, 23.557795, 35.182018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522327, 24.227674, 36.151695>,  <34.423271, 24.185947, 35.459888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522327, 24.227674, 36.151695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385799, 24.594490, 36.234196>,  <34.303883, 24.814579, 36.283695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385799, 24.594490, 36.234196>,  <34.522327, 24.227674, 36.151695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385799, 24.594490, 36.234196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073091, 0.244655, -0.966852,
		-0.937100, -0.314934, -0.150533,
		-0.341323, 0.917039, 0.206247,
		34.283401, 24.869602, 36.296070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323410, 24.676563, 36.755989>,  <34.522327, 24.227674, 36.151695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323410, 24.676563, 36.755989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187130, 25.018547, 36.599545>,  <34.105362, 25.223738, 36.505676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187130, 25.018547, 36.599545>,  <34.323410, 24.676563, 36.755989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187130, 25.018547, 36.599545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196932, -0.471665, -0.859505,
		-0.919316, -0.215810, 0.329064,
		-0.340698, 0.854961, -0.391110,
		34.084919, 25.275036, 36.482212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609409, 24.603931, 36.422432>,  <34.323410, 24.676563, 36.755989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609409, 24.603931, 36.422432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829227, 24.882519, 36.237858>,  <33.961121, 25.049671, 36.127113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829227, 24.882519, 36.237858>,  <33.609409, 24.603931, 36.422432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829227, 24.882519, 36.237858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231329, -0.403873, -0.885084,
		-0.802796, 0.593142, -0.060834,
		0.549550, 0.696469, -0.461439,
		33.994091, 25.091459, 36.099426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173561, 24.842855, 35.996906>,  <33.609409, 24.603931, 36.422432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173561, 24.842855, 35.996906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548809, 24.888538, 35.866131>,  <33.773956, 24.915947, 35.787666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548809, 24.888538, 35.866131>,  <33.173561, 24.842855, 35.996906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548809, 24.888538, 35.866131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258054, -0.399077, -0.879855,
		-0.230960, 0.909777, -0.344910,
		0.938118, 0.114206, -0.326942,
		33.830246, 24.922800, 35.768047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581543, 25.308083, 35.859886>,  <33.173561, 24.842855, 35.996906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581543, 25.308083, 35.859886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932564, 25.499783, 35.853844>,  <34.143177, 25.614803, 35.850220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932564, 25.499783, 35.853844>,  <33.581543, 25.308083, 35.859886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932564, 25.499783, 35.853844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396540, 0.707666, -0.584778,
		-0.269565, 0.519160, 0.811053,
		0.877548, 0.479251, -0.015106,
		34.195827, 25.643559, 35.849312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492210, 26.046749, 35.992092>,  <33.581543, 25.308083, 35.859886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492210, 26.046749, 35.992092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834358, 26.004116, 35.789322>,  <34.039646, 25.978537, 35.667660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834358, 26.004116, 35.789322>,  <33.492210, 26.046749, 35.992092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834358, 26.004116, 35.789322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223796, 0.806526, -0.547202,
		0.467172, 0.581511, 0.666029,
		0.855374, -0.106583, -0.506927,
		34.090969, 25.972141, 35.637245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910004, 26.673805, 36.088825>,  <33.492210, 26.046749, 35.992092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910004, 26.673805, 36.088825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976166, 26.494724, 35.737324>,  <34.015862, 26.387276, 35.526424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976166, 26.494724, 35.737324>,  <33.910004, 26.673805, 36.088825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976166, 26.494724, 35.737324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160665, 0.866889, -0.471901,
		0.973050, 0.219240, 0.071459,
		0.165407, -0.447702, -0.878751,
		34.025787, 26.360415, 35.473698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497429, 27.008644, 35.821762>,  <33.910004, 26.673805, 36.088825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497429, 27.008644, 35.821762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274128, 26.846413, 35.532249>,  <34.140148, 26.749073, 35.358543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274128, 26.846413, 35.532249>,  <34.497429, 27.008644, 35.821762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274128, 26.846413, 35.532249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041553, 0.884945, -0.463838,
		0.828631, -0.228863, -0.510875,
		-0.558251, -0.405579, -0.723783,
		34.106651, 26.724739, 35.315113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758224, 27.353846, 35.193745>,  <34.497429, 27.008644, 35.821762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758224, 27.353846, 35.193745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414108, 27.202278, 35.057320>,  <34.207638, 27.111338, 34.975464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414108, 27.202278, 35.057320>,  <34.758224, 27.353846, 35.193745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414108, 27.202278, 35.057320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153778, 0.830718, -0.535033,
		0.486062, -0.407834, -0.772926,
		-0.860288, -0.378918, -0.341065,
		34.156021, 27.088602, 34.955002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792774, 27.489380, 34.432373>,  <34.758224, 27.353846, 35.193745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792774, 27.489380, 34.432373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407776, 27.421753, 34.517246>,  <34.176777, 27.381178, 34.568169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407776, 27.421753, 34.517246>,  <34.792774, 27.489380, 34.432373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407776, 27.421753, 34.517246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270783, 0.646980, -0.712807,
		-0.016767, -0.743528, -0.668494,
		-0.962494, -0.169065, 0.212183,
		34.119026, 27.371033, 34.580902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456848, 27.387123, 33.714821>,  <34.792774, 27.489380, 34.432373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456848, 27.387123, 33.714821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176403, 27.495182, 33.978779>,  <34.008137, 27.560017, 34.137154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176403, 27.495182, 33.978779>,  <34.456848, 27.387123, 33.714821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176403, 27.495182, 33.978779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305859, 0.722051, -0.620559,
		-0.644118, -0.636917, -0.423613,
		-0.701115, 0.270148, 0.659892,
		33.966068, 27.576227, 34.176746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875973, 27.411535, 33.430733>,  <34.456848, 27.387123, 33.714821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875973, 27.411535, 33.430733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801224, 27.659721, 33.735390>,  <33.756374, 27.808634, 33.918186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801224, 27.659721, 33.735390>,  <33.875973, 27.411535, 33.430733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801224, 27.659721, 33.735390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288784, 0.706352, -0.646274,
		-0.938980, -0.340719, 0.047186,
		-0.186868, 0.620466, 0.761645,
		33.745163, 27.845861, 33.963882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264679, 27.672678, 33.327457>,  <33.875973, 27.411535, 33.430733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264679, 27.672678, 33.327457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420658, 27.935390, 33.585629>,  <33.514248, 28.093018, 33.740532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420658, 27.935390, 33.585629>,  <33.264679, 27.672678, 33.327457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420658, 27.935390, 33.585629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223893, 0.747508, -0.625383,
		-0.893202, 0.099362, 0.438540,
		0.389952, 0.656779, 0.645429,
		33.537643, 28.132423, 33.779259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825581, 28.162960, 33.266830>,  <33.264679, 27.672678, 33.327457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825581, 28.162960, 33.266830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161182, 28.337200, 33.397263>,  <33.362541, 28.441744, 33.475521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161182, 28.337200, 33.397263>,  <32.825581, 28.162960, 33.266830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161182, 28.337200, 33.397263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121665, 0.734282, -0.667852,
		-0.530352, 0.520657, 0.669062,
		0.839002, 0.435598, 0.326082,
		33.412884, 28.467880, 33.495087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697090, 28.862942, 33.262691>,  <32.825581, 28.162960, 33.266830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697090, 28.862942, 33.262691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095680, 28.830784, 33.272217>,  <33.334835, 28.811489, 33.277931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095680, 28.830784, 33.272217>,  <32.697090, 28.862942, 33.262691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095680, 28.830784, 33.272217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072137, 0.677215, -0.732240,
		0.042743, 0.731379, 0.680630,
		0.996478, -0.080397, 0.023814,
		33.394623, 28.806665, 33.279362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951855, 29.609299, 33.319118>,  <32.697090, 28.862942, 33.262691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951855, 29.609299, 33.319118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276859, 29.411983, 33.194866>,  <33.471863, 29.293594, 33.120316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276859, 29.411983, 33.194866>,  <32.951855, 29.609299, 33.319118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276859, 29.411983, 33.194866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206214, 0.741628, -0.638329,
		0.545255, 0.454592, 0.704303,
		0.812510, -0.493289, -0.310632,
		33.520611, 29.263996, 33.101677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421135, 30.102850, 33.269306>,  <32.951855, 29.609299, 33.319118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421135, 30.102850, 33.269306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554592, 29.810207, 33.031506>,  <33.634666, 29.634621, 32.888824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554592, 29.810207, 33.031506>,  <33.421135, 30.102850, 33.269306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554592, 29.810207, 33.031506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325289, 0.681251, -0.655808,
		0.884800, 0.025419, 0.465277,
		0.333640, -0.731609, -0.594503,
		33.654682, 29.590725, 32.853153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098282, 30.176449, 33.198124>,  <33.421135, 30.102850, 33.269306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098282, 30.176449, 33.198124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993877, 29.955761, 32.881271>,  <33.931232, 29.823347, 32.691158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993877, 29.955761, 32.881271>,  <34.098282, 30.176449, 33.198124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993877, 29.955761, 32.881271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405091, 0.682232, -0.608655,
		0.876227, -0.479753, 0.045426,
		-0.261013, -0.551721, -0.792134,
		33.915573, 29.790245, 32.643631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658550, 30.222668, 32.704239>,  <34.098282, 30.176449, 33.198124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658550, 30.222668, 32.704239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354145, 30.114536, 32.468346>,  <34.171501, 30.049658, 32.326809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354145, 30.114536, 32.468346>,  <34.658550, 30.222668, 32.704239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354145, 30.114536, 32.468346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294431, 0.666104, -0.685286,
		0.578074, -0.695146, -0.427321,
		-0.761014, -0.270329, -0.589729,
		34.125843, 30.033438, 32.291428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935558, 30.168621, 32.055805>,  <34.658550, 30.222668, 32.704239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935558, 30.168621, 32.055805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548344, 30.217957, 31.968445>,  <34.316017, 30.247557, 31.916029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548344, 30.217957, 31.968445>,  <34.935558, 30.168621, 32.055805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548344, 30.217957, 31.968445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249922, 0.547889, -0.798346,
		0.021192, -0.827409, -0.561200,
		-0.968034, 0.123338, -0.218398,
		34.257935, 30.254957, 31.902925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893196, 29.858982, 31.449656>,  <34.935558, 30.168621, 32.055805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893196, 29.858982, 31.449656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590626, 30.117680, 31.488728>,  <34.409084, 30.272898, 31.512171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590626, 30.117680, 31.488728>,  <34.893196, 29.858982, 31.449656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590626, 30.117680, 31.488728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309924, 0.485913, -0.817212,
		-0.575992, -0.587886, -0.567999,
		-0.756426, 0.646744, 0.097682,
		34.363697, 30.311703, 31.518032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556656, 29.884193, 30.771397>,  <34.893196, 29.858982, 31.449656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556656, 29.884193, 30.771397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429508, 30.218197, 30.951050>,  <34.353218, 30.418598, 31.058842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.429508, 30.218197, 30.951050>,  <34.556656, 29.884193, 30.771397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429508, 30.218197, 30.951050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169756, 0.516170, -0.839495,
		-0.932814, -0.190607, -0.305823,
		-0.317870, 0.835008, 0.449133,
		34.334148, 30.468699, 31.085791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273636, 30.184963, 30.307154>,  <34.556656, 29.884193, 30.771397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273636, 30.184963, 30.307154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354336, 30.487911, 30.555569>,  <34.402756, 30.669680, 30.704618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354336, 30.487911, 30.555569>,  <34.273636, 30.184963, 30.307154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354336, 30.487911, 30.555569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199274, 0.589072, -0.783125,
		-0.958952, 0.281749, -0.032081,
		0.201746, 0.757372, 0.621037,
		34.414860, 30.715122, 30.741880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033432, 30.826725, 30.008684>,  <34.273636, 30.184963, 30.307154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033432, 30.826725, 30.008684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269520, 30.991779, 30.286209>,  <34.411171, 31.090813, 30.452724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269520, 30.991779, 30.286209>,  <34.033432, 30.826725, 30.008684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269520, 30.991779, 30.286209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222619, 0.742951, -0.631241,
		-0.775941, 0.527025, 0.346641,
		0.590217, 0.412637, 0.693812,
		34.446587, 31.115570, 30.494352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927338, 31.509048, 29.868122>,  <34.033432, 30.826725, 30.008684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927338, 31.509048, 29.868122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238346, 31.544056, 30.117218>,  <34.424950, 31.565060, 30.266676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.238346, 31.544056, 30.117218>,  <33.927338, 31.509048, 29.868122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238346, 31.544056, 30.117218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475702, 0.565831, -0.673456,
		-0.411304, 0.819863, 0.398313,
		0.777520, 0.087517, 0.622739,
		34.471603, 31.570311, 30.304039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014645, 32.287704, 30.089754>,  <33.927338, 31.509048, 29.868122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014645, 32.287704, 30.089754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350883, 32.073460, 30.122044>,  <34.552628, 31.944914, 30.141418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350883, 32.073460, 30.122044>,  <34.014645, 32.287704, 30.089754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350883, 32.073460, 30.122044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461092, 0.629370, -0.625530,
		0.284233, 0.563041, 0.776013,
		0.840598, -0.535610, 0.080726,
		34.603062, 31.912777, 30.146261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488186, 32.804806, 30.040098>,  <34.014645, 32.287704, 30.089754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488186, 32.804806, 30.040098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703114, 32.476665, 29.961800>,  <34.832069, 32.279781, 29.914822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.703114, 32.476665, 29.961800>,  <34.488186, 32.804806, 30.040098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703114, 32.476665, 29.961800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360468, 0.433214, -0.826068,
		0.762461, 0.373305, 0.528484,
		0.537322, -0.820347, -0.195745,
		34.864311, 32.230560, 29.903076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183582, 33.079620, 29.794060>,  <34.488186, 32.804806, 30.040098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183582, 33.079620, 29.794060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134495, 32.714626, 29.637955>,  <35.105042, 32.495628, 29.544292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134495, 32.714626, 29.637955>,  <35.183582, 33.079620, 29.794060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134495, 32.714626, 29.637955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396563, 0.315390, -0.862129,
		0.909768, -0.260562, 0.323155,
		-0.122718, -0.912489, -0.390261,
		35.097679, 32.440880, 29.520876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770744, 32.998966, 29.499836>,  <35.183582, 33.079620, 29.794060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770744, 32.998966, 29.499836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569370, 32.700611, 29.325386>,  <35.448547, 32.521599, 29.220716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569370, 32.700611, 29.325386>,  <35.770744, 32.998966, 29.499836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569370, 32.700611, 29.325386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280942, 0.336015, -0.898980,
		0.817082, -0.575104, 0.040389,
		-0.503436, -0.745888, -0.436123,
		35.418339, 32.476845, 29.194550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294853, 32.682304, 28.948965>,  <35.770744, 32.998966, 29.499836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294853, 32.682304, 28.948965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913723, 32.598698, 28.860928>,  <35.685047, 32.548534, 28.808105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913723, 32.598698, 28.860928>,  <36.294853, 32.682304, 28.948965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913723, 32.598698, 28.860928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132695, 0.365304, -0.921382,
		0.272983, -0.907120, -0.320335,
		-0.952823, -0.209015, -0.220092,
		35.627876, 32.535992, 28.794901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321091, 32.481209, 28.371988>,  <36.294853, 32.682304, 28.948965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321091, 32.481209, 28.371988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927029, 32.547546, 28.354271>,  <35.690590, 32.587349, 28.343641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927029, 32.547546, 28.354271>,  <36.321091, 32.481209, 28.371988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927029, 32.547546, 28.354271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108086, 0.398859, -0.910620,
		-0.133351, -0.901892, -0.410864,
		-0.985157, 0.165841, -0.044294,
		35.631481, 32.597298, 28.340982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094612, 32.109783, 27.775415>,  <36.321091, 32.481209, 28.371988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094612, 32.109783, 27.775415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836525, 32.399269, 27.873341>,  <35.681675, 32.572960, 27.932096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836525, 32.399269, 27.873341>,  <36.094612, 32.109783, 27.775415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836525, 32.399269, 27.873341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123870, 0.415290, -0.901216,
		-0.753893, -0.551152, -0.357597,
		-0.645214, 0.723717, 0.244813,
		35.642960, 32.616383, 27.946785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622532, 32.154507, 27.200312>,  <36.094612, 32.109783, 27.775415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622532, 32.154507, 27.200312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589325, 32.508255, 27.384052>,  <35.569401, 32.720505, 27.494297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589325, 32.508255, 27.384052>,  <35.622532, 32.154507, 27.200312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589325, 32.508255, 27.384052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020737, 0.459308, -0.888035,
		-0.996332, -0.083249, -0.019792,
		-0.083019, 0.884367, 0.459349,
		35.564419, 32.773567, 27.521856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093204, 32.563614, 26.811819>,  <35.622532, 32.154507, 27.200312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093204, 32.563614, 26.811819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279091, 32.854900, 27.013306>,  <35.390625, 33.029675, 27.134197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279091, 32.854900, 27.013306>,  <35.093204, 32.563614, 26.811819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279091, 32.854900, 27.013306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095622, 0.606826, -0.789062,
		-0.880280, 0.318526, 0.351637,
		0.464719, 0.728220, 0.503718,
		35.418507, 33.073368, 27.164421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729343, 33.193405, 26.712887>,  <35.093204, 32.563614, 26.811819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729343, 33.193405, 26.712887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088833, 33.330151, 26.822739>,  <35.304527, 33.412197, 26.888651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088833, 33.330151, 26.822739>,  <34.729343, 33.193405, 26.712887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088833, 33.330151, 26.822739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011204, 0.643975, -0.764965,
		-0.438370, 0.684416, 0.582587,
		0.898725, 0.341865, 0.274630,
		35.358452, 33.432709, 26.905128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689739, 33.979015, 26.756660>,  <34.729343, 33.193405, 26.712887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689739, 33.979015, 26.756660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068710, 33.858089, 26.714737>,  <35.296093, 33.785534, 26.689583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068710, 33.858089, 26.714737>,  <34.689739, 33.979015, 26.756660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068710, 33.858089, 26.714737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096873, 0.583215, -0.806521,
		0.304947, 0.753968, 0.581841,
		0.947430, -0.302311, -0.104811,
		35.352940, 33.767395, 26.683294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140720, 34.555004, 26.636875>,  <34.689739, 33.979015, 26.756660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140720, 34.555004, 26.636875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344578, 34.251507, 26.474609>,  <35.466892, 34.069408, 26.377249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344578, 34.251507, 26.474609>,  <35.140720, 34.555004, 26.636875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344578, 34.251507, 26.474609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014542, 0.463831, -0.885805,
		0.860260, 0.457347, 0.225356,
		0.509648, -0.758745, -0.405666,
		35.497471, 34.023884, 26.352909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555927, 34.862461, 26.147038>,  <35.140720, 34.555004, 26.636875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555927, 34.862461, 26.147038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570782, 34.484020, 26.018341>,  <35.579697, 34.256958, 25.941122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570782, 34.484020, 26.018341>,  <35.555927, 34.862461, 26.147038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570782, 34.484020, 26.018341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106042, 0.323878, -0.940137,
		0.993668, 0.000799, 0.112355,
		0.037140, -0.946099, -0.321742,
		35.581924, 34.200191, 25.921818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022278, 34.864582, 25.591311>,  <35.555927, 34.862461, 26.147038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022278, 34.864582, 25.591311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847702, 34.514637, 25.507286>,  <35.742954, 34.304668, 25.456871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847702, 34.514637, 25.507286>,  <36.022278, 34.864582, 25.591311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847702, 34.514637, 25.507286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091618, 0.189043, -0.977686,
		0.895055, -0.445949, -0.002353,
		-0.436442, -0.874867, -0.210060,
		35.716770, 34.252178, 25.444267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386383, 34.513844, 25.008787>,  <36.022278, 34.864582, 25.591311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386383, 34.513844, 25.008787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042019, 34.311211, 25.027538>,  <35.835400, 34.189629, 25.038790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042019, 34.311211, 25.027538>,  <36.386383, 34.513844, 25.008787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042019, 34.311211, 25.027538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047642, -0.011463, -0.998799,
		0.506513, -0.862114, -0.014266,
		-0.860915, -0.506584, 0.046880,
		35.783745, 34.159237, 25.041603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418388, 33.805305, 24.526268>,  <36.386383, 34.513844, 25.008787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418388, 33.805305, 24.526268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044189, 33.932926, 24.586987>,  <35.819668, 34.009499, 24.623417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044189, 33.932926, 24.586987>,  <36.418388, 33.805305, 24.526268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044189, 33.932926, 24.586987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181968, -0.066810, -0.981032,
		-0.302862, -0.945379, 0.120559,
		-0.935501, 0.319055, 0.151795,
		35.763538, 34.028641, 24.632524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109802, 33.612663, 23.982759>,  <36.418388, 33.805305, 24.526268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109802, 33.612663, 23.982759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830280, 33.858604, 24.128979>,  <35.662567, 34.006168, 24.216709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830280, 33.858604, 24.128979>,  <36.109802, 33.612663, 23.982759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830280, 33.858604, 24.128979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283434, 0.231195, -0.930706,
		-0.656758, -0.753994, 0.012708,
		-0.698809, 0.614851, 0.365547,
		35.620636, 34.043060, 24.238644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501251, 33.407463, 23.615290>,  <36.109802, 33.612663, 23.982759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501251, 33.407463, 23.615290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487263, 33.785690, 23.744709>,  <35.478870, 34.012627, 23.822361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487263, 33.785690, 23.744709>,  <35.501251, 33.407463, 23.615290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487263, 33.785690, 23.744709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298718, 0.299058, -0.906274,
		-0.953700, -0.128345, 0.271998,
		-0.034973, 0.945564, 0.323551,
		35.476772, 34.069359, 23.841774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975395, 33.558502, 23.166586>,  <35.501251, 33.407463, 23.615290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975395, 33.558502, 23.166586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111721, 33.905254, 23.312119>,  <35.193516, 34.113304, 23.399437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111721, 33.905254, 23.312119>,  <34.975395, 33.558502, 23.166586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111721, 33.905254, 23.312119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314230, 0.469779, -0.824965,
		-0.886062, 0.166832, 0.432505,
		0.340813, 0.866877, 0.363830,
		35.213966, 34.165318, 23.421268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401966, 33.972858, 23.263067>,  <34.975395, 33.558502, 23.166586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401966, 33.972858, 23.263067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725899, 34.200699, 23.206875>,  <34.920258, 34.337402, 23.173159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725899, 34.200699, 23.206875>,  <34.401966, 33.972858, 23.263067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725899, 34.200699, 23.206875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409893, 0.378034, -0.830107,
		-0.419719, 0.729828, 0.539617,
		0.809829, 0.569597, -0.140483,
		34.968849, 34.371578, 23.164730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119392, 34.596611, 23.095732>,  <34.401966, 33.972858, 23.263067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119392, 34.596611, 23.095732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498268, 34.641510, 22.975571>,  <34.725594, 34.668449, 22.903475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498268, 34.641510, 22.975571>,  <34.119392, 34.596611, 23.095732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498268, 34.641510, 22.975571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320648, 0.345998, -0.881743,
		0.004966, 0.931497, 0.363716,
		0.947185, 0.112246, -0.300401,
		34.782425, 34.675182, 22.885450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974434, 35.293747, 22.823208>,  <34.119392, 34.596611, 23.095732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974434, 35.293747, 22.823208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578041, 35.291641, 22.769657>,  <33.340206, 35.290379, 22.737528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578041, 35.291641, 22.769657>,  <33.974434, 35.293747, 22.823208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578041, 35.291641, 22.769657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133569, -0.039307, 0.990260,
		-0.010474, 0.999213, 0.038250,
		-0.990984, -0.005263, -0.133876,
		33.280746, 35.290062, 22.729494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714314, 35.776974, 23.325533>,  <33.974434, 35.293747, 22.823208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714314, 35.776974, 23.325533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407894, 35.540974, 23.223495>,  <33.224041, 35.399376, 23.162273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407894, 35.540974, 23.223495>,  <33.714314, 35.776974, 23.325533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407894, 35.540974, 23.223495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239741, -0.105969, 0.965036,
		-0.596402, 0.800420, -0.060269,
		-0.766048, -0.589998, -0.255093,
		33.178082, 35.363976, 23.146967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144215, 36.105827, 23.727932>,  <33.714314, 35.776974, 23.325533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144215, 36.105827, 23.727932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000095, 35.750614, 23.613686>,  <32.913624, 35.537487, 23.545137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000095, 35.750614, 23.613686>,  <33.144215, 36.105827, 23.727932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000095, 35.750614, 23.613686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345504, -0.157365, 0.925129,
		-0.866493, 0.432005, -0.250122,
		-0.360300, -0.888036, -0.285615,
		32.892006, 35.484203, 23.528002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433685, 35.996769, 23.953251>,  <33.144215, 36.105827, 23.727932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433685, 35.996769, 23.953251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548927, 35.621365, 23.877144>,  <32.618073, 35.396122, 23.831480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548927, 35.621365, 23.877144>,  <32.433685, 35.996769, 23.953251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548927, 35.621365, 23.877144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431323, -0.304573, 0.849233,
		-0.854961, -0.162599, -0.492547,
		0.288101, -0.938508, -0.190266,
		32.635357, 35.339813, 23.820065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930592, 35.640442, 24.186174>,  <32.433685, 35.996769, 23.953251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930592, 35.640442, 24.186174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180218, 35.329193, 24.157715>,  <32.329994, 35.142445, 24.140638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180218, 35.329193, 24.157715>,  <31.930592, 35.640442, 24.186174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180218, 35.329193, 24.157715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188817, -0.238538, 0.952601,
		-0.758216, -0.581050, -0.295787,
		0.624064, -0.778127, -0.071151,
		32.367435, 35.095757, 24.136370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580156, 35.246117, 24.566130>,  <31.930592, 35.640442, 24.186174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580156, 35.246117, 24.566130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962526, 35.128712, 24.563072>,  <32.191948, 35.058270, 24.561237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962526, 35.128712, 24.563072>,  <31.580156, 35.246117, 24.566130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962526, 35.128712, 24.563072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066389, -0.241438, 0.968143,
		-0.286011, -0.924963, -0.250282,
		0.955924, -0.293515, -0.007647,
		32.249306, 35.040657, 24.560778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587587, 34.562820, 24.936140>,  <31.580156, 35.246117, 24.566130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587587, 34.562820, 24.936140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969130, 34.682907, 24.938522>,  <32.198055, 34.754959, 24.939953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969130, 34.682907, 24.938522>,  <31.587587, 34.562820, 24.936140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969130, 34.682907, 24.938522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132540, -0.438751, 0.888781,
		0.269437, -0.846977, -0.458294,
		0.953854, 0.300213, 0.005957,
		32.255287, 34.772972, 24.940310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023403, 33.950005, 25.011974>,  <31.587587, 34.562820, 24.936140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023403, 33.950005, 25.011974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225224, 34.257545, 25.169094>,  <32.346317, 34.442070, 25.263367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225224, 34.257545, 25.169094>,  <32.023403, 33.950005, 25.011974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225224, 34.257545, 25.169094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054056, -0.482193, 0.874396,
		0.861689, -0.419943, -0.284851,
		0.504550, 0.768855, 0.392799,
		32.376587, 34.488201, 25.286934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657597, 33.636772, 25.430079>,  <32.023403, 33.950005, 25.011974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657597, 33.636772, 25.430079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610790, 34.009525, 25.567425>,  <32.582706, 34.233177, 25.649834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610790, 34.009525, 25.567425>,  <32.657597, 33.636772, 25.430079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610790, 34.009525, 25.567425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065842, -0.352261, 0.933583,
		0.990945, 0.086636, 0.102577,
		-0.117015, 0.931883, 0.343367,
		32.575687, 34.289089, 25.670435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208656, 33.720753, 25.995636>,  <32.657597, 33.636772, 25.430079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208656, 33.720753, 25.995636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954483, 34.018848, 26.076481>,  <32.801979, 34.197704, 26.124989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954483, 34.018848, 26.076481>,  <33.208656, 33.720753, 25.995636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954483, 34.018848, 26.076481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008958, -0.254618, 0.967000,
		0.772106, 0.616273, 0.155117,
		-0.635431, 0.745237, 0.202112,
		32.763855, 34.242420, 26.137115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398132, 33.935520, 26.643782>,  <33.208656, 33.720753, 25.995636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398132, 33.935520, 26.643782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029640, 34.085011, 26.600594>,  <32.808544, 34.174706, 26.574680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.029640, 34.085011, 26.600594>,  <33.398132, 33.935520, 26.643782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029640, 34.085011, 26.600594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242300, -0.334115, 0.910856,
		0.304336, 0.865272, 0.398351,
		-0.921233, 0.373727, -0.107972,
		32.753269, 34.197128, 26.568201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267231, 34.459316, 27.284893>,  <33.398132, 33.935520, 26.643782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267231, 34.459316, 27.284893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920246, 34.349266, 27.119087>,  <32.712055, 34.283237, 27.019604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920246, 34.349266, 27.119087>,  <33.267231, 34.459316, 27.284893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920246, 34.349266, 27.119087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344793, -0.268179, 0.899554,
		-0.358652, 0.923248, 0.137774,
		-0.867460, -0.275123, -0.414513,
		32.660007, 34.266727, 26.994734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759441, 34.844078, 27.582697>,  <33.267231, 34.459316, 27.284893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759441, 34.844078, 27.582697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557064, 34.526920, 27.446846>,  <32.435638, 34.336628, 27.365335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557064, 34.526920, 27.446846>,  <32.759441, 34.844078, 27.582697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557064, 34.526920, 27.446846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250806, -0.241499, 0.937430,
		-0.825300, 0.559464, -0.076678,
		-0.505941, -0.792892, -0.339626,
		32.405281, 34.289051, 27.344959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095024, 34.896736, 27.891117>,  <32.759441, 34.844078, 27.582697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095024, 34.896736, 27.891117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125778, 34.511387, 27.788349>,  <32.144230, 34.280178, 27.726688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125778, 34.511387, 27.788349>,  <32.095024, 34.896736, 27.891117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125778, 34.511387, 27.788349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355401, -0.267235, 0.895698,
		-0.931547, 0.022446, -0.362928,
		0.076882, -0.963370, -0.256920,
		32.148842, 34.222378, 27.711273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582882, 34.674156, 28.244797>,  <32.095024, 34.896736, 27.891117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582882, 34.674156, 28.244797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808649, 34.352783, 28.168976>,  <31.944109, 34.159958, 28.123484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.808649, 34.352783, 28.168976>,  <31.582882, 34.674156, 28.244797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.808649, 34.352783, 28.168976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301076, -0.414160, 0.858967,
		-0.768627, -0.427745, -0.475653,
		0.564416, -0.803433, -0.189551,
		31.977974, 34.111752, 28.112110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187290, 34.119316, 28.510777>,  <31.582882, 34.674156, 28.244797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187290, 34.119316, 28.510777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552713, 33.960506, 28.475483>,  <31.771967, 33.865223, 28.454306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.552713, 33.960506, 28.475483>,  <31.187290, 34.119316, 28.510777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552713, 33.960506, 28.475483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104188, -0.438166, 0.892836,
		-0.393134, -0.806466, -0.441655,
		0.913559, -0.397019, -0.088234,
		31.826780, 33.841400, 28.449013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095274, 33.363911, 28.517767>,  <31.187290, 34.119316, 28.510777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095274, 33.363911, 28.517767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470173, 33.428902, 28.641167>,  <31.695112, 33.467896, 28.715206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470173, 33.428902, 28.641167>,  <31.095274, 33.363911, 28.517767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470173, 33.428902, 28.641167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168946, -0.562360, 0.809450,
		0.305002, -0.810773, -0.499620,
		0.937247, 0.162475, 0.308497,
		31.751347, 33.477646, 28.733715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232977, 32.755619, 28.688480>,  <31.095274, 33.363911, 28.517767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232977, 32.755619, 28.688480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542231, 32.955585, 28.844608>,  <31.727783, 33.075565, 28.938286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542231, 32.955585, 28.844608>,  <31.232977, 32.755619, 28.688480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542231, 32.955585, 28.844608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065855, -0.675359, 0.734543,
		0.630816, -0.542195, -0.555064,
		0.773133, 0.499915, 0.390321,
		31.774170, 33.105560, 28.961704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776905, 32.220760, 28.785248>,  <31.232977, 32.755619, 28.688480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776905, 32.220760, 28.785248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834578, 32.516590, 29.048229>,  <31.869181, 32.694088, 29.206018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834578, 32.516590, 29.048229>,  <31.776905, 32.220760, 28.785248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834578, 32.516590, 29.048229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237575, -0.670835, 0.702523,
		0.960609, 0.054903, -0.272426,
		0.144183, 0.739571, 0.657454,
		31.877832, 32.738461, 29.245466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294785, 31.964430, 29.224695>,  <31.776905, 32.220760, 28.785248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294785, 31.964430, 29.224695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145092, 32.290203, 29.402073>,  <32.055275, 32.485668, 29.508499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.145092, 32.290203, 29.402073>,  <32.294785, 31.964430, 29.224695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145092, 32.290203, 29.402073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003345, -0.477005, 0.878894,
		0.927328, 0.330396, 0.175787,
		-0.374234, 0.814435, 0.443445,
		32.032822, 32.534534, 29.535107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823227, 32.083424, 29.821081>,  <32.294785, 31.964430, 29.224695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823227, 32.083424, 29.821081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440956, 32.199566, 29.840603>,  <32.211594, 32.269253, 29.852316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440956, 32.199566, 29.840603>,  <32.823227, 32.083424, 29.821081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440956, 32.199566, 29.840603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094064, -0.458161, 0.883878,
		0.279002, 0.840107, 0.465164,
		-0.955672, 0.290359, 0.048804,
		32.154255, 32.286674, 29.855244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746227, 32.311054, 30.549335>,  <32.823227, 32.083424, 29.821081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746227, 32.311054, 30.549335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383682, 32.221981, 30.405712>,  <32.166157, 32.168537, 30.319538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383682, 32.221981, 30.405712>,  <32.746227, 32.311054, 30.549335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383682, 32.221981, 30.405712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184926, -0.555014, 0.811025,
		-0.379886, 0.801480, 0.461862,
		-0.906360, -0.222687, -0.359057,
		32.111774, 32.155174, 30.297995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359447, 32.345242, 31.116095>,  <32.746227, 32.311054, 30.549335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359447, 32.345242, 31.116095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124191, 32.133728, 30.871315>,  <31.983038, 32.006821, 30.724447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124191, 32.133728, 30.871315>,  <32.359447, 32.345242, 31.116095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124191, 32.133728, 30.871315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284508, -0.573016, 0.768575,
		-0.757065, 0.626134, 0.186570,
		-0.588138, -0.528781, -0.611951,
		31.947750, 31.975094, 30.687729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831217, 32.201317, 31.497473>,  <32.359447, 32.345242, 31.116095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831217, 32.201317, 31.497473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756422, 31.936733, 31.206955>,  <31.711546, 31.777983, 31.032644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756422, 31.936733, 31.206955>,  <31.831217, 32.201317, 31.497473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756422, 31.936733, 31.206955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375073, -0.635255, 0.675109,
		-0.907941, 0.398650, -0.129313,
		-0.186985, -0.661461, -0.726296,
		31.700327, 31.738295, 30.989065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154755, 31.838255, 31.703472>,  <31.831217, 32.201317, 31.497473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154755, 31.838255, 31.703472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388884, 31.610146, 31.472931>,  <31.529362, 31.473280, 31.334606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388884, 31.610146, 31.472931>,  <31.154755, 31.838255, 31.703472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388884, 31.610146, 31.472931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438218, -0.820582, 0.366892,
		-0.682173, 0.037817, -0.730212,
		0.585324, -0.570276, -0.576352,
		31.564480, 31.439062, 31.300026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739227, 31.212332, 31.503534>,  <31.154755, 31.838255, 31.703472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739227, 31.212332, 31.503534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117199, 31.097919, 31.439911>,  <31.343981, 31.029272, 31.401737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117199, 31.097919, 31.439911>,  <30.739227, 31.212332, 31.503534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117199, 31.097919, 31.439911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216002, -0.910158, 0.353491,
		-0.245879, -0.299666, -0.921816,
		0.944927, -0.286030, -0.159060,
		31.400677, 31.012110, 31.392193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718031, 30.595350, 31.122572>,  <30.739227, 31.212332, 31.503534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718031, 30.595350, 31.122572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074480, 30.609379, 31.303532>,  <31.288349, 30.617796, 31.412107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074480, 30.609379, 31.303532>,  <30.718031, 30.595350, 31.122572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074480, 30.609379, 31.303532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087676, -0.964913, 0.247500,
		0.445207, -0.260218, -0.856783,
		0.891125, 0.035069, 0.452401,
		31.341818, 30.619900, 31.439253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088213, 29.936562, 30.856941>,  <30.718031, 30.595350, 31.122572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088213, 29.936562, 30.856941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244095, 30.033176, 31.212421>,  <31.337624, 30.091145, 31.425711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244095, 30.033176, 31.212421>,  <31.088213, 29.936562, 30.856941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244095, 30.033176, 31.212421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106015, -0.946813, 0.303819,
		0.914818, -0.212615, -0.343369,
		0.389703, 0.241537, 0.888702,
		31.361006, 30.105637, 31.479033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509840, 29.359106, 30.911829>,  <31.088213, 29.936562, 30.856941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509840, 29.359106, 30.911829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490065, 29.533062, 31.271481>,  <31.478199, 29.637436, 31.487270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490065, 29.533062, 31.271481>,  <31.509840, 29.359106, 30.911829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490065, 29.533062, 31.271481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095911, -0.898134, 0.429134,
		0.994161, -0.065021, 0.086112,
		-0.049437, 0.434888, 0.899127,
		31.475233, 29.663528, 31.541218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097984, 29.167301, 31.280983>,  <31.509840, 29.359106, 30.911829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097984, 29.167301, 31.280983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810453, 29.261902, 31.542473>,  <31.637934, 29.318663, 31.699366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810453, 29.261902, 31.542473>,  <32.097984, 29.167301, 31.280983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810453, 29.261902, 31.542473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136769, -0.873865, 0.466533,
		0.681601, 0.424766, 0.595813,
		-0.718828, 0.236501, 0.653723,
		31.594805, 29.332851, 31.738590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319336, 29.024839, 31.933268>,  <32.097984, 29.167301, 31.280983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319336, 29.024839, 31.933268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929926, 29.024101, 32.024696>,  <31.696280, 29.023659, 32.079552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929926, 29.024101, 32.024696>,  <32.319336, 29.024839, 31.933268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929926, 29.024101, 32.024696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136682, -0.806194, 0.575647,
		0.183211, 0.591648, 0.785103,
		-0.973525, -0.001844, 0.228571,
		31.637869, 29.023548, 32.093269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344753, 28.738169, 32.548195>,  <32.319336, 29.024839, 31.933268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344753, 28.738169, 32.548195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980593, 28.673565, 32.395832>,  <31.762096, 28.634802, 32.304417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980593, 28.673565, 32.395832>,  <32.344753, 28.738169, 32.548195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980593, 28.673565, 32.395832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028046, -0.894446, 0.446296,
		-0.412780, 0.416990, 0.809773,
		-0.910399, -0.161511, -0.380904,
		31.707474, 28.625113, 32.281559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957441, 28.446213, 33.160789>,  <32.344753, 28.738169, 32.548195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957441, 28.446213, 33.160789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743555, 28.373119, 32.830776>,  <31.615223, 28.329264, 32.632767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743555, 28.373119, 32.830776>,  <31.957441, 28.446213, 33.160789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743555, 28.373119, 32.830776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249751, -0.898547, 0.360884,
		-0.807280, 0.399024, 0.434831,
		-0.534718, -0.182735, -0.825036,
		31.583139, 28.318298, 32.583263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304152, 28.133762, 33.372692>,  <31.957441, 28.446213, 33.160789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304152, 28.133762, 33.372692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330482, 28.009224, 32.993488>,  <31.346281, 27.934502, 32.765965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330482, 28.009224, 32.993488>,  <31.304152, 28.133762, 33.372692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330482, 28.009224, 32.993488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265950, -0.921182, 0.284068,
		-0.961737, 0.233426, -0.143440,
		0.065826, -0.311346, -0.948014,
		31.350231, 27.915819, 32.709084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696375, 27.770483, 33.295582>,  <31.304152, 28.133762, 33.372692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696375, 27.770483, 33.295582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953384, 27.662018, 33.008907>,  <31.107590, 27.596939, 32.836903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953384, 27.662018, 33.008907>,  <30.696375, 27.770483, 33.295582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953384, 27.662018, 33.008907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133901, -0.960635, 0.243417,
		-0.754474, -0.060437, -0.653541,
		0.642526, -0.271161, -0.716681,
		31.146143, 27.580669, 32.793903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380867, 27.141693, 33.019096>,  <30.696375, 27.770483, 33.295582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380867, 27.141693, 33.019096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766813, 27.122623, 32.915745>,  <30.998381, 27.111181, 32.853733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766813, 27.122623, 32.915745>,  <30.380867, 27.141693, 33.019096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766813, 27.122623, 32.915745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037536, -0.948299, 0.315149,
		-0.260048, -0.313776, -0.913192,
		0.964866, -0.047676, -0.258381,
		31.056273, 27.108320, 32.838230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393621, 26.508902, 32.753036>,  <30.380867, 27.141693, 33.019096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393621, 26.508902, 32.753036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778934, 26.591850, 32.821247>,  <31.010122, 26.641621, 32.862175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.778934, 26.591850, 32.821247>,  <30.393621, 26.508902, 32.753036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778934, 26.591850, 32.821247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182746, -0.971742, 0.149402,
		0.196693, -0.112753, -0.973960,
		0.963284, 0.207374, 0.170530,
		31.067919, 26.654062, 32.872406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687361, 25.863670, 32.657749>,  <30.393621, 26.508902, 32.753036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687361, 25.863670, 32.657749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963467, 26.064442, 32.866211>,  <31.129131, 26.184904, 32.991287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963467, 26.064442, 32.866211>,  <30.687361, 25.863670, 32.657749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963467, 26.064442, 32.866211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203940, -0.826029, 0.525437,
		0.694220, -0.256406, -0.672543,
		0.690265, 0.501927, 0.521155,
		31.170546, 26.215019, 33.022556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752258, 25.054136, 32.461266>,  <30.687361, 25.863670, 32.657749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752258, 25.054136, 32.461266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357452, 24.990368, 32.469147>,  <30.120569, 24.952106, 32.473877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357452, 24.990368, 32.469147>,  <30.752258, 25.054136, 32.461266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357452, 24.990368, 32.469147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024089, 0.025635, -0.999381,
		0.158821, -0.986877, -0.029142,
		-0.987013, -0.159425, 0.019702,
		30.061348, 24.942541, 32.475056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658424, 24.709482, 31.859962>,  <30.752258, 25.054136, 32.461266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658424, 24.709482, 31.859962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294281, 24.850803, 31.946148>,  <30.075794, 24.935596, 31.997860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294281, 24.850803, 31.946148>,  <30.658424, 24.709482, 31.859962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294281, 24.850803, 31.946148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113494, 0.287541, -0.951020,
		-0.397955, -0.890222, -0.221667,
		-0.910358, 0.353305, 0.215463,
		30.021173, 24.956795, 32.010788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318077, 24.388113, 31.312029>,  <30.658424, 24.709482, 31.859962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318077, 24.388113, 31.312029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112232, 24.701576, 31.451199>,  <29.988726, 24.889654, 31.534700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.112232, 24.701576, 31.451199>,  <30.318077, 24.388113, 31.312029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112232, 24.701576, 31.451199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065066, 0.368918, -0.927182,
		-0.854951, -0.499776, -0.138860,
		-0.514611, 0.783660, 0.347925,
		29.957850, 24.936674, 31.555576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882149, 24.631077, 30.750172>,  <30.318077, 24.388113, 31.312029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882149, 24.631077, 30.750172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877411, 24.947536, 30.994774>,  <29.874567, 25.137413, 31.141535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.877411, 24.947536, 30.994774>,  <29.882149, 24.631077, 30.750172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.877411, 24.947536, 30.994774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002784, 0.611522, -0.791222,
		-0.999926, -0.011075, -0.005041,
		-0.011846, 0.791150, 0.611508,
		29.873857, 25.184881, 31.178226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427053, 25.037216, 30.454857>,  <29.882149, 24.631077, 30.750172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427053, 25.037216, 30.454857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629610, 25.270447, 30.708973>,  <29.751144, 25.410385, 30.861443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629610, 25.270447, 30.708973>,  <29.427053, 25.037216, 30.454857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629610, 25.270447, 30.708973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005187, 0.734661, -0.678414,
		-0.862288, 0.346839, 0.369002,
		0.506392, 0.583075, 0.635289,
		29.781528, 25.445370, 30.899559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066494, 25.616198, 30.318754>,  <29.427053, 25.037216, 30.454857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066494, 25.616198, 30.318754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.408186, 25.748466, 30.479225>,  <29.613201, 25.827827, 30.575508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.408186, 25.748466, 30.479225>,  <29.066494, 25.616198, 30.318754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408186, 25.748466, 30.479225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026747, 0.742679, -0.669113,
		-0.519203, 0.582308, 0.625576,
		0.854232, 0.330673, 0.401177,
		29.664455, 25.847668, 30.599579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979612, 26.293114, 30.466034>,  <29.066494, 25.616198, 30.318754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979612, 26.293114, 30.466034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376562, 26.249920, 30.442253>,  <29.614731, 26.224003, 30.427984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.376562, 26.249920, 30.442253>,  <28.979612, 26.293114, 30.466034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376562, 26.249920, 30.442253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063446, 0.860947, -0.504722,
		0.105686, 0.497100, 0.861233,
		0.992374, -0.107984, -0.059451,
		29.674274, 26.217525, 30.424417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289108, 26.861130, 30.707994>,  <28.979612, 26.293114, 30.466034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289108, 26.861130, 30.707994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555134, 26.690132, 30.463066>,  <29.714750, 26.587534, 30.316109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555134, 26.690132, 30.463066>,  <29.289108, 26.861130, 30.707994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555134, 26.690132, 30.463066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207198, 0.893380, -0.398673,
		0.717465, 0.138272, 0.682733,
		0.665066, -0.427495, -0.612319,
		29.754654, 26.561884, 30.279369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762941, 27.279810, 30.695665>,  <29.289108, 26.861130, 30.707994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762941, 27.279810, 30.695665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817089, 27.067677, 30.360901>,  <29.849577, 26.940397, 30.160042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817089, 27.067677, 30.360901>,  <29.762941, 27.279810, 30.695665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817089, 27.067677, 30.360901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176655, 0.844071, -0.506297,
		0.974919, -0.079308, 0.207947,
		0.135369, -0.530334, -0.836911,
		29.857700, 26.908577, 30.109827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142263, 27.754839, 30.342148>,  <29.762941, 27.279810, 30.695665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142263, 27.754839, 30.342148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098244, 27.472672, 30.062069>,  <30.071833, 27.303371, 29.894022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098244, 27.472672, 30.062069>,  <30.142263, 27.754839, 30.342148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098244, 27.472672, 30.062069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325143, 0.640166, -0.696039,
		0.939240, -0.304262, 0.158913,
		-0.110048, -0.705416, -0.700198,
		30.065229, 27.261047, 29.852009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795763, 27.685366, 30.036777>,  <30.142263, 27.754839, 30.342148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795763, 27.685366, 30.036777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523626, 27.537884, 29.783421>,  <30.360344, 27.449394, 29.631407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523626, 27.537884, 29.783421>,  <30.795763, 27.685366, 30.036777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523626, 27.537884, 29.783421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333052, 0.614307, -0.715334,
		0.652849, -0.697625, -0.295140,
		-0.680341, -0.368709, -0.633395,
		30.319523, 27.427273, 29.593403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230116, 27.542997, 29.437462>,  <30.795763, 27.685366, 30.036777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230116, 27.542997, 29.437462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842144, 27.584984, 29.349628>,  <30.609362, 27.610176, 29.296928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842144, 27.584984, 29.349628>,  <31.230116, 27.542997, 29.437462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842144, 27.584984, 29.349628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231715, 0.674253, -0.701207,
		0.074452, -0.731003, -0.678300,
		-0.969930, 0.104966, -0.219584,
		30.551165, 27.616474, 29.283752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216970, 27.657211, 28.741053>,  <31.230116, 27.542997, 29.437462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216970, 27.657211, 28.741053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865238, 27.796055, 28.871460>,  <30.654198, 27.879362, 28.949705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.865238, 27.796055, 28.871460>,  <31.216970, 27.657211, 28.741053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865238, 27.796055, 28.871460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157858, 0.858374, -0.488135,
		-0.449284, -0.377768, -0.809590,
		-0.879332, 0.347111, 0.326020,
		30.601439, 27.900188, 28.969265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064732, 28.023243, 28.249699>,  <31.216970, 27.657211, 28.741053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064732, 28.023243, 28.249699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768118, 28.149090, 28.486729>,  <30.590151, 28.224598, 28.628946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768118, 28.149090, 28.486729>,  <31.064732, 28.023243, 28.249699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768118, 28.149090, 28.486729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004501, 0.880877, -0.473323,
		-0.670901, -0.353652, -0.651784,
		-0.741533, 0.314619, 0.592574,
		30.545658, 28.243475, 28.664501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558731, 28.427513, 27.782921>,  <31.064732, 28.023243, 28.249699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558731, 28.427513, 27.782921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478117, 28.542500, 28.157459>,  <30.429749, 28.611492, 28.382183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478117, 28.542500, 28.157459>,  <30.558731, 28.427513, 27.782921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478117, 28.542500, 28.157459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199938, 0.923760, -0.326637,
		-0.958857, -0.253041, -0.128696,
		-0.201537, 0.287467, 0.936347,
		30.417656, 28.628740, 28.438364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863241, 28.745556, 27.771338>,  <30.558731, 28.427513, 27.782921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863241, 28.745556, 27.771338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044117, 28.921368, 28.081779>,  <30.152641, 29.026854, 28.268045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044117, 28.921368, 28.081779>,  <29.863241, 28.745556, 27.771338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044117, 28.921368, 28.081779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214840, 0.898204, -0.383501,
		-0.865661, 0.006676, 0.500586,
		0.452188, 0.439527, 0.776107,
		30.179773, 29.053226, 28.314611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422834, 29.341911, 28.047823>,  <29.863241, 28.745556, 27.771338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422834, 29.341911, 28.047823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792444, 29.424057, 28.176823>,  <30.014210, 29.473345, 28.254223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.792444, 29.424057, 28.176823>,  <29.422834, 29.341911, 28.047823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792444, 29.424057, 28.176823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128749, 0.961369, -0.243299,
		-0.360006, 0.183292, 0.914767,
		0.924023, 0.205364, 0.322500,
		30.069651, 29.485666, 28.273573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390499, 30.043644, 28.279852>,  <29.422834, 29.341911, 28.047823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390499, 30.043644, 28.279852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782711, 29.967930, 28.258949>,  <30.018038, 29.922501, 28.246408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782711, 29.967930, 28.258949>,  <29.390499, 30.043644, 28.279852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782711, 29.967930, 28.258949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162216, 0.930757, -0.327685,
		0.110663, 0.312829, 0.943341,
		0.980530, -0.189287, -0.052255,
		30.076870, 29.911144, 28.243273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760925, 30.630781, 28.667265>,  <29.390499, 30.043644, 28.279852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760925, 30.630781, 28.667265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001263, 30.483345, 28.383537>,  <30.145464, 30.394884, 28.213301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.001263, 30.483345, 28.383537>,  <29.760925, 30.630781, 28.667265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001263, 30.483345, 28.383537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092193, 0.913379, -0.396535,
		0.794034, 0.172860, 0.582777,
		0.600841, -0.368590, -0.709317,
		30.181515, 30.372768, 28.170742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222977, 31.188402, 28.579786>,  <29.760925, 30.630781, 28.667265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222977, 31.188402, 28.579786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303602, 30.957417, 28.263329>,  <30.351978, 30.818825, 28.073454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303602, 30.957417, 28.263329>,  <30.222977, 31.188402, 28.579786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303602, 30.957417, 28.263329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268122, 0.809400, -0.522477,
		0.942063, -0.106811, 0.317976,
		0.201563, -0.577462, -0.791144,
		30.364071, 30.784178, 28.025986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892271, 31.391314, 28.315975>,  <30.222977, 31.188402, 28.579786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892271, 31.391314, 28.315975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699949, 31.234108, 28.002449>,  <30.584557, 31.139786, 27.814333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699949, 31.234108, 28.002449>,  <30.892271, 31.391314, 28.315975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699949, 31.234108, 28.002449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136315, 0.849551, -0.509589,
		0.866172, -0.351855, -0.354887,
		-0.480796, -0.393015, -0.783820,
		30.555708, 31.116203, 27.767303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276169, 31.584936, 27.788370>,  <30.892271, 31.391314, 28.315975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276169, 31.584936, 27.788370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928448, 31.508652, 27.605968>,  <30.719814, 31.462881, 27.496527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928448, 31.508652, 27.605968>,  <31.276169, 31.584936, 27.788370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928448, 31.508652, 27.605968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288535, 0.553270, -0.781434,
		0.401320, -0.810878, -0.425933,
		-0.869304, -0.190709, -0.456005,
		30.667656, 31.451439, 27.469166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459496, 31.586016, 27.196203>,  <31.276169, 31.584936, 27.788370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459496, 31.586016, 27.196203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071625, 31.647717, 27.120380>,  <30.838902, 31.684738, 27.074886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.071625, 31.647717, 27.120380>,  <31.459496, 31.586016, 27.196203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.071625, 31.647717, 27.120380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237430, 0.410852, -0.880243,
		-0.057901, -0.898558, -0.435018,
		-0.969678, 0.154253, -0.189556,
		30.780722, 31.693993, 27.063513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361160, 31.333273, 26.410847>,  <31.459496, 31.586016, 27.196203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361160, 31.333273, 26.410847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087109, 31.589958, 26.548717>,  <30.922678, 31.743969, 26.631439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087109, 31.589958, 26.548717>,  <31.361160, 31.333273, 26.410847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087109, 31.589958, 26.548717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160226, 0.594357, -0.788079,
		-0.710583, -0.484708, -0.510029,
		-0.685127, 0.641715, 0.344677,
		30.881571, 31.782473, 26.652121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021173, 31.396412, 25.783754>,  <31.361160, 31.333273, 26.410847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021173, 31.396412, 25.783754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863783, 31.693432, 26.000565>,  <30.769348, 31.871645, 26.130651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863783, 31.693432, 26.000565>,  <31.021173, 31.396412, 25.783754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863783, 31.693432, 26.000565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099522, 0.551715, -0.828074,
		-0.913931, -0.379773, -0.143187,
		-0.393478, 0.742552, 0.542025,
		30.745739, 31.916197, 26.163172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568121, 31.686340, 25.363628>,  <31.021173, 31.396412, 25.783754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568121, 31.686340, 25.363628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614670, 31.980362, 25.630806>,  <30.642599, 32.156776, 25.791113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.614670, 31.980362, 25.630806>,  <30.568121, 31.686340, 25.363628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614670, 31.980362, 25.630806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181025, 0.676948, -0.713422,
		-0.976569, -0.037891, 0.211842,
		0.116374, 0.735055, 0.667946,
		30.649582, 32.200878, 25.831190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944672, 32.099491, 25.479574>,  <30.568121, 31.686340, 25.363628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944672, 32.099491, 25.479574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268280, 32.323448, 25.551140>,  <30.462444, 32.457821, 25.594080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268280, 32.323448, 25.551140>,  <29.944672, 32.099491, 25.479574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268280, 32.323448, 25.551140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328559, 0.683163, -0.652179,
		-0.487374, 0.468843, 0.736650,
		0.809021, 0.559888, 0.178913,
		30.510986, 32.491413, 25.604815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791304, 32.543682, 25.026413>,  <29.944672, 32.099491, 25.479574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791304, 32.543682, 25.026413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096611, 32.724888, 25.210674>,  <30.279795, 32.833611, 25.321230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.096611, 32.724888, 25.210674>,  <29.791304, 32.543682, 25.026413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096611, 32.724888, 25.210674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193529, 0.840561, -0.505968,
		-0.616418, 0.297039, 0.729244,
		0.763266, 0.453018, 0.460651,
		30.325590, 32.860794, 25.348869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610926, 33.201241, 25.435467>,  <29.791304, 32.543682, 25.026413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610926, 33.201241, 25.435467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981981, 33.201199, 25.286076>,  <30.204615, 33.201172, 25.196442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.981981, 33.201199, 25.286076>,  <29.610926, 33.201241, 25.435467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981981, 33.201199, 25.286076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234365, 0.778432, -0.582337,
		0.290787, 0.627729, 0.722080,
		0.927640, -0.000105, -0.373476,
		30.260273, 33.201168, 25.174032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836792, 33.914806, 25.379051>,  <29.610926, 33.201241, 25.435467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836792, 33.914806, 25.379051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074890, 33.725414, 25.119358>,  <30.217749, 33.611778, 24.963543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074890, 33.725414, 25.119358>,  <29.836792, 33.914806, 25.379051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074890, 33.725414, 25.119358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096824, 0.759810, -0.642895,
		0.797689, 0.445543, 0.406430,
		0.595246, -0.473478, -0.649231,
		30.253464, 33.583370, 24.924589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101315, 34.544724, 24.866455>,  <29.836792, 33.914806, 25.379051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101315, 34.544724, 24.866455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188393, 34.202248, 24.679031>,  <30.240641, 33.996761, 24.566578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188393, 34.202248, 24.679031>,  <30.101315, 34.544724, 24.866455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188393, 34.202248, 24.679031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258762, 0.412261, -0.873546,
		0.941090, 0.311413, -0.131802,
		0.217697, -0.856190, -0.468557,
		30.253702, 33.945389, 24.538464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417360, 34.835098, 24.293528>,  <30.101315, 34.544724, 24.866455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417360, 34.835098, 24.293528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270481, 34.470928, 24.217323>,  <30.182354, 34.252426, 24.171600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270481, 34.470928, 24.217323>,  <30.417360, 34.835098, 24.293528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270481, 34.470928, 24.217323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408459, 0.341847, -0.846346,
		0.835659, -0.232962, -0.497396,
		-0.367200, -0.910423, -0.190512,
		30.160320, 34.197800, 24.160170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541012, 34.659950, 23.548130>,  <30.417360, 34.835098, 24.293528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541012, 34.659950, 23.548130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235033, 34.428120, 23.660515>,  <30.051445, 34.289021, 23.727945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235033, 34.428120, 23.660515>,  <30.541012, 34.659950, 23.548130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235033, 34.428120, 23.660515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475998, 0.214823, -0.852805,
		0.433912, -0.786090, -0.440207,
		-0.764948, -0.579580, 0.280963,
		30.005548, 34.254246, 23.744804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203568, 34.413040, 22.843246>,  <30.541012, 34.659950, 23.548130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203568, 34.413040, 22.843246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958933, 34.353016, 23.153973>,  <29.812153, 34.317001, 23.340408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958933, 34.353016, 23.153973>,  <30.203568, 34.413040, 22.843246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958933, 34.353016, 23.153973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789740, 0.056627, -0.610822,
		0.047618, -0.987067, -0.153073,
		-0.611591, -0.149974, 0.776830,
		29.775457, 34.307999, 23.387018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724844, 33.853893, 22.706711>,  <30.203568, 34.413040, 22.843246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724844, 33.853893, 22.706711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537136, 34.053928, 22.997833>,  <29.424511, 34.173950, 23.172506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537136, 34.053928, 22.997833>,  <29.724844, 33.853893, 22.706711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537136, 34.053928, 22.997833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834960, 0.017013, -0.550047,
		-0.287453, -0.865808, 0.409569,
		-0.469268, 0.500087, 0.727806,
		29.396357, 34.203953, 23.216175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189674, 33.515892, 22.674122>,  <29.724844, 33.853893, 22.706711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189674, 33.515892, 22.674122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083794, 33.863731, 22.840847>,  <29.020266, 34.072433, 22.940882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083794, 33.863731, 22.840847>,  <29.189674, 33.515892, 22.674122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083794, 33.863731, 22.840847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600216, 0.189732, -0.777009,
		-0.754768, -0.455853, 0.471724,
		-0.264701, 0.869598, 0.416813,
		29.004383, 34.124611, 22.965891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.485044, 33.428375, 22.760254>,  <29.189674, 33.515892, 22.674122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.485044, 33.428375, 22.760254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594809, 33.811974, 22.731903>,  <28.660667, 34.042133, 22.714891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594809, 33.811974, 22.731903>,  <28.485044, 33.428375, 22.760254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594809, 33.811974, 22.731903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628766, 0.123171, -0.767777,
		-0.727566, 0.255252, 0.636784,
		0.274410, 0.958997, -0.070879,
		28.677132, 34.099674, 22.710640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.833050, 33.882618, 22.569317>,  <28.485044, 33.428375, 22.760254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.833050, 33.882618, 22.569317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119499, 34.125507, 22.431652>,  <28.291368, 34.271240, 22.349054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.119499, 34.125507, 22.431652>,  <27.833050, 33.882618, 22.569317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119499, 34.125507, 22.431652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618001, 0.322450, -0.717008,
		-0.324410, 0.726158, 0.606179,
		0.716123, 0.607224, -0.344160,
		28.334335, 34.307674, 22.328403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430754, 34.538315, 22.233665>,  <27.833050, 33.882618, 22.569317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430754, 34.538315, 22.233665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800941, 34.560669, 22.083794>,  <28.023054, 34.574081, 21.993872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800941, 34.560669, 22.083794>,  <27.430754, 34.538315, 22.233665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800941, 34.560669, 22.083794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365593, 0.390842, -0.844739,
		0.099235, 0.918760, 0.382142,
		0.925470, 0.055881, -0.374677,
		28.078583, 34.577435, 21.971390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524252, 35.182285, 22.084587>,  <27.430754, 34.538315, 22.233665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524252, 35.182285, 22.084587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805895, 35.006096, 21.861797>,  <27.974880, 34.900383, 21.728125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.805895, 35.006096, 21.861797>,  <27.524252, 35.182285, 22.084587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805895, 35.006096, 21.861797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357495, 0.457826, -0.813998,
		0.613541, 0.772256, 0.164891,
		0.704106, -0.440473, -0.556973,
		28.017126, 34.873955, 21.694706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837149, 35.676254, 21.697140>,  <27.524252, 35.182285, 22.084587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837149, 35.676254, 21.697140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892857, 35.328716, 21.507099>,  <27.926281, 35.120193, 21.393076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892857, 35.328716, 21.507099>,  <27.837149, 35.676254, 21.697140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892857, 35.328716, 21.507099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387554, 0.393683, -0.833556,
		0.911266, 0.300217, -0.281894,
		0.139271, -0.868840, -0.475100,
		27.934637, 35.068066, 21.364569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729780, 36.352974, 21.995337>,  <27.837149, 35.676254, 21.697140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729780, 36.352974, 21.995337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866669, 36.105484, 22.278198>,  <27.948801, 35.956989, 22.447914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866669, 36.105484, 22.278198>,  <27.729780, 36.352974, 21.995337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866669, 36.105484, 22.278198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893428, -0.447335, 0.040970,
		0.290985, -0.645811, -0.705872,
		0.342220, -0.618725, 0.707153,
		27.969336, 35.919868, 22.490345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.015411, 36.239868, 22.081553>,  <27.729780, 36.352974, 21.995337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.015411, 36.239868, 22.081553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901955, 35.882004, 21.943489>,  <26.833881, 35.667286, 21.860651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901955, 35.882004, 21.943489>,  <27.015411, 36.239868, 22.081553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901955, 35.882004, 21.943489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626184, -0.099799, 0.773262,
		-0.726251, 0.435463, -0.531913,
		-0.283642, -0.894657, -0.345159,
		26.816862, 35.613605, 21.839941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357454, 36.191208, 22.067129>,  <27.015411, 36.239868, 22.081553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357454, 36.191208, 22.067129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484951, 35.815895, 22.120842>,  <26.561449, 35.590706, 22.153069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484951, 35.815895, 22.120842>,  <26.357454, 36.191208, 22.067129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484951, 35.815895, 22.120842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769422, -0.173398, 0.614754,
		-0.553529, -0.299266, -0.777204,
		0.318741, -0.938282, 0.134281,
		26.580574, 35.534412, 22.161127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.898121, 35.660042, 22.001867>,  <26.357454, 36.191208, 22.067129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.898121, 35.660042, 22.001867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001612, 35.577072, 22.379234>,  <26.063705, 35.527290, 22.605654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.001612, 35.577072, 22.379234>,  <25.898121, 35.660042, 22.001867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001612, 35.577072, 22.379234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826321, 0.458281, 0.327373,
		-0.500255, -0.864265, -0.052830,
		0.258726, -0.207425, 0.943417,
		26.079229, 35.514843, 22.662260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361628, 35.214291, 22.272699>,  <25.898121, 35.660042, 22.001867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361628, 35.214291, 22.272699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569221, 35.454063, 22.516449>,  <25.693779, 35.597927, 22.662699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569221, 35.454063, 22.516449>,  <25.361628, 35.214291, 22.272699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569221, 35.454063, 22.516449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832585, 0.515905, 0.201602,
		-0.193532, -0.611984, 0.766825,
		0.518986, 0.599431, 0.609373,
		25.724918, 35.633892, 22.699261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120676, 35.528290, 21.607744>,  <25.361628, 35.214291, 22.272699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120676, 35.528290, 21.607744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203617, 35.740250, 21.278816>,  <25.253382, 35.867428, 21.081459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.203617, 35.740250, 21.278816>,  <25.120676, 35.528290, 21.607744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.203617, 35.740250, 21.278816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974125, 0.034582, -0.223347,
		-0.089914, 0.847354, 0.523361,
		0.207353, 0.529902, -0.822320,
		25.265823, 35.899220, 21.032120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.466543, 35.423054, 21.819122>,  <25.120676, 35.528290, 21.607744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.466543, 35.423054, 21.819122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.148760, 35.652767, 21.898155>,  <23.958090, 35.790596, 21.945574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.148760, 35.652767, 21.898155>,  <24.466543, 35.423054, 21.819122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.148760, 35.652767, 21.898155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588057, -0.646129, -0.486524,
		-0.151739, -0.502712, 0.851032,
		-0.794458, 0.574281, 0.197580,
		23.910421, 35.825050, 21.957430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.906424, 34.865959, 21.851297>,  <24.466543, 35.423054, 21.819122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.906424, 34.865959, 21.851297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.725958, 35.218582, 21.795723>,  <23.617678, 35.430157, 21.762379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.725958, 35.218582, 21.795723>,  <23.906424, 34.865959, 21.851297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.725958, 35.218582, 21.795723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756747, -0.460424, -0.464052,
		-0.473060, -0.104222, 0.874844,
		-0.451164, 0.881559, -0.138938,
		23.590609, 35.483051, 21.754042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.262289, 34.804749, 22.111357>,  <23.906424, 34.865959, 21.851297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.262289, 34.804749, 22.111357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.263212, 35.107994, 21.850510>,  <23.263765, 35.289940, 21.694002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.263212, 35.107994, 21.850510>,  <23.262289, 34.804749, 22.111357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.263212, 35.107994, 21.850510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830675, -0.361617, -0.423334,
		-0.556753, 0.542675, 0.628912,
		0.002307, 0.758114, -0.652118,
		23.263905, 35.335430, 21.654875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.547817, 35.030766, 21.928854>,  <23.262289, 34.804749, 22.111357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.547817, 35.030766, 21.928854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.774525, 35.150063, 21.621655>,  <22.910549, 35.221642, 21.437334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.774525, 35.150063, 21.621655>,  <22.547817, 35.030766, 21.928854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.774525, 35.150063, 21.621655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676501, -0.363579, -0.640435,
		-0.470235, 0.882531, -0.004302,
		0.566768, 0.298245, -0.768000,
		22.944555, 35.239536, 21.391254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.079884, 35.287430, 21.526245>,  <22.547817, 35.030766, 21.928854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.079884, 35.287430, 21.526245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.397636, 35.270199, 21.283890>,  <22.588289, 35.259861, 21.138477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.397636, 35.270199, 21.283890>,  <22.079884, 35.287430, 21.526245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.397636, 35.270199, 21.283890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605099, -0.143176, -0.783170,
		-0.053012, 0.988759, -0.139802,
		0.794383, -0.043077, -0.605888,
		22.635952, 35.257275, 21.102123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.783220, 35.643188, 20.886551>,  <22.079884, 35.287430, 21.526245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.783220, 35.643188, 20.886551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.101606, 35.427086, 20.777328>,  <22.292639, 35.297424, 20.711794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.101606, 35.427086, 20.777328>,  <21.783220, 35.643188, 20.886551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.101606, 35.427086, 20.777328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419740, -0.167546, -0.892047,
		0.436186, 0.824651, -0.360128,
		0.795965, -0.540258, -0.273058,
		22.340397, 35.265007, 20.695412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.929150, 35.836540, 20.173344>,  <21.783220, 35.643188, 20.886551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.929150, 35.836540, 20.173344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.091852, 35.475998, 20.232819>,  <22.189474, 35.259674, 20.268503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.091852, 35.475998, 20.232819>,  <21.929150, 35.836540, 20.173344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.091852, 35.475998, 20.232819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494384, -0.354058, -0.793869,
		0.768202, 0.249401, -0.589631,
		0.406755, -0.901356, 0.148688,
		22.213879, 35.205589, 20.277426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.331604, 35.688801, 19.534323>,  <21.929150, 35.836540, 20.173344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.331604, 35.688801, 19.534323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.242834, 35.348740, 19.725319>,  <22.189571, 35.144703, 19.839916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.242834, 35.348740, 19.725319>,  <22.331604, 35.688801, 19.534323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.242834, 35.348740, 19.725319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357271, -0.384745, -0.851075,
		0.907252, -0.359468, -0.218350,
		-0.221925, -0.850149, 0.477488,
		22.176256, 35.093697, 19.868565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.531498, 35.243156, 19.023037>,  <22.331604, 35.688801, 19.534323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.531498, 35.243156, 19.023037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.304613, 35.046528, 19.287350>,  <22.168482, 34.928551, 19.445936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.304613, 35.046528, 19.287350>,  <22.531498, 35.243156, 19.023037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.304613, 35.046528, 19.287350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445054, -0.492140, -0.748148,
		0.692961, -0.718443, 0.060375,
		-0.567214, -0.491567, 0.660780,
		22.134449, 34.899059, 19.485584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.572163, 34.574448, 18.812027>,  <22.531498, 35.243156, 19.023037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.572163, 34.574448, 18.812027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.232491, 34.590961, 19.022621>,  <22.028687, 34.600872, 19.148977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.232491, 34.590961, 19.022621>,  <22.572163, 34.574448, 18.812027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.232491, 34.590961, 19.022621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503715, -0.362777, -0.784005,
		0.158629, -0.930961, 0.328859,
		-0.849181, 0.041286, 0.526486,
		21.977736, 34.603348, 19.180567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.241240, 33.942368, 18.598230>,  <22.572163, 34.574448, 18.812027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.241240, 33.942368, 18.598230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.956015, 34.169250, 18.763069>,  <21.784880, 34.305378, 18.861973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.956015, 34.169250, 18.763069>,  <22.241240, 33.942368, 18.598230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.956015, 34.169250, 18.763069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653990, -0.326280, -0.682524,
		-0.252668, -0.756191, 0.603601,
		-0.713061, 0.567201, 0.412101,
		21.742096, 34.339413, 18.886700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.652180, 33.560299, 18.673376>,  <22.241240, 33.942368, 18.598230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.652180, 33.560299, 18.673376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.537764, 33.943443, 18.683800>,  <21.469114, 34.173332, 18.690054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.537764, 33.943443, 18.683800>,  <21.652180, 33.560299, 18.673376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.537764, 33.943443, 18.683800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601934, -0.158458, -0.782666,
		-0.745557, -0.239562, 0.621896,
		-0.286042, 0.957862, 0.026061,
		21.451950, 34.230801, 18.691618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.937361, 33.418869, 18.615408>,  <21.652180, 33.560299, 18.673376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.937361, 33.418869, 18.615408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.016567, 33.798599, 18.517784>,  <21.064091, 34.026440, 18.459209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.016567, 33.798599, 18.517784>,  <20.937361, 33.418869, 18.615408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.016567, 33.798599, 18.517784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706980, -0.034141, -0.706409,
		-0.678947, 0.312424, 0.664396,
		0.198016, 0.949329, -0.244057,
		21.075972, 34.083397, 18.444567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.239983, 33.673374, 18.421745>,  <20.937361, 33.418869, 18.615408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.239983, 33.673374, 18.421745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.505232, 33.913166, 18.242462>,  <20.664381, 34.057041, 18.134893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.505232, 33.913166, 18.242462>,  <20.239983, 33.673374, 18.421745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.505232, 33.913166, 18.242462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597048, 0.062480, -0.799768,
		-0.451442, 0.797946, 0.399352,
		0.663124, 0.599482, -0.448206,
		20.704168, 34.093010, 18.108000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.771034, 34.071552, 17.982718>,  <20.239983, 33.673374, 18.421745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.771034, 34.071552, 17.982718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.142155, 34.117352, 17.840691>,  <20.364828, 34.144833, 17.755474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.142155, 34.117352, 17.840691>,  <19.771034, 34.071552, 17.982718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.142155, 34.117352, 17.840691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355791, -0.014753, -0.934449,
		-0.112232, 0.993314, 0.027050,
		0.927802, 0.114500, -0.355067,
		20.420496, 34.151703, 17.734171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.792511, 34.732162, 17.529146>,  <19.771034, 34.071552, 17.982718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.792511, 34.732162, 17.529146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.100409, 34.502918, 17.416687>,  <20.285147, 34.365372, 17.349213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.100409, 34.502918, 17.416687>,  <19.792511, 34.732162, 17.529146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.100409, 34.502918, 17.416687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411020, -0.107980, -0.905209,
		0.488424, 0.812335, -0.318675,
		0.769743, -0.573107, -0.281146,
		20.331331, 34.330986, 17.332344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.999498, 35.005043, 16.876339>,  <19.792511, 34.732162, 17.529146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.999498, 35.005043, 16.876339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.153843, 34.636021, 16.875237>,  <20.246450, 34.414608, 16.874575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.153843, 34.636021, 16.875237>,  <19.999498, 35.005043, 16.876339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.153843, 34.636021, 16.875237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354649, -0.145575, -0.923598,
		0.851666, 0.357358, -0.383354,
		0.385862, -0.922553, -0.002756,
		20.269602, 34.359257, 16.874411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.435202, 34.937298, 16.283285>,  <19.999498, 35.005043, 16.876339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.435202, 34.937298, 16.283285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.370352, 34.550995, 16.364307>,  <20.331442, 34.319214, 16.412922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.370352, 34.550995, 16.364307>,  <20.435202, 34.937298, 16.283285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.370352, 34.550995, 16.364307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139250, -0.180827, -0.973607,
		0.976896, -0.186052, -0.105165,
		-0.162125, -0.965757, 0.202557,
		20.321714, 34.261269, 16.425074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.874884, 34.482174, 15.825948>,  <20.435202, 34.937298, 16.283285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.874884, 34.482174, 15.825948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.563431, 34.266438, 15.954228>,  <20.376560, 34.136997, 16.031197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.563431, 34.266438, 15.954228>,  <20.874884, 34.482174, 15.825948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.563431, 34.266438, 15.954228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143723, -0.344217, -0.927825,
		0.610802, -0.768525, 0.190503,
		-0.778630, -0.539337, 0.320702,
		20.329842, 34.104637, 16.050440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.932827, 33.824188, 15.500388>,  <20.874884, 34.482174, 15.825948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.932827, 33.824188, 15.500388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.546783, 33.840542, 15.603845>,  <20.315157, 33.850353, 15.665918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.546783, 33.840542, 15.603845>,  <20.932827, 33.824188, 15.500388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.546783, 33.840542, 15.603845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256127, -0.352802, -0.899961,
		0.054454, -0.934804, 0.350964,
		-0.965108, 0.040885, 0.258640,
		20.257252, 33.852806, 15.681437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.624802, 33.218620, 15.135214>,  <20.932827, 33.824188, 15.500388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.624802, 33.218620, 15.135214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.321701, 33.459171, 15.236537>,  <20.139841, 33.603500, 15.297331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.321701, 33.459171, 15.236537>,  <20.624802, 33.218620, 15.135214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.321701, 33.459171, 15.236537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258673, 0.079560, -0.962683,
		-0.599086, -0.794997, 0.095273,
		-0.757750, 0.601374, 0.253307,
		20.094376, 33.639584, 15.312529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.212542, 33.065586, 14.643520>,  <20.624802, 33.218620, 15.135214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.212542, 33.065586, 14.643520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.056391, 33.402435, 14.792346>,  <19.962700, 33.604546, 14.881641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.056391, 33.402435, 14.792346>,  <20.212542, 33.065586, 14.643520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.056391, 33.402435, 14.792346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225863, 0.304178, -0.925452,
		-0.892520, -0.445311, 0.071460,
		-0.390377, 0.842124, 0.372064,
		19.939278, 33.655071, 14.903965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511440, 33.188831, 14.327981>,  <20.212542, 33.065586, 14.643520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.511440, 33.188831, 14.327981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.653015, 33.542358, 14.450353>,  <19.737961, 33.754475, 14.523776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.653015, 33.542358, 14.450353>,  <19.511440, 33.188831, 14.327981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.653015, 33.542358, 14.450353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058971, 0.347542, -0.935808,
		-0.933408, 0.313178, 0.175128,
		0.353939, 0.883818, 0.305930,
		19.759197, 33.807503, 14.542131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.134853, 33.706131, 13.917731>,  <19.511440, 33.188831, 14.327981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.134853, 33.706131, 13.917731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.469425, 33.856701, 14.077075>,  <19.670168, 33.947044, 14.172681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.469425, 33.856701, 14.077075>,  <19.134853, 33.706131, 13.917731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.469425, 33.856701, 14.077075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161815, 0.524826, -0.835688,
		-0.523642, 0.763454, 0.378069,
		0.836430, 0.376424, 0.398359,
		19.720354, 33.969627, 14.196583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.171865, 34.422855, 13.714675>,  <19.134853, 33.706131, 13.917731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.171865, 34.422855, 13.714675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.542334, 34.343296, 13.842832>,  <19.764614, 34.295559, 13.919725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.542334, 34.343296, 13.842832>,  <19.171865, 34.422855, 13.714675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.542334, 34.343296, 13.842832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375118, 0.573088, -0.728599,
		-0.038696, 0.794990, 0.605387,
		0.926169, -0.198898, 0.320392,
		19.820185, 34.283627, 13.938949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.786312, 35.010311, 13.613784>,  <19.171865, 34.422855, 13.714675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.786312, 35.010311, 13.613784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.952019, 34.646397, 13.624143>,  <20.051443, 34.428047, 13.630358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.952019, 34.646397, 13.624143>,  <19.786312, 35.010311, 13.613784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.952019, 34.646397, 13.624143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345633, 0.130934, -0.929190,
		0.841974, 0.393883, 0.368694,
		0.414267, -0.909787, 0.025896,
		20.076300, 34.373459, 13.631911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.896076, 35.674198, 13.319393>,  <19.786312, 35.010311, 13.613784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.896076, 35.674198, 13.319393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.672007, 35.993320, 13.408580>,  <19.537565, 36.184795, 13.462092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.672007, 35.993320, 13.408580>,  <19.896076, 35.674198, 13.319393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.672007, 35.993320, 13.408580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607256, 0.212419, 0.765584,
		0.563423, 0.564258, -0.603463,
		-0.560173, 0.797804, 0.222967,
		19.503954, 36.232662, 13.475470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.288265, 36.209160, 13.454352>,  <19.896076, 35.674198, 13.319393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.288265, 36.209160, 13.454352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.969389, 36.312065, 13.672820>,  <19.778063, 36.373810, 13.803901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.969389, 36.312065, 13.672820>,  <20.288265, 36.209160, 13.454352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.969389, 36.312065, 13.672820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597182, 0.203170, 0.775948,
		0.088660, 0.944741, -0.315600,
		-0.797191, 0.257266, 0.546169,
		19.730232, 36.389244, 13.836671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.492270, 36.754169, 13.893502>,  <20.288265, 36.209160, 13.454352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.492270, 36.754169, 13.893502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.152637, 36.673069, 14.088624>,  <19.948858, 36.624409, 14.205697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.152637, 36.673069, 14.088624>,  <20.492270, 36.754169, 13.893502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.152637, 36.673069, 14.088624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411868, 0.324155, 0.851639,
		-0.330798, 0.924021, -0.191725,
		-0.849081, -0.202755, 0.487804,
		19.897913, 36.612244, 14.234965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.201191, 37.440964, 14.188264>,  <20.492270, 36.754169, 13.893502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.201191, 37.440964, 14.188264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.075716, 37.108822, 14.372487>,  <20.000431, 36.909538, 14.483021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.075716, 37.108822, 14.372487>,  <20.201191, 37.440964, 14.188264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.075716, 37.108822, 14.372487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055718, 0.468107, 0.881914,
		-0.947890, 0.302306, -0.100573,
		-0.313687, -0.830354, 0.460558,
		19.981609, 36.859715, 14.510654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.850676, 37.692760, 14.743999>,  <20.201191, 37.440964, 14.188264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.850676, 37.692760, 14.743999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.945148, 37.314434, 14.833129>,  <20.001831, 37.087437, 14.886607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.945148, 37.314434, 14.833129>,  <19.850676, 37.692760, 14.743999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.945148, 37.314434, 14.833129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123045, 0.256578, 0.958659,
		-0.963887, -0.198999, 0.176977,
		0.236180, -0.945816, 0.222826,
		20.016003, 37.030689, 14.899977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.350801, 37.389191, 15.313053>,  <19.850676, 37.692760, 14.743999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.350801, 37.389191, 15.313053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.708872, 37.211170, 15.303315>,  <19.923714, 37.104359, 15.297472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.708872, 37.211170, 15.303315>,  <19.350801, 37.389191, 15.313053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.708872, 37.211170, 15.303315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041435, 0.028709, 0.998729,
		-0.443787, -0.895045, 0.044140,
		0.895174, -0.445051, -0.024346,
		19.977425, 37.077656, 15.296011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.284731, 36.766048, 15.745292>,  <19.350801, 37.389191, 15.313053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.284731, 36.766048, 15.745292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.672287, 36.863529, 15.728024>,  <19.904821, 36.922016, 15.717665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.672287, 36.863529, 15.728024>,  <19.284731, 36.766048, 15.745292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.672287, 36.863529, 15.728024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073481, -0.116701, 0.990445,
		0.236334, -0.962804, -0.130978,
		0.968890, 0.243701, -0.043167,
		19.962954, 36.936638, 15.715075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.642887, 36.335247, 16.158724>,  <19.284731, 36.766048, 15.745292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.642887, 36.335247, 16.158724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.922098, 36.621113, 16.140770>,  <20.089624, 36.792633, 16.129997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.922098, 36.621113, 16.140770>,  <19.642887, 36.335247, 16.158724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.922098, 36.621113, 16.140770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133700, -0.068497, 0.988652,
		0.703476, -0.696109, -0.143364,
		0.698030, 0.714661, -0.044884,
		20.131508, 36.835510, 16.127304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.223797, 36.097103, 16.553154>,  <19.642887, 36.335247, 16.158724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.223797, 36.097103, 16.553154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.265232, 36.494949, 16.551926>,  <20.290094, 36.733658, 16.551189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.265232, 36.494949, 16.551926>,  <20.223797, 36.097103, 16.553154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.265232, 36.494949, 16.551926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312623, -0.029630, 0.949415,
		0.944212, -0.099310, -0.314009,
		0.103590, 0.994615, -0.003070,
		20.296309, 36.793335, 16.551004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.893724, 36.283657, 16.782553>,  <20.223797, 36.097103, 16.553154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.893724, 36.283657, 16.782553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.648668, 36.592327, 16.850899>,  <20.501635, 36.777527, 16.891907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.648668, 36.592327, 16.850899>,  <20.893724, 36.283657, 16.782553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.648668, 36.592327, 16.850899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207267, -0.051759, 0.976914,
		0.762701, 0.633911, -0.128232,
		-0.612639, 0.771672, 0.170865,
		20.464876, 36.823830, 16.902159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.194967, 36.545059, 17.339397>,  <20.893724, 36.283657, 16.782553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.194967, 36.545059, 17.339397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.848993, 36.744900, 17.358521>,  <20.641409, 36.864803, 17.369993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.848993, 36.744900, 17.358521>,  <21.194967, 36.545059, 17.339397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.848993, 36.744900, 17.358521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047616, -0.013138, 0.998779,
		0.499623, 0.866154, -0.012426,
		-0.864933, 0.499605, 0.047806,
		20.589514, 36.894783, 17.372862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.327696, 37.062038, 17.746212>,  <21.194967, 36.545059, 17.339397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.327696, 37.062038, 17.746212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.930573, 37.026230, 17.778004>,  <20.692299, 37.004745, 17.797079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.930573, 37.026230, 17.778004>,  <21.327696, 37.062038, 17.746212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.930573, 37.026230, 17.778004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079483, 0.003503, 0.996830,
		-0.089519, 0.995978, 0.003638,
		-0.992808, -0.089525, 0.079477,
		20.632730, 36.999371, 17.801847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.118940, 37.549065, 18.296055>,  <21.327696, 37.062038, 17.746212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.118940, 37.549065, 18.296055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.773066, 37.350338, 18.266418>,  <20.565540, 37.231102, 18.248636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.773066, 37.350338, 18.266418>,  <21.118940, 37.549065, 18.296055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.773066, 37.350338, 18.266418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128259, 0.075764, 0.988843,
		-0.485661, 0.864542, -0.129233,
		-0.864687, -0.496817, -0.074090,
		20.513660, 37.201294, 18.244192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.599398, 37.870678, 18.665398>,  <21.118940, 37.549065, 18.296055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.599398, 37.870678, 18.665398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.449299, 37.500443, 18.645473>,  <20.359240, 37.278301, 18.633518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.449299, 37.500443, 18.645473>,  <20.599398, 37.870678, 18.665398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.449299, 37.500443, 18.645473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124263, -0.003022, 0.992245,
		-0.918558, 0.378526, -0.113882,
		-0.375247, -0.925586, -0.049813,
		20.336725, 37.222767, 18.630529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.994507, 37.879868, 19.016073>,  <20.599398, 37.870678, 18.665398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.994507, 37.879868, 19.016073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.083157, 37.491032, 19.046852>,  <20.136347, 37.257729, 19.065319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.083157, 37.491032, 19.046852>,  <19.994507, 37.879868, 19.016073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.083157, 37.491032, 19.046852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315182, 0.003264, 0.949026,
		-0.922791, -0.234580, -0.305662,
		0.221624, -0.972092, 0.076947,
		20.149645, 37.199406, 19.069937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.502087, 37.575062, 19.482334>,  <19.994507, 37.879868, 19.016073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.502087, 37.575062, 19.482334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.797150, 37.305984, 19.459209>,  <19.974188, 37.144539, 19.445335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.797150, 37.305984, 19.459209>,  <19.502087, 37.575062, 19.482334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.797150, 37.305984, 19.459209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029470, -0.117620, 0.992622,
		-0.674530, -0.730513, -0.106588,
		0.737660, -0.672694, -0.057810,
		20.018448, 37.104176, 19.441866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.328865, 37.023705, 19.861149>,  <19.502087, 37.575062, 19.482334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.328865, 37.023705, 19.861149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.727142, 37.000477, 19.832245>,  <19.966108, 36.986538, 19.814903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.727142, 37.000477, 19.832245>,  <19.328865, 37.023705, 19.861149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.727142, 37.000477, 19.832245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065529, -0.110459, 0.991718,
		-0.065566, -0.992183, -0.106178,
		0.995694, -0.058065, -0.072259,
		20.025850, 36.983055, 19.810566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.527742, 36.351795, 20.309366>,  <19.328865, 37.023705, 19.861149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.527742, 36.351795, 20.309366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.841787, 36.591732, 20.247662>,  <20.030214, 36.735695, 20.210640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.841787, 36.591732, 20.247662>,  <19.527742, 36.351795, 20.309366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.841787, 36.591732, 20.247662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172041, 0.028054, 0.984690,
		0.594982, -0.799630, -0.081171,
		0.785111, 0.599838, -0.154260,
		20.077320, 36.771683, 20.201384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.023520, 36.023273, 20.788876>,  <19.527742, 36.351795, 20.309366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.023520, 36.023273, 20.788876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.160912, 36.384396, 20.685371>,  <20.243347, 36.601070, 20.623268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.160912, 36.384396, 20.685371>,  <20.023520, 36.023273, 20.788876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.160912, 36.384396, 20.685371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278442, 0.165245, 0.946131,
		0.896934, -0.397028, -0.194621,
		0.343481, 0.902808, -0.258763,
		20.263956, 36.655239, 20.607742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.685638, 35.992302, 21.044949>,  <20.023520, 36.023273, 20.788876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.685638, 35.992302, 21.044949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.593670, 36.378590, 20.996731>,  <20.538488, 36.610363, 20.967800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.593670, 36.378590, 20.996731>,  <20.685638, 35.992302, 21.044949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.593670, 36.378590, 20.996731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524871, 0.227348, 0.820258,
		0.819541, 0.125324, -0.559148,
		-0.229919, 0.965716, -0.120542,
		20.524694, 36.668304, 20.960567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.297958, 36.307377, 21.084555>,  <20.685638, 35.992302, 21.044949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.297958, 36.307377, 21.084555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.034094, 36.589485, 21.188427>,  <20.875774, 36.758751, 21.250751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.034094, 36.589485, 21.188427>,  <21.297958, 36.307377, 21.084555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034094, 36.589485, 21.188427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549493, 0.216868, 0.806861,
		0.512742, 0.674948, -0.530603,
		-0.659661, 0.705275, 0.259682,
		20.836195, 36.801067, 21.266333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.721909, 36.846416, 21.277390>,  <21.297958, 36.307377, 21.084555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.721909, 36.846416, 21.277390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.369175, 36.927628, 21.447636>,  <21.157536, 36.976353, 21.549784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.369175, 36.927628, 21.447636>,  <21.721909, 36.846416, 21.277390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.369175, 36.927628, 21.447636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471152, 0.416856, 0.777333,
		-0.019603, 0.886009, -0.463253,
		-0.881834, 0.203025, 0.425617,
		21.104624, 36.988537, 21.575321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.722853, 37.544449, 21.376207>,  <21.721909, 36.846416, 21.277390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.722853, 37.544449, 21.376207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.471807, 37.381710, 21.641712>,  <21.321180, 37.284069, 21.801014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.471807, 37.381710, 21.641712>,  <21.722853, 37.544449, 21.376207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.471807, 37.381710, 21.641712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476898, 0.472991, 0.740843,
		-0.615360, 0.781510, -0.102834,
		-0.627615, -0.406844, 0.663760,
		21.283524, 37.259659, 21.840839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.588978, 38.105980, 21.707449>,  <21.722853, 37.544449, 21.376207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.588978, 38.105980, 21.707449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.505150, 37.790184, 21.938202>,  <21.454853, 37.600708, 22.076654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.505150, 37.790184, 21.938202>,  <21.588978, 38.105980, 21.707449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.505150, 37.790184, 21.938202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403616, 0.467529, 0.786454,
		-0.890604, 0.397655, 0.220669,
		-0.209568, -0.789485, 0.576883,
		21.442280, 37.553337, 22.111267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.404882, 38.464085, 22.282930>,  <21.588978, 38.105980, 21.707449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.404882, 38.464085, 22.282930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.503874, 38.096329, 22.405224>,  <21.563269, 37.875675, 22.478600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.503874, 38.096329, 22.405224>,  <21.404882, 38.464085, 22.282930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.503874, 38.096329, 22.405224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359896, 0.380202, 0.852010,
		-0.899572, -0.100823, 0.424977,
		0.247480, -0.919392, 0.305733,
		21.578117, 37.820511, 22.496944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.248306, 38.436947, 22.901142>,  <21.404882, 38.464085, 22.282930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.248306, 38.436947, 22.901142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.540651, 38.169563, 22.845993>,  <21.716059, 38.009132, 22.812904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.540651, 38.169563, 22.845993>,  <21.248306, 38.436947, 22.901142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.540651, 38.169563, 22.845993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558632, 0.469805, 0.683531,
		-0.392137, -0.576586, 0.716783,
		0.730862, -0.668455, -0.137872,
		21.759911, 37.969028, 22.804632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.824034, 38.084118, 23.142805>,  <21.248306, 38.436947, 22.901142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.824034, 38.084118, 23.142805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.617783, 37.966858, 23.464848>,  <20.494032, 37.896503, 23.658073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.617783, 37.966858, 23.464848>,  <20.824034, 38.084118, 23.142805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.617783, 37.966858, 23.464848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856490, 0.150502, -0.493736,
		0.023567, -0.944148, -0.328679,
		-0.515626, -0.293146, 0.805106,
		20.463095, 37.878914, 23.706379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.359501, 37.635807, 22.846745>,  <20.824034, 38.084118, 23.142805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.359501, 37.635807, 22.846745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.241415, 37.826260, 23.178082>,  <20.170565, 37.940533, 23.376883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.241415, 37.826260, 23.178082>,  <20.359501, 37.635807, 22.846745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.241415, 37.826260, 23.178082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890887, 0.176073, -0.418711,
		-0.345210, -0.861567, 0.372200,
		-0.295213, 0.476131, 0.828341,
		20.152851, 37.969097, 23.426584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728235, 37.465111, 22.916576>,  <20.359501, 37.635807, 22.846745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.728235, 37.465111, 22.916576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.782053, 37.812729, 23.107014>,  <19.814344, 38.021297, 23.221275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.782053, 37.812729, 23.107014>,  <19.728235, 37.465111, 22.916576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.782053, 37.812729, 23.107014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879291, 0.326239, -0.347011,
		-0.456887, -0.371936, 0.808034,
		0.134546, 0.869041, 0.476094,
		19.822416, 38.073441, 23.249842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.040888, 37.718273, 23.062239>,  <19.728235, 37.465111, 22.916576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.040888, 37.718273, 23.062239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.236099, 38.057533, 23.144669>,  <19.353226, 38.261089, 23.194126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.236099, 38.057533, 23.144669>,  <19.040888, 37.718273, 23.062239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.236099, 38.057533, 23.144669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683536, 0.518205, -0.514046,
		-0.542777, 0.110010, 0.832641,
		0.488028, 0.848152, 0.206074,
		19.382507, 38.311977, 23.206491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.751730, 36.988117, 23.065470>,  <19.040888, 37.718273, 23.062239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.751730, 36.988117, 23.065470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.367832, 37.079830, 23.130363>,  <18.137493, 37.134857, 23.169300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.367832, 37.079830, 23.130363>,  <18.751730, 36.988117, 23.065470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.367832, 37.079830, 23.130363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142739, -0.895611, 0.421314,
		0.241899, 0.381197, 0.892286,
		-0.959745, 0.229279, 0.162236,
		18.079908, 37.148613, 23.179035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.279472, 26.498329, 26.066418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.662006, 26.611626, 26.095257>,  <31.891527, 26.679604, 26.112560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.662006, 26.611626, 26.095257>,  <31.279472, 26.498329, 26.066418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662006, 26.611626, 26.095257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182300, 0.770870, -0.610350,
		-0.228455, 0.570555, 0.788844,
		0.956334, 0.283243, 0.072097,
		31.948906, 26.696598, 26.116886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216534, 27.154116, 25.834713>,  <31.279472, 26.498329, 26.066418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216534, 27.154116, 25.834713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.616110, 27.137325, 25.842285>,  <31.855856, 27.127251, 25.846828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.616110, 27.137325, 25.842285>,  <31.216534, 27.154116, 25.834713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616110, 27.137325, 25.842285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042780, 0.693964, -0.718737,
		0.017033, 0.718785, 0.695024,
		0.998939, -0.041976, 0.018929,
		31.915792, 27.124733, 25.847963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492712, 27.732271, 26.167091>,  <31.216534, 27.154116, 25.834713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492712, 27.732271, 26.167091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.754061, 27.565731, 25.914185>,  <31.910870, 27.465807, 25.762442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.754061, 27.565731, 25.914185>,  <31.492712, 27.732271, 26.167091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754061, 27.565731, 25.914185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102076, 0.876007, -0.471373,
		0.750125, 0.243442, 0.614857,
		0.653371, -0.416351, -0.632265,
		31.950071, 27.440826, 25.724504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059795, 28.277269, 26.142616>,  <31.492712, 27.732271, 26.167091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059795, 28.277269, 26.142616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.103104, 28.017712, 25.841362>,  <32.129089, 27.861977, 25.660610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.103104, 28.017712, 25.841362>,  <32.059795, 28.277269, 26.142616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103104, 28.017712, 25.841362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250052, 0.751007, -0.611115,
		0.962159, -0.122154, 0.243573,
		0.108275, -0.648896, -0.753134,
		32.135586, 27.823042, 25.615421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604401, 28.602772, 25.769901>,  <32.059795, 28.277269, 26.142616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604401, 28.602772, 25.769901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.448116, 28.345726, 25.506268>,  <32.354347, 28.191498, 25.348087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.448116, 28.345726, 25.506268>,  <32.604401, 28.602772, 25.769901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448116, 28.345726, 25.506268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127865, 0.671168, -0.730195,
		0.911591, -0.369567, -0.180062,
		-0.390708, -0.642616, -0.659085,
		32.330906, 28.152941, 25.308542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099819, 28.532608, 25.185205>,  <32.604401, 28.602772, 25.769901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099819, 28.532608, 25.185205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.746758, 28.409081, 25.043476>,  <32.534920, 28.334965, 24.958439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.746758, 28.409081, 25.043476>,  <33.099819, 28.532608, 25.185205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746758, 28.409081, 25.043476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026656, 0.719752, -0.693719,
		0.469258, -0.621762, -0.627064,
		-0.882658, -0.308818, -0.354323,
		32.481960, 28.316435, 24.937180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177582, 28.506079, 24.452023>,  <33.099819, 28.532608, 25.185205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177582, 28.506079, 24.452023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.783459, 28.515228, 24.519730>,  <32.546986, 28.520718, 24.560354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.783459, 28.515228, 24.519730>,  <33.177582, 28.506079, 24.452023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783459, 28.515228, 24.519730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111279, 0.665854, -0.737737,
		-0.129583, -0.745732, -0.653523,
		-0.985305, 0.022875, 0.169267,
		32.487865, 28.522091, 24.570509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853683, 28.510099, 23.860802>,  <33.177582, 28.506079, 24.452023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853683, 28.510099, 23.860802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.586349, 28.676964, 24.107151>,  <32.425949, 28.777082, 24.254961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.586349, 28.676964, 24.107151>,  <32.853683, 28.510099, 23.860802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586349, 28.676964, 24.107151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156178, 0.730797, -0.664488,
		-0.727277, -0.540289, -0.423269,
		-0.668339, 0.417162, 0.615872,
		32.385849, 28.802113, 24.291912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269901, 28.628036, 23.403440>,  <32.853683, 28.510099, 23.860802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269901, 28.628036, 23.403440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.191895, 28.862083, 23.718300>,  <32.145092, 29.002512, 23.907215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.191895, 28.862083, 23.718300>,  <32.269901, 28.628036, 23.403440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191895, 28.862083, 23.718300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355927, 0.705630, -0.612701,
		-0.913939, -0.399654, 0.070651,
		-0.195015, 0.585118, 0.787151,
		32.133389, 29.037619, 23.954445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584545, 28.961756, 23.320524>,  <32.269901, 28.628036, 23.403440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584545, 28.961756, 23.320524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.746286, 29.197826, 23.600006>,  <31.843332, 29.339470, 23.767694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.746286, 29.197826, 23.600006>,  <31.584545, 28.961756, 23.320524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746286, 29.197826, 23.600006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141251, 0.795074, -0.589835,
		-0.903629, 0.139810, 0.404855,
		0.404355, 0.590178, 0.698704,
		31.867594, 29.374880, 23.809618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182991, 29.598627, 23.389332>,  <31.584545, 28.961756, 23.320524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182991, 29.598627, 23.389332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.545538, 29.691341, 23.530628>,  <31.763065, 29.746969, 23.615406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.545538, 29.691341, 23.530628>,  <31.182991, 29.598627, 23.389332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545538, 29.691341, 23.530628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022632, 0.861514, -0.507230,
		-0.421889, 0.451741, 0.786091,
		0.906365, 0.231785, 0.353240,
		31.817448, 29.760878, 23.636600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237700, 30.283014, 23.737652>,  <31.182991, 29.598627, 23.389332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237700, 30.283014, 23.737652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.600519, 30.190910, 23.596657>,  <31.818211, 30.135649, 23.512060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.600519, 30.190910, 23.596657>,  <31.237700, 30.283014, 23.737652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600519, 30.190910, 23.596657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009749, 0.848464, -0.529164,
		0.420916, 0.476540, 0.771841,
		0.907047, -0.230258, -0.352486,
		31.872633, 30.121832, 23.490911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417330, 30.939507, 23.404694>,  <31.237700, 30.283014, 23.737652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417330, 30.939507, 23.404694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.691328, 30.686230, 23.260555>,  <31.855726, 30.534264, 23.174072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.691328, 30.686230, 23.260555>,  <31.417330, 30.939507, 23.404694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691328, 30.686230, 23.260555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041974, 0.528089, -0.848151,
		0.727337, 0.565855, 0.388316,
		0.684996, -0.633190, -0.360347,
		31.896828, 30.496273, 23.152451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059357, 31.285011, 23.347446>,  <31.417330, 30.939507, 23.404694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059357, 31.285011, 23.347446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.058075, 30.993484, 23.073566>,  <32.057304, 30.818569, 22.909239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.058075, 30.993484, 23.073566>,  <32.059357, 31.285011, 23.347446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058075, 30.993484, 23.073566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202517, 0.670990, -0.713274,
		0.979273, 0.136377, -0.149748,
		-0.003205, -0.728816, -0.684702,
		32.057114, 30.774839, 22.868156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390022, 31.637753, 22.772966>,  <32.059357, 31.285011, 23.347446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390022, 31.637753, 22.772966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.219067, 31.307724, 22.625130>,  <32.116493, 31.109707, 22.536428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.219067, 31.307724, 22.625130>,  <32.390022, 31.637753, 22.772966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219067, 31.307724, 22.625130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100922, 0.449794, -0.887412,
		0.898417, -0.341971, -0.275505,
		-0.427389, -0.825071, -0.369590,
		32.090851, 31.060204, 22.514254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535786, 31.713360, 22.051390>,  <32.390022, 31.637753, 22.772966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535786, 31.713360, 22.051390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.229977, 31.455612, 22.058216>,  <32.046490, 31.300964, 22.062313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.229977, 31.455612, 22.058216>,  <32.535786, 31.713360, 22.051390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229977, 31.455612, 22.058216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200704, 0.212800, -0.956260,
		0.612553, -0.734509, -0.292018,
		-0.764524, -0.644370, 0.017067,
		32.000618, 31.262300, 22.063335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540947, 31.210812, 21.417961>,  <32.535786, 31.713360, 22.051390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540947, 31.210812, 21.417961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.161049, 31.227089, 21.542107>,  <31.933109, 31.236855, 21.616594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.161049, 31.227089, 21.542107>,  <32.540947, 31.210812, 21.417961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161049, 31.227089, 21.542107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300652, 0.157398, -0.940656,
		-0.087129, -0.986696, -0.137254,
		-0.949746, 0.040692, 0.310366,
		31.876125, 31.239296, 21.635216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150703, 30.971701, 20.820627>,  <32.540947, 31.210812, 21.417961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150703, 30.971701, 20.820627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.872511, 31.145775, 21.049335>,  <31.705595, 31.250219, 21.186562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.872511, 31.145775, 21.049335>,  <32.150703, 30.971701, 20.820627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872511, 31.145775, 21.049335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337934, 0.504142, -0.794759,
		-0.634120, -0.745960, -0.203557,
		-0.695480, 0.435183, 0.571772,
		31.663866, 31.276329, 21.220867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434126, 30.835464, 20.504503>,  <32.150703, 30.971701, 20.820627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434126, 30.835464, 20.504503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.347862, 31.167004, 20.710999>,  <31.296104, 31.365927, 20.834896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.347862, 31.167004, 20.710999>,  <31.434126, 30.835464, 20.504503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347862, 31.167004, 20.710999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532868, 0.343126, -0.773509,
		-0.818257, -0.441900, 0.367669,
		-0.215657, 0.828848, 0.516240,
		31.283165, 31.415657, 20.865871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751827, 30.971601, 20.297712>,  <31.434126, 30.835464, 20.504503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751827, 30.971601, 20.297712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.900385, 31.308044, 20.454990>,  <30.989519, 31.509911, 20.549356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.900385, 31.308044, 20.454990>,  <30.751827, 30.971601, 20.297712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900385, 31.308044, 20.454990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437930, 0.532109, -0.724622,
		-0.818708, 0.096929, 0.565969,
		0.371394, 0.841109, 0.393194,
		31.011803, 31.560377, 20.572948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.163713, 31.367779, 20.214493>,  <30.751827, 30.971601, 20.297712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.163713, 31.367779, 20.214493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.468792, 31.615807, 20.288044>,  <30.651838, 31.764624, 20.332174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.468792, 31.615807, 20.288044>,  <30.163713, 31.367779, 20.214493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468792, 31.615807, 20.288044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268155, 0.561893, -0.782541,
		-0.588549, 0.547531, 0.594827,
		0.762694, 0.620069, 0.183878,
		30.697599, 31.801826, 20.343208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872072, 32.061802, 20.363008>,  <30.163713, 31.367779, 20.214493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872072, 32.061802, 20.363008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.248569, 32.077400, 20.228821>,  <30.474468, 32.086758, 20.148308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.248569, 32.077400, 20.228821>,  <29.872072, 32.061802, 20.363008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248569, 32.077400, 20.228821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273073, 0.672350, -0.688024,
		0.198723, 0.739206, 0.643493,
		0.941244, 0.038994, -0.335469,
		30.530943, 32.089100, 20.128180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372850, 32.036175, 20.850412>,  <29.872072, 32.061802, 20.363008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372850, 32.036175, 20.850412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.022352, 32.217892, 20.786144>,  <29.812054, 32.326923, 20.747583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.022352, 32.217892, 20.786144>,  <30.372850, 32.036175, 20.850412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022352, 32.217892, 20.786144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432440, -0.594260, 0.678123,
		0.212587, 0.663680, 0.717172,
		-0.876243, 0.454294, -0.160670,
		29.759480, 32.354179, 20.737944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187675, 32.140644, 21.450371>,  <30.372850, 32.036175, 20.850412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187675, 32.140644, 21.450371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.845133, 32.150417, 21.244049>,  <29.639606, 32.156281, 21.120256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.845133, 32.150417, 21.244049>,  <30.187675, 32.140644, 21.450371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845133, 32.150417, 21.244049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432677, -0.579165, 0.690911,
		-0.281853, 0.814844, 0.506545,
		-0.856358, 0.024436, -0.515804,
		29.588224, 32.157749, 21.089308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.695574, 32.140827, 21.972210>,  <30.187675, 32.140644, 21.450371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.695574, 32.140827, 21.972210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.481726, 32.021957, 21.655762>,  <29.353416, 31.950636, 21.465893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.481726, 32.021957, 21.655762>,  <29.695574, 32.140827, 21.972210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481726, 32.021957, 21.655762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484829, -0.658902, 0.575143,
		-0.692187, 0.691041, 0.208184,
		-0.534620, -0.297172, -0.791119,
		29.321341, 31.932806, 21.418427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914223, 32.028374, 22.106588>,  <29.695574, 32.140827, 21.972210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914223, 32.028374, 22.106588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.952950, 31.828552, 21.762245>,  <28.976185, 31.708660, 21.555639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.952950, 31.828552, 21.762245>,  <28.914223, 32.028374, 22.106588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952950, 31.828552, 21.762245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353776, -0.825712, 0.439366,
		-0.930306, 0.262013, -0.256671,
		0.096816, -0.499549, -0.860858,
		28.981995, 31.678688, 21.503988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192217, 31.601501, 21.933304>,  <28.914223, 32.028374, 22.106588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192217, 31.601501, 21.933304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.490208, 31.413776, 21.743671>,  <28.669003, 31.301142, 21.629892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.490208, 31.413776, 21.743671>,  <28.192217, 31.601501, 21.933304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490208, 31.413776, 21.743671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283238, -0.865962, 0.412171,
		-0.603973, -0.172782, -0.778051,
		0.744979, -0.469314, -0.474080,
		28.713701, 31.272982, 21.601448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.906685, 30.861387, 21.769596>,  <28.192217, 31.601501, 21.933304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.906685, 30.861387, 21.769596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.294342, 30.811630, 21.684467>,  <28.526936, 30.781776, 21.633390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.294342, 30.811630, 21.684467>,  <27.906685, 30.861387, 21.769596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294342, 30.811630, 21.684467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015981, -0.893234, 0.449308,
		-0.245988, -0.432042, -0.867658,
		0.969141, -0.124390, -0.212820,
		28.585085, 30.774313, 21.620621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921125, 30.193270, 21.485437>,  <27.906685, 30.861387, 21.769596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921125, 30.193270, 21.485437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.277716, 30.304436, 21.628563>,  <28.491671, 30.371136, 21.714439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.277716, 30.304436, 21.628563>,  <27.921125, 30.193270, 21.485437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277716, 30.304436, 21.628563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052707, -0.848016, 0.527343,
		0.449991, -0.451254, -0.770635,
		0.891476, 0.277917, 0.357816,
		28.545158, 30.387812, 21.735909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365644, 29.608517, 21.439383>,  <27.921125, 30.193270, 21.485437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365644, 29.608517, 21.439383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.536026, 29.837841, 21.719349>,  <28.638254, 29.975435, 21.887329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.536026, 29.837841, 21.719349>,  <28.365644, 29.608517, 21.439383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536026, 29.837841, 21.719349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085325, -0.795611, 0.599769,
		0.900712, -0.195755, -0.387811,
		0.425954, 0.573309, 0.699914,
		28.663813, 30.009834, 21.929323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865162, 29.189434, 21.636427>,  <28.365644, 29.608517, 21.439383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865162, 29.189434, 21.636427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.845034, 29.455040, 21.934837>,  <28.832956, 29.614403, 22.113884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.845034, 29.455040, 21.934837>,  <28.865162, 29.189434, 21.636427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845034, 29.455040, 21.934837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004692, -0.747120, 0.664672,
		0.998722, 0.029948, 0.040713,
		-0.050323, 0.664014, 0.746025,
		28.829937, 29.654243, 22.158646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465517, 29.105080, 22.076315>,  <28.865162, 29.189434, 21.636427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465517, 29.105080, 22.076315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.176037, 29.266125, 22.300514>,  <29.002350, 29.362753, 22.435034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.176037, 29.266125, 22.300514>,  <29.465517, 29.105080, 22.076315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176037, 29.266125, 22.300514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060240, -0.772229, 0.632482,
		0.687481, 0.491492, 0.534608,
		-0.723700, 0.402614, 0.560500,
		28.958927, 29.386909, 22.468664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722513, 28.993372, 22.771570>,  <29.465517, 29.105080, 22.076315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722513, 28.993372, 22.771570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.324474, 29.030785, 22.784420>,  <29.085651, 29.053232, 22.792130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.324474, 29.030785, 22.784420>,  <29.722513, 28.993372, 22.771570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324474, 29.030785, 22.784420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064127, -0.857551, 0.510385,
		0.075284, 0.505824, 0.859346,
		-0.995098, 0.093531, 0.032123,
		29.025946, 29.058844, 22.794058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479280, 29.069941, 23.476316>,  <29.722513, 28.993372, 22.771570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479280, 29.069941, 23.476316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.238190, 28.859924, 23.235966>,  <29.093534, 28.733915, 23.091755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.238190, 28.859924, 23.235966>,  <29.479280, 29.069941, 23.476316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238190, 28.859924, 23.235966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000022, -0.753017, 0.658001,
		-0.797947, 0.396608, 0.453853,
		-0.602728, -0.525040, -0.600876,
		29.057371, 28.702412, 23.055702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001377, 28.876390, 23.829826>,  <29.479280, 29.069941, 23.476316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001377, 28.876390, 23.829826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.998779, 28.605808, 23.535244>,  <28.997221, 28.443459, 23.358494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.998779, 28.605808, 23.535244>,  <29.001377, 28.876390, 23.829826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998779, 28.605808, 23.535244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013065, -0.736467, 0.676348,
		-0.999893, -0.005228, 0.013623,
		-0.006497, -0.676454, -0.736456,
		28.996830, 28.402872, 23.314306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573250, 28.503870, 24.079916>,  <29.001377, 28.876390, 23.829826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573250, 28.503870, 24.079916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.767467, 28.294815, 23.799603>,  <28.883999, 28.169382, 23.631414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.767467, 28.294815, 23.799603>,  <28.573250, 28.503870, 24.079916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767467, 28.294815, 23.799603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095364, -0.765167, 0.636731,
		-0.868996, -0.375990, -0.321681,
		0.485543, -0.522639, -0.700782,
		28.913132, 28.138023, 23.589369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249001, 27.836115, 24.151207>,  <28.573250, 28.503870, 24.079916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249001, 27.836115, 24.151207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.586355, 27.769897, 23.946739>,  <28.788769, 27.730167, 23.824059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.586355, 27.769897, 23.946739>,  <28.249001, 27.836115, 24.151207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586355, 27.769897, 23.946739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058004, -0.917743, 0.392917,
		-0.534167, -0.361031, -0.764410,
		0.843387, -0.165544, -0.511169,
		28.839371, 27.720234, 23.793388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172752, 27.120840, 24.011869>,  <28.249001, 27.836115, 24.151207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172752, 27.120840, 24.011869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.562912, 27.195286, 23.964619>,  <28.797009, 27.239954, 23.936268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.562912, 27.195286, 23.964619>,  <28.172752, 27.120840, 24.011869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562912, 27.195286, 23.964619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220338, -0.807149, 0.547687,
		0.006588, -0.560242, -0.828303,
		0.975402, 0.186115, -0.118125,
		28.855532, 27.251120, 23.929182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505957, 26.550217, 23.849754>,  <28.172752, 27.120840, 24.011869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505957, 26.550217, 23.849754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.790373, 26.774925, 24.018909>,  <28.961023, 26.909750, 24.120401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.790373, 26.774925, 24.018909>,  <28.505957, 26.550217, 23.849754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790373, 26.774925, 24.018909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170382, -0.721145, 0.671506,
		0.682196, -0.405416, -0.608479,
		0.711041, 0.561772, 0.422886,
		29.003685, 26.943457, 24.145775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014912, 26.068129, 23.943321>,  <28.505957, 26.550217, 23.849754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014912, 26.068129, 23.943321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.109003, 26.374779, 24.182304>,  <29.165459, 26.558769, 24.325693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.109003, 26.374779, 24.182304>,  <29.014912, 26.068129, 23.943321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109003, 26.374779, 24.182304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394434, -0.637107, 0.662206,
		0.888307, 0.079886, -0.452249,
		0.235230, 0.766624, 0.597457,
		29.179571, 26.604767, 24.361542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.963610, 26.036695, 24.186041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.812984, 26.300407, 24.446365>,  <29.722610, 26.458633, 24.602560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.812984, 26.300407, 24.446365>,  <29.963610, 26.036695, 24.186041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812984, 26.300407, 24.446365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360178, -0.543058, 0.758525,
		0.853507, 0.520038, -0.032963,
		-0.376561, 0.659278, 0.650810,
		29.700016, 26.498192, 24.641609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514809, 26.143564, 24.663170>,  <29.963610, 26.036695, 24.186041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514809, 26.143564, 24.663170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.163599, 26.238239, 24.829571>,  <29.952873, 26.295044, 24.929411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.163599, 26.238239, 24.829571>,  <30.514809, 26.143564, 24.663170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163599, 26.238239, 24.829571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341780, -0.298403, 0.891146,
		0.335058, 0.924627, 0.181110,
		-0.878022, 0.236686, 0.416002,
		29.900192, 26.309244, 24.954370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668667, 26.423531, 25.335491>,  <30.514809, 26.143564, 24.663170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668667, 26.423531, 25.335491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.287809, 26.302975, 25.355846>,  <30.059296, 26.230640, 25.368059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.287809, 26.302975, 25.355846>,  <30.668667, 26.423531, 25.335491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287809, 26.302975, 25.355846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137328, -0.273071, 0.952141,
		-0.273071, 0.913562, 0.301392,
		-0.952141, -0.301392, 0.050890,
		30.002167, 26.212557, 25.371113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528011, 26.642107, 26.003143>,  <30.668667, 26.423531, 25.335491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528011, 26.642107, 26.003143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.230734, 26.397747, 25.893990>,  <30.052368, 26.251131, 25.828497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.230734, 26.397747, 25.893990>,  <30.528011, 26.642107, 26.003143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230734, 26.397747, 25.893990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093221, -0.309333, 0.946374,
		-0.662551, 0.728777, 0.172946,
		-0.743193, -0.610898, -0.272886,
		30.007776, 26.214478, 25.812124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125698, 26.731703, 26.542021>,  <30.528011, 26.642107, 26.003143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125698, 26.731703, 26.542021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.030468, 26.384506, 26.367706>,  <29.973330, 26.176188, 26.263119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.030468, 26.384506, 26.367706>,  <30.125698, 26.731703, 26.542021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030468, 26.384506, 26.367706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029477, -0.454937, 0.890035,
		-0.970799, 0.199052, 0.133896,
		-0.238077, -0.867992, -0.435785,
		29.959045, 26.124109, 26.236971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568083, 26.437162, 26.927279>,  <30.125698, 26.731703, 26.542021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568083, 26.437162, 26.927279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.710011, 26.117374, 26.733391>,  <29.795166, 25.925503, 26.617058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.710011, 26.117374, 26.733391>,  <29.568083, 26.437162, 26.927279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710011, 26.117374, 26.733391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072347, -0.493421, 0.866776,
		-0.932132, -0.342615, -0.117235,
		0.354817, -0.799469, -0.484721,
		29.816456, 25.877533, 26.587975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182755, 25.797636, 27.202700>,  <29.568083, 26.437162, 26.927279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182755, 25.797636, 27.202700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.532648, 25.678135, 27.050076>,  <29.742584, 25.606434, 26.958500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.532648, 25.678135, 27.050076>,  <29.182755, 25.797636, 27.202700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532648, 25.678135, 27.050076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120546, -0.628477, 0.768431,
		-0.469372, -0.718167, -0.513736,
		0.874733, -0.298751, -0.381562,
		29.795069, 25.588509, 26.935606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134129, 25.077953, 27.160395>,  <29.182755, 25.797636, 27.202700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134129, 25.077953, 27.160395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.533110, 25.100235, 27.178204>,  <29.772499, 25.113604, 27.188889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.533110, 25.100235, 27.178204>,  <29.134129, 25.077953, 27.160395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.533110, 25.100235, 27.178204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013624, -0.761715, 0.647770,
		0.069997, -0.645514, -0.760534,
		0.997454, 0.055703, 0.044524,
		29.832346, 25.116945, 27.191561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455681, 24.418394, 27.048126>,  <29.134129, 25.077953, 27.160395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455681, 24.418394, 27.048126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.764439, 24.599415, 27.226730>,  <29.949694, 24.708027, 27.333893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.764439, 24.599415, 27.226730>,  <29.455681, 24.418394, 27.048126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764439, 24.599415, 27.226730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127818, -0.798469, 0.588311,
		0.622767, -0.397043, -0.674180,
		0.771897, 0.452553, 0.446510,
		29.996008, 24.735180, 27.360683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927116, 23.897427, 27.065538>,  <29.455681, 24.418394, 27.048126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927116, 23.897427, 27.065538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.039202, 24.179058, 27.326538>,  <30.106453, 24.348038, 27.483137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.039202, 24.179058, 27.326538>,  <29.927116, 23.897427, 27.065538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039202, 24.179058, 27.326538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171755, -0.705534, 0.687547,
		0.944448, -0.080588, -0.318628,
		0.280211, 0.704079, 0.652499,
		30.123264, 24.390282, 27.522287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481348, 23.580023, 27.465145>,  <29.927116, 23.897427, 27.065538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481348, 23.580023, 27.465145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.353146, 23.875748, 27.702023>,  <30.276224, 24.053183, 27.844149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.353146, 23.875748, 27.702023>,  <30.481348, 23.580023, 27.465145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353146, 23.875748, 27.702023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078680, -0.602237, 0.794431,
		0.943973, 0.301214, 0.134852,
		-0.320507, 0.739311, 0.592194,
		30.256994, 24.097542, 27.879681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896128, 23.518915, 28.091898>,  <30.481348, 23.580023, 27.465145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896128, 23.518915, 28.091898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.597059, 23.734451, 28.247147>,  <30.417618, 23.863773, 28.340296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.597059, 23.734451, 28.247147>,  <30.896128, 23.518915, 28.091898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597059, 23.734451, 28.247147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013231, -0.596432, 0.802555,
		0.663935, 0.594913, 0.453066,
		-0.747673, 0.538839, 0.388121,
		30.372757, 23.896103, 28.363583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040207, 23.568756, 28.769026>,  <30.896128, 23.518915, 28.091898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040207, 23.568756, 28.769026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.648914, 23.648880, 28.747353>,  <30.414139, 23.696955, 28.734348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.648914, 23.648880, 28.747353>,  <31.040207, 23.568756, 28.769026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648914, 23.648880, 28.747353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124634, -0.358404, 0.925210,
		0.165911, 0.911824, 0.375568,
		-0.978233, 0.200311, -0.054181,
		30.355444, 23.708973, 28.731098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924845, 23.905945, 29.452234>,  <31.040207, 23.568756, 28.769026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924845, 23.905945, 29.452234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.558506, 23.795300, 29.335815>,  <30.338703, 23.728912, 29.265965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.558506, 23.795300, 29.335815>,  <30.924845, 23.905945, 29.452234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558506, 23.795300, 29.335815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104961, -0.534715, 0.838488,
		-0.387565, 0.798476, 0.460684,
		-0.915847, -0.276615, -0.291046,
		30.283752, 23.712315, 29.248501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459175, 24.153524, 29.989040>,  <30.924845, 23.905945, 29.452234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459175, 24.153524, 29.989040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.272041, 23.847794, 29.811531>,  <30.159761, 23.664356, 29.705025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.272041, 23.847794, 29.811531>,  <30.459175, 24.153524, 29.989040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272041, 23.847794, 29.811531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086118, -0.460301, 0.883576,
		-0.879610, 0.451585, 0.149523,
		-0.467835, -0.764326, -0.443775,
		30.131691, 23.618496, 29.678398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892975, 24.020094, 30.369270>,  <30.459175, 24.153524, 29.989040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892975, 24.020094, 30.369270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.914886, 23.676918, 30.164940>,  <29.928034, 23.471012, 30.042341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.914886, 23.676918, 30.164940>,  <29.892975, 24.020094, 30.369270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914886, 23.676918, 30.164940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136475, -0.513224, 0.847334,
		-0.989128, 0.023299, -0.145201,
		0.054779, -0.857938, -0.510824,
		29.931320, 23.419537, 30.011692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477377, 23.617638, 30.679558>,  <29.892975, 24.020094, 30.369270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477377, 23.617638, 30.679558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.685291, 23.325478, 30.502316>,  <29.810040, 23.150183, 30.395971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.685291, 23.325478, 30.502316>,  <29.477377, 23.617638, 30.679558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685291, 23.325478, 30.502316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122041, -0.576843, 0.807687,
		-0.845534, -0.365747, -0.388973,
		0.519786, -0.730398, -0.443104,
		29.841227, 23.106358, 30.369385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162127, 22.954082, 30.878229>,  <29.477377, 23.617638, 30.679558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162127, 22.954082, 30.878229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.549015, 22.885490, 30.803314>,  <29.781149, 22.844336, 30.758366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.549015, 22.885490, 30.803314>,  <29.162127, 22.954082, 30.878229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549015, 22.885490, 30.803314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043404, -0.615051, 0.787291,
		-0.250197, -0.769615, -0.587448,
		0.967222, -0.171480, -0.187288,
		29.839182, 22.834047, 30.747128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190981, 22.327662, 31.062939>,  <29.162127, 22.954082, 30.878229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190981, 22.327662, 31.062939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.576990, 22.429672, 31.038643>,  <29.808596, 22.490879, 31.024065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.576990, 22.429672, 31.038643>,  <29.190981, 22.327662, 31.062939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576990, 22.429672, 31.038643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169535, -0.430358, 0.886595,
		0.199964, -0.865883, -0.458542,
		0.965025, 0.255026, -0.060741,
		29.866497, 22.506180, 31.020420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609987, 21.790243, 31.210396>,  <29.190981, 22.327662, 31.062939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609987, 21.790243, 31.210396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.887892, 22.062908, 31.302170>,  <30.054634, 22.226507, 31.357235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.887892, 22.062908, 31.302170>,  <29.609987, 21.790243, 31.210396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887892, 22.062908, 31.302170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193278, -0.484207, 0.853338,
		0.692785, -0.548522, -0.468159,
		0.694761, 0.681665, 0.229434,
		30.096319, 22.267408, 31.371000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217548, 21.414642, 31.403595>,  <29.609987, 21.790243, 31.210396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217548, 21.414642, 31.403595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252998, 21.780785, 31.560703>,  <30.274269, 22.000469, 31.654968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.252998, 21.780785, 31.560703>,  <30.217548, 21.414642, 31.403595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252998, 21.780785, 31.560703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219839, -0.402574, 0.888597,
		0.971502, 0.007594, -0.236910,
		0.088626, 0.915356, 0.392771,
		30.279587, 22.055391, 31.678535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967199, 21.446281, 31.774082>,  <30.217548, 21.414642, 31.403595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967199, 21.446281, 31.774082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.727274, 21.725060, 31.931305>,  <30.583319, 21.892326, 32.025639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.727274, 21.725060, 31.931305>,  <30.967199, 21.446281, 31.774082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727274, 21.725060, 31.931305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314742, -0.246124, 0.916712,
		0.735637, 0.673568, -0.071728,
		-0.599813, 0.696943, 0.393058,
		30.547331, 21.934143, 32.049221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332426, 21.761103, 32.264217>,  <30.967199, 21.446281, 31.774082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332426, 21.761103, 32.264217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955458, 21.837952, 32.373711>,  <30.729277, 21.884060, 32.439407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.955458, 21.837952, 32.373711>,  <31.332426, 21.761103, 32.264217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955458, 21.837952, 32.373711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249326, -0.141891, 0.957968,
		0.222886, 0.971060, 0.085821,
		-0.942421, 0.192120, 0.273736,
		30.672731, 21.895588, 32.455830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859797, 21.924763, 31.736292>,  <31.332426, 21.761103, 32.264217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859797, 21.924763, 31.736292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.993109, 21.697124, 31.435612>,  <32.073097, 21.560541, 31.255203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.993109, 21.697124, 31.435612>,  <31.859797, 21.924763, 31.736292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993109, 21.697124, 31.435612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939266, 0.269641, 0.212304,
		0.081868, -0.776802, 0.624401,
		0.333282, -0.569098, -0.751699,
		32.093094, 21.526396, 31.210102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315643, 21.721977, 32.316635>,  <31.859797, 21.924763, 31.736292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315643, 21.721977, 32.316635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.684731, 21.849560, 32.403214>,  <32.906185, 21.926109, 32.455162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.684731, 21.849560, 32.403214>,  <32.315643, 21.721977, 32.316635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684731, 21.849560, 32.403214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040872, 0.639314, -0.767859,
		-0.383293, 0.699674, 0.602945,
		0.922722, 0.318958, 0.216448,
		32.961548, 21.945248, 32.468147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370346, 22.443520, 32.391174>,  <32.315643, 21.721977, 32.316635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370346, 22.443520, 32.391174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741642, 22.338028, 32.286247>,  <32.964420, 22.274733, 32.223289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.741642, 22.338028, 32.286247>,  <32.370346, 22.443520, 32.391174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741642, 22.338028, 32.286247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011424, 0.725091, -0.688559,
		0.371797, 0.636154, 0.676074,
		0.928244, -0.263727, -0.262319,
		33.020115, 22.258909, 32.207550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882919, 23.074957, 32.447651>,  <32.370346, 22.443520, 32.391174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882919, 23.074957, 32.447651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.017033, 22.809937, 32.179737>,  <33.097500, 22.650925, 32.018990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.017033, 22.809937, 32.179737>,  <32.882919, 23.074957, 32.447651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017033, 22.809937, 32.179737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089003, 0.730029, -0.677596,
		0.937903, 0.167575, 0.303738,
		0.335285, -0.662553, -0.669782,
		33.117619, 22.611170, 31.978802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372009, 23.484116, 31.943790>,  <32.882919, 23.074957, 32.447651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372009, 23.484116, 31.943790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.371807, 23.146484, 31.729301>,  <33.371685, 22.943907, 31.600609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.371807, 23.146484, 31.729301>,  <33.372009, 23.484116, 31.943790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371807, 23.146484, 31.729301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121140, 0.532324, -0.837828,
		0.992635, 0.064534, -0.102521,
		-0.000506, -0.844077, -0.536222,
		33.371655, 22.893261, 31.568436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893284, 23.500444, 31.413403>,  <33.372009, 23.484116, 31.943790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893284, 23.500444, 31.413403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.592739, 23.269066, 31.286373>,  <33.412411, 23.130239, 31.210155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.592739, 23.269066, 31.286373>,  <33.893284, 23.500444, 31.413403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592739, 23.269066, 31.286373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058301, 0.537563, -0.841205,
		0.657309, -0.613535, -0.437629,
		-0.751363, -0.578447, -0.317576,
		33.367329, 23.095531, 31.191101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027363, 23.413702, 30.621744>,  <33.893284, 23.500444, 31.413403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027363, 23.413702, 30.621744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660305, 23.286617, 30.717236>,  <33.440071, 23.210365, 30.774530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.660305, 23.286617, 30.717236>,  <34.027363, 23.413702, 30.621744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660305, 23.286617, 30.717236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350540, 0.364083, -0.862882,
		0.187232, -0.875501, -0.445469,
		-0.917641, -0.317714, 0.238731,
		33.385014, 23.191303, 30.788855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698391, 23.136995, 29.948400>,  <34.027363, 23.413702, 30.621744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698391, 23.136995, 29.948400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410007, 23.256279, 30.198612>,  <33.236977, 23.327850, 30.348740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410007, 23.256279, 30.198612>,  <33.698391, 23.136995, 29.948400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410007, 23.256279, 30.198612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395203, 0.564552, -0.724635,
		-0.569237, -0.769644, -0.289166,
		-0.720960, 0.298210, 0.625529,
		33.193718, 23.345741, 30.386271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089218, 22.922489, 29.638205>,  <33.698391, 23.136995, 29.948400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089218, 22.922489, 29.638205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018471, 23.214611, 29.902134>,  <32.976021, 23.389885, 30.060492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018471, 23.214611, 29.902134>,  <33.089218, 22.922489, 29.638205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018471, 23.214611, 29.902134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415250, 0.552438, -0.722759,
		-0.892348, -0.401827, 0.205549,
		-0.176871, 0.730306, 0.659825,
		32.965408, 23.433702, 30.100082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555664, 23.201653, 29.467562>,  <33.089218, 22.922489, 29.638205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555664, 23.201653, 29.467562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.708035, 23.496109, 29.691345>,  <32.799458, 23.672783, 29.825615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.708035, 23.496109, 29.691345>,  <32.555664, 23.201653, 29.467562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708035, 23.496109, 29.691345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348398, 0.674756, -0.650633,
		-0.856456, 0.052927, 0.513500,
		0.380924, 0.736141, 0.559459,
		32.822311, 23.716951, 29.859182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150078, 23.649229, 29.370026>,  <32.555664, 23.201653, 29.467562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150078, 23.649229, 29.370026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.404408, 23.903072, 29.545750>,  <32.557007, 24.055378, 29.651184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.404408, 23.903072, 29.545750>,  <32.150078, 23.649229, 29.370026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404408, 23.903072, 29.545750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330937, 0.738359, -0.587628,
		-0.697283, 0.228247, 0.679485,
		0.635828, 0.634610, 0.439310,
		32.595158, 24.093456, 29.677542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783489, 24.289135, 29.505152>,  <32.150078, 23.649229, 29.370026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783489, 24.289135, 29.505152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.177284, 24.355209, 29.481495>,  <32.413563, 24.394854, 29.467300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.177284, 24.355209, 29.481495>,  <31.783489, 24.289135, 29.505152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177284, 24.355209, 29.481495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163396, 0.740353, -0.652058,
		-0.063925, 0.651606, 0.755859,
		0.984487, 0.165187, -0.059143,
		32.472630, 24.404766, 29.463753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766500, 24.916641, 29.373482>,  <31.783489, 24.289135, 29.505152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766500, 24.916641, 29.373482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.134167, 24.818127, 29.250530>,  <32.354767, 24.759018, 29.176760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.134167, 24.818127, 29.250530>,  <31.766500, 24.916641, 29.373482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134167, 24.818127, 29.250530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049571, 0.701853, -0.710595,
		0.390744, 0.668390, 0.632909,
		0.919164, -0.246286, -0.307378,
		32.409916, 24.744242, 29.158318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105389, 25.622387, 29.205151>,  <31.766500, 24.916641, 29.373482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105389, 25.622387, 29.205151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304905, 25.324493, 29.027802>,  <32.424614, 25.145758, 28.921392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.304905, 25.324493, 29.027802>,  <32.105389, 25.622387, 29.205151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304905, 25.324493, 29.027802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105841, 0.560062, -0.821661,
		0.860235, 0.362910, 0.358177,
		0.498791, -0.744732, -0.443375,
		32.454544, 25.101074, 28.894789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576035, 25.926161, 28.844917>,  <32.105389, 25.622387, 29.205151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576035, 25.926161, 28.844917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.598003, 25.579712, 28.646194>,  <32.611183, 25.371843, 28.526960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.598003, 25.579712, 28.646194>,  <32.576035, 25.926161, 28.844917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598003, 25.579712, 28.646194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064895, 0.499600, -0.863822,
		0.996380, 0.015200, 0.083644,
		0.054918, -0.866123, -0.496805,
		32.614479, 25.319876, 28.497152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077614, 26.047026, 28.447027>,  <32.576035, 25.926161, 28.844917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077614, 26.047026, 28.447027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.874020, 25.747822, 28.276653>,  <32.751865, 25.568300, 28.174429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.874020, 25.747822, 28.276653>,  <33.077614, 26.047026, 28.447027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874020, 25.747822, 28.276653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166328, 0.400036, -0.901280,
		0.844555, -0.529580, -0.079196,
		-0.508981, -0.748008, -0.425937,
		32.721325, 25.523418, 28.148872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466171, 25.864553, 27.848747>,  <33.077614, 26.047026, 28.447027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466171, 25.864553, 27.848747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098927, 25.716789, 27.791328>,  <32.878578, 25.628132, 27.756876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098927, 25.716789, 27.791328>,  <33.466171, 25.864553, 27.848747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098927, 25.716789, 27.791328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019104, 0.403035, -0.914985,
		0.395838, -0.837325, -0.377092,
		-0.918121, -0.369390, -0.143540,
		32.823494, 25.605967, 27.748264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387730, 25.565063, 27.102915>,  <33.466171, 25.864553, 27.848747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387730, 25.565063, 27.102915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.010509, 25.633770, 27.216858>,  <32.784176, 25.674994, 27.285223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.010509, 25.633770, 27.216858>,  <33.387730, 25.565063, 27.102915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.010509, 25.633770, 27.216858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165120, 0.501664, -0.849157,
		-0.288760, -0.847838, -0.444735,
		-0.943055, 0.171768, 0.284856,
		32.727592, 25.685301, 27.302315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981609, 25.478209, 26.537968>,  <33.387730, 25.565063, 27.102915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981609, 25.478209, 26.537968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720299, 25.684986, 26.759235>,  <32.563511, 25.809053, 26.891996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.720299, 25.684986, 26.759235>,  <32.981609, 25.478209, 26.537968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720299, 25.684986, 26.759235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182722, 0.601380, -0.777789,
		-0.734739, -0.609188, -0.298410,
		-0.653277, 0.516946, 0.553169,
		32.524315, 25.840071, 26.925186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350632, 25.454649, 26.264702>,  <32.981609, 25.478209, 26.537968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350632, 25.454649, 26.264702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.314449, 25.791245, 26.477760>,  <32.292740, 25.993202, 26.605595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.314449, 25.791245, 26.477760>,  <32.350632, 25.454649, 26.264702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314449, 25.791245, 26.477760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180398, 0.512147, -0.839739,
		-0.979425, -0.172051, 0.105474,
		-0.090459, 0.841489, 0.532647,
		32.287312, 26.043692, 26.637554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745985, 25.854103, 25.979906>,  <32.350632, 25.454649, 26.264702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745985, 25.854103, 25.979906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952135, 26.116737, 26.200191>,  <32.075825, 26.274319, 26.332363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.952135, 26.116737, 26.200191>,  <31.745985, 25.854103, 25.979906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952135, 26.116737, 26.200191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169054, 0.707898, -0.685785,
		-0.840125, 0.260336, 0.475831,
		0.515374, 0.656586, 0.550712,
		32.106747, 26.313713, 26.365406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<19.057486, 34.382240, 15.748127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.361160, 34.158936, 15.614272>,  <19.543365, 34.024952, 15.533959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.361160, 34.158936, 15.614272>,  <19.057486, 34.382240, 15.748127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.361160, 34.158936, 15.614272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411756, 0.013760, 0.911190,
		-0.504078, -0.829550, 0.240314,
		0.759185, -0.558262, -0.334637,
		19.588915, 33.991455, 15.513881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.058317, 33.799805, 16.161236>,  <19.057486, 34.382240, 15.748127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.058317, 33.799805, 16.161236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.431883, 33.810749, 16.018658>,  <19.656023, 33.817318, 15.933110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.431883, 33.810749, 16.018658>,  <19.058317, 33.799805, 16.161236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.431883, 33.810749, 16.018658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356022, -0.161639, 0.920392,
		-0.032426, -0.986470, -0.160700,
		0.933915, 0.027368, -0.356447,
		19.712057, 33.818958, 15.911723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.432589, 33.208256, 16.375778>,  <19.058317, 33.799805, 16.161236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.432589, 33.208256, 16.375778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.718142, 33.476368, 16.294689>,  <19.889473, 33.637234, 16.246037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.718142, 33.476368, 16.294689>,  <19.432589, 33.208256, 16.375778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.718142, 33.476368, 16.294689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324077, -0.059607, 0.944151,
		0.620763, -0.739710, -0.259775,
		0.713882, 0.670281, -0.202721,
		19.932306, 33.677452, 16.233873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.016781, 33.054363, 16.825592>,  <19.432589, 33.208256, 16.375778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.016781, 33.054363, 16.825592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.121765, 33.413975, 16.685387>,  <20.184755, 33.629742, 16.601263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.121765, 33.413975, 16.685387>,  <20.016781, 33.054363, 16.825592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.121765, 33.413975, 16.685387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388003, 0.234261, 0.891390,
		0.883498, -0.369953, -0.287343,
		0.262459, 0.899031, -0.350512,
		20.200502, 33.683685, 16.580233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.750608, 33.130859, 16.934254>,  <20.016781, 33.054363, 16.825592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.750608, 33.130859, 16.934254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.606619, 33.502930, 16.905407>,  <20.520226, 33.726170, 16.888098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.606619, 33.502930, 16.905407>,  <20.750608, 33.130859, 16.934254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.606619, 33.502930, 16.905407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535613, 0.269334, 0.800361,
		0.763897, 0.249481, -0.595164,
		-0.359973, 0.930171, -0.072118,
		20.498627, 33.781982, 16.883772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.345427, 33.633999, 16.993883>,  <20.750608, 33.130859, 16.934254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.345427, 33.633999, 16.993883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.024946, 33.849022, 17.099033>,  <20.832657, 33.978035, 17.162123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.024946, 33.849022, 17.099033>,  <21.345427, 33.633999, 16.993883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.024946, 33.849022, 17.099033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473052, 0.299955, 0.828401,
		0.366466, 0.788070, -0.494619,
		-0.801202, 0.537562, 0.262875,
		20.784586, 34.010292, 17.177896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.646698, 34.210617, 17.212061>,  <21.345427, 33.633999, 16.993883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.646698, 34.210617, 17.212061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.285467, 34.198158, 17.383400>,  <21.068729, 34.190681, 17.486204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.285467, 34.198158, 17.383400>,  <21.646698, 34.210617, 17.212061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.285467, 34.198158, 17.383400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410533, 0.230368, 0.882266,
		-0.126157, 0.972605, -0.195253,
		-0.903076, -0.031147, 0.428349,
		21.014544, 34.188816, 17.511906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.524225, 34.935585, 17.528000>,  <21.646698, 34.210617, 17.212061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.524225, 34.935585, 17.528000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.290403, 34.664085, 17.705811>,  <21.150110, 34.501186, 17.812496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.290403, 34.664085, 17.705811>,  <21.524225, 34.935585, 17.528000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.290403, 34.664085, 17.705811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412576, 0.223096, 0.883181,
		-0.698627, 0.699667, 0.149622,
		-0.584553, -0.678744, 0.444527,
		21.115038, 34.460461, 17.839169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.180349, 35.320499, 18.073702>,  <21.524225, 34.935585, 17.528000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.180349, 35.320499, 18.073702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.170090, 34.936825, 18.186344>,  <21.163933, 34.706619, 18.253929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.170090, 34.936825, 18.186344>,  <21.180349, 35.320499, 18.073702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.170090, 34.936825, 18.186344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340165, 0.256512, 0.904704,
		-0.940016, 0.118999, 0.319702,
		-0.025652, -0.959188, 0.281605,
		21.162394, 34.649067, 18.270826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.957994, 35.392834, 18.714817>,  <21.180349, 35.320499, 18.073702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.957994, 35.392834, 18.714817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.107059, 35.021923, 18.700462>,  <21.196499, 34.799377, 18.691851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.107059, 35.021923, 18.700462>,  <20.957994, 35.392834, 18.714817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.107059, 35.021923, 18.700462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446683, 0.145354, 0.882806,
		-0.813385, -0.345019, 0.468365,
		0.372664, -0.927272, -0.035885,
		21.218859, 34.743740, 18.689697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.874842, 35.134186, 19.380346>,  <20.957994, 35.392834, 18.714817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.874842, 35.134186, 19.380346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.142082, 34.883667, 19.219650>,  <21.302427, 34.733356, 19.123232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.142082, 34.883667, 19.219650>,  <20.874842, 35.134186, 19.380346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.142082, 34.883667, 19.219650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553475, 0.057447, 0.830882,
		-0.497298, -0.777467, 0.385019,
		0.668102, -0.626295, -0.401740,
		21.342512, 34.695778, 19.099129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.014479, 34.769882, 19.960316>,  <20.874842, 35.134186, 19.380346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.014479, 34.769882, 19.960316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.302984, 34.752968, 19.683769>,  <21.476088, 34.742821, 19.517841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.302984, 34.752968, 19.683769>,  <21.014479, 34.769882, 19.960316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.302984, 34.752968, 19.683769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692629, 0.053166, 0.719332,
		0.006338, -0.997690, 0.067637,
		0.721266, -0.042288, -0.691366,
		21.519363, 34.740280, 19.476358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.474623, 34.291664, 20.382030>,  <21.014479, 34.769882, 19.960316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.474623, 34.291664, 20.382030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.682880, 34.474419, 20.093536>,  <21.807835, 34.584072, 19.920441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.682880, 34.474419, 20.093536>,  <21.474623, 34.291664, 20.382030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.682880, 34.474419, 20.093536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777001, 0.096534, 0.622053,
		0.353834, -0.884269, -0.304744,
		0.520644, 0.456891, -0.721235,
		21.839073, 34.611485, 19.877165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.047001, 33.893612, 20.427128>,  <21.474623, 34.291664, 20.382030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.047001, 33.893612, 20.427128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.105896, 34.239113, 20.234360>,  <22.141233, 34.446415, 20.118698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.105896, 34.239113, 20.234360>,  <22.047001, 33.893612, 20.427128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.105896, 34.239113, 20.234360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719209, 0.240990, 0.651661,
		0.679014, -0.442550, -0.585739,
		0.147236, 0.863755, -0.481922,
		22.150066, 34.498238, 20.089783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.769640, 34.016102, 20.523026>,  <22.047001, 33.893612, 20.427128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.769640, 34.016102, 20.523026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.634052, 34.376404, 20.414410>,  <22.552700, 34.592587, 20.349241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.634052, 34.376404, 20.414410>,  <22.769640, 34.016102, 20.523026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.634052, 34.376404, 20.414410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607631, 0.429964, 0.667769,
		0.718250, 0.061358, -0.693074,
		-0.338970, 0.900759, -0.271539,
		22.532362, 34.646633, 20.332949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.312904, 34.464436, 20.319374>,  <22.769640, 34.016102, 20.523026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.312904, 34.464436, 20.319374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.023710, 34.709900, 20.446312>,  <22.850193, 34.857178, 20.522474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.023710, 34.709900, 20.446312>,  <23.312904, 34.464436, 20.319374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.023710, 34.709900, 20.446312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686093, 0.583885, 0.433998,
		0.081037, 0.531502, -0.843172,
		-0.722987, 0.613664, 0.317343,
		22.806814, 34.894001, 20.541515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.699209, 35.137070, 20.292282>,  <23.312904, 34.464436, 20.319374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.699209, 35.137070, 20.292282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.365238, 35.160351, 20.511192>,  <23.164856, 35.174320, 20.642538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.365238, 35.160351, 20.511192>,  <23.699209, 35.137070, 20.292282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.365238, 35.160351, 20.511192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513699, 0.439289, 0.736980,
		-0.197514, 0.896458, -0.396675,
		-0.834926, 0.058207, 0.547275,
		23.114759, 35.177814, 20.675375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.659397, 35.855877, 20.508371>,  <23.699209, 35.137070, 20.292282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.659397, 35.855877, 20.508371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.432858, 35.653408, 20.768539>,  <23.296934, 35.531929, 20.924641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.432858, 35.653408, 20.768539>,  <23.659397, 35.855877, 20.508371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.432858, 35.653408, 20.768539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348898, 0.567732, 0.745621,
		-0.746673, 0.649210, -0.144932,
		-0.566347, -0.506169, 0.650419,
		23.262953, 35.501556, 20.963665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.330471, 36.378315, 20.832233>,  <23.659397, 35.855877, 20.508371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.330471, 36.378315, 20.832233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.301325, 36.072998, 21.089005>,  <23.283836, 35.889809, 21.243067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.301325, 36.072998, 21.089005>,  <23.330471, 36.378315, 20.832233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.301325, 36.072998, 21.089005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271917, 0.604050, 0.749122,
		-0.959558, 0.229138, 0.163537,
		-0.072868, -0.763295, 0.641928,
		23.279465, 35.844009, 21.281584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.063126, 36.666847, 21.484661>,  <23.330471, 36.378315, 20.832233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.063126, 36.666847, 21.484661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.185831, 36.303413, 21.598064>,  <23.259455, 36.085354, 21.666107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.185831, 36.303413, 21.598064>,  <23.063126, 36.666847, 21.484661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.185831, 36.303413, 21.598064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596258, 0.415627, 0.686827,
		-0.741871, -0.041650, 0.669248,
		0.306764, -0.908581, 0.283508,
		23.277861, 36.030838, 21.683117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.875517, 36.499229, 22.266964>,  <23.063126, 36.666847, 21.484661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.875517, 36.499229, 22.266964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.196367, 36.289913, 22.151890>,  <23.388878, 36.164326, 22.082846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.196367, 36.289913, 22.151890>,  <22.875517, 36.499229, 22.266964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.196367, 36.289913, 22.151890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530251, 0.402579, 0.746166,
		-0.274644, -0.751065, 0.600393,
		0.802125, -0.523289, -0.287687,
		23.437004, 36.132927, 22.065584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.440319, 37.012062, 22.683733>,  <22.875517, 36.499229, 22.266964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.440319, 37.012062, 22.683733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.190424, 37.299042, 22.807003>,  <22.040487, 37.471230, 22.880964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.190424, 37.299042, 22.807003>,  <22.440319, 37.012062, 22.683733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.190424, 37.299042, 22.807003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645319, -0.252195, -0.721083,
		-0.439618, -0.649360, 0.620538,
		-0.624740, 0.717446, 0.308175,
		22.003002, 37.514275, 22.899456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.840408, 36.601704, 22.763121>,  <22.440319, 37.012062, 22.683733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.840408, 36.601704, 22.763121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.756189, 36.986961, 22.696163>,  <21.705658, 37.218117, 22.655989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.756189, 36.986961, 22.696163>,  <21.840408, 36.601704, 22.763121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.756189, 36.986961, 22.696163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667224, -0.266727, -0.695463,
		-0.714481, -0.034737, 0.698792,
		-0.210545, 0.963146, -0.167394,
		21.693026, 37.275906, 22.645945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.107540, 36.639713, 22.936556>,  <21.840408, 36.601704, 22.763121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.107540, 36.639713, 22.936556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.202320, 36.922737, 22.670258>,  <21.259188, 37.092552, 22.510479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.202320, 36.922737, 22.670258>,  <21.107540, 36.639713, 22.936556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.202320, 36.922737, 22.670258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660752, -0.384998, -0.644347,
		-0.712223, 0.592571, 0.376295,
		0.236949, 0.707556, -0.665747,
		21.273405, 37.135006, 22.470533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.417938, 36.811527, 22.623529>,  <21.107540, 36.639713, 22.936556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.417938, 36.811527, 22.623529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.695274, 36.950287, 22.370884>,  <20.861677, 37.033543, 22.219297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.695274, 36.950287, 22.370884>,  <20.417938, 36.811527, 22.623529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.695274, 36.950287, 22.370884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617575, -0.165595, -0.768881,
		-0.371319, 0.923167, 0.099425,
		0.693342, 0.346903, -0.631614,
		20.903276, 37.054359, 22.181400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.069538, 37.270302, 22.173529>,  <20.417938, 36.811527, 22.623529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.069538, 37.270302, 22.173529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.402536, 37.184681, 21.969124>,  <20.602335, 37.133308, 21.846481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.402536, 37.184681, 21.969124>,  <20.069538, 37.270302, 22.173529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.402536, 37.184681, 21.969124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532507, -0.054528, -0.844667,
		0.152937, 0.975299, -0.159378,
		0.832494, -0.214051, -0.511014,
		20.652285, 37.120464, 21.815819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.993435, 37.682110, 21.581663>,  <20.069538, 37.270302, 22.173529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.993435, 37.682110, 21.581663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.274715, 37.410507, 21.497318>,  <20.443483, 37.247547, 21.446711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.274715, 37.410507, 21.497318>,  <19.993435, 37.682110, 21.581663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.274715, 37.410507, 21.497318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203065, 0.092420, -0.974794,
		0.681377, 0.728294, -0.072893,
		0.703200, -0.679004, -0.210864,
		20.485676, 37.206806, 21.434059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.429062, 37.943287, 21.049095>,  <19.993435, 37.682110, 21.581663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.429062, 37.943287, 21.049095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.439957, 37.545723, 21.006393>,  <20.446493, 37.307182, 20.980772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.439957, 37.545723, 21.006393>,  <20.429062, 37.943287, 21.049095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439957, 37.545723, 21.006393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160383, 0.101066, -0.981867,
		0.986679, 0.043866, -0.156654,
		0.027238, -0.993912, -0.106755,
		20.448128, 37.247551, 20.974367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.660543, 37.900211, 20.445919>,  <20.429062, 37.943287, 21.049095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.660543, 37.900211, 20.445919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.559589, 37.514595, 20.479214>,  <20.499018, 37.283226, 20.499189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.559589, 37.514595, 20.479214>,  <20.660543, 37.900211, 20.445919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.559589, 37.514595, 20.479214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009419, -0.088463, -0.996035,
		0.967581, -0.250598, 0.031407,
		-0.252383, -0.964041, 0.083235,
		20.483875, 37.225384, 20.504185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.164949, 37.433121, 20.067034>,  <20.660543, 37.900211, 20.445919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.164949, 37.433121, 20.067034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.827417, 37.225159, 20.120178>,  <20.624897, 37.100384, 20.152065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.827417, 37.225159, 20.120178>,  <21.164949, 37.433121, 20.067034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827417, 37.225159, 20.120178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062222, -0.151128, -0.986554,
		0.532989, -0.840752, 0.095177,
		-0.843831, -0.519900, 0.132863,
		20.574268, 37.069187, 20.160038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.321249, 36.819656, 19.707972>,  <21.164949, 37.433121, 20.067034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.321249, 36.819656, 19.707972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.925219, 36.858501, 19.748596>,  <20.687599, 36.881809, 19.772970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.925219, 36.858501, 19.748596>,  <21.321249, 36.819656, 19.707972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.925219, 36.858501, 19.748596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115512, -0.150928, -0.981773,
		-0.080010, -0.983763, 0.160648,
		-0.990078, 0.097109, 0.101561,
		20.628195, 36.887634, 19.779064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.089298, 36.433090, 19.268139>,  <21.321249, 36.819656, 19.707972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.089298, 36.433090, 19.268139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.758970, 36.648060, 19.336491>,  <20.560774, 36.777042, 19.377502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.758970, 36.648060, 19.336491>,  <21.089298, 36.433090, 19.268139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.758970, 36.648060, 19.336491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219790, -0.027672, -0.975155,
		-0.519341, -0.842860, 0.140972,
		-0.825820, 0.537422, 0.170881,
		20.511225, 36.809288, 19.387754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.694729, 36.041004, 18.855221>,  <21.089298, 36.433090, 19.268139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.694729, 36.041004, 18.855221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.494623, 36.377422, 18.937569>,  <20.374559, 36.579273, 18.986979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.494623, 36.377422, 18.937569>,  <20.694729, 36.041004, 18.855221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.494623, 36.377422, 18.937569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390416, -0.006875, -0.920613,
		-0.772860, -0.540923, 0.331796,
		-0.500262, 0.841044, 0.205872,
		20.344545, 36.629734, 18.999331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.889093, 36.026810, 18.680742>,  <20.694729, 36.041004, 18.855221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.889093, 36.026810, 18.680742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.031599, 36.400024, 18.660660>,  <20.117104, 36.623951, 18.648609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.031599, 36.400024, 18.660660>,  <19.889093, 36.026810, 18.680742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.031599, 36.400024, 18.660660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210258, 0.027696, -0.977253,
		-0.910421, 0.358719, 0.206045,
		0.356266, 0.933034, -0.050209,
		20.138479, 36.679935, 18.645597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.461267, 36.398788, 18.126219>,  <19.889093, 36.026810, 18.680742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.461267, 36.398788, 18.126219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.795641, 36.616966, 18.150562>,  <19.996265, 36.747871, 18.165169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.795641, 36.616966, 18.150562>,  <19.461267, 36.398788, 18.126219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.795641, 36.616966, 18.150562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008274, 0.123401, -0.992322,
		-0.548768, 0.829012, 0.107668,
		0.835934, 0.545446, 0.060859,
		20.046421, 36.780602, 18.168819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.306011, 36.994793, 17.782040>,  <19.461267, 36.398788, 18.126219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.306011, 36.994793, 17.782040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.705597, 36.995087, 17.763855>,  <19.945349, 36.995262, 17.752945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.705597, 36.995087, 17.763855>,  <19.306011, 36.994793, 17.782040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.705597, 36.995087, 17.763855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041796, 0.408408, -0.911842,
		0.017898, 0.912799, 0.408016,
		0.998966, 0.000733, -0.045461,
		20.005287, 36.995308, 17.750217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.473276, 37.555916, 17.333344>,  <19.306011, 36.994793, 17.782040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.473276, 37.555916, 17.333344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.806749, 37.335217, 17.342720>,  <20.006834, 37.202797, 17.348345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.806749, 37.335217, 17.342720>,  <19.473276, 37.555916, 17.333344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.806749, 37.335217, 17.342720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159707, 0.200251, -0.966640,
		0.528647, 0.809614, 0.255064,
		0.833682, -0.551747, 0.023439,
		20.056854, 37.169693, 17.349752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.827631, 37.935707, 16.900970>,  <19.473276, 37.555916, 17.333344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.827631, 37.935707, 16.900970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.036470, 37.596066, 16.933071>,  <20.161774, 37.392281, 16.952332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.036470, 37.596066, 16.933071>,  <19.827631, 37.935707, 16.900970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.036470, 37.596066, 16.933071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353228, 0.129627, -0.926513,
		0.776300, 0.512080, 0.367604,
		0.522100, -0.849100, 0.080252,
		20.193100, 37.341335, 16.957146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.482697, 38.048065, 16.531973>,  <19.827631, 37.935707, 16.900970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.482697, 38.048065, 16.531973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.438316, 37.650539, 16.533810>,  <20.411688, 37.412025, 16.534912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.438316, 37.650539, 16.533810>,  <20.482697, 38.048065, 16.531973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.438316, 37.650539, 16.533810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179022, -0.024533, -0.983539,
		0.977569, -0.108303, 0.180636,
		-0.110952, -0.993815, 0.004594,
		20.405031, 37.352394, 16.535189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.876427, 37.856293, 15.909472>,  <20.482697, 38.048065, 16.531973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.876427, 37.856293, 15.909472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.654188, 37.537716, 16.004967>,  <20.520845, 37.346569, 16.062263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.654188, 37.537716, 16.004967>,  <20.876427, 37.856293, 15.909472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.654188, 37.537716, 16.004967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162080, -0.385371, -0.908416,
		0.815502, -0.466017, 0.343198,
		-0.555596, -0.796440, 0.238738,
		20.487509, 37.298782, 16.076588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.293644, 37.281693, 15.769383>,  <20.876427, 37.856293, 15.909472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.293644, 37.281693, 15.769383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.907898, 37.178562, 15.745639>,  <20.676451, 37.116684, 15.731392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.907898, 37.178562, 15.745639>,  <21.293644, 37.281693, 15.769383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.907898, 37.178562, 15.745639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164633, -0.409150, -0.897492,
		0.207109, -0.875284, 0.437017,
		-0.964366, -0.257827, -0.059362,
		20.618587, 37.101215, 15.727830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.168154, 36.640053, 15.395429>,  <21.293644, 37.281693, 15.769383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.168154, 36.640053, 15.395429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.787228, 36.758816, 15.367295>,  <20.558672, 36.830074, 15.350415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.787228, 36.758816, 15.367295>,  <21.168154, 36.640053, 15.395429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.787228, 36.758816, 15.367295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033467, -0.330759, -0.943122,
		-0.303274, -0.895796, 0.324923,
		-0.952316, 0.296898, -0.070331,
		20.501534, 36.847889, 15.346195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.757042, 28.697699, 22.802206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115084, 28.783802, 22.958385>,  <28.329908, 28.835464, 23.052094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115084, 28.783802, 22.958385>,  <27.757042, 28.697699, 22.802206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115084, 28.783802, 22.958385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032220, 0.842213, -0.538181,
		-0.444689, 0.494309, 0.746934,
		0.895105, 0.215257, 0.390449,
		28.383615, 28.848379, 23.075520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772951, 29.401388, 23.064926>,  <27.757042, 28.697699, 22.802206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772951, 29.401388, 23.064926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150991, 29.297966, 22.984993>,  <28.377815, 29.235912, 22.937033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150991, 29.297966, 22.984993>,  <27.772951, 29.401388, 23.064926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.150991, 29.297966, 22.984993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163960, 0.904175, -0.394442,
		0.282671, 0.340023, 0.896929,
		0.945100, -0.258557, -0.199834,
		28.434521, 29.220398, 22.925043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067904, 30.029778, 23.093870>,  <27.772951, 29.401388, 23.064926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067904, 30.029778, 23.093870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357651, 29.825642, 22.908463>,  <28.531498, 29.703161, 22.797218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357651, 29.825642, 22.908463>,  <28.067904, 30.029778, 23.093870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357651, 29.825642, 22.908463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210899, 0.804135, -0.555778,
		0.656365, 0.304832, 0.690118,
		0.724367, -0.510339, -0.463517,
		28.574961, 29.672541, 22.769407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649633, 30.556965, 23.068630>,  <28.067904, 30.029778, 23.093870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649633, 30.556965, 23.068630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718683, 30.279694, 22.788715>,  <28.760113, 30.113331, 22.620766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718683, 30.279694, 22.788715>,  <28.649633, 30.556965, 23.068630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718683, 30.279694, 22.788715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248319, 0.718132, -0.650095,
		0.953172, -0.061547, 0.296099,
		0.172627, -0.693180, -0.699787,
		28.770472, 30.071739, 22.578779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.372389, 30.631184, 22.782957>,  <28.649633, 30.556965, 23.068630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.372389, 30.631184, 22.782957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116417, 30.457001, 22.529701>,  <28.962833, 30.352491, 22.377747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116417, 30.457001, 22.529701>,  <29.372389, 30.631184, 22.782957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116417, 30.457001, 22.529701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292366, 0.624000, -0.724670,
		0.710641, -0.648848, -0.272005,
		-0.639931, -0.435454, -0.633141,
		28.924438, 30.326365, 22.339760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691542, 30.949900, 22.198763>,  <29.372389, 30.631184, 22.782957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691542, 30.949900, 22.198763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354448, 30.776234, 22.071453>,  <29.152191, 30.672033, 21.995068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354448, 30.776234, 22.071453>,  <29.691542, 30.949900, 22.198763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354448, 30.776234, 22.071453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011537, 0.605653, -0.795646,
		0.538205, -0.666846, -0.515413,
		-0.842735, -0.434167, -0.318272,
		29.101627, 30.645983, 21.975971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856852, 30.730055, 21.577553>,  <29.691542, 30.949900, 22.198763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856852, 30.730055, 21.577553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457222, 30.742706, 21.589218>,  <29.217443, 30.750298, 21.596218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457222, 30.742706, 21.589218>,  <29.856852, 30.730055, 21.577553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457222, 30.742706, 21.589218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002943, 0.726508, -0.687152,
		-0.042922, -0.686430, -0.725928,
		-0.999074, 0.031630, 0.029163,
		29.157499, 30.752195, 21.597967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651384, 30.692629, 20.880283>,  <29.856852, 30.730055, 21.577553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651384, 30.692629, 20.880283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370998, 30.875565, 21.099186>,  <29.202766, 30.985327, 21.230528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370998, 30.875565, 21.099186>,  <29.651384, 30.692629, 20.880283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370998, 30.875565, 21.099186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063420, 0.804260, -0.590883,
		-0.710371, -0.379481, -0.592762,
		-0.700964, 0.457339, 0.547257,
		29.160709, 31.012766, 21.263363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222221, 30.953184, 20.449348>,  <29.651384, 30.692629, 20.880283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222221, 30.953184, 20.449348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148043, 31.172665, 20.775425>,  <29.103535, 31.304354, 20.971071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148043, 31.172665, 20.775425>,  <29.222221, 30.953184, 20.449348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148043, 31.172665, 20.775425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081652, 0.835316, -0.543673,
		-0.979256, -0.034261, -0.199709,
		-0.185447, 0.548701, 0.815191,
		29.092409, 31.337275, 21.019981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737003, 31.436428, 20.289408>,  <29.222221, 30.953184, 20.449348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737003, 31.436428, 20.289408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936586, 31.574699, 20.607288>,  <29.056337, 31.657661, 20.798016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936586, 31.574699, 20.607288>,  <28.737003, 31.436428, 20.289408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936586, 31.574699, 20.607288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198670, 0.846958, -0.493145,
		-0.843546, 0.403942, 0.353922,
		0.498959, 0.345676, 0.794700,
		29.086273, 31.678402, 20.845697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607735, 32.044750, 20.235079>,  <28.737003, 31.436428, 20.289408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607735, 32.044750, 20.235079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900555, 32.078613, 20.505466>,  <29.076246, 32.098930, 20.667700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900555, 32.078613, 20.505466>,  <28.607735, 32.044750, 20.235079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.900555, 32.078613, 20.505466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292706, 0.856903, -0.424311,
		-0.615165, 0.508477, 0.602514,
		0.732049, 0.084662, 0.675971,
		29.120169, 32.104012, 20.708258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.549273, 32.709694, 20.445572>,  <28.607735, 32.044750, 20.235079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.549273, 32.709694, 20.445572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929258, 32.606487, 20.515991>,  <29.157249, 32.544563, 20.558243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929258, 32.606487, 20.515991>,  <28.549273, 32.709694, 20.445572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929258, 32.606487, 20.515991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312344, 0.780850, -0.541031,
		0.002127, 0.568948, 0.822371,
		0.949967, -0.258013, 0.176046,
		29.214249, 32.529083, 20.568806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945068, 33.308857, 20.584715>,  <28.549273, 32.709694, 20.445572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945068, 33.308857, 20.584715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242613, 33.059425, 20.488529>,  <29.421139, 32.909767, 20.430817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242613, 33.059425, 20.488529>,  <28.945068, 33.308857, 20.584715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242613, 33.059425, 20.488529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411729, 0.710981, -0.570075,
		0.526452, 0.325049, 0.785615,
		0.743860, -0.623577, -0.240466,
		29.465771, 32.872353, 20.416389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472294, 33.784851, 20.710384>,  <28.945068, 33.308857, 20.584715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472294, 33.784851, 20.710384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559931, 33.486210, 20.459122>,  <29.612513, 33.307026, 20.308365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559931, 33.486210, 20.459122>,  <29.472294, 33.784851, 20.710384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.559931, 33.486210, 20.459122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473274, 0.644308, -0.600732,
		0.853235, -0.165675, 0.494512,
		0.219092, -0.746605, -0.628156,
		29.625658, 33.262230, 20.270676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956457, 34.293755, 21.001558>,  <29.472294, 33.784851, 20.710384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956457, 34.293755, 21.001558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701576, 34.511967, 21.219318>,  <28.548647, 34.642895, 21.349974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.701576, 34.511967, 21.219318>,  <28.956457, 34.293755, 21.001558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701576, 34.511967, 21.219318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501101, -0.243418, 0.830449,
		0.585550, 0.801964, -0.118258,
		-0.637204, 0.545528, 0.544399,
		28.510414, 34.675625, 21.382639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300190, 34.704933, 21.460714>,  <28.956457, 34.293755, 21.001558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300190, 34.704933, 21.460714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939842, 34.673882, 21.631550>,  <28.723633, 34.655251, 21.734051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939842, 34.673882, 21.631550>,  <29.300190, 34.704933, 21.460714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939842, 34.673882, 21.631550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432449, -0.245891, 0.867482,
		0.037677, 0.966184, 0.255085,
		-0.900871, -0.077627, 0.427090,
		28.669580, 34.650593, 21.759678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234938, 35.146488, 22.050787>,  <29.300190, 34.704933, 21.460714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234938, 35.146488, 22.050787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955647, 34.877979, 22.150284>,  <28.788073, 34.716873, 22.209982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955647, 34.877979, 22.150284>,  <29.234938, 35.146488, 22.050787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955647, 34.877979, 22.150284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320751, 0.017287, 0.947006,
		-0.639997, 0.741011, 0.203240,
		-0.698228, -0.671270, 0.248744,
		28.746178, 34.676598, 22.224907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911043, 35.376980, 22.709900>,  <29.234938, 35.146488, 22.050787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911043, 35.376980, 22.709900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824781, 34.986603, 22.697086>,  <28.773026, 34.752377, 22.689398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824781, 34.986603, 22.697086>,  <28.911043, 35.376980, 22.709900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824781, 34.986603, 22.697086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336013, -0.104969, 0.935990,
		-0.916837, 0.191085, 0.350567,
		-0.215652, -0.975945, -0.032033,
		28.760086, 34.693821, 22.687477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791170, 35.326942, 23.449444>,  <28.911043, 35.376980, 22.709900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791170, 35.326942, 23.449444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836615, 34.957340, 23.303402>,  <28.863882, 34.735577, 23.215776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836615, 34.957340, 23.303402>,  <28.791170, 35.326942, 23.449444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836615, 34.957340, 23.303402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590755, -0.232635, 0.772586,
		-0.798812, -0.303461, 0.519433,
		0.113611, -0.924009, -0.365102,
		28.870699, 34.680138, 23.193871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744961, 34.804626, 24.101665>,  <28.791170, 35.326942, 23.449444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744961, 34.804626, 24.101665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941395, 34.622921, 23.804352>,  <29.059256, 34.513897, 23.625963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941395, 34.622921, 23.804352>,  <28.744961, 34.804626, 24.101665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941395, 34.622921, 23.804352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608537, -0.431641, 0.665860,
		-0.623311, -0.779312, 0.064466,
		0.491086, -0.454268, -0.743287,
		29.088720, 34.486641, 23.581366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842234, 34.104511, 24.239670>,  <28.744961, 34.804626, 24.101665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842234, 34.104511, 24.239670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133274, 34.187222, 23.978031>,  <29.307898, 34.236847, 23.821047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133274, 34.187222, 23.978031>,  <28.842234, 34.104511, 24.239670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.133274, 34.187222, 23.978031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592559, -0.669864, 0.447387,
		-0.345648, -0.713110, -0.609919,
		0.727599, 0.206774, -0.654097,
		29.351553, 34.249252, 23.781801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122458, 33.390194, 24.098314>,  <28.842234, 34.104511, 24.239670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122458, 33.390194, 24.098314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386621, 33.677242, 24.009876>,  <29.545120, 33.849472, 23.956814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386621, 33.677242, 24.009876>,  <29.122458, 33.390194, 24.098314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386621, 33.677242, 24.009876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737980, -0.565880, 0.367648,
		0.138717, -0.405962, -0.903301,
		0.660411, 0.717617, -0.221095,
		29.584745, 33.892529, 23.943548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705479, 33.028732, 23.794592>,  <29.122458, 33.390194, 24.098314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705479, 33.028732, 23.794592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842119, 33.382797, 23.920956>,  <29.924103, 33.595238, 23.996775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842119, 33.382797, 23.920956>,  <29.705479, 33.028732, 23.794592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842119, 33.382797, 23.920956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700771, -0.463871, 0.541981,
		0.626282, 0.036240, -0.778754,
		0.341600, 0.885161, 0.315909,
		29.944599, 33.648346, 24.015728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.384069, 33.006470, 23.748356>,  <29.705479, 33.028732, 23.794592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.384069, 33.006470, 23.748356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348930, 33.291225, 24.027065>,  <30.327847, 33.462078, 24.194290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348930, 33.291225, 24.027065>,  <30.384069, 33.006470, 23.748356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348930, 33.291225, 24.027065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573288, -0.535896, 0.619803,
		0.814631, 0.453901, -0.361041,
		-0.087849, 0.711892, 0.696773,
		30.322577, 33.504791, 24.236097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954515, 32.782387, 24.219244>,  <30.384069, 33.006470, 23.748356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954515, 32.782387, 24.219244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754461, 33.067524, 24.415905>,  <30.634428, 33.238605, 24.533901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754461, 33.067524, 24.415905>,  <30.954515, 32.782387, 24.219244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754461, 33.067524, 24.415905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437877, -0.281640, 0.853782,
		0.747080, 0.642289, -0.171279,
		-0.500136, 0.712842, 0.491651,
		30.604420, 33.281376, 24.563400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445595, 33.206738, 24.676231>,  <30.954515, 32.782387, 24.219244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445595, 33.206738, 24.676231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080397, 33.223541, 24.838554>,  <30.861279, 33.233624, 24.935947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080397, 33.223541, 24.838554>,  <31.445595, 33.206738, 24.676231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080397, 33.223541, 24.838554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374050, -0.310920, 0.873736,
		0.162882, 0.949507, 0.268153,
		-0.912993, 0.042013, 0.405806,
		30.806499, 33.236145, 24.960297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497826, 33.400303, 25.370710>,  <31.445595, 33.206738, 24.676231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497826, 33.400303, 25.370710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142872, 33.216003, 25.364285>,  <30.929899, 33.105423, 25.360430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142872, 33.216003, 25.364285>,  <31.497826, 33.400303, 25.370710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142872, 33.216003, 25.364285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244440, -0.499755, 0.830960,
		-0.390891, 0.733455, 0.556101,
		-0.887385, -0.460748, -0.016064,
		30.876656, 33.077778, 25.359465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384169, 33.239502, 26.034216>,  <31.497826, 33.400303, 25.370710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384169, 33.239502, 26.034216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068708, 33.027916, 25.908852>,  <30.879433, 32.900967, 25.833633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068708, 33.027916, 25.908852>,  <31.384169, 33.239502, 26.034216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068708, 33.027916, 25.908852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028369, -0.540506, 0.840862,
		-0.614185, 0.654256, 0.441277,
		-0.788652, -0.528963, -0.313410,
		30.832113, 32.869228, 25.814829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508106, 33.803349, 26.543840>,  <31.384169, 33.239502, 26.034216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508106, 33.803349, 26.543840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868509, 33.927937, 26.664619>,  <32.084751, 34.002689, 26.737087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868509, 33.927937, 26.664619>,  <31.508106, 33.803349, 26.543840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868509, 33.927937, 26.664619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118298, 0.493247, -0.861808,
		-0.417365, 0.812214, 0.407572,
		0.901006, 0.311474, 0.301948,
		32.138809, 34.021378, 26.755203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544548, 34.540066, 26.418697>,  <31.508106, 33.803349, 26.543840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544548, 34.540066, 26.418697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926790, 34.425018, 26.444286>,  <32.156136, 34.355991, 26.459641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926790, 34.425018, 26.444286>,  <31.544548, 34.540066, 26.418697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926790, 34.425018, 26.444286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238748, 0.628604, -0.740174,
		0.172672, 0.722588, 0.669366,
		0.955607, -0.287617, 0.063974,
		32.213470, 34.338734, 26.463478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918468, 35.200363, 26.420830>,  <31.544548, 34.540066, 26.418697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918468, 35.200363, 26.420830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151047, 34.890484, 26.321426>,  <32.290596, 34.704556, 26.261784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151047, 34.890484, 26.321426>,  <31.918468, 35.200363, 26.420830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151047, 34.890484, 26.321426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221472, 0.444630, -0.867902,
		0.782859, 0.449602, 0.430104,
		0.581448, -0.774701, -0.248508,
		32.325481, 34.658073, 26.246874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521175, 35.457947, 26.195261>,  <31.918468, 35.200363, 26.420830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521175, 35.457947, 26.195261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521744, 35.096329, 26.024284>,  <32.522083, 34.879360, 25.921698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521744, 35.096329, 26.024284>,  <32.521175, 35.457947, 26.195261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.521744, 35.096329, 26.024284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314698, 0.406130, -0.857918,
		0.949191, -0.133298, 0.285077,
		0.001420, -0.904041, -0.427443,
		32.522171, 34.825115, 25.896051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072491, 35.526855, 25.761133>,  <32.521175, 35.457947, 26.195261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072491, 35.526855, 25.761133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877758, 35.206299, 25.622124>,  <32.760918, 35.013966, 25.538717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877758, 35.206299, 25.622124>,  <33.072491, 35.526855, 25.761133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877758, 35.206299, 25.622124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265638, 0.243185, -0.932898,
		0.832126, -0.546477, 0.094490,
		-0.486829, -0.801389, -0.347525,
		32.731709, 34.965881, 25.517866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.441444, 35.269989, 25.128088>,  <33.072491, 35.526855, 25.761133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.441444, 35.269989, 25.128088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087765, 35.095894, 25.060249>,  <32.875557, 34.991436, 25.019547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087765, 35.095894, 25.060249>,  <33.441444, 35.269989, 25.128088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087765, 35.095894, 25.060249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162456, 0.053877, -0.985244,
		0.437949, -0.898704, 0.023068,
		-0.884199, -0.435234, -0.169595,
		32.822506, 34.965324, 25.009371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567829, 34.777996, 24.612747>,  <33.441444, 35.269989, 25.128088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567829, 34.777996, 24.612747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172016, 34.833599, 24.597218>,  <32.934528, 34.866959, 24.587900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172016, 34.833599, 24.597218>,  <33.567829, 34.777996, 24.612747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172016, 34.833599, 24.597218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040168, 0.006874, -0.999169,
		-0.138624, -0.990268, -0.012385,
		-0.989530, 0.139006, -0.038825,
		32.875156, 34.875301, 24.585569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255646, 34.175674, 24.261475>,  <33.567829, 34.777996, 24.612747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255646, 34.175674, 24.261475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008110, 34.487606, 24.223721>,  <32.859589, 34.674767, 24.201067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008110, 34.487606, 24.223721>,  <33.255646, 34.175674, 24.261475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008110, 34.487606, 24.223721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096747, -0.043577, -0.994354,
		-0.779540, -0.624473, -0.048480,
		-0.618835, 0.779829, -0.094386,
		32.822460, 34.721554, 24.195404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076042, 34.156185, 23.593430>,  <33.255646, 34.175674, 24.261475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076042, 34.156185, 23.593430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932564, 34.522346, 23.666504>,  <32.846478, 34.742043, 23.710348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932564, 34.522346, 23.666504>,  <33.076042, 34.156185, 23.593430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932564, 34.522346, 23.666504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019422, 0.202987, -0.978989,
		-0.933251, -0.347615, -0.090590,
		-0.358700, 0.915402, 0.182686,
		32.824955, 34.796967, 23.721310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475269, 34.316635, 23.174755>,  <33.076042, 34.156185, 23.593430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475269, 34.316635, 23.174755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616600, 34.675602, 23.280434>,  <32.701401, 34.890984, 23.343842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616600, 34.675602, 23.280434>,  <32.475269, 34.316635, 23.174755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616600, 34.675602, 23.280434> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192197, 0.206751, -0.959330,
		-0.915542, 0.389738, -0.099429,
		0.353331, 0.897418, 0.264196,
		32.722599, 34.944828, 23.359692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099724, 34.739765, 22.790882>,  <32.475269, 34.316635, 23.174755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099724, 34.739765, 22.790882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442505, 34.912533, 22.903366>,  <32.648174, 35.016193, 22.970856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442505, 34.912533, 22.903366>,  <32.099724, 34.739765, 22.790882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442505, 34.912533, 22.903366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218508, 0.189686, -0.957222,
		-0.466780, 0.881742, 0.068175,
		0.856954, 0.431915, 0.281209,
		32.699593, 35.042107, 22.987728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948395, 35.323734, 22.491583>,  <32.099724, 34.739765, 22.790882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948395, 35.323734, 22.491583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339718, 35.258041, 22.542091>,  <32.574512, 35.218624, 22.572395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339718, 35.258041, 22.542091>,  <31.948395, 35.323734, 22.491583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339718, 35.258041, 22.542091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155280, 0.177866, -0.971726,
		0.137129, 0.970253, 0.199509,
		0.978307, -0.164231, 0.126270,
		32.633209, 35.208771, 22.579973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.909853, 32.731499, 30.143242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.275982, 32.593559, 30.060040>,  <31.495659, 32.510796, 30.010118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.275982, 32.593559, 30.060040>,  <30.909853, 32.731499, 30.143242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275982, 32.593559, 30.060040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214604, 0.854721, -0.472650,
		0.340779, 0.387988, 0.856350,
		0.915323, -0.344845, -0.208007,
		31.550579, 32.490105, 29.997637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349056, 33.335125, 30.261145>,  <30.909853, 32.731499, 30.143242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349056, 33.335125, 30.261145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.560942, 33.083397, 30.033684>,  <31.688074, 32.932362, 29.897207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.560942, 33.083397, 30.033684>,  <31.349056, 33.335125, 30.261145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560942, 33.083397, 30.033684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290890, 0.764571, -0.575164,
		0.796733, 0.139259, 0.588067,
		0.529716, -0.629315, -0.568650,
		31.719856, 32.894604, 29.863089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027405, 33.735371, 30.160330>,  <31.349056, 33.335125, 30.261145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027405, 33.735371, 30.160330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.002304, 33.448875, 29.882317>,  <31.987244, 33.276978, 29.715508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.002304, 33.448875, 29.882317>,  <32.027405, 33.735371, 30.160330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002304, 33.448875, 29.882317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273787, 0.657337, -0.702104,
		0.959741, -0.234347, 0.154849,
		-0.062748, -0.716234, -0.695034,
		31.983480, 33.234005, 29.673807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645428, 33.725880, 29.733004>,  <32.027405, 33.735371, 30.160330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645428, 33.725880, 29.733004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.370972, 33.555363, 29.497211>,  <32.206299, 33.453053, 29.355736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.370972, 33.555363, 29.497211>,  <32.645428, 33.725880, 29.733004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370972, 33.555363, 29.497211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346290, 0.521225, -0.780005,
		0.639766, -0.739321, -0.210008,
		-0.686136, -0.426297, -0.589481,
		32.165131, 33.427475, 29.320368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962662, 33.726845, 29.133226>,  <32.645428, 33.725880, 29.733004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962662, 33.726845, 29.133226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.587200, 33.650040, 29.018646>,  <32.361923, 33.603958, 28.949898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.587200, 33.650040, 29.018646>,  <32.962662, 33.726845, 29.133226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587200, 33.650040, 29.018646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170050, 0.464910, -0.868874,
		0.300007, -0.864285, -0.403740,
		-0.938658, -0.192013, -0.286448,
		32.305603, 33.592438, 28.932713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038696, 33.384510, 28.474613>,  <32.962662, 33.726845, 29.133226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038696, 33.384510, 28.474613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.664196, 33.524708, 28.464916>,  <32.439495, 33.608826, 28.459097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.664196, 33.524708, 28.464916>,  <33.038696, 33.384510, 28.474613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664196, 33.524708, 28.464916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056033, 0.080842, -0.995151,
		-0.346835, -0.933069, -0.095328,
		-0.936251, 0.350495, -0.024244,
		32.383320, 33.629856, 28.457644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833633, 33.187473, 27.852354>,  <33.038696, 33.384510, 28.474613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833633, 33.187473, 27.852354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.526966, 33.430805, 27.934475>,  <32.342964, 33.576805, 27.983747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.526966, 33.430805, 27.934475>,  <32.833633, 33.187473, 27.852354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526966, 33.430805, 27.934475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142029, 0.151146, -0.978255,
		-0.626136, -0.779156, -0.029478,
		-0.766669, 0.608334, 0.205301,
		32.296967, 33.613304, 27.996065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233124, 32.935143, 27.459682>,  <32.833633, 33.187473, 27.852354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233124, 32.935143, 27.459682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.223595, 33.328880, 27.529549>,  <32.217876, 33.565121, 27.571468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.223595, 33.328880, 27.529549>,  <32.233124, 32.935143, 27.459682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223595, 33.328880, 27.529549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124867, 0.176275, -0.976389,
		-0.991887, -0.001452, -0.127111,
		-0.023824, 0.984340, 0.174663,
		32.216446, 33.624184, 27.581947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741247, 33.224632, 26.923000>,  <32.233124, 32.935143, 27.459682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741247, 33.224632, 26.923000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.956240, 33.536762, 27.050880>,  <32.085236, 33.724041, 27.127607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.956240, 33.536762, 27.050880>,  <31.741247, 33.224632, 26.923000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956240, 33.536762, 27.050880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045196, 0.351915, -0.934940,
		-0.842062, 0.516964, 0.153881,
		0.537483, 0.780323, 0.319699,
		32.117485, 33.770859, 27.146790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952503, 33.153217, 26.720238>,  <31.741247, 33.224632, 26.923000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952503, 33.153217, 26.720238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.817553, 32.884926, 26.456024>,  <30.736582, 32.723953, 26.297497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.817553, 32.884926, 26.456024>,  <30.952503, 33.153217, 26.720238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817553, 32.884926, 26.456024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205591, -0.632236, 0.747000,
		-0.918645, 0.387821, 0.075408,
		-0.337378, -0.670725, -0.660533,
		30.716339, 32.683708, 26.257864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259275, 32.945827, 26.815868>,  <30.952503, 33.153217, 26.720238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259275, 32.945827, 26.815868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.419582, 32.622250, 26.643822>,  <30.515766, 32.428104, 26.540594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.419582, 32.622250, 26.643822>,  <30.259275, 32.945827, 26.815868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419582, 32.622250, 26.643822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366801, -0.571870, 0.733772,
		-0.839550, -0.136303, -0.525906,
		0.400765, -0.808941, -0.430117,
		30.539812, 32.379566, 26.514786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767269, 32.433399, 26.915823>,  <30.259275, 32.945827, 26.815868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767269, 32.433399, 26.915823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.106318, 32.237724, 26.833618>,  <30.309746, 32.120319, 26.784296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.106318, 32.237724, 26.833618>,  <29.767269, 32.433399, 26.915823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106318, 32.237724, 26.833618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231906, -0.689913, 0.685740,
		-0.477239, -0.533589, -0.698230,
		0.847622, -0.489186, -0.205511,
		30.360603, 32.090969, 26.771965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520107, 31.904627, 26.913698>,  <29.767269, 32.433399, 26.915823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520107, 31.904627, 26.913698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.905365, 31.799095, 26.934643>,  <30.136520, 31.735775, 26.947210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.905365, 31.799095, 26.934643>,  <29.520107, 31.904627, 26.913698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905365, 31.799095, 26.934643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247458, -0.792846, 0.556919,
		-0.105418, -0.549352, -0.828914,
		0.963147, -0.263831, 0.052361,
		30.194309, 31.719946, 26.950352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622612, 31.158947, 26.789804>,  <29.520107, 31.904627, 26.913698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622612, 31.158947, 26.789804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.959934, 31.239040, 26.989300>,  <30.162329, 31.287096, 27.108997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.959934, 31.239040, 26.989300>,  <29.622612, 31.158947, 26.789804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959934, 31.239040, 26.989300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111742, -0.842397, 0.527144,
		0.525687, -0.500274, -0.688026,
		0.843308, 0.200231, 0.498738,
		30.212927, 31.299110, 27.138922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004801, 30.498611, 26.716778>,  <29.622612, 31.158947, 26.789804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004801, 30.498611, 26.716778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.177374, 30.683289, 27.026798>,  <30.280918, 30.794094, 27.212811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.177374, 30.683289, 27.026798>,  <30.004801, 30.498611, 26.716778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177374, 30.683289, 27.026798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126610, -0.881606, 0.454688,
		0.893217, -0.098038, -0.438808,
		0.431432, 0.461693, 0.775053,
		30.306803, 30.821796, 27.259314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558361, 30.087456, 26.898409>,  <30.004801, 30.498611, 26.716778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558361, 30.087456, 26.898409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.484001, 30.289597, 27.235470>,  <30.439386, 30.410881, 27.437706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.484001, 30.289597, 27.235470>,  <30.558361, 30.087456, 26.898409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484001, 30.289597, 27.235470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075067, -0.847789, 0.524993,
		0.979697, 0.160851, 0.119667,
		-0.185897, 0.505352, 0.842652,
		30.428232, 30.441202, 27.488266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128368, 29.898674, 27.406792>,  <30.558361, 30.087456, 26.898409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128368, 29.898674, 27.406792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.840385, 30.031574, 27.650520>,  <30.667595, 30.111315, 27.796757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.840385, 30.031574, 27.650520>,  <31.128368, 29.898674, 27.406792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840385, 30.031574, 27.650520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063619, -0.905859, 0.418775,
		0.691097, 0.262735, 0.673317,
		-0.719957, 0.332250, 0.609321,
		30.624399, 30.131248, 27.833317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350399, 29.883093, 28.057663>,  <31.128368, 29.898674, 27.406792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350399, 29.883093, 28.057663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.954277, 29.873043, 28.112305>,  <30.716604, 29.867012, 28.145090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.954277, 29.873043, 28.112305>,  <31.350399, 29.883093, 28.057663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954277, 29.873043, 28.112305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069197, -0.942009, 0.328376,
		0.120432, 0.334645, 0.934617,
		-0.990307, -0.025125, 0.136604,
		30.657185, 29.865505, 28.153286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240383, 29.643724, 28.739702>,  <31.350399, 29.883093, 28.057663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240383, 29.643724, 28.739702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.874754, 29.596172, 28.584610>,  <30.655376, 29.567642, 28.491554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.874754, 29.596172, 28.584610>,  <31.240383, 29.643724, 28.739702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874754, 29.596172, 28.584610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065652, -0.900084, 0.430742,
		-0.400197, 0.419186, 0.814939,
		-0.914074, -0.118879, -0.387731,
		30.600533, 29.560509, 28.468290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911581, 29.416779, 29.313343>,  <31.240383, 29.643724, 28.739702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911581, 29.416779, 29.313343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.690006, 29.301491, 29.000912>,  <30.557062, 29.232319, 28.813452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.690006, 29.301491, 29.000912>,  <30.911581, 29.416779, 29.313343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690006, 29.301491, 29.000912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154203, -0.886417, 0.436448,
		-0.818155, 0.362209, 0.446574,
		-0.553936, -0.288219, -0.781080,
		30.523825, 29.215025, 28.766588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286575, 29.152225, 29.666910>,  <30.911581, 29.416779, 29.313343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286575, 29.152225, 29.666910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.328600, 28.994133, 29.301888>,  <30.353815, 28.899279, 29.082874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.328600, 28.994133, 29.301888>,  <30.286575, 29.152225, 29.666910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328600, 28.994133, 29.301888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144796, -0.913934, 0.379156,
		-0.983868, 0.092298, -0.153249,
		0.105064, -0.395229, -0.912555,
		30.360119, 28.875565, 29.028122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780067, 28.759548, 29.545818>,  <30.286575, 29.152225, 29.666910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780067, 28.759548, 29.545818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.018206, 28.593391, 29.270714>,  <30.161089, 28.493698, 29.105652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.018206, 28.593391, 29.270714>,  <29.780067, 28.759548, 29.545818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018206, 28.593391, 29.270714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331509, -0.906725, 0.260677,
		-0.731892, 0.072806, -0.677520,
		0.595345, -0.415391, -0.687761,
		30.196810, 28.468775, 29.064386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379490, 28.354689, 29.240128>,  <29.780067, 28.759548, 29.545818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379490, 28.354689, 29.240128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.752569, 28.225693, 29.175533>,  <29.976416, 28.148294, 29.136778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.752569, 28.225693, 29.175533>,  <29.379490, 28.354689, 29.240128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752569, 28.225693, 29.175533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258622, -0.910104, 0.323767,
		-0.251378, -0.260213, -0.932254,
		0.932697, -0.322489, -0.161483,
		30.032379, 28.128946, 29.127089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.366875, 27.888891, 29.345020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993923, 27.944187, 29.478626>,  <34.770153, 27.977365, 29.558790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993923, 27.944187, 29.478626>,  <35.366875, 27.888891, 29.345020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993923, 27.944187, 29.478626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151390, 0.689740, -0.708054,
		-0.328267, -0.710738, -0.622167,
		-0.932375, 0.138241, 0.334017,
		34.714211, 27.985659, 29.578831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010300, 27.578295, 28.817730>,  <35.366875, 27.888891, 29.345020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010300, 27.578295, 28.817730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.782745, 27.850929, 29.001820>,  <34.646214, 28.014509, 29.112274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.782745, 27.850929, 29.001820>,  <35.010300, 27.578295, 28.817730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782745, 27.850929, 29.001820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086836, 0.506692, -0.857743,
		-0.817816, -0.527925, -0.229066,
		-0.568890, 0.681585, 0.460223,
		34.612080, 28.055405, 29.139887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472588, 27.730595, 28.448921>,  <35.010300, 27.578295, 28.817730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472588, 27.730595, 28.448921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.404354, 28.052513, 28.676327>,  <34.363415, 28.245665, 28.812771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.404354, 28.052513, 28.676327>,  <34.472588, 27.730595, 28.448921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404354, 28.052513, 28.676327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314251, 0.502406, -0.805503,
		-0.933888, -0.316062, 0.167205,
		-0.170584, 0.804794, 0.568513,
		34.353180, 28.293951, 28.846880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767071, 27.862413, 28.350113>,  <34.472588, 27.730595, 28.448921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767071, 27.862413, 28.350113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.965214, 28.195141, 28.450275>,  <34.084099, 28.394777, 28.510372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.965214, 28.195141, 28.450275>,  <33.767071, 27.862413, 28.350113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965214, 28.195141, 28.450275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462402, 0.496511, -0.734617,
		-0.735395, 0.248109, 0.630583,
		0.495356, 0.831817, 0.250406,
		34.113819, 28.444685, 28.525396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291023, 28.453232, 28.271307>,  <33.767071, 27.862413, 28.350113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291023, 28.453232, 28.271307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.656601, 28.615566, 28.271854>,  <33.875946, 28.712967, 28.272182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.656601, 28.615566, 28.271854>,  <33.291023, 28.453232, 28.271307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656601, 28.615566, 28.271854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303442, 0.685579, -0.661743,
		-0.269498, 0.604381, 0.749730,
		0.913944, 0.405838, 0.001367,
		33.930786, 28.737318, 28.272264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181469, 29.225088, 28.198729>,  <33.291023, 28.453232, 28.271307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181469, 29.225088, 28.198729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.563976, 29.167957, 28.096626>,  <33.793480, 29.133678, 28.035366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.563976, 29.167957, 28.096626>,  <33.181469, 29.225088, 28.198729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563976, 29.167957, 28.096626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117780, 0.610770, -0.782999,
		0.267736, 0.778820, 0.567237,
		0.956266, -0.142827, -0.255255,
		33.850857, 29.125109, 28.020050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256409, 29.863895, 28.147278>,  <33.181469, 29.225088, 28.198729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256409, 29.863895, 28.147278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.541740, 29.661343, 27.953480>,  <33.712940, 29.539812, 27.837202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.541740, 29.661343, 27.953480>,  <33.256409, 29.863895, 28.147278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541740, 29.661343, 27.953480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020193, 0.676182, -0.736458,
		0.700534, 0.535123, 0.472118,
		0.713334, -0.506380, -0.484494,
		33.755741, 29.509428, 27.808132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880871, 30.374977, 27.916567>,  <33.256409, 29.863895, 28.147278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880871, 30.374977, 27.916567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.828785, 30.043652, 27.698597>,  <33.797535, 29.844856, 27.567816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.828785, 30.043652, 27.698597>,  <33.880871, 30.374977, 27.916567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828785, 30.043652, 27.698597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056954, 0.542446, -0.838158,
		0.989849, -0.140172, -0.023456,
		-0.130210, -0.828315, -0.544923,
		33.789722, 29.795156, 27.535120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366486, 30.548803, 27.463017>,  <33.880871, 30.374977, 27.916567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366486, 30.548803, 27.463017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169323, 30.228741, 27.326317>,  <34.051025, 30.036703, 27.244297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169323, 30.228741, 27.326317>,  <34.366486, 30.548803, 27.463017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169323, 30.228741, 27.326317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140137, 0.314643, -0.938808,
		0.858723, -0.510637, -0.042958,
		-0.492907, -0.800156, -0.341750,
		34.021450, 29.988693, 27.223791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604546, 30.537334, 26.828423>,  <34.366486, 30.548803, 27.463017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604546, 30.537334, 26.828423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.286808, 30.297329, 26.790459>,  <34.096165, 30.153326, 26.767681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.286808, 30.297329, 26.790459>,  <34.604546, 30.537334, 26.828423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286808, 30.297329, 26.790459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084857, 0.264300, -0.960700,
		0.601516, -0.755070, -0.260859,
		-0.794341, -0.600013, -0.094907,
		34.048504, 30.117325, 26.761986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797791, 30.217623, 26.280777>,  <34.604546, 30.537334, 26.828423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797791, 30.217623, 26.280777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.404171, 30.154644, 26.313927>,  <34.167999, 30.116858, 26.333817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.404171, 30.154644, 26.313927>,  <34.797791, 30.217623, 26.280777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404171, 30.154644, 26.313927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131495, 0.329764, -0.934861,
		0.119858, -0.930842, -0.345205,
		-0.984044, -0.157443, 0.082876,
		34.108959, 30.107410, 26.338789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540966, 29.799698, 25.779514>,  <34.797791, 30.217623, 26.280777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540966, 29.799698, 25.779514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239597, 30.037167, 25.892590>,  <34.058777, 30.179647, 25.960434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.239597, 30.037167, 25.892590>,  <34.540966, 29.799698, 25.779514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239597, 30.037167, 25.892590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076172, 0.348223, -0.934312,
		-0.653113, -0.725462, -0.217137,
		-0.753420, 0.593672, 0.282689,
		34.013573, 30.215267, 25.977396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984406, 29.702431, 25.219461>,  <34.540966, 29.799698, 25.779514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984406, 29.702431, 25.219461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908913, 30.042793, 25.415558>,  <33.863617, 30.247011, 25.533216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908913, 30.042793, 25.415558>,  <33.984406, 29.702431, 25.219461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908913, 30.042793, 25.415558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011773, 0.501140, -0.865286,
		-0.981958, -0.157535, -0.104599,
		-0.188732, 0.850906, 0.490243,
		33.852295, 30.298065, 25.562632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351997, 29.998392, 24.862520>,  <33.984406, 29.702431, 25.219461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351997, 29.998392, 24.862520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532074, 30.300087, 25.053707>,  <33.640118, 30.481104, 25.168419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532074, 30.300087, 25.053707>,  <33.351997, 29.998392, 24.862520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532074, 30.300087, 25.053707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019594, 0.543494, -0.839185,
		-0.892718, 0.368427, 0.259454,
		0.450190, 0.754239, 0.477968,
		33.667130, 30.526358, 25.197098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631554, 29.932528, 24.717945>,  <33.351997, 29.998392, 24.862520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631554, 29.932528, 24.717945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.406773, 29.781185, 24.423717>,  <32.271904, 29.690380, 24.247181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.406773, 29.781185, 24.423717>,  <32.631554, 29.932528, 24.717945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406773, 29.781185, 24.423717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152166, -0.826796, 0.541530,
		-0.813054, 0.416241, 0.407045,
		-0.561950, -0.378354, -0.735568,
		32.238186, 29.667679, 24.203047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927622, 29.778811, 24.981281>,  <32.631554, 29.932528, 24.717945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927622, 29.778811, 24.981281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990965, 29.551003, 24.658649>,  <32.028969, 29.414318, 24.465071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990965, 29.551003, 24.658649>,  <31.927622, 29.778811, 24.981281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990965, 29.551003, 24.658649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095648, -0.821893, 0.561554,
		-0.982738, -0.011778, -0.184626,
		0.158357, -0.569519, -0.806579,
		32.038471, 29.380146, 24.416676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411371, 29.250359, 25.043463>,  <31.927622, 29.778811, 24.981281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411371, 29.250359, 25.043463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.686558, 29.095348, 24.798016>,  <31.851669, 29.002342, 24.650747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.686558, 29.095348, 24.798016>,  <31.411371, 29.250359, 25.043463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686558, 29.095348, 24.798016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086781, -0.883363, 0.460585,
		-0.720533, -0.263618, -0.641356,
		0.687968, -0.387524, -0.613616,
		31.892948, 28.979092, 24.613930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203644, 28.585146, 24.693491>,  <31.411371, 29.250359, 25.043463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203644, 28.585146, 24.693491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.601210, 28.559681, 24.657532>,  <31.839748, 28.544401, 24.635956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.601210, 28.559681, 24.657532>,  <31.203644, 28.585146, 24.693491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601210, 28.559681, 24.657532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015651, -0.889421, 0.456821,
		-0.109039, -0.452634, -0.885005,
		0.993914, -0.063663, -0.089898,
		31.899384, 28.540583, 24.630562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309227, 27.896826, 24.645107>,  <31.203644, 28.585146, 24.693491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309227, 27.896826, 24.645107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.687933, 28.009178, 24.708023>,  <31.915157, 28.076590, 24.745773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.687933, 28.009178, 24.708023>,  <31.309227, 27.896826, 24.645107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687933, 28.009178, 24.708023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132694, -0.785655, 0.604266,
		0.293303, -0.551227, -0.781103,
		0.946766, 0.280881, 0.157291,
		31.971962, 28.093443, 24.755211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744762, 27.286098, 24.533091>,  <31.309227, 27.896826, 24.645107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744762, 27.286098, 24.533091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.950529, 27.544094, 24.759140>,  <32.073990, 27.698891, 24.894770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.950529, 27.544094, 24.759140>,  <31.744762, 27.286098, 24.533091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950529, 27.544094, 24.759140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233818, -0.739533, 0.631206,
		0.825048, -0.192566, -0.531238,
		0.514417, 0.644988, 0.565125,
		32.104855, 27.737591, 24.928677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325344, 26.980637, 24.595108>,  <31.744762, 27.286098, 24.533091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325344, 26.980637, 24.595108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.276436, 27.240433, 24.895298>,  <32.247089, 27.396311, 25.075413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.276436, 27.240433, 24.895298>,  <32.325344, 26.980637, 24.595108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276436, 27.240433, 24.895298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223292, -0.718761, 0.658425,
		0.967052, 0.248083, -0.057141,
		-0.122273, 0.649490, 0.750474,
		32.239754, 27.435280, 25.120440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896313, 26.890310, 25.022633>,  <32.325344, 26.980637, 24.595108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896313, 26.890310, 25.022633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.592262, 27.054306, 25.224270>,  <32.409832, 27.152704, 25.345253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.592262, 27.054306, 25.224270>,  <32.896313, 26.890310, 25.022633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592262, 27.054306, 25.224270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175542, -0.617379, 0.766830,
		0.625609, 0.671381, 0.397318,
		-0.760131, 0.409989, 0.504093,
		32.364223, 27.177303, 25.375498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176998, 26.834473, 25.652321>,  <32.896313, 26.890310, 25.022633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176998, 26.834473, 25.652321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.795422, 26.931297, 25.723202>,  <32.566475, 26.989393, 25.765730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.795422, 26.931297, 25.723202>,  <33.176998, 26.834473, 25.652321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795422, 26.931297, 25.723202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033805, -0.500185, 0.865259,
		0.298080, 0.831397, 0.468965,
		-0.953942, 0.242063, 0.177200,
		32.509239, 27.003916, 25.776361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079609, 27.238096, 26.306273>,  <33.176998, 26.834473, 25.652321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079609, 27.238096, 26.306273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728737, 27.056046, 26.245060>,  <32.518215, 26.946815, 26.208332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728737, 27.056046, 26.245060>,  <33.079609, 27.238096, 26.306273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728737, 27.056046, 26.245060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064145, -0.426918, 0.902013,
		-0.475862, 0.781409, 0.403677,
		-0.877178, -0.455127, -0.153030,
		32.465584, 26.919508, 26.199150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773224, 27.204809, 26.979912>,  <33.079609, 27.238096, 26.306273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773224, 27.204809, 26.979912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577480, 26.913158, 26.788540>,  <32.460033, 26.738167, 26.673717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577480, 26.913158, 26.788540>,  <32.773224, 27.204809, 26.979912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577480, 26.913158, 26.788540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051113, -0.523685, 0.850377,
		-0.870581, 0.440598, 0.219004,
		-0.489363, -0.729128, -0.478430,
		32.430672, 26.694420, 26.645010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204716, 27.078323, 27.386114>,  <32.773224, 27.204809, 26.979912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204716, 27.078323, 27.386114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.238602, 26.758945, 27.147682>,  <32.258934, 26.567318, 27.004623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.238602, 26.758945, 27.147682>,  <32.204716, 27.078323, 27.386114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238602, 26.758945, 27.147682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122001, -0.585416, 0.801501,
		-0.988908, -0.140622, 0.047816,
		0.084716, -0.798444, -0.596078,
		32.264015, 26.519413, 26.968859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876984, 26.549250, 27.735447>,  <32.204716, 27.078323, 27.386114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876984, 26.549250, 27.735447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068909, 26.324707, 27.465733>,  <32.184063, 26.189981, 27.303904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.068909, 26.324707, 27.465733>,  <31.876984, 26.549250, 27.735447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068909, 26.324707, 27.465733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017585, -0.774529, 0.632294,
		-0.877196, -0.291524, -0.381498,
		0.479810, -0.561354, -0.674287,
		32.212852, 26.156301, 27.263447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471350, 25.835901, 27.614449>,  <31.876984, 26.549250, 27.735447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471350, 25.835901, 27.614449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.858408, 25.798012, 27.520905>,  <32.090641, 25.775278, 27.464779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.858408, 25.798012, 27.520905>,  <31.471350, 25.835901, 27.614449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858408, 25.798012, 27.520905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075178, -0.776524, 0.625587,
		-0.240854, -0.622928, -0.744279,
		0.967645, -0.094722, -0.233859,
		32.148701, 25.769596, 27.450747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080687, 25.396229, 27.123945>,  <31.471350, 25.835901, 27.614449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080687, 25.396229, 27.123945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.687029, 25.333717, 27.157509>,  <30.450834, 25.296209, 27.177647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.687029, 25.333717, 27.157509>,  <31.080687, 25.396229, 27.123945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687029, 25.333717, 27.157509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139498, 0.389685, -0.910322,
		0.109567, -0.907591, -0.405306,
		-0.984142, -0.156280, 0.083910,
		30.391787, 25.286833, 27.182682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870962, 24.984564, 26.436111>,  <31.080687, 25.396229, 27.123945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870962, 24.984564, 26.436111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.557386, 25.177887, 26.591984>,  <30.369242, 25.293880, 26.685507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.557386, 25.177887, 26.591984>,  <30.870962, 24.984564, 26.436111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557386, 25.177887, 26.591984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338162, 0.193979, -0.920879,
		-0.520658, -0.853689, 0.011368,
		-0.783939, 0.483307, 0.389682,
		30.322205, 25.322880, 26.708889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278706, 24.837181, 26.020981>,  <30.870962, 24.984564, 26.436111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278706, 24.837181, 26.020981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.160021, 25.179310, 26.190868>,  <30.088810, 25.384586, 26.292801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.160021, 25.179310, 26.190868>,  <30.278706, 24.837181, 26.020981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160021, 25.179310, 26.190868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308988, 0.334838, -0.890174,
		-0.903597, -0.395359, 0.164933,
		-0.296713, 0.855322, 0.424720,
		30.071007, 25.435905, 26.318285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642748, 24.933867, 25.820749>,  <30.278706, 24.837181, 26.020981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642748, 24.933867, 25.820749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.735373, 25.307728, 25.928680>,  <29.790947, 25.532043, 25.993439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.735373, 25.307728, 25.928680>,  <29.642748, 24.933867, 25.820749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735373, 25.307728, 25.928680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521717, 0.353417, -0.776471,
		-0.821091, 0.039029, 0.569461,
		0.231562, 0.934651, 0.269826,
		29.804842, 25.588123, 26.009628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150784, 25.315365, 25.558302>,  <29.642748, 24.933867, 25.820749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150784, 25.315365, 25.558302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.411533, 25.604603, 25.649689>,  <29.567984, 25.778145, 25.704521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.411533, 25.604603, 25.649689>,  <29.150784, 25.315365, 25.558302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411533, 25.604603, 25.649689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231524, 0.476667, -0.848048,
		-0.722121, 0.499924, 0.478140,
		0.651873, 0.723094, 0.228467,
		29.607096, 25.821531, 25.718229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740194, 25.913450, 25.393288>,  <29.150784, 25.315365, 25.558302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740194, 25.913450, 25.393288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.124413, 26.024586, 25.398258>,  <29.354944, 26.091267, 25.401241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.124413, 26.024586, 25.398258>,  <28.740194, 25.913450, 25.393288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124413, 26.024586, 25.398258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165276, 0.606190, -0.777958,
		-0.223679, 0.745212, 0.628194,
		0.960548, 0.277838, 0.012426,
		29.412577, 26.107937, 25.401985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718016, 26.612093, 25.462961>,  <28.740194, 25.913450, 25.393288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718016, 26.612093, 25.462961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.064180, 26.492157, 25.302383>,  <29.271879, 26.420195, 25.206038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.064180, 26.492157, 25.302383>,  <28.718016, 26.612093, 25.462961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064180, 26.492157, 25.302383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145427, 0.616392, -0.773894,
		0.479493, 0.728118, 0.489828,
		0.865412, -0.299842, -0.401444,
		29.323803, 26.402205, 25.181950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071653, 27.299465, 25.453833>,  <28.718016, 26.612093, 25.462961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071653, 27.299465, 25.453833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.239063, 27.033051, 25.206856>,  <29.339508, 26.873201, 25.058670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.239063, 27.033051, 25.206856>,  <29.071653, 27.299465, 25.453833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239063, 27.033051, 25.206856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209663, 0.590628, -0.779230,
		0.883674, 0.455580, 0.107549,
		0.418523, -0.666037, -0.617441,
		29.364620, 26.833239, 25.021624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514746, 27.642384, 25.076532>,  <29.071653, 27.299465, 25.453833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.514746, 27.642384, 25.076532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.404945, 27.320366, 24.866180>,  <29.339066, 27.127155, 24.739969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.404945, 27.320366, 24.866180>,  <29.514746, 27.642384, 25.076532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404945, 27.320366, 24.866180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051515, 0.558415, -0.827961,
		0.960206, -0.200186, -0.194757,
		-0.274501, -0.805046, -0.525881,
		29.322596, 27.078852, 24.708416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987741, 27.647903, 24.579992>,  <29.514746, 27.642384, 25.076532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987741, 27.647903, 24.579992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.678062, 27.434227, 24.444195>,  <29.492254, 27.306021, 24.362717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.678062, 27.434227, 24.444195>,  <29.987741, 27.647903, 24.579992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.678062, 27.434227, 24.444195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054422, 0.478208, -0.876558,
		0.630597, -0.697107, -0.341157,
		-0.774200, -0.534189, -0.339495,
		29.445803, 27.273970, 24.342346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135960, 27.428484, 23.854197>,  <29.987741, 27.647903, 24.579992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135960, 27.428484, 23.854197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.738125, 27.391949, 23.874020>,  <29.499424, 27.370028, 23.885914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.738125, 27.391949, 23.874020>,  <30.135960, 27.428484, 23.854197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738125, 27.391949, 23.874020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092415, 0.559334, -0.823775,
		0.047524, -0.823895, -0.564747,
		-0.994586, -0.091340, 0.049559,
		29.439749, 27.364546, 23.888887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896280, 27.423046, 23.152792>,  <30.135960, 27.428484, 23.854197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896280, 27.423046, 23.152792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.571081, 27.504913, 23.370838>,  <29.375961, 27.554033, 23.501665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.571081, 27.504913, 23.370838>,  <29.896280, 27.423046, 23.152792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571081, 27.504913, 23.370838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294708, 0.662783, -0.688379,
		-0.502181, -0.720299, -0.478523,
		-0.812995, 0.204666, 0.545115,
		29.327183, 27.566313, 23.534372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305819, 27.185888, 22.829264>,  <29.896280, 27.423046, 23.152792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305819, 27.185888, 22.829264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.195873, 27.498299, 23.053566>,  <29.129906, 27.685745, 23.188148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.195873, 27.498299, 23.053566>,  <29.305819, 27.185888, 22.829264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195873, 27.498299, 23.053566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178758, 0.531541, -0.827955,
		-0.944720, -0.327813, -0.006486,
		-0.274862, 0.781027, 0.560757,
		29.113415, 27.732607, 23.221792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773815, 27.479303, 22.356853>,  <29.305819, 27.185888, 22.829264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773815, 27.479303, 22.356853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.874063, 27.740108, 22.643089>,  <28.934212, 27.896591, 22.814831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.874063, 27.740108, 22.643089>,  <28.773815, 27.479303, 22.356853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874063, 27.740108, 22.643089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192767, 0.757987, -0.623134,
		-0.948699, 0.018228, 0.315654,
		0.250621, 0.652015, 0.715588,
		28.949249, 27.935713, 22.857765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<47.846729, 39.095039, 19.214928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.067204, 38.818501, 19.028069>,  <48.199490, 38.652576, 18.915953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<48.067204, 38.818501, 19.028069>,  <47.846729, 39.095039, 19.214928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.067204, 38.818501, 19.028069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694067, -0.690645, 0.203177,
		-0.463099, 0.212242, -0.860519,
		0.551190, -0.691349, -0.467147,
		48.232559, 38.611095, 18.887924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.399086, 38.839291, 18.684309>,  <47.846729, 39.095039, 19.214928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.399086, 38.839291, 18.684309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.679268, 38.558956, 18.738258>,  <47.847378, 38.390755, 18.770628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.679268, 38.558956, 18.738258>,  <47.399086, 38.839291, 18.684309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.679268, 38.558956, 18.738258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701420, -0.710904, -0.051239,
		0.131793, -0.058713, -0.989537,
		0.700458, -0.700834, 0.134875,
		47.889404, 38.348705, 18.778721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.120617, 38.119404, 18.354614>,  <47.399086, 38.839291, 18.684309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.120617, 38.119404, 18.354614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.418610, 37.990608, 18.588306>,  <47.597404, 37.913330, 18.728521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.418610, 37.990608, 18.588306>,  <47.120617, 38.119404, 18.354614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.418610, 37.990608, 18.588306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517122, -0.832010, 0.200857,
		0.421411, -0.451753, -0.786341,
		0.744981, -0.321991, 0.584230,
		47.642105, 37.894012, 18.763575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.230076, 37.490810, 18.120972>,  <47.120617, 38.119404, 18.354614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.230076, 37.490810, 18.120972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.397511, 37.485912, 18.484211>,  <47.497971, 37.482975, 18.702154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.397511, 37.485912, 18.484211>,  <47.230076, 37.490810, 18.120972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.397511, 37.485912, 18.484211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567210, -0.784432, 0.250876,
		0.709269, -0.620094, -0.335294,
		0.418582, -0.012243, 0.908097,
		47.523087, 37.482239, 18.756639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.394447, 36.804852, 18.228445>,  <47.230076, 37.490810, 18.120972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.394447, 36.804852, 18.228445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.330482, 36.976101, 18.584229>,  <47.292103, 37.078850, 18.797699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.330482, 36.976101, 18.584229>,  <47.394447, 36.804852, 18.228445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.330482, 36.976101, 18.584229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692236, -0.691002, 0.208148,
		0.703731, -0.582430, 0.406864,
		-0.159912, 0.428126, 0.889459,
		47.282509, 37.104538, 18.851067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.280243, 36.275742, 18.585466>,  <47.394447, 36.804852, 18.228445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.280243, 36.275742, 18.585466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.142033, 36.562511, 18.827667>,  <47.059109, 36.734573, 18.972988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.142033, 36.562511, 18.827667>,  <47.280243, 36.275742, 18.585466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.142033, 36.562511, 18.827667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610196, -0.661855, 0.435442,
		0.712934, -0.219020, 0.666150,
		-0.345524, 0.716923, 0.605504,
		47.038376, 36.777588, 19.009319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.212341, 35.911777, 19.169220>,  <47.280243, 36.275742, 18.585466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.212341, 35.911777, 19.169220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.003326, 36.245331, 19.240322>,  <46.877918, 36.445461, 19.282984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.003326, 36.245331, 19.240322>,  <47.212341, 35.911777, 19.169220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.003326, 36.245331, 19.240322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713957, -0.541910, 0.443394,
		0.466064, 0.104783, 0.878524,
		-0.522541, 0.833879, 0.177754,
		46.846565, 36.495495, 19.293648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.122795, 35.936733, 19.836678>,  <47.212341, 35.911777, 19.169220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.122795, 35.936733, 19.836678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.830975, 36.151764, 19.667557>,  <46.655884, 36.280785, 19.566084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.830975, 36.151764, 19.667557>,  <47.122795, 35.936733, 19.836678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.830975, 36.151764, 19.667557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663798, -0.407697, 0.627022,
		0.164701, 0.738099, 0.654281,
		-0.729552, 0.537581, -0.422800,
		46.612110, 36.313038, 19.540716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.616375, 35.986519, 20.407970>,  <47.122795, 35.936733, 19.836678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.616375, 35.986519, 20.407970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.387470, 36.105427, 20.102253>,  <46.250126, 36.176773, 19.918823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.387470, 36.105427, 20.102253>,  <46.616375, 35.986519, 20.407970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.387470, 36.105427, 20.102253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792126, -0.441596, 0.421342,
		-0.212254, 0.846535, 0.488187,
		-0.572263, 0.297274, -0.764293,
		46.215790, 36.194611, 19.872965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.055447, 36.340202, 20.691164>,  <46.616375, 35.986519, 20.407970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.055447, 36.340202, 20.691164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.943016, 36.193119, 20.336586>,  <45.875557, 36.104870, 20.123838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.943016, 36.193119, 20.336586>,  <46.055447, 36.340202, 20.691164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943016, 36.193119, 20.336586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850655, -0.332150, 0.407508,
		-0.444277, 0.868601, -0.219432,
		-0.281078, -0.367708, -0.886446,
		45.858692, 36.082806, 20.070652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277740, 36.541046, 20.636660>,  <46.055447, 36.340202, 20.691164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277740, 36.541046, 20.636660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.307201, 36.298836, 20.319695>,  <45.324879, 36.153511, 20.129515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.307201, 36.298836, 20.319695>,  <45.277740, 36.541046, 20.636660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.307201, 36.298836, 20.319695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920757, -0.346535, 0.179221,
		-0.383121, 0.716419, -0.583062,
		0.073655, -0.605522, -0.792413,
		45.329296, 36.117180, 20.081970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700768, 36.625076, 20.126129>,  <45.277740, 36.541046, 20.636660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700768, 36.625076, 20.126129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.846088, 36.258728, 20.057781>,  <44.933281, 36.038921, 20.016771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.846088, 36.258728, 20.057781>,  <44.700768, 36.625076, 20.126129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.846088, 36.258728, 20.057781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914880, -0.385367, 0.120363,
		-0.176085, 0.112598, -0.977914,
		0.363303, -0.915868, -0.170870,
		44.955078, 35.983967, 20.006519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167339, 36.293900, 19.650492>,  <44.700768, 36.625076, 20.126129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167339, 36.293900, 19.650492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.398346, 36.004562, 19.801888>,  <44.536949, 35.830959, 19.892725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.398346, 36.004562, 19.801888>,  <44.167339, 36.293900, 19.650492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398346, 36.004562, 19.801888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813818, -0.473384, 0.337059,
		-0.064638, -0.502677, -0.862054,
		0.577514, -0.723342, 0.378489,
		44.571602, 35.787560, 19.915434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920254, 35.698349, 19.312119>,  <44.167339, 36.293900, 19.650492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920254, 35.698349, 19.312119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.100266, 35.554375, 19.639023>,  <44.208275, 35.467991, 19.835165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.100266, 35.554375, 19.639023>,  <43.920254, 35.698349, 19.312119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100266, 35.554375, 19.639023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849866, -0.453655, 0.268187,
		0.274224, -0.815255, -0.510060,
		0.450032, -0.359939, 0.817261,
		44.235275, 35.446392, 19.884201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627773, 35.013489, 19.362459>,  <43.920254, 35.698349, 19.312119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627773, 35.013489, 19.362459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.789822, 35.078072, 19.722416>,  <43.887051, 35.116821, 19.938391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.789822, 35.078072, 19.722416>,  <43.627773, 35.013489, 19.362459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789822, 35.078072, 19.722416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713893, -0.559047, 0.421691,
		0.571167, -0.813264, -0.111220,
		0.405123, 0.161457, 0.899892,
		43.911358, 35.126511, 19.992384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498520, 34.453205, 19.659176>,  <43.627773, 35.013489, 19.362459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498520, 34.453205, 19.659176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.578072, 34.696651, 19.966431>,  <43.625801, 34.842720, 20.150784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.578072, 34.696651, 19.966431>,  <43.498520, 34.453205, 19.659176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578072, 34.696651, 19.966431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625992, -0.524172, 0.577389,
		0.754043, -0.595680, 0.276740,
		0.198879, 0.608613, 0.768139,
		43.637737, 34.879234, 20.196873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494694, 34.068611, 20.293249>,  <43.498520, 34.453205, 19.659176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494694, 34.068611, 20.293249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.423145, 34.445808, 20.405506>,  <43.380215, 34.672127, 20.472860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.423145, 34.445808, 20.405506>,  <43.494694, 34.068611, 20.293249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423145, 34.445808, 20.405506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756816, -0.314144, 0.573186,
		0.628676, -0.109868, 0.769868,
		-0.178875, 0.942997, 0.280645,
		43.369484, 34.728706, 20.489700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351524, 34.040028, 21.065933>,  <43.494694, 34.068611, 20.293249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351524, 34.040028, 21.065933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.205086, 34.392811, 20.947193>,  <43.117222, 34.604481, 20.875950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.205086, 34.392811, 20.947193>,  <43.351524, 34.040028, 21.065933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205086, 34.392811, 20.947193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844196, -0.180545, 0.504714,
		0.391543, 0.435373, 0.810644,
		-0.366096, 0.881960, -0.296849,
		43.095257, 34.657398, 20.858139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984512, 34.300270, 21.645819>,  <43.351524, 34.040028, 21.065933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984512, 34.300270, 21.645819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.834305, 34.497959, 21.332199>,  <42.744183, 34.616573, 21.144028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.834305, 34.497959, 21.332199>,  <42.984512, 34.300270, 21.645819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834305, 34.497959, 21.332199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926795, -0.194476, 0.321295,
		0.006312, 0.847304, 0.531070,
		-0.375515, 0.494221, -0.784050,
		42.721649, 34.646225, 21.096985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386536, 34.596272, 21.884037>,  <42.984512, 34.300270, 21.645819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386536, 34.596272, 21.884037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.326565, 34.594971, 21.488560>,  <42.290585, 34.594189, 21.251274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.326565, 34.594971, 21.488560>,  <42.386536, 34.596272, 21.884037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326565, 34.594971, 21.488560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984498, -0.091576, 0.149591,
		-0.091027, 0.995793, 0.010523,
		-0.149925, -0.003257, -0.988692,
		42.281586, 34.593994, 21.191952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811413, 35.011509, 21.844316>,  <42.386536, 34.596272, 21.884037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811413, 35.011509, 21.844316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.851761, 34.781792, 21.519352>,  <41.875969, 34.643963, 21.324373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.851761, 34.781792, 21.519352>,  <41.811413, 35.011509, 21.844316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.851761, 34.781792, 21.519352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976723, -0.212540, 0.028972,
		-0.189309, 0.790580, -0.582362,
		0.100870, -0.574291, -0.812413,
		41.882023, 34.609505, 21.275627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057491, 35.215721, 21.747738>,  <41.811413, 35.011509, 21.844316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057491, 35.215721, 21.747738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.724255, 35.344139, 21.567562>,  <40.524315, 35.421188, 21.459457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.724255, 35.344139, 21.567562>,  <41.057491, 35.215721, 21.747738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724255, 35.344139, 21.567562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522126, 0.725259, -0.448758,
		0.182615, -0.609041, -0.771829,
		-0.833088, 0.321042, -0.450440,
		40.474327, 35.440453, 21.432430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139099, 35.213734, 21.038536>,  <41.057491, 35.215721, 21.747738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139099, 35.213734, 21.038536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.859905, 35.495941, 21.087620>,  <40.692390, 35.665268, 21.117071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.859905, 35.495941, 21.087620>,  <41.139099, 35.213734, 21.038536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859905, 35.495941, 21.087620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554725, 0.641051, -0.530409,
		-0.452879, -0.302146, -0.838814,
		-0.697984, 0.705522, 0.122711,
		40.650509, 35.707596, 21.124434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054817, 35.410759, 20.330883>,  <41.139099, 35.213734, 21.038536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054817, 35.410759, 20.330883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.906288, 35.693897, 20.571239>,  <40.817169, 35.863781, 20.715452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.906288, 35.693897, 20.571239>,  <41.054817, 35.410759, 20.330883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906288, 35.693897, 20.571239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417030, 0.705355, -0.573202,
		-0.829581, 0.037745, -0.557110,
		-0.371325, 0.707848, 0.600890,
		40.794891, 35.906250, 20.751507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603207, 35.933743, 19.943201>,  <41.054817, 35.410759, 20.330883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603207, 35.933743, 19.943201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.731838, 36.106159, 20.280434>,  <40.809017, 36.209610, 20.482773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.731838, 36.106159, 20.280434>,  <40.603207, 35.933743, 19.943201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731838, 36.106159, 20.280434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422716, 0.731373, -0.535169,
		-0.847289, 0.528483, 0.052984,
		0.321579, 0.431045, 0.843082,
		40.828312, 36.235474, 20.533358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425453, 36.597530, 19.900692>,  <40.603207, 35.933743, 19.943201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425453, 36.597530, 19.900692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.703552, 36.629200, 20.186451>,  <40.870411, 36.648201, 20.357906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.703552, 36.629200, 20.186451>,  <40.425453, 36.597530, 19.900692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703552, 36.629200, 20.186451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418639, 0.763325, -0.492013,
		-0.584272, 0.641145, 0.497554,
		0.695247, 0.079174, 0.714397,
		40.912125, 36.652954, 20.400770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589821, 37.376202, 20.018457>,  <40.425453, 36.597530, 19.900692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589821, 37.376202, 20.018457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.901852, 37.172188, 20.163425>,  <41.089069, 37.049782, 20.250406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.901852, 37.172188, 20.163425>,  <40.589821, 37.376202, 20.018457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901852, 37.172188, 20.163425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625075, 0.660816, -0.415457,
		-0.027597, 0.550628, 0.834295,
		0.780077, -0.510031, 0.362420,
		41.135876, 37.019176, 20.272152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055489, 37.902901, 20.380135>,  <40.589821, 37.376202, 20.018457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055489, 37.902901, 20.380135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.266838, 37.573093, 20.299149>,  <41.393650, 37.375210, 20.250557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.266838, 37.573093, 20.299149>,  <41.055489, 37.902901, 20.380135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266838, 37.573093, 20.299149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732508, 0.563286, -0.382283,
		0.429244, 0.053681, 0.901592,
		0.528376, -0.824516, -0.202466,
		41.425350, 37.325737, 20.238409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722015, 38.018032, 20.697851>,  <41.055489, 37.902901, 20.380135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722015, 38.018032, 20.697851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.764992, 37.729103, 20.424587>,  <41.790779, 37.555748, 20.260628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.764992, 37.729103, 20.424587>,  <41.722015, 38.018032, 20.697851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.764992, 37.729103, 20.424587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803674, 0.467617, -0.368023,
		0.585289, -0.509497, 0.630754,
		0.107445, -0.722320, -0.683161,
		41.797226, 37.512405, 20.219639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342022, 37.824059, 20.858175>,  <41.722015, 38.018032, 20.697851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342022, 37.824059, 20.858175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.282265, 37.676147, 20.491364>,  <42.246410, 37.587399, 20.271276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.282265, 37.676147, 20.491364>,  <42.342022, 37.824059, 20.858175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282265, 37.676147, 20.491364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805219, 0.492753, -0.329875,
		0.573850, -0.787691, 0.224139,
		-0.149394, -0.369780, -0.917030,
		42.237446, 37.565212, 20.216255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952530, 37.384159, 20.539631>,  <42.342022, 37.824059, 20.858175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952530, 37.384159, 20.539631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.723541, 37.487663, 20.228420>,  <42.586147, 37.549767, 20.041695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.723541, 37.487663, 20.228420>,  <42.952530, 37.384159, 20.539631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723541, 37.487663, 20.228420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770660, 0.493776, -0.402827,
		0.279936, -0.830199, -0.482084,
		-0.572468, 0.258757, -0.778027,
		42.551800, 37.565289, 19.995012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.362480, 37.412884, 19.958731>,  <42.952530, 37.384159, 20.539631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.362480, 37.412884, 19.958731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.049286, 37.606480, 19.802429>,  <42.861370, 37.722637, 19.708649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.049286, 37.606480, 19.802429>,  <43.362480, 37.412884, 19.958731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049286, 37.606480, 19.802429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603742, 0.440039, -0.664726,
		-0.149775, -0.756385, -0.636749,
		-0.782983, 0.483992, -0.390754,
		42.814392, 37.751678, 19.685204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365139, 37.262405, 19.285599>,  <43.362480, 37.412884, 19.958731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365139, 37.262405, 19.285599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.156464, 37.601959, 19.319603>,  <43.031258, 37.805691, 19.340006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.156464, 37.601959, 19.319603>,  <43.365139, 37.262405, 19.285599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156464, 37.601959, 19.319603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610271, 0.440955, -0.658125,
		-0.596161, -0.291457, -0.748094,
		-0.521691, 0.848889, 0.085012,
		42.999958, 37.856625, 19.345106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301605, 37.487152, 18.635517>,  <43.365139, 37.262405, 19.285599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301605, 37.487152, 18.635517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.258633, 37.816460, 18.858475>,  <43.232849, 38.014042, 18.992250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.258633, 37.816460, 18.858475>,  <43.301605, 37.487152, 18.635517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258633, 37.816460, 18.858475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748512, 0.435972, -0.499658,
		-0.654360, 0.363539, -0.663063,
		-0.107432, 0.823267, 0.557396,
		43.226402, 38.063438, 19.025694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321850, 37.928059, 18.168152>,  <43.301605, 37.487152, 18.635517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321850, 37.928059, 18.168152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.383011, 38.148556, 18.496239>,  <43.419708, 38.280853, 18.693090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.383011, 38.148556, 18.496239>,  <43.321850, 37.928059, 18.168152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383011, 38.148556, 18.496239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637740, 0.578986, -0.507999,
		-0.754923, 0.600759, -0.263020,
		0.152900, 0.551239, 0.820218,
		43.428883, 38.313927, 18.742304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406612, 38.709049, 17.976255>,  <43.321850, 37.928059, 18.168152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406612, 38.709049, 17.976255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.556953, 38.722176, 18.346695>,  <43.647160, 38.730053, 18.568958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.556953, 38.722176, 18.346695>,  <43.406612, 38.709049, 17.976255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556953, 38.722176, 18.346695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712411, 0.628879, -0.311418,
		-0.592624, 0.776810, 0.212987,
		0.375856, 0.032820, 0.926097,
		43.669708, 38.732021, 18.624523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374317, 39.374866, 18.338827>,  <43.406612, 38.709049, 17.976255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374317, 39.374866, 18.338827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.688568, 39.180565, 18.492107>,  <43.877117, 39.063984, 18.584076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.688568, 39.180565, 18.492107>,  <43.374317, 39.374866, 18.338827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688568, 39.180565, 18.492107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598629, 0.753285, -0.272407,
		-0.156336, 0.443403, 0.882583,
		0.785623, -0.485753, 0.383199,
		43.924255, 39.034840, 18.607067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820297, 39.859425, 18.526237>,  <43.374317, 39.374866, 18.338827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820297, 39.859425, 18.526237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.072449, 39.549263, 18.511387>,  <44.223740, 39.363167, 18.502476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.072449, 39.549263, 18.511387>,  <43.820297, 39.859425, 18.526237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072449, 39.549263, 18.511387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732151, 0.609748, -0.303581,
		0.258037, 0.164186, 0.952082,
		0.630374, -0.775403, -0.037128,
		44.261562, 39.316643, 18.500248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286671, 40.035397, 19.088285>,  <43.820297, 39.859425, 18.526237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286671, 40.035397, 19.088285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.488941, 39.777733, 18.858730>,  <44.610302, 39.623135, 18.720997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.488941, 39.777733, 18.858730>,  <44.286671, 40.035397, 19.088285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488941, 39.777733, 18.858730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837334, 0.526649, 0.146672,
		0.207758, -0.554706, 0.805691,
		0.505677, -0.644160, -0.573889,
		44.640644, 39.584484, 18.686563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920624, 39.904964, 19.469095>,  <44.286671, 40.035397, 19.088285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920624, 39.904964, 19.469095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.020451, 39.783550, 19.101273>,  <45.080345, 39.710701, 18.880579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.020451, 39.783550, 19.101273>,  <44.920624, 39.904964, 19.469095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020451, 39.783550, 19.101273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924591, 0.356952, 0.133106,
		0.287834, -0.883431, 0.369730,
		0.249566, -0.303537, -0.919555,
		45.095322, 39.692490, 18.825405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593624, 39.509548, 19.471359>,  <44.920624, 39.904964, 19.469095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593624, 39.509548, 19.471359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.549473, 39.633709, 19.093689>,  <45.522980, 39.708206, 18.867086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.549473, 39.633709, 19.093689>,  <45.593624, 39.509548, 19.471359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.549473, 39.633709, 19.093689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885389, 0.462316, 0.048481,
		0.451556, -0.830610, -0.325858,
		-0.110380, 0.310403, -0.944175,
		45.516357, 39.726830, 18.810436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.248478, 39.375320, 19.103964>,  <45.593624, 39.509548, 19.471359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.248478, 39.375320, 19.103964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.065689, 39.676483, 18.914520>,  <45.956017, 39.857182, 18.800854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.065689, 39.676483, 18.914520>,  <46.248478, 39.375320, 19.103964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065689, 39.676483, 18.914520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884218, 0.442363, -0.149912,
		0.096637, -0.487280, -0.867882,
		-0.456968, 0.752910, -0.473610,
		45.928600, 39.902355, 18.772438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<29.281916, 27.701668, 28.873428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.654665, 27.686264, 29.017723>,  <29.878315, 27.677021, 29.104300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.654665, 27.686264, 29.017723>,  <29.281916, 27.701668, 28.873428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654665, 27.686264, 29.017723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167156, -0.928090, 0.332728,
		0.321984, -0.370360, -0.871298,
		0.931872, -0.038510, 0.360738,
		29.934227, 27.674711, 29.125944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472696, 26.957579, 28.763676>,  <29.281916, 27.701668, 28.873428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472696, 26.957579, 28.763676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.761509, 27.094765, 29.004025>,  <29.934795, 27.177076, 29.148233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.761509, 27.094765, 29.004025>,  <29.472696, 26.957579, 28.763676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761509, 27.094765, 29.004025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061012, -0.833538, 0.549082,
		0.689166, -0.433114, -0.580915,
		0.722030, 0.342966, 0.600872,
		29.978119, 27.197655, 29.184286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880075, 26.383926, 28.960226>,  <29.472696, 26.957579, 28.763676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880075, 26.383926, 28.960226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.965694, 26.657177, 29.239517>,  <30.017067, 26.821127, 29.407091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.965694, 26.657177, 29.239517>,  <29.880075, 26.383926, 28.960226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965694, 26.657177, 29.239517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060420, -0.722683, 0.688534,
		0.974953, -0.105194, -0.195964,
		0.214049, 0.683128, 0.698226,
		30.029909, 26.862116, 29.448984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352001, 26.087177, 29.235834>,  <29.880075, 26.383926, 28.960226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352001, 26.087177, 29.235834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.213179, 26.352966, 29.500568>,  <30.129885, 26.512440, 29.659409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.213179, 26.352966, 29.500568>,  <30.352001, 26.087177, 29.235834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213179, 26.352966, 29.500568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167927, -0.650266, 0.740914,
		0.922688, 0.368278, 0.114095,
		-0.347055, 0.664473, 0.661837,
		30.109062, 26.552309, 29.699120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836111, 26.123903, 29.738150>,  <30.352001, 26.087177, 29.235834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836111, 26.123903, 29.738150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.506544, 26.262028, 29.917892>,  <30.308804, 26.344902, 30.025738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.506544, 26.262028, 29.917892>,  <30.836111, 26.123903, 29.738150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506544, 26.262028, 29.917892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096699, -0.695630, 0.711863,
		0.558399, 0.629968, 0.539750,
		-0.823917, 0.345310, 0.449356,
		30.259369, 26.365622, 30.052700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957123, 26.127903, 30.368481>,  <30.836111, 26.123903, 29.738150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957123, 26.127903, 30.368481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.560299, 26.162144, 30.405338>,  <30.322205, 26.182688, 30.427452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.560299, 26.162144, 30.405338>,  <30.957123, 26.127903, 30.368481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560299, 26.162144, 30.405338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022396, -0.600693, 0.799166,
		0.123760, 0.794884, 0.594006,
		-0.992059, 0.085602, 0.092144,
		30.262682, 26.187824, 30.432981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842537, 26.216248, 31.089951>,  <30.957123, 26.127903, 30.368481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842537, 26.216248, 31.089951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.493238, 26.087006, 30.944050>,  <30.283659, 26.009460, 30.856510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.493238, 26.087006, 30.944050>,  <30.842537, 26.216248, 31.089951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493238, 26.087006, 30.944050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113341, -0.593330, 0.796940,
		-0.473914, 0.737266, 0.481503,
		-0.873246, -0.323107, -0.364750,
		30.231264, 25.990074, 30.834625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334639, 26.395485, 31.515202>,  <30.842537, 26.216248, 31.089951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.334639, 26.395485, 31.515202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190294, 26.077816, 31.319622>,  <30.103687, 25.887215, 31.202274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190294, 26.077816, 31.319622>,  <30.334639, 26.395485, 31.515202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190294, 26.077816, 31.319622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326643, -0.383442, 0.863873,
		-0.873546, 0.471451, -0.121041,
		-0.360861, -0.794170, -0.488951,
		30.082035, 25.839565, 31.172937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807642, 26.242172, 31.934248>,  <30.334639, 26.395485, 31.515202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807642, 26.242172, 31.934248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.804689, 25.917797, 31.700214>,  <29.802917, 25.723171, 31.559793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.804689, 25.917797, 31.700214>,  <29.807642, 26.242172, 31.934248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804689, 25.917797, 31.700214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380728, -0.538754, 0.751525,
		-0.924658, 0.228304, -0.304771,
		-0.007380, -0.810939, -0.585085,
		29.802475, 25.674515, 31.524689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223040, 25.967581, 32.066936>,  <29.807642, 26.242172, 31.934248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223040, 25.967581, 32.066936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.435862, 25.671936, 31.901707>,  <29.563555, 25.494549, 31.802568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.435862, 25.671936, 31.901707>,  <29.223040, 25.967581, 32.066936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435862, 25.671936, 31.901707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259743, -0.606813, 0.751206,
		-0.805885, -0.292390, -0.514837,
		0.532056, -0.739111, -0.413076,
		29.595478, 25.450203, 31.777784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.859291, 25.404453, 32.182156>,  <29.223040, 25.967581, 32.066936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.859291, 25.404453, 32.182156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.232819, 25.269295, 32.135155>,  <29.456936, 25.188200, 32.106956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.232819, 25.269295, 32.135155>,  <28.859291, 25.404453, 32.182156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232819, 25.269295, 32.135155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111309, -0.586581, 0.802205,
		-0.339983, -0.736037, -0.585373,
		0.933821, -0.337894, -0.117500,
		29.512964, 25.167927, 32.099903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788437, 24.763445, 32.247929>,  <28.859291, 25.404453, 32.182156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788437, 24.763445, 32.247929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.177914, 24.793934, 32.333828>,  <29.411600, 24.812227, 32.385368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.177914, 24.793934, 32.333828>,  <28.788437, 24.763445, 32.247929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.177914, 24.793934, 32.333828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128688, -0.593817, 0.794243,
		0.188060, -0.800982, -0.568385,
		0.973690, 0.076221, 0.214749,
		29.470020, 24.816799, 32.398254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023680, 24.098835, 32.449780>,  <28.788437, 24.763445, 32.247929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023680, 24.098835, 32.449780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.303228, 24.350937, 32.585049>,  <29.470957, 24.502197, 32.666210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.303228, 24.350937, 32.585049>,  <29.023680, 24.098835, 32.449780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303228, 24.350937, 32.585049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150790, -0.592009, 0.791699,
		0.699173, -0.502301, -0.508773,
		0.698869, 0.630253, 0.338175,
		29.512890, 24.540012, 32.686501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609852, 23.658043, 32.669575>,  <29.023680, 24.098835, 32.449780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609852, 23.658043, 32.669575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.664392, 24.009987, 32.851677>,  <29.697117, 24.221153, 32.960938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.664392, 24.009987, 32.851677>,  <29.609852, 23.658043, 32.669575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664392, 24.009987, 32.851677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487767, -0.459610, 0.742188,
		0.862259, 0.120858, -0.491835,
		0.136353, 0.879859, 0.455253,
		29.705297, 24.273945, 32.988255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912773, 22.919216, 32.569382>,  <29.609852, 23.658043, 32.669575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912773, 22.919216, 32.569382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.102198, 22.609077, 32.402252>,  <30.215853, 22.422995, 32.301975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.102198, 22.609077, 32.402252>,  <29.912773, 22.919216, 32.569382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102198, 22.609077, 32.402252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020791, 0.464420, -0.885371,
		0.880515, 0.427966, 0.203811,
		0.473563, -0.775345, -0.417826,
		30.244267, 22.376474, 32.276905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394768, 23.217464, 32.241482>,  <29.912773, 22.919216, 32.569382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394768, 23.217464, 32.241482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.370083, 22.859989, 32.063713>,  <30.355272, 22.645504, 31.957052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.370083, 22.859989, 32.063713>,  <30.394768, 23.217464, 32.241482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370083, 22.859989, 32.063713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056191, 0.441452, -0.895524,
		0.996511, -0.080237, 0.022975,
		-0.061711, -0.893690, -0.444420,
		30.351570, 22.591883, 31.930387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811245, 23.269411, 31.551394>,  <30.394768, 23.217464, 32.241482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811245, 23.269411, 31.551394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.579391, 22.945217, 31.517609>,  <30.440279, 22.750700, 31.497337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.579391, 22.945217, 31.517609>,  <30.811245, 23.269411, 31.551394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579391, 22.945217, 31.517609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205772, 0.245871, -0.947209,
		0.788467, -0.531656, -0.309291,
		-0.579635, -0.810487, -0.084462,
		30.405500, 22.702070, 31.492270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196621, 22.804256, 31.034929>,  <30.811245, 23.269411, 31.551394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196621, 22.804256, 31.034929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.799402, 22.757385, 31.039467>,  <30.561071, 22.729263, 31.042191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.799402, 22.757385, 31.039467>,  <31.196621, 22.804256, 31.034929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799402, 22.757385, 31.039467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028043, 0.141857, -0.989490,
		0.114325, -0.982929, -0.144157,
		-0.993048, -0.117166, 0.011347,
		30.501488, 22.722233, 31.042870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027292, 22.558153, 30.298462>,  <31.196621, 22.804256, 31.034929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027292, 22.558153, 30.298462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.661823, 22.657669, 30.427029>,  <30.442541, 22.717379, 30.504168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.661823, 22.657669, 30.427029>,  <31.027292, 22.558153, 30.298462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661823, 22.657669, 30.427029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302531, 0.111834, -0.946556,
		-0.271439, -0.962079, -0.026913,
		-0.913672, 0.248791, 0.321415,
		30.387722, 22.732306, 30.523453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589458, 22.216827, 29.820780>,  <31.027292, 22.558153, 30.298462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589458, 22.216827, 29.820780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.357021, 22.492100, 29.994556>,  <30.217558, 22.657263, 30.098822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.357021, 22.492100, 29.994556>,  <30.589458, 22.216827, 29.820780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357021, 22.492100, 29.994556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283495, 0.329216, -0.900693,
		-0.762864, -0.646548, 0.003790,
		-0.581093, 0.688180, 0.434440,
		30.182693, 22.698553, 30.124889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029907, 22.318293, 29.349939>,  <30.589458, 22.216827, 29.820780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029907, 22.318293, 29.349939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.013662, 22.666088, 29.546852>,  <30.003916, 22.874765, 29.664999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.013662, 22.666088, 29.546852>,  <30.029907, 22.318293, 29.349939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013662, 22.666088, 29.546852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102706, 0.486445, -0.867654,
		-0.993882, -0.085797, 0.069547,
		-0.040611, 0.869489, 0.492281,
		30.001478, 22.926935, 29.694536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554031, 22.668980, 29.017344>,  <30.029907, 22.318293, 29.349939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554031, 22.668980, 29.017344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.700062, 22.974422, 29.230370>,  <29.787680, 23.157688, 29.358185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.700062, 22.974422, 29.230370>,  <29.554031, 22.668980, 29.017344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700062, 22.974422, 29.230370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057989, 0.589589, -0.805619,
		-0.929171, 0.263228, 0.259524,
		0.365074, 0.763607, 0.532564,
		29.809584, 23.203505, 29.390139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151064, 23.296459, 28.838732>,  <29.554031, 22.668980, 29.017344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151064, 23.296459, 28.838732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.501106, 23.437103, 28.971737>,  <29.711132, 23.521490, 29.051540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.501106, 23.437103, 28.971737>,  <29.151064, 23.296459, 28.838732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501106, 23.437103, 28.971737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029365, 0.647254, -0.761708,
		-0.483043, 0.676338, 0.556090,
		0.875104, 0.351609, 0.332512,
		29.763638, 23.542585, 29.071491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102911, 24.031536, 28.786306>,  <29.151064, 23.296459, 28.838732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102911, 24.031536, 28.786306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.497919, 23.977024, 28.817894>,  <29.734924, 23.944317, 28.836845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.497919, 23.977024, 28.817894>,  <29.102911, 24.031536, 28.786306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497919, 23.977024, 28.817894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146865, 0.615570, -0.774277,
		0.056908, 0.776210, 0.627901,
		0.987518, -0.136279, 0.078967,
		29.794174, 23.936140, 28.841583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336605, 24.643768, 28.669083>,  <29.102911, 24.031536, 28.786306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336605, 24.643768, 28.669083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.654997, 24.418499, 28.580315>,  <29.846033, 24.283337, 28.527054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.654997, 24.418499, 28.580315>,  <29.336605, 24.643768, 28.669083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654997, 24.418499, 28.580315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139239, 0.527131, -0.838299,
		0.589089, 0.636371, 0.498003,
		0.795982, -0.563174, -0.221919,
		29.893791, 24.249546, 28.513739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023432, 25.049644, 28.756222>,  <29.336605, 24.643768, 28.669083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023432, 25.049644, 28.756222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.072302, 24.764000, 28.480507>,  <30.101624, 24.592613, 28.315077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.072302, 24.764000, 28.480507>,  <30.023432, 25.049644, 28.756222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072302, 24.764000, 28.480507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181374, 0.698860, -0.691879,
		0.975796, -0.040490, 0.214903,
		0.122173, -0.714111, -0.689289,
		30.108953, 24.549767, 28.273720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611927, 25.260471, 28.342484>,  <30.023432, 25.049644, 28.756222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611927, 25.260471, 28.342484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.434645, 24.999168, 28.096939>,  <30.328276, 24.842386, 27.949614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.434645, 24.999168, 28.096939>,  <30.611927, 25.260471, 28.342484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434645, 24.999168, 28.096939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184709, 0.603544, -0.775640,
		0.877184, -0.457154, -0.146831,
		-0.443206, -0.653257, -0.613859,
		30.301683, 24.803190, 27.912781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955341, 25.391747, 27.824646>,  <30.611927, 25.260471, 28.342484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955341, 25.391747, 27.824646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.650690, 25.176216, 27.680653>,  <30.467899, 25.046898, 27.594257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.650690, 25.176216, 27.680653>,  <30.955341, 25.391747, 27.824646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650690, 25.176216, 27.680653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067572, 0.618527, -0.782853,
		0.644482, -0.571918, -0.507497,
		-0.761628, -0.538827, -0.359984,
		30.422201, 25.014568, 27.572657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617798, 25.137169, 27.634975>,  <30.955341, 25.391747, 27.824646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617798, 25.137169, 27.634975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.979990, 25.297863, 27.689701>,  <32.197304, 25.394279, 27.722536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.979990, 25.297863, 27.689701>,  <31.617798, 25.137169, 27.634975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979990, 25.297863, 27.689701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182844, -0.660205, 0.728489,
		0.382984, -0.634616, -0.671257,
		0.905478, 0.401735, 0.136812,
		32.251633, 25.418383, 27.730745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038342, 24.565386, 27.613798>,  <31.617798, 25.137169, 27.634975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038342, 24.565386, 27.613798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.227230, 24.870808, 27.789974>,  <32.340565, 25.054062, 27.895679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.227230, 24.870808, 27.789974>,  <32.038342, 24.565386, 27.613798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227230, 24.870808, 27.789974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285533, -0.605222, 0.743087,
		0.833952, -0.225142, -0.503820,
		0.472223, 0.763556, 0.440440,
		32.368896, 25.099874, 27.922106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537460, 24.172316, 27.963413>,  <32.038342, 24.565386, 27.613798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537460, 24.172316, 27.963413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568172, 24.540928, 28.115665>,  <32.586601, 24.762096, 28.207018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568172, 24.540928, 28.115665>,  <32.537460, 24.172316, 27.963413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568172, 24.540928, 28.115665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196756, -0.388257, 0.900302,
		0.977441, 0.005764, -0.211128,
		0.076783, 0.921533, 0.380633,
		32.591206, 24.817389, 28.229855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138863, 24.177303, 28.345682>,  <32.537460, 24.172316, 27.963413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138863, 24.177303, 28.345682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918053, 24.457684, 28.526318>,  <32.785564, 24.625912, 28.634699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.918053, 24.457684, 28.526318>,  <33.138863, 24.177303, 28.345682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918053, 24.457684, 28.526318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321042, -0.321163, 0.890947,
		0.769544, 0.636807, -0.047744,
		-0.552027, 0.700951, 0.451591,
		32.752445, 24.667969, 28.661795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590588, 24.553686, 28.729282>,  <33.138863, 24.177303, 28.345682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590588, 24.553686, 28.729282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.229389, 24.617382, 28.888905>,  <33.012672, 24.655600, 28.984678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.229389, 24.617382, 28.888905>,  <33.590588, 24.553686, 28.729282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229389, 24.617382, 28.888905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307601, -0.408855, 0.859197,
		0.299976, 0.898599, 0.320211,
		-0.902993, 0.159242, 0.399056,
		32.958492, 24.665155, 29.008621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745045, 24.701681, 29.499882>,  <33.590588, 24.553686, 28.729282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745045, 24.701681, 29.499882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352383, 24.626034, 29.490162>,  <33.116787, 24.580645, 29.484329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352383, 24.626034, 29.490162>,  <33.745045, 24.701681, 29.499882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352383, 24.626034, 29.490162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057383, -0.414554, 0.908214,
		-0.181835, 0.890157, 0.417801,
		-0.981653, -0.189120, -0.024300,
		33.057888, 24.569298, 29.482872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486557, 24.882650, 30.148197>,  <33.745045, 24.701681, 29.499882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486557, 24.882650, 30.148197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206535, 24.630405, 30.014179>,  <33.038525, 24.479057, 29.933769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206535, 24.630405, 30.014179>,  <33.486557, 24.882650, 30.148197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206535, 24.630405, 30.014179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123270, -0.568865, 0.813141,
		-0.703374, 0.527938, 0.475970,
		-0.700050, -0.630614, -0.335045,
		32.996521, 24.441221, 29.913666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514278, 25.389774, 30.687767>,  <33.486557, 24.882650, 30.148197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514278, 25.389774, 30.687767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809090, 25.533951, 30.916454>,  <33.985977, 25.620457, 31.053667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809090, 25.533951, 30.916454>,  <33.514278, 25.389774, 30.687767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809090, 25.533951, 30.916454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029267, 0.862146, -0.505814,
		-0.675223, 0.356069, 0.645979,
		0.737033, 0.360443, 0.571720,
		34.030201, 25.642084, 31.087971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279667, 26.046711, 30.962807>,  <33.514278, 25.389774, 30.687767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279667, 26.046711, 30.962807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.678944, 26.023205, 30.967789>,  <33.918510, 26.009102, 30.970778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.678944, 26.023205, 30.967789>,  <33.279667, 26.046711, 30.962807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678944, 26.023205, 30.967789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058090, 0.891495, -0.449290,
		0.015301, 0.449202, 0.893299,
		0.998194, -0.058766, 0.012454,
		33.978401, 26.005575, 30.971525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520527, 26.739878, 31.176403>,  <33.279667, 26.046711, 30.962807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520527, 26.739878, 31.176403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856815, 26.564857, 31.048820>,  <34.058590, 26.459846, 30.972271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.856815, 26.564857, 31.048820>,  <33.520527, 26.739878, 31.176403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856815, 26.564857, 31.048820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196012, 0.795051, -0.573997,
		0.504740, 0.420053, 0.754184,
		0.840724, -0.437548, -0.318959,
		34.109032, 26.433594, 30.953133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032890, 27.206596, 31.288879>,  <33.520527, 26.739878, 31.176403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032890, 27.206596, 31.288879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.186047, 26.966736, 31.007793>,  <34.277943, 26.822819, 30.839142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.186047, 26.966736, 31.007793>,  <34.032890, 27.206596, 31.288879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186047, 26.966736, 31.007793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125600, 0.787415, -0.603492,
		0.915215, 0.142811, 0.376811,
		0.382892, -0.599652, -0.702717,
		34.300915, 26.786840, 30.796978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666622, 27.496408, 31.229797>,  <34.032890, 27.206596, 31.288879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666622, 27.496408, 31.229797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.586414, 27.290371, 30.896458>,  <34.538288, 27.166748, 30.696455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.586414, 27.290371, 30.896458>,  <34.666622, 27.496408, 31.229797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586414, 27.290371, 30.896458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270289, 0.788524, -0.552426,
		0.941667, -0.336016, -0.018889,
		-0.200518, -0.515095, -0.833348,
		34.526260, 27.135841, 30.646454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140022, 27.822916, 30.687859>,  <34.666622, 27.496408, 31.229797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140022, 27.822916, 30.687859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858143, 27.626339, 30.483162>,  <34.689014, 27.508392, 30.360344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.858143, 27.626339, 30.483162>,  <35.140022, 27.822916, 30.687859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858143, 27.626339, 30.483162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002999, 0.723322, -0.690505,
		0.709485, -0.485074, -0.511209,
		-0.704714, -0.491436, -0.511731,
		34.646732, 27.478905, 30.329639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471493, 27.681295, 30.020733>,  <35.140022, 27.822916, 30.687859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471493, 27.681295, 30.020733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.072193, 27.694931, 30.001392>,  <34.832615, 27.703112, 29.989788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.072193, 27.694931, 30.001392>,  <35.471493, 27.681295, 30.020733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072193, 27.694931, 30.001392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056009, 0.807699, -0.586929,
		0.019046, -0.588609, -0.808194,
		-0.998249, 0.034087, -0.048351,
		34.772720, 27.705156, 29.986887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.301617, 26.609781, 33.636944> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.996740, 26.492981, 33.405842>,  <31.813814, 26.422901, 33.267181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.996740, 26.492981, 33.405842>,  <32.301617, 26.609781, 33.636944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996740, 26.492981, 33.405842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017217, 0.901317, -0.432818,
		0.647126, -0.319942, -0.692001,
		-0.762189, -0.292002, -0.577757,
		31.768084, 26.405380, 33.232513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376358, 26.865467, 32.969696>,  <32.301617, 26.609781, 33.636944>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376358, 26.865467, 32.969696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.984049, 26.789001, 32.953987>,  <31.748663, 26.743122, 32.944561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.984049, 26.789001, 32.953987>,  <32.376358, 26.865467, 32.969696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984049, 26.789001, 32.953987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164357, 0.917605, -0.361922,
		0.105225, -0.348508, -0.931381,
		-0.980772, -0.191162, -0.039275,
		31.689817, 26.731653, 32.942204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229015, 27.078196, 32.446007>,  <32.376358, 26.865467, 32.969696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229015, 27.078196, 32.446007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.847136, 27.066608, 32.564476>,  <31.618010, 27.059656, 32.635559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.847136, 27.066608, 32.564476>,  <32.229015, 27.078196, 32.446007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847136, 27.066608, 32.564476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193503, 0.816548, -0.543880,
		-0.226084, -0.576550, -0.785160,
		-0.954695, -0.028968, 0.296173,
		31.560726, 27.057919, 32.653328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939194, 27.195660, 31.833525>,  <32.229015, 27.078196, 32.446007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939194, 27.195660, 31.833525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.711746, 27.314068, 32.140522>,  <31.575277, 27.385113, 32.324718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.711746, 27.314068, 32.140522>,  <31.939194, 27.195660, 31.833525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711746, 27.314068, 32.140522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015843, 0.928892, -0.370010,
		-0.822448, -0.222555, -0.523497,
		-0.568620, 0.296020, 0.767492,
		31.541161, 27.402874, 32.370770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384445, 27.601902, 31.448250>,  <31.939194, 27.195660, 31.833525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384445, 27.601902, 31.448250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.399269, 27.699379, 31.835907>,  <31.408163, 27.757866, 32.068501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.399269, 27.699379, 31.835907>,  <31.384445, 27.601902, 31.448250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399269, 27.699379, 31.835907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209458, 0.950162, -0.230910,
		-0.977115, -0.194437, 0.086258,
		0.037061, 0.243693, 0.969144,
		31.410387, 27.772488, 32.126652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888681, 28.055933, 31.494968>,  <31.384445, 27.601902, 31.448250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888681, 28.055933, 31.494968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.116465, 28.117138, 31.818031>,  <31.253134, 28.153862, 32.011868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.116465, 28.117138, 31.818031>,  <30.888681, 28.055933, 31.494968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116465, 28.117138, 31.818031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244944, 0.969475, -0.010967,
		-0.784680, -0.191585, 0.589553,
		0.569456, 0.153013, 0.807655,
		31.287302, 28.163042, 32.060329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423786, 28.427526, 31.939222>,  <30.888681, 28.055933, 31.494968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423786, 28.427526, 31.939222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.804951, 28.497898, 32.038021>,  <31.033649, 28.540121, 32.097301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.804951, 28.497898, 32.038021>,  <30.423786, 28.427526, 31.939222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804951, 28.497898, 32.038021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138788, 0.977213, -0.160599,
		-0.269622, 0.118757, 0.955616,
		0.952913, 0.175929, 0.246996,
		31.090824, 28.550676, 32.112122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380697, 29.058079, 32.307121>,  <30.423786, 28.427526, 31.939222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380697, 29.058079, 32.307121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.778267, 29.053638, 32.263321>,  <31.016809, 29.050974, 32.237041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.778267, 29.053638, 32.263321>,  <30.380697, 29.058079, 32.307121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778267, 29.053638, 32.263321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004367, 0.998095, -0.061534,
		0.109978, 0.060682, 0.992080,
		0.993924, -0.011100, -0.109504,
		31.076445, 29.050308, 32.230469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710171, 29.615993, 32.704052>,  <30.380697, 29.058079, 32.307121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710171, 29.615993, 32.704052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.961195, 29.521023, 32.407459>,  <31.111811, 29.464041, 32.229504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.961195, 29.521023, 32.407459>,  <30.710171, 29.615993, 32.704052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961195, 29.521023, 32.407459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099819, 0.969044, -0.225809,
		0.772141, 0.067695, 0.631834,
		0.627562, -0.237426, -0.741482,
		31.149464, 29.449795, 32.185013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290075, 30.130356, 32.770157>,  <30.710171, 29.615993, 32.704052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290075, 30.130356, 32.770157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.339104, 29.999889, 32.395226>,  <31.368521, 29.921610, 32.170265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.339104, 29.999889, 32.395226>,  <31.290075, 30.130356, 32.770157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339104, 29.999889, 32.395226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332715, 0.903304, -0.270817,
		0.935028, -0.278670, 0.219240,
		0.122572, -0.326166, -0.937332,
		31.375875, 29.902040, 32.114025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940163, 30.461073, 32.624962>,  <31.290075, 30.130356, 32.770157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940163, 30.461073, 32.624962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.751024, 30.364372, 32.286030>,  <31.637541, 30.306351, 32.082668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.751024, 30.364372, 32.286030>,  <31.940163, 30.461073, 32.624962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751024, 30.364372, 32.286030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376573, 0.813942, -0.442370,
		0.796622, -0.528256, -0.293836,
		-0.472850, -0.241751, -0.847331,
		31.609171, 30.291847, 32.031830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459396, 30.704124, 32.076714>,  <31.940163, 30.461073, 32.624962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459396, 30.704124, 32.076714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.110134, 30.667149, 31.885277>,  <31.900576, 30.644964, 31.770414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.110134, 30.667149, 31.885277>,  <32.459396, 30.704124, 32.076714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110134, 30.667149, 31.885277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088348, 0.935580, -0.341884,
		0.479367, -0.340801, -0.808741,
		-0.873157, -0.092438, -0.478595,
		31.848186, 30.639418, 31.741699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030186, 30.332306, 31.702583>,  <32.459396, 30.704124, 32.076714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030186, 30.332306, 31.702583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.423862, 30.286556, 31.756672>,  <33.660069, 30.259106, 31.789125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.423862, 30.286556, 31.756672>,  <33.030186, 30.332306, 31.702583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423862, 30.286556, 31.756672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170521, -0.818185, 0.549086,
		0.047833, -0.563464, -0.824755,
		0.984192, -0.114374, 0.135219,
		33.719120, 30.252245, 31.797237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164665, 29.625322, 31.523403>,  <33.030186, 30.332306, 31.702583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164665, 29.625322, 31.523403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.441719, 29.775261, 31.769897>,  <33.607952, 29.865223, 31.917795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.441719, 29.775261, 31.769897>,  <33.164665, 29.625322, 31.523403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441719, 29.775261, 31.769897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188659, -0.730466, 0.656375,
		0.696180, -0.570886, -0.435228,
		0.692634, 0.374845, 0.616238,
		33.649509, 29.887714, 31.954769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595917, 29.026699, 31.663675>,  <33.164665, 29.625322, 31.523403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595917, 29.026699, 31.663675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.693836, 29.273659, 31.962711>,  <33.752590, 29.421835, 32.142132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.693836, 29.273659, 31.962711>,  <33.595917, 29.026699, 31.663675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693836, 29.273659, 31.962711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110803, -0.783812, 0.611033,
		0.963221, -0.066746, -0.260288,
		0.244800, 0.617401, 0.747589,
		33.767277, 29.458879, 32.186989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.090855, 28.608576, 32.046803>,  <33.595917, 29.026699, 31.663675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.090855, 28.608576, 32.046803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.986843, 28.907303, 32.291637>,  <33.924435, 29.086538, 32.438538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.986843, 28.907303, 32.291637>,  <34.090855, 28.608576, 32.046803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986843, 28.907303, 32.291637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038239, -0.625429, 0.779343,
		0.964842, 0.226060, 0.134075,
		-0.260033, 0.746816, 0.612085,
		33.908833, 29.131348, 32.475262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426952, 28.458094, 32.637020>,  <34.090855, 28.608576, 32.046803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426952, 28.458094, 32.637020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.134254, 28.700966, 32.760876>,  <33.958633, 28.846689, 32.835190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.134254, 28.700966, 32.760876>,  <34.426952, 28.458094, 32.637020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134254, 28.700966, 32.760876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160029, -0.594656, 0.787892,
		0.662523, 0.526987, 0.532305,
		-0.731747, 0.607181, 0.309640,
		33.914730, 28.883120, 32.853767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633320, 28.658749, 33.313549>,  <34.426952, 28.458094, 32.637020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633320, 28.658749, 33.313549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.235645, 28.701508, 33.308323>,  <33.997040, 28.727163, 33.305187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.235645, 28.701508, 33.308323>,  <34.633320, 28.658749, 33.313549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235645, 28.701508, 33.308323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054419, -0.394016, 0.917491,
		0.092932, 0.912866, 0.397541,
		-0.994184, 0.106898, -0.013061,
		33.937389, 28.733578, 33.304405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530365, 28.840704, 34.051678>,  <34.633320, 28.658749, 33.313549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530365, 28.840704, 34.051678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.182991, 28.746769, 33.877010>,  <33.974567, 28.690409, 33.772209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.182991, 28.746769, 33.877010>,  <34.530365, 28.840704, 34.051678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182991, 28.746769, 33.877010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242350, -0.567280, 0.787057,
		-0.432543, 0.789332, 0.435732,
		-0.868432, -0.234836, -0.436667,
		33.922462, 28.676317, 33.746010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078777, 28.938490, 34.558025>,  <34.530365, 28.840704, 34.051678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078777, 28.938490, 34.558025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.884506, 28.697968, 34.304237>,  <33.767944, 28.553654, 34.151966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.884506, 28.697968, 34.304237>,  <34.078777, 28.938490, 34.558025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884506, 28.697968, 34.304237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172869, -0.645419, 0.744010,
		-0.856875, 0.471028, 0.209518,
		-0.485677, -0.601304, -0.634470,
		33.738804, 28.517576, 34.113895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545952, 28.609690, 34.968769>,  <34.078777, 28.938490, 34.558025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545952, 28.609690, 34.968769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.618660, 28.367287, 34.659004>,  <33.662285, 28.221844, 34.473145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.618660, 28.367287, 34.659004>,  <33.545952, 28.609690, 34.968769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618660, 28.367287, 34.659004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043270, -0.791696, 0.609380,
		-0.982388, -0.077260, -0.170131,
		0.181773, -0.606009, -0.774410,
		33.673191, 28.185484, 34.426682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076962, 27.993334, 35.076279>,  <33.545952, 28.609690, 34.968769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076962, 27.993334, 35.076279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.337864, 27.874565, 34.797310>,  <33.494408, 27.803303, 34.629929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.337864, 27.874565, 34.797310>,  <33.076962, 27.993334, 35.076279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337864, 27.874565, 34.797310> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092506, -0.944389, 0.315552,
		-0.752330, -0.141306, -0.643453,
		0.652259, -0.296923, -0.697420,
		33.533543, 27.785488, 34.588085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904079, 27.304007, 34.977386>,  <33.076962, 27.993334, 35.076279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904079, 27.304007, 34.977386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.280037, 27.335514, 34.844486>,  <33.505611, 27.354420, 34.764748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.280037, 27.335514, 34.844486>,  <32.904079, 27.304007, 34.977386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280037, 27.335514, 34.844486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189025, -0.930362, 0.314159,
		-0.284368, -0.358081, -0.889333,
		0.939896, 0.078770, -0.332252,
		33.562004, 27.359144, 34.744812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028942, 26.717850, 34.502583>,  <32.904079, 27.304007, 34.977386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028942, 26.717850, 34.502583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.386662, 26.816200, 34.652130>,  <33.601292, 26.875210, 34.741859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.386662, 26.816200, 34.652130>,  <33.028942, 26.717850, 34.502583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386662, 26.816200, 34.652130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076548, -0.907256, 0.413555,
		0.440878, -0.341222, -0.830177,
		0.894297, 0.245876, 0.373870,
		33.654949, 26.889963, 34.764290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463390, 26.168089, 34.364788>,  <33.028942, 26.717850, 34.502583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463390, 26.168089, 34.364788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.700657, 26.343842, 34.634632>,  <33.843018, 26.449293, 34.796539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.700657, 26.343842, 34.634632>,  <33.463390, 26.168089, 34.364788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700657, 26.343842, 34.634632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248770, -0.896966, 0.365467,
		0.765678, -0.048963, -0.641358,
		0.593171, 0.439381, 0.674606,
		33.878609, 26.475657, 34.837013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120121, 25.765394, 34.359699>,  <33.463390, 26.168089, 34.364788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120121, 25.765394, 34.359699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.079582, 25.951942, 34.711205>,  <34.055260, 26.063871, 34.922108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.079582, 25.951942, 34.711205>,  <34.120121, 25.765394, 34.359699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079582, 25.951942, 34.711205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243607, -0.844790, 0.476431,
		0.964565, 0.262357, -0.027997,
		-0.101343, 0.466368, 0.878766,
		34.049179, 26.091852, 34.974834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767963, 25.094542, 34.100639>,  <34.120121, 25.765394, 34.359699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767963, 25.094542, 34.100639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.958527, 24.801620, 33.906006>,  <34.072865, 24.625868, 33.789227>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.958527, 24.801620, 33.906006>,  <33.767963, 25.094542, 34.100639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958527, 24.801620, 33.906006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087278, 0.590084, -0.802610,
		0.874880, 0.339903, 0.345036,
		0.476410, -0.732302, -0.486587,
		34.101448, 24.581930, 33.760029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424309, 25.278835, 33.798981>,  <33.767963, 25.094542, 34.100639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424309, 25.278835, 33.798981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.357204, 24.960972, 33.565613>,  <34.316944, 24.770254, 33.425594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.357204, 24.960972, 33.565613>,  <34.424309, 25.278835, 33.798981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357204, 24.960972, 33.565613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037696, 0.586201, -0.809288,
		0.985107, -0.157757, -0.068385,
		-0.167758, -0.794658, -0.583418,
		34.306877, 24.722574, 33.390587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720345, 25.415918, 33.187126>,  <34.424309, 25.278835, 33.798981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720345, 25.415918, 33.187126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526604, 25.085667, 33.071373>,  <34.410358, 24.887516, 33.001923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.526604, 25.085667, 33.071373>,  <34.720345, 25.415918, 33.187126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526604, 25.085667, 33.071373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040751, 0.351704, -0.935224,
		0.873925, -0.441184, -0.203993,
		-0.484351, -0.825628, -0.289384,
		34.381298, 24.837978, 32.984558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056885, 24.981482, 32.507450>,  <34.720345, 25.415918, 33.187126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056885, 24.981482, 32.507450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.662228, 24.929825, 32.547157>,  <34.425434, 24.898830, 32.570984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.662228, 24.929825, 32.547157>,  <35.056885, 24.981482, 32.507450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662228, 24.929825, 32.547157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141376, 0.376231, -0.915676,
		0.080900, -0.917482, -0.389464,
		-0.986645, -0.129139, 0.099273,
		34.366234, 24.891083, 32.576939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828087, 24.610641, 31.872717>,  <35.056885, 24.981482, 32.507450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828087, 24.610641, 31.872717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.513313, 24.800812, 32.030045>,  <34.324448, 24.914915, 32.124443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.513313, 24.800812, 32.030045>,  <34.828087, 24.610641, 31.872717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513313, 24.800812, 32.030045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146000, 0.475866, -0.867315,
		-0.599513, -0.739946, -0.305064,
		-0.786936, 0.475427, 0.393321,
		34.277233, 24.943439, 32.148041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323219, 24.449770, 31.403217>,  <34.828087, 24.610641, 31.872717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323219, 24.449770, 31.403217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.208668, 24.771496, 31.611473>,  <34.139938, 24.964531, 31.736427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.208668, 24.771496, 31.611473>,  <34.323219, 24.449770, 31.403217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208668, 24.771496, 31.611473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068700, 0.524761, -0.848473,
		-0.955651, -0.278750, -0.095022,
		-0.286376, 0.804316, 0.520639,
		34.122753, 25.012791, 31.767664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842468, 24.751354, 31.026295>,  <34.323219, 24.449770, 31.403217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842468, 24.751354, 31.026295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.968864, 25.044518, 31.267292>,  <34.044701, 25.220415, 31.411890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.968864, 25.044518, 31.267292>,  <33.842468, 24.751354, 31.026295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968864, 25.044518, 31.267292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041810, 0.645171, -0.762893,
		-0.947842, 0.215873, 0.234508,
		0.315986, 0.732907, 0.602494,
		34.063660, 25.264389, 31.448040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184280, 24.575972, 30.792013>,  <33.842468, 24.751354, 31.026295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184280, 24.575972, 30.792013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.057659, 24.335911, 30.498180>,  <32.981686, 24.191874, 30.321880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.057659, 24.335911, 30.498180>,  <33.184280, 24.575972, 30.792013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057659, 24.335911, 30.498180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077771, -0.755378, 0.650658,
		-0.945382, 0.263096, 0.192441,
		-0.316551, -0.600154, -0.734582,
		32.962692, 24.155865, 30.277805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511932, 24.275249, 30.964634>,  <33.184280, 24.575972, 30.792013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511932, 24.275249, 30.964634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.688000, 24.023258, 30.708702>,  <32.793640, 23.872065, 30.555143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.688000, 24.023258, 30.708702>,  <32.511932, 24.275249, 30.964634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688000, 24.023258, 30.708702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063315, -0.689024, 0.721968,
		-0.895683, -0.358295, -0.263396,
		0.440163, -0.629977, -0.639832,
		32.820049, 23.834265, 30.516752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229385, 23.731146, 31.129929>,  <32.511932, 24.275249, 30.964634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229385, 23.731146, 31.129929> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.541634, 23.591400, 30.922630>,  <32.728981, 23.507553, 30.798252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.541634, 23.591400, 30.922630>,  <32.229385, 23.731146, 31.129929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541634, 23.591400, 30.922630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142286, -0.708073, 0.691655,
		-0.608591, -0.613661, -0.503029,
		0.780623, -0.349361, -0.518242,
		32.775822, 23.486591, 30.767157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168125, 22.921682, 31.053028>,  <32.229385, 23.731146, 31.129929>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168125, 22.921682, 31.053028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.549034, 23.013344, 30.972363>,  <32.777580, 23.068340, 30.923964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.549034, 23.013344, 30.972363>,  <32.168125, 22.921682, 31.053028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549034, 23.013344, 30.972363> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303771, -0.776386, 0.552221,
		-0.030026, -0.587124, -0.808940,
		0.952272, 0.229152, -0.201663,
		32.834717, 23.082088, 30.911863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479187, 22.251953, 30.843521>,  <32.168125, 22.921682, 31.053028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479187, 22.251953, 30.843521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.744400, 22.529507, 30.955883>,  <32.903530, 22.696039, 31.023300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.744400, 22.529507, 30.955883>,  <32.479187, 22.251953, 30.843521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744400, 22.529507, 30.955883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512440, -0.694253, 0.505389,
		0.545701, -0.191143, -0.815889,
		0.663035, 0.693886, 0.280905,
		32.943310, 22.737673, 31.040155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059952, 21.842897, 30.900631>,  <32.479187, 22.251953, 30.843521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059952, 21.842897, 30.900631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.148838, 22.160770, 31.126587>,  <33.202171, 22.351494, 31.262159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.148838, 22.160770, 31.126587>,  <33.059952, 21.842897, 30.900631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148838, 22.160770, 31.126587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387081, -0.603665, 0.696963,
		0.894868, 0.063781, -0.441751,
		0.222216, 0.794683, 0.564889,
		33.215504, 22.399176, 31.296053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721428, 21.807634, 31.162441>,  <33.059952, 21.842897, 30.900631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721428, 21.807634, 31.162441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.549580, 22.054890, 31.425755>,  <33.446472, 22.203243, 31.583742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.549580, 22.054890, 31.425755>,  <33.721428, 21.807634, 31.162441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549580, 22.054890, 31.425755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161504, -0.664634, 0.729505,
		0.888452, 0.419722, 0.185706,
		-0.429616, 0.618138, 0.658282,
		33.420696, 22.240332, 31.623240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175694, 21.900333, 31.756237>,  <33.721428, 21.807634, 31.162441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175694, 21.900333, 31.756237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.806423, 22.001228, 31.872253>,  <33.584862, 22.061766, 31.941864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.806423, 22.001228, 31.872253>,  <34.175694, 21.900333, 31.756237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806423, 22.001228, 31.872253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145596, -0.468874, 0.871183,
		0.355737, 0.846483, 0.396128,
		-0.923175, 0.252237, 0.290040,
		33.529472, 22.076900, 31.959265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300758, 22.191860, 32.380859>,  <34.175694, 21.900333, 31.756237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300758, 22.191860, 32.380859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.922905, 22.060925, 32.389996>,  <33.696194, 21.982363, 32.395477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.922905, 22.060925, 32.389996>,  <34.300758, 22.191860, 32.380859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922905, 22.060925, 32.389996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215209, -0.565487, 0.796185,
		-0.247708, 0.757016, 0.604622,
		-0.944630, -0.327341, 0.022841,
		33.639515, 21.962723, 32.396847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.822441, 32.285690, 19.745592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439228, 32.264492, 19.858280>,  <31.209301, 32.251774, 19.925892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439228, 32.264492, 19.858280>,  <31.822441, 32.285690, 19.745592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439228, 32.264492, 19.858280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284179, -0.304622, 0.909092,
		0.037639, 0.950998, 0.306898,
		-0.958032, -0.052997, 0.281719,
		31.151819, 32.248592, 19.942797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802206, 32.547310, 20.476736>,  <31.822441, 32.285690, 19.745592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802206, 32.547310, 20.476736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479700, 32.318745, 20.415520>,  <31.286196, 32.181606, 20.378790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479700, 32.318745, 20.415520>,  <31.802206, 32.547310, 20.476736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479700, 32.318745, 20.415520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165280, -0.466006, 0.869207,
		-0.567995, 0.675517, 0.470168,
		-0.806265, -0.571415, -0.153039,
		31.237820, 32.147320, 20.369608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230324, 32.674305, 21.032719>,  <31.802206, 32.547310, 20.476736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230324, 32.674305, 21.032719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201828, 32.301086, 20.891663>,  <31.184731, 32.077156, 20.807028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201828, 32.301086, 20.891663>,  <31.230324, 32.674305, 21.032719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201828, 32.301086, 20.891663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052327, -0.349558, 0.935453,
		-0.996086, 0.085094, -0.023921,
		-0.071239, -0.933043, -0.352642,
		31.180456, 32.021175, 20.785870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994402, 32.418087, 21.568872>,  <31.230324, 32.674305, 21.032719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994402, 32.418087, 21.568872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086990, 32.091003, 21.358055>,  <31.142544, 31.894753, 21.231565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086990, 32.091003, 21.358055>,  <30.994402, 32.418087, 21.568872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086990, 32.091003, 21.358055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244446, -0.475487, 0.845079,
		-0.941631, -0.324443, 0.089825,
		0.231469, -0.817710, -0.527042,
		31.156431, 31.845690, 21.199942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820147, 31.892067, 22.011835>,  <30.994402, 32.418087, 21.568872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820147, 31.892067, 22.011835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057917, 31.685966, 21.764877>,  <31.200579, 31.562305, 21.616703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057917, 31.685966, 21.764877>,  <30.820147, 31.892067, 22.011835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057917, 31.685966, 21.764877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130818, -0.695572, 0.706446,
		-0.793440, -0.500694, -0.346060,
		0.594423, -0.515252, -0.617395,
		31.236244, 31.531391, 21.579659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698748, 31.149477, 22.178267>,  <30.820147, 31.892067, 22.011835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698748, 31.149477, 22.178267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055721, 31.147568, 21.997807>,  <31.269905, 31.146421, 21.889530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055721, 31.147568, 21.997807>,  <30.698748, 31.149477, 22.178267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055721, 31.147568, 21.997807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371675, -0.559078, 0.741141,
		-0.255766, -0.829101, -0.497167,
		0.892436, -0.004774, -0.451149,
		31.323452, 31.146135, 21.862461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975046, 30.427032, 22.112614>,  <30.698748, 31.149477, 22.178267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975046, 30.427032, 22.112614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281670, 30.683903, 22.112881>,  <31.465643, 30.838026, 22.113041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281670, 30.683903, 22.112881>,  <30.975046, 30.427032, 22.112614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281670, 30.683903, 22.112881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469705, -0.561390, 0.681337,
		0.437914, -0.521969, -0.731970,
		0.766557, 0.642177, 0.000669,
		31.511637, 30.876556, 22.113081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568357, 30.042183, 21.941631>,  <30.975046, 30.427032, 22.112614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568357, 30.042183, 21.941631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718571, 30.359142, 22.133915>,  <31.808699, 30.549318, 22.249285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718571, 30.359142, 22.133915>,  <31.568357, 30.042183, 21.941631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718571, 30.359142, 22.133915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371052, -0.603832, 0.705484,
		0.849292, -0.086562, -0.520778,
		0.375531, 0.792397, 0.480711,
		31.831230, 30.596861, 22.278128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340351, 29.836794, 22.059568>,  <31.568357, 30.042183, 21.941631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340351, 29.836794, 22.059568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212597, 30.126587, 22.303902>,  <32.135944, 30.300463, 22.450500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212597, 30.126587, 22.303902>,  <32.340351, 29.836794, 22.059568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212597, 30.126587, 22.303902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347627, -0.510078, 0.786750,
		0.881559, 0.463621, -0.088936,
		-0.319390, 0.724483, 0.610831,
		32.116779, 30.343931, 22.487150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683525, 29.620018, 22.638590>,  <32.340351, 29.836794, 22.059568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683525, 29.620018, 22.638590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442513, 29.889988, 22.808971>,  <32.297905, 30.051970, 22.911200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442513, 29.889988, 22.808971>,  <32.683525, 29.620018, 22.638590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442513, 29.889988, 22.808971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262281, -0.336615, 0.904378,
		0.753769, 0.656633, 0.025801,
		-0.602530, 0.674925, 0.425952,
		32.261753, 30.092464, 22.936756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087269, 29.897974, 23.187731>,  <32.683525, 29.620018, 22.638590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087269, 29.897974, 23.187731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698551, 29.948174, 23.267597>,  <32.465321, 29.978292, 23.315517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.698551, 29.948174, 23.267597>,  <33.087269, 29.897974, 23.187731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698551, 29.948174, 23.267597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143248, -0.358435, 0.922499,
		0.187340, 0.925081, 0.330348,
		-0.971794, 0.125499, 0.199665,
		32.407013, 29.985823, 23.327497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996456, 30.120161, 23.908657>,  <33.087269, 29.897974, 23.187731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996456, 30.120161, 23.908657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641521, 29.961926, 23.813877>,  <32.428562, 29.866983, 23.757010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641521, 29.961926, 23.813877>,  <32.996456, 30.120161, 23.908657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641521, 29.961926, 23.813877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083142, -0.368179, 0.926030,
		-0.453569, 0.841399, 0.293807,
		-0.887334, -0.395591, -0.236950,
		32.375320, 29.843248, 23.742792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004719, 30.585939, 24.510191>,  <32.996456, 30.120161, 23.908657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004719, 30.585939, 24.510191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336189, 30.719925, 24.689564>,  <33.535072, 30.800316, 24.797188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336189, 30.719925, 24.689564>,  <33.004719, 30.585939, 24.510191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336189, 30.719925, 24.689564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205925, 0.562526, -0.800724,
		-0.520469, 0.755886, 0.397175,
		0.828678, 0.334964, 0.448433,
		33.584793, 30.820414, 24.824093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045055, 31.345793, 24.393255>,  <33.004719, 30.585939, 24.510191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045055, 31.345793, 24.393255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418205, 31.227173, 24.475040>,  <33.642094, 31.156002, 24.524113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418205, 31.227173, 24.475040>,  <33.045055, 31.345793, 24.393255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418205, 31.227173, 24.475040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331540, 0.484998, -0.809233,
		0.140812, 0.822700, 0.550759,
		0.932874, -0.296548, 0.204465,
		33.698067, 31.138208, 24.536379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459064, 31.917456, 24.264111>,  <33.045055, 31.345793, 24.393255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459064, 31.917456, 24.264111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725300, 31.619324, 24.248749>,  <33.885040, 31.440445, 24.239532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725300, 31.619324, 24.248749>,  <33.459064, 31.917456, 24.264111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725300, 31.619324, 24.248749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506710, 0.489078, -0.709964,
		0.547942, 0.453082, 0.703190,
		0.665586, -0.745332, -0.038405,
		33.924976, 31.395723, 24.237226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023064, 32.296043, 24.267132>,  <33.459064, 31.917456, 24.264111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023064, 32.296043, 24.267132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138283, 31.943932, 24.116329>,  <34.207413, 31.732664, 24.025846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138283, 31.943932, 24.116329>,  <34.023064, 32.296043, 24.267132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138283, 31.943932, 24.116329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603987, 0.472516, -0.641817,
		0.743121, -0.042834, 0.667785,
		0.288048, -0.880281, -0.377008,
		34.224697, 31.679848, 24.003227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701950, 32.376068, 24.112093>,  <34.023064, 32.296043, 24.267132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701950, 32.376068, 24.112093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580376, 32.050571, 23.913921>,  <34.507431, 31.855274, 23.795019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580376, 32.050571, 23.913921>,  <34.701950, 32.376068, 24.112093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580376, 32.050571, 23.913921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668729, 0.188159, -0.719303,
		0.678547, -0.549927, 0.486986,
		-0.303933, -0.813743, -0.495427,
		34.489197, 31.806448, 23.765293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373440, 32.211090, 23.742262>,  <34.701950, 32.376068, 24.112093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373440, 32.211090, 23.742262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054947, 32.060822, 23.552574>,  <34.863850, 31.970659, 23.438763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054947, 32.060822, 23.552574>,  <35.373440, 32.211090, 23.742262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054947, 32.060822, 23.552574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470220, 0.108917, -0.875803,
		0.380667, -0.920329, 0.089927,
		-0.796232, -0.375674, -0.474219,
		34.816078, 31.948120, 23.410309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675961, 31.719053, 23.364258>,  <35.373440, 32.211090, 23.742262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675961, 31.719053, 23.364258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313103, 31.782272, 23.208256>,  <35.095387, 31.820204, 23.114655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313103, 31.782272, 23.208256>,  <35.675961, 31.719053, 23.364258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313103, 31.782272, 23.208256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420795, 0.348621, -0.837493,
		0.003599, -0.923842, -0.382757,
		-0.907148, 0.158048, -0.390003,
		35.040958, 31.829687, 23.091255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617378, 31.315805, 22.726593>,  <35.675961, 31.719053, 23.364258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617378, 31.315805, 22.726593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342915, 31.603344, 22.681973>,  <35.178234, 31.775867, 22.655201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342915, 31.603344, 22.681973>,  <35.617378, 31.315805, 22.726593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342915, 31.603344, 22.681973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403068, 0.248041, -0.880915,
		-0.605574, -0.649412, -0.459940,
		-0.686161, 0.718846, -0.111550,
		35.137066, 31.818998, 22.648508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540367, 31.491581, 22.053118>,  <35.617378, 31.315805, 22.726593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540367, 31.491581, 22.053118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339577, 31.825024, 22.145306>,  <35.219101, 32.025089, 22.200619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339577, 31.825024, 22.145306>,  <35.540367, 31.491581, 22.053118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339577, 31.825024, 22.145306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393085, 0.457264, -0.797743,
		-0.770389, -0.309857, -0.557215,
		-0.501981, 0.833606, 0.230471,
		35.188984, 32.075104, 22.214447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604214, 31.709658, 21.371244>,  <35.540367, 31.491581, 22.053118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604214, 31.709658, 21.371244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453609, 31.996506, 21.605843>,  <35.363247, 32.168613, 21.746601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453609, 31.996506, 21.605843>,  <35.604214, 31.709658, 21.371244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453609, 31.996506, 21.605843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406825, 0.696764, -0.590774,
		-0.832304, 0.016166, -0.554084,
		-0.376515, 0.717118, 0.586496,
		35.340656, 32.211639, 21.781792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326660, 32.239590, 20.962355>,  <35.604214, 31.709658, 21.371244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326660, 32.239590, 20.962355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370144, 32.450962, 21.299149>,  <35.396233, 32.577785, 21.501225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370144, 32.450962, 21.299149>,  <35.326660, 32.239590, 20.962355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370144, 32.450962, 21.299149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318959, 0.783680, -0.533021,
		-0.941514, 0.326502, -0.083358,
		0.108706, 0.528434, 0.841986,
		35.402756, 32.609493, 21.551744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037052, 32.886669, 20.808712>,  <35.326660, 32.239590, 20.962355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037052, 32.886669, 20.808712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292023, 32.921272, 21.114967>,  <35.445004, 32.942036, 21.298721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292023, 32.921272, 21.114967>,  <35.037052, 32.886669, 20.808712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292023, 32.921272, 21.114967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466980, 0.747012, -0.473184,
		-0.612875, 0.659158, 0.435768,
		0.637427, 0.086508, 0.765639,
		35.483250, 32.947224, 21.344660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107861, 33.627056, 20.983704>,  <35.037052, 32.886669, 20.808712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107861, 33.627056, 20.983704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438572, 33.442890, 21.112980>,  <35.636997, 33.332390, 21.190546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438572, 33.442890, 21.112980>,  <35.107861, 33.627056, 20.983704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438572, 33.442890, 21.112980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559665, 0.615379, -0.555054,
		0.056673, 0.639784, 0.766462,
		0.826779, -0.460419, 0.323189,
		35.686607, 33.304764, 21.209936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654594, 34.091530, 21.218927>,  <35.107861, 33.627056, 20.983704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654594, 34.091530, 21.218927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836479, 33.752617, 21.109127>,  <35.945610, 33.549271, 21.043247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836479, 33.752617, 21.109127>,  <35.654594, 34.091530, 21.218927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836479, 33.752617, 21.109127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591881, 0.517773, -0.617728,
		0.665519, 0.118417, 0.736927,
		0.454711, -0.847283, -0.274499,
		35.972893, 33.498432, 21.026777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466991, 34.672272, 21.349174>,  <35.654594, 34.091530, 21.218927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466991, 34.672272, 21.349174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168804, 34.718685, 21.611721>,  <34.989891, 34.746532, 21.769249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168804, 34.718685, 21.611721>,  <35.466991, 34.672272, 21.349174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168804, 34.718685, 21.611721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661741, 0.010844, 0.749654,
		0.079869, 0.993186, -0.084870,
		-0.745466, 0.116036, 0.656365,
		34.945164, 34.753494, 21.808630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734200, 34.684444, 21.896364>,  <35.466991, 34.672272, 21.349174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734200, 34.684444, 21.896364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401352, 34.731388, 22.113182>,  <35.201645, 34.759552, 22.243273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401352, 34.731388, 22.113182>,  <35.734200, 34.684444, 21.896364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401352, 34.731388, 22.113182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546781, 0.010035, 0.837215,
		0.092813, 0.993039, -0.072519,
		-0.832115, 0.117356, 0.542044,
		35.151718, 34.766594, 22.275795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057045, 34.782585, 22.519220>,  <35.734200, 34.684444, 21.896364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057045, 34.782585, 22.519220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675625, 34.775803, 22.639526>,  <35.446774, 34.771732, 22.711710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675625, 34.775803, 22.639526>,  <36.057045, 34.782585, 22.519220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675625, 34.775803, 22.639526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300889, -0.101845, 0.948205,
		0.014554, 0.994656, 0.102216,
		-0.953548, -0.016955, 0.300763,
		35.389561, 34.770718, 22.729755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993061, 35.151443, 23.151682>,  <36.057045, 34.782585, 22.519220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993061, 35.151443, 23.151682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675377, 34.908760, 23.138256>,  <35.484764, 34.763149, 23.130201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.675377, 34.908760, 23.138256>,  <35.993061, 35.151443, 23.151682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.675377, 34.908760, 23.138256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140261, -0.236794, 0.961382,
		-0.591228, 0.758836, 0.273163,
		-0.794214, -0.606710, -0.033564,
		35.437111, 34.726746, 23.128187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741219, 35.326859, 23.755072>,  <35.993061, 35.151443, 23.151682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741219, 35.326859, 23.755072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559875, 34.985992, 23.650551>,  <35.451069, 34.781471, 23.587839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559875, 34.985992, 23.650551>,  <35.741219, 35.326859, 23.755072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559875, 34.985992, 23.650551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051923, -0.317910, 0.946698,
		-0.889815, 0.415625, 0.188374,
		-0.453357, -0.852167, -0.261300,
		35.423870, 34.730343, 23.572161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258862, 35.277225, 24.287895>,  <35.741219, 35.326859, 23.755072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258862, 35.277225, 24.287895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315269, 34.912384, 24.133915>,  <35.349113, 34.693481, 24.041527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315269, 34.912384, 24.133915>,  <35.258862, 35.277225, 24.287895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315269, 34.912384, 24.133915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069184, -0.396965, 0.915222,
		-0.987587, -0.102428, -0.119081,
		0.141016, -0.912100, -0.384951,
		35.357574, 34.638756, 24.018429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658417, 34.837429, 24.426912>,  <35.258862, 35.277225, 24.287895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658417, 34.837429, 24.426912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971260, 34.590557, 24.392513>,  <35.158966, 34.442432, 24.371874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971260, 34.590557, 24.392513>,  <34.658417, 34.837429, 24.426912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971260, 34.590557, 24.392513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163808, -0.336778, 0.927226,
		-0.601227, -0.711104, -0.364496,
		0.782108, -0.617181, -0.085996,
		35.205891, 34.405403, 24.366714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475494, 34.293297, 24.967741>,  <34.658417, 34.837429, 24.426912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475494, 34.293297, 24.967741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849762, 34.223064, 24.845299>,  <35.074322, 34.180927, 24.771833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849762, 34.223064, 24.845299>,  <34.475494, 34.293297, 24.967741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849762, 34.223064, 24.845299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216318, -0.399969, 0.890635,
		-0.278808, -0.899554, -0.336257,
		0.935667, -0.175577, -0.306104,
		35.130463, 34.170391, 24.753468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604584, 33.670975, 25.222118>,  <34.475494, 34.293297, 24.967741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604584, 33.670975, 25.222118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973095, 33.805481, 25.143967>,  <35.194202, 33.886185, 25.097076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973095, 33.805481, 25.143967>,  <34.604584, 33.670975, 25.222118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973095, 33.805481, 25.143967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300420, -0.296305, 0.906615,
		0.246971, -0.893940, -0.374000,
		0.921278, 0.336265, -0.195379,
		35.249477, 33.906361, 25.085354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114334, 33.115482, 25.376572>,  <34.604584, 33.670975, 25.222118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114334, 33.115482, 25.376572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304710, 33.467274, 25.377041>,  <35.418934, 33.678349, 25.377321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304710, 33.467274, 25.377041>,  <35.114334, 33.115482, 25.376572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304710, 33.467274, 25.377041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385005, -0.209545, 0.898811,
		0.790731, -0.427327, -0.438334,
		0.475937, 0.879479, 0.001171,
		35.447491, 33.731117, 25.377392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837700, 32.975803, 25.595146>,  <35.114334, 33.115482, 25.376572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837700, 32.975803, 25.595146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753811, 33.353554, 25.696476>,  <35.703476, 33.580204, 25.757275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753811, 33.353554, 25.696476>,  <35.837700, 32.975803, 25.595146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753811, 33.353554, 25.696476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246827, -0.199561, 0.948289,
		0.946093, 0.261408, -0.191244,
		-0.209725, 0.944374, 0.253326,
		35.690895, 33.636868, 25.772474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373596, 33.195812, 25.972635>,  <35.837700, 32.975803, 25.595146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373596, 33.195812, 25.972635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078018, 33.438473, 26.089893>,  <35.900673, 33.584068, 26.160248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078018, 33.438473, 26.089893>,  <36.373596, 33.195812, 25.972635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078018, 33.438473, 26.089893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094551, -0.337411, 0.936597,
		0.667097, 0.719812, 0.191969,
		-0.738946, 0.606650, 0.293145,
		35.856335, 33.620468, 26.177837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627171, 33.467865, 26.622688>,  <36.373596, 33.195812, 25.972635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627171, 33.467865, 26.622688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234051, 33.540012, 26.606808>,  <35.998180, 33.583302, 26.597279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234051, 33.540012, 26.606808>,  <36.627171, 33.467865, 26.622688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234051, 33.540012, 26.606808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099901, -0.338380, 0.935691,
		0.155338, 0.923561, 0.350578,
		-0.982797, 0.180372, -0.039701,
		35.939213, 33.594124, 26.594898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549824, 33.801994, 27.316378>,  <36.627171, 33.467865, 26.622688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549824, 33.801994, 27.316378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175503, 33.699749, 27.219276>,  <35.950909, 33.638401, 27.161016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175503, 33.699749, 27.219276>,  <36.549824, 33.801994, 27.316378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175503, 33.699749, 27.219276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118297, -0.420982, 0.899322,
		-0.332071, 0.870309, 0.363720,
		-0.935807, -0.255611, -0.242751,
		35.894760, 33.623066, 27.146452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081341, 33.987171, 27.793137>,  <36.549824, 33.801994, 27.316378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081341, 33.987171, 27.793137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886787, 33.693172, 27.604156>,  <35.770054, 33.516773, 27.490768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886787, 33.693172, 27.604156>,  <36.081341, 33.987171, 27.793137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886787, 33.693172, 27.604156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222523, -0.418687, 0.880446,
		-0.844935, 0.533365, 0.040088,
		-0.486384, -0.734999, -0.472449,
		35.740871, 33.472672, 27.462421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403786, 33.924809, 28.111553>,  <36.081341, 33.987171, 27.793137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403786, 33.924809, 28.111553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463036, 33.575031, 27.926765>,  <35.498585, 33.365166, 27.815893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463036, 33.575031, 27.926765>,  <35.403786, 33.924809, 28.111553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463036, 33.575031, 27.926765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330523, -0.484034, 0.810226,
		-0.932101, 0.032676, -0.360720,
		0.148126, -0.874439, -0.461969,
		35.507473, 33.312698, 27.788176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807640, 33.622578, 28.190611>,  <35.403786, 33.924809, 28.111553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807640, 33.622578, 28.190611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077457, 33.333126, 28.132168>,  <35.239349, 33.159454, 28.097101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077457, 33.333126, 28.132168>,  <34.807640, 33.622578, 28.190611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077457, 33.333126, 28.132168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399213, -0.524039, 0.752338,
		-0.620980, -0.449159, -0.642371,
		0.674546, -0.723630, -0.146108,
		35.279823, 33.116035, 28.088335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428940, 33.010078, 28.283209>,  <34.807640, 33.622578, 28.190611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428940, 33.010078, 28.283209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804607, 32.884907, 28.339836>,  <35.030006, 32.809803, 28.373812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804607, 32.884907, 28.339836>,  <34.428940, 33.010078, 28.283209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804607, 32.884907, 28.339836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310763, -0.598684, 0.738244,
		-0.146264, -0.737328, -0.659511,
		0.939167, -0.312930, 0.141568,
		35.086357, 32.791027, 28.382307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415588, 32.272335, 28.354755>,  <34.428940, 33.010078, 28.283209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415588, 32.272335, 28.354755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775654, 32.358467, 28.506195>,  <34.991692, 32.410145, 28.597059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775654, 32.358467, 28.506195>,  <34.415588, 32.272335, 28.354755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775654, 32.358467, 28.506195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194070, -0.579893, 0.791241,
		0.389923, -0.785721, -0.480210,
		0.900165, 0.215329, 0.378598,
		35.045704, 32.423065, 28.619774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653431, 31.641005, 28.523212>,  <34.415588, 32.272335, 28.354755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653431, 31.641005, 28.523212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890842, 31.891266, 28.725712>,  <35.033287, 32.041424, 28.847212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890842, 31.891266, 28.725712>,  <34.653431, 31.641005, 28.523212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890842, 31.891266, 28.725712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061304, -0.592050, 0.803566,
		0.802476, -0.507973, -0.313042,
		0.593527, 0.625652, 0.506247,
		35.068901, 32.078960, 28.877586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120392, 31.234358, 28.985168>,  <34.653431, 31.641005, 28.523212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120392, 31.234358, 28.985168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115688, 31.589008, 29.170105>,  <35.112865, 31.801798, 29.281067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115688, 31.589008, 29.170105>,  <35.120392, 31.234358, 28.985168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115688, 31.589008, 29.170105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083066, -0.461642, 0.883169,
		0.996475, -0.028018, 0.079078,
		-0.011761, 0.886624, 0.462341,
		35.112160, 31.854996, 29.308807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558456, 31.201017, 29.565216>,  <35.120392, 31.234358, 28.985168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558456, 31.201017, 29.565216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329945, 31.511318, 29.672436>,  <35.192837, 31.697498, 29.736767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329945, 31.511318, 29.672436>,  <35.558456, 31.201017, 29.565216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329945, 31.511318, 29.672436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059806, -0.365064, 0.929059,
		0.818573, 0.514722, 0.254948,
		-0.571280, 0.775750, 0.268049,
		35.158562, 31.744043, 29.752850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728588, 31.304249, 30.324123>,  <35.558456, 31.201017, 29.565216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728588, 31.304249, 30.324123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382820, 31.494953, 30.260277>,  <35.175358, 31.609375, 30.221970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.382820, 31.494953, 30.260277>,  <35.728588, 31.304249, 30.324123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382820, 31.494953, 30.260277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387728, -0.430036, 0.815313,
		0.320067, 0.766662, 0.556585,
		-0.864421, 0.476759, -0.159616,
		35.123493, 31.637981, 30.212393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562958, 31.575226, 30.940838>,  <35.728588, 31.304249, 30.324123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562958, 31.575226, 30.940838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214748, 31.593346, 30.744820>,  <35.005825, 31.604218, 30.627209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214748, 31.593346, 30.744820>,  <35.562958, 31.575226, 30.940838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214748, 31.593346, 30.744820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472631, -0.354502, 0.806813,
		-0.137172, 0.933957, 0.330012,
		-0.870519, 0.045302, -0.490045,
		34.953594, 31.606936, 30.597807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146667, 31.655598, 31.434353>,  <35.562958, 31.575226, 30.940838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146667, 31.655598, 31.434353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923985, 31.489006, 31.146847>,  <34.790375, 31.389051, 30.974344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.923985, 31.489006, 31.146847>,  <35.146667, 31.655598, 31.434353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923985, 31.489006, 31.146847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525166, -0.493952, 0.692973,
		-0.643644, 0.763254, 0.056265,
		-0.556707, -0.416480, -0.718764,
		34.756973, 31.364061, 30.931217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439083, 31.715464, 31.634373>,  <35.146667, 31.655598, 31.434353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439083, 31.715464, 31.634373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408333, 31.426785, 31.359203>,  <34.389881, 31.253576, 31.194101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.408333, 31.426785, 31.359203>,  <34.439083, 31.715464, 31.634373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408333, 31.426785, 31.359203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514345, -0.562365, 0.647453,
		-0.854131, 0.403605, -0.327970,
		-0.076876, -0.721699, -0.687925,
		34.385269, 31.210276, 31.152826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787289, 31.524603, 31.664276>,  <34.439083, 31.715464, 31.634373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787289, 31.524603, 31.664276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963821, 31.214905, 31.482830>,  <34.069740, 31.029085, 31.373962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963821, 31.214905, 31.482830>,  <33.787289, 31.524603, 31.664276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963821, 31.214905, 31.482830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412199, -0.623939, 0.663922,
		-0.797068, -0.106030, -0.594509,
		0.441333, -0.774247, -0.453616,
		34.096222, 30.982632, 31.346745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279392, 31.020967, 31.635511>,  <33.787289, 31.524603, 31.664276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279392, 31.020967, 31.635511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627136, 30.824413, 31.614491>,  <33.835781, 30.706480, 31.601877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627136, 30.824413, 31.614491>,  <33.279392, 31.020967, 31.635511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627136, 30.824413, 31.614491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316077, -0.634624, 0.705229,
		-0.379890, -0.596484, -0.707029,
		0.869356, -0.491385, -0.052552,
		33.887943, 30.676998, 31.598724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681122, 30.788984, 31.212225>,  <33.279392, 31.020967, 31.635511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681122, 30.788984, 31.212225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289249, 30.854816, 31.258080>,  <32.054127, 30.894316, 31.285591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289249, 30.854816, 31.258080>,  <32.681122, 30.788984, 31.212225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289249, 30.854816, 31.258080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031646, 0.691231, -0.721941,
		-0.198056, -0.703643, -0.682393,
		-0.979680, 0.164580, 0.114635,
		31.995346, 30.904190, 31.292469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281151, 30.598213, 30.548813>,  <32.681122, 30.788984, 31.212225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281151, 30.598213, 30.548813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064964, 30.862850, 30.756733>,  <31.935253, 31.021633, 30.881485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.064964, 30.862850, 30.756733>,  <32.281151, 30.598213, 30.548813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064964, 30.862850, 30.756733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076156, 0.653738, -0.752879,
		-0.837913, -0.367318, -0.403706,
		-0.540464, 0.661592, 0.519802,
		31.902824, 31.061327, 30.912674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747395, 30.896458, 30.054384>,  <32.281151, 30.598213, 30.548813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747395, 30.896458, 30.054384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717718, 31.153557, 30.359375>,  <31.699913, 31.307817, 30.542370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717718, 31.153557, 30.359375>,  <31.747395, 30.896458, 30.054384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717718, 31.153557, 30.359375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145662, 0.749398, -0.645898,
		-0.986549, -0.158984, 0.038026,
		-0.074191, 0.642749, 0.762476,
		31.695461, 31.346382, 30.588118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253435, 31.352673, 29.818184>,  <31.747395, 30.896458, 30.054384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253435, 31.352673, 29.818184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437819, 31.546768, 30.115387>,  <31.548449, 31.663225, 30.293709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437819, 31.546768, 30.115387>,  <31.253435, 31.352673, 29.818184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437819, 31.546768, 30.115387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068505, 0.854224, -0.515372,
		-0.884774, 0.186665, 0.427002,
		0.460958, 0.485239, 0.743008,
		31.576105, 31.692341, 30.338289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891680, 31.908875, 29.820478>,  <31.253435, 31.352673, 29.818184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891680, 31.908875, 29.820478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257713, 31.974209, 29.967960>,  <31.477333, 32.013409, 30.056450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.257713, 31.974209, 29.967960>,  <30.891680, 31.908875, 29.820478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.257713, 31.974209, 29.967960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072180, 0.833196, -0.548247,
		-0.396752, 0.528305, 0.750654,
		0.915083, 0.163336, 0.368705,
		31.532238, 32.023209, 30.078571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
