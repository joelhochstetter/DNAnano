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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.845814, 17.154306, -2.374342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.743038, 16.839428, -2.598595>,  <22.681374, 16.650501, -2.733147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.743038, 16.839428, -2.598595>,  <22.845814, 17.154306, -2.374342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.743038, 16.839428, -2.598595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836031, 0.109962, -0.537551,
		0.484806, -0.606822, 0.629865,
		-0.256937, -0.787194, -0.560632,
		22.665956, 16.603270, -2.766785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.568819, 17.673210, -1.788314>,  <22.845814, 17.154306, -2.374342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.568819, 17.673210, -1.788314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.393822, 17.924034, -1.530509>,  <22.288824, 18.074528, -1.375826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.393822, 17.924034, -1.530509>,  <22.568819, 17.673210, -1.788314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.393822, 17.924034, -1.530509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793085, 0.606879, -0.052104,
		-0.423814, 0.488358, -0.762816,
		-0.437492, 0.627060, 0.644513,
		22.262573, 18.112152, -1.337155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.628759, 18.408323, -1.932578>,  <22.568819, 17.673210, -1.788314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.628759, 18.408323, -1.932578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.627121, 18.463619, -1.536422>,  <22.626139, 18.496798, -1.298729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.627121, 18.463619, -1.536422>,  <22.628759, 18.408323, -1.932578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.627121, 18.463619, -1.536422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775892, 0.625240, -0.084064,
		-0.630853, 0.768091, -0.109819,
		-0.004095, 0.138240, 0.990390,
		22.625893, 18.505091, -1.239305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.364723, 19.104837, -1.840298>,  <22.628759, 18.408323, -1.932578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.364723, 19.104837, -1.840298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.642693, 18.943130, -1.602426>,  <22.809475, 18.846106, -1.459702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.642693, 18.943130, -1.602426>,  <22.364723, 19.104837, -1.840298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.642693, 18.943130, -1.602426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655682, 0.695779, -0.293211,
		-0.295231, 0.593681, 0.748586,
		0.694925, -0.404269, 0.594681,
		22.851170, 18.821850, -1.424021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.683844, 19.674444, -1.662436>,  <22.364723, 19.104837, -1.840298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.683844, 19.674444, -1.662436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.936741, 19.372402, -1.593057>,  <23.088480, 19.191177, -1.551430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.936741, 19.372402, -1.593057>,  <22.683844, 19.674444, -1.662436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.936741, 19.372402, -1.593057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774745, 0.617981, -0.133683,
		-0.006242, 0.218897, 0.975728,
		0.632244, -0.755105, 0.173447,
		23.126413, 19.145870, -1.541023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.172220, 19.792208, -1.105487>,  <22.683844, 19.674444, -1.662436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.172220, 19.792208, -1.105487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.332504, 19.533630, -1.365193>,  <23.428675, 19.378485, -1.521016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.332504, 19.533630, -1.365193>,  <23.172220, 19.792208, -1.105487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.332504, 19.533630, -1.365193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762853, 0.627881, -0.154340,
		0.507433, -0.433447, 0.744738,
		0.400708, -0.646443, -0.649264,
		23.452717, 19.339697, -1.559972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.901199, 19.776995, -0.918667>,  <23.172220, 19.792208, -1.105487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.901199, 19.776995, -0.918667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.830013, 19.652126, -1.291950>,  <23.787302, 19.577206, -1.515920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.830013, 19.652126, -1.291950>,  <23.901199, 19.776995, -0.918667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.830013, 19.652126, -1.291950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569197, 0.740939, -0.356404,
		0.802710, -0.594607, 0.045826,
		-0.177966, -0.312173, -0.933208,
		23.776623, 19.558474, -1.571913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538412, 19.787519, -1.282725>,  <23.901199, 19.776995, -0.918667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538412, 19.787519, -1.282725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.269897, 19.781670, -1.579147>,  <24.108789, 19.778160, -1.757000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.269897, 19.781670, -1.579147>,  <24.538412, 19.787519, -1.282725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.269897, 19.781670, -1.579147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589465, 0.595582, -0.545722,
		0.449340, -0.803161, -0.391185,
		-0.671286, -0.014625, -0.741055,
		24.068512, 19.777283, -1.801463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793045, 19.503204, -1.976843>,  <24.538412, 19.787519, -1.282725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793045, 19.503204, -1.976843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531071, 19.805454, -1.980567>,  <24.373886, 19.986805, -1.982801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.531071, 19.805454, -1.980567>,  <24.793045, 19.503204, -1.976843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.531071, 19.805454, -1.980567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722703, 0.622705, -0.299899,
		-0.220814, -0.203143, -0.953926,
		-0.654937, 0.755627, -0.009310,
		24.334589, 20.032143, -1.983360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.814852, 19.919365, -2.601260>,  <24.793045, 19.503204, -1.976843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.814852, 19.919365, -2.601260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.711143, 20.106110, -2.263072>,  <24.648918, 20.218157, -2.060159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.711143, 20.106110, -2.263072>,  <24.814852, 19.919365, -2.601260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.711143, 20.106110, -2.263072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728450, 0.669317, -0.146205,
		-0.634145, 0.577975, -0.513620,
		-0.259271, 0.466862, 0.845469,
		24.633362, 20.246168, -2.009431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.870590, 20.662693, -2.679570>,  <24.814852, 19.919365, -2.601260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.870590, 20.662693, -2.679570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.972664, 20.594852, -2.298809>,  <25.033907, 20.554148, -2.070352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.972664, 20.594852, -2.298809>,  <24.870590, 20.662693, -2.679570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.972664, 20.594852, -2.298809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744373, 0.662777, -0.081462,
		-0.617083, 0.729358, 0.295375,
		0.255183, -0.169601, 0.951902,
		25.049219, 20.543972, -2.013238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998749, 21.337448, -2.472015>,  <24.870590, 20.662693, -2.679570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998749, 21.337448, -2.472015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188740, 21.096478, -2.215427>,  <25.302734, 20.951895, -2.061475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188740, 21.096478, -2.215427>,  <24.998749, 21.337448, -2.472015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.188740, 21.096478, -2.215427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816686, 0.573255, -0.066352,
		-0.327753, 0.555394, 0.764274,
		0.474976, -0.602424, 0.641469,
		25.331232, 20.915751, -2.022987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.305664, 21.790657, -1.925024>,  <24.998749, 21.337448, -2.472015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.305664, 21.790657, -1.925024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479446, 21.432144, -1.960641>,  <25.583715, 21.217037, -1.982012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479446, 21.432144, -1.960641>,  <25.305664, 21.790657, -1.925024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479446, 21.432144, -1.960641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875522, 0.443452, -0.191863,
		0.211449, 0.005397, 0.977374,
		0.434454, -0.896282, -0.089042,
		25.609783, 21.163260, -1.987354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884418, 21.585522, -1.468205>,  <25.305664, 21.790657, -1.925024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884418, 21.585522, -1.468205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892872, 21.454491, -1.846040>,  <25.897943, 21.375872, -2.072742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892872, 21.454491, -1.846040>,  <25.884418, 21.585522, -1.468205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892872, 21.454491, -1.846040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895404, 0.426497, -0.127875,
		0.444753, -0.843085, 0.302327,
		0.021132, -0.327578, -0.944588,
		25.899212, 21.356216, -2.129417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.777445, 21.524633, -0.777081>,  <25.884418, 21.585522, -1.468205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.777445, 21.524633, -0.777081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439137, 21.474174, -0.984448>,  <25.236151, 21.443899, -1.108868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439137, 21.474174, -0.984448>,  <25.777445, 21.524633, -0.777081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439137, 21.474174, -0.984448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506541, 0.115354, -0.854465,
		0.167586, -0.985282, -0.033667,
		-0.845773, -0.126142, -0.518417,
		25.185406, 21.436331, -1.139973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701740, 21.404209, -0.003994>,  <25.777445, 21.524633, -0.777081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701740, 21.404209, -0.003994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042629, 21.475594, 0.192725>,  <26.247164, 21.518425, 0.310757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.042629, 21.475594, 0.192725>,  <25.701740, 21.404209, -0.003994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.042629, 21.475594, 0.192725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419733, 0.327922, -0.846340,
		-0.312311, 0.927695, 0.204557,
		0.852224, 0.178461, 0.491798,
		26.298296, 21.529133, 0.340265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.893604, 21.600534, 0.645555>,  <25.701740, 21.404209, -0.003994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.893604, 21.600534, 0.645555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249653, 21.493290, 0.792958>,  <26.463282, 21.428944, 0.881400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249653, 21.493290, 0.792958>,  <25.893604, 21.600534, 0.645555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249653, 21.493290, 0.792958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447527, -0.361605, 0.817901,
		-0.086032, -0.892950, -0.441859,
		0.890123, -0.268109, 0.368509,
		26.516689, 21.412857, 0.903511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.745070, 20.910557, 0.860974>,  <25.893604, 21.600534, 0.645555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.745070, 20.910557, 0.860974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069122, 21.054382, 1.046188>,  <26.263554, 21.140678, 1.157317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069122, 21.054382, 1.046188>,  <25.745070, 20.910557, 0.860974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.069122, 21.054382, 1.046188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411242, -0.214353, 0.885964,
		0.417814, -0.908167, -0.025786,
		0.810131, 0.359564, 0.463036,
		26.312162, 21.162251, 1.185099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693529, 20.751514, 1.579378>,  <25.745070, 20.910557, 0.860974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693529, 20.751514, 1.579378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016743, 20.977268, 1.646968>,  <26.210670, 21.112720, 1.687523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016743, 20.977268, 1.646968>,  <25.693529, 20.751514, 1.579378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016743, 20.977268, 1.646968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169935, -0.051347, 0.984117,
		0.564095, -0.823915, 0.054418,
		0.808034, 0.564383, 0.168976,
		26.259153, 21.146584, 1.697661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062902, 20.410673, 2.130146>,  <25.693529, 20.751514, 1.579378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062902, 20.410673, 2.130146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161266, 20.797466, 2.103394>,  <26.220285, 21.029543, 2.087343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161266, 20.797466, 2.103394>,  <26.062902, 20.410673, 2.130146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161266, 20.797466, 2.103394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035243, 0.060034, 0.997574,
		0.968652, -0.247671, -0.019317,
		0.245910, 0.966983, -0.066880,
		26.235039, 21.087561, 2.083330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787943, 20.555950, 2.319829>,  <26.062902, 20.410673, 2.130146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787943, 20.555950, 2.319829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538403, 20.862377, 2.381738>,  <26.388678, 21.046232, 2.418883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538403, 20.862377, 2.381738>,  <26.787943, 20.555950, 2.319829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538403, 20.862377, 2.381738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144072, -0.081915, 0.986171,
		0.768150, 0.637521, -0.059266,
		-0.623850, 0.766066, 0.154772,
		26.351248, 21.092197, 2.428169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013721, 20.825531, 2.960684>,  <26.787943, 20.555950, 2.319829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013721, 20.825531, 2.960684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652882, 20.992176, 2.915699>,  <26.436377, 21.092163, 2.888707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.652882, 20.992176, 2.915699>,  <27.013721, 20.825531, 2.960684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652882, 20.992176, 2.915699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164776, -0.091687, 0.982060,
		0.398827, 0.904449, 0.151359,
		-0.902101, 0.416612, -0.112464,
		26.382252, 21.117159, 2.881959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898987, 21.455654, 3.404746>,  <27.013721, 20.825531, 2.960684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898987, 21.455654, 3.404746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601349, 21.194225, 3.349365>,  <26.422766, 21.037369, 3.316137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601349, 21.194225, 3.349365>,  <26.898987, 21.455654, 3.404746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.601349, 21.194225, 3.349365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165507, -0.020442, 0.985997,
		-0.647251, 0.756588, -0.092960,
		-0.744093, -0.653572, -0.138452,
		26.378120, 20.998154, 3.307830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317530, 21.581821, 3.876445>,  <26.898987, 21.455654, 3.404746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317530, 21.581821, 3.876445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324947, 21.185925, 3.819777>,  <26.329399, 20.948387, 3.785776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324947, 21.185925, 3.819777>,  <26.317530, 21.581821, 3.876445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324947, 21.185925, 3.819777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334594, -0.139668, 0.931955,
		-0.942180, 0.030118, -0.333752,
		0.018546, -0.989740, -0.141670,
		26.330511, 20.889002, 3.777276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602074, 21.265032, 3.938347>,  <26.317530, 21.581821, 3.876445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602074, 21.265032, 3.938347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931931, 21.076786, 4.063877>,  <26.129845, 20.963839, 4.139194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931931, 21.076786, 4.063877>,  <25.602074, 21.265032, 3.938347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931931, 21.076786, 4.063877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436556, -0.176706, 0.882153,
		-0.359701, -0.864462, -0.351170,
		0.824642, -0.470617, 0.313824,
		26.179323, 20.935600, 4.158024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.502895, 20.482969, 3.968130>,  <25.602074, 21.265032, 3.938347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.502895, 20.482969, 3.968130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706642, 20.685760, 4.246271>,  <25.828890, 20.807436, 4.413156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706642, 20.685760, 4.246271>,  <25.502895, 20.482969, 3.968130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706642, 20.685760, 4.246271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630542, -0.330012, 0.702502,
		0.585629, -0.796281, 0.151575,
		0.509367, 0.506980, 0.695353,
		25.859453, 20.837854, 4.454877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.249285, 20.218122, 4.540566>,  <25.502895, 20.482969, 3.968130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.249285, 20.218122, 4.540566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492062, 20.508114, 4.670815>,  <25.637728, 20.682108, 4.748964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492062, 20.508114, 4.670815>,  <25.249285, 20.218122, 4.540566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492062, 20.508114, 4.670815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395257, -0.080097, 0.915072,
		0.689487, -0.684100, 0.237938,
		0.606943, 0.724977, 0.325621,
		25.674145, 20.725607, 4.768501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673141, 20.000135, 5.083884>,  <25.249285, 20.218122, 4.540566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673141, 20.000135, 5.083884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584641, 20.390221, 5.083153>,  <25.531540, 20.624271, 5.082714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584641, 20.390221, 5.083153>,  <25.673141, 20.000135, 5.083884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584641, 20.390221, 5.083153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455682, -0.101726, 0.884311,
		0.862207, 0.196489, 0.466895,
		-0.221253, 0.975215, -0.001828,
		25.518265, 20.682785, 5.082604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687456, 20.282331, 5.774526>,  <25.673141, 20.000135, 5.083884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687456, 20.282331, 5.774526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492344, 20.578228, 5.589115>,  <25.375277, 20.755766, 5.477869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492344, 20.578228, 5.589115>,  <25.687456, 20.282331, 5.774526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492344, 20.578228, 5.589115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545844, 0.155930, 0.823250,
		0.681268, 0.654577, 0.327723,
		-0.487779, 0.739739, -0.463527,
		25.346010, 20.800150, 5.450057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.767513, 20.992573, 6.104796>,  <25.687456, 20.282331, 5.774526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.767513, 20.992573, 6.104796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403816, 20.886074, 5.976802>,  <25.185598, 20.822174, 5.900005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.403816, 20.886074, 5.976802>,  <25.767513, 20.992573, 6.104796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.403816, 20.886074, 5.976802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322014, -0.037249, 0.946002,
		-0.263791, 0.963184, -0.051868,
		-0.909242, -0.266248, -0.319985,
		25.131044, 20.806200, 5.880806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.105244, 21.358206, 6.249692>,  <25.767513, 20.992573, 6.104796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.105244, 21.358206, 6.249692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039196, 20.963951, 6.235522>,  <24.999567, 20.727398, 6.227020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.039196, 20.963951, 6.235522>,  <25.105244, 21.358206, 6.249692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039196, 20.963951, 6.235522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217771, 0.001403, 0.975999,
		-0.961931, 0.168870, -0.214875,
		-0.165118, -0.985637, -0.035426,
		24.989660, 20.668261, 6.224895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.353033, 21.136312, 6.400820>,  <25.105244, 21.358206, 6.249692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.353033, 21.136312, 6.400820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604446, 20.843426, 6.505744>,  <24.755295, 20.667694, 6.568698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.604446, 20.843426, 6.505744>,  <24.353033, 21.136312, 6.400820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.604446, 20.843426, 6.505744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367127, 0.018021, 0.929996,
		-0.685686, -0.680834, -0.257489,
		0.628532, -0.732216, 0.262309,
		24.793007, 20.623760, 6.584437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.016981, 20.753660, 6.964498>,  <24.353033, 21.136312, 6.400820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.016981, 20.753660, 6.964498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382290, 20.595890, 7.005225>,  <24.601475, 20.501228, 7.029662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.382290, 20.595890, 7.005225>,  <24.016981, 20.753660, 6.964498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.382290, 20.595890, 7.005225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191227, -0.194415, 0.962099,
		-0.359682, -0.898126, -0.252978,
		0.913269, -0.394426, 0.101818,
		24.656271, 20.477562, 7.035771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.003862, 20.057377, 7.181228>,  <24.016981, 20.753660, 6.964498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.003862, 20.057377, 7.181228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344151, 20.231785, 7.298643>,  <24.548323, 20.336430, 7.369092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344151, 20.231785, 7.298643>,  <24.003862, 20.057377, 7.181228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.344151, 20.231785, 7.298643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191697, -0.262622, 0.945665,
		0.489418, -0.860765, -0.139834,
		0.850719, 0.436020, 0.293538,
		24.599365, 20.362591, 7.386704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.612017, 19.693979, 7.680375>,  <24.003862, 20.057377, 7.181228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.612017, 19.693979, 7.680375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.530865, 20.082394, 7.730852>,  <24.482174, 20.315443, 7.761138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.530865, 20.082394, 7.730852>,  <24.612017, 19.693979, 7.680375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.530865, 20.082394, 7.730852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301039, -0.184484, 0.935596,
		0.931780, 0.151826, 0.329749,
		-0.202881, 0.971038, 0.126193,
		24.470001, 20.373705, 7.768710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.890360, 19.808937, 8.408456>,  <24.612017, 19.693979, 7.680375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.890360, 19.808937, 8.408456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594242, 20.040222, 8.271266>,  <24.416571, 20.178993, 8.188952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.594242, 20.040222, 8.271266>,  <24.890360, 19.808937, 8.408456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.594242, 20.040222, 8.271266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471611, -0.083082, 0.877884,
		0.479110, 0.811644, 0.334197,
		-0.740295, 0.578214, -0.342975,
		24.372154, 20.213686, 8.168374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.873009, 20.371084, 8.857266>,  <24.890360, 19.808937, 8.408456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.873009, 20.371084, 8.857266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.517323, 20.376034, 8.674337>,  <24.303911, 20.379004, 8.564580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.517323, 20.376034, 8.674337>,  <24.873009, 20.371084, 8.857266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.517323, 20.376034, 8.674337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456749, 0.032875, 0.888988,
		0.026037, 0.999383, -0.023580,
		-0.889214, 0.012376, -0.457323,
		24.250559, 20.379747, 8.537141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.576536, 21.100197, 9.195771>,  <24.873009, 20.371084, 8.857266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.576536, 21.100197, 9.195771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301537, 20.843819, 9.059221>,  <24.136538, 20.689991, 8.977291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301537, 20.843819, 9.059221>,  <24.576536, 21.100197, 9.195771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.301537, 20.843819, 9.059221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405269, -0.051437, 0.912749,
		-0.602582, 0.765861, -0.224393,
		-0.687497, -0.640946, -0.341374,
		24.095287, 20.651535, 8.956809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.027472, 21.303616, 9.544010>,  <24.576536, 21.100197, 9.195771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.027472, 21.303616, 9.544010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.870388, 20.968246, 9.392839>,  <23.776138, 20.767025, 9.302137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.870388, 20.968246, 9.392839>,  <24.027472, 21.303616, 9.544010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.870388, 20.968246, 9.392839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506270, -0.145981, 0.849929,
		-0.767769, 0.525109, -0.367140,
		-0.392710, -0.838421, -0.377927,
		23.752575, 20.716721, 9.279462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.313597, 21.452261, 9.646735>,  <24.027472, 21.303616, 9.544010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.313597, 21.452261, 9.646735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.408001, 21.063953, 9.629291>,  <23.464643, 20.830969, 9.618824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.408001, 21.063953, 9.629291>,  <23.313597, 21.452261, 9.646735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.408001, 21.063953, 9.629291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573446, -0.175366, 0.800254,
		-0.784512, -0.163861, -0.598073,
		0.236013, -0.970771, -0.043611,
		23.478806, 20.772722, 9.616207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.769909, 21.091484, 9.945983>,  <23.313597, 21.452261, 9.646735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.769909, 21.091484, 9.945983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.077824, 20.836163, 9.946137>,  <23.262571, 20.682970, 9.946230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.077824, 20.836163, 9.946137>,  <22.769909, 21.091484, 9.945983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.077824, 20.836163, 9.946137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391445, -0.471599, 0.790168,
		-0.504191, -0.608406, -0.612890,
		0.769781, -0.638308, 0.000381,
		23.308760, 20.644672, 9.946253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.504244, 20.377586, 10.045065>,  <22.769909, 21.091484, 9.945983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.504244, 20.377586, 10.045065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.879391, 20.383965, 10.183719>,  <23.104479, 20.387791, 10.266911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.879391, 20.383965, 10.183719>,  <22.504244, 20.377586, 10.045065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.879391, 20.383965, 10.183719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337329, -0.192295, 0.921538,
		0.081350, -0.981208, -0.174968,
		0.937865, 0.015946, 0.346633,
		23.160749, 20.388748, 10.287708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.550568, 19.828959, 10.534521>,  <22.504244, 20.377586, 10.045065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.550568, 19.828959, 10.534521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.884869, 20.030716, 10.621338>,  <23.085449, 20.151772, 10.673428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.884869, 20.030716, 10.621338>,  <22.550568, 19.828959, 10.534521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.884869, 20.030716, 10.621338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128725, -0.204280, 0.970412,
		0.533809, -0.838961, -0.105799,
		0.835750, 0.504395, 0.217041,
		23.135593, 20.182034, 10.686450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.947559, 19.364244, 10.996197>,  <22.550568, 19.828959, 10.534521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.947559, 19.364244, 10.996197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.098576, 19.728546, 11.063120>,  <23.189186, 19.947126, 11.103274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.098576, 19.728546, 11.063120>,  <22.947559, 19.364244, 10.996197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.098576, 19.728546, 11.063120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235939, -0.080105, 0.968461,
		0.895430, -0.405108, 0.184639,
		0.377541, 0.910753, 0.167309,
		23.211838, 20.001772, 11.113313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.331074, 19.336601, 11.572461>,  <22.947559, 19.364244, 10.996197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.331074, 19.336601, 11.572461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.258854, 19.729942, 11.564298>,  <23.215523, 19.965948, 11.559400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.258854, 19.729942, 11.564298>,  <23.331074, 19.336601, 11.572461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.258854, 19.729942, 11.564298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316902, -0.038517, 0.947676,
		0.931115, 0.177569, 0.318581,
		-0.180548, 0.983354, -0.020408,
		23.204689, 20.024948, 11.558175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.666206, 19.670876, 12.214170>,  <23.331074, 19.336601, 11.572461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.666206, 19.670876, 12.214170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.363186, 19.875351, 12.051787>,  <23.181374, 19.998035, 11.954358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.363186, 19.875351, 12.051787>,  <23.666206, 19.670876, 12.214170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.363186, 19.875351, 12.051787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438560, 0.062073, 0.896556,
		0.483508, 0.857224, 0.177163,
		-0.757552, 0.511189, -0.405957,
		23.135920, 20.028708, 11.930000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.700605, 20.151138, 12.679599>,  <23.666206, 19.670876, 12.214170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.700605, 20.151138, 12.679599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.343418, 20.205078, 12.507819>,  <23.129107, 20.237442, 12.404752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.343418, 20.205078, 12.507819>,  <23.700605, 20.151138, 12.679599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.343418, 20.205078, 12.507819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376199, 0.300280, 0.876531,
		0.247156, 0.944271, -0.217409,
		-0.892966, 0.134851, -0.429449,
		23.075529, 20.245533, 12.378984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.481058, 20.810249, 12.858557>,  <23.700605, 20.151138, 12.679599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.481058, 20.810249, 12.858557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.138351, 20.626328, 12.765149>,  <22.932728, 20.515974, 12.709105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.138351, 20.626328, 12.765149>,  <23.481058, 20.810249, 12.858557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.138351, 20.626328, 12.765149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458690, 0.472483, 0.752571,
		-0.235704, 0.751890, -0.615716,
		-0.856766, -0.459806, -0.233518,
		22.881321, 20.488386, 12.695094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.967119, 21.266350, 13.048517>,  <23.481058, 20.810249, 12.858557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.967119, 21.266350, 13.048517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.771271, 20.917614, 13.043329>,  <22.653763, 20.708372, 13.040216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.771271, 20.917614, 13.043329>,  <22.967119, 21.266350, 13.048517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.771271, 20.917614, 13.043329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599885, 0.326024, 0.730648,
		-0.632779, 0.365520, -0.682631,
		-0.489621, -0.871839, -0.012969,
		22.624384, 20.656063, 13.039438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.234777, 21.363443, 13.069657>,  <22.967119, 21.266350, 13.048517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.234777, 21.363443, 13.069657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.259747, 20.980339, 13.181940>,  <22.274727, 20.750477, 13.249310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.259747, 20.980339, 13.181940>,  <22.234777, 21.363443, 13.069657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.259747, 20.980339, 13.181940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639580, 0.177528, 0.747945,
		-0.766186, -0.226222, -0.601484,
		0.062421, -0.957762, 0.280707,
		22.278473, 20.693010, 13.266152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.567465, 21.190842, 13.348075>,  <22.234777, 21.363443, 13.069657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.567465, 21.190842, 13.348075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.799019, 20.890442, 13.475132>,  <21.937950, 20.710203, 13.551366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.799019, 20.890442, 13.475132>,  <21.567465, 21.190842, 13.348075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.799019, 20.890442, 13.475132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487703, -0.006693, 0.872984,
		-0.653483, -0.660271, -0.370138,
		0.578883, -0.750997, 0.317643,
		21.972683, 20.665142, 13.570425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.077538, 20.848112, 13.748852>,  <21.567465, 21.190842, 13.348075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.077538, 20.848112, 13.748852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.445293, 20.729492, 13.852219>,  <21.665947, 20.658319, 13.914239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.445293, 20.729492, 13.852219>,  <21.077538, 20.848112, 13.748852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.445293, 20.729492, 13.852219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286898, -0.056120, 0.956316,
		-0.269096, -0.953366, -0.136676,
		0.919389, -0.296553, 0.258417,
		21.721111, 20.640526, 13.929744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.957474, 20.226862, 14.099432>,  <21.077538, 20.848112, 13.748852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.957474, 20.226862, 14.099432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.312637, 20.381088, 14.199799>,  <21.525736, 20.473623, 14.260018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.312637, 20.381088, 14.199799>,  <20.957474, 20.226862, 14.099432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.312637, 20.381088, 14.199799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278954, 0.017556, 0.960144,
		0.365794, -0.922513, 0.123143,
		0.887908, 0.385566, 0.250917,
		21.579010, 20.496758, 14.275074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.136066, 19.781437, 14.739725>,  <20.957474, 20.226862, 14.099432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.136066, 19.781437, 14.739725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.337196, 20.126942, 14.726543>,  <21.457874, 20.334244, 14.718635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.337196, 20.126942, 14.726543>,  <21.136066, 19.781437, 14.739725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.337196, 20.126942, 14.726543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270732, 0.193579, 0.942991,
		0.820898, -0.465235, 0.331184,
		0.502823, 0.863761, -0.032954,
		21.488043, 20.386070, 14.716658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.317188, 19.961519, 15.382990>,  <21.136066, 19.781437, 14.739725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.317188, 19.961519, 15.382990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.435509, 20.321541, 15.254986>,  <21.506500, 20.537554, 15.178184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.435509, 20.321541, 15.254986>,  <21.317188, 19.961519, 15.382990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.435509, 20.321541, 15.254986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370147, 0.416826, 0.830209,
		0.880621, -0.127125, 0.456449,
		0.295800, 0.900053, -0.320011,
		21.524248, 20.591557, 15.158982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.748856, 20.294819, 15.855476>,  <21.317188, 19.961519, 15.382990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.748856, 20.294819, 15.855476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.583233, 20.581551, 15.631081>,  <21.483858, 20.753590, 15.496444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.583233, 20.581551, 15.631081>,  <21.748856, 20.294819, 15.855476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.583233, 20.581551, 15.631081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344391, 0.447118, 0.825518,
		0.842585, 0.535013, 0.061738,
		-0.414059, 0.716831, -0.560989,
		21.459015, 20.796600, 15.462784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.003736, 21.015198, 16.071953>,  <21.748856, 20.294819, 15.855476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.003736, 21.015198, 16.071953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.649754, 21.048729, 15.888725>,  <21.437365, 21.068848, 15.778789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.649754, 21.048729, 15.888725>,  <22.003736, 21.015198, 16.071953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.649754, 21.048729, 15.888725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366967, 0.480040, 0.796804,
		0.286686, 0.873232, -0.394052,
		-0.884956, 0.083828, -0.458068,
		21.384268, 21.073877, 15.751305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.783920, 21.589357, 16.329737>,  <22.003736, 21.015198, 16.071953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.783920, 21.589357, 16.329737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.456062, 21.422668, 16.172499>,  <21.259348, 21.322655, 16.078156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.456062, 21.422668, 16.172499>,  <21.783920, 21.589357, 16.329737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.456062, 21.422668, 16.172499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505055, 0.201798, 0.839164,
		-0.270373, 0.886352, -0.375871,
		-0.819645, -0.416723, -0.393096,
		21.210169, 21.297651, 16.054569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.324429, 22.005161, 16.468237>,  <21.783920, 21.589357, 16.329737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.324429, 22.005161, 16.468237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.120579, 21.674232, 16.373734>,  <20.998268, 21.475676, 16.317032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.120579, 21.674232, 16.373734>,  <21.324429, 22.005161, 16.468237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.120579, 21.674232, 16.373734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543428, 0.096616, 0.833878,
		-0.667060, 0.553355, -0.498828,
		-0.509625, -0.827323, -0.236260,
		20.967691, 21.426035, 16.302855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.533304, 22.151731, 16.497042>,  <21.324429, 22.005161, 16.468237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.533304, 22.151731, 16.497042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.552906, 21.752689, 16.516562>,  <20.564667, 21.513264, 16.528273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.552906, 21.752689, 16.516562>,  <20.533304, 22.151731, 16.497042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.552906, 21.752689, 16.516562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644094, 0.005779, 0.764925,
		-0.763375, -0.068915, -0.642269,
		0.049003, -0.997606, 0.048799,
		20.567608, 21.453407, 16.531200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.856602, 21.941988, 16.526781>,  <20.533304, 22.151731, 16.497042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.856602, 21.941988, 16.526781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.079063, 21.648575, 16.683050>,  <20.212540, 21.472527, 16.776812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.079063, 21.648575, 16.683050>,  <19.856602, 21.941988, 16.526781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.079063, 21.648575, 16.683050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587638, -0.014675, 0.808991,
		-0.587687, -0.679497, -0.439212,
		0.556152, -0.733531, 0.390674,
		20.245909, 21.428516, 16.800253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.330618, 21.441631, 16.764175>,  <19.856602, 21.941988, 16.526781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.330618, 21.441631, 16.764175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.681301, 21.341900, 16.928719>,  <19.891710, 21.282061, 17.027445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.681301, 21.341900, 16.928719>,  <19.330618, 21.441631, 16.764175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.681301, 21.341900, 16.928719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466966, -0.235925, 0.852222,
		-0.115430, -0.939242, -0.323265,
		0.876709, -0.249326, 0.411361,
		19.944313, 21.267101, 17.052126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.136879, 20.919886, 17.159075>,  <19.330618, 21.441631, 16.764175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.136879, 20.919886, 17.159075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.483559, 21.042095, 17.316805>,  <19.691566, 21.115421, 17.411444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.483559, 21.042095, 17.316805>,  <19.136879, 20.919886, 17.159075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.483559, 21.042095, 17.316805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389013, -0.080864, 0.917676,
		0.312257, -0.948745, 0.048767,
		0.866697, 0.305522, 0.394325,
		19.743568, 21.133753, 17.435102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.160536, 20.551622, 17.661085>,  <19.136879, 20.919886, 17.159075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.160536, 20.551622, 17.661085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.416458, 20.840069, 17.767397>,  <19.570011, 21.013138, 17.831184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.416458, 20.840069, 17.767397>,  <19.160536, 20.551622, 17.661085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.416458, 20.840069, 17.767397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377995, -0.005839, 0.925789,
		0.669155, -0.692788, 0.268843,
		0.639806, 0.721118, 0.265778,
		19.608400, 21.056404, 17.847130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.440556, 20.325563, 18.282021>,  <19.160536, 20.551622, 17.661085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.440556, 20.325563, 18.282021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.507687, 20.718578, 18.314169>,  <19.547964, 20.954388, 18.333458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.507687, 20.718578, 18.314169>,  <19.440556, 20.325563, 18.282021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.507687, 20.718578, 18.314169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205818, -0.044808, 0.977564,
		0.964092, -0.180602, 0.194703,
		0.167826, 0.982535, 0.080370,
		19.558035, 21.013338, 18.338280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.737425, 20.377123, 18.828522>,  <19.440556, 20.325563, 18.282021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.737425, 20.377123, 18.828522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.620045, 20.756290, 18.778982>,  <19.549616, 20.983791, 18.749258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.620045, 20.756290, 18.778982>,  <19.737425, 20.377123, 18.828522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.620045, 20.756290, 18.778982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261446, 0.045035, 0.964167,
		0.919529, 0.315314, 0.234614,
		-0.293450, 0.947918, -0.123849,
		19.532009, 21.040667, 18.741827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.929501, 20.767513, 19.392393>,  <19.737425, 20.377123, 18.828522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.929501, 20.767513, 19.392393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.629311, 20.972366, 19.225298>,  <19.449196, 21.095278, 19.125040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.629311, 20.972366, 19.225298>,  <19.929501, 20.767513, 19.392393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.629311, 20.972366, 19.225298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480646, 0.010896, 0.876847,
		0.453614, 0.858837, 0.237978,
		-0.750475, 0.512134, -0.417739,
		19.404167, 21.126007, 19.099976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.832188, 21.326111, 19.812860>,  <19.929501, 20.767513, 19.392393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.832188, 21.326111, 19.812860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.502411, 21.319405, 19.586580>,  <19.304544, 21.315380, 19.450811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.502411, 21.319405, 19.586580>,  <19.832188, 21.326111, 19.812860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.502411, 21.319405, 19.586580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547983, 0.273506, 0.790512,
		0.141469, 0.961724, -0.234677,
		-0.824439, -0.016766, -0.565702,
		19.255079, 21.314375, 19.416870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.536448, 21.900646, 19.900026>,  <19.832188, 21.326111, 19.812860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.536448, 21.900646, 19.900026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.231552, 21.662659, 19.798040>,  <19.048615, 21.519867, 19.736849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.231552, 21.662659, 19.798040>,  <19.536448, 21.900646, 19.900026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.231552, 21.662659, 19.798040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517218, 0.322983, 0.792570,
		-0.389203, 0.736000, -0.553917,
		-0.762238, -0.594967, -0.254967,
		19.002880, 21.484169, 19.721550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.885809, 22.289743, 19.801968>,  <19.536448, 21.900646, 19.900026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.885809, 22.289743, 19.801968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803623, 21.909016, 19.893026>,  <18.754313, 21.680578, 19.947662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.803623, 21.909016, 19.893026>,  <18.885809, 22.289743, 19.801968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.803623, 21.909016, 19.893026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510524, 0.302695, 0.804824,
		-0.834955, 0.049143, -0.548120,
		-0.205465, -0.951820, 0.227648,
		18.741983, 21.623470, 19.961321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.201689, 22.162848, 19.899353>,  <18.885809, 22.289743, 19.801968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.201689, 22.162848, 19.899353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.331287, 21.845505, 20.105503>,  <18.409046, 21.655100, 20.229193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.331287, 21.845505, 20.105503>,  <18.201689, 22.162848, 19.899353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.331287, 21.845505, 20.105503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390820, 0.383866, 0.836604,
		-0.861561, -0.472474, -0.185690,
		0.323994, -0.793357, 0.515376,
		18.428486, 21.607498, 20.260117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.716438, 22.253395, 20.346359>,  <18.201689, 22.162848, 19.899353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.716438, 22.253395, 20.346359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.934837, 21.959366, 20.507133>,  <18.065876, 21.782948, 20.603598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.934837, 21.959366, 20.507133>,  <17.716438, 22.253395, 20.346359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.934837, 21.959366, 20.507133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475364, 0.123236, 0.871116,
		-0.689868, -0.666692, -0.282142,
		0.545995, -0.735075, 0.401937,
		18.098637, 21.738844, 20.627714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.215809, 21.790112, 20.612604>,  <17.716438, 22.253395, 20.346359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.215809, 21.790112, 20.612604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.570377, 21.706066, 20.777582>,  <17.783117, 21.655638, 20.876570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.570377, 21.706066, 20.777582>,  <17.215809, 21.790112, 20.612604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.570377, 21.706066, 20.777582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398627, 0.106396, 0.910921,
		-0.235281, -0.971870, 0.010554,
		0.886419, -0.210115, 0.412447,
		17.836304, 21.643032, 20.901316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086987, 21.289791, 21.093325>,  <17.215809, 21.790112, 20.612604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.086987, 21.289791, 21.093325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.413052, 21.470043, 21.238895>,  <17.608690, 21.578196, 21.326237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.413052, 21.470043, 21.238895>,  <17.086987, 21.289791, 21.093325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.413052, 21.470043, 21.238895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439816, 0.072692, 0.895141,
		0.376924, -0.889746, 0.257450,
		0.815163, 0.450631, 0.363925,
		17.657600, 21.605232, 21.348072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.006271, 21.248016, 21.764528>,  <17.086987, 21.289791, 21.093325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.006271, 21.248016, 21.764528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.330463, 21.482140, 21.773758>,  <17.524979, 21.622614, 21.779297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.330463, 21.482140, 21.773758>,  <17.006271, 21.248016, 21.764528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.330463, 21.482140, 21.773758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138432, 0.153113, 0.978465,
		0.569172, -0.796222, 0.205121,
		0.810481, 0.585309, 0.023075,
		17.573608, 21.657732, 21.780680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.239279, 21.170181, 22.472403>,  <17.006271, 21.248016, 21.764528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.239279, 21.170181, 22.472403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.372841, 21.515907, 22.321953>,  <17.452978, 21.723343, 22.231684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.372841, 21.515907, 22.321953>,  <17.239279, 21.170181, 22.472403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.372841, 21.515907, 22.321953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159677, 0.445124, 0.881117,
		0.928983, -0.234152, 0.286641,
		0.333907, 0.864313, -0.376124,
		17.473013, 21.775202, 22.209116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.746574, 21.396351, 22.922262>,  <17.239279, 21.170181, 22.472403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.746574, 21.396351, 22.922262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.611423, 21.705738, 22.707754>,  <17.530333, 21.891371, 22.579050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.611423, 21.705738, 22.707754>,  <17.746574, 21.396351, 22.922262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.611423, 21.705738, 22.707754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245136, 0.477792, 0.843577,
		0.908706, 0.416484, 0.028171,
		-0.337876, 0.773470, -0.536268,
		17.510061, 21.937778, 22.546873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.010954, 22.016464, 23.078299>,  <17.746574, 21.396351, 22.922262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.010954, 22.016464, 23.078299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.624050, 22.051926, 22.983175>,  <17.391909, 22.073202, 22.926102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.624050, 22.051926, 22.983175>,  <18.010954, 22.016464, 23.078299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.624050, 22.051926, 22.983175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133017, 0.620924, 0.772502,
		0.216146, 0.778841, -0.588801,
		-0.967258, 0.088653, -0.237810,
		17.333874, 22.078522, 22.911833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.740067, 22.633039, 23.417202>,  <18.010954, 22.016464, 23.078299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.740067, 22.633039, 23.417202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.424950, 22.400047, 23.337105>,  <17.235880, 22.260252, 23.289047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.424950, 22.400047, 23.337105>,  <17.740067, 22.633039, 23.417202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.424950, 22.400047, 23.337105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530704, 0.476896, 0.700660,
		-0.312627, 0.658244, -0.684820,
		-0.787793, -0.582482, -0.200243,
		17.188612, 22.225304, 23.277033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.242184, 22.985704, 23.759180>,  <17.740067, 22.633039, 23.417202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.242184, 22.985704, 23.759180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.064117, 22.643154, 23.654528>,  <16.957277, 22.437624, 23.591736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.064117, 22.643154, 23.654528>,  <17.242184, 22.985704, 23.759180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.064117, 22.643154, 23.654528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675437, 0.129311, 0.725991,
		-0.587889, 0.499900, -0.635993,
		-0.445164, -0.856375, -0.261630,
		16.930569, 22.386242, 23.576038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.613224, 23.141342, 23.713785>,  <17.242184, 22.985704, 23.759180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.613224, 23.141342, 23.713785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.591995, 22.742783, 23.740221>,  <16.579258, 22.503647, 23.756083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.591995, 22.742783, 23.740221>,  <16.613224, 23.141342, 23.713785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.591995, 22.742783, 23.740221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755018, 0.083355, 0.650384,
		-0.653552, -0.015383, -0.756725,
		-0.053072, -0.996401, 0.066091,
		16.576075, 22.443863, 23.760048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040653, 22.924437, 23.393476>,  <16.613224, 23.141342, 23.713785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.040653, 22.924437, 23.393476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168663, 22.730785, 23.719227>,  <16.245468, 22.614595, 23.914677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168663, 22.730785, 23.719227>,  <16.040653, 22.924437, 23.393476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.168663, 22.730785, 23.719227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730727, 0.420980, 0.537415,
		-0.603012, -0.767071, -0.219042,
		0.320023, -0.484127, 0.814375,
		16.264669, 22.585546, 23.963539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.597000, 22.471472, 23.686836>,  <16.040653, 22.924437, 23.393476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.597000, 22.471472, 23.686836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.819098, 22.582027, 24.000603>,  <15.952357, 22.648361, 24.188864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.819098, 22.582027, 24.000603>,  <15.597000, 22.471472, 23.686836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.819098, 22.582027, 24.000603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831686, 0.183527, 0.524038,
		0.000876, -0.943359, 0.331771,
		0.555245, 0.276389, 0.784418,
		15.985672, 22.664944, 24.235928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.843497, 22.564123, 23.541758>,  <15.597000, 22.471472, 23.686836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.843497, 22.564123, 23.541758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.938861, 22.227757, 23.347431>,  <14.996079, 22.025936, 23.230835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.938861, 22.227757, 23.347431>,  <14.843497, 22.564123, 23.541758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.938861, 22.227757, 23.347431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107675, 0.474267, -0.873771,
		0.965177, 0.260626, 0.022525,
		0.238410, -0.840919, -0.485815,
		15.010384, 21.975481, 23.201687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.402068, 22.703880, 22.963236>,  <14.843497, 22.564123, 23.541758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.402068, 22.703880, 22.963236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.197879, 22.375107, 22.862165>,  <15.075365, 22.177843, 22.801523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.197879, 22.375107, 22.862165>,  <15.402068, 22.703880, 22.963236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.197879, 22.375107, 22.862165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041833, 0.317237, -0.947423,
		0.858876, -0.473063, -0.196325,
		-0.510472, -0.821932, -0.252677,
		15.044737, 22.128527, 22.786362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.552432, 23.281532, 22.553370>,  <15.402068, 22.703880, 22.963236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.552432, 23.281532, 22.553370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.537803, 23.676010, 22.617968>,  <15.529025, 23.912697, 22.656727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.537803, 23.676010, 22.617968>,  <15.552432, 23.281532, 22.553370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.537803, 23.676010, 22.617968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074761, 0.158451, -0.984532,
		-0.996531, -0.048080, 0.067934,
		-0.036572, 0.986195, 0.161496,
		15.526831, 23.971869, 22.666416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.902462, 23.579248, 22.340759>,  <15.552432, 23.281532, 22.553370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.902462, 23.579248, 22.340759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.254449, 23.762566, 22.290756>,  <15.465641, 23.872557, 22.260754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.254449, 23.762566, 22.290756>,  <14.902462, 23.579248, 22.340759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.254449, 23.762566, 22.290756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018746, -0.229447, -0.973141,
		-0.474665, 0.858675, -0.193314,
		0.879967, 0.458292, -0.125007,
		15.518439, 23.900053, 22.253254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.822383, 24.004553, 21.749628>,  <14.902462, 23.579248, 22.340759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.822383, 24.004553, 21.749628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.194037, 23.866695, 21.803183>,  <15.417030, 23.783981, 21.835316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.194037, 23.866695, 21.803183>,  <14.822383, 24.004553, 21.749628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.194037, 23.866695, 21.803183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036164, -0.275663, -0.960574,
		0.367965, 0.897346, -0.243665,
		0.929136, -0.344645, 0.133886,
		15.472778, 23.763302, 21.843348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.259079, 24.279440, 21.160774>,  <14.822383, 24.004553, 21.749628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.259079, 24.279440, 21.160774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.381223, 23.932186, 21.317287>,  <15.454509, 23.723835, 21.411196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.381223, 23.932186, 21.317287>,  <15.259079, 24.279440, 21.160774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.381223, 23.932186, 21.317287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182931, -0.349774, -0.918800,
		0.934501, 0.352143, 0.052001,
		0.305360, -0.868132, 0.391282,
		15.472831, 23.671747, 21.434671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.931101, 24.266289, 21.053205>,  <15.259079, 24.279440, 21.160774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.931101, 24.266289, 21.053205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.840985, 23.878716, 21.094015>,  <15.786916, 23.646172, 21.118500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.840985, 23.878716, 21.094015>,  <15.931101, 24.266289, 21.053205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840985, 23.878716, 21.094015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181887, -0.144700, -0.972614,
		0.957163, -0.200564, 0.208837,
		-0.225290, -0.968935, 0.102022,
		15.773398, 23.588036, 21.124622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.434401, 23.893848, 20.736280>,  <15.931101, 24.266289, 21.053205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.434401, 23.893848, 20.736280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.143341, 23.619518, 20.741516>,  <15.968705, 23.454920, 20.744658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.143341, 23.619518, 20.741516>,  <16.434401, 23.893848, 20.736280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143341, 23.619518, 20.741516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307111, -0.342787, -0.887795,
		0.613358, -0.641984, 0.460053,
		-0.727650, -0.685824, 0.013091,
		15.925046, 23.413771, 20.745443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.704666, 23.354694, 20.398443>,  <16.434401, 23.893848, 20.736280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.704666, 23.354694, 20.398443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.308407, 23.302261, 20.383295>,  <16.070652, 23.270802, 20.374207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.308407, 23.302261, 20.383295>,  <16.704666, 23.354694, 20.398443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.308407, 23.302261, 20.383295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080816, -0.340073, -0.936920,
		0.109934, -0.931218, 0.347486,
		-0.990648, -0.131082, -0.037872,
		16.011213, 23.262938, 20.371933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.643824, 22.804964, 19.903919>,  <16.704666, 23.354694, 20.398443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.643824, 22.804964, 19.903919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.273895, 22.955940, 19.922880>,  <16.051939, 23.046526, 19.934256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.273895, 22.955940, 19.922880>,  <16.643824, 22.804964, 19.903919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.273895, 22.955940, 19.922880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117688, -0.165392, -0.979181,
		-0.361746, -0.911143, 0.197378,
		-0.924819, 0.377444, 0.047401,
		15.996449, 23.069174, 19.937101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.267071, 22.480949, 19.398611>,  <16.643824, 22.804964, 19.903919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.267071, 22.480949, 19.398611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.038601, 22.805462, 19.448538>,  <15.901519, 23.000170, 19.478495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.038601, 22.805462, 19.448538>,  <16.267071, 22.480949, 19.398611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.038601, 22.805462, 19.448538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013976, 0.142429, -0.989706,
		-0.820710, -0.567039, -0.070013,
		-0.571174, 0.811283, 0.124818,
		15.867249, 23.048847, 19.485983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.730396, 22.402939, 19.039783>,  <16.267071, 22.480949, 19.398611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.730396, 22.402939, 19.039783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.766944, 22.800537, 19.063875>,  <15.788873, 23.039095, 19.078331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.766944, 22.800537, 19.063875>,  <15.730396, 22.402939, 19.039783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.766944, 22.800537, 19.063875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016114, 0.059001, -0.998128,
		-0.995687, 0.092168, -0.010626,
		0.091369, 0.993994, 0.060231,
		15.794354, 23.098736, 19.081945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.286469, 22.691036, 18.511862>,  <15.730396, 22.402939, 19.039783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.286469, 22.691036, 18.511862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.516273, 23.004314, 18.606977>,  <15.654155, 23.192282, 18.664047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.516273, 23.004314, 18.606977>,  <15.286469, 22.691036, 18.511862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.516273, 23.004314, 18.606977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040082, 0.263253, -0.963894,
		-0.817517, 0.563296, 0.119849,
		0.574508, 0.783195, 0.237791,
		15.688625, 23.239273, 18.678314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.071181, 23.337395, 18.027838>,  <15.286469, 22.691036, 18.511862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.071181, 23.337395, 18.027838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.446157, 23.422211, 18.138290>,  <15.671142, 23.473101, 18.204561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.446157, 23.422211, 18.138290>,  <15.071181, 23.337395, 18.027838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.446157, 23.422211, 18.138290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260102, 0.100661, -0.960320,
		-0.231420, 0.972063, 0.039212,
		0.937439, 0.212039, 0.276131,
		15.727388, 23.485823, 18.221130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.271317, 23.779819, 17.569284>,  <15.071181, 23.337395, 18.027838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.271317, 23.779819, 17.569284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.626687, 23.664169, 17.711895>,  <15.839909, 23.594780, 17.797462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.626687, 23.664169, 17.711895>,  <15.271317, 23.779819, 17.569284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.626687, 23.664169, 17.711895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412709, 0.163122, -0.896137,
		0.200937, 0.943292, 0.264245,
		0.888423, -0.289123, 0.356528,
		15.893214, 23.577433, 17.818853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.763858, 24.081261, 17.159359>,  <15.271317, 23.779819, 17.569284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.763858, 24.081261, 17.159359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.011684, 23.812447, 17.321596>,  <16.160379, 23.651157, 17.418938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.011684, 23.812447, 17.321596>,  <15.763858, 24.081261, 17.159359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.011684, 23.812447, 17.321596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567715, 0.026816, -0.822788,
		0.542068, 0.740032, 0.398140,
		0.619566, -0.672037, 0.405591,
		16.197554, 23.610836, 17.443274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.454405, 24.400135, 16.985441>,  <15.763858, 24.081261, 17.159359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.454405, 24.400135, 16.985441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.495823, 24.012981, 17.077076>,  <16.520674, 23.780689, 17.132057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.495823, 24.012981, 17.077076>,  <16.454405, 24.400135, 16.985441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.495823, 24.012981, 17.077076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613393, -0.119172, -0.780735,
		0.782961, 0.221361, 0.581353,
		0.103543, -0.967883, 0.229089,
		16.526886, 23.722616, 17.145803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.132263, 24.332439, 17.074045>,  <16.454405, 24.400135, 16.985441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.132263, 24.332439, 17.074045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.966442, 23.982353, 16.974333>,  <16.866949, 23.772301, 16.914505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.966442, 23.982353, 16.974333>,  <17.132263, 24.332439, 17.074045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.966442, 23.982353, 16.974333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690902, -0.124413, -0.712163,
		0.592283, -0.467459, 0.656265,
		-0.414555, -0.875216, -0.249280,
		16.842075, 23.719788, 16.899549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.674789, 23.903400, 17.021404>,  <17.132263, 24.332439, 17.074045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.674789, 23.903400, 17.021404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.395008, 23.699501, 16.821035>,  <17.227139, 23.577162, 16.700815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.395008, 23.699501, 16.821035>,  <17.674789, 23.903400, 17.021404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.395008, 23.699501, 16.821035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688615, -0.293139, -0.663234,
		0.191243, -0.808843, 0.556057,
		-0.699454, -0.509748, -0.500920,
		17.185171, 23.546577, 16.670759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846218, 23.145399, 16.928154>,  <17.674789, 23.903400, 17.021404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.846218, 23.145399, 16.928154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.594913, 23.235924, 16.630411>,  <17.444130, 23.290237, 16.451765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.594913, 23.235924, 16.630411>,  <17.846218, 23.145399, 16.928154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.594913, 23.235924, 16.630411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629525, -0.414307, -0.657303,
		-0.457147, -0.881552, 0.117826,
		-0.628263, 0.226310, -0.744358,
		17.406435, 23.303816, 16.407104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.041208, 22.696926, 16.368671>,  <17.846218, 23.145399, 16.928154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.041208, 22.696926, 16.368671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.801270, 22.955437, 16.179987>,  <17.657307, 23.110542, 16.066776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.801270, 22.955437, 16.179987>,  <18.041208, 22.696926, 16.368671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.801270, 22.955437, 16.179987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562394, -0.078785, -0.823107,
		-0.569118, -0.759026, -0.316202,
		-0.599848, 0.646275, -0.471709,
		17.621315, 23.149319, 16.038473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020105, 22.350027, 15.740353>,  <18.041208, 22.696926, 16.368671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.020105, 22.350027, 15.740353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.845234, 22.701832, 15.665165>,  <17.740311, 22.912914, 15.620052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.845234, 22.701832, 15.665165>,  <18.020105, 22.350027, 15.740353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.845234, 22.701832, 15.665165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351459, -0.025313, -0.935861,
		-0.827860, -0.475200, -0.298047,
		-0.437177, 0.879513, -0.187969,
		17.714081, 22.965685, 15.608774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.737911, 22.254793, 15.039536>,  <18.020105, 22.350027, 15.740353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.737911, 22.254793, 15.039536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.788616, 22.642624, 15.123297>,  <17.819038, 22.875322, 15.173553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.788616, 22.642624, 15.123297>,  <17.737911, 22.254793, 15.039536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.788616, 22.642624, 15.123297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392047, 0.144945, -0.908455,
		-0.911170, 0.197252, -0.361747,
		0.126761, 0.969579, 0.209401,
		17.826645, 22.933498, 15.186117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588137, 22.624420, 14.454470>,  <17.737911, 22.254793, 15.039536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.588137, 22.624420, 14.454470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.828251, 22.881992, 14.644211>,  <17.972321, 23.036535, 14.758056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.828251, 22.881992, 14.644211>,  <17.588137, 22.624420, 14.454470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.828251, 22.881992, 14.644211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512075, 0.146145, -0.846416,
		-0.614357, 0.750997, -0.242011,
		0.600287, 0.643929, 0.474352,
		18.008337, 23.075171, 14.786516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.761580, 23.089310, 13.915196>,  <17.588137, 22.624420, 14.454470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.761580, 23.089310, 13.915196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032696, 23.176258, 14.196152>,  <18.195366, 23.228428, 14.364725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032696, 23.176258, 14.196152>,  <17.761580, 23.089310, 13.915196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032696, 23.176258, 14.196152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609934, 0.367235, -0.702225,
		-0.410584, 0.904372, 0.116327,
		0.677792, 0.217370, 0.702388,
		18.236032, 23.241468, 14.406868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.977209, 23.826157, 13.641669>,  <17.761580, 23.089310, 13.915196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.977209, 23.826157, 13.641669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.246979, 23.636028, 13.867668>,  <18.408840, 23.521952, 14.003267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.246979, 23.636028, 13.867668>,  <17.977209, 23.826157, 13.641669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.246979, 23.636028, 13.867668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700120, 0.168672, -0.693817,
		0.234486, 0.863493, 0.446539,
		0.674424, -0.475321, 0.564997,
		18.449306, 23.493431, 14.037168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.466908, 24.267315, 13.737372>,  <17.977209, 23.826157, 13.641669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.466908, 24.267315, 13.737372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.666222, 23.930496, 13.819996>,  <18.785810, 23.728405, 13.869570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.666222, 23.930496, 13.819996>,  <18.466908, 24.267315, 13.737372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.666222, 23.930496, 13.819996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681834, 0.233416, -0.693267,
		0.535550, 0.486283, 0.690445,
		0.498285, -0.842048, 0.206559,
		18.815706, 23.677881, 13.881964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.172522, 24.442207, 13.727987>,  <18.466908, 24.267315, 13.737372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.172522, 24.442207, 13.727987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.214481, 24.044777, 13.711002>,  <19.239656, 23.806318, 13.700811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.214481, 24.044777, 13.711002>,  <19.172522, 24.442207, 13.727987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.214481, 24.044777, 13.711002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788643, 0.109123, -0.605091,
		0.605837, 0.029986, 0.795024,
		0.104900, -0.993576, -0.042463,
		19.245951, 23.746704, 13.698263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.888983, 24.283373, 13.656919>,  <19.172522, 24.442207, 13.727987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.888983, 24.283373, 13.656919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.684986, 23.963543, 13.530054>,  <19.562588, 23.771645, 13.453936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.684986, 23.963543, 13.530054>,  <19.888983, 24.283373, 13.656919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.684986, 23.963543, 13.530054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633282, -0.099485, -0.767501,
		0.582121, -0.592269, 0.557092,
		-0.509989, -0.799575, -0.317161,
		19.531990, 23.723671, 13.434906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.323887, 23.632780, 13.711255>,  <19.888983, 24.283373, 13.656919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.323887, 23.632780, 13.711255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.047787, 23.588295, 13.425266>,  <19.882126, 23.561604, 13.253673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.047787, 23.588295, 13.425266>,  <20.323887, 23.632780, 13.711255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.047787, 23.588295, 13.425266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713412, -0.269589, -0.646812,
		-0.120816, -0.956532, 0.265423,
		-0.690252, -0.111211, -0.714972,
		19.840712, 23.554932, 13.210774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.493809, 23.047541, 13.267104>,  <20.323887, 23.632780, 13.711255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.493809, 23.047541, 13.267104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.242584, 23.244419, 13.026012>,  <20.091850, 23.362545, 12.881357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.242584, 23.244419, 13.026012>,  <20.493809, 23.047541, 13.267104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.242584, 23.244419, 13.026012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598090, -0.190188, -0.778535,
		-0.497823, -0.849454, -0.174927,
		-0.628061, 0.492195, -0.602730,
		20.054167, 23.392078, 12.845194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.379808, 22.587704, 12.698971>,  <20.493809, 23.047541, 13.267104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.379808, 22.587704, 12.698971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.263523, 22.951027, 12.578664>,  <20.193752, 23.169022, 12.506479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.263523, 22.951027, 12.578664>,  <20.379808, 22.587704, 12.698971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.263523, 22.951027, 12.578664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592352, -0.076006, -0.802086,
		-0.751402, -0.411338, -0.515942,
		-0.290714, 0.908308, -0.300768,
		20.176310, 23.223520, 12.488433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.327879, 22.484879, 11.954230>,  <20.379808, 22.587704, 12.698971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.327879, 22.484879, 11.954230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.329174, 22.880520, 12.013102>,  <20.329950, 23.117905, 12.048425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.329174, 22.880520, 12.013102>,  <20.327879, 22.484879, 11.954230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.329174, 22.880520, 12.013102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472961, 0.128162, -0.871712,
		-0.881077, 0.072431, -0.467393,
		0.003237, 0.989105, 0.147178,
		20.330145, 23.177252, 12.057255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.829151, 22.714077, 11.427851>,  <20.327879, 22.484879, 11.954230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.829151, 22.714077, 11.427851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.084091, 22.992508, 11.560069>,  <20.237055, 23.159567, 11.639400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.084091, 22.992508, 11.560069>,  <19.829151, 22.714077, 11.427851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.084091, 22.992508, 11.560069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426522, 0.038579, -0.903654,
		-0.641765, 0.716930, -0.272303,
		0.637351, 0.696077, 0.330545,
		20.275297, 23.201330, 11.659233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.886015, 23.212307, 10.837001>,  <19.829151, 22.714077, 11.427851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.886015, 23.212307, 10.837001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.198364, 23.294819, 11.072861>,  <20.385773, 23.344326, 11.214376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.198364, 23.294819, 11.072861>,  <19.886015, 23.212307, 10.837001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.198364, 23.294819, 11.072861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582390, 0.101043, -0.806605,
		-0.225966, 0.973262, -0.041233,
		0.780872, 0.206279, 0.589650,
		20.432627, 23.356703, 11.249756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148380, 23.759399, 10.456351>,  <19.886015, 23.212307, 10.837001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148380, 23.759399, 10.456351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.438503, 23.652077, 10.709946>,  <20.612577, 23.587683, 10.862103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.438503, 23.652077, 10.709946>,  <20.148380, 23.759399, 10.456351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.438503, 23.652077, 10.709946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655535, -0.012069, -0.755069,
		0.210241, 0.963258, 0.167129,
		0.725309, -0.268305, 0.633987,
		20.656096, 23.571585, 10.900142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.762915, 24.282389, 10.363021>,  <20.148380, 23.759399, 10.456351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.762915, 24.282389, 10.363021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.868176, 23.925602, 10.510069>,  <20.931332, 23.711529, 10.598298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.868176, 23.925602, 10.510069>,  <20.762915, 24.282389, 10.363021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.868176, 23.925602, 10.510069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562944, -0.167487, -0.809347,
		0.783483, 0.419931, 0.458053,
		0.263152, -0.891968, 0.367620,
		20.947121, 23.658012, 10.620355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.437080, 24.159643, 10.171296>,  <20.762915, 24.282389, 10.363021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.437080, 24.159643, 10.171296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.333179, 23.785404, 10.266952>,  <21.270838, 23.560862, 10.324345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.333179, 23.785404, 10.266952>,  <21.437080, 24.159643, 10.171296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.333179, 23.785404, 10.266952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555578, -0.347338, -0.755440,
		0.789849, -0.063368, 0.610020,
		-0.259754, -0.935596, 0.239139,
		21.255253, 23.504725, 10.338693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.101330, 23.770069, 10.085667>,  <21.437080, 24.159643, 10.171296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.101330, 23.770069, 10.085667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.798702, 23.508606, 10.078310>,  <21.617126, 23.351728, 10.073896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.798702, 23.508606, 10.078310>,  <22.101330, 23.770069, 10.085667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.798702, 23.508606, 10.078310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420507, -0.464787, -0.779196,
		0.500779, -0.597248, 0.626510,
		-0.756567, -0.653657, -0.018391,
		21.571732, 23.312510, 10.072793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.474768, 23.194389, 10.072403>,  <22.101330, 23.770069, 10.085667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.474768, 23.194389, 10.072403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.121620, 23.071186, 9.930601>,  <21.909731, 22.997265, 9.845520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.121620, 23.071186, 9.930601>,  <22.474768, 23.194389, 10.072403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.121620, 23.071186, 9.930601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463617, -0.451328, -0.762471,
		0.074849, -0.837517, 0.541261,
		-0.882869, -0.308008, -0.354506,
		21.856760, 22.978785, 9.824249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.530397, 22.478973, 9.885106>,  <22.474768, 23.194389, 10.072403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.530397, 22.478973, 9.885106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.213470, 22.613754, 9.681656>,  <22.023315, 22.694622, 9.559586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.213470, 22.613754, 9.681656>,  <22.530397, 22.478973, 9.885106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.213470, 22.613754, 9.681656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357475, -0.419187, -0.834562,
		-0.494419, -0.843056, 0.211675,
		-0.792314, 0.336954, -0.508626,
		21.975777, 22.714840, 9.529068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.276112, 21.901999, 9.555037>,  <22.530397, 22.478973, 9.885106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.276112, 21.901999, 9.555037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.149357, 22.224701, 9.355547>,  <22.073305, 22.418322, 9.235852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.149357, 22.224701, 9.355547>,  <22.276112, 21.901999, 9.555037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.149357, 22.224701, 9.355547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223350, -0.447565, -0.865910,
		-0.921791, -0.385785, -0.038362,
		-0.316886, 0.806756, -0.498726,
		22.054291, 22.466728, 9.205929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.994112, 21.597952, 9.003327>,  <22.276112, 21.901999, 9.555037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.994112, 21.597952, 9.003327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.046265, 21.975788, 8.882829>,  <22.077557, 22.202490, 8.810530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.046265, 21.975788, 8.882829>,  <21.994112, 21.597952, 9.003327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.046265, 21.975788, 8.882829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281008, -0.326588, -0.902427,
		-0.950808, 0.033005, -0.308018,
		0.130380, 0.944591, -0.301247,
		22.085379, 22.259165, 8.792455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.658693, 21.596897, 8.367001>,  <21.994112, 21.597952, 9.003327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.658693, 21.596897, 8.367001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.896954, 21.918072, 8.375900>,  <22.039909, 22.110777, 8.381240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.896954, 21.918072, 8.375900>,  <21.658693, 21.596897, 8.367001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.896954, 21.918072, 8.375900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501818, -0.350355, -0.790841,
		-0.627201, 0.482228, -0.611617,
		0.595649, 0.802937, 0.022248,
		22.075647, 22.158953, 8.382575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.260984, 21.957096, 7.806777>,  <21.658693, 21.596897, 8.367001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.260984, 21.957096, 7.806777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.132969, 21.587234, 7.724232>,  <21.056160, 21.365316, 7.674704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.132969, 21.587234, 7.724232>,  <21.260984, 21.957096, 7.806777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.132969, 21.587234, 7.724232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827845, 0.167015, 0.535517,
		-0.460703, 0.342225, -0.818923,
		-0.320040, -0.924656, -0.206365,
		21.036957, 21.309837, 7.662323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.590292, 21.991510, 7.510076>,  <21.260984, 21.957096, 7.806777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.590292, 21.991510, 7.510076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.642616, 21.637531, 7.688850>,  <20.674011, 21.425144, 7.796115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.642616, 21.637531, 7.688850>,  <20.590292, 21.991510, 7.510076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.642616, 21.637531, 7.688850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745301, 0.209503, 0.632957,
		-0.653770, -0.415900, -0.632149,
		0.130810, -0.884949, 0.446937,
		20.681860, 21.372047, 7.822932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.856586, 21.655428, 7.637084>,  <20.590292, 21.991510, 7.510076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.856586, 21.655428, 7.637084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.083076, 21.434631, 7.881934>,  <20.218969, 21.302153, 8.028844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.083076, 21.434631, 7.881934>,  <19.856586, 21.655428, 7.637084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.083076, 21.434631, 7.881934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797068, -0.177533, 0.577205,
		-0.209940, -0.814732, -0.540498,
		0.566223, -0.551991, 0.612125,
		20.252943, 21.269033, 8.065572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.355032, 21.111397, 7.715626>,  <19.856586, 21.655428, 7.637084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.355032, 21.111397, 7.715626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.640415, 21.099781, 7.995665>,  <19.811646, 21.092812, 8.163688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.640415, 21.099781, 7.995665>,  <19.355032, 21.111397, 7.715626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.640415, 21.099781, 7.995665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700108, -0.070569, 0.710541,
		0.028773, -0.997084, -0.070677,
		0.713457, -0.029037, 0.700097,
		19.854452, 21.091068, 8.205693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.068663, 20.599031, 8.027266>,  <19.355032, 21.111397, 7.715626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.068663, 20.599031, 8.027266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.321041, 20.776031, 8.282168>,  <19.472469, 20.882233, 8.435110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.321041, 20.776031, 8.282168>,  <19.068663, 20.599031, 8.027266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.321041, 20.776031, 8.282168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647947, -0.151208, 0.746526,
		0.426698, -0.883927, 0.191314,
		0.630947, 0.442503, 0.637258,
		19.510324, 20.908783, 8.473346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.162380, 20.075741, 8.670074>,  <19.068663, 20.599031, 8.027266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.162380, 20.075741, 8.670074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.277008, 20.428959, 8.818725>,  <19.345785, 20.640890, 8.907915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.277008, 20.428959, 8.818725>,  <19.162380, 20.075741, 8.670074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.277008, 20.428959, 8.818725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430004, -0.228080, 0.873542,
		0.856138, -0.410133, 0.314352,
		0.286571, 0.883046, 0.371627,
		19.362980, 20.693872, 8.930213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.467062, 19.914627, 9.327926>,  <19.162380, 20.075741, 8.670074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.467062, 19.914627, 9.327926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.366367, 20.301727, 9.331774>,  <19.305950, 20.533987, 9.334083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.366367, 20.301727, 9.331774>,  <19.467062, 19.914627, 9.327926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.366367, 20.301727, 9.331774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373507, -0.106320, 0.921514,
		0.892817, 0.228385, 0.388226,
		-0.251736, 0.967748, 0.009621,
		19.290846, 20.592052, 9.334660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.479965, 20.119001, 10.013904>,  <19.467062, 19.914627, 9.327926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.479965, 20.119001, 10.013904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.291943, 20.435337, 9.857124>,  <19.179129, 20.625137, 9.763057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.291943, 20.435337, 9.857124>,  <19.479965, 20.119001, 10.013904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.291943, 20.435337, 9.857124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606335, 0.033376, 0.794509,
		0.641410, 0.611114, 0.463824,
		-0.470055, 0.790838, -0.391948,
		19.150927, 20.672588, 9.739540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.483841, 20.633484, 10.479127>,  <19.479965, 20.119001, 10.013904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.483841, 20.633484, 10.479127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.177181, 20.716099, 10.235950>,  <18.993185, 20.765667, 10.090043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.177181, 20.716099, 10.235950>,  <19.483841, 20.633484, 10.479127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.177181, 20.716099, 10.235950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597312, 0.117901, 0.793296,
		0.235521, 0.971310, 0.032977,
		-0.766648, 0.206535, -0.607943,
		18.947187, 20.778059, 10.053567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.165331, 21.140696, 10.919193>,  <19.483841, 20.633484, 10.479127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.165331, 21.140696, 10.919193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.914562, 20.981491, 10.651296>,  <18.764101, 20.885969, 10.490557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.914562, 20.981491, 10.651296>,  <19.165331, 21.140696, 10.919193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.914562, 20.981491, 10.651296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741168, 0.039777, 0.670140,
		-0.240082, 0.916518, -0.319930,
		-0.626921, -0.398011, -0.669744,
		18.726486, 20.862087, 10.450373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.497648, 21.358320, 11.135491>,  <19.165331, 21.140696, 10.919193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.497648, 21.358320, 11.135491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.401451, 21.090153, 10.854719>,  <18.343733, 20.929253, 10.686256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.401451, 21.090153, 10.854719>,  <18.497648, 21.358320, 11.135491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.401451, 21.090153, 10.854719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904390, -0.107839, 0.412855,
		-0.352480, 0.734106, -0.580384,
		-0.240491, -0.670417, -0.701930,
		18.329304, 20.889029, 10.644140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.744711, 21.468130, 10.754585>,  <18.497648, 21.358320, 11.135491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.744711, 21.468130, 10.754585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.822720, 21.075893, 10.762678>,  <17.869526, 20.840551, 10.767534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.822720, 21.075893, 10.762678>,  <17.744711, 21.468130, 10.754585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.822720, 21.075893, 10.762678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872506, -0.164030, 0.460247,
		-0.447994, -0.107412, -0.887560,
		0.195023, -0.980590, 0.020233,
		17.881226, 20.781717, 10.768748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.107985, 21.186161, 10.617194>,  <17.744711, 21.468130, 10.754585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.107985, 21.186161, 10.617194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.333332, 20.923916, 10.818307>,  <17.468540, 20.766569, 10.938974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.333332, 20.923916, 10.818307>,  <17.107985, 21.186161, 10.617194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.333332, 20.923916, 10.818307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768954, -0.193477, 0.609325,
		-0.302204, -0.729891, -0.613134,
		0.563368, -0.655612, 0.502783,
		17.502342, 20.727232, 10.969142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605343, 20.636927, 10.848621>,  <17.107985, 21.186161, 10.617194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605343, 20.636927, 10.848621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.947613, 20.613274, 11.054271>,  <17.152975, 20.599081, 11.177660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.947613, 20.613274, 11.054271>,  <16.605343, 20.636927, 10.848621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.947613, 20.613274, 11.054271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516433, -0.033418, 0.855675,
		-0.033418, -0.997691, -0.059133,
		-0.855675, 0.059133, -0.514124,
		17.204315, 20.595533, 11.208508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.518211, 20.076611, 11.354375>,  <16.605343, 20.636927, 10.848621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.518211, 20.076611, 11.354375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.810658, 20.317764, 11.482125>,  <16.986126, 20.462458, 11.558775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.810658, 20.317764, 11.482125>,  <16.518211, 20.076611, 11.354375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810658, 20.317764, 11.482125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499434, 0.154026, 0.852550,
		0.464799, -0.782818, 0.413712,
		0.731114, 0.602887, 0.319374,
		17.029991, 20.498631, 11.577938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.418852, 19.997097, 12.068795>,  <16.518211, 20.076611, 11.354375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.418852, 19.997097, 12.068795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.687122, 20.293041, 12.047634>,  <16.848085, 20.470608, 12.034938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.687122, 20.293041, 12.047634>,  <16.418852, 19.997097, 12.068795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.687122, 20.293041, 12.047634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286743, 0.324383, 0.901418,
		0.684086, -0.589389, 0.429706,
		0.670675, 0.739862, -0.052902,
		16.888325, 20.514999, 12.031763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792356, 19.941725, 12.666074>,  <16.418852, 19.997097, 12.068795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792356, 19.941725, 12.666074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.806988, 20.313320, 12.518754>,  <16.815765, 20.536278, 12.430362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.806988, 20.313320, 12.518754>,  <16.792356, 19.941725, 12.666074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.806988, 20.313320, 12.518754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134137, 0.369776, 0.919387,
		0.990287, 0.015775, 0.138137,
		0.036576, 0.928987, -0.368300,
		16.817961, 20.592016, 12.408264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.384218, 20.325348, 12.923147>,  <16.792356, 19.941725, 12.666074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.384218, 20.325348, 12.923147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.087849, 20.569397, 12.810875>,  <16.910027, 20.715826, 12.743511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.087849, 20.569397, 12.810875>,  <17.384218, 20.325348, 12.923147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.087849, 20.569397, 12.810875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085008, 0.329374, 0.940365,
		0.666187, 0.720599, -0.192176,
		-0.740924, 0.610123, -0.280682,
		16.865572, 20.752434, 12.726670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.437860, 20.906443, 13.441344>,  <17.384218, 20.325348, 12.923147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.437860, 20.906443, 13.441344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.077648, 20.967541, 13.278513>,  <16.861521, 21.004200, 13.180814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.077648, 20.967541, 13.278513>,  <17.437860, 20.906443, 13.441344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.077648, 20.967541, 13.278513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329738, 0.370344, 0.868400,
		0.283404, 0.916250, -0.283139,
		-0.900531, 0.152746, -0.407079,
		16.807489, 21.013365, 13.156389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.396378, 21.510469, 13.559665>,  <17.437860, 20.906443, 13.441344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.396378, 21.510469, 13.559665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.024380, 21.376881, 13.498247>,  <16.801182, 21.296728, 13.461396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.024380, 21.376881, 13.498247>,  <17.396378, 21.510469, 13.559665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.024380, 21.376881, 13.498247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281696, 0.379205, 0.881392,
		-0.236134, 0.862941, -0.446736,
		-0.929994, -0.333970, -0.153544,
		16.745382, 21.276690, 13.452184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.017557, 22.031858, 13.991589>,  <17.396378, 21.510469, 13.559665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.017557, 22.031858, 13.991589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.760868, 21.739708, 13.897999>,  <16.606853, 21.564419, 13.841845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.760868, 21.739708, 13.897999>,  <17.017557, 22.031858, 13.991589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.760868, 21.739708, 13.897999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459403, 0.121786, 0.879839,
		-0.614117, 0.672103, -0.413689,
		-0.641724, -0.730374, -0.233975,
		16.568352, 21.520596, 13.827806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.388786, 22.225874, 14.061255>,  <17.017557, 22.031858, 13.991589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.388786, 22.225874, 14.061255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.382759, 21.833843, 14.140478>,  <16.379143, 21.598625, 14.188012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.382759, 21.833843, 14.140478>,  <16.388786, 22.225874, 14.061255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.382759, 21.833843, 14.140478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384486, 0.188529, 0.903674,
		-0.923008, -0.062531, -0.379666,
		-0.015070, -0.980075, 0.198057,
		16.378239, 21.539822, 14.199895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.786656, 22.154221, 14.362846>,  <16.388786, 22.225874, 14.061255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.786656, 22.154221, 14.362846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981931, 21.823654, 14.475071>,  <16.099094, 21.625315, 14.542406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.981931, 21.823654, 14.475071>,  <15.786656, 22.154221, 14.362846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.981931, 21.823654, 14.475071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368239, 0.096406, 0.924719,
		-0.791249, -0.554748, -0.257254,
		0.488185, -0.826415, 0.280561,
		16.128386, 21.575729, 14.559239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.305818, 21.626350, 14.647710>,  <15.786656, 22.154221, 14.362846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.305818, 21.626350, 14.647710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.661145, 21.504143, 14.784851>,  <15.874342, 21.430819, 14.867136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.661145, 21.504143, 14.784851>,  <15.305818, 21.626350, 14.647710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.661145, 21.504143, 14.784851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393449, -0.121316, 0.911307,
		-0.236827, -0.944426, -0.227973,
		0.888319, -0.305518, 0.342853,
		15.927641, 21.412487, 14.887707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.225032, 21.010214, 15.039954>,  <15.305818, 21.626350, 14.647710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.225032, 21.010214, 15.039954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.578645, 21.142361, 15.172222>,  <15.790812, 21.221649, 15.251583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.578645, 21.142361, 15.172222>,  <15.225032, 21.010214, 15.039954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.578645, 21.142361, 15.172222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246362, -0.271873, 0.930264,
		0.397230, -0.903848, -0.158954,
		0.884033, 0.330369, 0.330671,
		15.843855, 21.241470, 15.271423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.426958, 20.531370, 15.427032>,  <15.225032, 21.010214, 15.039954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.426958, 20.531370, 15.427032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.656981, 20.829834, 15.561226>,  <15.794995, 21.008913, 15.641743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.656981, 20.829834, 15.561226>,  <15.426958, 20.531370, 15.427032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.656981, 20.829834, 15.561226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032012, -0.389238, 0.920581,
		0.817485, -0.540128, -0.199948,
		0.575059, 0.746161, 0.335487,
		15.829499, 21.053682, 15.661872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.966475, 20.245424, 15.851739>,  <15.426958, 20.531370, 15.427032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.966475, 20.245424, 15.851739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.944104, 20.623631, 15.980036>,  <15.930682, 20.850554, 16.057014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.944104, 20.623631, 15.980036>,  <15.966475, 20.245424, 15.851739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.944104, 20.623631, 15.980036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109050, -0.325108, 0.939368,
		0.992462, 0.017558, 0.121290,
		-0.055926, 0.945514, 0.320743,
		15.927326, 20.907284, 16.076258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.408167, 20.342266, 16.422310>,  <15.966475, 20.245424, 15.851739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.408167, 20.342266, 16.422310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150112, 20.645878, 16.457346>,  <15.995279, 20.828045, 16.478367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150112, 20.645878, 16.457346>,  <16.408167, 20.342266, 16.422310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150112, 20.645878, 16.457346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152988, -0.240638, 0.958482,
		0.748593, 0.604953, 0.271367,
		-0.645138, 0.759029, 0.087589,
		15.956571, 20.873587, 16.483624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.615799, 20.562304, 17.027412>,  <16.408167, 20.342266, 16.422310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.615799, 20.562304, 17.027412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.247921, 20.701275, 16.954245>,  <16.027195, 20.784657, 16.910343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.247921, 20.701275, 16.954245>,  <16.615799, 20.562304, 17.027412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.247921, 20.701275, 16.954245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232612, -0.106801, 0.966688,
		0.316317, 0.931605, 0.179039,
		-0.919693, 0.347427, -0.182920,
		15.972013, 20.805502, 16.899368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.458994, 21.025726, 17.569593>,  <16.615799, 20.562304, 17.027412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.458994, 21.025726, 17.569593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.097240, 20.917702, 17.437437>,  <15.880189, 20.852886, 17.358143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.097240, 20.917702, 17.437437>,  <16.458994, 21.025726, 17.569593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.097240, 20.917702, 17.437437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289398, -0.180821, 0.939975,
		-0.313594, 0.945711, 0.085376,
		-0.904382, -0.270063, -0.330391,
		15.825926, 20.836683, 17.338320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.031965, 21.275511, 18.040909>,  <16.458994, 21.025726, 17.569593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.031965, 21.275511, 18.040909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.803386, 21.003643, 17.856956>,  <15.666238, 20.840523, 17.746586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.803386, 21.003643, 17.856956>,  <16.031965, 21.275511, 18.040909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.803386, 21.003643, 17.856956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387674, -0.270336, 0.881264,
		-0.723293, 0.681883, -0.109007,
		-0.571451, -0.679672, -0.459881,
		15.631950, 20.799742, 17.718992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.395908, 21.370369, 18.352001>,  <16.031965, 21.275511, 18.040909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.395908, 21.370369, 18.352001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.408698, 21.000584, 18.200027>,  <15.416372, 20.778713, 18.108843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.408698, 21.000584, 18.200027>,  <15.395908, 21.370369, 18.352001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.408698, 21.000584, 18.200027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201274, -0.378295, 0.903538,
		-0.979013, 0.047580, -0.198166,
		0.031975, -0.924461, -0.379932,
		15.418290, 20.723246, 18.086048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.860535, 20.987743, 18.625038>,  <15.395908, 21.370369, 18.352001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.860535, 20.987743, 18.625038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.085750, 20.686882, 18.488070>,  <15.220879, 20.506365, 18.405888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.085750, 20.686882, 18.488070>,  <14.860535, 20.987743, 18.625038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.085750, 20.686882, 18.488070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198062, -0.525072, 0.827690,
		-0.802348, -0.398199, -0.444608,
		0.563036, -0.752155, -0.342422,
		15.254661, 20.461235, 18.385344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.371850, 20.383488, 18.675861>,  <14.860535, 20.987743, 18.625038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.371850, 20.383488, 18.675861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.747533, 20.248962, 18.703527>,  <14.972942, 20.168247, 18.720127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.747533, 20.248962, 18.703527>,  <14.371850, 20.383488, 18.675861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.747533, 20.248962, 18.703527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228174, -0.460836, 0.857652,
		-0.256565, -0.821295, -0.509558,
		0.939207, -0.336311, 0.069164,
		15.029295, 20.148069, 18.724277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.312147, 19.663189, 18.732544>,  <14.371850, 20.383488, 18.675861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.312147, 19.663189, 18.732544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.664470, 19.786613, 18.876192>,  <14.875863, 19.860668, 18.962381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.664470, 19.786613, 18.876192>,  <14.312147, 19.663189, 18.732544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.664470, 19.786613, 18.876192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155083, -0.528627, 0.834568,
		0.447357, -0.790787, -0.417766,
		0.880807, 0.308561, 0.359122,
		14.928712, 19.879181, 18.983929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.564612, 19.077560, 19.153599>,  <14.312147, 19.663189, 18.732544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.564612, 19.077560, 19.153599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.801795, 19.379536, 19.265652>,  <14.944104, 19.560720, 19.332884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.801795, 19.379536, 19.265652>,  <14.564612, 19.077560, 19.153599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.801795, 19.379536, 19.265652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081187, -0.402166, 0.911960,
		0.801131, -0.518010, -0.299758,
		0.592957, 0.754936, 0.280132,
		14.979682, 19.606016, 19.349691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.205539, 18.792505, 19.449907>,  <14.564612, 19.077560, 19.153599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.205539, 18.792505, 19.449907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.189692, 19.165031, 19.594728>,  <15.180184, 19.388548, 19.681622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.189692, 19.165031, 19.594728>,  <15.205539, 18.792505, 19.449907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.189692, 19.165031, 19.594728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051599, -0.359947, 0.931545,
		0.997882, 0.055586, -0.033796,
		-0.039616, 0.931316, 0.362052,
		15.177808, 19.444426, 19.703344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.665324, 18.723188, 19.935019>,  <15.205539, 18.792505, 19.449907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.665324, 18.723188, 19.935019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.408158, 19.018433, 20.016851>,  <15.253859, 19.195580, 20.065950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.408158, 19.018433, 20.016851>,  <15.665324, 18.723188, 19.935019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.408158, 19.018433, 20.016851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248750, -0.453832, 0.855664,
		0.724419, 0.499230, 0.475380,
		-0.642916, 0.738110, 0.204581,
		15.215283, 19.239866, 20.078226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.770033, 18.645382, 20.574795>,  <15.665324, 18.723188, 19.935019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.770033, 18.645382, 20.574795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.003216, 18.342876, 20.693605>,  <16.143126, 18.161373, 20.764893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.003216, 18.342876, 20.693605>,  <15.770033, 18.645382, 20.574795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.003216, 18.342876, 20.693605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577997, 0.129072, -0.805767,
		0.571036, 0.641407, 0.512362,
		0.582956, -0.756265, 0.297027,
		16.178102, 18.115997, 20.782713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.393433, 18.845201, 20.499258>,  <15.770033, 18.645382, 20.574795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.393433, 18.845201, 20.499258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.427067, 18.446621, 20.497744>,  <16.447248, 18.207472, 20.496834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.427067, 18.446621, 20.497744>,  <16.393433, 18.845201, 20.499258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.427067, 18.446621, 20.497744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511296, 0.046408, -0.858151,
		0.855281, 0.070223, 0.513384,
		0.084087, -0.996451, -0.003787,
		16.452293, 18.147686, 20.496607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.126795, 18.755562, 20.343653>,  <16.393433, 18.845201, 20.499258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.126795, 18.755562, 20.343653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.928314, 18.425541, 20.235529>,  <16.809225, 18.227528, 20.170654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.928314, 18.425541, 20.235529>,  <17.126795, 18.755562, 20.343653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.928314, 18.425541, 20.235529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532645, -0.043425, -0.845224,
		0.685618, -0.563382, 0.461009,
		-0.496203, -0.825055, -0.270309,
		16.779453, 18.178024, 20.154436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643532, 18.328232, 20.083242>,  <17.126795, 18.755562, 20.343653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.643532, 18.328232, 20.083242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.301498, 18.161873, 19.959393>,  <17.096279, 18.062057, 19.885082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.301498, 18.161873, 19.959393>,  <17.643532, 18.328232, 20.083242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.301498, 18.161873, 19.959393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299935, 0.090340, -0.949672,
		0.422935, -0.904914, 0.047494,
		-0.855082, -0.415895, -0.309623,
		17.044973, 18.037104, 19.866505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870176, 17.855122, 19.620396>,  <17.643532, 18.328232, 20.083242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870176, 17.855122, 19.620396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.486423, 17.917580, 19.526417>,  <17.256172, 17.955055, 19.470030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.486423, 17.917580, 19.526417>,  <17.870176, 17.855122, 19.620396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.486423, 17.917580, 19.526417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216812, -0.124721, -0.968213,
		-0.180490, -0.979827, 0.085800,
		-0.959383, 0.156150, -0.234949,
		17.198608, 17.964424, 19.455933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.674391, 17.293619, 19.117588>,  <17.870176, 17.855122, 19.620396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.674391, 17.293619, 19.117588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.400101, 17.580242, 19.066469>,  <17.235527, 17.752216, 19.035797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.400101, 17.580242, 19.066469>,  <17.674391, 17.293619, 19.117588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.400101, 17.580242, 19.066469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203843, 0.020504, -0.978789,
		-0.698736, -0.697229, -0.160125,
		-0.685723, 0.716555, -0.127799,
		17.194384, 17.795208, 19.028130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370358, 17.175585, 18.448624>,  <17.674391, 17.293619, 19.117588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370358, 17.175585, 18.448624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.296043, 17.556683, 18.544758>,  <17.251455, 17.785341, 18.602438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.296043, 17.556683, 18.544758>,  <17.370358, 17.175585, 18.448624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.296043, 17.556683, 18.544758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007940, 0.243129, -0.969962,
		-0.982559, -0.182112, -0.037605,
		-0.185784, 0.952746, 0.240334,
		17.240309, 17.842506, 18.616858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.793015, 17.349247, 18.140554>,  <17.370358, 17.175585, 18.448624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.793015, 17.349247, 18.140554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.006496, 17.685390, 18.178413>,  <17.134586, 17.887077, 18.201128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.006496, 17.685390, 18.178413>,  <16.793015, 17.349247, 18.140554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.006496, 17.685390, 18.178413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002228, 0.110520, -0.993871,
		-0.845668, 0.530644, 0.057112,
		0.533704, 0.840358, 0.094645,
		17.166607, 17.937498, 18.206806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718697, 17.718439, 17.431196>,  <16.793015, 17.349247, 18.140554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718697, 17.718439, 17.431196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.984936, 17.948597, 17.621311>,  <17.144680, 18.086691, 17.735380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.984936, 17.948597, 17.621311>,  <16.718697, 17.718439, 17.431196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.984936, 17.948597, 17.621311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306403, 0.370018, -0.877043,
		-0.680510, 0.729389, 0.069982,
		0.665600, 0.575393, 0.475288,
		17.184616, 18.121216, 17.763897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.748299, 18.449818, 17.147058>,  <16.718697, 17.718439, 17.431196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.748299, 18.449818, 17.147058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.098244, 18.387619, 17.330551>,  <17.308210, 18.350300, 17.440647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.098244, 18.387619, 17.330551>,  <16.748299, 18.449818, 17.147058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.098244, 18.387619, 17.330551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481932, 0.374359, -0.792211,
		-0.048543, 0.914153, 0.402452,
		0.874863, -0.155498, 0.458732,
		17.360703, 18.340969, 17.468170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.141962, 19.082119, 17.071970>,  <16.748299, 18.449818, 17.147058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.141962, 19.082119, 17.071970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421436, 18.803555, 17.137516>,  <17.589121, 18.636415, 17.176844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421436, 18.803555, 17.137516>,  <17.141962, 19.082119, 17.071970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.421436, 18.803555, 17.137516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509974, 0.324156, -0.796775,
		0.501765, 0.640261, 0.581634,
		0.698683, -0.696412, 0.163866,
		17.631041, 18.594631, 17.186676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.771135, 19.394106, 16.916422>,  <17.141962, 19.082119, 17.071970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.771135, 19.394106, 16.916422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.853039, 19.002586, 16.914484>,  <17.902180, 18.767673, 16.913322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.853039, 19.002586, 16.914484>,  <17.771135, 19.394106, 16.916422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.853039, 19.002586, 16.914484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597660, 0.128940, -0.791314,
		0.775163, 0.159132, 0.611391,
		0.204756, -0.978801, -0.004842,
		17.914465, 18.708946, 16.913031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.521542, 19.390917, 16.708820>,  <17.771135, 19.394106, 16.916422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.521542, 19.390917, 16.708820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.387096, 19.018524, 16.651829>,  <18.306429, 18.795088, 16.617634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.387096, 19.018524, 16.651829>,  <18.521542, 19.390917, 16.708820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.387096, 19.018524, 16.651829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480177, -0.039251, -0.876293,
		0.810221, -0.362948, 0.460229,
		-0.336114, -0.930982, -0.142477,
		18.286263, 18.739229, 16.609085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.093636, 18.977026, 16.624897>,  <18.521542, 19.390917, 16.708820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.093636, 18.977026, 16.624897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.774750, 18.810169, 16.450338>,  <18.583418, 18.710054, 16.345602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.774750, 18.810169, 16.450338>,  <19.093636, 18.977026, 16.624897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.774750, 18.810169, 16.450338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419828, 0.136374, -0.897300,
		0.433815, -0.898551, 0.066409,
		-0.797213, -0.417143, -0.436398,
		18.535585, 18.685026, 16.319420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.435328, 18.619413, 16.104206>,  <19.093636, 18.977026, 16.624897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.435328, 18.619413, 16.104206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.046513, 18.629257, 16.010794>,  <18.813223, 18.635164, 15.954747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.046513, 18.629257, 16.010794>,  <19.435328, 18.619413, 16.104206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.046513, 18.629257, 16.010794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232345, 0.244857, -0.941308,
		0.034014, -0.969247, -0.243729,
		-0.972038, 0.024612, -0.233528,
		18.754902, 18.636641, 15.940735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.334383, 18.159218, 15.501436>,  <19.435328, 18.619413, 16.104206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.334383, 18.159218, 15.501436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.013332, 18.397442, 15.488209>,  <18.820702, 18.540377, 15.480272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.013332, 18.397442, 15.488209>,  <19.334383, 18.159218, 15.501436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.013332, 18.397442, 15.488209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195456, 0.210222, -0.957917,
		-0.563547, -0.775315, -0.285136,
		-0.802628, 0.595562, -0.033070,
		18.772543, 18.576111, 15.478288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.999825, 17.945385, 14.974876>,  <19.334383, 18.159218, 15.501436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.999825, 17.945385, 14.974876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.866325, 18.317516, 15.035669>,  <18.786226, 18.540796, 15.072145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.866325, 18.317516, 15.035669>,  <18.999825, 17.945385, 14.974876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.866325, 18.317516, 15.035669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059751, 0.181781, -0.981522,
		-0.940766, -0.318501, -0.116257,
		-0.333749, 0.930329, 0.151982,
		18.766201, 18.596615, 15.081264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.376575, 18.083761, 14.517237>,  <18.999825, 17.945385, 14.974876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.376575, 18.083761, 14.517237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.556519, 18.432842, 14.593149>,  <18.664484, 18.642290, 14.638697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.556519, 18.432842, 14.593149>,  <18.376575, 18.083761, 14.517237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.556519, 18.432842, 14.593149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058970, 0.241058, -0.968717,
		-0.891150, 0.424596, 0.159906,
		0.449860, 0.872702, 0.189780,
		18.691477, 18.694653, 14.650084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056828, 18.511385, 14.026312>,  <18.376575, 18.083761, 14.517237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.056828, 18.511385, 14.026312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.354744, 18.745274, 14.154928>,  <18.533493, 18.885607, 14.232099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.354744, 18.745274, 14.154928>,  <18.056828, 18.511385, 14.026312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.354744, 18.745274, 14.154928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096111, 0.382834, -0.918804,
		-0.660342, 0.715219, 0.228932,
		0.744789, 0.584722, 0.321542,
		18.578180, 18.920691, 14.251390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.802877, 19.182322, 13.801328>,  <18.056828, 18.511385, 14.026312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.802877, 19.182322, 13.801328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.196926, 19.175999, 13.869778>,  <18.433355, 19.172205, 13.910848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.196926, 19.175999, 13.869778>,  <17.802877, 19.182322, 13.801328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.196926, 19.175999, 13.869778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169655, 0.248230, -0.953729,
		-0.027401, 0.968572, 0.247219,
		0.985123, -0.015809, 0.171124,
		18.492462, 19.171255, 13.921115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.182493, 19.878098, 13.453808>,  <17.802877, 19.182322, 13.801328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.182493, 19.878098, 13.453808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.442066, 19.576981, 13.497976>,  <18.597811, 19.396311, 13.524477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.442066, 19.576981, 13.497976>,  <18.182493, 19.878098, 13.453808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.442066, 19.576981, 13.497976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218746, 0.045595, -0.974716,
		0.728723, 0.656679, 0.194258,
		0.648932, -0.752791, 0.110420,
		18.636745, 19.351143, 13.531102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.819607, 20.042086, 13.084599>,  <18.182493, 19.878098, 13.453808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.819607, 20.042086, 13.084599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.878254, 19.647327, 13.111555>,  <18.913443, 19.410473, 13.127728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.878254, 19.647327, 13.111555>,  <18.819607, 20.042086, 13.084599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.878254, 19.647327, 13.111555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317028, -0.017653, -0.948252,
		0.937015, 0.160393, 0.310285,
		0.146616, -0.986895, 0.067390,
		18.922239, 19.351259, 13.131772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.470303, 19.926191, 12.862366>,  <18.819607, 20.042086, 13.084599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.470303, 19.926191, 12.862366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.267788, 19.584351, 12.816189>,  <19.146278, 19.379246, 12.788483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.267788, 19.584351, 12.816189>,  <19.470303, 19.926191, 12.862366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.267788, 19.584351, 12.816189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345718, -0.078503, -0.935049,
		0.790033, -0.513313, 0.335197,
		-0.506287, -0.854604, -0.115441,
		19.115902, 19.327969, 12.781556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.890120, 19.482304, 12.611958>,  <19.470303, 19.926191, 12.862366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.890120, 19.482304, 12.611958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.560814, 19.277561, 12.513780>,  <19.363232, 19.154716, 12.454873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.560814, 19.277561, 12.513780>,  <19.890120, 19.482304, 12.611958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.560814, 19.277561, 12.513780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362808, -0.141901, -0.920996,
		0.436587, -0.847272, 0.302526,
		-0.823263, -0.511854, -0.245445,
		19.313835, 19.124004, 12.440146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.157906, 19.076658, 12.110310>,  <19.890120, 19.482304, 12.611958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.157906, 19.076658, 12.110310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767170, 19.007866, 12.059378>,  <19.532728, 18.966591, 12.028818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767170, 19.007866, 12.059378>,  <20.157906, 19.076658, 12.110310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767170, 19.007866, 12.059378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167701, -0.245663, -0.954739,
		0.132915, -0.953977, 0.268814,
		-0.976836, -0.171980, -0.127330,
		19.474119, 18.956272, 12.021178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.119829, 18.508987, 11.605173>,  <20.157906, 19.076658, 12.110310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.119829, 18.508987, 11.605173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.748848, 18.657349, 11.624206>,  <19.526258, 18.746365, 11.635625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.748848, 18.657349, 11.624206>,  <20.119829, 18.508987, 11.605173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.748848, 18.657349, 11.624206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157051, -0.270877, -0.949716,
		-0.339367, -0.888288, 0.309476,
		-0.927451, 0.370906, 0.047580,
		19.470612, 18.768620, 11.638480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.656147, 17.978031, 11.597221>,  <20.119829, 18.508987, 11.605173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.656147, 17.978031, 11.597221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.456852, 18.306850, 11.486956>,  <19.337275, 18.504143, 11.420796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.456852, 18.306850, 11.486956>,  <19.656147, 17.978031, 11.597221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.456852, 18.306850, 11.486956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213271, -0.424365, -0.880017,
		-0.840400, -0.379668, 0.386755,
		-0.498239, 0.822050, -0.275664,
		19.307381, 18.553465, 11.404256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.944096, 17.858912, 11.369411>,  <19.656147, 17.978031, 11.597221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.944096, 17.858912, 11.369411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.047012, 18.193226, 11.175396>,  <19.108763, 18.393814, 11.058987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.047012, 18.193226, 11.175396>,  <18.944096, 17.858912, 11.369411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.047012, 18.193226, 11.175396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085670, -0.480232, -0.872948,
		-0.962529, 0.266155, -0.051958,
		0.257292, 0.835786, -0.485039,
		19.124201, 18.443962, 11.029884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.519384, 17.956024, 10.609311>,  <18.944096, 17.858912, 11.369411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.519384, 17.956024, 10.609311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.826290, 18.212555, 10.610434>,  <19.010433, 18.366474, 10.611107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.826290, 18.212555, 10.610434>,  <18.519384, 17.956024, 10.609311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.826290, 18.212555, 10.610434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194458, -0.228468, -0.953933,
		-0.611142, 0.732463, -0.300006,
		0.767262, 0.641327, 0.002807,
		19.056469, 18.404953, 10.611276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.420929, 18.318913, 10.009336>,  <18.519384, 17.956024, 10.609311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.420929, 18.318913, 10.009336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.801186, 18.340717, 10.131520>,  <19.029341, 18.353800, 10.204831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.801186, 18.340717, 10.131520>,  <18.420929, 18.318913, 10.009336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.801186, 18.340717, 10.131520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306502, -0.318244, -0.897094,
		0.048309, 0.946440, -0.319244,
		0.950643, 0.054511, 0.305460,
		19.086378, 18.357071, 10.223158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.766565, 18.578987, 9.496646>,  <18.420929, 18.318913, 10.009336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.766565, 18.578987, 9.496646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.053196, 18.402367, 9.712628>,  <19.225174, 18.296394, 9.842217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.053196, 18.402367, 9.712628>,  <18.766565, 18.578987, 9.496646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.053196, 18.402367, 9.712628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224693, -0.586726, -0.777988,
		0.660327, 0.678812, -0.321220,
		0.716576, -0.441551, 0.539956,
		19.268169, 18.269901, 9.874615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.278084, 18.666922, 9.126894>,  <18.766565, 18.578987, 9.496646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.278084, 18.666922, 9.126894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.367096, 18.359032, 9.366229>,  <19.420504, 18.174297, 9.509830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.367096, 18.359032, 9.366229>,  <19.278084, 18.666922, 9.126894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.367096, 18.359032, 9.366229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273774, -0.539694, -0.796102,
		0.935697, 0.340964, 0.090633,
		0.222528, -0.769723, 0.598338,
		19.433855, 18.128115, 9.545731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.921635, 18.452517, 8.869446>,  <19.278084, 18.666922, 9.126894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.921635, 18.452517, 8.869446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.723038, 18.167137, 9.067228>,  <19.603880, 17.995911, 9.185898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.723038, 18.167137, 9.067228>,  <19.921635, 18.452517, 8.869446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.723038, 18.167137, 9.067228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251463, -0.663413, -0.704734,
		0.830820, -0.225558, 0.508785,
		-0.496493, -0.713447, 0.494457,
		19.574089, 17.953102, 9.215566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.346272, 17.819592, 8.775607>,  <19.921635, 18.452517, 8.869446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.346272, 17.819592, 8.775607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.992733, 17.672131, 8.890782>,  <19.780609, 17.583654, 8.959888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.992733, 17.672131, 8.890782>,  <20.346272, 17.819592, 8.775607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.992733, 17.672131, 8.890782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107493, -0.759141, -0.641990,
		0.455257, -0.536470, 0.710592,
		-0.883847, -0.368654, 0.287938,
		19.727579, 17.561535, 8.977163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.437206, 17.160820, 8.708250>,  <20.346272, 17.819592, 8.775607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.437206, 17.160820, 8.708250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.042393, 17.180233, 8.769450>,  <19.805504, 17.191881, 8.806170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.042393, 17.180233, 8.769450>,  <20.437206, 17.160820, 8.708250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.042393, 17.180233, 8.769450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133855, -0.774933, -0.617707,
		0.088586, -0.630177, 0.771381,
		-0.987034, 0.048533, 0.153000,
		19.746283, 17.194794, 8.815351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.221441, 16.431650, 8.925132>,  <20.437206, 17.160820, 8.708250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.221441, 16.431650, 8.925132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.879913, 16.602604, 8.806251>,  <19.674995, 16.705177, 8.734922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.879913, 16.602604, 8.806251>,  <20.221441, 16.431650, 8.925132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.879913, 16.602604, 8.806251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187158, -0.784774, -0.590848,
		-0.485757, -0.448855, 0.750046,
		-0.853822, 0.427386, -0.297202,
		19.623766, 16.730820, 8.717090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.692228, 15.900790, 9.026285>,  <20.221441, 16.431650, 8.925132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.692228, 15.900790, 9.026285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.559467, 16.171406, 8.763336>,  <19.479811, 16.333775, 8.605567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.559467, 16.171406, 8.763336>,  <19.692228, 15.900790, 9.026285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.559467, 16.171406, 8.763336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212630, -0.732596, -0.646600,
		-0.919038, -0.074831, 0.387002,
		-0.331902, 0.676538, -0.657372,
		19.459896, 16.374367, 8.566125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.062374, 15.639147, 8.777579>,  <19.692228, 15.900790, 9.026285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.062374, 15.639147, 8.777579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.145996, 15.899055, 8.485253>,  <19.196169, 16.055000, 8.309857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.145996, 15.899055, 8.485253>,  <19.062374, 15.639147, 8.777579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.145996, 15.899055, 8.485253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178268, -0.709484, -0.681801,
		-0.961517, 0.272817, -0.032489,
		0.209057, 0.649772, -0.730816,
		19.208714, 16.093987, 8.266008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.524256, 15.415483, 8.276576>,  <19.062374, 15.639147, 8.777579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.524256, 15.415483, 8.276576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.824619, 15.606030, 8.093616>,  <19.004837, 15.720357, 7.983841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.824619, 15.606030, 8.093616>,  <18.524256, 15.415483, 8.276576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.824619, 15.606030, 8.093616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144402, -0.557407, -0.817585,
		-0.644427, 0.679980, -0.349773,
		0.750908, 0.476366, -0.457398,
		19.049892, 15.748940, 7.956397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229002, 15.590324, 7.581492>,  <18.524256, 15.415483, 8.276576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229002, 15.590324, 7.581492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.625999, 15.604572, 7.534700>,  <18.864199, 15.613121, 7.506625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.625999, 15.604572, 7.534700>,  <18.229002, 15.590324, 7.581492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.625999, 15.604572, 7.534700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086656, -0.470084, -0.878357,
		-0.086278, 0.881902, -0.463470,
		0.992495, 0.035620, -0.116980,
		18.923748, 15.615258, 7.499606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.214952, 15.464646, 6.938685>,  <18.229002, 15.590324, 7.581492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.214952, 15.464646, 6.938685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.595497, 15.417950, 7.052729>,  <18.823824, 15.389932, 7.121155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.595497, 15.417950, 7.052729>,  <18.214952, 15.464646, 6.938685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.595497, 15.417950, 7.052729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148424, -0.637278, -0.756206,
		0.269974, 0.761740, -0.588953,
		0.951359, -0.116741, 0.285109,
		18.880905, 15.382927, 7.138261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.689878, 15.619384, 6.400090>,  <18.214952, 15.464646, 6.938685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.689878, 15.619384, 6.400090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822163, 15.353275, 6.667834>,  <18.901533, 15.193610, 6.828481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.822163, 15.353275, 6.667834>,  <18.689878, 15.619384, 6.400090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.822163, 15.353275, 6.667834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024288, -0.715035, -0.698667,
		0.943420, 0.214798, -0.252627,
		0.330709, -0.665272, 0.669361,
		18.921375, 15.153693, 6.868643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.307716, 15.067750, 6.178716>,  <18.689878, 15.619384, 6.400090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.307716, 15.067750, 6.178716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.029434, 14.929512, 6.430607>,  <18.862465, 14.846569, 6.581741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.029434, 14.929512, 6.430607>,  <19.307716, 15.067750, 6.178716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.029434, 14.929512, 6.430607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150663, -0.786956, -0.598331,
		0.702348, -0.511140, 0.495423,
		-0.695707, -0.345595, 0.629727,
		18.820723, 14.825833, 6.619525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.528969, 14.410826, 6.271008>,  <19.307716, 15.067750, 6.178716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.528969, 14.410826, 6.271008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.137886, 14.441650, 6.349140>,  <18.903236, 14.460145, 6.396020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.137886, 14.441650, 6.349140>,  <19.528969, 14.410826, 6.271008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.137886, 14.441650, 6.349140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175603, -0.810113, -0.559357,
		0.115137, -0.581187, 0.805584,
		-0.977705, 0.077060, 0.195332,
		18.844574, 14.464768, 6.407740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.432590, 13.774353, 6.384553>,  <19.528969, 14.410826, 6.271008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.432590, 13.774353, 6.384553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.065781, 13.914433, 6.308211>,  <18.845695, 13.998480, 6.262406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.065781, 13.914433, 6.308211>,  <19.432590, 13.774353, 6.384553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.065781, 13.914433, 6.308211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228702, -0.853776, -0.467719,
		-0.326741, -0.385262, 0.863026,
		-0.917025, 0.350199, -0.190854,
		18.790672, 14.019492, 6.250955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.868893, 13.268733, 6.672217>,  <19.432590, 13.774353, 6.384553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.868893, 13.268733, 6.672217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.783054, 13.489292, 6.349750>,  <18.731552, 13.621628, 6.156269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.783054, 13.489292, 6.349750>,  <18.868893, 13.268733, 6.672217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.783054, 13.489292, 6.349750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164346, -0.834016, -0.526696,
		-0.962777, 0.019464, 0.269596,
		-0.214596, 0.551398, -0.806170,
		18.718676, 13.654712, 6.107899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.146286, 13.302346, 6.434350>,  <18.868893, 13.268733, 6.672217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.146286, 13.302346, 6.434350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.415508, 13.315319, 6.138798>,  <18.577042, 13.323103, 5.961467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.415508, 13.315319, 6.138798>,  <18.146286, 13.302346, 6.434350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.415508, 13.315319, 6.138798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450479, -0.774360, -0.444338,
		-0.586569, 0.631914, -0.506578,
		0.673057, 0.032432, -0.738879,
		18.617426, 13.325048, 5.917134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.912638, 13.254598, 5.760563>,  <18.146286, 13.302346, 6.434350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.912638, 13.254598, 5.760563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.278938, 13.093929, 5.757554>,  <18.498718, 12.997528, 5.755749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.278938, 13.093929, 5.757554>,  <17.912638, 13.254598, 5.760563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.278938, 13.093929, 5.757554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354714, -0.799622, -0.484543,
		0.188613, 0.446389, -0.874735,
		0.915753, -0.401672, -0.007522,
		18.553663, 12.973428, 5.755298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.978628, 12.764778, 5.215911>,  <17.912638, 13.254598, 5.760563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.978628, 12.764778, 5.215911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.260777, 12.584129, 5.434447>,  <18.430065, 12.475739, 5.565569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.260777, 12.584129, 5.434447>,  <17.978628, 12.764778, 5.215911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.260777, 12.584129, 5.434447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089267, -0.821215, -0.563593,
		0.703194, 0.348773, -0.619577,
		0.705372, -0.451623, 0.546340,
		18.472387, 12.448643, 5.598349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.494928, 12.406595, 4.810081>,  <17.978628, 12.764778, 5.215911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.494928, 12.406595, 4.810081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.441109, 12.232986, 5.166401>,  <18.408817, 12.128821, 5.380193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.441109, 12.232986, 5.166401>,  <18.494928, 12.406595, 4.810081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.441109, 12.232986, 5.166401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146340, -0.880412, -0.451064,
		0.980041, -0.191051, 0.054946,
		-0.134551, -0.434021, 0.890798,
		18.400743, 12.102780, 5.433640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.882950, 11.856533, 4.802766>,  <18.494928, 12.406595, 4.810081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.882950, 11.856533, 4.802766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.580959, 11.766319, 5.049066>,  <18.399765, 11.712192, 5.196845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.580959, 11.766319, 5.049066>,  <18.882950, 11.856533, 4.802766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.580959, 11.766319, 5.049066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211148, -0.805377, -0.553881,
		0.620829, -0.548181, 0.560420,
		-0.754976, -0.225534, 0.615748,
		18.354467, 11.698659, 5.233790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.099163, 11.149879, 4.947386>,  <18.882950, 11.856533, 4.802766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.099163, 11.149879, 4.947386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.728378, 11.299866, 4.952202>,  <18.505907, 11.389857, 4.955091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.728378, 11.299866, 4.952202>,  <19.099163, 11.149879, 4.947386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.728378, 11.299866, 4.952202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264777, -0.631155, -0.729065,
		-0.265775, -0.679003, 0.684339,
		-0.926961, 0.374965, 0.012039,
		18.450291, 11.412355, 4.955813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.538204, 10.736811, 5.146437>,  <19.099163, 11.149879, 4.947386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.538204, 10.736811, 5.146437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.418507, 11.007042, 4.876904>,  <18.346689, 11.169181, 4.715184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.418507, 11.007042, 4.876904>,  <18.538204, 10.736811, 5.146437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.418507, 11.007042, 4.876904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076724, -0.686869, -0.722720,
		-0.951088, -0.267966, 0.153707,
		-0.299241, 0.675577, -0.673832,
		18.328733, 11.209715, 4.674754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.109642, 10.411061, 4.688612>,  <18.538204, 10.736811, 5.146437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.109642, 10.411061, 4.688612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.256760, 10.729324, 4.496088>,  <18.345030, 10.920282, 4.380573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.256760, 10.729324, 4.496088>,  <18.109642, 10.411061, 4.688612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.256760, 10.729324, 4.496088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226300, -0.578611, -0.783580,
		-0.901952, 0.179274, -0.392866,
		0.367792, 0.795657, -0.481309,
		18.367098, 10.968021, 4.351695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.780071, 10.438506, 4.031760>,  <18.109642, 10.411061, 4.688612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.780071, 10.438506, 4.031760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.150494, 10.587376, 4.006766>,  <18.372747, 10.676698, 3.991770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.150494, 10.587376, 4.006766>,  <17.780071, 10.438506, 4.031760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.150494, 10.587376, 4.006766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219219, -0.665289, -0.713676,
		-0.307182, 0.647208, -0.697683,
		0.926057, 0.372174, -0.062484,
		18.428310, 10.699028, 3.988021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.851164, 10.663684, 3.391914>,  <17.780071, 10.438506, 4.031760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.851164, 10.663684, 3.391914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.226547, 10.576221, 3.498860>,  <18.451778, 10.523745, 3.563027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.226547, 10.576221, 3.498860>,  <17.851164, 10.663684, 3.391914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.226547, 10.576221, 3.498860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078426, -0.618973, -0.781487,
		0.336367, 0.754363, -0.563732,
		0.938460, -0.218655, 0.267364,
		18.508085, 10.510625, 3.579069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.279734, 10.652157, 2.834633>,  <17.851164, 10.663684, 3.391914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.279734, 10.652157, 2.834633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.387997, 10.388195, 3.114996>,  <18.452955, 10.229818, 3.283214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.387997, 10.388195, 3.114996>,  <18.279734, 10.652157, 2.834633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.387997, 10.388195, 3.114996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124553, -0.745968, -0.654231,
		0.954584, 0.089773, -0.284096,
		0.270659, -0.659904, 0.700907,
		18.469194, 10.190224, 3.325268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.943796, 10.330832, 2.663844>,  <18.279734, 10.652157, 2.834633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.943796, 10.330832, 2.663844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.678902, 10.091114, 2.843750>,  <18.519966, 9.947283, 2.951694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.678902, 10.091114, 2.843750>,  <18.943796, 10.330832, 2.663844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.678902, 10.091114, 2.843750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168756, -0.704119, -0.689737,
		0.730045, -0.380868, 0.567427,
		-0.662235, -0.599296, 0.449765,
		18.480230, 9.911325, 2.978680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611933, 9.850833, 2.220438>,  <18.943796, 10.330832, 2.663844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.611933, 9.850833, 2.220438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.221535, 9.874172, 2.304373>,  <17.987297, 9.888176, 2.354734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.221535, 9.874172, 2.304373>,  <18.611933, 9.850833, 2.220438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.221535, 9.874172, 2.304373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040331, 0.898368, -0.437389,
		-0.214031, -0.435352, -0.874448,
		-0.975994, 0.058347, 0.209837,
		17.928736, 9.891677, 2.367324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.160198, 9.829281, 1.564211>,  <18.611933, 9.850833, 2.220438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.160198, 9.829281, 1.564211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.041050, 10.033508, 1.886848>,  <17.969561, 10.156045, 2.080431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.041050, 10.033508, 1.886848>,  <18.160198, 9.829281, 1.564211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.041050, 10.033508, 1.886848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010685, 0.843113, -0.537631,
		-0.954547, -0.168762, -0.245683,
		-0.297870, 0.510569, 0.806594,
		17.951689, 10.186679, 2.128826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.722067, 10.482755, 1.219117>,  <18.160198, 9.829281, 1.564211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.722067, 10.482755, 1.219117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.850796, 10.523182, 1.595673>,  <17.928034, 10.547439, 1.821606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.850796, 10.523182, 1.595673>,  <17.722067, 10.482755, 1.219117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.850796, 10.523182, 1.595673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312398, 0.927269, -0.206348,
		-0.893777, 0.360496, 0.266844,
		0.321823, 0.101068, 0.941390,
		17.947342, 10.553502, 1.878090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.142324, 10.174976, 0.598106>,  <17.722067, 10.482755, 1.219117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.142324, 10.174976, 0.598106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.268509, 9.878086, 0.361603>,  <18.344219, 9.699952, 0.219701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.268509, 9.878086, 0.361603>,  <18.142324, 10.174976, 0.598106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.268509, 9.878086, 0.361603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436447, 0.439776, -0.784927,
		0.842614, 0.505666, -0.185211,
		0.315460, -0.742226, -0.591258,
		18.363148, 9.655418, 0.184226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.710669, 10.386965, -0.020087>,  <18.142324, 10.174976, 0.598106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.710669, 10.386965, -0.020087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.463264, 10.081509, -0.094165>,  <18.314821, 9.898234, -0.138612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.463264, 10.081509, -0.094165>,  <18.710669, 10.386965, -0.020087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.463264, 10.081509, -0.094165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491417, 0.559821, -0.667166,
		0.613153, -0.321639, -0.721521,
		-0.618509, -0.763642, -0.185196,
		18.277712, 9.852416, -0.149723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.790499, 10.245096, -0.752529>,  <18.710669, 10.386965, -0.020087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.790499, 10.245096, -0.752529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.449547, 10.072712, -0.634055>,  <18.244976, 9.969281, -0.562970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.449547, 10.072712, -0.634055>,  <18.790499, 10.245096, -0.752529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.449547, 10.072712, -0.634055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522247, 0.672671, -0.524188,
		0.026668, -0.601488, -0.798437,
		-0.852377, -0.430960, 0.296186,
		18.193834, 9.943424, -0.545199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463444, 10.063407, -1.434530>,  <18.790499, 10.245096, -0.752529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.463444, 10.063407, -1.434530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.240211, 10.141132, -1.111844>,  <18.106272, 10.187768, -0.918233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.240211, 10.141132, -1.111844>,  <18.463444, 10.063407, -1.434530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.240211, 10.141132, -1.111844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487162, 0.710284, -0.508104,
		-0.671728, -0.676564, -0.301733,
		-0.558080, 0.194315, 0.806714,
		18.072788, 10.199427, -0.869830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.738340, 9.984214, -1.594545>,  <18.463444, 10.063407, -1.434530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.738340, 9.984214, -1.594545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.783157, 10.270473, -1.318779>,  <17.810047, 10.442229, -1.153319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.783157, 10.270473, -1.318779>,  <17.738340, 9.984214, -1.594545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.783157, 10.270473, -1.318779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523859, 0.632084, -0.571001,
		-0.844405, -0.297181, 0.445718,
		0.112040, 0.715649, 0.689416,
		17.816769, 10.485168, -1.111954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.120634, 10.231140, -1.663679>,  <17.738340, 9.984214, -1.594545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.120634, 10.231140, -1.663679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.357227, 10.517193, -1.514691>,  <17.499184, 10.688825, -1.425298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.357227, 10.517193, -1.514691>,  <17.120634, 10.231140, -1.663679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.357227, 10.517193, -1.514691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583066, 0.698415, -0.415031,
		-0.556941, 0.028308, 0.830069,
		0.591482, 0.715133, 0.372471,
		17.534672, 10.731732, -1.402950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.770430, 10.773213, -1.253438>,  <17.120634, 10.231140, -1.663679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.770430, 10.773213, -1.253438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.086220, 10.864300, -1.481429>,  <17.275694, 10.918952, -1.618225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.086220, 10.864300, -1.481429>,  <16.770430, 10.773213, -1.253438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.086220, 10.864300, -1.481429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544051, 0.689526, -0.478082,
		0.284149, 0.687531, 0.668252,
		0.789473, 0.227717, -0.569980,
		17.323061, 10.932614, -1.652423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.719202, 11.462078, -1.247992>,  <16.770430, 10.773213, -1.253438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.719202, 11.462078, -1.247992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911125, 11.319786, -1.568802>,  <17.026279, 11.234411, -1.761288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.911125, 11.319786, -1.568802>,  <16.719202, 11.462078, -1.247992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.911125, 11.319786, -1.568802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529647, 0.611329, -0.588007,
		0.699472, 0.706918, 0.104908,
		0.479806, -0.355730, -0.802024,
		17.055067, 11.213067, -1.809409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.165810, 12.011057, -1.628846>,  <16.719202, 11.462078, -1.247992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.165810, 12.011057, -1.628846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.079887, 11.725513, -1.895459>,  <17.028334, 11.554187, -2.055426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.079887, 11.725513, -1.895459>,  <17.165810, 12.011057, -1.628846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.079887, 11.725513, -1.895459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612828, 0.629907, -0.477136,
		0.760460, 0.305977, -0.572781,
		-0.214806, -0.713860, -0.666530,
		17.015446, 11.511355, -2.095418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207039, 12.273350, -2.289867>,  <17.165810, 12.011057, -1.628846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.207039, 12.273350, -2.289867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.941978, 11.973915, -2.280803>,  <16.782942, 11.794254, -2.275365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.941978, 11.973915, -2.280803>,  <17.207039, 12.273350, -2.289867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.941978, 11.973915, -2.280803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683217, 0.591837, -0.427719,
		0.306774, -0.298910, -0.903628,
		-0.662649, -0.748587, 0.022660,
		16.743183, 11.749339, -2.274005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.997637, 12.233052, -2.990191>,  <17.207039, 12.273350, -2.289867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.997637, 12.233052, -2.990191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722168, 12.131073, -2.718682>,  <16.556887, 12.069885, -2.555777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722168, 12.131073, -2.718682>,  <16.997637, 12.233052, -2.990191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722168, 12.131073, -2.718682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625667, 0.682049, -0.378617,
		-0.366427, -0.685428, -0.629222,
		-0.688674, -0.254948, 0.678770,
		16.515566, 12.054588, -2.515051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.326933, 11.547039, -2.993071>,  <16.997637, 12.233052, -2.990191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.326933, 11.547039, -2.993071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.303665, 11.177773, -3.145061>,  <17.289703, 10.956213, -3.236255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.303665, 11.177773, -3.145061>,  <17.326933, 11.547039, -2.993071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.303665, 11.177773, -3.145061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996322, -0.077674, 0.036182,
		-0.062916, -0.376472, 0.924289,
		-0.058172, -0.923166, -0.379975,
		17.286213, 10.900823, -3.259054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.898172, 11.227648, -2.682984>,  <17.326933, 11.547039, -2.993071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.898172, 11.227648, -2.682984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.794315, 10.973663, -2.974026>,  <17.732000, 10.821273, -3.148652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.794315, 10.973663, -2.974026>,  <17.898172, 11.227648, -2.682984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.794315, 10.973663, -2.974026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937414, -0.346750, -0.031915,
		-0.232032, -0.690355, 0.685252,
		-0.259644, -0.634960, -0.727606,
		17.716423, 10.783175, -3.192308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.236727, 10.650973, -2.518803>,  <17.898172, 11.227648, -2.682984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.236727, 10.650973, -2.518803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.183308, 10.639114, -2.915043>,  <18.151257, 10.631999, -3.152787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.183308, 10.639114, -2.915043>,  <18.236727, 10.650973, -2.518803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.183308, 10.639114, -2.915043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878771, -0.465654, -0.104535,
		-0.458177, -0.884470, 0.088240,
		-0.133547, -0.029647, -0.990599,
		18.143244, 10.630220, -3.212223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<21.310442, 17.582262, 16.811354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.267002, 17.971626, 16.730682>,  <21.240938, 18.205246, 16.682280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.267002, 17.971626, 16.730682>,  <21.310442, 17.582262, 16.811354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.267002, 17.971626, 16.730682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282042, -0.164370, -0.945217,
		-0.953236, -0.159530, -0.256693,
		-0.108598, 0.973413, -0.201678,
		21.234423, 18.263651, 16.670179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.051991, 17.558062, 16.166096>,  <21.310442, 17.582262, 16.811354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.051991, 17.558062, 16.166096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.225422, 17.916725, 16.201897>,  <21.329481, 18.131924, 16.223377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.225422, 17.916725, 16.201897>,  <21.051991, 17.558062, 16.166096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.225422, 17.916725, 16.201897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350238, -0.076173, -0.933558,
		-0.830267, 0.436118, -0.347071,
		0.433578, 0.896660, 0.089501,
		21.355495, 18.185722, 16.228746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.921541, 17.825405, 15.557074>,  <21.051991, 17.558062, 16.166096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.921541, 17.825405, 15.557074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.191986, 18.081970, 15.702105>,  <21.354254, 18.235909, 15.789124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.191986, 18.081970, 15.702105>,  <20.921541, 17.825405, 15.557074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.191986, 18.081970, 15.702105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434426, 0.050427, -0.899295,
		-0.595102, 0.765538, -0.244551,
		0.676112, 0.641412, 0.362578,
		21.394819, 18.274393, 15.810878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.950418, 18.373825, 15.051472>,  <20.921541, 17.825405, 15.557074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.950418, 18.373825, 15.051472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.291679, 18.348244, 15.258562>,  <21.496435, 18.332895, 15.382816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.291679, 18.348244, 15.258562>,  <20.950418, 18.373825, 15.051472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.291679, 18.348244, 15.258562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518200, -0.010239, -0.855198,
		0.059996, 0.997900, 0.024406,
		0.853153, -0.063955, 0.517726,
		21.547625, 18.329058, 15.413879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.333796, 18.904747, 14.878733>,  <20.950418, 18.373825, 15.051472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.333796, 18.904747, 14.878733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.614414, 18.655682, 15.017368>,  <21.782785, 18.506243, 15.100550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.614414, 18.655682, 15.017368>,  <21.333796, 18.904747, 14.878733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.614414, 18.655682, 15.017368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518516, 0.112385, -0.847650,
		0.488848, 0.774378, 0.401704,
		0.701547, -0.622662, 0.346589,
		21.824879, 18.468884, 15.121345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.933321, 19.269733, 14.713525>,  <21.333796, 18.904747, 14.878733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.933321, 19.269733, 14.713525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.042309, 18.889019, 14.769897>,  <22.107702, 18.660589, 14.803721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.042309, 18.889019, 14.769897>,  <21.933321, 19.269733, 14.713525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.042309, 18.889019, 14.769897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633186, 0.067088, -0.771086,
		0.724455, 0.299333, 0.620938,
		0.272469, -0.951787, 0.140932,
		22.124050, 18.603483, 14.812177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.639347, 19.296577, 14.702487>,  <21.933321, 19.269733, 14.713525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.639347, 19.296577, 14.702487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.523937, 18.923893, 14.614246>,  <22.454691, 18.700281, 14.561302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.523937, 18.923893, 14.614246>,  <22.639347, 19.296577, 14.702487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.523937, 18.923893, 14.614246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496981, 0.051199, -0.866250,
		0.818390, -0.359570, 0.448271,
		-0.288526, -0.931713, -0.220600,
		22.437380, 18.644379, 14.548066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.247185, 19.003935, 14.376395>,  <22.639347, 19.296577, 14.702487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.247185, 19.003935, 14.376395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.953068, 18.749088, 14.283941>,  <22.776598, 18.596180, 14.228469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.953068, 18.749088, 14.283941>,  <23.247185, 19.003935, 14.376395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.953068, 18.749088, 14.283941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408748, -0.144839, -0.901081,
		0.540618, -0.757035, 0.366920,
		-0.735294, -0.637118, -0.231134,
		22.732479, 18.557953, 14.214602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.624134, 18.336227, 14.259202>,  <23.247185, 19.003935, 14.376395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.624134, 18.336227, 14.259202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.263256, 18.309193, 14.088802>,  <23.046730, 18.292973, 13.986563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.263256, 18.309193, 14.088802>,  <23.624134, 18.336227, 14.259202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.263256, 18.309193, 14.088802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423976, -0.320521, -0.847060,
		-0.079294, -0.944827, 0.317827,
		-0.902195, -0.067584, -0.425999,
		22.992598, 18.288918, 13.961002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.631083, 17.729042, 13.817728>,  <23.624134, 18.336227, 14.259202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.631083, 17.729042, 13.817728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.325184, 17.953659, 13.691339>,  <23.141645, 18.088428, 13.615506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.325184, 17.953659, 13.691339>,  <23.631083, 17.729042, 13.817728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.325184, 17.953659, 13.691339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188389, -0.274093, -0.943071,
		-0.616178, -0.780734, 0.103823,
		-0.764744, 0.561541, -0.315971,
		23.095760, 18.122122, 13.596548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.325361, 17.386940, 13.346829>,  <23.631083, 17.729042, 13.817728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.325361, 17.386940, 13.346829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.186176, 17.747337, 13.243189>,  <23.102665, 17.963575, 13.181005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.186176, 17.747337, 13.243189>,  <23.325361, 17.386940, 13.346829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.186176, 17.747337, 13.243189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074712, -0.302143, -0.950330,
		-0.934526, -0.311323, 0.172450,
		-0.347964, 0.900992, -0.259101,
		23.081787, 18.017635, 13.165459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.683718, 17.380791, 13.073153>,  <23.325361, 17.386940, 13.346829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.683718, 17.380791, 13.073153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.834244, 17.716217, 12.915575>,  <22.924559, 17.917473, 12.821028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.834244, 17.716217, 12.915575>,  <22.683718, 17.380791, 13.073153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.834244, 17.716217, 12.915575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164502, -0.357970, -0.919128,
		-0.911771, 0.410686, 0.003236,
		0.376315, 0.838567, -0.393946,
		22.947138, 17.967787, 12.797391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.339315, 17.334631, 12.538777>,  <22.683718, 17.380791, 13.073153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.339315, 17.334631, 12.538777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.599403, 17.622955, 12.442740>,  <22.755457, 17.795950, 12.385118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.599403, 17.622955, 12.442740>,  <22.339315, 17.334631, 12.538777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.599403, 17.622955, 12.442740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255062, -0.090571, -0.962674,
		-0.715652, 0.687187, 0.124961,
		0.650219, 0.720812, -0.240092,
		22.794470, 17.839199, 12.370712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.069830, 17.701824, 11.994223>,  <22.339315, 17.334631, 12.538777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.069830, 17.701824, 11.994223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.446163, 17.828617, 11.946301>,  <22.671963, 17.904694, 11.917547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.446163, 17.828617, 11.946301>,  <22.069830, 17.701824, 11.994223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.446163, 17.828617, 11.946301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112160, -0.042329, -0.992788,
		-0.319767, 0.947487, -0.004271,
		0.940834, 0.316982, -0.119806,
		22.728413, 17.923712, 11.910358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.035040, 18.119980, 11.486595>,  <22.069830, 17.701824, 11.994223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.035040, 18.119980, 11.486595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.433907, 18.090324, 11.491746>,  <22.673225, 18.072531, 11.494836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.433907, 18.090324, 11.491746>,  <22.035040, 18.119980, 11.486595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.433907, 18.090324, 11.491746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002363, -0.140184, -0.990123,
		0.075209, 0.987346, -0.139612,
		0.997165, -0.074136, 0.012876,
		22.733055, 18.068083, 11.495609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.327875, 18.614500, 10.987456>,  <22.035040, 18.119980, 11.486595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.327875, 18.614500, 10.987456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.592606, 18.317291, 11.027269>,  <22.751444, 18.138966, 11.051157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.592606, 18.317291, 11.027269>,  <22.327875, 18.614500, 10.987456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.592606, 18.317291, 11.027269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044881, -0.171804, -0.984108,
		0.748314, 0.646840, -0.147052,
		0.661825, -0.743021, 0.099532,
		22.791153, 18.094385, 11.057129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.827545, 18.643427, 10.376131>,  <22.327875, 18.614500, 10.987456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.827545, 18.643427, 10.376131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.844551, 18.279678, 10.541655>,  <22.854755, 18.061430, 10.640969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.844551, 18.279678, 10.541655>,  <22.827545, 18.643427, 10.376131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.844551, 18.279678, 10.541655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152877, -0.403386, -0.902169,
		0.987330, 0.101618, 0.121872,
		0.042515, -0.909370, 0.413810,
		22.857306, 18.006866, 10.665797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.334415, 18.278959, 9.939785>,  <22.827545, 18.643427, 10.376131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.334415, 18.278959, 9.939785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.138046, 18.000946, 10.149899>,  <23.020226, 17.834139, 10.275969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.138046, 18.000946, 10.149899>,  <23.334415, 18.278959, 9.939785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.138046, 18.000946, 10.149899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048647, -0.580133, -0.813068,
		0.869844, -0.424707, 0.250989,
		-0.490922, -0.695032, 0.525286,
		22.990770, 17.792437, 10.307486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.685921, 17.684870, 9.834878>,  <23.334415, 18.278959, 9.939785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.685921, 17.684870, 9.834878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.306122, 17.583744, 9.909218>,  <23.078243, 17.523069, 9.953822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.306122, 17.583744, 9.909218>,  <23.685921, 17.684870, 9.834878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.306122, 17.583744, 9.909218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070478, -0.749002, -0.658808,
		0.305759, -0.612438, 0.728993,
		-0.949497, -0.252814, 0.185851,
		23.021273, 17.507900, 9.964973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.776632, 17.017090, 9.759154>,  <23.685921, 17.684870, 9.834878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.776632, 17.017090, 9.759154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.385250, 17.089054, 9.718650>,  <23.150421, 17.132233, 9.694347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.385250, 17.089054, 9.718650>,  <23.776632, 17.017090, 9.759154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.385250, 17.089054, 9.718650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039817, -0.645730, -0.762527,
		-0.202574, -0.742068, 0.638983,
		-0.978457, 0.179911, -0.101261,
		23.091713, 17.143028, 9.688272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.397398, 16.298233, 9.609964>,  <23.776632, 17.017090, 9.759154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.397398, 16.298233, 9.609964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.178928, 16.594860, 9.454132>,  <23.047848, 16.772837, 9.360633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<23.178928, 16.594860, 9.454132>,  <23.397398, 16.298233, 9.609964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.178928, 16.594860, 9.454132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080373, -0.509322, -0.856815,
		-0.833809, -0.436656, 0.337779,
		-0.546172, 0.741568, -0.389582,
		23.015078, 16.817329, 9.337257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.783066, 16.100105, 9.167356>,  <23.397398, 16.298233, 9.609964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.783066, 16.100105, 9.167356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.868088, 16.458996, 9.012537>,  <22.919102, 16.674330, 8.919646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.868088, 16.458996, 9.012537>,  <22.783066, 16.100105, 9.167356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.868088, 16.458996, 9.012537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095984, -0.375011, -0.922038,
		-0.972423, 0.233136, 0.006408,
		0.212557, 0.897226, -0.387046,
		22.931854, 16.728163, 8.896423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.012026, 16.076706, 9.081904>,  <22.783066, 16.100105, 9.167356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.012026, 16.076706, 9.081904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.929401, 15.715427, 8.931403>,  <21.879827, 15.498660, 8.841103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.929401, 15.715427, 8.931403>,  <22.012026, 16.076706, 9.081904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.929401, 15.715427, 8.931403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490795, -0.237021, 0.838416,
		-0.846435, 0.357847, -0.394326,
		-0.206561, -0.903198, -0.376253,
		21.867434, 15.444468, 8.818527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.323435, 15.999678, 9.270353>,  <22.012026, 16.076706, 9.081904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.323435, 15.999678, 9.270353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.463161, 15.632423, 9.195515>,  <21.546997, 15.412071, 9.150612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.463161, 15.632423, 9.195515>,  <21.323435, 15.999678, 9.270353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.463161, 15.632423, 9.195515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393808, -0.325040, 0.859805,
		-0.850230, -0.226666, -0.475111,
		0.349319, -0.918135, -0.187095,
		21.567957, 15.356983, 9.139386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.856546, 15.635832, 9.553318>,  <21.323435, 15.999678, 9.270353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.856546, 15.635832, 9.553318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.125736, 15.343044, 9.510750>,  <21.287251, 15.167372, 9.485209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.125736, 15.343044, 9.510750>,  <20.856546, 15.635832, 9.553318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.125736, 15.343044, 9.510750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257677, -0.366867, 0.893874,
		-0.693331, -0.574134, -0.435504,
		0.672975, -0.731970, -0.106420,
		21.327629, 15.123453, 9.478824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.510115, 14.981746, 9.636608>,  <20.856546, 15.635832, 9.553318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.510115, 14.981746, 9.636608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.893700, 14.913452, 9.727152>,  <21.123852, 14.872477, 9.781478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.893700, 14.913452, 9.727152>,  <20.510115, 14.981746, 9.636608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.893700, 14.913452, 9.727152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279775, -0.440331, 0.853132,
		-0.045985, -0.881453, -0.470028,
		0.958964, -0.170733, 0.226359,
		21.181389, 14.862232, 9.795059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.575705, 14.273251, 9.833110>,  <20.510115, 14.981746, 9.636608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.575705, 14.273251, 9.833110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.903450, 14.447643, 9.982008>,  <21.100098, 14.552279, 10.071347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.903450, 14.447643, 9.982008>,  <20.575705, 14.273251, 9.833110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.903450, 14.447643, 9.982008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294388, -0.237188, 0.925785,
		0.491918, -0.868137, -0.065995,
		0.819361, 0.435982, 0.372246,
		21.149258, 14.578438, 10.093681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.783453, 13.799972, 10.255855>,  <20.575705, 14.273251, 9.833110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.783453, 13.799972, 10.255855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.979900, 14.127453, 10.374869>,  <21.097769, 14.323942, 10.446279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.979900, 14.127453, 10.374869>,  <20.783453, 13.799972, 10.255855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.979900, 14.127453, 10.374869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102687, -0.284774, 0.953079,
		0.865021, -0.498625, -0.055787,
		0.491116, 0.818704, 0.297538,
		21.127235, 14.373064, 10.464130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.156898, 13.520125, 10.746943>,  <20.783453, 13.799972, 10.255855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.156898, 13.520125, 10.746943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.183395, 13.914124, 10.810690>,  <21.199293, 14.150522, 10.848938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.183395, 13.914124, 10.810690>,  <21.156898, 13.520125, 10.746943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.183395, 13.914124, 10.810690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049536, -0.162768, 0.985420,
		0.996573, -0.057382, -0.059575,
		0.066242, 0.984994, 0.159368,
		21.203268, 14.209621, 10.858500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.681141, 13.561574, 11.244087>,  <21.156898, 13.520125, 10.746943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.681141, 13.561574, 11.244087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.467754, 13.899876, 11.248343>,  <21.339722, 14.102857, 11.250897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.467754, 13.899876, 11.248343>,  <21.681141, 13.561574, 11.244087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.467754, 13.899876, 11.248343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006746, -0.008326, 0.999943,
		0.845794, 0.533508, -0.001264,
		-0.533467, 0.845754, 0.010641,
		21.307714, 14.153602, 11.251535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.874989, 13.887069, 11.753541>,  <21.681141, 13.561574, 11.244087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.874989, 13.887069, 11.753541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.554443, 14.115746, 11.683127>,  <21.362116, 14.252952, 11.640880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.554443, 14.115746, 11.683127>,  <21.874989, 13.887069, 11.753541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.554443, 14.115746, 11.683127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002966, 0.298076, 0.954538,
		0.598174, 0.764407, -0.240562,
		-0.801361, 0.571693, -0.176034,
		21.314035, 14.287253, 11.630318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.935688, 14.585307, 12.211715>,  <21.874989, 13.887069, 11.753541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.935688, 14.585307, 12.211715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.553482, 14.490013, 12.142165>,  <21.324158, 14.432837, 12.100435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.553482, 14.490013, 12.142165>,  <21.935688, 14.585307, 12.211715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.553482, 14.490013, 12.142165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252666, 0.357084, 0.899250,
		-0.152144, 0.903181, -0.401394,
		-0.955517, -0.238234, -0.173875,
		21.266827, 14.418543, 12.090003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.593218, 15.088401, 12.576138>,  <21.935688, 14.585307, 12.211715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.593218, 15.088401, 12.576138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.308094, 14.816654, 12.506438>,  <21.137020, 14.653606, 12.464619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.308094, 14.816654, 12.506438>,  <21.593218, 15.088401, 12.576138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.308094, 14.816654, 12.506438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420806, 0.215508, 0.881180,
		-0.561092, 0.701439, -0.439498,
		-0.712810, -0.679366, -0.174250,
		21.094252, 14.612844, 12.454164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.938820, 15.372157, 12.662637>,  <21.593218, 15.088401, 12.576138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.938820, 15.372157, 12.662637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.891010, 14.982040, 12.736954>,  <20.862324, 14.747971, 12.781544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.891010, 14.982040, 12.736954>,  <20.938820, 15.372157, 12.662637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.891010, 14.982040, 12.736954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310687, 0.214479, 0.925998,
		-0.942967, 0.052956, -0.328646,
		-0.119525, -0.975292, 0.185793,
		20.855152, 14.689453, 12.792692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.553585, 15.392733, 13.156207>,  <20.938820, 15.372157, 12.662637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.553585, 15.392733, 13.156207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.665874, 15.010376, 13.190773>,  <20.733248, 14.780962, 13.211513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.665874, 15.010376, 13.190773>,  <20.553585, 15.392733, 13.156207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.665874, 15.010376, 13.190773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075048, 0.067899, 0.994865,
		-0.956851, -0.285765, -0.052677,
		0.280721, -0.955891, 0.086415,
		20.750092, 14.723609, 13.216698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.995409, 15.003304, 13.434765>,  <20.553585, 15.392733, 13.156207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.995409, 15.003304, 13.434765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.326874, 14.795795, 13.518856>,  <20.525753, 14.671289, 13.569311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.326874, 14.795795, 13.518856>,  <19.995409, 15.003304, 13.434765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.326874, 14.795795, 13.518856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239408, 0.011013, 0.970857,
		-0.505970, -0.854841, -0.115072,
		0.828660, -0.518773, 0.210228,
		20.575472, 14.640163, 13.581924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.817591, 14.458879, 13.970242>,  <19.995409, 15.003304, 13.434765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.817591, 14.458879, 13.970242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.214451, 14.504543, 13.990675>,  <20.452566, 14.531941, 14.002934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.214451, 14.504543, 13.990675>,  <19.817591, 14.458879, 13.970242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.214451, 14.504543, 13.990675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059654, 0.072969, 0.995549,
		0.109927, -0.990779, 0.079206,
		0.992148, 0.114163, 0.051083,
		20.512094, 14.538792, 14.006000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.033064, 13.957568, 14.392084>,  <19.817591, 14.458879, 13.970242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.033064, 13.957568, 14.392084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.284271, 14.266861, 14.427195>,  <20.434996, 14.452436, 14.448260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.284271, 14.266861, 14.427195>,  <20.033064, 13.957568, 14.392084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.284271, 14.266861, 14.427195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156353, 0.014881, 0.987589,
		0.762330, -0.633947, 0.130242,
		0.628018, 0.773233, 0.087776,
		20.472677, 14.498831, 14.453527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.278479, 13.867417, 15.113900>,  <20.033064, 13.957568, 14.392084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.278479, 13.867417, 15.113900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.431782, 14.225266, 15.022015>,  <20.523764, 14.439975, 14.966884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.431782, 14.225266, 15.022015>,  <20.278479, 13.867417, 15.113900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.431782, 14.225266, 15.022015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076541, 0.278610, 0.957350,
		0.920465, -0.349327, 0.175254,
		0.383256, 0.894621, -0.229713,
		20.546759, 14.493651, 14.953101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.822092, 13.917701, 15.544161>,  <20.278479, 13.867417, 15.113900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.822092, 13.917701, 15.544161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.742222, 14.295238, 15.438871>,  <20.694300, 14.521761, 15.375698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.742222, 14.295238, 15.438871>,  <20.822092, 13.917701, 15.544161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.742222, 14.295238, 15.438871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254876, 0.209356, 0.944038,
		0.946133, 0.255592, 0.198760,
		-0.199677, 0.943845, -0.263223,
		20.682318, 14.578392, 15.359904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<21.384747, 14.710431, 16.225086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.089214, 14.879524, 16.015162>,  <20.911896, 14.980980, 15.889207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.089214, 14.879524, 16.015162>,  <21.384747, 14.710431, 16.225086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.089214, 14.879524, 16.015162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341095, 0.437063, 0.832244,
		0.581192, 0.793897, -0.178724,
		-0.738830, 0.422732, -0.524812,
		20.867565, 15.006344, 15.857718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.504333, 15.397656, 16.199669>,  <21.384747, 14.710431, 16.225086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.504333, 15.397656, 16.199669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.110458, 15.367073, 16.136999>,  <20.874134, 15.348723, 16.099398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.110458, 15.367073, 16.136999>,  <21.504333, 15.397656, 16.199669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.110458, 15.367073, 16.136999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173881, 0.495467, 0.851045,
		0.012556, 0.865255, -0.501175,
		-0.984687, -0.076459, -0.156673,
		20.815052, 15.344135, 16.089998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.193821, 16.109972, 16.241980>,  <21.504333, 15.397656, 16.199669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.193821, 16.109972, 16.241980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.892918, 15.857437, 16.317369>,  <20.712376, 15.705916, 16.362604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.892918, 15.857437, 16.317369>,  <21.193821, 16.109972, 16.241980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.892918, 15.857437, 16.317369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270061, 0.556380, 0.785817,
		-0.600977, 0.540238, -0.589041,
		-0.752259, -0.631335, 0.188474,
		20.667240, 15.668036, 16.373911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.663977, 16.550499, 16.443634>,  <21.193821, 16.109972, 16.241980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.663977, 16.550499, 16.443634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.528297, 16.200394, 16.581535>,  <20.446890, 15.990330, 16.664276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.528297, 16.200394, 16.581535>,  <20.663977, 16.550499, 16.443634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.528297, 16.200394, 16.581535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396020, 0.465284, 0.791631,
		-0.853295, 0.131991, -0.504446,
		-0.339199, -0.875265, 0.344753,
		20.426538, 15.937814, 16.684961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.901854, 16.705664, 16.661545>,  <20.663977, 16.550499, 16.443634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.901854, 16.705664, 16.661545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.007214, 16.354427, 16.821333>,  <20.070431, 16.143686, 16.917206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.007214, 16.354427, 16.821333>,  <19.901854, 16.705664, 16.661545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.007214, 16.354427, 16.821333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523766, 0.217569, 0.823609,
		-0.810116, -0.426168, -0.402607,
		0.263402, -0.878091, 0.399469,
		20.086235, 16.091000, 16.941174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.269300, 16.387115, 16.916374>,  <19.901854, 16.705664, 16.661545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.269300, 16.387115, 16.916374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.589985, 16.257446, 17.117241>,  <19.782396, 16.179646, 17.237761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.589985, 16.257446, 17.117241>,  <19.269300, 16.387115, 16.916374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.589985, 16.257446, 17.117241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464533, 0.190754, 0.864767,
		-0.376123, -0.926567, 0.002341,
		0.801711, -0.324172, 0.502168,
		19.830498, 16.160194, 17.267891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.955236, 16.181923, 17.630499>,  <19.269300, 16.387115, 16.916374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.955236, 16.181923, 17.630499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.349983, 16.141579, 17.680965>,  <19.586832, 16.117373, 17.711245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.349983, 16.141579, 17.680965>,  <18.955236, 16.181923, 17.630499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.349983, 16.141579, 17.680965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109442, 0.156956, 0.981523,
		-0.118801, -0.982442, 0.143856,
		0.986868, -0.100862, 0.126167,
		19.646044, 16.111320, 17.718815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.039560, 15.662678, 18.187284>,  <18.955236, 16.181923, 17.630499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.039560, 15.662678, 18.187284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.358871, 15.901054, 18.152407>,  <19.550459, 16.044081, 18.131479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.358871, 15.901054, 18.152407>,  <19.039560, 15.662678, 18.187284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.358871, 15.901054, 18.152407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004274, 0.150374, 0.988620,
		0.602273, -0.788822, 0.122587,
		0.798279, 0.595943, -0.087195,
		19.598354, 16.079838, 18.126247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.526011, 15.337773, 18.675852>,  <19.039560, 15.662678, 18.187284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.526011, 15.337773, 18.675852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.641098, 15.716797, 18.620211>,  <19.710152, 15.944211, 18.586826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.641098, 15.716797, 18.620211>,  <19.526011, 15.337773, 18.675852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.641098, 15.716797, 18.620211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023295, 0.138278, 0.990119,
		0.957431, -0.288118, 0.017712,
		0.287721, 0.947558, -0.139104,
		19.727415, 16.001064, 18.578480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.025623, 15.487180, 19.156406>,  <19.526011, 15.337773, 18.675852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.025623, 15.487180, 19.156406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.878864, 15.842873, 19.047115>,  <19.790810, 16.056288, 18.981541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.878864, 15.842873, 19.047115>,  <20.025623, 15.487180, 19.156406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.878864, 15.842873, 19.047115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008627, 0.296952, 0.954854,
		0.930222, 0.347975, -0.116622,
		-0.366897, 0.889231, -0.273229,
		19.768795, 16.109642, 18.965147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.419872, 15.990543, 19.412964>,  <20.025623, 15.487180, 19.156406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.419872, 15.990543, 19.412964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.061775, 16.160065, 19.357929>,  <19.846916, 16.261778, 19.324909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.061775, 16.160065, 19.357929>,  <20.419872, 15.990543, 19.412964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.061775, 16.160065, 19.357929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013175, 0.283472, 0.958890,
		0.445382, 0.860253, -0.248193,
		-0.895244, 0.423803, -0.137587,
		19.793201, 16.287205, 19.316652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.432135, 16.612289, 19.738287>,  <20.419872, 15.990543, 19.412964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.432135, 16.612289, 19.738287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.048084, 16.504700, 19.707790>,  <19.817654, 16.440145, 19.689493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.048084, 16.504700, 19.707790>,  <20.432135, 16.612289, 19.738287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.048084, 16.504700, 19.707790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098980, 0.072002, 0.992481,
		-0.261464, 0.960452, -0.095754,
		-0.960125, -0.268975, -0.076240,
		19.760046, 16.424007, 19.684919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.250021, 16.965080, 20.371645>,  <20.432135, 16.612289, 19.738287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.250021, 16.965080, 20.371645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.946430, 16.724735, 20.271315>,  <19.764275, 16.580528, 20.211117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.946430, 16.724735, 20.271315>,  <20.250021, 16.965080, 20.371645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.946430, 16.724735, 20.271315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330997, 0.024315, 0.943319,
		-0.560707, 0.798982, -0.217338,
		-0.758979, -0.600863, -0.250827,
		19.718737, 16.544476, 20.196066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.759815, 17.177385, 20.824150>,  <20.250021, 16.965080, 20.371645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.759815, 17.177385, 20.824150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.603138, 16.831615, 20.698071>,  <19.509132, 16.624153, 20.622423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.603138, 16.831615, 20.698071>,  <19.759815, 17.177385, 20.824150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.603138, 16.831615, 20.698071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566172, -0.043597, 0.823133,
		-0.725277, 0.500871, -0.472335,
		-0.391691, -0.864423, -0.315199,
		19.485630, 16.572289, 20.603512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.010902, 17.218435, 20.649599>,  <19.759815, 17.177385, 20.824150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.010902, 17.218435, 20.649599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.081806, 16.830204, 20.714781>,  <19.124348, 16.597265, 20.753889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.081806, 16.830204, 20.714781>,  <19.010902, 17.218435, 20.649599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.081806, 16.830204, 20.714781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599787, 0.024737, 0.799777,
		-0.780279, -0.239504, -0.577756,
		0.177258, -0.970580, 0.162953,
		19.134983, 16.539030, 20.763666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.391750, 16.994141, 20.763229>,  <19.010902, 17.218435, 20.649599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.391750, 16.994141, 20.763229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.641678, 16.709976, 20.892790>,  <18.791634, 16.539476, 20.970526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.641678, 16.709976, 20.892790>,  <18.391750, 16.994141, 20.763229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.641678, 16.709976, 20.892790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387983, 0.077496, 0.918403,
		-0.677547, -0.699505, -0.227208,
		0.624820, -0.710413, 0.323904,
		18.829124, 16.496853, 20.989962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.904881, 16.501104, 21.038687>,  <18.391750, 16.994141, 20.763229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.904881, 16.501104, 21.038687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.264626, 16.414402, 21.190561>,  <18.480473, 16.362381, 21.281687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.264626, 16.414402, 21.190561>,  <17.904881, 16.501104, 21.038687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.264626, 16.414402, 21.190561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321322, 0.261204, 0.910233,
		-0.296473, -0.940633, 0.165269,
		0.899364, -0.216755, 0.379686,
		18.534435, 16.349375, 21.304466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.831381, 16.095226, 21.673014>,  <17.904881, 16.501104, 21.038687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.831381, 16.095226, 21.673014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.187275, 16.276657, 21.693556>,  <18.400812, 16.385515, 21.705881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.187275, 16.276657, 21.693556>,  <17.831381, 16.095226, 21.673014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.187275, 16.276657, 21.693556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265927, 0.423599, 0.865937,
		0.371011, -0.784115, 0.497509,
		0.889738, 0.453573, 0.051358,
		18.454197, 16.412729, 21.708963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.164787, 15.818664, 22.327120>,  <17.831381, 16.095226, 21.673014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.164787, 15.818664, 22.327120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.337193, 16.171955, 22.253220>,  <18.440636, 16.383930, 22.208879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.337193, 16.171955, 22.253220>,  <18.164787, 15.818664, 22.327120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337193, 16.171955, 22.253220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199881, 0.293112, 0.934950,
		0.879929, -0.366048, 0.302876,
		0.431014, 0.883229, -0.184752,
		18.466497, 16.436924, 22.197794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.757303, 15.878716, 22.875439>,  <18.164787, 15.818664, 22.327120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.757303, 15.878716, 22.875439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.687450, 16.244324, 22.728977>,  <18.645538, 16.463688, 22.641100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.687450, 16.244324, 22.728977>,  <18.757303, 15.878716, 22.875439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.687450, 16.244324, 22.728977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126834, 0.347889, 0.928917,
		0.976430, 0.208661, 0.055176,
		-0.174633, 0.914021, -0.366154,
		18.635061, 16.518530, 22.619131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232300, 16.336258, 23.278681>,  <18.757303, 15.878716, 22.875439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.232300, 16.336258, 23.278681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.965858, 16.584034, 23.112499>,  <18.805994, 16.732698, 23.012791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.965858, 16.584034, 23.112499>,  <19.232300, 16.336258, 23.278681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.965858, 16.584034, 23.112499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222326, 0.366793, 0.903346,
		0.711953, 0.694088, -0.106605,
		-0.666104, 0.619439, -0.415453,
		18.766027, 16.769865, 22.987864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.386595, 17.027580, 23.466429>,  <19.232300, 16.336258, 23.278681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.386595, 17.027580, 23.466429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.998573, 17.076962, 23.382755>,  <18.765760, 17.106590, 23.332552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.998573, 17.076962, 23.382755>,  <19.386595, 17.027580, 23.466429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.998573, 17.076962, 23.382755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167393, 0.284257, 0.944022,
		0.176005, 0.950766, -0.255079,
		-0.970052, 0.123454, -0.209182,
		18.707558, 17.113998, 23.320000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.125513, 17.728691, 23.692087>,  <19.386595, 17.027580, 23.466429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.125513, 17.728691, 23.692087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.840595, 17.448719, 23.671164>,  <18.669645, 17.280737, 23.658609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.840595, 17.448719, 23.671164>,  <19.125513, 17.728691, 23.692087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.840595, 17.448719, 23.671164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274393, 0.209095, 0.938609,
		-0.646022, 0.682920, -0.340993,
		-0.712295, -0.699928, -0.052308,
		18.626907, 17.238741, 23.655472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.397701, 17.968885, 23.853466>,  <19.125513, 17.728691, 23.692087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.397701, 17.968885, 23.853466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.520275, 17.603058, 23.959044>,  <18.593819, 17.383562, 24.022390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.520275, 17.603058, 23.959044>,  <18.397701, 17.968885, 23.853466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.520275, 17.603058, 23.959044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007244, 0.275035, 0.961407,
		-0.951864, -0.296519, 0.077655,
		0.306433, -0.914567, 0.263944,
		18.612206, 17.328688, 24.038227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.631161, 18.683897, 23.723387>,  <18.397701, 17.968885, 23.853466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.631161, 18.683897, 23.723387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.688854, 19.064205, 23.833099>,  <18.723471, 19.292391, 23.898928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.688854, 19.064205, 23.833099>,  <18.631161, 18.683897, 23.723387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.688854, 19.064205, 23.833099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403609, 0.309599, -0.860958,
		-0.903491, 0.013475, 0.428394,
		0.144232, 0.950772, 0.274281,
		18.732124, 19.349436, 23.915384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.144012, 18.903313, 23.402807>,  <18.631161, 18.683897, 23.723387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.144012, 18.903313, 23.402807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.385574, 19.214867, 23.470495>,  <18.530512, 19.401798, 23.511108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.385574, 19.214867, 23.470495>,  <18.144012, 18.903313, 23.402807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.385574, 19.214867, 23.470495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201428, 0.354555, -0.913081,
		-0.771184, 0.517329, 0.371007,
		0.603906, 0.778885, 0.169222,
		18.566746, 19.448532, 23.521261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750124, 19.467535, 23.195248>,  <18.144012, 18.903313, 23.402807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750124, 19.467535, 23.195248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.135609, 19.573261, 23.180298>,  <18.366899, 19.636698, 23.171328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.135609, 19.573261, 23.180298>,  <17.750124, 19.467535, 23.195248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.135609, 19.573261, 23.180298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066231, 0.101113, -0.992668,
		-0.258601, 0.959120, 0.114950,
		0.963711, 0.264318, -0.037376,
		18.424723, 19.652557, 23.169085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847401, 19.901747, 22.619949>,  <17.750124, 19.467535, 23.195248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.847401, 19.901747, 22.619949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.231300, 19.817833, 22.694641>,  <18.461641, 19.767485, 22.739456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.231300, 19.817833, 22.694641>,  <17.847401, 19.901747, 22.619949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.231300, 19.817833, 22.694641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214932, 0.120667, -0.969146,
		0.180782, 0.970273, 0.160900,
		0.959751, -0.209786, 0.186729,
		18.519226, 19.754896, 22.750660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265881, 20.486898, 22.221359>,  <17.847401, 19.901747, 22.619949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265881, 20.486898, 22.221359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.477467, 20.153347, 22.284409>,  <18.604418, 19.953217, 22.322237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.477467, 20.153347, 22.284409>,  <18.265881, 20.486898, 22.221359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.477467, 20.153347, 22.284409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309122, 0.016351, -0.950882,
		0.790342, 0.551707, 0.266419,
		0.528964, -0.833877, 0.157622,
		18.636156, 19.903183, 22.331696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.903536, 20.619230, 21.932302>,  <18.265881, 20.486898, 22.221359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.903536, 20.619230, 21.932302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.852772, 20.222588, 21.942165>,  <18.822313, 19.984602, 21.948082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.852772, 20.222588, 21.942165>,  <18.903536, 20.619230, 21.932302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.852772, 20.222588, 21.942165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335087, -0.066255, -0.939855,
		0.933600, -0.111017, 0.340684,
		-0.126911, -0.991608, 0.024655,
		18.814699, 19.925106, 21.949562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.498528, 20.414469, 21.627253>,  <18.903536, 20.619230, 21.932302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.498528, 20.414469, 21.627253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.262142, 20.092258, 21.609871>,  <19.120312, 19.898932, 21.599442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.262142, 20.092258, 21.609871>,  <19.498528, 20.414469, 21.627253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.262142, 20.092258, 21.609871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421414, -0.262334, -0.868096,
		0.687876, -0.531325, 0.494490,
		-0.590963, -0.805527, -0.043455,
		19.084854, 19.850599, 21.596834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.936934, 19.912127, 21.415707>,  <19.498528, 20.414469, 21.627253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.936934, 19.912127, 21.415707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.583096, 19.740768, 21.341984>,  <19.370792, 19.637955, 21.297750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.583096, 19.740768, 21.341984>,  <19.936934, 19.912127, 21.415707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.583096, 19.740768, 21.341984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394488, -0.476572, -0.785658,
		0.248735, -0.767697, 0.590570,
		-0.884596, -0.428393, -0.184307,
		19.317717, 19.612251, 21.286692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.136488, 19.146673, 21.377655>,  <19.936934, 19.912127, 21.415707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.136488, 19.146673, 21.377655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.791447, 19.243404, 21.199923>,  <19.584421, 19.301443, 21.093283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.791447, 19.243404, 21.199923>,  <20.136488, 19.146673, 21.377655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.791447, 19.243404, 21.199923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333627, -0.388302, -0.859019,
		-0.380248, -0.889242, 0.254282,
		-0.862615, 0.241805, -0.444327,
		19.532665, 19.315952, 21.066622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002554, 18.615334, 21.025074>,  <20.136488, 19.146673, 21.377655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002554, 18.615334, 21.025074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.775146, 18.882740, 20.833292>,  <19.638702, 19.043184, 20.718224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.775146, 18.882740, 20.833292>,  <20.002554, 18.615334, 21.025074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.775146, 18.882740, 20.833292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252284, -0.413046, -0.875069,
		-0.783033, -0.618451, 0.066168,
		-0.568518, 0.668515, -0.479453,
		19.604591, 19.083294, 20.689457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.505287, 18.246716, 20.614023>,  <20.002554, 18.615334, 21.025074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.505287, 18.246716, 20.614023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.582909, 18.614288, 20.476671>,  <19.629482, 18.834831, 20.394260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.582909, 18.614288, 20.476671>,  <19.505287, 18.246716, 20.614023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.582909, 18.614288, 20.476671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221096, -0.381997, -0.897327,
		-0.955751, 0.098210, -0.277300,
		0.194054, 0.918931, -0.343380,
		19.641125, 18.889967, 20.373657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.238970, 18.158133, 19.873066>,  <19.505287, 18.246716, 20.614023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.238970, 18.158133, 19.873066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.454178, 18.491535, 19.923351>,  <19.583303, 18.691576, 19.953522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.454178, 18.491535, 19.923351>,  <19.238970, 18.158133, 19.873066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.454178, 18.491535, 19.923351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455329, -0.161866, -0.875486,
		-0.709373, 0.528270, -0.466606,
		0.538020, 0.833505, 0.125713,
		19.615583, 18.741587, 19.961065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.039492, 18.618261, 19.268423>,  <19.238970, 18.158133, 19.873066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.039492, 18.618261, 19.268423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.405510, 18.734241, 19.380579>,  <19.625120, 18.803829, 19.447872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.405510, 18.734241, 19.380579>,  <19.039492, 18.618261, 19.268423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.405510, 18.734241, 19.380579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287139, 0.019931, -0.957681,
		-0.283269, 0.956834, -0.065018,
		0.915046, 0.289951, 0.280390,
		19.680023, 18.821226, 19.464697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.191586, 18.978518, 18.766373>,  <19.039492, 18.618261, 19.268423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.191586, 18.978518, 18.766373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.545341, 18.908512, 18.939449>,  <19.757595, 18.866508, 19.043295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.545341, 18.908512, 18.939449>,  <19.191586, 18.978518, 18.766373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.545341, 18.908512, 18.939449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444214, 0.031060, -0.895382,
		0.143263, 0.984076, 0.105213,
		0.884392, -0.175012, 0.432691,
		19.810659, 18.856009, 19.069256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.642931, 19.401947, 18.438307>,  <19.191586, 18.978518, 18.766373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.642931, 19.401947, 18.438307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.885178, 19.141796, 18.621714>,  <20.030525, 18.985706, 18.731758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.885178, 19.141796, 18.621714>,  <19.642931, 19.401947, 18.438307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.885178, 19.141796, 18.621714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555627, -0.066878, -0.828738,
		0.569658, 0.756661, 0.320865,
		0.605615, -0.650378, 0.458519,
		20.066862, 18.946682, 18.759270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.310078, 19.675205, 18.258953>,  <19.642931, 19.401947, 18.438307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.310078, 19.675205, 18.258953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.330803, 19.279930, 18.316635>,  <20.343239, 19.042765, 18.351244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.330803, 19.279930, 18.316635>,  <20.310078, 19.675205, 18.258953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.330803, 19.279930, 18.316635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603672, -0.084040, -0.792791,
		0.795547, 0.128131, 0.592189,
		0.051814, -0.988190, 0.144207,
		20.346348, 18.983473, 18.359898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.975773, 19.500921, 18.368042>,  <20.310078, 19.675205, 18.258953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.975773, 19.500921, 18.368042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.818130, 19.157394, 18.237129>,  <20.723545, 18.951279, 18.158581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.818130, 19.157394, 18.237129>,  <20.975773, 19.500921, 18.368042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.818130, 19.157394, 18.237129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697197, -0.047342, -0.715314,
		0.598831, -0.510088, 0.617424,
		-0.394103, -0.858818, -0.327282,
		20.699900, 18.899750, 18.138945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.555553, 19.184225, 18.172785>,  <20.975773, 19.500921, 18.368042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.555553, 19.184225, 18.172785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.241043, 18.997978, 18.010321>,  <21.052336, 18.886230, 17.912842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.241043, 18.997978, 18.010321>,  <21.555553, 19.184225, 18.172785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.241043, 18.997978, 18.010321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522283, -0.149631, -0.839542,
		0.330132, -0.872244, 0.360837,
		-0.786277, -0.465619, -0.406160,
		21.005159, 18.858292, 17.888472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.931215, 18.708998, 17.620983>,  <21.555553, 19.184225, 18.172785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.931215, 18.708998, 17.620983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.540123, 18.686806, 17.540024>,  <21.305468, 18.673491, 17.491447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.540123, 18.686806, 17.540024>,  <21.931215, 18.708998, 17.620983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.540123, 18.686806, 17.540024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207700, -0.117600, -0.971098,
		0.030075, -0.991510, 0.126504,
		-0.977730, -0.055480, -0.202400,
		21.246803, 18.670162, 17.479303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.681166, 18.046492, 17.418688>,  <21.931215, 18.708998, 17.620983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.681166, 18.046492, 17.418688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.445255, 18.317726, 17.243250>,  <21.303709, 18.480467, 17.137987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.445255, 18.317726, 17.243250>,  <21.681166, 18.046492, 17.418688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.445255, 18.317726, 17.243250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270093, -0.346203, -0.898440,
		-0.761062, -0.648338, 0.021036,
		-0.589775, 0.678086, -0.438593,
		21.268322, 18.521152, 17.111671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.614313, 13.411490, 13.024764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.696751, 13.794254, 12.942934>,  <20.746214, 14.023912, 12.893836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.696751, 13.794254, 12.942934>,  <20.614313, 13.411490, 13.024764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.696751, 13.794254, 12.942934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033963, -0.215932, -0.975817,
		-0.977942, 0.194163, -0.077002,
		0.206095, 0.956909, -0.204575,
		20.758579, 14.081326, 12.881561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.213217, 13.619531, 12.356878>,  <20.614313, 13.411490, 13.024764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.213217, 13.619531, 12.356878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.469986, 13.925003, 12.384385>,  <20.624046, 14.108286, 12.400889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.469986, 13.925003, 12.384385>,  <20.213217, 13.619531, 12.356878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.469986, 13.925003, 12.384385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101947, 0.003883, -0.994782,
		-0.759963, 0.645583, -0.075363,
		0.641922, 0.763680, 0.068766,
		20.662563, 14.154107, 12.405015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.075436, 13.935429, 11.843125>,  <20.213217, 13.619531, 12.356878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.075436, 13.935429, 11.843125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.426479, 14.116222, 11.907019>,  <20.637106, 14.224699, 11.945354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.426479, 14.116222, 11.907019>,  <20.075436, 13.935429, 11.843125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.426479, 14.116222, 11.907019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132286, 0.091931, -0.986939,
		-0.460767, 0.887275, 0.020888,
		0.877607, 0.451985, 0.159733,
		20.689762, 14.251818, 11.954939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.082035, 14.628992, 11.525156>,  <20.075436, 13.935429, 11.843125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.082035, 14.628992, 11.525156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.472721, 14.545780, 11.546154>,  <20.707132, 14.495853, 11.558753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.472721, 14.545780, 11.546154>,  <20.082035, 14.628992, 11.525156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.472721, 14.545780, 11.546154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062356, 0.041129, -0.997206,
		0.205290, 0.977257, 0.053143,
		0.976713, -0.208030, 0.052495,
		20.765736, 14.483371, 11.561902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.497473, 15.196547, 11.141728>,  <20.082035, 14.628992, 11.525156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.497473, 15.196547, 11.141728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.732033, 14.875168, 11.182928>,  <20.872768, 14.682341, 11.207647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.732033, 14.875168, 11.182928>,  <20.497473, 15.196547, 11.141728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.732033, 14.875168, 11.182928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379471, 0.160141, -0.911239,
		0.715638, 0.573435, 0.398792,
		0.586399, -0.803447, 0.102999,
		20.907953, 14.634133, 11.213828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.128384, 15.468732, 11.074534>,  <20.497473, 15.196547, 11.141728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.128384, 15.468732, 11.074534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.153229, 15.074326, 11.012678>,  <21.168137, 14.837682, 10.975564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.153229, 15.074326, 11.012678>,  <21.128384, 15.468732, 11.074534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.153229, 15.074326, 11.012678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426164, 0.166308, -0.889228,
		0.902511, -0.010670, 0.430535,
		0.062114, -0.986016, -0.154641,
		21.171864, 14.778521, 10.966286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.754091, 15.464449, 10.877563>,  <21.128384, 15.468732, 11.074534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.754091, 15.464449, 10.877563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.577469, 15.127296, 10.754548>,  <21.471497, 14.925005, 10.680738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.577469, 15.127296, 10.754548>,  <21.754091, 15.464449, 10.877563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.577469, 15.127296, 10.754548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395212, 0.125008, -0.910044,
		0.805505, -0.523376, 0.277920,
		-0.441554, -0.842882, -0.307539,
		21.445004, 14.874432, 10.662287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.256876, 15.128123, 10.526257>,  <21.754091, 15.464449, 10.877563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.256876, 15.128123, 10.526257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.918888, 14.958519, 10.395880>,  <21.716095, 14.856756, 10.317654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.918888, 14.958519, 10.395880>,  <22.256876, 15.128123, 10.526257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.918888, 14.958519, 10.395880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233355, 0.256072, -0.938068,
		0.481216, -0.868701, -0.117429,
		-0.844971, -0.424011, -0.325942,
		21.665396, 14.831316, 10.298098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.435194, 14.626713, 9.961264>,  <22.256876, 15.128123, 10.526257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.435194, 14.626713, 9.961264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.042156, 14.690369, 9.922935>,  <21.806334, 14.728562, 9.899937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.042156, 14.690369, 9.922935>,  <22.435194, 14.626713, 9.961264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.042156, 14.690369, 9.922935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120679, 0.154686, -0.980565,
		-0.141225, -0.975062, -0.171199,
		-0.982594, 0.159141, -0.095824,
		21.747377, 14.738111, 9.894187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.272327, 14.269585, 9.473971>,  <22.435194, 14.626713, 9.961264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.272327, 14.269585, 9.473971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.977077, 14.539234, 9.463162>,  <21.799927, 14.701024, 9.456676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.977077, 14.539234, 9.463162>,  <22.272327, 14.269585, 9.473971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.977077, 14.539234, 9.463162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201919, 0.182517, -0.962245,
		-0.643740, -0.715714, -0.270838,
		-0.738125, 0.674123, -0.027023,
		21.755640, 14.741471, 9.455055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.909533, 14.139759, 8.888985>,  <22.272327, 14.269585, 9.473971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.909533, 14.139759, 8.888985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.810719, 14.519123, 8.968475>,  <21.751431, 14.746741, 9.016170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.810719, 14.519123, 8.968475>,  <21.909533, 14.139759, 8.888985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.810719, 14.519123, 8.968475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099560, 0.228840, -0.968360,
		-0.963878, -0.219435, -0.150955,
		-0.247037, 0.948410, 0.198727,
		21.736607, 14.803646, 9.028093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.393524, 14.333230, 8.341180>,  <21.909533, 14.139759, 8.888985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.393524, 14.333230, 8.341180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.559319, 14.663540, 8.494176>,  <21.658794, 14.861726, 8.585974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.559319, 14.663540, 8.494176>,  <21.393524, 14.333230, 8.341180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.559319, 14.663540, 8.494176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073871, 0.388377, -0.918535,
		-0.907053, 0.408973, 0.099976,
		0.414484, 0.825775, 0.382490,
		21.683664, 14.911272, 8.608923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.013803, 14.902180, 8.109227>,  <21.393524, 14.333230, 8.341180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.013803, 14.902180, 8.109227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.401077, 14.990204, 8.156881>,  <21.633442, 15.043018, 8.185473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.401077, 14.990204, 8.156881>,  <21.013803, 14.902180, 8.109227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.401077, 14.990204, 8.156881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002161, 0.468716, -0.883346,
		-0.250229, 0.855500, 0.453328,
		0.968184, 0.220060, 0.119135,
		21.691532, 15.056222, 8.192622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.967352, 15.152791, 7.416137>,  <21.013803, 14.902180, 8.109227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.967352, 15.152791, 7.416137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.334229, 15.195251, 7.569754>,  <21.554356, 15.220728, 7.661924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.334229, 15.195251, 7.569754>,  <20.967352, 15.152791, 7.416137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.334229, 15.195251, 7.569754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276681, 0.523896, -0.805594,
		-0.286713, 0.845142, 0.451144,
		0.917193, 0.106151, 0.384042,
		21.609386, 15.227097, 7.684966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.241135, 15.422950, 7.508654>,  <20.967352, 15.152791, 7.416137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.241135, 15.422950, 7.508654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.847454, 15.488300, 7.481355>,  <19.611246, 15.527511, 7.464975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.847454, 15.488300, 7.481355>,  <20.241135, 15.422950, 7.508654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.847454, 15.488300, 7.481355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080394, 0.755777, 0.649875,
		0.157754, 0.634121, -0.756970,
		-0.984200, 0.163376, -0.068247,
		19.552195, 15.537313, 7.460881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.100225, 16.269892, 7.369547>,  <20.241135, 15.422950, 7.508654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.100225, 16.269892, 7.369547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.771488, 16.125362, 7.545739>,  <19.574245, 16.038645, 7.651454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.771488, 16.125362, 7.545739>,  <20.100225, 16.269892, 7.369547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.771488, 16.125362, 7.545739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006458, 0.767199, 0.641376,
		-0.569679, 0.529955, -0.628183,
		-0.821842, -0.361321, 0.440480,
		19.524935, 16.016966, 7.677883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.585499, 16.863407, 7.344648>,  <20.100225, 16.269892, 7.369547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.585499, 16.863407, 7.344648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.476803, 16.628494, 7.649609>,  <19.411585, 16.487547, 7.832585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.476803, 16.628494, 7.649609>,  <19.585499, 16.863407, 7.344648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.476803, 16.628494, 7.649609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212875, 0.809269, 0.547512,
		-0.938532, -0.013516, -0.344927,
		-0.271739, -0.587283, 0.762402,
		19.395281, 16.452309, 7.878329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.056551, 17.222891, 7.597417>,  <19.585499, 16.863407, 7.344648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.056551, 17.222891, 7.597417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.160294, 16.976089, 7.894615>,  <19.222538, 16.828009, 8.072934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.160294, 16.976089, 7.894615>,  <19.056551, 17.222891, 7.597417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.160294, 16.976089, 7.894615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112192, 0.744862, 0.657718,
		-0.959243, -0.253940, 0.123960,
		0.259355, -0.617005, 0.742994,
		19.238100, 16.790989, 8.117514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.618841, 17.384163, 8.190491>,  <19.056551, 17.222891, 7.597417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.618841, 17.384163, 8.190491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.928806, 17.184078, 8.345045>,  <19.114786, 17.064028, 8.437778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.928806, 17.184078, 8.345045>,  <18.618841, 17.384163, 8.190491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.928806, 17.184078, 8.345045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007929, 0.603565, 0.797274,
		-0.632016, -0.620883, 0.463745,
		0.774914, -0.500213, 0.386386,
		19.161282, 17.034014, 8.460961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.418053, 17.110619, 8.899920>,  <18.618841, 17.384163, 8.190491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.418053, 17.110619, 8.899920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.814331, 17.161728, 8.881160>,  <19.052097, 17.192392, 8.869904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.814331, 17.161728, 8.881160>,  <18.418053, 17.110619, 8.899920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.814331, 17.161728, 8.881160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013060, 0.432243, 0.901662,
		0.135479, -0.892659, 0.429890,
		0.990694, 0.127771, -0.046902,
		19.111540, 17.200060, 8.867089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.643599, 17.002151, 9.558433>,  <18.418053, 17.110619, 8.899920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.643599, 17.002151, 9.558433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.972851, 17.150288, 9.386247>,  <19.170403, 17.239170, 9.282935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.972851, 17.150288, 9.386247>,  <18.643599, 17.002151, 9.558433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.972851, 17.150288, 9.386247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170847, 0.561424, 0.809700,
		0.541536, -0.740035, 0.398857,
		0.823134, 0.370338, -0.430464,
		19.219790, 17.261391, 9.257107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.204109, 16.889597, 9.972872>,  <18.643599, 17.002151, 9.558433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.204109, 16.889597, 9.972872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.314720, 17.202866, 9.750098>,  <19.381086, 17.390827, 9.616434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.314720, 17.202866, 9.750098>,  <19.204109, 16.889597, 9.972872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.314720, 17.202866, 9.750098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306345, 0.477460, 0.823520,
		0.910871, -0.398340, -0.107890,
		0.276527, 0.783172, -0.556933,
		19.397678, 17.437817, 9.583018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.825407, 17.174871, 10.262552>,  <19.204109, 16.889597, 9.972872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.825407, 17.174871, 10.262552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.693302, 17.479977, 10.040158>,  <19.614038, 17.663040, 9.906722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.693302, 17.479977, 10.040158>,  <19.825407, 17.174871, 10.262552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.693302, 17.479977, 10.040158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131045, 0.620385, 0.773272,
		0.934748, 0.182524, -0.304846,
		-0.330262, 0.762763, -0.555984,
		19.594223, 17.708805, 9.873363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.230801, 17.713337, 10.561534>,  <19.825407, 17.174871, 10.262552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.230801, 17.713337, 10.561534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.940308, 17.883987, 10.345912>,  <19.766012, 17.986378, 10.216539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.940308, 17.883987, 10.345912>,  <20.230801, 17.713337, 10.561534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.940308, 17.883987, 10.345912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148216, 0.668522, 0.728773,
		0.671283, 0.609154, -0.422268,
		-0.726231, 0.426626, -0.539054,
		19.722439, 18.011974, 10.184196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.298643, 18.405670, 10.645280>,  <20.230801, 17.713337, 10.561534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.298643, 18.405670, 10.645280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.928284, 18.389050, 10.495088>,  <19.706068, 18.379078, 10.404972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.928284, 18.389050, 10.495088>,  <20.298643, 18.405670, 10.645280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.928284, 18.389050, 10.495088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303066, 0.675075, 0.672625,
		0.225529, 0.736578, -0.637644,
		-0.925898, -0.041551, -0.375481,
		19.650515, 18.376585, 10.382443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.118130, 19.132196, 10.620170>,  <20.298643, 18.405670, 10.645280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.118130, 19.132196, 10.620170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.789074, 18.906300, 10.593848>,  <19.591640, 18.770761, 10.578055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.789074, 18.906300, 10.593848>,  <20.118130, 19.132196, 10.620170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.789074, 18.906300, 10.593848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414177, 0.515945, 0.749839,
		-0.389516, 0.644101, -0.658340,
		-0.822639, -0.564743, -0.065803,
		19.542282, 18.736877, 10.574107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.513536, 19.622944, 10.600874>,  <20.118130, 19.132196, 10.620170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.513536, 19.622944, 10.600874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.397434, 19.258209, 10.717017>,  <19.327774, 19.039370, 10.786703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.397434, 19.258209, 10.717017>,  <19.513536, 19.622944, 10.600874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.397434, 19.258209, 10.717017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309226, 0.376514, 0.873279,
		-0.905611, 0.163686, -0.391248,
		-0.290254, -0.911836, 0.290359,
		19.310358, 18.984659, 10.804125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.808578, 19.622829, 10.850226>,  <19.513536, 19.622944, 10.600874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.808578, 19.622829, 10.850226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.963787, 19.294792, 11.018459>,  <19.056913, 19.097971, 11.119399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.963787, 19.294792, 11.018459>,  <18.808578, 19.622829, 10.850226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.963787, 19.294792, 11.018459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445850, 0.232364, 0.864421,
		-0.806633, -0.522931, -0.275475,
		0.388022, -0.820091, 0.420582,
		19.080194, 19.048765, 11.144634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.000607, 19.514221, 10.578665>,  <18.808578, 19.622829, 10.850226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.000607, 19.514221, 10.578665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.986351, 19.907970, 10.647649>,  <17.977797, 20.144220, 10.689039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.986351, 19.907970, 10.647649>,  <18.000607, 19.514221, 10.578665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.986351, 19.907970, 10.647649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505493, 0.166623, -0.846589,
		-0.862094, 0.057006, -0.503531,
		-0.035640, 0.984371, 0.172461,
		17.975658, 20.203281, 10.699387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.168070, 19.768425, 9.981624>,  <18.000607, 19.514221, 10.578665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.168070, 19.768425, 9.981624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.204552, 20.109776, 10.186924>,  <18.226440, 20.314587, 10.310104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.204552, 20.109776, 10.186924>,  <18.168070, 19.768425, 9.981624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.204552, 20.109776, 10.186924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599997, 0.364254, -0.712266,
		-0.794786, 0.372912, -0.478802,
		0.091207, 0.853379, 0.513251,
		18.231915, 20.365789, 10.340899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.783493, 20.374800, 9.655310>,  <18.168070, 19.768425, 9.981624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.783493, 20.374800, 9.655310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.092949, 20.503735, 9.873514>,  <18.278622, 20.581095, 10.004436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.092949, 20.503735, 9.873514>,  <17.783493, 20.374800, 9.655310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.092949, 20.503735, 9.873514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428891, 0.367332, -0.825300,
		-0.466408, 0.872449, 0.145935,
		0.773639, 0.322336, 0.545511,
		18.325041, 20.600435, 10.037168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.965202, 20.953905, 9.321552>,  <17.783493, 20.374800, 9.655310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.965202, 20.953905, 9.321552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.282333, 20.864212, 9.548231>,  <18.472612, 20.810396, 9.684238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.282333, 20.864212, 9.548231>,  <17.965202, 20.953905, 9.321552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.282333, 20.864212, 9.548231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605930, 0.389790, -0.693479,
		-0.065391, 0.893187, 0.444906,
		0.792826, -0.224234, 0.566697,
		18.520182, 20.796942, 9.718241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.366573, 21.515190, 9.160436>,  <17.965202, 20.953905, 9.321552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.366573, 21.515190, 9.160436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.601341, 21.245148, 9.339211>,  <18.742203, 21.083122, 9.446477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.601341, 21.245148, 9.339211>,  <18.366573, 21.515190, 9.160436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.601341, 21.245148, 9.339211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710649, 0.165050, -0.683913,
		0.387948, 0.719018, 0.576636,
		0.586920, -0.675108, 0.446939,
		18.777418, 21.042616, 9.473293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.960587, 21.843899, 9.337348>,  <18.366573, 21.515190, 9.160436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.960587, 21.843899, 9.337348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.068691, 21.459148, 9.320594>,  <19.133554, 21.228298, 9.310541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.068691, 21.459148, 9.320594>,  <18.960587, 21.843899, 9.337348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.068691, 21.459148, 9.320594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784002, 0.245118, -0.570314,
		0.558839, 0.121295, 0.820358,
		0.270261, -0.961875, -0.041886,
		19.149769, 21.170586, 9.308028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745575, 21.888309, 9.255578>,  <18.960587, 21.843899, 9.337348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745575, 21.888309, 9.255578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.609673, 21.522060, 9.169598>,  <19.528131, 21.302311, 9.118010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.609673, 21.522060, 9.169598>,  <19.745575, 21.888309, 9.255578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.609673, 21.522060, 9.169598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746989, -0.123837, -0.653202,
		0.571466, -0.382495, 0.726033,
		-0.339756, -0.915621, -0.214951,
		19.507746, 21.247374, 9.105112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.283373, 21.423872, 9.410152>,  <19.745575, 21.888309, 9.255578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.283373, 21.423872, 9.410152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.065449, 21.276714, 9.108733>,  <19.934694, 21.188419, 8.927881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.065449, 21.276714, 9.108733>,  <20.283373, 21.423872, 9.410152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.065449, 21.276714, 9.108733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803662, 0.027468, -0.594452,
		0.239394, -0.929461, 0.280698,
		-0.544810, -0.367895, -0.753548,
		19.902006, 21.166346, 8.882668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.752024, 21.009729, 9.051723>,  <20.283373, 21.423872, 9.410152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.752024, 21.009729, 9.051723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.466331, 21.070908, 8.778524>,  <20.294916, 21.107615, 8.614605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.466331, 21.070908, 8.778524>,  <20.752024, 21.009729, 9.051723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.466331, 21.070908, 8.778524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668362, -0.140644, -0.730419,
		-0.207778, -0.978175, -0.001774,
		-0.714228, 0.152951, -0.682997,
		20.252064, 21.116793, 8.573626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.731899, 20.341963, 8.724163>,  <20.752024, 21.009729, 9.051723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.731899, 20.341963, 8.724163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.584660, 20.645275, 8.508937>,  <20.496317, 20.827263, 8.379802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.584660, 20.645275, 8.508937>,  <20.731899, 20.341963, 8.724163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.584660, 20.645275, 8.508937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619210, -0.231771, -0.750241,
		-0.693601, -0.609337, -0.384221,
		-0.368098, 0.758281, -0.538064,
		20.474230, 20.872759, 8.347518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.723663, 20.082624, 8.101857>,  <20.731899, 20.341963, 8.724163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.723663, 20.082624, 8.101857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.693260, 20.472210, 8.016422>,  <20.675018, 20.705961, 7.965161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.693260, 20.472210, 8.016422>,  <20.723663, 20.082624, 8.101857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.693260, 20.472210, 8.016422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663831, -0.110407, -0.739688,
		-0.744010, -0.198006, -0.638156,
		-0.076006, 0.973963, -0.213587,
		20.670458, 20.764399, 7.952346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.655800, 20.156521, 7.355291>,  <20.723663, 20.082624, 8.101857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.655800, 20.156521, 7.355291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.812294, 20.496635, 7.496115>,  <20.906191, 20.700705, 7.580609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.812294, 20.496635, 7.496115>,  <20.655800, 20.156521, 7.355291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.812294, 20.496635, 7.496115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721686, -0.046087, -0.690685,
		-0.571055, 0.524297, -0.631672,
		0.391236, 0.850288, 0.352059,
		20.929665, 20.751722, 7.601732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.920653, 20.403687, 13.631209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.106590, 20.753613, 13.685789>,  <16.218153, 20.963568, 13.718536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.106590, 20.753613, 13.685789>,  <15.920653, 20.403687, 13.631209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.106590, 20.753613, 13.685789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097980, 0.102338, -0.989913,
		-0.879956, 0.473522, -0.038143,
		0.464842, 0.874816, 0.136449,
		16.246042, 21.016058, 13.726724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.501517, 20.996861, 13.214758>,  <15.920653, 20.403687, 13.631209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.501517, 20.996861, 13.214758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.888820, 21.066940, 13.286074>,  <16.121201, 21.108988, 13.328863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.888820, 21.066940, 13.286074>,  <15.501517, 20.996861, 13.214758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.888820, 21.066940, 13.286074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175212, 0.033012, -0.983977,
		-0.178277, 0.983980, 0.001267,
		0.968255, 0.175198, 0.178290,
		16.179296, 21.119499, 13.339561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.647006, 21.272173, 12.651961>,  <15.501517, 20.996861, 13.214758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.647006, 21.272173, 12.651961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.017532, 21.229641, 12.796535>,  <16.239847, 21.204123, 12.883279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.017532, 21.229641, 12.796535>,  <15.647006, 21.272173, 12.651961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.017532, 21.229641, 12.796535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349088, -0.118574, -0.929558,
		0.141695, 0.987236, -0.072719,
		0.926315, -0.106328, 0.361434,
		16.295427, 21.197742, 12.904964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.124912, 21.653728, 12.181772>,  <15.647006, 21.272173, 12.651961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.124912, 21.653728, 12.181772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.359215, 21.405689, 12.390526>,  <16.499796, 21.256865, 12.515779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.359215, 21.405689, 12.390526>,  <16.124912, 21.653728, 12.181772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.359215, 21.405689, 12.390526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670608, 0.009197, -0.741755,
		0.455163, 0.784469, 0.421231,
		0.585758, -0.620100, 0.521885,
		16.534943, 21.219660, 12.547091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858639, 21.828402, 11.995378>,  <16.124912, 21.653728, 12.181772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.858639, 21.828402, 11.995378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.870926, 21.459858, 12.150375>,  <16.878298, 21.238731, 12.243374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.870926, 21.459858, 12.150375>,  <16.858639, 21.828402, 11.995378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.870926, 21.459858, 12.150375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553005, -0.307271, -0.774448,
		0.832612, 0.238075, 0.500078,
		0.030717, -0.921360, 0.387494,
		16.880140, 21.183451, 12.266623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.584440, 21.625126, 11.981283>,  <16.858639, 21.828402, 11.995378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.584440, 21.625126, 11.981283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376404, 21.284428, 12.006693>,  <17.251581, 21.080009, 12.021938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376404, 21.284428, 12.006693>,  <17.584440, 21.625126, 11.981283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.376404, 21.284428, 12.006693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627145, -0.431318, -0.648579,
		0.579823, -0.297481, 0.758492,
		-0.520091, -0.851745, 0.063524,
		17.220377, 21.028904, 12.025750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.069559, 21.093536, 12.102400>,  <17.584440, 21.625126, 11.981283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.069559, 21.093536, 12.102400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754215, 20.901020, 11.949115>,  <17.565010, 20.785511, 11.857143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754215, 20.901020, 11.949115>,  <18.069559, 21.093536, 12.102400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.754215, 20.901020, 11.949115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579643, -0.372337, -0.724830,
		0.206170, -0.793552, 0.572512,
		-0.788357, -0.481291, -0.383212,
		17.517708, 20.756634, 11.834151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.211514, 20.356785, 11.998708>,  <18.069559, 21.093536, 12.102400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.211514, 20.356785, 11.998708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.914516, 20.450073, 11.747530>,  <17.736319, 20.506046, 11.596823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.914516, 20.450073, 11.747530>,  <18.211514, 20.356785, 11.998708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.914516, 20.450073, 11.747530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579998, -0.245161, -0.776852,
		-0.335124, -0.941013, 0.046763,
		-0.742491, 0.233220, -0.627945,
		17.691769, 20.520039, 11.559147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.174696, 19.793369, 11.542814>,  <18.211514, 20.356785, 11.998708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.174696, 19.793369, 11.542814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.974545, 20.089790, 11.363721>,  <17.854454, 20.267643, 11.256265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.974545, 20.089790, 11.363721>,  <18.174696, 19.793369, 11.542814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.974545, 20.089790, 11.363721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697974, 0.039268, -0.715046,
		-0.512304, -0.670299, -0.536883,
		-0.500377, 0.741051, -0.447734,
		17.824430, 20.312105, 11.229401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330185, 19.233900, 11.218537>,  <18.174696, 19.793369, 11.542814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.330185, 19.233900, 11.218537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.668251, 19.086853, 11.373743>,  <18.871090, 18.998625, 11.466866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.668251, 19.086853, 11.373743>,  <18.330185, 19.233900, 11.218537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.668251, 19.086853, 11.373743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392666, 0.065495, 0.917346,
		-0.362646, -0.927668, -0.088997,
		0.845164, -0.367618, 0.388015,
		18.921801, 18.976568, 11.490148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.177996, 18.818539, 11.717057>,  <18.330185, 19.233900, 11.218537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.177996, 18.818539, 11.717057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566254, 18.834003, 11.812016>,  <18.799208, 18.843283, 11.868992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566254, 18.834003, 11.812016>,  <18.177996, 18.818539, 11.717057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.566254, 18.834003, 11.812016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238182, 0.017059, 0.971071,
		0.033493, -0.999107, 0.025767,
		0.970643, 0.038661, 0.237398,
		18.857447, 18.845602, 11.883236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.278984, 18.401747, 12.295718>,  <18.177996, 18.818539, 11.717057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.278984, 18.401747, 12.295718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.607178, 18.629158, 12.319650>,  <18.804094, 18.765606, 12.334008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.607178, 18.629158, 12.319650>,  <18.278984, 18.401747, 12.295718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.607178, 18.629158, 12.319650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074995, 0.003294, 0.997178,
		0.566729, -0.822656, 0.045340,
		0.820484, 0.568530, 0.059828,
		18.853323, 18.799717, 12.337598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.641647, 18.086802, 12.699213>,  <18.278984, 18.401747, 12.295718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.641647, 18.086802, 12.699213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.796326, 18.454617, 12.727248>,  <18.889133, 18.675306, 12.744069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.796326, 18.454617, 12.727248>,  <18.641647, 18.086802, 12.699213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.796326, 18.454617, 12.727248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124295, -0.023340, 0.991971,
		0.913792, -0.392305, 0.105269,
		0.386698, 0.919539, 0.070089,
		18.912334, 18.730478, 12.748275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.111742, 18.088991, 13.224417>,  <18.641647, 18.086802, 12.699213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.111742, 18.088991, 13.224417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052807, 18.483425, 13.193624>,  <19.017445, 18.720085, 13.175149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052807, 18.483425, 13.193624>,  <19.111742, 18.088991, 13.224417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.052807, 18.483425, 13.193624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148116, 0.054955, 0.987442,
		0.977933, 0.156891, 0.137958,
		-0.147339, 0.986086, -0.076980,
		19.008606, 18.779251, 13.170530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.617626, 18.453125, 13.668456>,  <19.111742, 18.088991, 13.224417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.617626, 18.453125, 13.668456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.303364, 18.696259, 13.622355>,  <19.114807, 18.842138, 13.594693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.303364, 18.696259, 13.622355>,  <19.617626, 18.453125, 13.668456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.303364, 18.696259, 13.622355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025871, 0.153854, 0.987755,
		0.618123, 0.779017, -0.105150,
		-0.785655, 0.607834, -0.115255,
		19.067667, 18.878609, 13.587778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.782234, 19.074816, 14.075628>,  <19.617626, 18.453125, 13.668456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.782234, 19.074816, 14.075628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.385181, 19.098454, 14.033319>,  <19.146950, 19.112637, 14.007934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.385181, 19.098454, 14.033319>,  <19.782234, 19.074816, 14.075628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.385181, 19.098454, 14.033319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093458, 0.182138, 0.978821,
		0.077109, 0.981496, -0.175273,
		-0.992633, 0.059096, -0.105773,
		19.087391, 19.116182, 14.001588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.648874, 19.447884, 14.681245>,  <19.782234, 19.074816, 14.075628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.648874, 19.447884, 14.681245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.299107, 19.313210, 14.541512>,  <19.089247, 19.232405, 14.457671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.299107, 19.313210, 14.541512>,  <19.648874, 19.447884, 14.681245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.299107, 19.313210, 14.541512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332822, -0.107635, 0.936827,
		-0.353018, 0.935444, -0.017938,
		-0.874418, -0.336687, -0.349334,
		19.036781, 19.212204, 14.436711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.111580, 19.860189, 15.054958>,  <19.648874, 19.447884, 14.681245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.111580, 19.860189, 15.054958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.963978, 19.514099, 14.919184>,  <18.875416, 19.306444, 14.837719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.963978, 19.514099, 14.919184>,  <19.111580, 19.860189, 15.054958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.963978, 19.514099, 14.919184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536467, -0.099953, 0.837982,
		-0.758972, 0.491316, -0.427282,
		-0.369006, -0.865227, -0.339436,
		18.853275, 19.254532, 14.817353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.373394, 19.850567, 15.235645>,  <19.111580, 19.860189, 15.054958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.373394, 19.850567, 15.235645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487526, 19.469788, 15.191145>,  <18.556005, 19.241320, 15.164445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487526, 19.469788, 15.191145>,  <18.373394, 19.850567, 15.235645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487526, 19.469788, 15.191145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538471, -0.255248, 0.803054,
		-0.792865, -0.169230, -0.585428,
		0.285331, -0.951951, -0.111252,
		18.573126, 19.184202, 15.157769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.818441, 19.418829, 15.545653>,  <18.373394, 19.850567, 15.235645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.818441, 19.418829, 15.545653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.104046, 19.140858, 15.511562>,  <18.275410, 18.974075, 15.491108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.104046, 19.140858, 15.511562>,  <17.818441, 19.418829, 15.545653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.104046, 19.140858, 15.511562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377122, -0.484300, 0.789451,
		-0.589886, -0.531536, -0.607868,
		0.714012, -0.694926, -0.085228,
		18.318249, 18.932381, 15.485994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516441, 18.714722, 15.520266>,  <17.818441, 19.418829, 15.545653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516441, 18.714722, 15.520266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.894718, 18.675304, 15.644173>,  <18.121685, 18.651653, 15.718517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.894718, 18.675304, 15.644173>,  <17.516441, 18.714722, 15.520266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.894718, 18.675304, 15.644173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324169, -0.356603, 0.876213,
		0.024120, -0.929044, -0.369181,
		0.945692, -0.098543, 0.309769,
		18.178425, 18.645741, 15.737103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.524662, 18.088041, 15.772291>,  <17.516441, 18.714722, 15.520266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.524662, 18.088041, 15.772291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846081, 18.263851, 15.932854>,  <18.038933, 18.369337, 16.029192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846081, 18.263851, 15.932854>,  <17.524662, 18.088041, 15.772291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.846081, 18.263851, 15.932854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231423, -0.390623, 0.890987,
		0.548410, -0.808846, -0.212168,
		0.803548, 0.439525, 0.401407,
		18.087145, 18.395708, 16.053276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.788382, 17.601067, 16.224953>,  <17.524662, 18.088041, 15.772291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.788382, 17.601067, 16.224953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.904606, 17.962406, 16.351152>,  <17.974340, 18.179209, 16.426872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.904606, 17.962406, 16.351152>,  <17.788382, 17.601067, 16.224953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.904606, 17.962406, 16.351152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184461, -0.270659, 0.944837,
		0.938909, -0.332729, 0.087989,
		0.290560, 0.903346, 0.315500,
		17.991774, 18.233410, 16.445803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.828583, 21.384123, 18.208742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.519947, 21.316048, 17.963568>,  <20.334766, 21.275204, 17.816463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.519947, 21.316048, 17.963568>,  <20.828583, 21.384123, 18.208742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.519947, 21.316048, 17.963568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621834, 0.001285, -0.783148,
		0.134070, -0.985411, 0.104837,
		-0.771588, -0.170188, -0.612934,
		20.288471, 21.264992, 17.779688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.138746, 21.142750, 17.677576>,  <20.828583, 21.384123, 18.208742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.138746, 21.142750, 17.677576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.774887, 21.153954, 17.511803>,  <20.556572, 21.160675, 17.412338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.774887, 21.153954, 17.511803>,  <21.138746, 21.142750, 17.677576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.774887, 21.153954, 17.511803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399844, -0.211268, -0.891903,
		-0.112535, -0.977027, 0.180981,
		-0.909649, 0.028006, -0.414434,
		20.501993, 21.162355, 17.387472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.065523, 20.525843, 17.294624>,  <21.138746, 21.142750, 17.677576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.065523, 20.525843, 17.294624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.821533, 20.803955, 17.142565>,  <20.675138, 20.970823, 17.051329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.821533, 20.803955, 17.142565>,  <21.065523, 20.525843, 17.294624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.821533, 20.803955, 17.142565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457170, -0.083068, -0.885492,
		-0.647244, -0.713921, -0.267192,
		-0.609976, 0.695281, -0.380149,
		20.638540, 21.012539, 17.028521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.692440, 20.161879, 16.677069>,  <21.065523, 20.525843, 17.294624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.692440, 20.161879, 16.677069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.683914, 20.557541, 16.618946>,  <20.678799, 20.794939, 16.584072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.683914, 20.557541, 16.618946>,  <20.692440, 20.161879, 16.677069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.683914, 20.557541, 16.618946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319676, -0.130969, -0.938432,
		-0.947287, -0.066452, -0.313418,
		-0.021313, 0.989157, -0.145309,
		20.677521, 20.854288, 16.575354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.302628, 20.301413, 16.036102>,  <20.692440, 20.161879, 16.677069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.302628, 20.301413, 16.036102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.514217, 20.629192, 16.124365>,  <20.641171, 20.825861, 16.177322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.514217, 20.629192, 16.124365>,  <20.302628, 20.301413, 16.036102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.514217, 20.629192, 16.124365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259801, 0.091157, -0.961350,
		-0.807893, 0.565854, -0.164675,
		0.528973, 0.819451, 0.220655,
		20.672909, 20.875027, 16.190561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.239405, 20.659643, 15.504167>,  <20.302628, 20.301413, 16.036102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.239405, 20.659643, 15.504167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.547718, 20.852306, 15.670971>,  <20.732706, 20.967905, 15.771053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.547718, 20.852306, 15.670971>,  <20.239405, 20.659643, 15.504167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.547718, 20.852306, 15.670971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359235, 0.211992, -0.908851,
		-0.526159, 0.850332, -0.009629,
		0.770784, 0.481659, 0.417010,
		20.778954, 20.996803, 15.796074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.261913, 21.328161, 15.074782>,  <20.239405, 20.659643, 15.504167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.261913, 21.328161, 15.074782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.596291, 21.229374, 15.270826>,  <20.796917, 21.170101, 15.388453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.596291, 21.229374, 15.270826>,  <20.261913, 21.328161, 15.074782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.596291, 21.229374, 15.270826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500694, -0.022504, -0.865332,
		0.224737, 0.968763, 0.104842,
		0.835942, -0.246966, 0.490111,
		20.847073, 21.155285, 15.417860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.810579, 21.692276, 14.743117>,  <20.261913, 21.328161, 15.074782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.810579, 21.692276, 14.743117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.034687, 21.442482, 14.960783>,  <21.169151, 21.292604, 15.091382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.034687, 21.442482, 14.960783>,  <20.810579, 21.692276, 14.743117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034687, 21.442482, 14.960783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544141, -0.217824, -0.810224,
		0.624506, 0.750046, 0.217769,
		0.560270, -0.624486, 0.544163,
		21.202768, 21.255136, 15.124032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.534893, 21.820759, 14.678687>,  <20.810579, 21.692276, 14.743117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.534893, 21.820759, 14.678687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.547611, 21.441502, 14.805189>,  <21.555243, 21.213947, 14.881090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.547611, 21.441502, 14.805189>,  <21.534893, 21.820759, 14.678687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.547611, 21.441502, 14.805189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634074, -0.225457, -0.739675,
		0.772619, 0.224048, 0.594022,
		0.031796, -0.948141, 0.316256,
		21.557150, 21.157059, 14.900065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.224386, 21.511654, 14.690774>,  <21.534893, 21.820759, 14.678687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.224386, 21.511654, 14.690774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.003326, 21.178295, 14.688465>,  <21.870691, 20.978281, 14.687079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.003326, 21.178295, 14.688465>,  <22.224386, 21.511654, 14.690774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.003326, 21.178295, 14.688465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480962, -0.313269, -0.818864,
		0.680629, -0.455320, 0.573959,
		-0.552648, -0.833395, -0.005772,
		21.837532, 20.928276, 14.686733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.723904, 20.975513, 14.691360>,  <22.224386, 21.511654, 14.690774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.723904, 20.975513, 14.691360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.368492, 20.839466, 14.568176>,  <22.155245, 20.757837, 14.494267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.368492, 20.839466, 14.568176>,  <22.723904, 20.975513, 14.691360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.368492, 20.839466, 14.568176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422117, -0.342916, -0.839181,
		0.179816, -0.875631, 0.448260,
		-0.888529, -0.340117, -0.307957,
		22.101933, 20.737431, 14.475789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.836994, 20.332481, 14.380194>,  <22.723904, 20.975513, 14.691360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.836994, 20.332481, 14.380194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.470520, 20.391590, 14.231186>,  <22.250635, 20.427055, 14.141781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.470520, 20.391590, 14.231186>,  <22.836994, 20.332481, 14.380194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.470520, 20.391590, 14.231186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319304, -0.292565, -0.901361,
		-0.242180, -0.944759, 0.220860,
		-0.916184, 0.147770, -0.372519,
		22.195665, 20.435923, 14.119430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.664213, 19.692261, 14.054812>,  <22.836994, 20.332481, 14.380194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.664213, 19.692261, 14.054812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.448635, 19.993572, 13.904024>,  <22.319288, 20.174358, 13.813551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.448635, 19.993572, 13.904024>,  <22.664213, 19.692261, 14.054812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.448635, 19.993572, 13.904024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187613, -0.328940, -0.925527,
		-0.821181, -0.569534, 0.035957,
		-0.538947, 0.753279, -0.376971,
		22.286951, 20.219555, 13.790933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.383558, 19.435453, 13.483102>,  <22.664213, 19.692261, 14.054812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.383558, 19.435453, 13.483102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.345722, 19.829044, 13.422649>,  <22.323021, 20.065199, 13.386378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.345722, 19.829044, 13.422649>,  <22.383558, 19.435453, 13.483102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.345722, 19.829044, 13.422649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227369, -0.126445, -0.965565,
		-0.969204, -0.125695, -0.211766,
		-0.094590, 0.983978, -0.151130,
		22.317345, 20.124237, 13.377310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.058075, 18.862425, 13.156147>,  <22.383558, 19.435453, 13.483102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.058075, 18.862425, 13.156147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.371349, 18.636768, 13.260733>,  <22.559315, 18.501375, 13.323484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.371349, 18.636768, 13.260733>,  <22.058075, 18.862425, 13.156147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.371349, 18.636768, 13.260733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365018, -0.076722, 0.927834,
		-0.503369, -0.822106, -0.266010,
		0.783187, -0.564141, 0.261464,
		22.606306, 18.467525, 13.339172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.851744, 18.188801, 13.316433>,  <22.058075, 18.862425, 13.156147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.851744, 18.188801, 13.316433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.198372, 18.242622, 13.508661>,  <22.406349, 18.274916, 13.623999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.198372, 18.242622, 13.508661>,  <21.851744, 18.188801, 13.316433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.198372, 18.242622, 13.508661> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473922, -0.079845, 0.876939,
		0.156365, -0.987684, -0.005424,
		0.866572, 0.134552, 0.480571,
		22.458344, 18.282988, 13.652832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.715750, 17.768124, 13.862527>,  <21.851744, 18.188801, 13.316433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.715750, 17.768124, 13.862527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.033115, 17.982883, 13.977232>,  <22.223536, 18.111740, 14.046055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.033115, 17.982883, 13.977232>,  <21.715750, 17.768124, 13.862527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.033115, 17.982883, 13.977232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398078, 0.101300, 0.911741,
		0.460465, -0.837542, 0.294102,
		0.793414, 0.536900, 0.286762,
		22.271139, 18.143953, 14.063261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.142944, 17.363264, 14.371361>,  <21.715750, 17.768124, 13.862527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.142944, 17.363264, 14.371361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.235947, 17.749390, 14.418869>,  <22.291748, 17.981066, 14.447373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.235947, 17.749390, 14.418869>,  <22.142944, 17.363264, 14.371361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.235947, 17.749390, 14.418869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338525, -0.034159, 0.940337,
		0.911779, -0.258842, 0.318841,
		0.232508, 0.965315, 0.118770,
		22.305698, 18.038984, 14.454500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.522177, 17.422876, 15.047189>,  <22.142944, 17.363264, 14.371361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.522177, 17.422876, 15.047189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.389660, 17.790058, 14.959913>,  <22.310150, 18.010366, 14.907548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.389660, 17.790058, 14.959913>,  <22.522177, 17.422876, 15.047189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.389660, 17.790058, 14.959913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252412, 0.136595, 0.957930,
		0.909140, 0.372427, 0.186450,
		-0.331290, 0.917954, -0.218189,
		22.290274, 18.065445, 14.894457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.745472, 17.763834, 15.601693>,  <22.522177, 17.422876, 15.047189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.745472, 17.763834, 15.601693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.449657, 17.979050, 15.439905>,  <22.272169, 18.108179, 15.342833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.449657, 17.979050, 15.439905>,  <22.745472, 17.763834, 15.601693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.449657, 17.979050, 15.439905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317404, 0.251144, 0.914430,
		0.593581, 0.804635, -0.014954,
		-0.739538, 0.538041, -0.404469,
		22.227797, 18.140463, 15.318564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.649260, 18.304115, 16.072102>,  <22.745472, 17.763834, 15.601693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.649260, 18.304115, 16.072102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.301174, 18.315132, 15.875340>,  <22.092323, 18.321741, 15.757282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.301174, 18.315132, 15.875340>,  <22.649260, 18.304115, 16.072102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301174, 18.315132, 15.875340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459677, 0.313881, 0.830768,
		0.177279, 0.949063, -0.260483,
		-0.870212, 0.027540, -0.491907,
		22.040110, 18.323395, 15.727767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.364799, 18.986086, 16.293510>,  <22.649260, 18.304115, 16.072102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.364799, 18.986086, 16.293510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.069923, 18.765995, 16.136642>,  <21.892998, 18.633940, 16.042521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.069923, 18.765995, 16.136642>,  <22.364799, 18.986086, 16.293510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.069923, 18.765995, 16.136642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583396, 0.225509, 0.780253,
		-0.340878, 0.803987, -0.487244,
		-0.737191, -0.550228, -0.392172,
		21.848766, 18.600927, 16.018991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.687616, 19.391785, 16.306992>,  <22.364799, 18.986086, 16.293510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.687616, 19.391785, 16.306992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.587475, 19.005737, 16.276340>,  <21.527390, 18.774109, 16.257950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.587475, 19.005737, 16.276340>,  <21.687616, 19.391785, 16.306992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.587475, 19.005737, 16.276340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714500, 0.130773, 0.687306,
		-0.653310, 0.226818, -0.722315,
		-0.250352, -0.965118, -0.076627,
		21.512369, 18.716202, 16.253353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.995121, 19.512640, 16.384602>,  <21.687616, 19.391785, 16.306992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.995121, 19.512640, 16.384602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.079506, 19.131145, 16.470282>,  <21.130136, 18.902248, 16.521688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.079506, 19.131145, 16.470282>,  <20.995121, 19.512640, 16.384602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.079506, 19.131145, 16.470282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553497, 0.064064, 0.830384,
		-0.805690, -0.293737, -0.514376,
		0.210961, -0.953737, 0.214198,
		21.142794, 18.845024, 16.534540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.303368, 19.299585, 16.698763>,  <20.995121, 19.512640, 16.384602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.303368, 19.299585, 16.698763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.595230, 19.049255, 16.809000>,  <20.770348, 18.899057, 16.875141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.595230, 19.049255, 16.809000>,  <20.303368, 19.299585, 16.698763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.595230, 19.049255, 16.809000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450759, -0.137120, 0.882051,
		-0.514219, -0.767817, -0.382145,
		0.729654, -0.625823, 0.275591,
		20.814127, 18.861509, 16.891678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.992544, 18.681698, 17.115726>,  <20.303368, 19.299585, 16.698763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.992544, 18.681698, 17.115726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.379204, 18.660271, 17.215904>,  <20.611198, 18.647415, 17.276011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.379204, 18.660271, 17.215904>,  <19.992544, 18.681698, 17.115726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.379204, 18.660271, 17.215904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255721, -0.148062, 0.955345,
		-0.014090, -0.987527, -0.156821,
		0.966648, -0.053563, 0.250445,
		20.669199, 18.644201, 17.291039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.000538, 18.092810, 17.409151>,  <19.992544, 18.681698, 17.115726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.000538, 18.092810, 17.409151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.308418, 18.314831, 17.535315>,  <20.493147, 18.448044, 17.611013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.308418, 18.314831, 17.535315>,  <20.000538, 18.092810, 17.409151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.308418, 18.314831, 17.535315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344782, -0.054397, 0.937105,
		0.537299, -0.830036, 0.149503,
		0.769699, 0.555051, 0.315409,
		20.539328, 18.481346, 17.629938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.294859, 17.672304, 17.856695>,  <20.000538, 18.092810, 17.409151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.294859, 17.672304, 17.856695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.412666, 18.046356, 17.935476>,  <20.483351, 18.270788, 17.982746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.412666, 18.046356, 17.935476>,  <20.294859, 17.672304, 17.856695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.412666, 18.046356, 17.935476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232828, -0.129671, 0.963834,
		0.926850, -0.329722, 0.179534,
		0.294517, 0.935130, 0.196954,
		20.501022, 18.326895, 17.994562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.516802, 16.964325, 18.015667>,  <20.294859, 17.672304, 17.856695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.516802, 16.964325, 18.015667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.251633, 16.667862, 18.058044>,  <20.092531, 16.489985, 18.083471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.251633, 16.667862, 18.058044>,  <20.516802, 16.964325, 18.015667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.251633, 16.667862, 18.058044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268192, -0.367197, -0.890640,
		0.699006, -0.562010, 0.442195,
		-0.662921, -0.741156, 0.105946,
		20.052757, 16.445515, 18.089828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.904137, 16.319935, 17.971851>,  <20.516802, 16.964325, 18.015667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.904137, 16.319935, 17.971851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.522007, 16.239063, 17.885614>,  <20.292728, 16.190540, 17.833872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.522007, 16.239063, 17.885614>,  <20.904137, 16.319935, 17.971851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.522007, 16.239063, 17.885614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293202, -0.556314, -0.777527,
		0.037264, -0.806001, 0.590739,
		-0.955324, -0.202179, -0.215591,
		20.235409, 16.178410, 17.820936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.857342, 15.611798, 17.845284>,  <20.904137, 16.319935, 17.971851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.857342, 15.611798, 17.845284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.527164, 15.753540, 17.669521>,  <20.329058, 15.838585, 17.564064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.527164, 15.753540, 17.669521>,  <20.857342, 15.611798, 17.845284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.527164, 15.753540, 17.669521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234833, -0.492297, -0.838151,
		-0.513332, -0.795028, 0.323143,
		-0.825436, 0.354365, -0.439410,
		20.279531, 15.859846, 17.537701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.538710, 15.031407, 17.502340>,  <20.857342, 15.611798, 17.845284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.538710, 15.031407, 17.502340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.372124, 15.341129, 17.311758>,  <20.272173, 15.526962, 17.197409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.372124, 15.341129, 17.311758>,  <20.538710, 15.031407, 17.502340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.372124, 15.341129, 17.311758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128318, -0.468757, -0.873957,
		-0.900051, -0.425109, 0.095862,
		-0.416463, 0.774306, -0.476454,
		20.247185, 15.573421, 17.168821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.055246, 14.769424, 16.984432>,  <20.538710, 15.031407, 17.502340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.055246, 14.769424, 16.984432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.158833, 15.144928, 16.893511>,  <20.220985, 15.370230, 16.838957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.158833, 15.144928, 16.893511>,  <20.055246, 14.769424, 16.984432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.158833, 15.144928, 16.893511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257960, -0.294005, -0.920335,
		-0.930802, 0.179700, -0.318300,
		0.258967, 0.938759, -0.227305,
		20.236523, 15.426556, 16.825319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.708984, 14.783376, 16.390425>,  <20.055246, 14.769424, 16.984432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.708984, 14.783376, 16.390425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.998329, 15.059231, 16.403959>,  <20.171936, 15.224744, 16.412079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.998329, 15.059231, 16.403959>,  <19.708984, 14.783376, 16.390425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.998329, 15.059231, 16.403959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277550, -0.245554, -0.928800,
		-0.632228, 0.681250, -0.369034,
		0.723363, 0.689638, 0.033835,
		20.215338, 15.266122, 16.414110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.516386, 15.265853, 15.856439>,  <19.708984, 14.783376, 16.390425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.516386, 15.265853, 15.856439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.907257, 15.290989, 15.937609>,  <20.141779, 15.306070, 15.986311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.907257, 15.290989, 15.937609>,  <19.516386, 15.265853, 15.856439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.907257, 15.290989, 15.937609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211140, -0.182092, -0.960345,
		-0.023398, 0.981271, -0.191204,
		0.977176, 0.062841, 0.202925,
		20.200409, 15.309841, 15.998487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.855330, 15.461545, 15.237814>,  <19.516386, 15.265853, 15.856439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.855330, 15.461545, 15.237814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.174759, 15.312572, 15.426949>,  <20.366417, 15.223189, 15.540429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.174759, 15.312572, 15.426949>,  <19.855330, 15.461545, 15.237814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.174759, 15.312572, 15.426949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414720, -0.228872, -0.880696,
		0.436218, 0.899396, -0.028317,
		0.798575, -0.372432, 0.472836,
		20.414331, 15.200843, 15.568799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.517939, 15.816279, 15.079361>,  <19.855330, 15.461545, 15.237814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.517939, 15.816279, 15.079361> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.569302, 15.426479, 15.152964>,  <20.600119, 15.192599, 15.197125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.569302, 15.426479, 15.152964>,  <20.517939, 15.816279, 15.079361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.569302, 15.426479, 15.152964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492490, -0.098388, -0.864739,
		0.860793, 0.201661, 0.467298,
		0.128408, -0.974501, 0.184008,
		20.607824, 15.134129, 15.208166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.125547, 15.681319, 14.740132>,  <20.517939, 15.816279, 15.079361>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.125547, 15.681319, 14.740132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.960674, 15.319820, 14.786343>,  <20.861750, 15.102921, 14.814069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.960674, 15.319820, 14.786343>,  <21.125547, 15.681319, 14.740132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.960674, 15.319820, 14.786343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469610, -0.319394, -0.823076,
		0.780751, -0.285005, 0.556058,
		-0.412182, -0.903747, 0.115526,
		20.837019, 15.048697, 14.821000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.512997, 15.209046, 14.280938>,  <21.125547, 15.681319, 14.740132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.512997, 15.209046, 14.280938> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.233143, 14.930279, 14.343948>,  <21.065229, 14.763019, 14.381754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.233143, 14.930279, 14.343948>,  <21.512997, 15.209046, 14.280938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.233143, 14.930279, 14.343948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216964, -0.417281, -0.882498,
		0.680762, -0.583250, 0.443151,
		-0.699635, -0.696919, 0.157524,
		21.023252, 14.721203, 14.391206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.772593, 14.563207, 14.042338>,  <21.512997, 15.209046, 14.280938>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.772593, 14.563207, 14.042338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.373306, 14.539524, 14.039309>,  <21.133734, 14.525314, 14.037491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.373306, 14.539524, 14.039309>,  <21.772593, 14.563207, 14.042338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.373306, 14.539524, 14.039309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020401, -0.219155, -0.975477,
		0.056094, -0.973892, 0.219972,
		-0.998217, -0.059206, -0.007575,
		21.073841, 14.521763, 14.037036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.538155, 13.811090, 13.876193>,  <21.772593, 14.563207, 14.042338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.538155, 13.811090, 13.876193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.271610, 14.091267, 13.773943>,  <21.111683, 14.259373, 13.712593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.271610, 14.091267, 13.773943>,  <21.538155, 13.811090, 13.876193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.271610, 14.091267, 13.773943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018006, -0.327617, -0.944639,
		-0.745412, -0.634074, 0.205699,
		-0.666361, 0.700441, -0.255626,
		21.071701, 14.301399, 13.697255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.266659, 13.538613, 13.316989>,  <21.538155, 13.811090, 13.876193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.266659, 13.538613, 13.316989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.092789, 13.897396, 13.284683>,  <20.988466, 14.112666, 13.265300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.092789, 13.897396, 13.284683>,  <21.266659, 13.538613, 13.316989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.092789, 13.897396, 13.284683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090311, -0.132642, -0.987041,
		-0.896047, -0.421750, 0.138661,
		-0.434676, 0.896958, -0.080765,
		20.962385, 14.166483, 13.260454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<18.207108, 17.376997, 16.889221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.112682, 17.765652, 16.894823>,  <18.056026, 17.998844, 16.898184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.112682, 17.765652, 16.894823>,  <18.207108, 17.376997, 16.889221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.112682, 17.765652, 16.894823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083130, -0.034551, 0.995940,
		0.968176, 0.233940, 0.088928,
		-0.236062, 0.971637, 0.014004,
		18.041864, 18.057142, 16.899025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407635, 17.552486, 17.560463>,  <18.207108, 17.376997, 16.889221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407635, 17.552486, 17.560463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.194168, 17.869366, 17.442059>,  <18.066088, 18.059494, 17.371016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.194168, 17.869366, 17.442059>,  <18.407635, 17.552486, 17.560463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.194168, 17.869366, 17.442059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339555, 0.119849, 0.932920,
		0.774534, 0.598379, 0.205035,
		-0.533666, 0.792199, -0.296010,
		18.034069, 18.107025, 17.353256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.519016, 18.143345, 18.019274>,  <18.407635, 17.552486, 17.560463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.519016, 18.143345, 18.019274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.168449, 18.211494, 17.839109>,  <17.958109, 18.252384, 17.731010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.168449, 18.211494, 17.839109>,  <18.519016, 18.143345, 18.019274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.168449, 18.211494, 17.839109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429267, 0.147468, 0.891057,
		0.218234, 0.974282, -0.056107,
		-0.876415, 0.170374, -0.450410,
		17.905525, 18.262608, 17.703987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.209120, 18.799629, 18.315125>,  <18.519016, 18.143345, 18.019274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.209120, 18.799629, 18.315125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.897789, 18.613499, 18.146519>,  <17.710991, 18.501820, 18.045355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.897789, 18.613499, 18.146519>,  <18.209120, 18.799629, 18.315125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.897789, 18.613499, 18.146519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431291, -0.091640, 0.897547,
		-0.456281, 0.880382, -0.129366,
		-0.778329, -0.465328, -0.421514,
		17.664289, 18.473900, 18.020065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635015, 19.085051, 18.546940>,  <18.209120, 18.799629, 18.315125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635015, 19.085051, 18.546940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.489540, 18.730743, 18.431601>,  <17.402254, 18.518160, 18.362396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.489540, 18.730743, 18.431601>,  <17.635015, 19.085051, 18.546940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.489540, 18.730743, 18.431601> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450017, -0.103959, 0.886949,
		-0.815607, 0.452336, -0.360802,
		-0.363690, -0.885768, -0.288348,
		17.380432, 18.465014, 18.345097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.957050, 19.076780, 18.805269>,  <17.635015, 19.085051, 18.546940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.957050, 19.076780, 18.805269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.040958, 18.689682, 18.749470>,  <17.091303, 18.457422, 18.715990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.040958, 18.689682, 18.749470>,  <16.957050, 19.076780, 18.805269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.040958, 18.689682, 18.749470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531002, -0.232560, 0.814833,
		-0.820995, -0.096853, -0.562660,
		0.209771, -0.967748, -0.139501,
		17.103889, 18.399357, 18.707619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.232401, 18.762613, 18.877735>,  <16.957050, 19.076780, 18.805269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.232401, 18.762613, 18.877735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.516823, 18.484119, 18.917036>,  <16.687477, 18.317022, 18.940617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.516823, 18.484119, 18.917036>,  <16.232401, 18.762613, 18.877735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.516823, 18.484119, 18.917036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413430, -0.300955, 0.859361,
		-0.568749, -0.651675, -0.501841,
		0.711056, -0.696237, 0.098254,
		16.730139, 18.275248, 18.946512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.953845, 18.141665, 19.106909>,  <16.232401, 18.762613, 18.877735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.953845, 18.141665, 19.106909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.337990, 18.096237, 19.208738>,  <16.568476, 18.068981, 19.269836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.337990, 18.096237, 19.208738>,  <15.953845, 18.141665, 19.106909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.337990, 18.096237, 19.208738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276919, -0.283927, 0.917988,
		-0.031971, -0.952097, -0.304121,
		0.960361, -0.113566, 0.254576,
		16.626099, 18.062168, 19.285110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.969246, 17.461412, 19.413084>,  <15.953845, 18.141665, 19.106909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.969246, 17.461412, 19.413084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.289089, 17.654579, 19.555866>,  <16.480995, 17.770479, 19.641537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.289089, 17.654579, 19.555866>,  <15.969246, 17.461412, 19.413084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.289089, 17.654579, 19.555866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340623, -0.124814, 0.931878,
		0.494573, -0.866725, 0.064691,
		0.799608, 0.482917, 0.356957,
		16.528973, 17.799454, 19.662952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.076557, 17.136684, 19.884605>,  <15.969246, 17.461412, 19.413084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.076557, 17.136684, 19.884605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.303261, 17.452972, 19.977171>,  <16.439283, 17.642744, 20.032709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.303261, 17.452972, 19.977171>,  <16.076557, 17.136684, 19.884605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.303261, 17.452972, 19.977171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254732, -0.098939, 0.961937,
		0.783516, -0.604133, 0.145347,
		0.566757, 0.790718, 0.231412,
		16.473288, 17.690187, 20.046595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423063, 16.833174, 20.494371>,  <16.076557, 17.136684, 19.884605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.423063, 16.833174, 20.494371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.458103, 17.231617, 20.498177>,  <16.479128, 17.470684, 20.500460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.458103, 17.231617, 20.498177>,  <16.423063, 16.833174, 20.494371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.458103, 17.231617, 20.498177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262215, 0.013845, 0.964910,
		0.961025, -0.087021, 0.262407,
		0.087601, 0.996110, 0.009513,
		16.484383, 17.530451, 20.501030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854437, 17.009699, 20.966469>,  <16.423063, 16.833174, 20.494371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854437, 17.009699, 20.966469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.614532, 17.326023, 20.917639>,  <16.470589, 17.515818, 20.888340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.614532, 17.326023, 20.917639>,  <16.854437, 17.009699, 20.966469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.614532, 17.326023, 20.917639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078994, 0.093301, 0.992499,
		0.796269, 0.604908, 0.006511,
		-0.599763, 0.790811, -0.122077,
		16.434603, 17.563267, 20.881016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.023804, 17.418531, 21.526903>,  <16.854437, 17.009699, 20.966469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.023804, 17.418531, 21.526903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.654778, 17.535637, 21.426373>,  <16.433363, 17.605900, 21.366055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.654778, 17.535637, 21.426373>,  <17.023804, 17.418531, 21.526903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.654778, 17.535637, 21.426373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205642, 0.178061, 0.962292,
		0.326477, 0.939459, -0.104068,
		-0.922564, 0.292766, -0.251325,
		16.378008, 17.623466, 21.350975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.199375, 17.348839, 22.203495>,  <17.023804, 17.418531, 21.526903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.199375, 17.348839, 22.203495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.891159, 17.603653, 22.194962>,  <16.706230, 17.756540, 22.189842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.891159, 17.603653, 22.194962>,  <17.199375, 17.348839, 22.203495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.891159, 17.603653, 22.194962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592720, -0.703826, 0.391550,
		0.234415, 0.314350, 0.919909,
		-0.770540, 0.637034, -0.021334,
		16.659996, 17.794764, 22.188560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.498159, 17.226591, 22.875803>,  <17.199375, 17.348839, 22.203495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.498159, 17.226591, 22.875803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.867519, 17.170547, 23.018744>,  <18.089136, 17.136921, 23.104507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.867519, 17.170547, 23.018744>,  <17.498159, 17.226591, 22.875803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.867519, 17.170547, 23.018744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330469, -0.183361, -0.925834,
		0.195241, 0.973010, -0.123014,
		0.923402, -0.140108, 0.357350,
		18.144541, 17.128515, 23.125948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878170, 17.649799, 22.502594>,  <17.498159, 17.226591, 22.875803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878170, 17.649799, 22.502594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.117306, 17.365078, 22.650066>,  <18.260786, 17.194244, 22.738550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.117306, 17.365078, 22.650066>,  <17.878170, 17.649799, 22.502594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.117306, 17.365078, 22.650066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377556, -0.155683, -0.912806,
		0.707135, 0.684908, 0.175673,
		0.597838, -0.711804, 0.368680,
		18.296658, 17.151537, 22.760670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.433220, 17.693798, 22.105827>,  <17.878170, 17.649799, 22.502594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.433220, 17.693798, 22.105827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.480274, 17.336826, 22.280062>,  <18.508507, 17.122644, 22.384602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.480274, 17.336826, 22.280062>,  <18.433220, 17.693798, 22.105827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.480274, 17.336826, 22.280062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430623, -0.349405, -0.832154,
		0.894833, 0.285463, 0.343198,
		0.117634, -0.892428, 0.435586,
		18.515564, 17.069098, 22.410738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.094313, 17.510798, 21.875904>,  <18.433220, 17.693798, 22.105827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.094313, 17.510798, 21.875904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.901321, 17.173393, 21.970312>,  <18.785526, 16.970951, 22.026957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.901321, 17.173393, 21.970312>,  <19.094313, 17.510798, 21.875904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.901321, 17.173393, 21.970312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501660, -0.486997, -0.714962,
		0.718020, -0.226550, 0.658121,
		-0.482477, -0.843510, 0.236022,
		18.756578, 16.920340, 22.041119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.545435, 16.939741, 22.040941>,  <19.094313, 17.510798, 21.875904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.545435, 16.939741, 22.040941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.204159, 16.767757, 21.922823>,  <18.999393, 16.664566, 21.851952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.204159, 16.767757, 21.922823>,  <19.545435, 16.939741, 22.040941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.204159, 16.767757, 21.922823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491237, -0.472024, -0.732038,
		0.175361, -0.769628, 0.613939,
		-0.853191, -0.429961, -0.295295,
		18.948202, 16.638769, 21.834234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.680111, 16.209867, 21.932087>,  <19.545435, 16.939741, 22.040941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.680111, 16.209867, 21.932087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.336384, 16.246391, 21.730797>,  <19.130148, 16.268307, 21.610023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.336384, 16.246391, 21.730797>,  <19.680111, 16.209867, 21.932087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.336384, 16.246391, 21.730797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376556, -0.552866, -0.743333,
		-0.346091, -0.828252, 0.440704,
		-0.859318, 0.091311, -0.503225,
		19.078588, 16.273785, 21.579830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.625164, 15.539911, 21.558201>,  <19.680111, 16.209867, 21.932087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.625164, 15.539911, 21.558201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.369236, 15.795460, 21.387333>,  <19.215679, 15.948789, 21.284811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.369236, 15.795460, 21.387333>,  <19.625164, 15.539911, 21.558201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.369236, 15.795460, 21.387333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355344, -0.246925, -0.901531,
		-0.681442, -0.728609, -0.069032,
		-0.639818, 0.638871, -0.427172,
		19.177290, 15.987122, 21.259182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382416, 15.297177, 20.944490>,  <19.625164, 15.539911, 21.558201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.382416, 15.297177, 20.944490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.271034, 15.676373, 20.882805>,  <19.204205, 15.903890, 20.845793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.271034, 15.676373, 20.882805>,  <19.382416, 15.297177, 20.944490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.271034, 15.676373, 20.882805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284484, -0.071951, -0.955977,
		-0.917351, -0.310067, -0.249652,
		-0.278454, 0.947988, -0.154214,
		19.187498, 15.960769, 20.836540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.119570, 15.375151, 20.264141>,  <19.382416, 15.297177, 20.944490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.119570, 15.375151, 20.264141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.214596, 15.756035, 20.340933>,  <19.271612, 15.984566, 20.387009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.214596, 15.756035, 20.340933>,  <19.119570, 15.375151, 20.264141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.214596, 15.756035, 20.340933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289771, 0.119170, -0.949648,
		-0.927144, 0.281234, -0.247612,
		0.237565, 0.952211, 0.191982,
		19.285866, 16.041698, 20.398527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.627209, 15.859846, 19.852522>,  <19.119570, 15.375151, 20.264141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.627209, 15.859846, 19.852522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.956409, 16.065350, 19.949450>,  <19.153931, 16.188652, 20.007607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.956409, 16.065350, 19.949450>,  <18.627209, 15.859846, 19.852522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.956409, 16.065350, 19.949450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127175, 0.249110, -0.960089,
		-0.553619, 0.820972, 0.139681,
		0.823002, 0.513760, 0.242320,
		19.203310, 16.219477, 20.022146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.518034, 16.261040, 19.372641>,  <18.627209, 15.859846, 19.852522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.518034, 16.261040, 19.372641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.892548, 16.334835, 19.492199>,  <19.117256, 16.379112, 19.563934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.892548, 16.334835, 19.492199>,  <18.518034, 16.261040, 19.372641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.892548, 16.334835, 19.492199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264994, 0.187541, -0.945836,
		-0.230552, 0.964776, 0.126703,
		0.936282, 0.184489, 0.298897,
		19.173431, 16.390182, 19.581869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.705259, 16.906216, 18.931520>,  <18.518034, 16.261040, 19.372641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.705259, 16.906216, 18.931520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.029202, 16.716305, 19.069347>,  <19.223566, 16.602358, 19.152042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.029202, 16.716305, 19.069347>,  <18.705259, 16.906216, 18.931520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.029202, 16.716305, 19.069347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361855, -0.058014, -0.930427,
		0.461733, 0.878193, 0.124817,
		0.809854, -0.474775, 0.344566,
		19.272158, 16.573872, 19.172718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.258661, 17.210535, 18.613571>,  <18.705259, 16.906216, 18.931520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.258661, 17.210535, 18.613571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.406364, 16.858231, 18.732172>,  <19.494986, 16.646849, 18.803331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.406364, 16.858231, 18.732172>,  <19.258661, 17.210535, 18.613571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.406364, 16.858231, 18.732172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340404, -0.168688, -0.925024,
		0.864739, 0.442502, 0.237524,
		0.369258, -0.880759, 0.296500,
		19.517141, 16.594004, 18.821121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.978563, 17.271446, 18.476452>,  <19.258661, 17.210535, 18.613571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.978563, 17.271446, 18.476452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.870411, 16.886818, 18.495535>,  <19.805519, 16.656040, 18.506985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.870411, 16.886818, 18.495535>,  <19.978563, 17.271446, 18.476452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.870411, 16.886818, 18.495535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323754, -0.137480, -0.936100,
		0.906685, -0.237656, 0.348484,
		-0.270380, -0.961571, 0.047709,
		19.789297, 16.598347, 18.509848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.546120, 17.670897, 18.655205>,  <19.978563, 17.271446, 18.476452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.546120, 17.670897, 18.655205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.510448, 18.062210, 18.580360>,  <20.489046, 18.296997, 18.535454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.510448, 18.062210, 18.580360>,  <20.546120, 17.670897, 18.655205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.510448, 18.062210, 18.580360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312189, 0.150942, 0.937952,
		0.945825, 0.142057, 0.291949,
		-0.089176, 0.978282, -0.187113,
		20.483696, 18.355696, 18.524227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.995323, 18.077938, 19.128971>,  <20.546120, 17.670897, 18.655205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.995323, 18.077938, 19.128971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.699394, 18.328419, 19.030558>,  <20.521837, 18.478708, 18.971510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.699394, 18.328419, 19.030558>,  <20.995323, 18.077938, 19.128971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.699394, 18.328419, 19.030558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159848, 0.191614, 0.968366,
		0.653536, 0.755747, -0.041664,
		-0.739824, 0.626203, -0.246031,
		20.477448, 18.516279, 18.956749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.073019, 18.644356, 19.552298>,  <20.995323, 18.077938, 19.128971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.073019, 18.644356, 19.552298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.703777, 18.704556, 19.410748>,  <20.482233, 18.740675, 19.325817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.703777, 18.704556, 19.410748>,  <21.073019, 18.644356, 19.552298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.703777, 18.704556, 19.410748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298224, 0.300794, 0.905861,
		0.242774, 0.941739, -0.232782,
		-0.923105, 0.150498, -0.353875,
		20.426846, 18.749704, 19.304585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.819376, 19.343390, 19.775673>,  <21.073019, 18.644356, 19.552298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.819376, 19.343390, 19.775673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.482368, 19.143177, 19.696045>,  <20.280163, 19.023050, 19.648268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.482368, 19.143177, 19.696045>,  <20.819376, 19.343390, 19.775673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482368, 19.143177, 19.696045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444210, 0.436558, 0.782364,
		-0.304692, 0.747586, -0.590150,
		-0.842520, -0.500531, -0.199069,
		20.229612, 18.993017, 19.636324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.353943, 19.754988, 20.124004>,  <20.819376, 19.343390, 19.775673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.353943, 19.754988, 20.124004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.109764, 19.444984, 20.058624>,  <19.963257, 19.258982, 20.019396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.109764, 19.444984, 20.058624>,  <20.353943, 19.754988, 20.124004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.109764, 19.444984, 20.058624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569149, 0.285690, 0.771006,
		-0.550840, 0.563687, -0.615494,
		-0.610447, -0.775009, -0.163452,
		19.926630, 19.212482, 20.009588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.661861, 20.129564, 19.999279>,  <20.353943, 19.754988, 20.124004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.661861, 20.129564, 19.999279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.650314, 19.745434, 20.110233>,  <19.643387, 19.514956, 20.176805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.650314, 19.745434, 20.110233>,  <19.661861, 20.129564, 19.999279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.650314, 19.745434, 20.110233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582457, 0.241682, 0.776101,
		-0.812348, -0.139161, -0.566325,
		-0.028868, -0.960325, 0.277385,
		19.641653, 19.457336, 20.193449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.931711, 19.982273, 20.022627>,  <19.661861, 20.129564, 19.999279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.931711, 19.982273, 20.022627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.127216, 19.706184, 20.236057>,  <19.244520, 19.540531, 20.364115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.127216, 19.706184, 20.236057>,  <18.931711, 19.982273, 20.022627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.127216, 19.706184, 20.236057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640737, 0.131079, 0.756488,
		-0.592087, -0.711624, -0.378185,
		0.488763, -0.690224, 0.533575,
		19.273846, 19.499117, 20.396130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275017, 20.400272, 20.084726>,  <18.931711, 19.982273, 20.022627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275017, 20.400272, 20.084726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.439857, 20.764290, 20.066881>,  <18.538761, 20.982700, 20.056173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.439857, 20.764290, 20.066881>,  <18.275017, 20.400272, 20.084726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.439857, 20.764290, 20.066881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167210, -0.123672, -0.978134,
		-0.895663, 0.395631, -0.203134,
		0.412102, 0.910045, -0.044615,
		18.563488, 21.037304, 20.053497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.011484, 20.706100, 19.434229>,  <18.275017, 20.400272, 20.084726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.011484, 20.706100, 19.434229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.324493, 20.935257, 19.531763>,  <18.512299, 21.072750, 19.590284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.324493, 20.935257, 19.531763>,  <18.011484, 20.706100, 19.434229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.324493, 20.935257, 19.531763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247972, 0.072465, -0.966053,
		-0.571110, 0.816423, -0.085355,
		0.782523, 0.572889, 0.243836,
		18.559250, 21.107124, 19.604914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.142157, 21.057867, 18.877174>,  <18.011484, 20.706100, 19.434229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.142157, 21.057867, 18.877174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.487793, 21.142925, 19.059660>,  <18.695175, 21.193960, 19.169151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.487793, 21.142925, 19.059660>,  <18.142157, 21.057867, 18.877174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.487793, 21.142925, 19.059660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453969, 0.062232, -0.888842,
		-0.217400, 0.975145, -0.042761,
		0.864089, 0.212647, 0.456215,
		18.747019, 21.206718, 19.196524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.408466, 21.823685, 18.646101>,  <18.142157, 21.057867, 18.877174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.408466, 21.823685, 18.646101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.724712, 21.605938, 18.758238>,  <18.914461, 21.475290, 18.825520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.724712, 21.605938, 18.758238>,  <18.408466, 21.823685, 18.646101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.724712, 21.605938, 18.758238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481092, 0.269032, -0.834369,
		0.378782, 0.794536, 0.474591,
		0.790617, -0.544366, 0.280341,
		18.961897, 21.442629, 18.842340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.991327, 22.203272, 18.510181>,  <18.408466, 21.823685, 18.646101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.991327, 22.203272, 18.510181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.164379, 21.846035, 18.559526>,  <19.268209, 21.631693, 18.589134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.164379, 21.846035, 18.559526>,  <18.991327, 22.203272, 18.510181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.164379, 21.846035, 18.559526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458482, 0.100122, -0.883046,
		0.776290, 0.438591, 0.452782,
		0.432629, -0.893092, 0.123363,
		19.294168, 21.578108, 18.596535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.742111, 22.335276, 18.408817>,  <18.991327, 22.203272, 18.510181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.742111, 22.335276, 18.408817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.664585, 21.945499, 18.363390>,  <19.618069, 21.711634, 18.336134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.664585, 21.945499, 18.363390>,  <19.742111, 22.335276, 18.408817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.664585, 21.945499, 18.363390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529062, -0.006332, -0.848559,
		0.826153, -0.224551, 0.516767,
		-0.193817, -0.974442, -0.113570,
		19.606440, 21.653168, 18.329319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.305660, 22.109432, 18.157785>,  <19.742111, 22.335276, 18.408817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.305660, 22.109432, 18.157785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.100266, 21.776066, 18.076057>,  <19.977028, 21.576046, 18.027021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.100266, 21.776066, 18.076057>,  <20.305660, 22.109432, 18.157785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.100266, 21.776066, 18.076057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633060, -0.207189, -0.745861,
		0.579281, -0.512336, 0.633992,
		-0.513487, -0.833417, -0.204318,
		19.946218, 21.526041, 18.014761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.446638, 20.254608, 20.544224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.663827, 19.952042, 20.398338>,  <14.794141, 19.770502, 20.310806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.663827, 19.952042, 20.398338>,  <14.446638, 20.254608, 20.544224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.663827, 19.952042, 20.398338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213726, 0.544491, -0.811080,
		0.812097, 0.362446, 0.457309,
		0.542973, -0.756415, -0.364715,
		14.826719, 19.725117, 20.288923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.021356, 20.539873, 20.340334>,  <14.446638, 20.254608, 20.544224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.021356, 20.539873, 20.340334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.049155, 20.210339, 20.115313>,  <15.065835, 20.012617, 19.980301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.049155, 20.210339, 20.115313>,  <15.021356, 20.539873, 20.340334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.049155, 20.210339, 20.115313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403520, 0.538939, -0.739403,
		0.912327, -0.175612, 0.369890,
		0.069500, -0.823836, -0.562551,
		15.070005, 19.963188, 19.946547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.656561, 20.578054, 19.891613>,  <15.021356, 20.539873, 20.340334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.656561, 20.578054, 19.891613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.450524, 20.280281, 19.721672>,  <15.326902, 20.101618, 19.619707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.450524, 20.280281, 19.721672>,  <15.656561, 20.578054, 19.891613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.450524, 20.280281, 19.721672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352788, 0.267606, -0.896620,
		0.781167, -0.611725, 0.124786,
		-0.515091, -0.744433, -0.424854,
		15.295997, 20.056952, 19.594215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115080, 20.286226, 19.412161>,  <15.656561, 20.578054, 19.891613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.115080, 20.286226, 19.412161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.758739, 20.145298, 19.297443>,  <15.544934, 20.060741, 19.228613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.758739, 20.145298, 19.297443>,  <16.115080, 20.286226, 19.412161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.758739, 20.145298, 19.297443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243294, 0.163136, -0.956135,
		0.383655, -0.921550, -0.059612,
		-0.890851, -0.352323, -0.286796,
		15.491483, 20.039602, 19.211405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223724, 19.784138, 18.735699>,  <16.115080, 20.286226, 19.412161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223724, 19.784138, 18.735699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.853513, 19.935589, 18.738199>,  <15.631386, 20.026459, 18.739700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.853513, 19.935589, 18.738199>,  <16.223724, 19.784138, 18.735699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.853513, 19.935589, 18.738199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076398, 0.202871, -0.976221,
		-0.370891, -0.903042, -0.216689,
		-0.925528, 0.378626, 0.006253,
		15.575854, 20.049177, 18.740076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.938128, 19.462770, 18.106703>,  <16.223724, 19.784138, 18.735699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.938128, 19.462770, 18.106703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.735620, 19.799515, 18.181490>,  <15.614115, 20.001562, 18.226362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.735620, 19.799515, 18.181490>,  <15.938128, 19.462770, 18.106703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.735620, 19.799515, 18.181490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080930, 0.169470, -0.982207,
		-0.858569, -0.512394, -0.017666,
		-0.506271, 0.841862, 0.186970,
		15.583738, 20.052073, 18.237581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.540167, 19.538456, 17.573910>,  <15.938128, 19.462770, 18.106703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.540167, 19.538456, 17.573910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.483319, 19.908363, 17.715109>,  <15.449211, 20.130308, 17.799829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.483319, 19.908363, 17.715109>,  <15.540167, 19.538456, 17.573910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.483319, 19.908363, 17.715109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068779, 0.364983, -0.928470,
		-0.987457, -0.107674, -0.115475,
		-0.142118, 0.924767, 0.352999,
		15.440683, 20.185793, 17.821009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.178957, 19.868326, 16.996523>,  <15.540167, 19.538456, 17.573910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.178957, 19.868326, 16.996523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.314822, 20.166771, 17.225590>,  <15.396341, 20.345839, 17.363029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.314822, 20.166771, 17.225590>,  <15.178957, 19.868326, 16.996523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.314822, 20.166771, 17.225590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082836, 0.630229, -0.771977,
		-0.936892, 0.214775, 0.275870,
		0.339663, 0.746112, 0.572666,
		15.416721, 20.390604, 17.397390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.698551, 20.432850, 16.828335>,  <15.178957, 19.868326, 16.996523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.698551, 20.432850, 16.828335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.041961, 20.559414, 16.989738>,  <15.248007, 20.635353, 17.086580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.041961, 20.559414, 16.989738>,  <14.698551, 20.432850, 16.828335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.041961, 20.559414, 16.989738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200938, 0.516387, -0.832447,
		-0.471764, 0.795756, 0.379751,
		0.858524, 0.316412, 0.403510,
		15.299518, 20.654337, 17.110792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.785364, 21.122280, 16.642122>,  <14.698551, 20.432850, 16.828335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.785364, 21.122280, 16.642122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.164060, 21.085171, 16.765463>,  <15.391276, 21.062904, 16.839468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.164060, 21.085171, 16.765463>,  <14.785364, 21.122280, 16.642122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.164060, 21.085171, 16.765463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318759, 0.405650, -0.856645,
		-0.045609, 0.909308, 0.413616,
		0.946738, -0.092773, 0.308351,
		15.448081, 21.057339, 16.857967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009134, 21.801899, 16.626505>,  <14.785364, 21.122280, 16.642122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.009134, 21.801899, 16.626505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.313222, 21.544544, 16.590466>,  <15.495675, 21.390131, 16.568842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.313222, 21.544544, 16.590466>,  <15.009134, 21.801899, 16.626505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.313222, 21.544544, 16.590466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247004, 0.414513, -0.875881,
		0.600878, 0.643608, 0.474040,
		0.760220, -0.643388, -0.090098,
		15.541287, 21.351528, 16.563437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.713078, 22.114548, 16.460140>,  <15.009134, 21.801899, 16.626505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.713078, 22.114548, 16.460140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.794984, 21.744274, 16.332903>,  <15.844127, 21.522110, 16.256559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.794984, 21.744274, 16.332903>,  <15.713078, 22.114548, 16.460140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.794984, 21.744274, 16.332903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285656, 0.367348, -0.885131,
		0.936201, 0.090376, 0.339646,
		0.204762, -0.925683, -0.318095,
		15.856413, 21.466570, 16.237474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372950, 22.488750, 16.671621>,  <15.713078, 22.114548, 16.460140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.372950, 22.488750, 16.671621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.506081, 22.860687, 16.734386>,  <16.585960, 23.083849, 16.772045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.506081, 22.860687, 16.734386>,  <16.372950, 22.488750, 16.671621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.506081, 22.860687, 16.734386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422023, -0.001929, 0.906583,
		0.843280, -0.367958, 0.391772,
		0.332829, 0.929841, 0.156913,
		16.605928, 23.139639, 16.781460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568213, 22.452522, 17.317938>,  <16.372950, 22.488750, 16.671621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.568213, 22.452522, 17.317938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.573814, 22.850018, 17.273592>,  <16.577175, 23.088514, 17.246984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.573814, 22.850018, 17.273592>,  <16.568213, 22.452522, 17.317938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.573814, 22.850018, 17.273592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362905, 0.108367, 0.925503,
		0.931721, 0.027270, 0.362150,
		0.014007, 0.993737, -0.110865,
		16.578016, 23.148138, 17.240334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.972055, 22.734890, 17.860037>,  <16.568213, 22.452522, 17.317938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.972055, 22.734890, 17.860037> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.704407, 23.007870, 17.742369>,  <16.543818, 23.171658, 17.671768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.704407, 23.007870, 17.742369>,  <16.972055, 22.734890, 17.860037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.704407, 23.007870, 17.742369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353244, 0.056185, 0.933843,
		0.653829, 0.728769, 0.203477,
		-0.669124, 0.682450, -0.294169,
		16.503670, 23.212605, 17.654118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.112185, 23.405619, 18.257999>,  <16.972055, 22.734890, 17.860037>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.112185, 23.405619, 18.257999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.733128, 23.424805, 18.131718>,  <16.505693, 23.436317, 18.055948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.733128, 23.424805, 18.131718>,  <17.112185, 23.405619, 18.257999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.733128, 23.424805, 18.131718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294801, 0.248558, 0.922665,
		0.122728, 0.967428, -0.221404,
		-0.947644, 0.047967, -0.315704,
		16.448833, 23.439196, 18.037006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.872507, 23.732197, 18.746868>,  <17.112185, 23.405619, 18.257999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.872507, 23.732197, 18.746868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.525379, 23.634674, 18.573689>,  <16.317102, 23.576160, 18.469780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.525379, 23.634674, 18.573689>,  <16.872507, 23.732197, 18.746868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.525379, 23.634674, 18.573689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473921, 0.144355, 0.868654,
		-0.149285, 0.959020, -0.240819,
		-0.867820, -0.243807, -0.432950,
		16.265034, 23.561531, 18.443804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448374, 24.229586, 18.968803>,  <16.872507, 23.732197, 18.746868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.448374, 24.229586, 18.968803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.230000, 23.904129, 18.888861>,  <16.098974, 23.708855, 18.840895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.230000, 23.904129, 18.888861>,  <16.448374, 24.229586, 18.968803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.230000, 23.904129, 18.888861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423264, 0.061979, 0.903884,
		-0.723049, 0.578056, -0.378221,
		-0.545937, -0.813640, -0.199856,
		16.066219, 23.660036, 18.828903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.810264, 24.388567, 19.305840>,  <16.448374, 24.229586, 18.968803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.810264, 24.388567, 19.305840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.822223, 23.995041, 19.235170>,  <15.829398, 23.758924, 19.192770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.822223, 23.995041, 19.235170>,  <15.810264, 24.388567, 19.305840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.822223, 23.995041, 19.235170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383496, -0.174513, 0.906905,
		-0.923059, 0.040639, -0.382507,
		0.029897, -0.983816, -0.176671,
		15.831192, 23.699896, 19.182169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.176087, 24.155392, 19.590837>,  <15.810264, 24.388567, 19.305840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.176087, 24.155392, 19.590837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.378087, 23.811169, 19.564253>,  <15.499287, 23.604635, 19.548302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.378087, 23.811169, 19.564253>,  <15.176087, 24.155392, 19.590837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.378087, 23.811169, 19.564253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383936, -0.292932, 0.875662,
		-0.773025, -0.416693, -0.478329,
		0.505000, -0.860557, -0.066461,
		15.529587, 23.553001, 19.544315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.812127, 23.671501, 19.921276>,  <15.176087, 24.155392, 19.590837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.812127, 23.671501, 19.921276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.167834, 23.488659, 19.927713>,  <15.381258, 23.378954, 19.931576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.167834, 23.488659, 19.927713>,  <14.812127, 23.671501, 19.921276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.167834, 23.488659, 19.927713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156937, -0.271881, 0.949448,
		-0.429622, -0.846838, -0.313511,
		0.889267, -0.457106, 0.016094,
		15.434614, 23.351528, 19.932541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.686213, 23.073843, 20.314295>,  <14.812127, 23.671501, 19.921276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.686213, 23.073843, 20.314295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.083137, 23.121937, 20.302523>,  <15.321291, 23.150793, 20.295460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.083137, 23.121937, 20.302523>,  <14.686213, 23.073843, 20.314295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.083137, 23.121937, 20.302523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041693, -0.100795, 0.994033,
		0.116554, -0.987615, -0.105033,
		0.992309, 0.120238, -0.029429,
		15.380829, 23.158009, 20.293694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.936729, 22.625221, 20.799637>,  <14.686213, 23.073843, 20.314295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.936729, 22.625221, 20.799637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.256013, 22.864094, 20.768040>,  <15.447583, 23.007418, 20.749081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.256013, 22.864094, 20.768040>,  <14.936729, 22.625221, 20.799637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.256013, 22.864094, 20.768040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021848, 0.102348, 0.994509,
		0.601985, -0.795551, 0.068648,
		0.798208, 0.597180, -0.078993,
		15.495476, 23.043247, 20.744341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.295753, 22.421215, 21.287510>,  <14.936729, 22.625221, 20.799637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.295753, 22.421215, 21.287510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.447747, 22.786465, 21.228428>,  <15.538944, 23.005615, 21.192980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.447747, 22.786465, 21.228428>,  <15.295753, 22.421215, 21.287510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.447747, 22.786465, 21.228428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092559, 0.121344, 0.988286,
		0.920350, -0.389206, -0.038409,
		0.379986, 0.913123, -0.147703,
		15.561743, 23.060402, 21.184116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.807248, 22.462885, 21.799086>,  <15.295753, 22.421215, 21.287510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.807248, 22.462885, 21.799086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.756858, 22.841076, 21.678949>,  <15.726624, 23.067991, 21.606869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.756858, 22.841076, 21.678949>,  <15.807248, 22.462885, 21.799086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.756858, 22.841076, 21.678949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172089, 0.318989, 0.932004,
		0.976993, 0.065725, -0.202891,
		-0.125976, 0.945477, -0.300339,
		15.719065, 23.124720, 21.588848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.424511, 22.884195, 21.902740>,  <15.807248, 22.462885, 21.799086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.424511, 22.884195, 21.902740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.104710, 23.124371, 21.909254>,  <15.912828, 23.268476, 21.913162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.104710, 23.124371, 21.909254>,  <16.424511, 22.884195, 21.902740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104710, 23.124371, 21.909254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266107, 0.329767, 0.905782,
		0.538498, 0.728509, -0.423431,
		-0.799504, 0.600440, 0.016282,
		15.864859, 23.304502, 21.914139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.174271, 22.938110, 21.784899>,  <16.424511, 22.884195, 21.902740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.174271, 22.938110, 21.784899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.282654, 22.636208, 22.023872>,  <17.347683, 22.455067, 22.167255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.282654, 22.636208, 22.023872>,  <17.174271, 22.938110, 21.784899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.282654, 22.636208, 22.023872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646356, -0.317261, -0.693952,
		0.713307, 0.574184, 0.401878,
		0.270956, -0.754757, 0.597432,
		17.363941, 22.409781, 22.203102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837969, 22.933060, 21.739180>,  <17.174271, 22.938110, 21.784899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.837969, 22.933060, 21.739180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.716476, 22.573215, 21.864685>,  <17.643581, 22.357309, 21.939987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.716476, 22.573215, 21.864685>,  <17.837969, 22.933060, 21.739180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.716476, 22.573215, 21.864685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668394, -0.435875, -0.602712,
		0.678968, 0.026655, 0.733683,
		-0.303729, -0.899612, 0.313762,
		17.625359, 22.303331, 21.958813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.451847, 22.552288, 21.827074>,  <17.837969, 22.933060, 21.739180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.451847, 22.552288, 21.827074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.173805, 22.266598, 21.794308>,  <18.006981, 22.095184, 21.774649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.173805, 22.266598, 21.794308>,  <18.451847, 22.552288, 21.827074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.173805, 22.266598, 21.794308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566857, -0.474439, -0.673484,
		0.442156, -0.514576, 0.734649,
		-0.695105, -0.714226, -0.081915,
		17.965273, 22.052330, 21.769733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.807703, 22.035322, 21.664658>,  <18.451847, 22.552288, 21.827074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.807703, 22.035322, 21.664658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.447109, 21.894367, 21.564138>,  <18.230753, 21.809795, 21.503826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.447109, 21.894367, 21.564138>,  <18.807703, 22.035322, 21.664658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.447109, 21.894367, 21.564138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413695, -0.530888, -0.739604,
		0.127215, -0.770702, 0.624368,
		-0.901484, -0.352386, -0.251299,
		18.176664, 21.788651, 21.488749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.877857, 21.292978, 21.629122>,  <18.807703, 22.035322, 21.664658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.877857, 21.292978, 21.629122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.559132, 21.387512, 21.406689>,  <18.367895, 21.444233, 21.273228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.559132, 21.387512, 21.406689>,  <18.877857, 21.292978, 21.629122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.559132, 21.387512, 21.406689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424650, -0.435666, -0.793642,
		-0.429838, -0.868526, 0.246782,
		-0.796813, 0.236342, -0.556086,
		18.320087, 21.458414, 21.239864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.839085, 20.760021, 21.197239>,  <18.877857, 21.292978, 21.629122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.839085, 20.760021, 21.197239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.616665, 21.037121, 21.013538>,  <18.483213, 21.203381, 20.903318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.616665, 21.037121, 21.013538>,  <18.839085, 20.760021, 21.197239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.616665, 21.037121, 21.013538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196102, -0.427599, -0.882442,
		-0.807684, -0.580740, 0.101916,
		-0.556048, 0.692748, -0.459249,
		18.449850, 21.244946, 20.875763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.650471, 20.409569, 20.721334>,  <18.839085, 20.760021, 21.197239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.650471, 20.409569, 20.721334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.594826, 20.784481, 20.593487>,  <18.561438, 21.009428, 20.516779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.594826, 20.784481, 20.593487>,  <18.650471, 20.409569, 20.721334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.594826, 20.784481, 20.593487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069432, -0.312729, -0.947301,
		-0.987839, -0.153975, -0.021572,
		-0.139114, 0.937279, -0.319617,
		18.553091, 21.065664, 20.497602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.387697, 19.654821, 20.499767>,  <18.650471, 20.409569, 20.721334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.387697, 19.654821, 20.499767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.732773, 19.559078, 20.677971>,  <18.939817, 19.501633, 20.784893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.732773, 19.559078, 20.677971>,  <18.387697, 19.654821, 20.499767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.732773, 19.559078, 20.677971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427730, 0.124700, 0.895263,
		-0.269842, -0.962891, 0.005198,
		0.862689, -0.239356, 0.445507,
		18.991579, 19.487272, 20.811623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.203074, 19.133175, 20.909632>,  <18.387697, 19.654821, 20.499767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.203074, 19.133175, 20.909632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.531654, 19.319305, 21.041506>,  <18.728802, 19.430983, 21.120630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.531654, 19.319305, 21.041506>,  <18.203074, 19.133175, 20.909632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.531654, 19.319305, 21.041506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351916, -0.041286, 0.935120,
		0.448746, -0.884176, 0.129841,
		0.821451, 0.465325, 0.329683,
		18.778090, 19.458902, 21.140411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.422682, 18.721699, 21.541847>,  <18.203074, 19.133175, 20.909632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.422682, 18.721699, 21.541847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.635357, 19.059940, 21.560879>,  <18.762962, 19.262884, 21.572298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.635357, 19.059940, 21.560879>,  <18.422682, 18.721699, 21.541847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.635357, 19.059940, 21.560879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338045, 0.160370, 0.927366,
		0.776552, -0.509154, 0.371119,
		0.531688, 0.845603, 0.047581,
		18.794863, 19.313622, 21.575153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.815025, 18.628019, 22.192614>,  <18.422682, 18.721699, 21.541847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.815025, 18.628019, 22.192614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.840569, 19.018597, 22.110168>,  <18.855894, 19.252943, 22.060701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.840569, 19.018597, 22.110168>,  <18.815025, 18.628019, 22.192614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.840569, 19.018597, 22.110168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042656, 0.209014, 0.976982,
		0.997047, -0.053597, 0.054998,
		0.063858, 0.976443, -0.206111,
		18.859726, 19.311529, 22.048336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.406054, 18.843636, 22.482422>,  <18.815025, 18.628019, 22.192614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.406054, 18.843636, 22.482422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.160591, 19.155281, 22.431181>,  <19.013313, 19.342268, 22.400436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.160591, 19.155281, 22.431181>,  <19.406054, 18.843636, 22.482422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.160591, 19.155281, 22.431181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007549, 0.168025, 0.985754,
		0.789538, 0.603946, -0.108991,
		-0.613655, 0.779113, -0.128103,
		18.976494, 19.389015, 22.392750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.648296, 19.296444, 22.985451>,  <19.406054, 18.843636, 22.482422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.648296, 19.296444, 22.985451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.286045, 19.445889, 22.905195>,  <19.068695, 19.535555, 22.857042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.286045, 19.445889, 22.905195>,  <19.648296, 19.296444, 22.985451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.286045, 19.445889, 22.905195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141671, 0.179401, 0.973522,
		0.399713, 0.910072, -0.109540,
		-0.905626, 0.373610, -0.200640,
		19.014357, 19.557972, 22.845003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.739325, 19.849634, 23.301224>,  <19.648296, 19.296444, 22.985451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.739325, 19.849634, 23.301224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.344944, 19.799969, 23.256535>,  <19.108316, 19.770170, 23.229721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.344944, 19.799969, 23.256535>,  <19.739325, 19.849634, 23.301224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.344944, 19.799969, 23.256535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126159, 0.115211, 0.985297,
		-0.109466, 0.985551, -0.129256,
		-0.985952, -0.124163, -0.111725,
		19.049158, 19.762720, 23.223017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.361479, 20.423941, 23.710085>,  <19.739325, 19.849634, 23.301224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.361479, 20.423941, 23.710085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.115471, 20.114189, 23.650644>,  <18.967865, 19.928337, 23.614979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.115471, 20.114189, 23.650644>,  <19.361479, 20.423941, 23.710085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.115471, 20.114189, 23.650644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126243, -0.089327, 0.987969,
		-0.778339, 0.626383, -0.042823,
		-0.615022, -0.774381, -0.148603,
		18.930964, 19.881874, 23.606064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.824636, 20.535711, 24.276176>,  <19.361479, 20.423941, 23.710085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.824636, 20.535711, 24.276176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.839478, 20.154995, 24.154379>,  <18.848381, 19.926565, 24.081301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.839478, 20.154995, 24.154379>,  <18.824636, 20.535711, 24.276176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.839478, 20.154995, 24.154379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105773, -0.299254, 0.948293,
		-0.993698, -0.067390, 0.089571,
		0.037101, -0.951791, -0.304496,
		18.850609, 19.869457, 24.063030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<22.774969, 17.867100, 8.542208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.754673, 17.491760, 8.678987>,  <22.742495, 17.266556, 8.761054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.754673, 17.491760, 8.678987>,  <22.774969, 17.867100, 8.542208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.754673, 17.491760, 8.678987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117771, 0.345621, 0.930954,
		-0.991744, 0.006966, -0.128047,
		-0.050741, -0.938348, 0.341947,
		22.739450, 17.210257, 8.781570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.187279, 17.785133, 9.037545>,  <22.774969, 17.867100, 8.542208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.187279, 17.785133, 9.037545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.429321, 17.477859, 9.121199>,  <22.574547, 17.293495, 9.171391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.429321, 17.477859, 9.121199>,  <22.187279, 17.785133, 9.037545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.429321, 17.477859, 9.121199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087028, 0.197286, 0.976476,
		-0.791373, -0.609073, 0.052525,
		0.605107, -0.768185, 0.209133,
		22.610853, 17.247404, 9.183939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.834225, 17.478203, 9.596859>,  <22.187279, 17.785133, 9.037545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.834225, 17.478203, 9.596859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.216438, 17.363735, 9.625314>,  <22.445766, 17.295055, 9.642386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.216438, 17.363735, 9.625314>,  <21.834225, 17.478203, 9.596859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.216438, 17.363735, 9.625314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000570, 0.239452, 0.970908,
		-0.294877, -0.927777, 0.228641,
		0.955535, -0.286168, 0.071137,
		22.503099, 17.277885, 9.646655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.801012, 17.204399, 10.225112>,  <21.834225, 17.478203, 9.596859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.801012, 17.204399, 10.225112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.184975, 17.280670, 10.142920>,  <22.415352, 17.326433, 10.093604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.184975, 17.280670, 10.142920>,  <21.801012, 17.204399, 10.225112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.184975, 17.280670, 10.142920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141909, 0.301615, 0.942810,
		0.241747, -0.934169, 0.262464,
		0.959906, 0.190675, -0.205481,
		22.472946, 17.337873, 10.081275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.180571, 16.881496, 10.716195>,  <21.801012, 17.204399, 10.225112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.180571, 16.881496, 10.716195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.435867, 17.169746, 10.607864>,  <22.589046, 17.342695, 10.542866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.435867, 17.169746, 10.607864>,  <22.180571, 16.881496, 10.716195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.435867, 17.169746, 10.607864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236929, 0.150851, 0.959744,
		0.732469, -0.676717, -0.074457,
		0.638243, 0.720624, -0.270828,
		22.627340, 17.385933, 10.526616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.770636, 16.810978, 11.137375>,  <22.180571, 16.881496, 10.716195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.770636, 16.810978, 11.137375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.811165, 17.178978, 10.985936>,  <22.835482, 17.399778, 10.895073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.811165, 17.178978, 10.985936>,  <22.770636, 16.810978, 11.137375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.811165, 17.178978, 10.985936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337626, 0.326171, 0.882962,
		0.935811, -0.217289, -0.277567,
		0.101323, 0.919999, -0.378596,
		22.841562, 17.454977, 10.872357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.458496, 17.026463, 11.254971>,  <22.770636, 16.810978, 11.137375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.458496, 17.026463, 11.254971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.250111, 17.364216, 11.204986>,  <23.125080, 17.566868, 11.174994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.250111, 17.364216, 11.204986>,  <23.458496, 17.026463, 11.254971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.250111, 17.364216, 11.204986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330049, 0.334280, 0.882793,
		0.787188, 0.418659, -0.452835,
		-0.520963, 0.844382, -0.124963,
		23.093822, 17.617531, 11.167497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.907198, 17.557787, 11.470554>,  <23.458496, 17.026463, 11.254971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.907198, 17.557787, 11.470554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.548580, 17.733395, 11.494115>,  <23.333410, 17.838760, 11.508251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.548580, 17.733395, 11.494115>,  <23.907198, 17.557787, 11.470554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.548580, 17.733395, 11.494115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156960, 0.190519, 0.969054,
		0.414213, 0.878045, -0.239718,
		-0.896544, 0.439021, 0.058902,
		23.279617, 17.865101, 11.511786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.997141, 18.201624, 11.753667>,  <23.907198, 17.557787, 11.470554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.997141, 18.201624, 11.753667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.614048, 18.101688, 11.810700>,  <23.384192, 18.041727, 11.844920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.614048, 18.101688, 11.810700>,  <23.997141, 18.201624, 11.753667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.614048, 18.101688, 11.810700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070108, 0.277991, 0.958022,
		-0.278988, 0.927524, -0.248725,
		-0.957732, -0.249839, 0.142583,
		23.326729, 18.026737, 11.853476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.702225, 18.764271, 12.109397>,  <23.997141, 18.201624, 11.753667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.702225, 18.764271, 12.109397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.434471, 18.475655, 12.180171>,  <23.273819, 18.302485, 12.222635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.434471, 18.475655, 12.180171>,  <23.702225, 18.764271, 12.109397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.434471, 18.475655, 12.180171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086295, 0.312068, 0.946133,
		-0.737887, 0.618059, -0.271158,
		-0.669385, -0.721538, 0.176935,
		23.233656, 18.259193, 12.233252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.161077, 19.106136, 12.311831>,  <23.702225, 18.764271, 12.109397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.161077, 19.106136, 12.311831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.097908, 18.744381, 12.470397>,  <23.060007, 18.527328, 12.565536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.097908, 18.744381, 12.470397>,  <23.161077, 19.106136, 12.311831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.097908, 18.744381, 12.470397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169597, 0.420329, 0.891381,
		-0.972778, 0.073539, -0.219761,
		-0.157923, -0.904387, 0.396415,
		23.050531, 18.473064, 12.589321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.629168, 19.213421, 12.732174>,  <23.161077, 19.106136, 12.311831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.629168, 19.213421, 12.732174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.755779, 18.861465, 12.873940>,  <22.831745, 18.650293, 12.958999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.755779, 18.861465, 12.873940>,  <22.629168, 19.213421, 12.732174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.755779, 18.861465, 12.873940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271967, 0.273759, 0.922545,
		-0.908759, -0.388400, -0.152648,
		0.316528, -0.879887, 0.354413,
		22.850739, 18.597500, 12.980264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.003187, 19.478374, 12.797219>,  <22.629168, 19.213421, 12.732174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.003187, 19.478374, 12.797219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.155361, 19.841244, 12.869117>,  <22.246666, 20.058966, 12.912255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.155361, 19.841244, 12.869117>,  <22.003187, 19.478374, 12.797219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.155361, 19.841244, 12.869117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274978, 0.074609, -0.958551,
		-0.882982, 0.414091, -0.221069,
		0.380433, 0.907173, 0.179744,
		22.269491, 20.113396, 12.923040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.798006, 19.950876, 12.298948>,  <22.003187, 19.478374, 12.797219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.798006, 19.950876, 12.298948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.133118, 20.136608, 12.413856>,  <22.334185, 20.248047, 12.482800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.133118, 20.136608, 12.413856>,  <21.798006, 19.950876, 12.298948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.133118, 20.136608, 12.413856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343910, -0.040104, -0.938146,
		-0.424088, 0.884754, -0.193286,
		0.837780, 0.464329, 0.287268,
		22.384451, 20.275908, 12.500036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.939837, 20.437916, 11.803383>,  <21.798006, 19.950876, 12.298948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.939837, 20.437916, 11.803383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.287998, 20.359154, 11.983883>,  <22.496895, 20.311897, 12.092183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.287998, 20.359154, 11.983883>,  <21.939837, 20.437916, 11.803383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.287998, 20.359154, 11.983883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472888, 0.079273, -0.877549,
		0.137022, 0.977213, 0.162113,
		0.870403, -0.196905, 0.451250,
		22.549120, 20.300083, 12.119258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.371302, 20.971148, 11.590931>,  <21.939837, 20.437916, 11.803383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.371302, 20.971148, 11.590931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.601696, 20.665379, 11.706793>,  <22.739933, 20.481916, 11.776310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.601696, 20.665379, 11.706793>,  <22.371302, 20.971148, 11.590931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.601696, 20.665379, 11.706793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630037, 0.189355, -0.753126,
		0.520858, 0.616283, 0.590679,
		0.575986, -0.764422, 0.289654,
		22.774492, 20.436052, 11.793689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.129755, 21.329046, 11.508528>,  <22.371302, 20.971148, 11.590931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.129755, 21.329046, 11.508528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.130959, 20.929104, 11.515214>,  <23.131681, 20.689138, 11.519226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.130959, 20.929104, 11.515214>,  <23.129755, 21.329046, 11.508528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.130959, 20.929104, 11.515214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744785, -0.008913, -0.667245,
		0.667298, 0.014458, 0.744651,
		0.003010, -0.999856, 0.016716,
		23.131861, 20.629147, 11.520228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.809769, 21.125097, 11.429181>,  <23.129755, 21.329046, 11.508528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.809769, 21.125097, 11.429181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.610683, 20.794651, 11.323492>,  <23.491232, 20.596382, 11.260078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.610683, 20.794651, 11.323492>,  <23.809769, 21.125097, 11.429181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.610683, 20.794651, 11.323492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460174, 0.006710, -0.887804,
		0.735202, -0.563459, 0.376817,
		-0.497713, -0.826116, -0.264222,
		23.461370, 20.546816, 11.244226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.232950, 20.949423, 10.959029>,  <23.809769, 21.125097, 11.429181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.232950, 20.949423, 10.959029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.915184, 20.717972, 10.885173>,  <23.724524, 20.579102, 10.840859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.915184, 20.717972, 10.885173>,  <24.232950, 20.949423, 10.959029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.915184, 20.717972, 10.885173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320439, -0.141036, -0.936711,
		0.515964, -0.803306, 0.297456,
		-0.794418, -0.578626, -0.184641,
		23.676859, 20.544384, 10.829781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.450638, 20.420883, 10.586166>,  <24.232950, 20.949423, 10.959029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.450638, 20.420883, 10.586166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.057354, 20.392975, 10.518722>,  <23.821384, 20.376230, 10.478254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.057354, 20.392975, 10.518722>,  <24.450638, 20.420883, 10.586166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.057354, 20.392975, 10.518722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179143, -0.193215, -0.964663,
		0.034730, -0.978672, 0.202471,
		-0.983210, -0.069774, -0.168612,
		23.762390, 20.372044, 10.468138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.099697, 19.756424, 10.291203>,  <24.450638, 20.420883, 10.586166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.099697, 19.756424, 10.291203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.855572, 20.023247, 10.120297>,  <23.709097, 20.183340, 10.017755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.855572, 20.023247, 10.120297>,  <24.099697, 19.756424, 10.291203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.855572, 20.023247, 10.120297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195027, -0.396235, -0.897197,
		-0.767779, -0.630897, 0.111732,
		-0.610311, 0.667059, -0.427263,
		23.672478, 20.223364, 9.992119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.806051, 19.453876, 9.662787>,  <24.099697, 19.756424, 10.291203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.806051, 19.453876, 9.662787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.687202, 19.833424, 9.620146>,  <23.615892, 20.061152, 9.594561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.687202, 19.833424, 9.620146>,  <23.806051, 19.453876, 9.662787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.687202, 19.833424, 9.620146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106670, -0.077963, -0.991233,
		-0.948862, -0.305889, -0.078052,
		-0.297122, 0.948870, -0.106605,
		23.598066, 20.118084, 9.588164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.227085, 19.544750, 9.078610>,  <23.806051, 19.453876, 9.662787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.227085, 19.544750, 9.078610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.413994, 19.895721, 9.122016>,  <23.526138, 20.106304, 9.148060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.413994, 19.895721, 9.122016>,  <23.227085, 19.544750, 9.078610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.413994, 19.895721, 9.122016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073820, 0.083589, -0.993762,
		-0.881027, 0.472367, -0.025713,
		0.467271, 0.877429, 0.108515,
		23.554174, 20.158951, 9.154571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.031008, 19.964161, 8.480679>,  <23.227085, 19.544750, 9.078610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.031008, 19.964161, 8.480679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.351059, 20.166927, 8.608948>,  <23.543089, 20.288588, 8.685909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.351059, 20.166927, 8.608948>,  <23.031008, 19.964161, 8.480679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.351059, 20.166927, 8.608948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195097, 0.285605, -0.938279,
		-0.567216, 0.813304, 0.129622,
		0.800127, 0.506918, 0.320673,
		23.591097, 20.319002, 8.705150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.060122, 20.552727, 8.084292>,  <23.031008, 19.964161, 8.480679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.060122, 20.552727, 8.084292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.435795, 20.497761, 8.210184>,  <23.661198, 20.464781, 8.285719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.435795, 20.497761, 8.210184>,  <23.060122, 20.552727, 8.084292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.435795, 20.497761, 8.210184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339336, 0.230403, -0.912012,
		0.052811, 0.963344, 0.263021,
		0.939182, -0.137417, 0.314730,
		23.717548, 20.456535, 8.304603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.495243, 21.155638, 7.903289>,  <23.060122, 20.552727, 8.084292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.495243, 21.155638, 7.903289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.735680, 20.840874, 7.959092>,  <23.879942, 20.652016, 7.992574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.735680, 20.840874, 7.959092>,  <23.495243, 21.155638, 7.903289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.735680, 20.840874, 7.959092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412738, 0.156189, -0.897359,
		0.684350, 0.596976, 0.418671,
		0.601093, -0.786909, 0.139507,
		23.916008, 20.604801, 8.000944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.107544, 21.604277, 8.446625>,  <23.495243, 21.155638, 7.903289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.107544, 21.604277, 8.446625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.968975, 21.838314, 8.153325>,  <22.885834, 21.978737, 7.977345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.968975, 21.838314, 8.153325>,  <23.107544, 21.604277, 8.446625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.968975, 21.838314, 8.153325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605968, 0.457110, 0.651040,
		0.716095, 0.669862, 0.196195,
		-0.346424, 0.585094, -0.733250,
		22.865047, 22.013842, 7.933350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.259541, 22.336470, 8.509163>,  <23.107544, 21.604277, 8.446625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.259541, 22.336470, 8.509163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.920872, 22.330479, 8.296403>,  <22.717670, 22.326885, 8.168747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.920872, 22.330479, 8.296403>,  <23.259541, 22.336470, 8.509163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.920872, 22.330479, 8.296403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440557, 0.580321, 0.684935,
		0.298416, 0.814250, -0.497941,
		-0.846674, -0.014976, -0.531901,
		22.666870, 22.325987, 8.136832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.980808, 23.064743, 8.539228>,  <23.259541, 22.336470, 8.509163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.980808, 23.064743, 8.539228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.680866, 22.808796, 8.471960>,  <22.500900, 22.655228, 8.431600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.680866, 22.808796, 8.471960>,  <22.980808, 23.064743, 8.539228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.680866, 22.808796, 8.471960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566264, 0.489274, 0.663292,
		-0.342139, 0.592603, -0.729221,
		-0.749857, -0.639869, -0.168170,
		22.455910, 22.616835, 8.421509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.374519, 23.476168, 8.538928>,  <22.980808, 23.064743, 8.539228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.374519, 23.476168, 8.538928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.261280, 23.095276, 8.584728>,  <22.193336, 22.866741, 8.612208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.261280, 23.095276, 8.584728>,  <22.374519, 23.476168, 8.538928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.261280, 23.095276, 8.584728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711699, 0.288600, 0.640465,
		-0.642915, 0.099826, -0.759404,
		-0.283098, -0.952231, 0.114499,
		22.176350, 22.809607, 8.619078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.646643, 23.473204, 8.533930>,  <22.374519, 23.476168, 8.538928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.646643, 23.473204, 8.533930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.781269, 23.162453, 8.746792>,  <21.862045, 22.976002, 8.874509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.781269, 23.162453, 8.746792>,  <21.646643, 23.473204, 8.533930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.781269, 23.162453, 8.746792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601658, 0.257318, 0.756172,
		-0.724384, -0.574676, -0.380809,
		0.336565, -0.776875, 0.532155,
		21.882238, 22.929390, 8.906438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.059542, 23.315042, 8.862425>,  <21.646643, 23.473204, 8.533930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.059542, 23.315042, 8.862425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.348625, 23.122402, 9.060719>,  <21.522076, 23.006819, 9.179696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.348625, 23.122402, 9.060719>,  <21.059542, 23.315042, 8.862425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.348625, 23.122402, 9.060719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540945, 0.052305, 0.839430,
		-0.430198, -0.874829, -0.222717,
		0.722709, -0.481599, 0.495736,
		21.565437, 22.977922, 9.209440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.682653, 22.828653, 9.279794>,  <21.059542, 23.315042, 8.862425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.682653, 22.828653, 9.279794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.033215, 22.878105, 9.465970>,  <21.243551, 22.907776, 9.577676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.033215, 22.878105, 9.465970>,  <20.682653, 22.828653, 9.279794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.033215, 22.878105, 9.465970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466990, -0.017928, 0.884081,
		0.117642, -0.992167, 0.042021,
		0.876402, 0.123628, 0.465441,
		21.296135, 22.915194, 9.605602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.542269, 22.553003, 9.938620>,  <20.682653, 22.828653, 9.279794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.542269, 22.553003, 9.938620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.880028, 22.756027, 10.007183>,  <21.082684, 22.877842, 10.048321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.880028, 22.756027, 10.007183>,  <20.542269, 22.553003, 9.938620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.880028, 22.756027, 10.007183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337338, 0.255197, 0.906133,
		0.416173, -0.822957, 0.386706,
		0.844395, 0.507559, 0.171409,
		21.133347, 22.908295, 10.058606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.812321, 22.369326, 10.587735>,  <20.542269, 22.553003, 9.938620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.812321, 22.369326, 10.587735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.013351, 22.710056, 10.528664>,  <21.133970, 22.914495, 10.493221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.013351, 22.710056, 10.528664>,  <20.812321, 22.369326, 10.587735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.013351, 22.710056, 10.528664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232627, 0.297764, 0.925862,
		0.832647, -0.430963, 0.347807,
		0.502577, 0.851826, -0.147678,
		21.164125, 22.965605, 10.484361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.350590, 22.496056, 11.099606>,  <20.812321, 22.369326, 10.587735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.350590, 22.496056, 11.099606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.198410, 22.839905, 10.963193>,  <21.107101, 23.046215, 10.881346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.198410, 22.839905, 10.963193>,  <21.350590, 22.496056, 11.099606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.198410, 22.839905, 10.963193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177019, 0.294252, 0.939191,
		0.907701, 0.417685, 0.040221,
		-0.380451, 0.859625, -0.341031,
		21.084274, 23.097792, 10.860884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.636757, 23.058727, 11.617634>,  <21.350590, 22.496056, 11.099606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.636757, 23.058727, 11.617634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.323944, 23.200760, 11.412758>,  <21.136255, 23.285980, 11.289832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.323944, 23.200760, 11.412758>,  <21.636757, 23.058727, 11.617634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323944, 23.200760, 11.412758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416445, 0.313703, 0.853325,
		0.463677, 0.880628, -0.097454,
		-0.782034, 0.355083, -0.512190,
		21.089334, 23.307285, 11.259101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.479576, 23.734259, 11.827269>,  <21.636757, 23.058727, 11.617634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.479576, 23.734259, 11.827269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.131893, 23.624710, 11.662601>,  <20.923283, 23.558981, 11.563800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.131893, 23.624710, 11.662601>,  <21.479576, 23.734259, 11.827269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.131893, 23.624710, 11.662601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468790, 0.191750, 0.862246,
		-0.157205, 0.942458, -0.295058,
		-0.869208, -0.273869, -0.411671,
		20.871130, 23.542549, 11.539099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.951933, 24.325289, 11.855934>,  <21.479576, 23.734259, 11.827269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.951933, 24.325289, 11.855934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.746410, 23.982685, 11.836347>,  <20.623096, 23.777122, 11.824594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.746410, 23.982685, 11.836347>,  <20.951933, 24.325289, 11.855934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.746410, 23.982685, 11.836347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596277, 0.315492, 0.738186,
		-0.616813, 0.408482, -0.672818,
		-0.513804, -0.856509, -0.048969,
		20.592270, 23.725733, 11.821656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.305567, 24.453871, 12.042333>,  <20.951933, 24.325289, 11.855934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.305567, 24.453871, 12.042333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.317993, 24.055702, 12.078488>,  <20.325449, 23.816801, 12.100182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.317993, 24.055702, 12.078488>,  <20.305567, 24.453871, 12.042333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.317993, 24.055702, 12.078488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727069, 0.039551, 0.685425,
		-0.685862, -0.087013, -0.722511,
		0.031065, -0.995422, 0.090390,
		20.327312, 23.757076, 12.105605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.635263, 24.274952, 11.998375>,  <20.305567, 24.453871, 12.042333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.635263, 24.274952, 11.998375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.805584, 23.946438, 12.150261>,  <19.907776, 23.749329, 12.241393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.805584, 23.946438, 12.150261>,  <19.635263, 24.274952, 11.998375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.805584, 23.946438, 12.150261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669720, -0.003882, 0.742603,
		-0.608415, -0.570504, -0.551685,
		0.425800, -0.821286, 0.379716,
		19.933325, 23.700052, 12.264175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.087122, 23.847418, 12.143094>,  <19.635263, 24.274952, 11.998375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.087122, 23.847418, 12.143094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.395172, 23.726006, 12.367513>,  <19.580002, 23.653158, 12.502164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.395172, 23.726006, 12.367513>,  <19.087122, 23.847418, 12.143094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.395172, 23.726006, 12.367513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615400, -0.122038, 0.778710,
		-0.167897, -0.944972, -0.280780,
		0.770125, -0.303536, 0.561047,
		19.626209, 23.634947, 12.535827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842113, 23.199514, 12.477878>,  <19.087122, 23.847418, 12.143094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842113, 23.199514, 12.477878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.153267, 23.315746, 12.700754>,  <19.339958, 23.385487, 12.834480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.153267, 23.315746, 12.700754>,  <18.842113, 23.199514, 12.477878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.153267, 23.315746, 12.700754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521247, -0.196894, 0.830382,
		0.351002, -0.936373, -0.001695,
		0.777882, 0.290582, 0.557192,
		19.386631, 23.402922, 12.867911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.883190, 22.717417, 12.939080>,  <18.842113, 23.199514, 12.477878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.883190, 22.717417, 12.939080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.103352, 23.012344, 13.095755>,  <19.235449, 23.189301, 13.189759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.103352, 23.012344, 13.095755>,  <18.883190, 22.717417, 12.939080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.103352, 23.012344, 13.095755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347146, -0.224559, 0.910529,
		0.759306, -0.637130, 0.132359,
		0.550403, 0.737318, 0.391687,
		19.268473, 23.233540, 13.213261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.312895, 22.475115, 13.485906>,  <18.883190, 22.717417, 12.939080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.312895, 22.475115, 13.485906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.286160, 22.868603, 13.552631>,  <19.270119, 23.104696, 13.592667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.286160, 22.868603, 13.552631>,  <19.312895, 22.475115, 13.485906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.286160, 22.868603, 13.552631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303099, -0.179305, 0.935939,
		0.950612, 0.011994, 0.310149,
		-0.066837, 0.983721, 0.166814,
		19.266108, 23.163719, 13.602675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.455841, 22.541571, 14.151098>,  <19.312895, 22.475115, 13.485906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.455841, 22.541571, 14.151098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.287739, 22.894749, 14.067394>,  <19.186876, 23.106655, 14.017172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.287739, 22.894749, 14.067394>,  <19.455841, 22.541571, 14.151098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.287739, 22.894749, 14.067394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450027, -0.002555, 0.893011,
		0.787947, 0.469466, 0.398423,
		-0.420257, 0.882947, -0.209259,
		19.161661, 23.159634, 14.004617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.474018, 23.005173, 14.735056>,  <19.455841, 22.541571, 14.151098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.474018, 23.005173, 14.735056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.156281, 23.153164, 14.542334>,  <18.965637, 23.241959, 14.426701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.156281, 23.153164, 14.542334>,  <19.474018, 23.005173, 14.735056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.156281, 23.153164, 14.542334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505297, 0.037820, 0.862117,
		0.337185, 0.928271, 0.156906,
		-0.794343, 0.369977, -0.481805,
		18.917978, 23.264156, 14.397792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.201635, 23.450880, 15.266114>,  <19.474018, 23.005173, 14.735056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.201635, 23.450880, 15.266114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.906017, 23.377258, 15.006905>,  <18.728647, 23.333084, 14.851378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.906017, 23.377258, 15.006905>,  <19.201635, 23.450880, 15.266114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.906017, 23.377258, 15.006905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663373, 0.031408, 0.747629,
		-0.117252, 0.982413, -0.145310,
		-0.739045, -0.184056, -0.648025,
		18.684303, 23.322041, 14.812497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.754906, 23.917191, 15.443095>,  <19.201635, 23.450880, 15.266114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.754906, 23.917191, 15.443095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.514175, 23.666725, 15.244812>,  <18.369738, 23.516445, 15.125842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.514175, 23.666725, 15.244812>,  <18.754906, 23.917191, 15.443095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.514175, 23.666725, 15.244812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716120, 0.148349, 0.682030,
		-0.353525, 0.765448, -0.537688,
		-0.601824, -0.626164, -0.495708,
		18.333628, 23.478876, 15.096100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.043062, 24.162910, 15.535342>,  <18.754906, 23.917191, 15.443095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.043062, 24.162910, 15.535342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.006294, 23.781914, 15.419195>,  <17.984234, 23.553316, 15.349507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.006294, 23.781914, 15.419195>,  <18.043062, 24.162910, 15.535342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.006294, 23.781914, 15.419195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734120, -0.132194, 0.666028,
		-0.672770, 0.274385, -0.687091,
		-0.091919, -0.952490, -0.290367,
		17.978718, 23.496166, 15.332085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.287071, 24.200781, 15.393517>,  <18.043062, 24.162910, 15.535342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.287071, 24.200781, 15.393517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.416256, 23.823936, 15.429564>,  <17.493767, 23.597830, 15.451192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.416256, 23.823936, 15.429564>,  <17.287071, 24.200781, 15.393517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.416256, 23.823936, 15.429564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796491, -0.219135, 0.563544,
		-0.511174, -0.253780, -0.821156,
		0.322960, -0.942112, 0.090117,
		17.513144, 23.541304, 15.456599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.740910, 23.739498, 15.222914>,  <17.287071, 24.200781, 15.393517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.740910, 23.739498, 15.222914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.004398, 23.570526, 15.471956>,  <17.162493, 23.469143, 15.621382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.004398, 23.570526, 15.471956>,  <16.740910, 23.739498, 15.222914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.004398, 23.570526, 15.471956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746606, -0.264628, 0.610370,
		-0.093079, -0.866906, -0.489705,
		0.658723, -0.422429, 0.622606,
		17.202015, 23.443798, 15.658738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.333799, 23.476667, 15.627353>,  <16.740910, 23.739498, 15.222914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.333799, 23.476667, 15.627353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.664642, 23.429905, 15.847254>,  <16.863148, 23.401848, 15.979195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.664642, 23.429905, 15.847254>,  <16.333799, 23.476667, 15.627353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.664642, 23.429905, 15.847254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560319, -0.094900, 0.822823,
		-0.044020, -0.988599, -0.143996,
		0.827107, -0.116905, 0.549753,
		16.912775, 23.394833, 16.012180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.302679, 22.837139, 16.043367>,  <16.333799, 23.476667, 15.627353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.302679, 22.837139, 16.043367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.562004, 23.060150, 16.250772>,  <16.717600, 23.193956, 16.375216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.562004, 23.060150, 16.250772>,  <16.302679, 22.837139, 16.043367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.562004, 23.060150, 16.250772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485232, -0.222249, 0.845668,
		0.586721, -0.799857, 0.126443,
		0.648312, 0.557525, 0.518514,
		16.756498, 23.227407, 16.406326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.581369, 22.012655, 16.005173>,  <16.302679, 22.837139, 16.043367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.581369, 22.012655, 16.005173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.347801, 21.700573, 15.915445>,  <16.207661, 21.513323, 15.861609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.347801, 21.700573, 15.915445>,  <16.581369, 22.012655, 16.005173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.347801, 21.700573, 15.915445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276504, 0.068658, -0.958557,
		0.763273, -0.621744, 0.175640,
		-0.583918, -0.780205, -0.224319,
		16.172626, 21.466511, 15.848149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.017313, 21.609318, 15.666169>,  <16.581369, 22.012655, 16.005173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.017313, 21.609318, 15.666169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.651325, 21.496979, 15.550272>,  <16.431732, 21.429575, 15.480734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.651325, 21.496979, 15.550272>,  <17.017313, 21.609318, 15.666169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.651325, 21.496979, 15.550272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319638, -0.066179, -0.945226,
		0.246291, -0.957467, 0.150322,
		-0.914971, -0.280849, -0.289744,
		16.376833, 21.412724, 15.463348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.102810, 20.995377, 15.306371>,  <17.017313, 21.609318, 15.666169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.102810, 20.995377, 15.306371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.749439, 21.140633, 15.187925>,  <16.537416, 21.227787, 15.116858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.749439, 21.140633, 15.187925>,  <17.102810, 20.995377, 15.306371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.749439, 21.140633, 15.187925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235129, -0.203063, -0.950515,
		-0.405302, -0.909337, 0.094006,
		-0.883428, 0.363142, -0.296114,
		16.484411, 21.249575, 15.099092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.653439, 20.452169, 14.920392>,  <17.102810, 20.995377, 15.306371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.653439, 20.452169, 14.920392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.531853, 20.811649, 14.793934>,  <16.458900, 21.027336, 14.718060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.531853, 20.811649, 14.793934>,  <16.653439, 20.452169, 14.920392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.531853, 20.811649, 14.793934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066721, -0.310950, -0.948081,
		-0.950344, -0.309278, 0.034556,
		-0.303966, 0.898698, -0.316145,
		16.440662, 21.081259, 14.699090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223953, 20.303883, 14.362489>,  <16.653439, 20.452169, 14.920392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223953, 20.303883, 14.362489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.280922, 20.698009, 14.324816>,  <16.315104, 20.934484, 14.302212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.280922, 20.698009, 14.324816>,  <16.223953, 20.303883, 14.362489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.280922, 20.698009, 14.324816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227930, -0.125244, -0.965589,
		-0.963205, 0.116054, -0.242420,
		0.142422, 0.985315, -0.094183,
		16.323648, 20.993605, 14.296560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
