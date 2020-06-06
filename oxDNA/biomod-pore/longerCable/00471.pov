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
	<24.006643, 34.497749, 34.927021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.396179, 34.586693, 34.945747>,  <24.629900, 34.640060, 34.956985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.396179, 34.586693, 34.945747>,  <24.006643, 34.497749, 34.927021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.396179, 34.586693, 34.945747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201812, -0.751639, -0.627941,
		-0.104435, 0.620964, -0.776851,
		0.973840, 0.222357, 0.046820,
		24.688332, 34.653400, 34.959793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.301744, 34.799683, 34.339710>,  <24.006643, 34.497749, 34.927021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.301744, 34.799683, 34.339710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.600298, 34.609829, 34.526314>,  <24.779430, 34.495914, 34.638275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.600298, 34.609829, 34.526314>,  <24.301744, 34.799683, 34.339710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.600298, 34.609829, 34.526314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008504, -0.694115, -0.719814,
		0.665462, 0.541224, -0.514039,
		0.746383, -0.474638, 0.466510,
		24.824213, 34.467438, 34.666267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.887615, 34.407520, 33.998325>,  <24.301744, 34.799683, 34.339710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.887615, 34.407520, 33.998325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841455, 34.188046, 34.329536>,  <24.813759, 34.056362, 34.528263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841455, 34.188046, 34.329536>,  <24.887615, 34.407520, 33.998325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841455, 34.188046, 34.329536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012303, -0.832742, -0.553524,
		0.993243, -0.074063, 0.089347,
		-0.115398, -0.548685, 0.828027,
		24.806835, 34.023441, 34.577946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.562700, 33.878548, 34.090801>,  <24.887615, 34.407520, 33.998325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.562700, 33.878548, 34.090801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173862, 33.818890, 34.163235>,  <24.940559, 33.783092, 34.206696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.173862, 33.818890, 34.163235>,  <25.562700, 33.878548, 34.090801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.173862, 33.818890, 34.163235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023313, -0.706645, -0.707184,
		0.233435, -0.691670, 0.683447,
		-0.972093, -0.149149, 0.181080,
		24.882235, 33.774143, 34.217560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070778, 33.294796, 34.311161>,  <25.562700, 33.878548, 34.090801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070778, 33.294796, 34.311161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345919, 33.584248, 34.333843>,  <26.511003, 33.757919, 34.347450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345919, 33.584248, 34.333843>,  <26.070778, 33.294796, 34.311161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345919, 33.584248, 34.333843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229662, -0.291080, 0.928724,
		0.688558, -0.625804, -0.366411,
		0.687854, 0.723631, 0.056702,
		26.552275, 33.801338, 34.350853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559431, 32.934219, 34.764877>,  <26.070778, 33.294796, 34.311161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.559431, 32.934219, 34.764877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927008, 32.847740, 34.632935>,  <26.147552, 32.795853, 34.553768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927008, 32.847740, 34.632935>,  <25.559431, 32.934219, 34.764877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927008, 32.847740, 34.632935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098096, -0.684789, 0.722108,
		-0.382002, -0.695933, -0.608072,
		0.918940, -0.216197, -0.329859,
		26.202690, 32.782883, 34.533978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161631, 33.040241, 35.002117>,  <25.559431, 32.934219, 34.764877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161631, 33.040241, 35.002117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293427, 32.917439, 35.359257>,  <26.372505, 32.843758, 35.573540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293427, 32.917439, 35.359257>,  <26.161631, 33.040241, 35.002117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293427, 32.917439, 35.359257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124313, 0.923320, 0.363355,
		-0.935939, -0.230715, 0.266062,
		0.329491, -0.307003, 0.892852,
		26.392275, 32.825336, 35.627113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722616, 33.124580, 35.529545>,  <26.161631, 33.040241, 35.002117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722616, 33.124580, 35.529545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094099, 33.150963, 35.675503>,  <26.316990, 33.166790, 35.763077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094099, 33.150963, 35.675503>,  <25.722616, 33.124580, 35.529545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094099, 33.150963, 35.675503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218249, 0.892775, 0.394106,
		-0.299780, -0.445649, 0.843522,
		0.928708, 0.065953, 0.364899,
		26.372711, 33.170750, 35.784973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622898, 33.379017, 36.197056>,  <25.722616, 33.124580, 35.529545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622898, 33.379017, 36.197056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013630, 33.443199, 36.140404>,  <26.248068, 33.481709, 36.106411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.013630, 33.443199, 36.140404>,  <25.622898, 33.379017, 36.197056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.013630, 33.443199, 36.140404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079440, 0.886311, 0.456227,
		0.198733, -0.434404, 0.878520,
		0.976829, 0.160457, -0.141630,
		26.306679, 33.491337, 36.097916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902319, 33.610416, 36.815731>,  <25.622898, 33.379017, 36.197056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902319, 33.610416, 36.815731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191858, 33.735661, 36.569801>,  <26.365582, 33.810806, 36.422245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191858, 33.735661, 36.569801>,  <25.902319, 33.610416, 36.815731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191858, 33.735661, 36.569801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077455, 0.848589, 0.523352,
		0.685599, -0.426448, 0.589997,
		0.723847, 0.313112, -0.614822,
		26.409012, 33.829594, 36.385353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451204, 33.838966, 37.267872>,  <25.902319, 33.610416, 36.815731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451204, 33.838966, 37.267872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481825, 34.007843, 36.906567>,  <26.500196, 34.109169, 36.689781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481825, 34.007843, 36.906567>,  <26.451204, 33.838966, 37.267872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.481825, 34.007843, 36.906567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043517, 0.903647, 0.426061,
		0.996116, -0.071922, 0.050802,
		0.076550, 0.422195, -0.903267,
		26.504789, 34.134502, 36.635586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.405460, 34.466774, 37.786686>,  <26.451204, 33.838966, 37.267872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.405460, 34.466774, 37.786686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060072, 34.416634, 37.982117>,  <25.852839, 34.386551, 38.099373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060072, 34.416634, 37.982117>,  <26.405460, 34.466774, 37.786686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060072, 34.416634, 37.982117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047998, -0.984653, -0.167796,
		0.502108, -0.121436, 0.856237,
		-0.863472, -0.125349, 0.488573,
		25.801031, 34.379028, 38.128689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902729, 34.325844, 37.364887>,  <26.405460, 34.466774, 37.786686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902729, 34.325844, 37.364887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552126, 34.133415, 37.371899>,  <25.341764, 34.017960, 37.376106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552126, 34.133415, 37.371899>,  <25.902729, 34.325844, 37.364887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552126, 34.133415, 37.371899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437783, 0.811727, 0.386582,
		-0.200201, 0.331168, -0.922089,
		-0.876508, -0.481068, 0.017529,
		25.289173, 33.989094, 37.377155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.333830, 34.774433, 37.183567>,  <25.902729, 34.325844, 37.364887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.333830, 34.774433, 37.183567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147953, 34.488468, 37.392551>,  <25.036427, 34.316891, 37.517941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147953, 34.488468, 37.392551>,  <25.333830, 34.774433, 37.183567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.147953, 34.488468, 37.392551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404029, 0.696225, 0.593321,
		-0.787921, 0.064623, -0.612376,
		-0.464694, -0.714908, 0.522461,
		25.008545, 34.273994, 37.549290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955873, 34.684883, 36.724316>,  <25.333830, 34.774433, 37.183567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955873, 34.684883, 36.724316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283054, 34.871349, 36.589474>,  <26.479362, 34.983231, 36.508568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283054, 34.871349, 36.589474>,  <25.955873, 34.684883, 36.724316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283054, 34.871349, 36.589474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373616, -0.876042, -0.304896,
		-0.437452, 0.123442, -0.890729,
		0.817953, 0.466168, -0.337106,
		26.528440, 35.011200, 36.488342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.081167, 34.575546, 35.994408>,  <25.955873, 34.684883, 36.724316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.081167, 34.575546, 35.994408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404528, 34.635921, 36.221989>,  <26.598545, 34.672146, 36.358536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404528, 34.635921, 36.221989>,  <26.081167, 34.575546, 35.994408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404528, 34.635921, 36.221989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337919, -0.910428, -0.238605,
		0.481972, 0.385147, -0.786997,
		0.808402, 0.150941, 0.568949,
		26.647049, 34.681202, 36.392673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683039, 34.625282, 35.443172>,  <26.081167, 34.575546, 35.994408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683039, 34.625282, 35.443172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673183, 34.485916, 35.817978>,  <26.667271, 34.402298, 36.042862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673183, 34.485916, 35.817978>,  <26.683039, 34.625282, 35.443172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673183, 34.485916, 35.817978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232063, -0.913691, -0.333641,
		0.972389, 0.209227, 0.103364,
		-0.024636, -0.348415, 0.937017,
		26.665792, 34.381393, 36.099083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270586, 34.214027, 35.530079>,  <26.683039, 34.625282, 35.443172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270586, 34.214027, 35.530079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004131, 34.090687, 35.801720>,  <26.844259, 34.016682, 35.964706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.004131, 34.090687, 35.801720>,  <27.270586, 34.214027, 35.530079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004131, 34.090687, 35.801720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133850, -0.945178, -0.297864,
		0.733721, -0.107520, 0.670889,
		-0.666136, -0.308348, 0.679105,
		26.804291, 33.998184, 36.005451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575237, 33.683125, 35.841076>,  <27.270586, 34.214027, 35.530079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575237, 33.683125, 35.841076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193153, 33.605305, 35.930275>,  <26.963903, 33.558613, 35.983795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193153, 33.605305, 35.930275>,  <27.575237, 33.683125, 35.841076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193153, 33.605305, 35.930275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163041, -0.974830, -0.152066,
		0.246971, -0.108897, 0.962885,
		-0.955208, -0.194546, 0.223000,
		26.906591, 33.546940, 35.997173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499470, 33.083046, 36.375088>,  <27.575237, 33.683125, 35.841076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499470, 33.083046, 36.375088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173145, 33.115040, 36.145981>,  <26.977350, 33.134235, 36.008518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173145, 33.115040, 36.145981>,  <27.499470, 33.083046, 36.375088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173145, 33.115040, 36.145981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165915, -0.916388, -0.364288,
		-0.554010, -0.392219, 0.734328,
		-0.815810, 0.079983, -0.572763,
		26.928402, 33.139034, 35.974152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996908, 32.485126, 36.378658>,  <27.499470, 33.083046, 36.375088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996908, 32.485126, 36.378658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062330, 32.685604, 36.038765>,  <27.101583, 32.805889, 35.834827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062330, 32.685604, 36.038765>,  <26.996908, 32.485126, 36.378658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062330, 32.685604, 36.038765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406523, -0.819047, -0.404846,
		-0.898882, -0.279223, -0.337707,
		0.163555, 0.501194, -0.849738,
		27.111397, 32.835964, 35.783844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.641548, 32.174606, 35.766079>,  <26.996908, 32.485126, 36.378658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.641548, 32.174606, 35.766079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982685, 32.352467, 35.656578>,  <27.187368, 32.459183, 35.590878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982685, 32.352467, 35.656578>,  <26.641548, 32.174606, 35.766079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982685, 32.352467, 35.656578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230197, -0.790731, -0.567233,
		-0.468684, 0.420745, -0.776729,
		0.852844, 0.444654, -0.273749,
		27.238539, 32.485863, 35.574451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659212, 32.439190, 35.045662>,  <26.641548, 32.174606, 35.766079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659212, 32.439190, 35.045662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991875, 32.303246, 35.221317>,  <27.191473, 32.221680, 35.326710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.991875, 32.303246, 35.221317>,  <26.659212, 32.439190, 35.045662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.991875, 32.303246, 35.221317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051970, -0.739716, -0.670910,
		0.552850, 0.580790, -0.597528,
		0.831658, -0.339859, 0.439136,
		27.241373, 32.201286, 35.353058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141422, 32.413372, 34.537064>,  <26.659212, 32.439190, 35.045662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141422, 32.413372, 34.537064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236359, 32.149864, 34.822636>,  <27.293320, 31.991760, 34.993980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236359, 32.149864, 34.822636>,  <27.141422, 32.413372, 34.537064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236359, 32.149864, 34.822636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094917, -0.715686, -0.691943,
		0.966778, 0.231991, -0.107333,
		0.237341, -0.658767, 0.713929,
		27.307560, 31.952234, 35.036816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871239, 32.099922, 34.509232>,  <27.141422, 32.413372, 34.537064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871239, 32.099922, 34.509232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624784, 31.831270, 34.673809>,  <27.476912, 31.670078, 34.772556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624784, 31.831270, 34.673809>,  <27.871239, 32.099922, 34.509232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624784, 31.831270, 34.673809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348700, -0.700991, -0.622109,
		0.706248, -0.239832, 0.666103,
		-0.616134, -0.671634, 0.411444,
		27.439943, 31.629780, 34.797241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917776, 31.539156, 34.095097>,  <27.871239, 32.099922, 34.509232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917776, 31.539156, 34.095097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316154, 31.558868, 34.125195>,  <28.555182, 31.570696, 34.143253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316154, 31.558868, 34.125195>,  <27.917776, 31.539156, 34.095097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316154, 31.558868, 34.125195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002847, -0.853392, 0.521262,
		0.089898, -0.518935, -0.850073,
		0.995947, 0.049280, 0.075241,
		28.614939, 31.573652, 34.147766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231968, 30.846413, 33.906052>,  <27.917776, 31.539156, 34.095097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231968, 30.846413, 33.906052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507427, 31.030050, 34.130547>,  <28.672703, 31.140234, 34.265244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507427, 31.030050, 34.130547>,  <28.231968, 30.846413, 33.906052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507427, 31.030050, 34.130547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190381, -0.861352, 0.470986,
		0.699655, -0.217495, -0.680573,
		0.688649, 0.459096, 0.561242,
		28.714022, 31.167780, 34.298920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861664, 30.536127, 33.888638>,  <28.231968, 30.846413, 33.906052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861664, 30.536127, 33.888638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822180, 30.720779, 34.241264>,  <28.798489, 30.831570, 34.452839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822180, 30.720779, 34.241264>,  <28.861664, 30.536127, 33.888638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822180, 30.720779, 34.241264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102026, -0.885917, 0.452484,
		0.989872, -0.045278, 0.134547,
		-0.098710, 0.461629, 0.881564,
		28.792566, 30.859268, 34.505733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334246, 30.312407, 34.362835>,  <28.861664, 30.536127, 33.888638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334246, 30.312407, 34.362835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988941, 30.427464, 34.528744>,  <28.781757, 30.496498, 34.628288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988941, 30.427464, 34.528744>,  <29.334246, 30.312407, 34.362835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988941, 30.427464, 34.528744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146499, -0.929145, 0.339451,
		0.483027, 0.232271, 0.844236,
		-0.863263, 0.287643, 0.414775,
		28.729961, 30.513756, 34.653175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318134, 30.023798, 35.092300>,  <29.334246, 30.312407, 34.362835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318134, 30.023798, 35.092300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962429, 30.098330, 34.925209>,  <28.749006, 30.143047, 34.824955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962429, 30.098330, 34.925209>,  <29.318134, 30.023798, 35.092300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962429, 30.098330, 34.925209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177798, -0.982258, -0.059638,
		-0.421427, 0.021237, 0.906613,
		-0.889262, 0.186328, -0.417727,
		28.695650, 30.154228, 34.799892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681093, 29.769957, 35.443493>,  <29.318134, 30.023798, 35.092300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681093, 29.769957, 35.443493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635971, 29.761147, 35.046143>,  <28.608898, 29.755861, 34.807732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635971, 29.761147, 35.046143>,  <28.681093, 29.769957, 35.443493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635971, 29.761147, 35.046143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151493, -0.988447, 0.004712,
		-0.982000, -0.149957, 0.114841,
		-0.112808, -0.022025, -0.993373,
		28.602129, 29.754539, 34.748131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124191, 29.299128, 35.182232>,  <28.681093, 29.769957, 35.443493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124191, 29.299128, 35.182232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398943, 29.353336, 34.896622>,  <28.563795, 29.385860, 34.725258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398943, 29.353336, 34.896622>,  <28.124191, 29.299128, 35.182232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398943, 29.353336, 34.896622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092003, -0.990771, -0.099541,
		-0.720923, 0.002681, -0.693010,
		0.686881, 0.135521, -0.714023,
		28.605007, 29.393993, 34.682415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921217, 28.822464, 34.732632>,  <28.124191, 29.299128, 35.182232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921217, 28.822464, 34.732632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300030, 28.911739, 34.640274>,  <28.527317, 28.965305, 34.584858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300030, 28.911739, 34.640274>,  <27.921217, 28.822464, 34.732632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300030, 28.911739, 34.640274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232839, -0.972399, 0.015058,
		-0.221163, -0.068022, -0.972862,
		0.947034, 0.223190, -0.230896,
		28.584141, 28.978697, 34.571007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009073, 28.352913, 34.247643>,  <27.921217, 28.822464, 34.732632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009073, 28.352913, 34.247643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381897, 28.476782, 34.322868>,  <28.605591, 28.551104, 34.368004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381897, 28.476782, 34.322868>,  <28.009073, 28.352913, 34.247643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381897, 28.476782, 34.322868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342378, -0.922615, -0.177651,
		0.118494, 0.229969, -0.965957,
		0.932060, 0.309672, 0.188061,
		28.661514, 28.569683, 34.379288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563614, 28.507278, 33.820198>,  <28.009073, 28.352913, 34.247643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563614, 28.507278, 33.820198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936399, 28.605289, 33.927082>,  <29.160070, 28.664097, 33.991211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936399, 28.605289, 33.927082>,  <28.563614, 28.507278, 33.820198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936399, 28.605289, 33.927082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236606, -0.969509, 0.063800,
		0.274697, 0.003764, -0.961523,
		0.931965, 0.245028, 0.267212,
		29.215988, 28.678799, 34.007244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919313, 28.159637, 33.333729>,  <28.563614, 28.507278, 33.820198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919313, 28.159637, 33.333729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121418, 28.256260, 33.665115>,  <29.242680, 28.314234, 33.863949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121418, 28.256260, 33.665115>,  <28.919313, 28.159637, 33.333729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121418, 28.256260, 33.665115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197786, -0.966885, 0.161287,
		0.839996, 0.082368, -0.536304,
		0.505260, 0.241554, 0.828471,
		29.272997, 28.328726, 33.913658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444466, 27.718046, 33.333817>,  <28.919313, 28.159637, 33.333729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444466, 27.718046, 33.333817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398809, 27.773865, 33.727264>,  <29.371416, 27.807356, 33.963333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398809, 27.773865, 33.727264>,  <29.444466, 27.718046, 33.333817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398809, 27.773865, 33.727264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111735, -0.982000, 0.152285,
		0.987161, 0.127286, 0.096493,
		-0.114140, 0.139549, 0.983615,
		29.364567, 27.815729, 34.022350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108845, 27.413439, 33.723991>,  <29.444466, 27.718046, 33.333817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108845, 27.413439, 33.723991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787615, 27.415634, 33.962334>,  <29.594877, 27.416952, 34.105339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.787615, 27.415634, 33.962334>,  <30.108845, 27.413439, 33.723991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.787615, 27.415634, 33.962334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113724, -0.980166, 0.162301,
		0.584928, 0.198102, 0.786521,
		-0.803073, 0.005488, 0.595855,
		29.546694, 27.417280, 34.141090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257267, 27.131931, 34.460449>,  <30.108845, 27.413439, 33.723991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257267, 27.131931, 34.460449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888838, 27.099062, 34.308201>,  <29.667780, 27.079340, 34.216850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.888838, 27.099062, 34.308201>,  <30.257267, 27.131931, 34.460449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888838, 27.099062, 34.308201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060090, -0.995766, 0.069570,
		-0.384727, 0.041207, 0.922110,
		-0.921072, -0.082175, -0.380622,
		29.612516, 27.074409, 34.194016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457180, 26.405396, 34.260883>,  <30.257267, 27.131931, 34.460449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457180, 26.405396, 34.260883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192980, 26.156261, 34.428604>,  <30.034460, 26.006781, 34.529236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192980, 26.156261, 34.428604>,  <30.457180, 26.405396, 34.260883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192980, 26.156261, 34.428604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714660, 0.692750, -0.096744,
		-0.230214, -0.363557, -0.902678,
		-0.660502, -0.622836, 0.419300,
		29.994829, 25.969410, 34.554394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815344, 26.305506, 33.851482>,  <30.457180, 26.405396, 34.260883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815344, 26.305506, 33.851482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700663, 26.265892, 34.232635>,  <29.631853, 26.242125, 34.461327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.700663, 26.265892, 34.232635>,  <29.815344, 26.305506, 33.851482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700663, 26.265892, 34.232635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566414, 0.819701, -0.085231,
		-0.772641, -0.564165, -0.291107,
		-0.286705, -0.099034, 0.952886,
		29.614651, 26.236181, 34.518501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969584, 26.339460, 34.001610>,  <29.815344, 26.305506, 33.851482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969584, 26.339460, 34.001610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204014, 26.489904, 34.288677>,  <29.344673, 26.580172, 34.460918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204014, 26.489904, 34.288677>,  <28.969584, 26.339460, 34.001610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204014, 26.489904, 34.288677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404385, 0.903314, -0.143165,
		-0.702130, -0.206311, 0.681506,
		0.586077, 0.376111, 0.717672,
		29.379837, 26.602737, 34.503979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532749, 26.775713, 34.389347>,  <28.969584, 26.339460, 34.001610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532749, 26.775713, 34.389347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910191, 26.898071, 34.440010>,  <29.136656, 26.971487, 34.470409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.910191, 26.898071, 34.440010>,  <28.532749, 26.775713, 34.389347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910191, 26.898071, 34.440010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301511, 0.951992, -0.052942,
		-0.136774, 0.011767, 0.990533,
		0.943602, 0.305897, 0.126659,
		29.193272, 26.989840, 34.478008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517408, 27.334999, 34.957882>,  <28.532749, 26.775713, 34.389347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517408, 27.334999, 34.957882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831102, 27.377872, 34.713428>,  <29.019320, 27.403597, 34.566757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.831102, 27.377872, 34.713428>,  <28.517408, 27.334999, 34.957882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831102, 27.377872, 34.713428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130270, 0.991456, 0.006713,
		0.606632, 0.074348, 0.791499,
		0.784237, 0.107181, -0.611134,
		29.066374, 27.410027, 34.530087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931248, 27.876001, 35.242767>,  <28.517408, 27.334999, 34.957882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931248, 27.876001, 35.242767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059740, 27.871685, 34.863991>,  <29.136835, 27.869095, 34.636726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059740, 27.871685, 34.863991>,  <28.931248, 27.876001, 35.242767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059740, 27.871685, 34.863991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061320, 0.997600, -0.032170,
		0.945012, 0.068400, 0.319800,
		0.321233, -0.010791, -0.946939,
		29.156111, 27.868448, 34.579910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511295, 28.278828, 35.190002>,  <28.931248, 27.876001, 35.242767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511295, 28.278828, 35.190002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336481, 28.292969, 34.830502>,  <29.231592, 28.301455, 34.614803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336481, 28.292969, 34.830502>,  <29.511295, 28.278828, 35.190002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336481, 28.292969, 34.830502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025072, 0.998360, 0.051465,
		0.899094, 0.045026, -0.435434,
		-0.437037, 0.035355, -0.898748,
		29.205370, 28.303576, 34.560879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895960, 28.808123, 34.731297>,  <29.511295, 28.278828, 35.190002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895960, 28.808123, 34.731297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524710, 28.745363, 34.596260>,  <29.301960, 28.707708, 34.515240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524710, 28.745363, 34.596260>,  <29.895960, 28.808123, 34.731297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524710, 28.745363, 34.596260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156904, 0.987232, -0.027451,
		0.337587, 0.027492, -0.940893,
		-0.928125, -0.156897, -0.337590,
		29.246273, 28.698294, 34.494984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792780, 29.181532, 34.161236>,  <29.895960, 28.808123, 34.731297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792780, 29.181532, 34.161236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419706, 29.122324, 34.292805>,  <29.195862, 29.086800, 34.371746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.419706, 29.122324, 34.292805>,  <29.792780, 29.181532, 34.161236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419706, 29.122324, 34.292805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163168, 0.986420, -0.018768,
		-0.321682, -0.071175, -0.944169,
		-0.932683, -0.148021, 0.328927,
		29.139902, 29.077917, 34.391483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442209, 29.574823, 33.715347>,  <29.792780, 29.181532, 34.161236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442209, 29.574823, 33.715347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203712, 29.529999, 34.033325>,  <29.060616, 29.503105, 34.224113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203712, 29.529999, 34.033325>,  <29.442209, 29.574823, 33.715347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203712, 29.529999, 34.033325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214233, 0.976511, -0.023028,
		-0.773694, -0.184034, -0.606242,
		-0.596240, -0.112060, 0.794947,
		29.024841, 29.496380, 34.271809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.834366, 29.932169, 33.484371>,  <29.442209, 29.574823, 33.715347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.834366, 29.932169, 33.484371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889578, 29.926950, 33.880508>,  <28.922707, 29.923819, 34.118191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.889578, 29.926950, 33.880508>,  <28.834366, 29.932169, 33.484371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.889578, 29.926950, 33.880508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294105, 0.954271, 0.053562,
		-0.945753, -0.298658, 0.127884,
		0.138033, -0.013046, 0.990342,
		28.930988, 29.923037, 34.177612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447676, 29.432903, 33.287590>,  <28.834366, 29.932169, 33.484371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447676, 29.432903, 33.287590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164036, 29.441956, 33.005692>,  <27.993851, 29.447388, 32.836552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.164036, 29.441956, 33.005692>,  <28.447676, 29.432903, 33.287590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164036, 29.441956, 33.005692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588977, 0.530496, 0.609655,
		0.387660, 0.847385, -0.362847,
		-0.709102, 0.022630, -0.704743,
		27.951305, 29.448744, 32.794270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.709009, 29.872110, 32.752090>,  <28.447676, 29.432903, 33.287590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.709009, 29.872110, 32.752090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524345, 29.849979, 32.397957>,  <28.413548, 29.836700, 32.185478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524345, 29.849979, 32.397957>,  <28.709009, 29.872110, 32.752090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524345, 29.849979, 32.397957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688596, -0.651525, -0.318356,
		-0.559202, -0.756607, 0.338880,
		-0.461659, -0.055326, -0.885330,
		28.385847, 29.833382, 32.132359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736052, 29.169512, 32.536381>,  <28.709009, 29.872110, 32.752090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736052, 29.169512, 32.536381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693029, 29.360668, 32.187656>,  <28.667215, 29.475361, 31.978422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693029, 29.360668, 32.187656>,  <28.736052, 29.169512, 32.536381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693029, 29.360668, 32.187656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737875, -0.549325, -0.392150,
		-0.666312, -0.685466, -0.293540,
		-0.107557, 0.477890, -0.871810,
		28.660763, 29.504036, 31.926113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714849, 28.645676, 32.024384>,  <28.736052, 29.169512, 32.536381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714849, 28.645676, 32.024384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824173, 29.001614, 31.878244>,  <28.889767, 29.215178, 31.790562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824173, 29.001614, 31.878244>,  <28.714849, 28.645676, 32.024384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824173, 29.001614, 31.878244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760363, -0.432487, -0.484564,
		-0.589194, -0.145358, -0.794809,
		0.273310, 0.889846, -0.365344,
		28.906166, 29.268568, 31.768641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680653, 28.653006, 31.227098>,  <28.714849, 28.645676, 32.024384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680653, 28.653006, 31.227098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948874, 28.926195, 31.342962>,  <29.109806, 29.090109, 31.412481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948874, 28.926195, 31.342962>,  <28.680653, 28.653006, 31.227098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948874, 28.926195, 31.342962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618564, -0.299172, -0.726550,
		-0.409557, 0.666365, -0.623074,
		0.670554, 0.682975, 0.289661,
		29.150040, 29.131088, 31.429861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955734, 29.062441, 30.607916>,  <28.680653, 28.653006, 31.227098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955734, 29.062441, 30.607916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205835, 29.028913, 30.918280>,  <29.355896, 29.008797, 31.104498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.205835, 29.028913, 30.918280>,  <28.955734, 29.062441, 30.607916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.205835, 29.028913, 30.918280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697416, -0.386179, -0.603719,
		0.350241, 0.918608, -0.183004,
		0.625253, -0.083817, 0.775908,
		29.393412, 29.003769, 31.151052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565042, 29.440113, 30.492094>,  <28.955734, 29.062441, 30.607916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565042, 29.440113, 30.492094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622528, 29.114563, 30.717291>,  <29.657019, 28.919233, 30.852409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622528, 29.114563, 30.717291>,  <29.565042, 29.440113, 30.492094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622528, 29.114563, 30.717291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563186, -0.400526, -0.722773,
		0.813737, 0.420939, 0.400802,
		0.143712, -0.813873, 0.562990,
		29.665642, 28.870401, 30.886189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.324842, 29.201185, 30.721117>,  <29.565042, 29.440113, 30.492094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.324842, 29.201185, 30.721117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.056705, 28.909668, 30.665257>,  <29.895823, 28.734758, 30.631741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.056705, 28.909668, 30.665257>,  <30.324842, 29.201185, 30.721117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056705, 28.909668, 30.665257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501393, -0.306115, -0.809257,
		0.547031, -0.612500, 0.570614,
		-0.670344, -0.728791, -0.139649,
		29.855602, 28.691031, 30.623362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719313, 28.563076, 30.615990>,  <30.324842, 29.201185, 30.721117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719313, 28.563076, 30.615990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362391, 28.575640, 30.435852>,  <30.148237, 28.583178, 30.327770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362391, 28.575640, 30.435852>,  <30.719313, 28.563076, 30.615990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362391, 28.575640, 30.435852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438111, -0.180331, -0.880647,
		-0.108874, -0.983105, 0.147148,
		-0.892303, 0.031412, -0.450342,
		30.094700, 28.585064, 30.300749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445459, 27.909678, 30.180853>,  <30.719313, 28.563076, 30.615990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445459, 27.909678, 30.180853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373201, 28.275867, 30.037033>,  <30.329847, 28.495581, 29.950741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373201, 28.275867, 30.037033>,  <30.445459, 27.909678, 30.180853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373201, 28.275867, 30.037033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486666, -0.234478, -0.841532,
		-0.854707, -0.326997, -0.403173,
		-0.180643, 0.915474, -0.359549,
		30.319008, 28.550510, 29.929169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062363, 27.778004, 29.534569>,  <30.445459, 27.909678, 30.180853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062363, 27.778004, 29.534569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241905, 28.134508, 29.560427>,  <30.349630, 28.348412, 29.575941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241905, 28.134508, 29.560427>,  <30.062363, 27.778004, 29.534569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241905, 28.134508, 29.560427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496955, -0.188846, -0.846979,
		-0.742672, 0.412298, -0.527682,
		0.448858, 0.891262, 0.064643,
		30.376562, 28.401886, 29.579819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995926, 28.154083, 28.854624>,  <30.062363, 27.778004, 29.534569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995926, 28.154083, 28.854624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347147, 28.229052, 29.030758>,  <30.557880, 28.274033, 29.136438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347147, 28.229052, 29.030758>,  <29.995926, 28.154083, 28.854624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347147, 28.229052, 29.030758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477799, -0.291381, -0.828737,
		-0.027016, 0.938068, -0.345398,
		0.878053, 0.187420, 0.440336,
		30.610563, 28.285278, 29.162859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455671, 28.627312, 28.430267>,  <29.995926, 28.154083, 28.854624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455671, 28.627312, 28.430267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608107, 28.331753, 28.652548>,  <30.699568, 28.154417, 28.785915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.608107, 28.331753, 28.652548>,  <30.455671, 28.627312, 28.430267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608107, 28.331753, 28.652548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365144, -0.431905, -0.824698,
		0.849378, 0.517193, 0.105211,
		0.381087, -0.738897, 0.555701,
		30.722433, 28.110083, 28.819258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195032, 28.521765, 28.252813>,  <30.455671, 28.627312, 28.430267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195032, 28.521765, 28.252813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005503, 28.195810, 28.386351>,  <30.891785, 28.000238, 28.466473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005503, 28.195810, 28.386351>,  <31.195032, 28.521765, 28.252813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005503, 28.195810, 28.386351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283162, -0.499952, -0.818454,
		0.833853, -0.293272, 0.467634,
		-0.473824, -0.814887, 0.333843,
		30.863356, 27.951344, 28.486504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627470, 27.936180, 28.401722>,  <31.195032, 28.521765, 28.252813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627470, 27.936180, 28.401722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256584, 27.836254, 28.290106>,  <31.034052, 27.776299, 28.223137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256584, 27.836254, 28.290106>,  <31.627470, 27.936180, 28.401722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256584, 27.836254, 28.290106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374451, -0.603147, -0.704273,
		0.007637, -0.757499, 0.652791,
		-0.927216, -0.249816, -0.279040,
		30.978420, 27.761309, 28.206394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593733, 27.295698, 28.285973>,  <31.627470, 27.936180, 28.401722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593733, 27.295698, 28.285973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263205, 27.395237, 28.083878>,  <31.064888, 27.454960, 27.962620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263205, 27.395237, 28.083878>,  <31.593733, 27.295698, 28.285973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263205, 27.395237, 28.083878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332888, -0.507806, -0.794556,
		-0.454286, -0.824747, 0.336774,
		-0.826323, 0.248847, -0.505237,
		31.015308, 27.469893, 27.932306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506981, 26.572050, 27.968271>,  <31.593733, 27.295698, 28.285973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506981, 26.572050, 27.968271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393747, 26.918451, 27.803396>,  <31.325808, 27.126293, 27.704472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393747, 26.918451, 27.803396>,  <31.506981, 26.572050, 27.968271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393747, 26.918451, 27.803396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216131, -0.361111, -0.907131,
		-0.934425, -0.345882, -0.084945,
		-0.283086, 0.866005, -0.412187,
		31.308821, 27.178253, 27.679741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073299, 26.381262, 27.364140>,  <31.506981, 26.572050, 27.968271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073299, 26.381262, 27.364140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260489, 26.732494, 27.324196>,  <31.372801, 26.943233, 27.300230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260489, 26.732494, 27.324196>,  <31.073299, 26.381262, 27.364140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260489, 26.732494, 27.324196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215516, -0.222979, -0.950701,
		-0.857062, 0.423379, -0.293589,
		0.467971, 0.878083, -0.099861,
		31.400881, 26.995920, 27.294237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004194, 26.473200, 26.631523>,  <31.073299, 26.381262, 27.364140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004194, 26.473200, 26.631523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265415, 26.760399, 26.727859>,  <31.422148, 26.932718, 26.785662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265415, 26.760399, 26.727859>,  <31.004194, 26.473200, 26.631523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265415, 26.760399, 26.727859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416483, -0.074887, -0.906054,
		-0.632508, 0.692006, -0.347939,
		0.653051, 0.717997, 0.240842,
		31.461330, 26.975798, 26.800112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185450, 26.837755, 25.977261>,  <31.004194, 26.473200, 26.631523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185450, 26.837755, 25.977261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483820, 26.943426, 26.221819>,  <31.662842, 27.006828, 26.368553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483820, 26.943426, 26.221819>,  <31.185450, 26.837755, 25.977261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483820, 26.943426, 26.221819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610300, 0.096464, -0.786275,
		-0.266692, 0.959639, -0.089271,
		0.745928, 0.264175, 0.611394,
		31.707598, 27.022678, 26.405237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358686, 27.595924, 25.714525>,  <31.185450, 26.837755, 25.977261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358686, 27.595924, 25.714525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667387, 27.415751, 25.894085>,  <31.852608, 27.307646, 26.001822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667387, 27.415751, 25.894085>,  <31.358686, 27.595924, 25.714525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667387, 27.415751, 25.894085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557295, 0.139040, -0.818590,
		0.306305, 0.881917, 0.358328,
		0.771751, -0.450433, 0.448900,
		31.898912, 27.280621, 26.028755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826572, 28.093006, 25.654922>,  <31.358686, 27.595924, 25.714525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826572, 28.093006, 25.654922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022411, 27.751945, 25.727894>,  <32.139915, 27.547310, 25.771677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022411, 27.751945, 25.727894>,  <31.826572, 28.093006, 25.654922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022411, 27.751945, 25.727894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558107, 0.145694, -0.816878,
		0.669935, 0.501754, 0.547202,
		0.489596, -0.852652, 0.182427,
		32.169289, 27.496149, 25.782621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480057, 28.180742, 25.606424>,  <31.826572, 28.093006, 25.654922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480057, 28.180742, 25.606424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474133, 27.788595, 25.527771>,  <32.470577, 27.553307, 25.480579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474133, 27.788595, 25.527771>,  <32.480057, 28.180742, 25.606424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474133, 27.788595, 25.527771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588408, 0.150454, -0.794443,
		0.808428, -0.127466, 0.574627,
		-0.014810, -0.980365, -0.196633,
		32.469688, 27.494486, 25.468781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237400, 27.932991, 25.503809>,  <32.480057, 28.180742, 25.606424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237400, 27.932991, 25.503809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981625, 27.680511, 25.328215>,  <32.828159, 27.529024, 25.222858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981625, 27.680511, 25.328215>,  <33.237400, 27.932991, 25.503809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981625, 27.680511, 25.328215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581395, -0.023359, -0.813286,
		0.503091, -0.775269, 0.381913,
		-0.639436, -0.631199, -0.438986,
		32.789795, 27.491152, 25.196518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629696, 27.577833, 25.032099>,  <33.237400, 27.932991, 25.503809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629696, 27.577833, 25.032099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284161, 27.476112, 24.858150>,  <33.076839, 27.415079, 24.753782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284161, 27.476112, 24.858150>,  <33.629696, 27.577833, 25.032099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284161, 27.476112, 24.858150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457251, -0.033507, -0.888706,
		0.211430, -0.966544, 0.145225,
		-0.863840, -0.254304, -0.434869,
		33.025009, 27.399820, 24.727690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859833, 27.240044, 24.422201>,  <33.629696, 27.577833, 25.032099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859833, 27.240044, 24.422201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474274, 27.298370, 24.333086>,  <33.242939, 27.333366, 24.279617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474274, 27.298370, 24.333086>,  <33.859833, 27.240044, 24.422201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474274, 27.298370, 24.333086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235335, 0.075143, -0.969005,
		-0.124556, -0.986454, -0.106746,
		-0.963900, 0.145816, -0.222788,
		33.185104, 27.342115, 24.266249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781986, 26.938349, 23.782059>,  <33.859833, 27.240044, 24.422201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781986, 26.938349, 23.782059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489143, 27.208935, 23.814096>,  <33.313438, 27.371286, 23.833319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.489143, 27.208935, 23.814096>,  <33.781986, 26.938349, 23.782059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489143, 27.208935, 23.814096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155288, 0.280219, -0.947293,
		-0.663256, -0.681080, -0.310197,
		-0.732105, 0.676467, 0.080093,
		33.269512, 27.411875, 23.838125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409840, 26.923615, 23.125843>,  <33.781986, 26.938349, 23.782059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409840, 26.923615, 23.125843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313770, 27.271599, 23.298115>,  <33.256130, 27.480389, 23.401478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313770, 27.271599, 23.298115>,  <33.409840, 26.923615, 23.125843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313770, 27.271599, 23.298115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138862, 0.469893, -0.871733,
		-0.960748, -0.149560, -0.233659,
		-0.240171, 0.869962, 0.430680,
		33.241718, 27.532587, 23.427319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022129, 27.179853, 22.642176>,  <33.409840, 26.923615, 23.125843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022129, 27.179853, 22.642176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082508, 27.516476, 22.849636>,  <33.118736, 27.718449, 22.974112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082508, 27.516476, 22.849636>,  <33.022129, 27.179853, 22.642176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082508, 27.516476, 22.849636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130541, 0.537036, -0.833397,
		-0.979885, 0.058091, 0.190921,
		0.150945, 0.841556, 0.518650,
		33.127792, 27.768942, 23.005232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572849, 27.626570, 22.462307>,  <33.022129, 27.179853, 22.642176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572849, 27.626570, 22.462307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845642, 27.870483, 22.623831>,  <33.009319, 28.016832, 22.720745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845642, 27.870483, 22.623831>,  <32.572849, 27.626570, 22.462307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845642, 27.870483, 22.623831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052107, 0.591240, -0.804811,
		-0.729510, 0.527825, 0.434990,
		0.681983, 0.609783, 0.403812,
		33.050236, 28.053419, 22.744974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312252, 28.398506, 22.441814>,  <32.572849, 27.626570, 22.462307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312252, 28.398506, 22.441814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711849, 28.398870, 22.459795>,  <32.951607, 28.399090, 22.470583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711849, 28.398870, 22.459795>,  <32.312252, 28.398506, 22.441814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711849, 28.398870, 22.459795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039621, 0.454668, -0.889780,
		-0.021248, 0.890661, 0.454172,
		0.998989, 0.000912, 0.044950,
		33.011547, 28.399143, 22.473280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380100, 28.992409, 22.010952>,  <32.312252, 28.398506, 22.441814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380100, 28.992409, 22.010952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732895, 28.808699, 22.053211>,  <32.944572, 28.698473, 22.078566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732895, 28.808699, 22.053211>,  <32.380100, 28.992409, 22.010952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732895, 28.808699, 22.053211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288285, 0.348460, -0.891890,
		0.372810, 0.817093, 0.439741,
		0.881989, -0.459276, 0.105647,
		32.997490, 28.670916, 22.084906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923157, 29.527390, 21.888344>,  <32.380100, 28.992409, 22.010952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923157, 29.527390, 21.888344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094353, 29.176384, 21.801821>,  <33.197071, 28.965780, 21.749907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094353, 29.176384, 21.801821>,  <32.923157, 29.527390, 21.888344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094353, 29.176384, 21.801821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292720, 0.361026, -0.885424,
		0.855065, 0.315638, 0.411384,
		0.427994, -0.877515, -0.216307,
		33.222752, 28.913130, 21.736929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608360, 29.647276, 21.758169>,  <32.923157, 29.527390, 21.888344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608360, 29.647276, 21.758169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559223, 29.297699, 21.570068>,  <33.529743, 29.087954, 21.457209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559223, 29.297699, 21.570068>,  <33.608360, 29.647276, 21.758169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559223, 29.297699, 21.570068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177398, 0.446874, -0.876832,
		0.976443, -0.191132, 0.100142,
		-0.122840, -0.873941, -0.470253,
		33.522369, 29.035517, 21.428993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208118, 29.567940, 21.300226>,  <33.608360, 29.647276, 21.758169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208118, 29.567940, 21.300226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934967, 29.317722, 21.149294>,  <33.771076, 29.167591, 21.058735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934967, 29.317722, 21.149294>,  <34.208118, 29.567940, 21.300226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934967, 29.317722, 21.149294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240232, 0.295500, -0.924645,
		0.689906, -0.722063, -0.051515,
		-0.682875, -0.625543, -0.377330,
		33.730106, 29.130060, 21.036095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544605, 29.197380, 20.689957>,  <34.208118, 29.567940, 21.300226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544605, 29.197380, 20.689957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149319, 29.153475, 20.647295>,  <33.912148, 29.127132, 20.621698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149319, 29.153475, 20.647295>,  <34.544605, 29.197380, 20.689957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149319, 29.153475, 20.647295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102787, 0.040338, -0.993885,
		0.113397, -0.993138, -0.028580,
		-0.988218, -0.109766, -0.106656,
		33.852852, 29.120546, 20.615297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408112, 28.676517, 20.149385>,  <34.544605, 29.197380, 20.689957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408112, 28.676517, 20.149385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072636, 28.894350, 20.146957>,  <33.871349, 29.025049, 20.145500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072636, 28.894350, 20.146957>,  <34.408112, 28.676517, 20.149385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072636, 28.894350, 20.146957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097975, 0.139909, -0.985305,
		-0.535728, -0.826957, -0.170695,
		-0.838687, 0.544580, -0.006068,
		33.821030, 29.057724, 20.145138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093098, 28.543522, 19.518183>,  <34.408112, 28.676517, 20.149385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093098, 28.543522, 19.518183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844582, 28.843664, 19.608484>,  <33.695473, 29.023750, 19.662664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844582, 28.843664, 19.608484>,  <34.093098, 28.543522, 19.518183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844582, 28.843664, 19.608484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216372, 0.112619, -0.969794,
		-0.753115, -0.651369, 0.092387,
		-0.621289, 0.750357, 0.225753,
		33.658195, 29.068771, 19.676210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596203, 28.472111, 19.063288>,  <34.093098, 28.543522, 19.518183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596203, 28.472111, 19.063288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578785, 28.850565, 19.191618>,  <33.568333, 29.077639, 19.268616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578785, 28.850565, 19.191618>,  <33.596203, 28.472111, 19.063288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578785, 28.850565, 19.191618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296921, 0.294362, -0.908399,
		-0.953909, -0.134816, 0.268110,
		-0.043546, 0.946137, 0.320825,
		33.565720, 29.134407, 19.287865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996311, 28.828865, 18.643032>,  <33.596203, 28.472111, 19.063288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996311, 28.828865, 18.643032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210182, 29.131838, 18.792919>,  <33.338505, 29.313622, 18.882853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210182, 29.131838, 18.792919>,  <32.996311, 28.828865, 18.643032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210182, 29.131838, 18.792919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013518, 0.451036, -0.892404,
		-0.844946, 0.472085, 0.251399,
		0.534680, 0.757432, 0.374719,
		33.370586, 29.359068, 18.905334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708595, 29.494345, 18.490604>,  <32.996311, 28.828865, 18.643032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708595, 29.494345, 18.490604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084423, 29.613756, 18.557644>,  <33.309921, 29.685402, 18.597868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084423, 29.613756, 18.557644>,  <32.708595, 29.494345, 18.490604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084423, 29.613756, 18.557644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004641, 0.478397, -0.878131,
		-0.342326, 0.825843, 0.448102,
		0.939570, 0.298527, 0.167600,
		33.366295, 29.703314, 18.607924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783386, 30.235209, 18.356951>,  <32.708595, 29.494345, 18.490604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783386, 30.235209, 18.356951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151073, 30.078436, 18.341806>,  <33.371685, 29.984371, 18.332720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151073, 30.078436, 18.341806>,  <32.783386, 30.235209, 18.356951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151073, 30.078436, 18.341806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159094, 0.457635, -0.874791,
		0.360186, 0.798097, 0.483019,
		0.919214, -0.391933, -0.037862,
		33.426838, 29.960855, 18.330448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082809, 30.662369, 17.978617>,  <32.783386, 30.235209, 18.356951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082809, 30.662369, 17.978617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366646, 30.380610, 17.985573>,  <33.536949, 30.211554, 17.989746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366646, 30.380610, 17.985573>,  <33.082809, 30.662369, 17.978617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366646, 30.380610, 17.985573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413469, 0.396281, -0.819759,
		0.570547, 0.588883, 0.572445,
		0.709591, -0.704399, 0.017388,
		33.579525, 30.169291, 17.990789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784031, 30.947121, 17.925383>,  <33.082809, 30.662369, 17.978617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784031, 30.947121, 17.925383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780376, 30.574394, 17.780258>,  <33.778183, 30.350758, 17.693184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780376, 30.574394, 17.780258>,  <33.784031, 30.947121, 17.925383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780376, 30.574394, 17.780258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373133, 0.333443, -0.865787,
		0.927733, -0.143290, 0.344644,
		-0.009139, -0.931817, -0.362812,
		33.777634, 30.294849, 17.671415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344776, 30.979132, 17.578680>,  <33.784031, 30.947121, 17.925383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344776, 30.979132, 17.578680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170895, 30.645348, 17.443207>,  <34.066566, 30.445078, 17.361923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170895, 30.645348, 17.443207>,  <34.344776, 30.979132, 17.578680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170895, 30.645348, 17.443207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487764, 0.097979, -0.867460,
		0.757045, -0.542288, 0.364428,
		-0.434706, -0.834460, -0.338683,
		34.040482, 30.395010, 17.341602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901035, 30.541925, 17.263712>,  <34.344776, 30.979132, 17.578680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901035, 30.541925, 17.263712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544510, 30.463776, 17.100060>,  <34.330593, 30.416885, 17.001867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544510, 30.463776, 17.100060>,  <34.901035, 30.541925, 17.263712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544510, 30.463776, 17.100060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400264, 0.084757, -0.912472,
		0.212951, -0.977059, 0.002656,
		-0.891314, -0.195375, -0.409131,
		34.277115, 30.405163, 16.977320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929005, 30.099979, 16.792933>,  <34.901035, 30.541925, 17.263712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929005, 30.099979, 16.792933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594276, 30.280293, 16.668665>,  <34.393440, 30.388481, 16.594105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594276, 30.280293, 16.668665>,  <34.929005, 30.099979, 16.792933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594276, 30.280293, 16.668665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332917, -0.031484, -0.942430,
		-0.434615, -0.892077, -0.123727,
		-0.836825, 0.450785, -0.310671,
		34.343227, 30.415527, 16.575464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775780, 29.762072, 16.184694>,  <34.929005, 30.099979, 16.792933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775780, 29.762072, 16.184694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589561, 30.115931, 16.174398>,  <34.477829, 30.328247, 16.168221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589561, 30.115931, 16.174398>,  <34.775780, 29.762072, 16.184694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589561, 30.115931, 16.174398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317396, 0.139742, -0.937940,
		-0.826151, -0.444824, -0.345840,
		-0.465547, 0.884649, -0.025737,
		34.449898, 30.381325, 16.166677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756470, 29.700188, 15.508437>,  <34.775780, 29.762072, 16.184694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756470, 29.700188, 15.508437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673157, 30.075125, 15.620154>,  <34.623169, 30.300087, 15.687184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673157, 30.075125, 15.620154>,  <34.756470, 29.700188, 15.508437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673157, 30.075125, 15.620154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124154, 0.308584, -0.943060,
		-0.970156, -0.161750, -0.180648,
		-0.208285, 0.937344, 0.279293,
		34.610672, 30.356327, 15.703942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272446, 29.945631, 14.987878>,  <34.756470, 29.700188, 15.508437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272446, 29.945631, 14.987878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415482, 30.271553, 15.170404>,  <34.501301, 30.467106, 15.279921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415482, 30.271553, 15.170404>,  <34.272446, 29.945631, 14.987878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415482, 30.271553, 15.170404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183752, 0.417684, -0.889817,
		-0.915624, 0.402035, -0.000364,
		0.357585, 0.814806, 0.456317,
		34.522758, 30.515995, 15.307300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156845, 30.666302, 14.644284>,  <34.272446, 29.945631, 14.987878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156845, 30.666302, 14.644284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436863, 30.804886, 14.894051>,  <34.604874, 30.888037, 15.043911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436863, 30.804886, 14.894051>,  <34.156845, 30.666302, 14.644284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436863, 30.804886, 14.894051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464540, 0.443152, -0.766693,
		-0.542341, 0.826789, 0.149283,
		0.700049, 0.346461, 0.624416,
		34.646877, 30.908825, 15.081375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241787, 31.403364, 14.423014>,  <34.156845, 30.666302, 14.644284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241787, 31.403364, 14.423014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584789, 31.273575, 14.582717>,  <34.790588, 31.195702, 14.678539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584789, 31.273575, 14.582717>,  <34.241787, 31.403364, 14.423014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584789, 31.273575, 14.582717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511935, 0.461019, -0.724834,
		0.051124, 0.825941, 0.561434,
		0.857502, -0.324474, 0.399259,
		34.842041, 31.176233, 14.702495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646610, 31.997480, 14.595669>,  <34.241787, 31.403364, 14.423014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646610, 31.997480, 14.595669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931568, 31.717739, 14.572344>,  <35.102543, 31.549894, 14.558349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931568, 31.717739, 14.572344>,  <34.646610, 31.997480, 14.595669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931568, 31.717739, 14.572344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543352, 0.602246, -0.584865,
		0.444146, 0.384970, 0.809032,
		0.712392, -0.699355, -0.058311,
		35.145287, 31.507933, 14.554851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281208, 32.352261, 14.806784>,  <34.646610, 31.997480, 14.595669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281208, 32.352261, 14.806784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377346, 32.034142, 14.584168>,  <35.435028, 31.843269, 14.450600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377346, 32.034142, 14.584168>,  <35.281208, 32.352261, 14.806784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377346, 32.034142, 14.584168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497636, 0.593219, -0.632811,
		0.833423, -0.124862, 0.538346,
		0.240343, -0.795299, -0.556538,
		35.449448, 31.795551, 14.417207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983582, 32.501312, 14.669461>,  <35.281208, 32.352261, 14.806784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983582, 32.501312, 14.669461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845451, 32.229858, 14.410170>,  <35.762573, 32.066986, 14.254595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845451, 32.229858, 14.410170>,  <35.983582, 32.501312, 14.669461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845451, 32.229858, 14.410170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620632, 0.352978, -0.700159,
		0.703966, -0.644093, 0.299293,
		-0.345324, -0.678639, -0.648229,
		35.741856, 32.026268, 14.215701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612469, 32.242043, 14.348875>,  <35.983582, 32.501312, 14.669461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612469, 32.242043, 14.348875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318604, 32.139278, 14.097714>,  <36.142284, 32.077621, 13.947018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318604, 32.139278, 14.097714>,  <36.612469, 32.242043, 14.348875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318604, 32.139278, 14.097714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468161, 0.477863, -0.743285,
		0.491010, -0.840026, -0.230794,
		-0.734666, -0.256912, -0.627903,
		36.098202, 32.062206, 13.909344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839462, 32.038727, 13.709849>,  <36.612469, 32.242043, 14.348875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839462, 32.038727, 13.709849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469151, 32.122620, 13.584032>,  <36.246964, 32.172955, 13.508541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469151, 32.122620, 13.584032>,  <36.839462, 32.038727, 13.709849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469151, 32.122620, 13.584032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376608, 0.438875, -0.815816,
		-0.033060, -0.873727, -0.485291,
		-0.925783, 0.209735, -0.314544,
		36.191414, 32.185539, 13.489669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999779, 31.891127, 13.068616>,  <36.839462, 32.038727, 13.709849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999779, 31.891127, 13.068616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652863, 32.090031, 13.077927>,  <36.444714, 32.209373, 13.083513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652863, 32.090031, 13.077927>,  <36.999779, 31.891127, 13.068616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652863, 32.090031, 13.077927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277284, 0.521395, -0.807008,
		-0.413429, -0.693455, -0.590082,
		-0.867289, 0.497261, 0.023276,
		36.392677, 32.239208, 13.084909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744797, 31.940468, 12.331526>,  <36.999779, 31.891127, 13.068616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744797, 31.940468, 12.331526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575474, 32.251118, 12.518145>,  <36.473881, 32.437508, 12.630116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575474, 32.251118, 12.518145>,  <36.744797, 31.940468, 12.331526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575474, 32.251118, 12.518145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255470, 0.596384, -0.760960,
		-0.869220, -0.202933, -0.450859,
		-0.423310, 0.776623, 0.466546,
		36.448483, 32.484104, 12.658109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329735, 32.275105, 11.782990>,  <36.744797, 31.940468, 12.331526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329735, 32.275105, 11.782990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374386, 32.554008, 12.066219>,  <36.401176, 32.721352, 12.236157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374386, 32.554008, 12.066219>,  <36.329735, 32.275105, 11.782990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374386, 32.554008, 12.066219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346392, 0.640539, -0.685363,
		-0.931424, 0.321779, -0.170021,
		0.111631, 0.697257, 0.708076,
		36.407875, 32.763187, 12.278642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998093, 32.823307, 11.555185>,  <36.329735, 32.275105, 11.782990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998093, 32.823307, 11.555185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287277, 32.947292, 11.802165>,  <36.460789, 33.021683, 11.950353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287277, 32.947292, 11.802165>,  <35.998093, 32.823307, 11.555185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287277, 32.947292, 11.802165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245536, 0.720091, -0.648984,
		-0.645781, 0.620799, 0.444494,
		0.722965, 0.309963, 0.617450,
		36.504166, 33.040279, 11.987400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958355, 33.642906, 11.742040>,  <35.998093, 32.823307, 11.555185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958355, 33.642906, 11.742040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320316, 33.474606, 11.716362>,  <36.537491, 33.373623, 11.700955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320316, 33.474606, 11.716362>,  <35.958355, 33.642906, 11.742040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320316, 33.474606, 11.716362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239098, 0.627296, -0.741169,
		0.352120, 0.655335, 0.668242,
		0.904900, -0.420756, -0.064194,
		36.591785, 33.348377, 11.697104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541000, 34.061111, 11.809503>,  <35.958355, 33.642906, 11.742040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541000, 34.061111, 11.809503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673775, 33.803883, 11.533452>,  <36.753437, 33.649544, 11.367822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673775, 33.803883, 11.533452>,  <36.541000, 34.061111, 11.809503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673775, 33.803883, 11.533452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176123, 0.760990, -0.624399,
		0.926716, 0.085711, 0.365858,
		0.331932, -0.643076, -0.690126,
		36.773354, 33.610958, 11.326414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975437, 34.415485, 12.282533>,  <36.541000, 34.061111, 11.809503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975437, 34.415485, 12.282533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056538, 34.790211, 12.396566>,  <36.105198, 35.015045, 12.464987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056538, 34.790211, 12.396566>,  <35.975437, 34.415485, 12.282533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056538, 34.790211, 12.396566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269219, 0.333239, -0.903589,
		-0.941496, 0.106451, 0.319772,
		0.202748, 0.936814, 0.285085,
		36.117363, 35.071255, 12.482092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513878, 34.937313, 11.813336>,  <35.975437, 34.415485, 12.282533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513878, 34.937313, 11.813336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819439, 35.149670, 11.960090>,  <36.002777, 35.277084, 12.048141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819439, 35.149670, 11.960090>,  <35.513878, 34.937313, 11.813336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819439, 35.149670, 11.960090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099246, 0.465109, -0.879673,
		-0.637650, 0.708399, 0.302611,
		0.763906, 0.530890, 0.366883,
		36.048611, 35.308937, 12.070154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054893, 35.238827, 11.378304>,  <35.513878, 34.937313, 11.813336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054893, 35.238827, 11.378304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155910, 35.611645, 11.274370>,  <36.216522, 35.835335, 11.212010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155910, 35.611645, 11.274370>,  <36.054893, 35.238827, 11.378304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155910, 35.611645, 11.274370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469356, 0.116825, 0.875247,
		0.846125, -0.342990, -0.407959,
		0.252541, 0.932046, -0.259833,
		36.231674, 35.891258, 11.196421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847240, 35.336037, 11.388258>,  <36.054893, 35.238827, 11.378304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847240, 35.336037, 11.388258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619328, 35.652168, 11.478351>,  <36.482578, 35.841846, 11.532407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619328, 35.652168, 11.478351>,  <36.847240, 35.336037, 11.388258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619328, 35.652168, 11.478351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224441, -0.113999, 0.967797,
		0.790553, 0.601984, -0.112428,
		-0.569782, 0.790328, 0.225232,
		36.448395, 35.889267, 11.545920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189194, 35.859211, 11.848195>,  <36.847240, 35.336037, 11.388258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189194, 35.859211, 11.848195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792542, 35.852665, 11.899428>,  <36.554550, 35.848740, 11.930168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792542, 35.852665, 11.899428>,  <37.189194, 35.859211, 11.848195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792542, 35.852665, 11.899428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127972, -0.256703, 0.957981,
		0.017205, 0.966352, 0.256647,
		-0.991629, -0.016362, 0.128083,
		36.495052, 35.847755, 11.937853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923565, 36.108971, 12.554539>,  <37.189194, 35.859211, 11.848195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923565, 36.108971, 12.554539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621719, 35.882816, 12.421332>,  <36.440613, 35.747124, 12.341409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621719, 35.882816, 12.421332>,  <36.923565, 36.108971, 12.554539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621719, 35.882816, 12.421332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027209, -0.480118, 0.876782,
		-0.655604, 0.670694, 0.346921,
		-0.754615, -0.565382, -0.333017,
		36.395336, 35.713203, 12.321427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375771, 36.277851, 12.977906>,  <36.923565, 36.108971, 12.554539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375771, 36.277851, 12.977906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316330, 35.914352, 12.821908>,  <36.280666, 35.696255, 12.728309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316330, 35.914352, 12.821908>,  <36.375771, 36.277851, 12.977906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316330, 35.914352, 12.821908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132876, -0.372449, 0.918491,
		-0.979930, 0.188308, -0.065405,
		-0.148599, -0.908747, -0.389995,
		36.271751, 35.641727, 12.704909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805286, 36.003441, 13.312644>,  <36.375771, 36.277851, 12.977906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805286, 36.003441, 13.312644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021629, 35.695507, 13.177094>,  <36.151436, 35.510746, 13.095764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021629, 35.695507, 13.177094>,  <35.805286, 36.003441, 13.312644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021629, 35.695507, 13.177094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055888, -0.434888, 0.898749,
		-0.839258, -0.467152, -0.278235,
		0.540853, -0.769832, -0.338875,
		36.183884, 35.464558, 13.075432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442062, 35.521484, 13.622577>,  <35.805286, 36.003441, 13.312644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442062, 35.521484, 13.622577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775467, 35.338009, 13.499375>,  <35.975510, 35.227924, 13.425454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775467, 35.338009, 13.499375>,  <35.442062, 35.521484, 13.622577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775467, 35.338009, 13.499375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009420, -0.545590, 0.837999,
		-0.552430, -0.701379, -0.450431,
		0.833506, -0.458693, -0.308007,
		36.025520, 35.200401, 13.406974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324989, 34.816158, 13.634109>,  <35.442062, 35.521484, 13.622577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324989, 34.816158, 13.634109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724663, 34.831860, 13.637746>,  <35.964466, 34.841282, 13.639928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724663, 34.831860, 13.637746>,  <35.324989, 34.816158, 13.634109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724663, 34.831860, 13.637746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021634, -0.713038, 0.700792,
		0.033991, -0.700026, -0.713308,
		0.999188, 0.039252, 0.009092,
		36.024418, 34.843636, 13.640473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563148, 34.078365, 13.829876>,  <35.324989, 34.816158, 13.634109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563148, 34.078365, 13.829876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867622, 34.320503, 13.922969>,  <36.050304, 34.465786, 13.978825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867622, 34.320503, 13.922969>,  <35.563148, 34.078365, 13.829876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867622, 34.320503, 13.922969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079456, -0.443197, 0.892896,
		0.643654, -0.661164, -0.385452,
		0.761181, 0.605342, 0.232732,
		36.095978, 34.502106, 13.992788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076691, 33.678585, 14.228449>,  <35.563148, 34.078365, 13.829876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076691, 33.678585, 14.228449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179523, 34.053921, 14.320910>,  <36.241222, 34.279121, 14.376388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179523, 34.053921, 14.320910>,  <36.076691, 33.678585, 14.228449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179523, 34.053921, 14.320910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045655, -0.250719, 0.966983,
		0.965311, -0.238037, -0.107294,
		0.257079, 0.938338, 0.231155,
		36.256649, 34.335423, 14.390257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637543, 33.646168, 14.706368>,  <36.076691, 33.678585, 14.228449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637543, 33.646168, 14.706368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491032, 34.013157, 14.768442>,  <36.403126, 34.233353, 14.805686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491032, 34.013157, 14.768442>,  <36.637543, 33.646168, 14.706368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491032, 34.013157, 14.768442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032366, -0.154112, 0.987523,
		0.929943, 0.366729, 0.026753,
		-0.366276, 0.917475, 0.155185,
		36.381149, 34.288399, 14.814998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916092, 33.815506, 15.239981>,  <36.637543, 33.646168, 14.706368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916092, 33.815506, 15.239981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623367, 34.086800, 15.266659>,  <36.447731, 34.249577, 15.282665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623367, 34.086800, 15.266659>,  <36.916092, 33.815506, 15.239981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623367, 34.086800, 15.266659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078786, -0.013013, 0.996807,
		0.676937, 0.734730, -0.043913,
		-0.731813, 0.678234, 0.066695,
		36.403824, 34.290272, 15.286668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069206, 34.243999, 15.859797>,  <36.916092, 33.815506, 15.239981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069206, 34.243999, 15.859797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680630, 34.302708, 15.785213>,  <36.447483, 34.337933, 15.740463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680630, 34.302708, 15.785213>,  <37.069206, 34.243999, 15.859797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680630, 34.302708, 15.785213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178917, 0.063131, 0.981837,
		0.155880, 0.987153, -0.035068,
		-0.971437, 0.146775, -0.186459,
		36.389198, 34.346741, 15.729276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800549, 34.826954, 16.219090>,  <37.069206, 34.243999, 15.859797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800549, 34.826954, 16.219090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507027, 34.568081, 16.136448>,  <36.330914, 34.412758, 16.086863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507027, 34.568081, 16.136448>,  <36.800549, 34.826954, 16.219090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507027, 34.568081, 16.136448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031889, -0.270967, 0.962060,
		-0.678613, 0.712552, 0.178198,
		-0.733803, -0.647184, -0.206604,
		36.286884, 34.373924, 16.074467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316765, 34.918510, 16.759401>,  <36.800549, 34.826954, 16.219090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316765, 34.918510, 16.759401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195656, 34.573326, 16.597597>,  <36.122990, 34.366215, 16.500515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195656, 34.573326, 16.597597>,  <36.316765, 34.918510, 16.759401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195656, 34.573326, 16.597597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226938, -0.346947, 0.910015,
		-0.925650, 0.367326, -0.090792,
		-0.302772, -0.862960, -0.404512,
		36.104824, 34.314438, 16.476244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833427, 34.764011, 17.236189>,  <36.316765, 34.918510, 16.759401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833427, 34.764011, 17.236189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869770, 34.418705, 17.037586>,  <35.891575, 34.211521, 16.918425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869770, 34.418705, 17.037586>,  <35.833427, 34.764011, 17.236189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869770, 34.418705, 17.037586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161654, -0.504739, 0.848001,
		-0.982656, 0.003216, -0.185409,
		0.090856, -0.863266, -0.496505,
		35.897026, 34.159725, 16.888636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164310, 34.402351, 17.241293>,  <35.833427, 34.764011, 17.236189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164310, 34.402351, 17.241293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454659, 34.131748, 17.191589>,  <35.628868, 33.969387, 17.161768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454659, 34.131748, 17.191589>,  <35.164310, 34.402351, 17.241293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454659, 34.131748, 17.191589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265119, -0.441873, 0.857006,
		-0.634682, -0.589134, -0.500100,
		0.725872, -0.676512, -0.124258,
		35.672421, 33.928795, 17.154312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980495, 33.646770, 17.138777>,  <35.164310, 34.402351, 17.241293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980495, 33.646770, 17.138777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356014, 33.627785, 17.275253>,  <35.581326, 33.616394, 17.357140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356014, 33.627785, 17.275253>,  <34.980495, 33.646770, 17.138777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356014, 33.627785, 17.275253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330699, -0.401460, 0.854089,
		0.096439, -0.914646, -0.392584,
		0.938796, -0.047460, 0.341189,
		35.637653, 33.613548, 17.377609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824371, 33.013180, 17.575729>,  <34.980495, 33.646770, 17.138777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824371, 33.013180, 17.575729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164227, 33.199215, 17.675179>,  <35.368137, 33.310837, 17.734848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164227, 33.199215, 17.675179>,  <34.824371, 33.013180, 17.575729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164227, 33.199215, 17.675179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109403, -0.305739, 0.945809,
		0.515899, -0.830792, -0.208884,
		0.849635, 0.465090, 0.248621,
		35.419117, 33.338741, 17.749765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168167, 32.480312, 17.810163>,  <34.824371, 33.013180, 17.575729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168167, 32.480312, 17.810163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301758, 32.827431, 17.957344>,  <35.381912, 33.035702, 18.045652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.301758, 32.827431, 17.957344>,  <35.168167, 32.480312, 17.810163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301758, 32.827431, 17.957344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185212, -0.322340, 0.928328,
		0.924206, -0.378188, 0.053072,
		0.333976, 0.867796, 0.367953,
		35.401951, 33.087769, 18.067730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715717, 32.226273, 18.254087>,  <35.168167, 32.480312, 17.810163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715717, 32.226273, 18.254087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565109, 32.584610, 18.348497>,  <35.474747, 32.799610, 18.405144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.565109, 32.584610, 18.348497>,  <35.715717, 32.226273, 18.254087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565109, 32.584610, 18.348497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177820, -0.319920, 0.930608,
		0.909184, 0.308419, 0.279753,
		-0.376516, 0.895840, 0.236023,
		35.452156, 32.853363, 18.419304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802887, 32.233078, 19.015642>,  <35.715717, 32.226273, 18.254087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802887, 32.233078, 19.015642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598858, 32.575500, 18.982208>,  <35.476440, 32.780952, 18.962149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598858, 32.575500, 18.982208>,  <35.802887, 32.233078, 19.015642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598858, 32.575500, 18.982208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216260, -0.033586, 0.975758,
		0.832498, 0.515788, 0.202263,
		-0.510077, 0.856058, -0.083585,
		35.445835, 32.832317, 18.957132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841171, 32.448013, 19.690952>,  <35.802887, 32.233078, 19.015642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841171, 32.448013, 19.690952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551105, 32.674286, 19.533907>,  <35.377068, 32.810047, 19.439680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551105, 32.674286, 19.533907>,  <35.841171, 32.448013, 19.690952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551105, 32.674286, 19.533907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414601, 0.096539, 0.904868,
		0.549768, 0.818955, 0.164524,
		-0.725163, 0.565679, -0.392614,
		35.333557, 32.843990, 19.416122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895107, 33.004711, 20.079397>,  <35.841171, 32.448013, 19.690952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895107, 33.004711, 20.079397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522942, 32.991776, 19.933361>,  <35.299644, 32.984016, 19.845739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522942, 32.991776, 19.933361>,  <35.895107, 33.004711, 20.079397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522942, 32.991776, 19.933361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362084, -0.073382, 0.929252,
		-0.056839, 0.996780, 0.056567,
		-0.930411, -0.032336, -0.365089,
		35.243820, 32.982075, 19.823833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396442, 33.561726, 20.506332>,  <35.895107, 33.004711, 20.079397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396442, 33.561726, 20.506332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147442, 33.304272, 20.328241>,  <34.998039, 33.149799, 20.221388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147442, 33.304272, 20.328241>,  <35.396442, 33.561726, 20.506332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147442, 33.304272, 20.328241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482677, -0.132064, 0.865784,
		-0.616044, 0.753855, -0.228456,
		-0.622505, -0.643632, -0.445226,
		34.960690, 33.111183, 20.194674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710640, 33.699680, 20.858130>,  <35.396442, 33.561726, 20.506332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710640, 33.699680, 20.858130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672848, 33.347530, 20.672222>,  <34.650173, 33.136242, 20.560677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672848, 33.347530, 20.672222>,  <34.710640, 33.699680, 20.858130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672848, 33.347530, 20.672222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576524, -0.332215, 0.746494,
		-0.811599, 0.338483, -0.476169,
		-0.094485, -0.880376, -0.464769,
		34.644501, 33.083416, 20.532791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031815, 33.572712, 20.842266>,  <34.710640, 33.699680, 20.858130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031815, 33.572712, 20.842266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204258, 33.212608, 20.818003>,  <34.307724, 32.996548, 20.803444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204258, 33.212608, 20.818003>,  <34.031815, 33.572712, 20.842266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204258, 33.212608, 20.818003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627151, -0.347303, 0.697182,
		-0.648710, -0.262521, -0.714323,
		0.431112, -0.900257, -0.060659,
		34.333591, 32.942532, 20.799805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523602, 33.147572, 21.086147>,  <34.031815, 33.572712, 20.842266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523602, 33.147572, 21.086147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835411, 32.897022, 21.087032>,  <34.022495, 32.746693, 21.087563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835411, 32.897022, 21.087032>,  <33.523602, 33.147572, 21.086147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835411, 32.897022, 21.087032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393690, -0.487192, 0.779521,
		-0.487192, -0.608524, -0.626373,
		-0.779521, 0.626373, -0.002213,
		34.069267, 32.709110, 21.087696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235527, 32.454147, 21.112404>,  <33.523602, 33.147572, 21.086147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235527, 32.454147, 21.112404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611244, 32.456039, 21.249636>,  <33.836674, 32.457176, 21.331974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611244, 32.456039, 21.249636>,  <33.235527, 32.454147, 21.112404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611244, 32.456039, 21.249636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318799, -0.357652, 0.877754,
		0.126857, -0.933843, -0.334432,
		0.939295, 0.004733, 0.343078,
		33.893032, 32.457458, 21.352560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378876, 31.717823, 21.462439>,  <33.235527, 32.454147, 21.112404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378876, 31.717823, 21.462439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668468, 31.966225, 21.582573>,  <33.842224, 32.115265, 21.654654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668468, 31.966225, 21.582573>,  <33.378876, 31.717823, 21.462439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668468, 31.966225, 21.582573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063881, -0.373155, 0.925567,
		0.686853, -0.689281, -0.230488,
		0.723984, 0.621005, 0.300334,
		33.885662, 32.152527, 21.672672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795635, 31.274813, 21.890444>,  <33.378876, 31.717823, 21.462439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795635, 31.274813, 21.890444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903545, 31.643606, 22.001556>,  <33.968292, 31.864883, 22.068224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.903545, 31.643606, 22.001556>,  <33.795635, 31.274813, 21.890444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903545, 31.643606, 22.001556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034365, -0.279076, 0.959654,
		0.962309, -0.268440, -0.043605,
		0.269779, 0.921985, 0.277783,
		33.984478, 31.920202, 22.084890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397518, 31.246979, 22.365738>,  <33.795635, 31.274813, 21.890444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397518, 31.246979, 22.365738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196388, 31.586800, 22.429520>,  <34.075710, 31.790691, 22.467789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196388, 31.586800, 22.429520>,  <34.397518, 31.246979, 22.365738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196388, 31.586800, 22.429520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036366, -0.163519, 0.985870,
		0.863621, 0.501522, 0.051327,
		-0.502828, 0.849551, 0.159457,
		34.045540, 31.841665, 22.477356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681690, 31.510504, 22.931648>,  <34.397518, 31.246979, 22.365738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681690, 31.510504, 22.931648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323723, 31.685831, 22.898188>,  <34.108944, 31.791027, 22.878111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323723, 31.685831, 22.898188>,  <34.681690, 31.510504, 22.931648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323723, 31.685831, 22.898188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300978, -0.454521, 0.838346,
		0.329440, 0.775429, 0.538683,
		-0.894920, 0.438316, -0.083649,
		34.055248, 31.817326, 22.873093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448017, 31.758354, 23.674126>,  <34.681690, 31.510504, 22.931648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448017, 31.758354, 23.674126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132668, 31.703234, 23.434299>,  <33.943459, 31.670160, 23.290403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132668, 31.703234, 23.434299>,  <34.448017, 31.758354, 23.674126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132668, 31.703234, 23.434299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434962, -0.564359, 0.701647,
		-0.435058, 0.813947, 0.384987,
		-0.788374, -0.137802, -0.599564,
		33.896156, 31.661894, 23.254431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881451, 31.869572, 24.129257>,  <34.448017, 31.758354, 23.674126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881451, 31.869572, 24.129257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699574, 31.701908, 23.814917>,  <33.590446, 31.601309, 23.626312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.699574, 31.701908, 23.814917>,  <33.881451, 31.869572, 24.129257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699574, 31.701908, 23.814917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623275, -0.480540, 0.616936,
		-0.636228, 0.770316, -0.042756,
		-0.454689, -0.419160, -0.785851,
		33.563168, 31.576160, 23.579161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199863, 31.922680, 24.219879>,  <33.881451, 31.869572, 24.129257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199863, 31.922680, 24.219879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224949, 31.603659, 23.979887>,  <33.240002, 31.412247, 23.835892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224949, 31.603659, 23.979887>,  <33.199863, 31.922680, 24.219879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224949, 31.603659, 23.979887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510890, -0.542083, 0.667187,
		-0.857355, 0.264680, -0.441459,
		0.062716, -0.797553, -0.599980,
		33.243763, 31.364393, 23.799892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555069, 31.646147, 24.235989>,  <33.199863, 31.922680, 24.219879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555069, 31.646147, 24.235989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752056, 31.324488, 24.102829>,  <32.870247, 31.131493, 24.022932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752056, 31.324488, 24.102829>,  <32.555069, 31.646147, 24.235989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752056, 31.324488, 24.102829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488774, -0.572021, 0.658705,
		-0.720122, -0.161677, -0.674747,
		0.492467, -0.804147, -0.332901,
		32.899796, 31.083244, 24.002958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075333, 31.138815, 24.191101>,  <32.555069, 31.646147, 24.235989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075333, 31.138815, 24.191101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394772, 30.901104, 24.152996>,  <32.586433, 30.758476, 24.130133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394772, 30.901104, 24.152996>,  <32.075333, 31.138815, 24.191101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394772, 30.901104, 24.152996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431605, -0.675777, 0.597530,
		-0.419475, -0.436070, -0.796168,
		0.798597, -0.594279, -0.095262,
		32.634350, 30.722820, 24.124418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826954, 30.485973, 23.982910>,  <32.075333, 31.138815, 24.191101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826954, 30.485973, 23.982910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181770, 30.462152, 24.166044>,  <32.394661, 30.447859, 24.275925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181770, 30.462152, 24.166044>,  <31.826954, 30.485973, 23.982910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181770, 30.462152, 24.166044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379790, -0.657984, 0.650243,
		0.262524, -0.750673, -0.606277,
		0.887041, -0.059553, 0.457835,
		32.447884, 30.444286, 24.303394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901758, 29.727951, 24.089359>,  <31.826954, 30.485973, 23.982910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901758, 29.727951, 24.089359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171642, 29.883642, 24.340204>,  <32.333572, 29.977057, 24.490711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171642, 29.883642, 24.340204>,  <31.901758, 29.727951, 24.089359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171642, 29.883642, 24.340204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294326, -0.637285, 0.712208,
		0.676862, -0.665108, -0.315420,
		0.674708, 0.389230, 0.627112,
		32.374054, 30.000412, 24.528337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.187046, 29.202551, 24.487301>,  <31.901758, 29.727951, 24.089359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.187046, 29.202551, 24.487301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277107, 29.533438, 24.693222>,  <32.331142, 29.731970, 24.816774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277107, 29.533438, 24.693222>,  <32.187046, 29.202551, 24.487301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277107, 29.533438, 24.693222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236548, -0.466151, 0.852495,
		0.945173, -0.313714, 0.090723,
		0.225149, 0.827216, 0.514802,
		32.344650, 29.781603, 24.847662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729073, 29.044516, 24.956352>,  <32.187046, 29.202551, 24.487301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729073, 29.044516, 24.956352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531956, 29.346977, 25.128578>,  <32.413685, 29.528454, 25.231915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531956, 29.346977, 25.128578>,  <32.729073, 29.044516, 24.956352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531956, 29.346977, 25.128578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153036, -0.562422, 0.812565,
		0.856583, 0.334535, 0.392877,
		-0.492794, 0.756154, 0.430565,
		32.384117, 29.573824, 25.257748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106796, 29.162045, 25.647396>,  <32.729073, 29.044516, 24.956352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106796, 29.162045, 25.647396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756805, 29.347155, 25.704319>,  <32.546810, 29.458220, 25.738472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756805, 29.347155, 25.704319>,  <33.106796, 29.162045, 25.647396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756805, 29.347155, 25.704319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110238, -0.476626, 0.872167,
		0.471443, 0.747441, 0.468053,
		-0.874980, 0.462774, 0.142306,
		32.494312, 29.485987, 25.747011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084034, 29.312435, 26.341116>,  <33.106796, 29.162045, 25.647396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.084034, 29.312435, 26.341116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700512, 29.303532, 26.227840>,  <32.470398, 29.298189, 26.159876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700512, 29.303532, 26.227840>,  <33.084034, 29.312435, 26.341116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700512, 29.303532, 26.227840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242495, -0.455070, 0.856801,
		-0.147943, 0.890177, 0.430926,
		-0.958806, -0.022260, -0.283188,
		32.412868, 29.296854, 26.142883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882084, 29.414810, 26.103582>,  <33.084034, 29.312435, 26.341116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882084, 29.414810, 26.103582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952862, 29.446709, 26.495977>,  <33.995327, 29.465847, 26.731415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952862, 29.446709, 26.495977>,  <33.882084, 29.414810, 26.103582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952862, 29.446709, 26.495977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254108, 0.959219, -0.123809,
		-0.950853, 0.271184, 0.149462,
		0.176942, 0.079745, 0.980986,
		34.005943, 29.470633, 26.790274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517097, 30.014240, 26.305897>,  <33.882084, 29.414810, 26.103582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517097, 30.014240, 26.305897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829975, 29.924133, 26.538252>,  <34.017700, 29.870070, 26.677666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829975, 29.924133, 26.538252>,  <33.517097, 30.014240, 26.305897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829975, 29.924133, 26.538252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475313, 0.818538, -0.322604,
		-0.402809, 0.528442, 0.747324,
		0.782191, -0.225266, 0.580890,
		34.064632, 29.856554, 26.712519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766438, 30.640684, 26.673212>,  <33.517097, 30.014240, 26.305897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766438, 30.640684, 26.673212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058743, 30.369272, 26.703110>,  <34.234123, 30.206425, 26.721048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058743, 30.369272, 26.703110>,  <33.766438, 30.640684, 26.673212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058743, 30.369272, 26.703110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635164, 0.635733, -0.438646,
		0.250117, 0.368019, 0.895546,
		0.730758, -0.678532, 0.074745,
		34.277969, 30.165712, 26.725533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285126, 31.096489, 26.662159>,  <33.766438, 30.640684, 26.673212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285126, 31.096489, 26.662159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441975, 30.739113, 26.574522>,  <34.536083, 30.524687, 26.521940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441975, 30.739113, 26.574522>,  <34.285126, 31.096489, 26.662159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441975, 30.739113, 26.574522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713067, 0.445676, -0.541210,
		0.581183, 0.055996, 0.811844,
		0.392125, -0.893441, -0.219091,
		34.559612, 30.471081, 26.508795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942066, 31.166800, 26.662310>,  <34.285126, 31.096489, 26.662159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942066, 31.166800, 26.662310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896027, 30.842236, 26.433098>,  <34.868401, 30.647497, 26.295570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896027, 30.842236, 26.433098>,  <34.942066, 31.166800, 26.662310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896027, 30.842236, 26.433098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667691, 0.363919, -0.649425,
		0.735487, -0.457358, 0.499883,
		-0.115103, -0.811410, -0.573031,
		34.861496, 30.598812, 26.261189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694191, 30.935209, 26.469727>,  <34.942066, 31.166800, 26.662310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694191, 30.935209, 26.469727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464989, 30.746120, 26.201937>,  <35.327465, 30.632668, 26.041264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464989, 30.746120, 26.201937>,  <35.694191, 30.935209, 26.469727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464989, 30.746120, 26.201937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707952, 0.126017, -0.694927,
		0.412873, -0.872154, 0.262456,
		-0.573010, -0.472723, -0.669473,
		35.293087, 30.604303, 26.001095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156265, 30.496763, 26.080475>,  <35.694191, 30.935209, 26.469727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156265, 30.496763, 26.080475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833172, 30.538050, 25.848301>,  <35.639317, 30.562822, 25.708996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833172, 30.538050, 25.848301>,  <36.156265, 30.496763, 26.080475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833172, 30.538050, 25.848301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576168, 0.346732, -0.740140,
		0.124860, -0.932267, -0.339540,
		-0.807738, 0.103218, -0.580436,
		35.590851, 30.569016, 25.674170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395939, 30.371260, 25.399206>,  <36.156265, 30.496763, 26.080475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395939, 30.371260, 25.399206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040028, 30.533489, 25.315495>,  <35.826481, 30.630827, 25.265266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040028, 30.533489, 25.315495>,  <36.395939, 30.371260, 25.399206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040028, 30.533489, 25.315495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367242, 0.364007, -0.855940,
		-0.270969, -0.838455, -0.472831,
		-0.889781, 0.405576, -0.209281,
		35.773094, 30.655163, 25.252710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275318, 30.272530, 24.629000>,  <36.395939, 30.371260, 25.399206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275318, 30.272530, 24.629000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061268, 30.583626, 24.760912>,  <35.932838, 30.770285, 24.840059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061268, 30.583626, 24.760912>,  <36.275318, 30.272530, 24.629000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061268, 30.583626, 24.760912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245172, 0.516561, -0.820400,
		-0.808411, -0.358166, -0.467107,
		-0.535128, 0.777742, 0.329781,
		35.900730, 30.816948, 24.859846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866779, 30.446722, 24.109430>,  <36.275318, 30.272530, 24.629000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866779, 30.446722, 24.109430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867123, 30.772511, 24.341513>,  <35.867329, 30.967983, 24.480762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867123, 30.772511, 24.341513>,  <35.866779, 30.446722, 24.109430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867123, 30.772511, 24.341513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161199, 0.572505, -0.803899,
		-0.986922, 0.094222, -0.130798,
		0.000863, 0.814469, 0.580206,
		35.867382, 31.016851, 24.515574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387238, 30.974030, 23.906237>,  <35.866779, 30.446722, 24.109430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387238, 30.974030, 23.906237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681683, 31.170994, 24.091999>,  <35.858349, 31.289173, 24.203457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681683, 31.170994, 24.091999>,  <35.387238, 30.974030, 23.906237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681683, 31.170994, 24.091999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089769, 0.609034, -0.788048,
		-0.670883, 0.621779, 0.404112,
		0.736110, 0.492411, 0.464407,
		35.902515, 31.318718, 24.231321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238472, 31.707485, 23.671925>,  <35.387238, 30.974030, 23.906237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238472, 31.707485, 23.671925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610935, 31.692427, 23.816990>,  <35.834415, 31.683392, 23.904028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.610935, 31.692427, 23.816990>,  <35.238472, 31.707485, 23.671925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610935, 31.692427, 23.816990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326006, 0.531394, -0.781882,
		-0.163280, 0.846288, 0.507087,
		0.931160, -0.037648, 0.362661,
		35.890282, 31.681133, 23.925789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515331, 32.360325, 23.450811>,  <35.238472, 31.707485, 23.671925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515331, 32.360325, 23.450811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856647, 32.171925, 23.540302>,  <36.061436, 32.058884, 23.593996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856647, 32.171925, 23.540302>,  <35.515331, 32.360325, 23.450811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856647, 32.171925, 23.540302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480838, 0.544775, -0.687034,
		0.201712, 0.693816, 0.691326,
		0.853292, -0.470998, 0.223726,
		36.112637, 32.030624, 23.607420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128223, 32.937855, 23.461750>,  <35.515331, 32.360325, 23.450811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128223, 32.937855, 23.461750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285885, 32.571865, 23.427210>,  <36.380482, 32.352272, 23.406487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285885, 32.571865, 23.427210>,  <36.128223, 32.937855, 23.461750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285885, 32.571865, 23.427210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474594, 0.283099, -0.833436,
		0.787021, 0.287522, 0.545828,
		0.394155, -0.914979, -0.086348,
		36.404133, 32.297371, 23.401306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842304, 33.057911, 23.295778>,  <36.128223, 32.937855, 23.461750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842304, 33.057911, 23.295778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781570, 32.683468, 23.168875>,  <36.745129, 32.458801, 23.092731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781570, 32.683468, 23.168875>,  <36.842304, 33.057911, 23.295778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781570, 32.683468, 23.168875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486324, 0.208685, -0.848492,
		0.860485, -0.283122, 0.423564,
		-0.151836, -0.936105, -0.317260,
		36.736019, 32.402637, 23.073696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513496, 32.781284, 23.142265>,  <36.842304, 33.057911, 23.295778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513496, 32.781284, 23.142265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259007, 32.547276, 22.941082>,  <37.106312, 32.406868, 22.820372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259007, 32.547276, 22.941082>,  <37.513496, 32.781284, 23.142265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259007, 32.547276, 22.941082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464879, 0.229575, -0.855092,
		0.615716, -0.777844, 0.125904,
		-0.636224, -0.585024, -0.502957,
		37.068138, 32.371769, 22.790195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927570, 32.427166, 22.685066>,  <37.513496, 32.781284, 23.142265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927570, 32.427166, 22.685066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555897, 32.407623, 22.538521>,  <37.332893, 32.395897, 22.450594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555897, 32.407623, 22.538521>,  <37.927570, 32.427166, 22.685066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555897, 32.407623, 22.538521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322323, 0.377986, -0.867891,
		0.180881, -0.924521, -0.335473,
		-0.929187, -0.048854, -0.366365,
		37.277142, 32.392967, 22.428612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010811, 32.156136, 22.038738>,  <37.927570, 32.427166, 22.685066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010811, 32.156136, 22.038738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657158, 32.341892, 22.018127>,  <37.444965, 32.453346, 22.005760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657158, 32.341892, 22.018127>,  <38.010811, 32.156136, 22.038738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657158, 32.341892, 22.018127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237213, 0.351113, -0.905787,
		-0.402547, -0.813056, -0.420589,
		-0.884130, 0.464391, -0.051528,
		37.391918, 32.481209, 22.002668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723076, 32.130363, 21.296898>,  <38.010811, 32.156136, 22.038738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723076, 32.130363, 21.296898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505489, 32.422771, 21.461685>,  <37.374939, 32.598217, 21.560558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505489, 32.422771, 21.461685>,  <37.723076, 32.130363, 21.296898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505489, 32.422771, 21.461685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055294, 0.521120, -0.851690,
		-0.837286, -0.440508, -0.323890,
		-0.543962, 0.731018, 0.411969,
		37.342300, 32.642078, 21.585276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201244, 32.316380, 20.877903>,  <37.723076, 32.130363, 21.296898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201244, 32.316380, 20.877903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249912, 32.635754, 21.113764>,  <37.279114, 32.827377, 21.255280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249912, 32.635754, 21.113764>,  <37.201244, 32.316380, 20.877903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249912, 32.635754, 21.113764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168047, 0.568919, -0.805041,
		-0.978241, 0.197041, -0.064953,
		0.121674, 0.798440, 0.589652,
		37.286415, 32.875286, 21.290659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676346, 32.935749, 20.705276>,  <37.201244, 32.316380, 20.877903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676346, 32.935749, 20.705276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063305, 32.954571, 20.804825>,  <37.295479, 32.965862, 20.864553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063305, 32.954571, 20.804825>,  <36.676346, 32.935749, 20.705276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063305, 32.954571, 20.804825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199457, 0.464056, -0.863058,
		-0.156099, 0.884555, 0.439540,
		0.967393, 0.047053, 0.248870,
		37.353523, 32.968685, 20.879486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893280, 33.620655, 20.430893>,  <36.676346, 32.935749, 20.705276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893280, 33.620655, 20.430893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185143, 33.352978, 20.487158>,  <37.360260, 33.192371, 20.520916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.185143, 33.352978, 20.487158>,  <36.893280, 33.620655, 20.430893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185143, 33.352978, 20.487158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353615, 0.193190, -0.915223,
		0.585284, 0.717539, 0.377598,
		0.729657, -0.669190, 0.140662,
		37.404041, 33.152222, 20.529356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516865, 33.956116, 20.271637>,  <36.893280, 33.620655, 20.430893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516865, 33.956116, 20.271637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536316, 33.561977, 20.206244>,  <37.547985, 33.325493, 20.167007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.536316, 33.561977, 20.206244>,  <37.516865, 33.956116, 20.271637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.536316, 33.561977, 20.206244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145816, 0.168927, -0.974783,
		0.988116, 0.023562, 0.151894,
		0.048627, -0.985347, -0.163483,
		37.550903, 33.266373, 20.157198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186134, 33.785027, 19.939526>,  <37.516865, 33.956116, 20.271637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186134, 33.785027, 19.939526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939007, 33.483215, 19.850994>,  <37.790730, 33.302128, 19.797874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.939007, 33.483215, 19.850994>,  <38.186134, 33.785027, 19.939526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939007, 33.483215, 19.850994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375695, -0.035985, -0.926045,
		0.690763, -0.655280, 0.305705,
		-0.617819, -0.754529, -0.221328,
		37.753662, 33.256855, 19.784595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560474, 33.383255, 19.524832>,  <38.186134, 33.785027, 19.939526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560474, 33.383255, 19.524832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200813, 33.224354, 19.451384>,  <37.985016, 33.129013, 19.407314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200813, 33.224354, 19.451384>,  <38.560474, 33.383255, 19.524832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200813, 33.224354, 19.451384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253873, -0.131704, -0.958229,
		0.356472, -0.908211, 0.219272,
		-0.899153, -0.397249, -0.183621,
		37.931068, 33.105179, 19.396297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643196, 32.769123, 19.187706>,  <38.560474, 33.383255, 19.524832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643196, 32.769123, 19.187706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272778, 32.883213, 19.088837>,  <38.050526, 32.951668, 19.029514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272778, 32.883213, 19.088837>,  <38.643196, 32.769123, 19.187706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272778, 32.883213, 19.088837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158583, -0.300235, -0.940590,
		-0.342494, -0.910222, 0.232797,
		-0.926040, 0.285228, -0.247175,
		37.994965, 32.968781, 19.014685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486179, 32.246494, 18.780607>,  <38.643196, 32.769123, 19.187706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486179, 32.246494, 18.780607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261070, 32.563293, 18.685932>,  <38.126003, 32.753372, 18.629128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261070, 32.563293, 18.685932>,  <38.486179, 32.246494, 18.780607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261070, 32.563293, 18.685932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088344, -0.227067, -0.969864,
		-0.821877, -0.566724, 0.057819,
		-0.562774, 0.792001, -0.236688,
		38.092239, 32.800892, 18.614925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184097, 32.023705, 18.203157>,  <38.486179, 32.246494, 18.780607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184097, 32.023705, 18.203157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094513, 32.413383, 18.191940>,  <38.040760, 32.647190, 18.185211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094513, 32.413383, 18.191940>,  <38.184097, 32.023705, 18.203157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094513, 32.413383, 18.191940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237084, 0.026552, -0.971126,
		-0.945321, -0.224145, -0.236913,
		-0.223964, 0.974194, -0.028041,
		38.027325, 32.705643, 18.183529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754551, 32.045963, 17.633070>,  <38.184097, 32.023705, 18.203157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754551, 32.045963, 17.633070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910229, 32.404701, 17.717163>,  <38.003635, 32.619946, 17.767620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910229, 32.404701, 17.717163>,  <37.754551, 32.045963, 17.633070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910229, 32.404701, 17.717163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153820, 0.161750, -0.974770,
		-0.908224, 0.411709, -0.075001,
		0.389190, 0.896846, 0.210235,
		38.026985, 32.673756, 17.780233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325562, 32.511265, 17.245531>,  <37.754551, 32.045963, 17.633070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325562, 32.511265, 17.245531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685665, 32.671349, 17.314075>,  <37.901726, 32.767399, 17.355202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685665, 32.671349, 17.314075>,  <37.325562, 32.511265, 17.245531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685665, 32.671349, 17.314075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076204, 0.242680, -0.967108,
		-0.428633, 0.883707, 0.187977,
		0.900259, 0.400210, 0.171363,
		37.955742, 32.791412, 17.365484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533493, 32.850697, 16.664768>,  <37.325562, 32.511265, 17.245531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533493, 32.850697, 16.664768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868576, 32.947453, 16.860620>,  <38.069626, 33.005505, 16.978132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868576, 32.947453, 16.860620>,  <37.533493, 32.850697, 16.664768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868576, 32.947453, 16.860620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403227, 0.330706, -0.853254,
		-0.368318, 0.912207, 0.179498,
		0.837705, 0.241891, 0.489632,
		38.119888, 33.020020, 17.007509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616859, 33.529163, 16.597723>,  <37.533493, 32.850697, 16.664768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616859, 33.529163, 16.597723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975296, 33.366035, 16.667818>,  <38.190357, 33.268158, 16.709875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.975296, 33.366035, 16.667818>,  <37.616859, 33.529163, 16.597723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975296, 33.366035, 16.667818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324895, 0.333629, -0.884949,
		0.302432, 0.849928, 0.431459,
		0.896090, -0.407816, 0.175238,
		38.244122, 33.243690, 16.720388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045338, 34.093048, 16.371778>,  <37.616859, 33.529163, 16.597723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045338, 34.093048, 16.371778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260624, 33.756104, 16.382717>,  <38.389797, 33.553936, 16.389280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260624, 33.756104, 16.382717>,  <38.045338, 34.093048, 16.371778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260624, 33.756104, 16.382717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303555, 0.163480, -0.938685,
		0.786240, 0.513520, 0.343691,
		0.538220, -0.842361, 0.027347,
		38.422089, 33.503395, 16.390921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559368, 34.184013, 15.987591>,  <38.045338, 34.093048, 16.371778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559368, 34.184013, 15.987591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608116, 33.787659, 16.010538>,  <38.637363, 33.549847, 16.024307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608116, 33.787659, 16.010538>,  <38.559368, 34.184013, 15.987591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608116, 33.787659, 16.010538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446880, 0.003167, -0.894588,
		0.886255, 0.134657, 0.443193,
		0.121866, -0.990887, 0.057369,
		38.644676, 33.490391, 16.027748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272800, 33.991970, 15.901585>,  <38.559368, 34.184013, 15.987591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272800, 33.991970, 15.901585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046013, 33.681118, 15.792320>,  <38.909939, 33.494606, 15.726762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046013, 33.681118, 15.792320>,  <39.272800, 33.991970, 15.901585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046013, 33.681118, 15.792320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466328, -0.029451, -0.884122,
		0.679030, -0.628654, 0.379094,
		-0.566971, -0.777128, -0.273161,
		38.875923, 33.447979, 15.710372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734104, 33.558445, 15.639662>,  <39.272800, 33.991970, 15.901585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734104, 33.558445, 15.639662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383389, 33.429447, 15.496977>,  <39.172958, 33.352047, 15.411366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383389, 33.429447, 15.496977>,  <39.734104, 33.558445, 15.639662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383389, 33.429447, 15.496977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438767, -0.232927, -0.867887,
		0.196802, -0.917465, 0.345727,
		-0.876785, -0.322496, -0.356712,
		39.120354, 33.332699, 15.389963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905357, 32.919315, 15.301975>,  <39.734104, 33.558445, 15.639662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905357, 32.919315, 15.301975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546574, 33.026100, 15.161009>,  <39.331303, 33.090172, 15.076428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.546574, 33.026100, 15.161009>,  <39.905357, 32.919315, 15.301975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546574, 33.026100, 15.161009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365713, 0.000091, -0.930728,
		-0.248441, -0.963706, -0.097715,
		-0.896957, 0.266966, -0.352417,
		39.277485, 33.106190, 15.055284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554932, 32.350079, 14.824888>,  <39.905357, 32.919315, 15.301975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554932, 32.350079, 14.824888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417675, 32.713608, 14.729987>,  <39.335320, 32.931725, 14.673047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417675, 32.713608, 14.729987>,  <39.554932, 32.350079, 14.824888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417675, 32.713608, 14.729987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119399, -0.208335, -0.970742,
		-0.931663, -0.361431, -0.037024,
		-0.343143, 0.908826, -0.237252,
		39.314732, 32.986256, 14.658812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611633, 31.863335, 14.327322>,  <39.554932, 32.350079, 14.824888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611633, 31.863335, 14.327322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965191, 31.681744, 14.372280>,  <40.177326, 31.572788, 14.399255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965191, 31.681744, 14.372280>,  <39.611633, 31.863335, 14.327322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965191, 31.681744, 14.372280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374896, -0.544085, 0.750616,
		-0.279610, -0.705603, -0.651109,
		0.883896, -0.453977, 0.112396,
		40.230358, 31.545549, 14.405999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481770, 31.222593, 14.744492>,  <39.611633, 31.863335, 14.327322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481770, 31.222593, 14.744492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879524, 31.246344, 14.779521>,  <40.118176, 31.260593, 14.800538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879524, 31.246344, 14.779521>,  <39.481770, 31.222593, 14.744492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879524, 31.246344, 14.779521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033248, -0.610401, 0.791394,
		0.100444, -0.789864, -0.605001,
		0.994387, 0.059375, 0.087573,
		40.177841, 31.264156, 14.805793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713631, 30.578476, 15.056120>,  <39.481770, 31.222593, 14.744492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713631, 30.578476, 15.056120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037376, 30.799692, 15.135188>,  <40.231625, 30.932421, 15.182629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037376, 30.799692, 15.135188>,  <39.713631, 30.578476, 15.056120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037376, 30.799692, 15.135188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073067, -0.239137, 0.968233,
		0.582740, -0.798099, -0.153141,
		0.809367, 0.553038, 0.197669,
		40.280186, 30.965603, 15.194489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300919, 30.152939, 15.298387>,  <39.713631, 30.578476, 15.056120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300919, 30.152939, 15.298387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365654, 30.519960, 15.443660>,  <40.404495, 30.740173, 15.530824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365654, 30.519960, 15.443660>,  <40.300919, 30.152939, 15.298387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365654, 30.519960, 15.443660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006864, -0.369074, 0.929375,
		0.986793, -0.147918, -0.066030,
		0.161841, 0.917554, 0.363184,
		40.414207, 30.795227, 15.552615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642975, 30.021971, 15.916424>,  <40.300919, 30.152939, 15.298387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642975, 30.021971, 15.916424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528294, 30.398125, 15.989614>,  <40.459484, 30.623817, 16.033527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528294, 30.398125, 15.989614>,  <40.642975, 30.021971, 15.916424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528294, 30.398125, 15.989614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030066, -0.199730, 0.979389,
		0.957546, 0.275297, 0.085538,
		-0.286708, 0.940382, 0.182974,
		40.442280, 30.680239, 16.044506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075081, 30.382385, 16.396660>,  <40.642975, 30.021971, 15.916424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075081, 30.382385, 16.396660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728554, 30.578981, 16.432266>,  <40.520638, 30.696939, 16.453630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728554, 30.578981, 16.432266>,  <41.075081, 30.382385, 16.396660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728554, 30.578981, 16.432266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032794, -0.121862, 0.992005,
		0.498409, 0.862315, 0.089453,
		-0.866321, 0.491491, 0.089016,
		40.468658, 30.726429, 16.458971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139702, 30.734053, 17.055658>,  <41.075081, 30.382385, 16.396660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139702, 30.734053, 17.055658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753315, 30.773853, 16.960148>,  <40.521484, 30.797733, 16.902842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.753315, 30.773853, 16.960148>,  <41.139702, 30.734053, 17.055658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753315, 30.773853, 16.960148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242405, -0.025960, 0.969828,
		0.090301, 0.994699, 0.049196,
		-0.965963, 0.099502, -0.238776,
		40.463528, 30.803703, 16.888515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814690, 31.360186, 17.380466>,  <41.139702, 30.734053, 17.055658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814690, 31.360186, 17.380466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529076, 31.089211, 17.309774>,  <40.357708, 30.926624, 17.267359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529076, 31.089211, 17.309774>,  <40.814690, 31.360186, 17.380466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529076, 31.089211, 17.309774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164751, -0.082757, 0.982857,
		-0.680451, 0.730909, -0.052517,
		-0.714033, -0.677439, -0.176730,
		40.314865, 30.885979, 17.256756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240864, 31.521568, 17.699869>,  <40.814690, 31.360186, 17.380466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240864, 31.521568, 17.699869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141457, 31.137985, 17.645258>,  <40.081810, 30.907835, 17.612492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.141457, 31.137985, 17.645258>,  <40.240864, 31.521568, 17.699869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141457, 31.137985, 17.645258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193551, -0.088945, 0.977050,
		-0.949092, 0.269243, -0.163503,
		-0.248521, -0.958956, -0.136530,
		40.066902, 30.850298, 17.604300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599884, 31.612690, 17.966908>,  <40.240864, 31.521568, 17.699869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599884, 31.612690, 17.966908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733341, 31.235611, 17.967255>,  <39.813416, 31.009363, 17.967463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.733341, 31.235611, 17.967255>,  <39.599884, 31.612690, 17.966908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733341, 31.235611, 17.967255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424542, -0.149434, 0.892991,
		-0.841693, -0.298308, -0.450073,
		0.333643, -0.942699, 0.000867,
		39.833435, 30.952801, 17.967514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095795, 31.163361, 18.229782>,  <39.599884, 31.612690, 17.966908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095795, 31.163361, 18.229782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425491, 30.939871, 18.266548>,  <39.623310, 30.805777, 18.288607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425491, 30.939871, 18.266548>,  <39.095795, 31.163361, 18.229782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425491, 30.939871, 18.266548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189480, -0.119195, 0.974623,
		-0.533592, -0.820742, -0.204113,
		0.824243, -0.558726, 0.091913,
		39.672764, 30.772253, 18.294123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856106, 30.528175, 18.482065>,  <39.095795, 31.163361, 18.229782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856106, 30.528175, 18.482065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239193, 30.584280, 18.582548>,  <39.469044, 30.617943, 18.642838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.239193, 30.584280, 18.582548>,  <38.856106, 30.528175, 18.482065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239193, 30.584280, 18.582548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216639, -0.222989, 0.950444,
		0.189327, -0.964677, -0.183174,
		0.957717, 0.140262, 0.251205,
		39.526508, 30.626358, 18.657909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050842, 30.017834, 18.984463>,  <38.856106, 30.528175, 18.482065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050842, 30.017834, 18.984463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300549, 30.323555, 19.049128>,  <39.450371, 30.506989, 19.087927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.300549, 30.323555, 19.049128>,  <39.050842, 30.017834, 18.984463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300549, 30.323555, 19.049128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203388, -0.040794, 0.978248,
		0.754273, -0.643566, 0.129984,
		0.624264, 0.764304, 0.161663,
		39.487827, 30.552845, 19.097626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382977, 29.949158, 19.574455>,  <39.050842, 30.017834, 18.984463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382977, 29.949158, 19.574455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515835, 30.324907, 19.540386>,  <39.595551, 30.550356, 19.519945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515835, 30.324907, 19.540386>,  <39.382977, 29.949158, 19.574455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515835, 30.324907, 19.540386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201353, 0.017604, 0.979360,
		0.921484, -0.342445, -0.183298,
		0.332150, 0.939373, -0.085174,
		39.615479, 30.606720, 19.514833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836800, 29.981359, 20.158272>,  <39.382977, 29.949158, 19.574455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836800, 29.981359, 20.158272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766232, 30.364378, 20.067074>,  <39.723892, 30.594189, 20.012356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766232, 30.364378, 20.067074>,  <39.836800, 29.981359, 20.158272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766232, 30.364378, 20.067074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026433, 0.226934, 0.973552,
		0.983960, 0.177782, -0.014725,
		-0.176422, 0.957546, -0.227993,
		39.713306, 30.651642, 19.998676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280552, 30.431448, 20.642485>,  <39.836800, 29.981359, 20.158272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280552, 30.431448, 20.642485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986580, 30.666904, 20.507795>,  <39.810196, 30.808178, 20.426983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986580, 30.666904, 20.507795>,  <40.280552, 30.431448, 20.642485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986580, 30.666904, 20.507795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005413, 0.491426, 0.870902,
		0.678123, 0.641874, -0.357977,
		-0.734929, 0.588641, -0.336722,
		39.766102, 30.843496, 20.406778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451279, 31.005804, 20.954762>,  <40.280552, 30.431448, 20.642485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451279, 31.005804, 20.954762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069725, 31.040602, 20.839848>,  <39.840794, 31.061480, 20.770899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.069725, 31.040602, 20.839848>,  <40.451279, 31.005804, 20.954762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069725, 31.040602, 20.839848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225834, 0.422482, 0.877786,
		0.197733, 0.902187, -0.383354,
		-0.953887, 0.086993, -0.287283,
		39.783558, 31.066700, 20.753662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224644, 31.579796, 21.308872>,  <40.451279, 31.005804, 20.954762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224644, 31.579796, 21.308872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883869, 31.397505, 21.205715>,  <39.679405, 31.288130, 21.143822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883869, 31.397505, 21.205715>,  <40.224644, 31.579796, 21.308872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883869, 31.397505, 21.205715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400054, 0.248685, 0.882107,
		-0.337867, 0.854674, -0.394180,
		-0.851941, -0.455728, -0.257893,
		39.628288, 31.260786, 21.128347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646870, 32.002724, 21.648979>,  <40.224644, 31.579796, 21.308872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646870, 32.002724, 21.648979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514027, 31.631186, 21.583307>,  <39.434322, 31.408262, 21.543903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514027, 31.631186, 21.583307>,  <39.646870, 32.002724, 21.648979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514027, 31.631186, 21.583307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479712, 0.016455, 0.877272,
		-0.812146, 0.370108, -0.451042,
		-0.332107, -0.928843, -0.164182,
		39.414394, 31.352533, 21.534052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993465, 31.997124, 21.907198>,  <39.646870, 32.002724, 21.648979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993465, 31.997124, 21.907198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118706, 31.617411, 21.918766>,  <39.193848, 31.389584, 21.925707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118706, 31.617411, 21.918766>,  <38.993465, 31.997124, 21.907198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118706, 31.617411, 21.918766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363642, -0.091698, 0.927015,
		-0.877345, -0.300761, -0.373909,
		0.313097, -0.949281, 0.028919,
		39.212635, 31.332626, 21.927443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478287, 31.601208, 22.170795>,  <38.993465, 31.997124, 21.907198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478287, 31.601208, 22.170795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781300, 31.348757, 22.237522>,  <38.963108, 31.197287, 22.277557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781300, 31.348757, 22.237522>,  <38.478287, 31.601208, 22.170795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781300, 31.348757, 22.237522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258438, -0.055282, 0.964445,
		-0.599465, -0.773708, -0.204985,
		0.757530, -0.631126, 0.166815,
		39.008560, 31.159418, 22.287567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140759, 31.055885, 22.587442>,  <38.478287, 31.601208, 22.170795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140759, 31.055885, 22.587442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530994, 30.984997, 22.639322>,  <38.765137, 30.942463, 22.670450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.530994, 30.984997, 22.639322>,  <38.140759, 31.055885, 22.587442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530994, 30.984997, 22.639322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155573, -0.140856, 0.977730,
		-0.155025, -0.974036, -0.164991,
		0.975584, -0.177241, 0.129697,
		38.823669, 30.931829, 22.678232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228691, 30.372145, 22.872761>,  <38.140759, 31.055885, 22.587442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228691, 30.372145, 22.872761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544624, 30.588140, 22.989082>,  <38.734184, 30.717739, 23.058876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544624, 30.588140, 22.989082>,  <38.228691, 30.372145, 22.872761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544624, 30.588140, 22.989082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162911, -0.272403, 0.948291,
		0.591285, -0.796371, -0.127183,
		0.789837, 0.539991, 0.290806,
		38.781574, 30.750137, 23.076324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576996, 29.932514, 23.355370>,  <38.228691, 30.372145, 22.872761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576996, 29.932514, 23.355370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686157, 30.306192, 23.447285>,  <38.751652, 30.530399, 23.502434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686157, 30.306192, 23.447285>,  <38.576996, 29.932514, 23.355370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686157, 30.306192, 23.447285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137507, -0.198524, 0.970402,
		0.952165, -0.296420, 0.074281,
		0.272900, 0.934197, 0.229788,
		38.768028, 30.586451, 23.516220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995823, 29.867212, 23.971106>,  <38.576996, 29.932514, 23.355370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995823, 29.867212, 23.971106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908638, 30.257563, 23.966082>,  <38.856327, 30.491774, 23.963066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908638, 30.257563, 23.966082>,  <38.995823, 29.867212, 23.971106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908638, 30.257563, 23.966082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272435, -0.048479, 0.960952,
		0.937161, 0.212875, 0.276430,
		-0.217963, 0.975876, -0.012562,
		38.843250, 30.550325, 23.962313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270927, 30.113749, 24.561476>,  <38.995823, 29.867212, 23.971106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270927, 30.113749, 24.561476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021938, 30.413797, 24.472178>,  <38.872543, 30.593826, 24.418598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021938, 30.413797, 24.472178>,  <39.270927, 30.113749, 24.561476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021938, 30.413797, 24.472178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307422, 0.027969, 0.951162,
		0.719733, 0.660706, 0.213194,
		-0.622476, 0.750124, -0.223245,
		38.835197, 30.638834, 24.405205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459721, 30.660072, 25.025478>,  <39.270927, 30.113749, 24.561476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459721, 30.660072, 25.025478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077381, 30.728251, 24.929722>,  <38.847977, 30.769157, 24.872267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077381, 30.728251, 24.929722>,  <39.459721, 30.660072, 25.025478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077381, 30.728251, 24.929722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237739, 0.030355, 0.970855,
		0.172742, 0.984900, 0.011507,
		-0.955845, 0.170443, -0.239393,
		38.790627, 30.779383, 24.857904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191750, 31.258434, 25.423485>,  <39.459721, 30.660072, 25.025478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191750, 31.258434, 25.423485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849800, 31.079794, 25.317852>,  <38.644630, 30.972609, 25.254473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849800, 31.079794, 25.317852>,  <39.191750, 31.258434, 25.423485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849800, 31.079794, 25.317852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295714, 0.001177, 0.955276,
		-0.426317, 0.894732, -0.133073,
		-0.854872, -0.446602, -0.264083,
		38.593338, 30.945814, 25.238626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706631, 31.545643, 25.799631>,  <39.191750, 31.258434, 25.423485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706631, 31.545643, 25.799631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539066, 31.196087, 25.700975>,  <38.438526, 30.986353, 25.641783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539066, 31.196087, 25.700975>,  <38.706631, 31.545643, 25.799631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539066, 31.196087, 25.700975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388965, -0.072738, 0.918377,
		-0.820499, 0.480653, -0.309441,
		-0.418912, -0.873889, -0.246638,
		38.413391, 30.933920, 25.626984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224472, 31.485321, 26.272409>,  <38.706631, 31.545643, 25.799631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224472, 31.485321, 26.272409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219387, 31.107904, 26.140005>,  <38.216335, 30.881454, 26.060562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219387, 31.107904, 26.140005>,  <38.224472, 31.485321, 26.272409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219387, 31.107904, 26.140005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366808, -0.303559, 0.879377,
		-0.930210, 0.132595, -0.342240,
		-0.012711, -0.943541, -0.331010,
		38.215572, 30.824842, 26.040703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547630, 31.297365, 26.290112>,  <38.224472, 31.485321, 26.272409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547630, 31.297365, 26.290112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749966, 30.954023, 26.324404>,  <37.871368, 30.748018, 26.344978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749966, 30.954023, 26.324404>,  <37.547630, 31.297365, 26.290112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749966, 30.954023, 26.324404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596253, -0.276091, 0.753827,
		-0.623384, -0.432433, -0.651456,
		0.505841, -0.858356, 0.085729,
		37.901718, 30.696516, 26.350122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021729, 30.806232, 26.410780>,  <37.547630, 31.297365, 26.290112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021729, 30.806232, 26.410780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345638, 30.608770, 26.537634>,  <37.539982, 30.490294, 26.613747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.345638, 30.608770, 26.537634>,  <37.021729, 30.806232, 26.410780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345638, 30.608770, 26.537634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524157, -0.365719, 0.769096,
		-0.263683, -0.789023, -0.554901,
		0.809772, -0.493653, 0.317138,
		37.588570, 30.460674, 26.632774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793865, 30.023491, 26.538124>,  <37.021729, 30.806232, 26.410780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793865, 30.023491, 26.538124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129040, 30.091908, 26.745434>,  <37.330143, 30.132957, 26.869820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129040, 30.091908, 26.745434>,  <36.793865, 30.023491, 26.538124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129040, 30.091908, 26.745434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327001, -0.602955, 0.727678,
		0.436959, -0.779224, -0.449307,
		0.837936, 0.171042, 0.518274,
		37.380421, 30.143221, 26.900915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997219, 29.344538, 26.885914>,  <36.793865, 30.023491, 26.538124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997219, 29.344538, 26.885914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165638, 29.639187, 27.097612>,  <37.266689, 29.815977, 27.224632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165638, 29.639187, 27.097612>,  <36.997219, 29.344538, 26.885914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165638, 29.639187, 27.097612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290917, -0.442991, 0.848013,
		0.859118, -0.511024, 0.027774,
		0.421052, 0.736623, 0.529247,
		37.291954, 29.860174, 27.256386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329250, 29.022989, 27.359573>,  <36.997219, 29.344538, 26.885914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329250, 29.022989, 27.359573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355427, 29.396633, 27.499949>,  <37.371132, 29.620819, 27.584173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355427, 29.396633, 27.499949>,  <37.329250, 29.022989, 27.359573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355427, 29.396633, 27.499949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328874, -0.311853, 0.891397,
		0.942103, -0.173750, 0.286796,
		0.065442, 0.934108, 0.350940,
		37.375061, 29.676867, 27.605230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797436, 29.059875, 27.893080>,  <37.329250, 29.022989, 27.359573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797436, 29.059875, 27.893080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550426, 29.371019, 27.939720>,  <37.402222, 29.557707, 27.967705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550426, 29.371019, 27.939720>,  <37.797436, 29.059875, 27.893080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550426, 29.371019, 27.939720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124005, -0.242671, 0.962150,
		0.776714, 0.579693, 0.246315,
		-0.617525, 0.777861, 0.116601,
		37.365170, 29.604378, 27.974701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979324, 29.368851, 28.499525>,  <37.797436, 29.059875, 27.893080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979324, 29.368851, 28.499525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598473, 29.482475, 28.454351>,  <37.369961, 29.550650, 28.427248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598473, 29.482475, 28.454351>,  <37.979324, 29.368851, 28.499525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598473, 29.482475, 28.454351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239531, -0.463756, 0.852969,
		0.189922, 0.839190, 0.509598,
		-0.952132, 0.284062, -0.112935,
		37.312832, 29.567694, 28.420471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878056, 29.651525, 29.107250>,  <37.979324, 29.368851, 28.499525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878056, 29.651525, 29.107250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516396, 29.563581, 28.960735>,  <37.299400, 29.510815, 28.872826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516396, 29.563581, 28.960735>,  <37.878056, 29.651525, 29.107250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516396, 29.563581, 28.960735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266367, -0.380206, 0.885716,
		-0.333998, 0.898390, 0.285201,
		-0.904154, -0.219860, -0.366289,
		37.245148, 29.497623, 28.850849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490608, 29.886475, 29.594313>,  <37.878056, 29.651525, 29.107250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490608, 29.886475, 29.594313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274712, 29.627520, 29.379066>,  <37.145176, 29.472147, 29.249918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274712, 29.627520, 29.379066>,  <37.490608, 29.886475, 29.594313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274712, 29.627520, 29.379066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508134, -0.259100, 0.821382,
		-0.671180, 0.716766, -0.189114,
		-0.539739, -0.647390, -0.538115,
		37.112789, 29.433302, 29.217632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950455, 29.666403, 30.010180>,  <37.490608, 29.886475, 29.594313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950455, 29.666403, 30.010180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943516, 29.371479, 29.740047>,  <36.939354, 29.194525, 29.577969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943516, 29.371479, 29.740047>,  <36.950455, 29.666403, 30.010180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943516, 29.371479, 29.740047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269014, -0.647085, 0.713381,
		-0.962980, 0.194049, -0.187121,
		-0.017348, -0.737310, -0.675331,
		36.938313, 29.150286, 29.537449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297260, 29.250921, 29.965626>,  <36.950455, 29.666403, 30.010180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297260, 29.250921, 29.965626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673641, 29.115625, 29.959923>,  <36.899471, 29.034449, 29.956501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673641, 29.115625, 29.959923>,  <36.297260, 29.250921, 29.965626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673641, 29.115625, 29.959923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125613, -0.387927, 0.913090,
		-0.314373, -0.857384, -0.407508,
		0.940952, -0.338240, -0.014256,
		36.955929, 29.014154, 29.955647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572781, 28.515081, 29.874922>,  <36.297260, 29.250921, 29.965626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572781, 28.515081, 29.874922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753307, 28.758757, 30.135754>,  <36.861622, 28.904963, 30.292252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753307, 28.758757, 30.135754>,  <36.572781, 28.515081, 29.874922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753307, 28.758757, 30.135754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192857, -0.646875, 0.737807,
		0.871277, -0.458739, -0.174456,
		0.451312, 0.609190, 0.652078,
		36.888702, 28.941513, 30.331377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857700, 27.942417, 29.381397>,  <36.572781, 28.515081, 29.874922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857700, 27.942417, 29.381397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213943, 27.889376, 29.207396>,  <37.427689, 27.857552, 29.102995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213943, 27.889376, 29.207396>,  <36.857700, 27.942417, 29.381397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213943, 27.889376, 29.207396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451827, 0.149461, 0.879496,
		-0.051608, -0.979836, 0.193026,
		0.890611, -0.132604, -0.435003,
		37.481129, 27.849594, 29.076895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256828, 27.344812, 29.695175>,  <36.857700, 27.942417, 29.381397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256828, 27.344812, 29.695175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522785, 27.603085, 29.544964>,  <37.682358, 27.758047, 29.454838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522785, 27.603085, 29.544964>,  <37.256828, 27.344812, 29.695175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522785, 27.603085, 29.544964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324217, 0.203447, 0.923847,
		0.672909, -0.736008, -0.074071,
		0.664889, 0.645679, -0.375528,
		37.722252, 27.796789, 29.432306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960876, 27.100113, 29.944498>,  <37.256828, 27.344812, 29.695175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960876, 27.100113, 29.944498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873642, 27.486015, 29.885599>,  <37.821301, 27.717556, 29.850260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873642, 27.486015, 29.885599>,  <37.960876, 27.100113, 29.944498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873642, 27.486015, 29.885599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115906, 0.175417, 0.977648,
		0.969021, 0.196149, -0.150078,
		-0.218091, 0.964756, -0.147248,
		37.808216, 27.775442, 29.841425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445515, 27.465605, 30.114193>,  <37.960876, 27.100113, 29.944498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445515, 27.465605, 30.114193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087860, 27.608433, 30.222288>,  <37.873268, 27.694130, 30.287146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087860, 27.608433, 30.222288>,  <38.445515, 27.465605, 30.114193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087860, 27.608433, 30.222288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285880, -0.009332, 0.958220,
		0.344671, 0.934032, -0.093735,
		-0.894133, 0.357068, 0.270237,
		37.819618, 27.715553, 30.303360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492199, 28.160183, 30.252886>,  <38.445515, 27.465605, 30.114193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492199, 28.160183, 30.252886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447807, 28.251919, 30.639685>,  <38.421173, 28.306961, 30.871765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447807, 28.251919, 30.639685>,  <38.492199, 28.160183, 30.252886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447807, 28.251919, 30.639685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903435, -0.382158, 0.194321,
		0.414113, 0.895186, -0.164782,
		-0.110981, 0.229341, 0.966999,
		38.414513, 28.320721, 30.929785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000744, 28.670404, 30.179907>,  <38.492199, 28.160183, 30.252886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000744, 28.670404, 30.179907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827541, 28.624657, 29.822264>,  <38.723621, 28.597208, 29.607677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.827541, 28.624657, 29.822264>,  <39.000744, 28.670404, 30.179907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827541, 28.624657, 29.822264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177447, 0.961692, -0.208951,
		0.883754, -0.249134, -0.396122,
		-0.433004, -0.114371, -0.894107,
		38.697639, 28.590345, 29.554031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440384, 28.803135, 29.576916>,  <39.000744, 28.670404, 30.179907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440384, 28.803135, 29.576916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056152, 28.894737, 29.513868>,  <38.825615, 28.949699, 29.476040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.056152, 28.894737, 29.513868>,  <39.440384, 28.803135, 29.576916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056152, 28.894737, 29.513868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266653, 0.919323, -0.289380,
		0.078632, -0.320002, -0.944148,
		-0.960580, 0.229006, -0.157618,
		38.767979, 28.963438, 29.466583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516788, 29.259722, 29.046335>,  <39.440384, 28.803135, 29.576916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516788, 29.259722, 29.046335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159306, 29.302210, 29.220690>,  <38.944817, 29.327703, 29.325302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159306, 29.302210, 29.220690>,  <39.516788, 29.259722, 29.046335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159306, 29.302210, 29.220690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072464, 0.992988, -0.093406,
		-0.442751, -0.051892, -0.895142,
		-0.893712, 0.106221, 0.435886,
		38.891193, 29.334076, 29.351456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268436, 29.989492, 28.781572>,  <39.516788, 29.259722, 29.046335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268436, 29.989492, 28.781572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055759, 29.863152, 29.095907>,  <38.928154, 29.787348, 29.284508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055759, 29.863152, 29.095907>,  <39.268436, 29.989492, 28.781572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055759, 29.863152, 29.095907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166893, 0.948738, 0.268407,
		-0.830330, 0.011559, -0.557152,
		-0.531694, -0.315851, 0.785837,
		38.896252, 29.768396, 29.331657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569027, 30.227209, 28.729704>,  <39.268436, 29.989492, 28.781572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569027, 30.227209, 28.729704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702499, 30.188349, 29.104771>,  <38.782581, 30.165033, 29.329811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.702499, 30.188349, 29.104771>,  <38.569027, 30.227209, 28.729704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702499, 30.188349, 29.104771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035590, 0.995265, 0.090452,
		-0.942014, 0.003189, 0.335559,
		0.333681, -0.097149, 0.937667,
		38.802605, 30.159204, 29.386070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159714, 30.716200, 29.224298>,  <38.569027, 30.227209, 28.729704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159714, 30.716200, 29.224298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548088, 30.660116, 29.301884>,  <38.781113, 30.626467, 29.348434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548088, 30.660116, 29.301884>,  <38.159714, 30.716200, 29.224298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548088, 30.660116, 29.301884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122790, 0.987468, 0.099144,
		-0.205433, -0.072446, 0.975986,
		0.970937, -0.140209, 0.193963,
		38.839371, 30.618053, 29.360073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364189, 31.235270, 29.645676>,  <38.159714, 30.716200, 29.224298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364189, 31.235270, 29.645676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720295, 31.087929, 29.538540>,  <38.933960, 30.999525, 29.474258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720295, 31.087929, 29.538540>,  <38.364189, 31.235270, 29.645676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720295, 31.087929, 29.538540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400296, 0.913358, 0.074430,
		0.217218, -0.173479, 0.960584,
		0.890269, -0.368351, -0.267841,
		38.987377, 30.977423, 29.458187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863689, 31.630318, 30.026690>,  <38.364189, 31.235270, 29.645676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863689, 31.630318, 30.026690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100426, 31.466812, 29.748802>,  <39.242470, 31.368710, 29.582069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100426, 31.466812, 29.748802>,  <38.863689, 31.630318, 30.026690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100426, 31.466812, 29.748802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582896, 0.812334, 0.018613,
		0.556734, -0.415964, 0.719042,
		0.591845, -0.408764, -0.694717,
		39.277981, 31.344183, 29.540386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524525, 31.902504, 30.251371>,  <38.863689, 31.630318, 30.026690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524525, 31.902504, 30.251371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622856, 31.784403, 29.882071>,  <39.681854, 31.713541, 29.660490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.622856, 31.784403, 29.882071>,  <39.524525, 31.902504, 30.251371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622856, 31.784403, 29.882071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560821, 0.820194, -0.112971,
		0.790600, -0.490007, 0.367212,
		0.245828, -0.295255, -0.923251,
		39.696606, 31.695826, 29.605095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282310, 31.950695, 30.197830>,  <39.524525, 31.902504, 30.251371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282310, 31.950695, 30.197830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104412, 31.968714, 29.840021>,  <39.997673, 31.979525, 29.625336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104412, 31.968714, 29.840021>,  <40.282310, 31.950695, 30.197830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104412, 31.968714, 29.840021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589095, 0.767017, -0.254265,
		0.674661, -0.640043, -0.367664,
		-0.444746, 0.045046, -0.894523,
		39.970989, 31.982227, 29.571665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790466, 31.939369, 29.735640>,  <40.282310, 31.950695, 30.197830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790466, 31.939369, 29.735640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488800, 32.119663, 29.544611>,  <40.307800, 32.227840, 29.429995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488800, 32.119663, 29.544611>,  <40.790466, 31.939369, 29.735640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488800, 32.119663, 29.544611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621084, 0.725783, -0.295792,
		0.213289, -0.519687, -0.827305,
		-0.754163, 0.450737, -0.477571,
		40.262550, 32.254883, 29.401340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093166, 32.163742, 29.118555>,  <40.790466, 31.939369, 29.735640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093166, 32.163742, 29.118555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763008, 32.379990, 29.183611>,  <40.564915, 32.509739, 29.222645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763008, 32.379990, 29.183611>,  <41.093166, 32.163742, 29.118555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763008, 32.379990, 29.183611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532351, 0.841222, -0.094590,
		-0.187953, 0.008507, -0.982141,
		-0.825394, 0.540623, 0.162639,
		40.515388, 32.542175, 29.232403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907963, 32.577217, 28.489714>,  <41.093166, 32.163742, 29.118555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907963, 32.577217, 28.489714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799805, 32.702465, 28.853876>,  <40.734909, 32.777615, 29.072374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799805, 32.702465, 28.853876>,  <40.907963, 32.577217, 28.489714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799805, 32.702465, 28.853876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384819, 0.901958, -0.195923,
		-0.882496, 0.297365, -0.364382,
		-0.270397, 0.313123, 0.910406,
		40.718685, 32.796402, 29.126999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414551, 33.175762, 28.480825>,  <40.907963, 32.577217, 28.489714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414551, 33.175762, 28.480825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609138, 33.206448, 28.828955>,  <40.725891, 33.224857, 29.037832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.609138, 33.206448, 28.828955>,  <40.414551, 33.175762, 28.480825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609138, 33.206448, 28.828955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196272, 0.961083, -0.194415,
		-0.851368, 0.265397, 0.452480,
		0.486468, 0.076709, 0.870325,
		40.755077, 33.229462, 29.090052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916534, 33.665787, 28.162373>,  <40.414551, 33.175762, 28.480825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916534, 33.665787, 28.162373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854660, 34.031628, 28.311810>,  <40.817535, 34.251133, 28.401472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.854660, 34.031628, 28.311810>,  <40.916534, 33.665787, 28.162373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854660, 34.031628, 28.311810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368594, -0.404268, 0.837082,
		0.916630, -0.008216, 0.399653,
		-0.154690, 0.914603, 0.373592,
		40.808254, 34.306007, 28.423887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358192, 33.735645, 28.830297>,  <40.916534, 33.665787, 28.162373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358192, 33.735645, 28.830297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011826, 33.934231, 28.805931>,  <40.804005, 34.053383, 28.791311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011826, 33.934231, 28.805931>,  <41.358192, 33.735645, 28.830297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011826, 33.934231, 28.805931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415658, -0.646474, 0.639765,
		0.278242, 0.579302, 0.766153,
		-0.865916, 0.496467, -0.060916,
		40.752052, 34.083172, 28.787657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007107, 33.842918, 29.625208>,  <41.358192, 33.735645, 28.830297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007107, 33.842918, 29.625208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766926, 33.829025, 29.305645>,  <40.622818, 33.820690, 29.113907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766926, 33.829025, 29.305645>,  <41.007107, 33.842918, 29.625208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766926, 33.829025, 29.305645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473242, -0.789886, 0.390029,
		-0.644591, 0.612269, 0.457852,
		-0.600453, -0.034734, -0.798905,
		40.586788, 33.818604, 29.065973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368088, 33.556904, 29.950161>,  <41.007107, 33.842918, 29.625208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368088, 33.556904, 29.950161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373783, 33.527447, 29.551289>,  <40.377201, 33.509773, 29.311964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373783, 33.527447, 29.551289>,  <40.368088, 33.556904, 29.950161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373783, 33.527447, 29.551289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547377, -0.835151, 0.053859,
		-0.836765, 0.545069, -0.052202,
		0.014240, -0.073642, -0.997183,
		40.378056, 33.505356, 29.252134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712593, 33.466515, 29.775230>,  <40.368088, 33.556904, 29.950161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712593, 33.466515, 29.775230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961300, 33.297806, 29.511255>,  <40.110523, 33.196579, 29.352871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961300, 33.297806, 29.511255>,  <39.712593, 33.466515, 29.775230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961300, 33.297806, 29.511255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558571, -0.829448, 0.003845,
		-0.549005, 0.366231, -0.751311,
		0.621765, -0.421771, -0.659937,
		40.147831, 33.171276, 29.313274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378239, 33.278698, 29.152208>,  <39.712593, 33.466515, 29.775230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378239, 33.278698, 29.152208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703308, 33.048626, 29.189564>,  <39.898350, 32.910583, 29.211977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703308, 33.048626, 29.189564>,  <39.378239, 33.278698, 29.152208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703308, 33.048626, 29.189564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578095, -0.815953, 0.005176,
		0.073222, -0.058193, -0.995616,
		0.812678, -0.575182, 0.093387,
		39.947113, 32.876072, 29.217579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204151, 32.740044, 28.783585>,  <39.378239, 33.278698, 29.152208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204151, 32.740044, 28.783585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536034, 32.578365, 28.937584>,  <39.735161, 32.481358, 29.029984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536034, 32.578365, 28.937584>,  <39.204151, 32.740044, 28.783585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536034, 32.578365, 28.937584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458285, -0.887014, 0.056406,
		0.318700, -0.223240, -0.921192,
		0.829702, -0.404192, 0.384999,
		39.784943, 32.457108, 29.053083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425976, 32.120674, 28.398512>,  <39.204151, 32.740044, 28.783585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425976, 32.120674, 28.398512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611462, 32.074841, 28.749929>,  <39.722755, 32.047340, 28.960779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611462, 32.074841, 28.749929>,  <39.425976, 32.120674, 28.398512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611462, 32.074841, 28.749929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366382, -0.927644, 0.072399,
		0.806679, -0.355454, -0.472146,
		0.463718, -0.114583, 0.878542,
		39.750576, 32.040466, 29.013493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836090, 31.528538, 28.346561>,  <39.425976, 32.120674, 28.398512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836090, 31.528538, 28.346561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801109, 31.560688, 28.743731>,  <39.780121, 31.579977, 28.982031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801109, 31.560688, 28.743731>,  <39.836090, 31.528538, 28.346561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801109, 31.560688, 28.743731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217665, -0.974197, 0.059688,
		0.972098, -0.210904, 0.102685,
		-0.087448, 0.080373, 0.992922,
		39.774876, 31.584801, 29.041607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071701, 30.912971, 28.629288>,  <39.836090, 31.528538, 28.346561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071701, 30.912971, 28.629288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822258, 31.039429, 28.915272>,  <39.672592, 31.115303, 29.086863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.822258, 31.039429, 28.915272>,  <40.071701, 30.912971, 28.629288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.822258, 31.039429, 28.915272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362531, -0.927240, 0.093799,
		0.692595, -0.200702, 0.692843,
		-0.623606, 0.316141, 0.714962,
		39.635178, 31.134272, 29.129761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188686, 30.509346, 29.175516>,  <40.071701, 30.912971, 28.629288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188686, 30.509346, 29.175516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817871, 30.646307, 29.236643>,  <39.595383, 30.728483, 29.273319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.817871, 30.646307, 29.236643>,  <40.188686, 30.509346, 29.175516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817871, 30.646307, 29.236643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312153, -0.930554, 0.191389,
		0.207735, 0.129724, 0.969545,
		-0.927042, 0.342404, 0.152815,
		39.539757, 30.749029, 29.282488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960262, 30.341122, 29.857452>,  <40.188686, 30.509346, 29.175516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960262, 30.341122, 29.857452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614758, 30.403051, 29.665640>,  <39.407455, 30.440208, 29.550552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.614758, 30.403051, 29.665640>,  <39.960262, 30.341122, 29.857452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614758, 30.403051, 29.665640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280608, -0.938211, 0.202533,
		-0.418544, 0.309500, 0.853833,
		-0.863759, 0.154823, -0.479531,
		39.355629, 30.449499, 29.521780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085453, 29.717585, 30.208645>,  <39.960262, 30.341122, 29.857452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085453, 29.717585, 30.208645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240028, 29.415649, 29.996651>,  <40.332775, 29.234488, 29.869455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.240028, 29.415649, 29.996651>,  <40.085453, 29.717585, 30.208645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240028, 29.415649, 29.996651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662037, 0.627101, -0.410428,
		0.642160, -0.192261, 0.742069,
		0.386443, -0.754838, -0.529983,
		40.355961, 29.189198, 29.837656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845505, 29.718904, 30.262791>,  <40.085453, 29.717585, 30.208645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845505, 29.718904, 30.262791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713333, 29.575237, 29.913662>,  <40.634029, 29.489037, 29.704185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713333, 29.575237, 29.913662>,  <40.845505, 29.718904, 30.262791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713333, 29.575237, 29.913662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578878, 0.653283, -0.487977,
		0.745463, -0.666499, -0.007952,
		-0.330431, -0.359166, -0.872820,
		40.614204, 29.467487, 29.651815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800797, 30.379776, 30.516926>,  <40.845505, 29.718904, 30.262791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.800797, 30.379776, 30.516926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484402, 30.609932, 30.600136>,  <40.294567, 30.748026, 30.650061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484402, 30.609932, 30.600136>,  <40.800797, 30.379776, 30.516926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484402, 30.609932, 30.600136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313460, 0.673084, -0.669851,
		-0.525443, -0.464633, -0.712759,
		-0.790982, 0.575390, 0.208023,
		40.247108, 30.782549, 30.662542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431309, 30.780052, 30.699841>,  <40.800797, 30.379776, 30.516926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431309, 30.780052, 30.699841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746346, 30.977049, 30.551706>,  <41.935368, 31.095247, 30.462826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.746346, 30.977049, 30.551706>,  <41.431309, 30.780052, 30.699841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.746346, 30.977049, 30.551706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040157, 0.640747, 0.766702,
		0.614883, -0.588979, 0.524426,
		0.787595, 0.492491, -0.370332,
		41.982624, 31.124796, 30.440607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940533, 30.837137, 31.239658>,  <41.431309, 30.780052, 30.699841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940533, 30.837137, 31.239658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911720, 31.127123, 30.965654>,  <41.894432, 31.301115, 30.801252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911720, 31.127123, 30.965654>,  <41.940533, 30.837137, 31.239658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911720, 31.127123, 30.965654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031632, 0.684787, 0.728056,
		0.996900, 0.074114, -0.026397,
		-0.072036, 0.724964, -0.685009,
		41.890110, 31.344612, 30.760151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476467, 31.464813, 31.245487>,  <41.940533, 30.837137, 31.239658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476467, 31.464813, 31.245487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120216, 31.585510, 31.109407>,  <41.906467, 31.657928, 31.027760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120216, 31.585510, 31.109407>,  <42.476467, 31.464813, 31.245487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120216, 31.585510, 31.109407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091437, 0.614012, 0.783982,
		0.445446, 0.729343, -0.519266,
		-0.890627, 0.301742, -0.340198,
		41.853027, 31.676033, 31.007347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.541222, 32.147484, 31.179302>,  <42.476467, 31.464813, 31.245487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.541222, 32.147484, 31.179302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167492, 32.063980, 31.294853>,  <41.943253, 32.013878, 31.364183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167492, 32.063980, 31.294853>,  <42.541222, 32.147484, 31.179302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167492, 32.063980, 31.294853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071094, 0.685058, 0.725011,
		-0.349250, 0.697936, -0.625228,
		-0.934328, -0.208760, 0.288876,
		41.887192, 32.001350, 31.381516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319820, 32.504921, 31.781301>,  <42.541222, 32.147484, 31.179302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319820, 32.504921, 31.781301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087528, 32.678623, 32.056744>,  <41.948154, 32.782845, 32.222008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087528, 32.678623, 32.056744>,  <42.319820, 32.504921, 31.781301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087528, 32.678623, 32.056744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804307, 0.175259, 0.567780,
		0.125876, 0.883577, -0.451051,
		-0.580728, 0.434253, 0.688607,
		41.913311, 32.808899, 32.263325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511997, 33.241364, 31.766678>,  <42.319820, 32.504921, 31.781301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511997, 33.241364, 31.766678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418167, 33.107738, 32.131836>,  <42.361870, 33.027561, 32.350929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.418167, 33.107738, 32.131836>,  <42.511997, 33.241364, 31.766678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.418167, 33.107738, 32.131836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907795, 0.260604, 0.328625,
		-0.347686, 0.905807, 0.242132,
		-0.234571, -0.334064, 0.912895,
		42.347797, 33.007519, 32.405704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615322, 33.776917, 32.266041>,  <42.511997, 33.241364, 31.766678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615322, 33.776917, 32.266041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669395, 33.406994, 32.408287>,  <42.701839, 33.185040, 32.493637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669395, 33.406994, 32.408287>,  <42.615322, 33.776917, 32.266041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669395, 33.406994, 32.408287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974762, 0.188491, 0.119628,
		-0.177663, 0.330472, 0.926943,
		0.135187, -0.924802, 0.355619,
		42.709953, 33.129555, 32.514973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957661, 33.791817, 32.946400>,  <42.615322, 33.776917, 32.266041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957661, 33.791817, 32.946400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027348, 33.499084, 32.682861>,  <43.069160, 33.323444, 32.524738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027348, 33.499084, 32.682861>,  <42.957661, 33.791817, 32.946400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027348, 33.499084, 32.682861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965283, 0.259163, -0.032624,
		0.194623, -0.630286, 0.751573,
		0.174218, -0.731829, -0.658843,
		43.079613, 33.279537, 32.485207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704018, 33.582283, 33.169308>,  <42.957661, 33.791817, 32.946400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704018, 33.582283, 33.169308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590759, 33.522594, 32.790348>,  <43.522804, 33.486782, 32.562973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590759, 33.522594, 32.790348>,  <43.704018, 33.582283, 33.169308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590759, 33.522594, 32.790348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884032, 0.342449, -0.318145,
		0.371909, -0.927611, 0.034954,
		-0.283144, -0.149221, -0.947398,
		43.505817, 33.477829, 32.506130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259705, 33.500706, 33.788570>,  <43.704018, 33.582283, 33.169308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259705, 33.500706, 33.788570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298725, 33.103939, 33.756100>,  <43.322136, 32.865879, 33.736618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.298725, 33.103939, 33.756100>,  <43.259705, 33.500706, 33.788570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298725, 33.103939, 33.756100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955765, 0.116112, -0.270244,
		0.277484, -0.051222, 0.959364,
		0.097551, -0.991915, -0.081175,
		43.327991, 32.806366, 33.731747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782101, 33.334538, 34.400490>,  <43.259705, 33.500706, 33.788570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782101, 33.334538, 34.400490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061329, 33.573757, 34.557987>,  <43.228867, 33.717289, 34.652485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061329, 33.573757, 34.557987>,  <42.782101, 33.334538, 34.400490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061329, 33.573757, 34.557987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705506, 0.480536, 0.520909,
		0.122320, -0.641421, 0.757375,
		0.698068, 0.598050, 0.393748,
		43.270748, 33.753174, 34.676113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949909, 33.149086, 35.108212>,  <42.782101, 33.334538, 34.400490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949909, 33.149086, 35.108212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960575, 33.534946, 35.003338>,  <42.966972, 33.766464, 34.940414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.960575, 33.534946, 35.003338>,  <42.949909, 33.149086, 35.108212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960575, 33.534946, 35.003338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622822, 0.221180, 0.750448,
		0.781909, 0.143284, 0.606702,
		0.026663, 0.964650, -0.262183,
		42.968575, 33.824341, 34.924683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346001, 33.434757, 35.591763>,  <42.949909, 33.149086, 35.108212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346001, 33.434757, 35.591763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059536, 33.689152, 35.476784>,  <42.887657, 33.841789, 35.407799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.059536, 33.689152, 35.476784>,  <43.346001, 33.434757, 35.591763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059536, 33.689152, 35.476784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556009, -0.270959, 0.785771,
		0.421857, 0.722562, 0.547668,
		-0.716164, 0.635991, -0.287445,
		42.844688, 33.879948, 35.390549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163429, 33.763382, 36.229519>,  <43.346001, 33.434757, 35.591763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163429, 33.763382, 36.229519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860111, 33.756260, 35.968849>,  <42.678120, 33.751987, 35.812447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.860111, 33.756260, 35.968849>,  <43.163429, 33.763382, 36.229519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.860111, 33.756260, 35.968849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626413, -0.256958, 0.735921,
		-0.180556, 0.966258, 0.183695,
		-0.758292, -0.017806, -0.651672,
		42.632622, 33.750919, 35.773346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477909, 34.126175, 36.492077>,  <43.163429, 33.763382, 36.229519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477909, 34.126175, 36.492077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.379780, 33.856079, 36.213833>,  <42.320900, 33.694023, 36.046886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.379780, 33.856079, 36.213833>,  <42.477909, 34.126175, 36.492077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379780, 33.856079, 36.213833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764801, -0.306129, 0.566890,
		-0.595730, 0.671076, -0.441320,
		-0.245326, -0.675235, -0.695610,
		42.306183, 33.653507, 36.005150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146702, 34.304451, 37.173977>,  <42.477909, 34.126175, 36.492077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146702, 34.304451, 37.173977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282784, 34.590954, 37.417694>,  <42.364433, 34.762856, 37.563927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282784, 34.590954, 37.417694>,  <42.146702, 34.304451, 37.173977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282784, 34.590954, 37.417694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561708, 0.364858, -0.742538,
		-0.754152, 0.594860, -0.278200,
		0.340203, 0.716254, 0.609296,
		42.384846, 34.805832, 37.600483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039169, 35.047844, 36.928928>,  <42.146702, 34.304451, 37.173977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039169, 35.047844, 36.928928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343510, 35.071320, 37.187435>,  <42.526115, 35.085403, 37.342541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343510, 35.071320, 37.187435>,  <42.039169, 35.047844, 36.928928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343510, 35.071320, 37.187435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554499, 0.458544, -0.694455,
		-0.337098, 0.886732, 0.316342,
		0.760852, 0.058688, 0.646266,
		42.571766, 35.088924, 37.381313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.245255, 35.721939, 37.119236>,  <42.039169, 35.047844, 36.928928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.245255, 35.721939, 37.119236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564518, 35.485062, 37.163509>,  <42.756077, 35.342934, 37.190071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.564518, 35.485062, 37.163509>,  <42.245255, 35.721939, 37.119236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.564518, 35.485062, 37.163509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516712, 0.578445, -0.631197,
		0.309771, 0.560984, 0.767684,
		0.798155, -0.592198, 0.110682,
		42.803963, 35.307404, 37.196712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949711, 36.054337, 37.294361>,  <42.245255, 35.721939, 37.119236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949711, 36.054337, 37.294361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056030, 35.695858, 37.152271>,  <43.119823, 35.480770, 37.067017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.056030, 35.695858, 37.152271>,  <42.949711, 36.054337, 37.294361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056030, 35.695858, 37.152271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771845, 0.418605, -0.478566,
		0.577586, -0.146973, 0.802990,
		0.265799, -0.896197, -0.355221,
		43.135769, 35.426998, 37.045704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658974, 35.744751, 37.374104>,  <42.949711, 36.054337, 37.294361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658974, 35.744751, 37.374104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637409, 35.607285, 36.999088>,  <43.624470, 35.524803, 36.774078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.637409, 35.607285, 36.999088>,  <43.658974, 35.744751, 37.374104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637409, 35.607285, 36.999088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947505, 0.278734, -0.156658,
		0.315163, -0.896772, 0.310600,
		-0.053912, -0.343668, -0.937543,
		43.621235, 35.504185, 36.717827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914925, 35.087864, 37.348751>,  <43.658974, 35.744751, 37.374104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914925, 35.087864, 37.348751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.931034, 35.335468, 37.035011>,  <43.940701, 35.484032, 36.846767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.931034, 35.335468, 37.035011>,  <43.914925, 35.087864, 37.348751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.931034, 35.335468, 37.035011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903387, 0.312851, 0.293285,
		0.426930, -0.720385, -0.546604,
		0.040273, 0.619007, -0.784352,
		43.943115, 35.521172, 36.799706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343956, 34.897339, 36.745552>,  <43.914925, 35.087864, 37.348751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343956, 34.897339, 36.745552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331703, 35.290302, 36.819241>,  <44.324352, 35.526081, 36.863453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331703, 35.290302, 36.819241>,  <44.343956, 34.897339, 36.745552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331703, 35.290302, 36.819241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933660, -0.037679, 0.356174,
		0.356849, 0.182911, -0.916080,
		-0.030631, 0.982407, 0.184222,
		44.322514, 35.585026, 36.874508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948544, 35.254444, 36.465591>,  <44.343956, 34.897339, 36.745552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948544, 35.254444, 36.465591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809887, 35.448204, 36.786888>,  <44.726692, 35.564461, 36.979668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809887, 35.448204, 36.786888>,  <44.948544, 35.254444, 36.465591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809887, 35.448204, 36.786888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895812, -0.082966, 0.436620,
		0.278139, 0.870906, -0.405168,
		-0.346640, 0.484395, 0.803245,
		44.705894, 35.593521, 37.027863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508804, 35.638664, 36.376835>,  <44.948544, 35.254444, 36.465591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508804, 35.638664, 36.376835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381882, 35.582069, 36.751919>,  <45.305729, 35.548111, 36.976971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.381882, 35.582069, 36.751919>,  <45.508804, 35.638664, 36.376835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.381882, 35.582069, 36.751919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948271, -0.057718, 0.312172,
		0.009953, 0.988256, 0.152485,
		-0.317307, -0.141490, 0.937708,
		45.286690, 35.539623, 37.033230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246788, 35.467453, 36.676956>,  <45.508804, 35.638664, 36.376835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.246788, 35.467453, 36.676956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486370, 35.302231, 36.951366>,  <46.630119, 35.203098, 37.116013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.486370, 35.302231, 36.951366>,  <46.246788, 35.467453, 36.676956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.486370, 35.302231, 36.951366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554890, -0.403596, -0.727467,
		0.577363, 0.816392, -0.012536,
		0.598957, -0.413056, 0.686028,
		46.666058, 35.178314, 37.157173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.830574, 36.021957, 36.623119>,  <46.246788, 35.467453, 36.676956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.830574, 36.021957, 36.623119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772831, 35.627071, 36.650127>,  <46.738186, 35.390141, 36.666332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.772831, 35.627071, 36.650127>,  <46.830574, 36.021957, 36.623119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.772831, 35.627071, 36.650127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765370, -0.154644, -0.624735,
		0.627192, -0.038507, 0.777912,
		-0.144356, -0.987220, 0.067519,
		46.729523, 35.330906, 36.670383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.426052, 35.650249, 36.780334>,  <46.830574, 36.021957, 36.623119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.426052, 35.650249, 36.780334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.193989, 35.400326, 36.571327>,  <47.054749, 35.250374, 36.445923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.193989, 35.400326, 36.571327>,  <47.426052, 35.650249, 36.780334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.193989, 35.400326, 36.571327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662946, 0.010469, -0.748595,
		0.473198, -0.780709, 0.408140,
		-0.580161, -0.624807, -0.522521,
		47.019939, 35.212883, 36.414570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.909542, 35.090141, 36.569557>,  <47.426052, 35.650249, 36.780334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.909542, 35.090141, 36.569557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.589436, 35.152847, 36.338043>,  <47.397369, 35.190472, 36.199135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.589436, 35.152847, 36.338043>,  <47.909542, 35.090141, 36.569557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.589436, 35.152847, 36.338043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572695, -0.086283, -0.815215,
		-0.177737, -0.983860, -0.020730,
		-0.800268, 0.156766, -0.578787,
		47.349354, 35.199879, 36.164406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.978310, 34.673584, 35.907608>,  <47.909542, 35.090141, 36.569557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.978310, 34.673584, 35.907608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.709770, 34.958805, 35.826771>,  <47.548645, 35.129940, 35.778267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.709770, 34.958805, 35.826771>,  <47.978310, 34.673584, 35.907608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.709770, 34.958805, 35.826771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376462, 0.093202, -0.921732,
		-0.638411, -0.694885, -0.331009,
		-0.671348, 0.713056, -0.202097,
		47.508366, 35.172722, 35.766140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.482166, 34.563751, 35.354130>,  <47.978310, 34.673584, 35.907608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.482166, 34.563751, 35.354130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.604755, 34.943813, 35.377048>,  <47.678307, 35.171852, 35.390800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.604755, 34.943813, 35.377048>,  <47.482166, 34.563751, 35.354130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.604755, 34.943813, 35.377048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555762, -0.129741, -0.821156,
		-0.772791, 0.283502, -0.567821,
		0.306469, 0.950155, 0.057297,
		47.696697, 35.228859, 35.394238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.354881, 35.059116, 34.697918>,  <47.482166, 34.563751, 35.354130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.354881, 35.059116, 34.697918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.678158, 35.149837, 34.915314>,  <47.872124, 35.204269, 35.045753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.678158, 35.149837, 34.915314>,  <47.354881, 35.059116, 34.697918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.678158, 35.149837, 34.915314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588910, -0.307543, -0.747397,
		-0.002362, 0.924110, -0.382119,
		0.808195, 0.226799, 0.543491,
		47.920616, 35.217876, 35.078362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.575783, 28.107672, 19.262325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.206345, 28.038221, 19.125605>,  <36.984680, 27.996552, 19.043573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.206345, 28.038221, 19.125605>,  <37.575783, 28.107672, 19.262325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206345, 28.038221, 19.125605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353951, 0.043672, 0.934244,
		-0.147283, 0.983843, -0.101790,
		-0.923594, -0.173627, -0.341800,
		36.929268, 27.986134, 19.023064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155045, 28.605291, 19.645065>,  <37.575783, 28.107672, 19.262325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155045, 28.605291, 19.645065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897793, 28.329504, 19.511787>,  <36.743443, 28.164032, 19.431822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897793, 28.329504, 19.511787>,  <37.155045, 28.605291, 19.645065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897793, 28.329504, 19.511787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304915, -0.168561, 0.937344,
		-0.702430, 0.704431, -0.101822,
		-0.643132, -0.689466, -0.333194,
		36.704853, 28.122663, 19.411829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522404, 28.746210, 19.979218>,  <37.155045, 28.605291, 19.645065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522404, 28.746210, 19.979218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511192, 28.363667, 19.862879>,  <36.504463, 28.134140, 19.793076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511192, 28.363667, 19.862879>,  <36.522404, 28.746210, 19.979218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511192, 28.363667, 19.862879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488882, -0.240669, 0.838494,
		-0.871899, 0.165694, -0.460800,
		-0.028033, -0.956360, -0.290844,
		36.502781, 28.076759, 19.775625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912998, 28.558817, 19.994425>,  <36.522404, 28.746210, 19.979218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912998, 28.558817, 19.994425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.083351, 28.196911, 19.996262>,  <36.185562, 27.979767, 19.997364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.083351, 28.196911, 19.996262>,  <35.912998, 28.558817, 19.994425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083351, 28.196911, 19.996262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512762, -0.237176, 0.825120,
		-0.745453, -0.353758, -0.564939,
		0.425882, -0.904767, 0.004590,
		36.211117, 27.925480, 19.997639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400932, 28.113665, 20.154732>,  <35.912998, 28.558817, 19.994425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400932, 28.113665, 20.154732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.750179, 27.938086, 20.239576>,  <35.959728, 27.832737, 20.290483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.750179, 27.938086, 20.239576>,  <35.400932, 28.113665, 20.154732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750179, 27.938086, 20.239576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310338, -0.164888, 0.936217,
		-0.375978, -0.883252, -0.280189,
		0.873116, -0.438950, 0.212112,
		36.012115, 27.806400, 20.303209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227207, 27.494905, 20.491936>,  <35.400932, 28.113665, 20.154732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227207, 27.494905, 20.491936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.603714, 27.518740, 20.624886>,  <35.829617, 27.533041, 20.704655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.603714, 27.518740, 20.624886>,  <35.227207, 27.494905, 20.491936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603714, 27.518740, 20.624886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327819, -0.074819, 0.941773,
		0.080984, -0.995415, -0.050891,
		0.941263, 0.059586, 0.332375,
		35.886093, 27.536615, 20.724598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287392, 27.019306, 20.956833>,  <35.227207, 27.494905, 20.491936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287392, 27.019306, 20.956833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.593121, 27.258675, 21.052914>,  <35.776558, 27.402296, 21.110563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.593121, 27.258675, 21.052914>,  <35.287392, 27.019306, 20.956833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593121, 27.258675, 21.052914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145493, -0.202857, 0.968339,
		0.628202, -0.775075, -0.067982,
		0.764326, 0.598422, 0.240203,
		35.822418, 27.438202, 21.124975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722034, 26.607151, 21.466719>,  <35.287392, 27.019306, 20.956833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722034, 26.607151, 21.466719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.752644, 27.005072, 21.493587>,  <35.771011, 27.243824, 21.509708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.752644, 27.005072, 21.493587>,  <35.722034, 26.607151, 21.466719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752644, 27.005072, 21.493587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226981, -0.048220, 0.972705,
		0.970888, -0.089685, 0.222111,
		0.076527, 0.994802, 0.067173,
		35.775600, 27.303513, 21.513739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917000, 26.633360, 22.170317>,  <35.722034, 26.607151, 21.466719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917000, 26.633360, 22.170317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829609, 27.015505, 22.090767>,  <35.777176, 27.244791, 22.043037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829609, 27.015505, 22.090767>,  <35.917000, 26.633360, 22.170317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829609, 27.015505, 22.090767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161736, 0.165531, 0.972852,
		0.962347, 0.244707, 0.118352,
		-0.218473, 0.955363, -0.198876,
		35.764069, 27.302114, 22.031105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447750, 27.100021, 22.432985>,  <35.917000, 26.633360, 22.170317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447750, 27.100021, 22.432985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.147587, 27.359465, 22.382072>,  <35.967491, 27.515131, 22.351524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.147587, 27.359465, 22.382072>,  <36.447750, 27.100021, 22.432985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147587, 27.359465, 22.382072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060525, 0.259182, 0.963930,
		0.658202, 0.715634, -0.233749,
		-0.750405, 0.648608, -0.127280,
		35.922466, 27.554047, 22.343889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605282, 27.718830, 22.664328>,  <36.447750, 27.100021, 22.432985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605282, 27.718830, 22.664328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.205975, 27.731596, 22.684057>,  <35.966389, 27.739256, 22.695894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.205975, 27.731596, 22.684057>,  <36.605282, 27.718830, 22.664328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205975, 27.731596, 22.684057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056542, 0.293973, 0.954140,
		0.015952, 0.955281, -0.295270,
		-0.998273, 0.031916, 0.049324,
		35.906494, 27.741171, 22.698854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511692, 28.342974, 23.019564>,  <36.605282, 27.718830, 22.664328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511692, 28.342974, 23.019564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191227, 28.104708, 23.042591>,  <35.998947, 27.961748, 23.056408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191227, 28.104708, 23.042591>,  <36.511692, 28.342974, 23.019564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191227, 28.104708, 23.042591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114862, 0.247466, 0.962064,
		-0.587314, 0.764162, -0.266681,
		-0.801167, -0.595666, 0.057568,
		35.950878, 27.926008, 23.059862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952808, 28.678291, 23.359364>,  <36.511692, 28.342974, 23.019564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952808, 28.678291, 23.359364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853367, 28.292723, 23.397425>,  <35.793701, 28.061382, 23.420261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853367, 28.292723, 23.397425>,  <35.952808, 28.678291, 23.359364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853367, 28.292723, 23.397425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170565, 0.140269, 0.975311,
		-0.953469, 0.226239, -0.199283,
		-0.248607, -0.963919, 0.095154,
		35.778786, 28.003548, 23.425970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315754, 28.682652, 23.755306>,  <35.952808, 28.678291, 23.359364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315754, 28.682652, 23.755306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.437046, 28.302340, 23.780828>,  <35.509819, 28.074152, 23.796143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.437046, 28.302340, 23.780828>,  <35.315754, 28.682652, 23.755306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437046, 28.302340, 23.780828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263989, -0.019478, 0.964329,
		-0.915622, -0.309253, -0.256902,
		0.303226, -0.950780, 0.063805,
		35.528015, 28.017105, 23.799971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866585, 28.413195, 24.212433>,  <35.315754, 28.682652, 23.755306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866585, 28.413195, 24.212433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177937, 28.162086, 24.210342>,  <35.364746, 28.011421, 24.209087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.177937, 28.162086, 24.210342>,  <34.866585, 28.413195, 24.212433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177937, 28.162086, 24.210342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123531, -0.161318, 0.979141,
		-0.615521, -0.761497, -0.203116,
		0.778379, -0.627773, -0.005226,
		35.411449, 27.973755, 24.208775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681252, 27.869740, 24.657331>,  <34.866585, 28.413195, 24.212433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681252, 27.869740, 24.657331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.073845, 27.799261, 24.627287>,  <35.309402, 27.756975, 24.609261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.073845, 27.799261, 24.627287>,  <34.681252, 27.869740, 24.657331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073845, 27.799261, 24.627287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036563, -0.212582, 0.976459,
		-0.188007, -0.961128, -0.202204,
		0.981486, -0.176188, -0.075109,
		35.368290, 27.746403, 24.604753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765316, 27.164991, 24.835730>,  <34.681252, 27.869740, 24.657331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765316, 27.164991, 24.835730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125019, 27.336868, 24.868454>,  <35.340843, 27.439995, 24.888088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.125019, 27.336868, 24.868454>,  <34.765316, 27.164991, 24.835730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125019, 27.336868, 24.868454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122452, -0.426858, 0.895990,
		0.419924, -0.795710, -0.436474,
		0.899261, 0.429695, 0.081812,
		35.394798, 27.465776, 24.892998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196579, 26.620441, 25.040844>,  <34.765316, 27.164991, 24.835730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196579, 26.620441, 25.040844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.380291, 26.955523, 25.159046>,  <35.490517, 27.156570, 25.229967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.380291, 26.955523, 25.159046>,  <35.196579, 26.620441, 25.040844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380291, 26.955523, 25.159046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134150, -0.394259, 0.909156,
		0.878105, -0.377912, -0.293451,
		0.459277, 0.837701, 0.295503,
		35.518074, 27.206833, 25.247698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865005, 26.429352, 25.526289>,  <35.196579, 26.620441, 25.040844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865005, 26.429352, 25.526289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.823135, 26.822359, 25.587864>,  <35.798012, 27.058165, 25.624809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.823135, 26.822359, 25.587864>,  <35.865005, 26.429352, 25.526289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823135, 26.822359, 25.587864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276666, -0.119909, 0.953456,
		0.955247, 0.142397, -0.259278,
		-0.104680, 0.982520, 0.153939,
		35.791733, 27.117115, 25.634045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529995, 26.713350, 25.693914>,  <35.865005, 26.429352, 25.526289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529995, 26.713350, 25.693914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228420, 26.935101, 25.834906>,  <36.047474, 27.068151, 25.919500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.228420, 26.935101, 25.834906>,  <36.529995, 26.713350, 25.693914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228420, 26.935101, 25.834906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270007, -0.227641, 0.935562,
		0.598892, 0.800529, 0.021942,
		-0.753940, 0.554376, 0.352480,
		36.002239, 27.101414, 25.940649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792995, 27.230774, 26.244900>,  <36.529995, 26.713350, 25.693914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792995, 27.230774, 26.244900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.402508, 27.193911, 26.323380>,  <36.168213, 27.171793, 26.370468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.402508, 27.193911, 26.323380>,  <36.792995, 27.230774, 26.244900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402508, 27.193911, 26.323380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208711, -0.155170, 0.965589,
		-0.058545, 0.983579, 0.170716,
		-0.976223, -0.092160, 0.196199,
		36.109642, 27.166262, 26.382240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145760, 27.664953, 26.419233>,  <36.792995, 27.230774, 26.244900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145760, 27.664953, 26.419233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.416862, 27.684801, 26.712677>,  <36.579525, 27.696711, 26.888744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.416862, 27.684801, 26.712677>,  <36.145760, 27.664953, 26.419233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416862, 27.684801, 26.712677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722799, 0.138139, -0.677111,
		-0.134939, 0.989169, 0.057758,
		0.677756, 0.049622, 0.733611,
		36.620190, 27.699688, 26.932760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520580, 28.206951, 26.233135>,  <36.145760, 27.664953, 26.419233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520580, 28.206951, 26.233135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.772335, 27.977610, 26.442949>,  <36.923389, 27.840004, 26.568838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.772335, 27.977610, 26.442949>,  <36.520580, 28.206951, 26.233135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772335, 27.977610, 26.442949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697878, 0.120128, -0.706071,
		0.341819, 0.810452, 0.475739,
		0.629386, -0.573356, 0.524534,
		36.961151, 27.805603, 26.600309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087822, 28.583019, 26.304565>,  <36.520580, 28.206951, 26.233135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087822, 28.583019, 26.304565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.210838, 28.206383, 26.359453>,  <37.284649, 27.980402, 26.392385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.210838, 28.206383, 26.359453>,  <37.087822, 28.583019, 26.304565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210838, 28.206383, 26.359453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824212, 0.191540, -0.532904,
		0.475493, 0.276988, 0.834975,
		0.307539, -0.941589, 0.137221,
		37.303101, 27.923906, 26.400620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772812, 28.682323, 26.374395>,  <37.087822, 28.583019, 26.304565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772812, 28.682323, 26.374395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704090, 28.300423, 26.277292>,  <37.662857, 28.071281, 26.219030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.704090, 28.300423, 26.277292>,  <37.772812, 28.682323, 26.374395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704090, 28.300423, 26.277292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793500, 0.011922, -0.608454,
		0.583817, -0.297162, 0.755548,
		-0.171802, -0.954753, -0.242758,
		37.652550, 28.013996, 26.204464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479984, 28.294992, 26.155233>,  <37.772812, 28.682323, 26.374395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479984, 28.294992, 26.155233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.185715, 28.076998, 25.994347>,  <38.009155, 27.946201, 25.897814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.185715, 28.076998, 25.994347>,  <38.479984, 28.294992, 26.155233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185715, 28.076998, 25.994347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602005, -0.253915, -0.757045,
		0.310452, -0.799071, 0.514884,
		-0.735669, -0.544989, -0.402216,
		37.965015, 27.913502, 25.873682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923023, 27.699587, 25.922958>,  <38.479984, 28.294992, 26.155233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923023, 27.699587, 25.922958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580387, 27.676989, 25.717798>,  <38.374805, 27.663429, 25.594702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.580387, 27.676989, 25.717798>,  <38.923023, 27.699587, 25.922958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580387, 27.676989, 25.717798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500533, -0.332540, -0.799302,
		-0.125402, -0.941395, 0.313129,
		-0.856587, -0.056497, -0.512900,
		38.323410, 27.660040, 25.563929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912521, 27.024065, 25.690248>,  <38.923023, 27.699587, 25.922958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912521, 27.024065, 25.690248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.687069, 27.259647, 25.458578>,  <38.551796, 27.400997, 25.319576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.687069, 27.259647, 25.458578>,  <38.912521, 27.024065, 25.690248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687069, 27.259647, 25.458578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261672, -0.537744, -0.801473,
		-0.783481, -0.603293, 0.148978,
		-0.563635, 0.588956, -0.579177,
		38.517979, 27.436335, 25.284824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514034, 26.554222, 25.188522>,  <38.912521, 27.024065, 25.690248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514034, 26.554222, 25.188522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507256, 26.922781, 25.033220>,  <38.503189, 27.143915, 24.940039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507256, 26.922781, 25.033220>,  <38.514034, 26.554222, 25.188522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507256, 26.922781, 25.033220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305288, -0.364999, -0.879531,
		-0.952109, -0.133435, -0.275106,
		-0.016946, 0.921396, -0.388255,
		38.502171, 27.199200, 24.916744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117691, 26.539694, 24.497602>,  <38.514034, 26.554222, 25.188522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117691, 26.539694, 24.497602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335457, 26.874464, 24.475096>,  <38.466118, 27.075327, 24.461592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.335457, 26.874464, 24.475096>,  <38.117691, 26.539694, 24.497602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335457, 26.874464, 24.475096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182676, -0.183764, -0.965847,
		-0.818683, 0.515542, -0.252930,
		0.544415, 0.836927, -0.056268,
		38.498783, 27.125542, 24.458216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.957375, 26.828749, 23.903072>,  <38.117691, 26.539694, 24.497602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.957375, 26.828749, 23.903072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.301609, 27.014425, 23.986902>,  <38.508148, 27.125832, 24.037199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.301609, 27.014425, 23.986902>,  <37.957375, 26.828749, 23.903072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301609, 27.014425, 23.986902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267723, -0.062251, -0.961483,
		-0.433266, 0.883545, -0.177847,
		0.860584, 0.464192, 0.209574,
		38.559784, 27.153683, 24.049774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985798, 27.446741, 23.456152>,  <37.957375, 26.828749, 23.903072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985798, 27.446741, 23.456152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373093, 27.443199, 23.556105>,  <38.605469, 27.441074, 23.616076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.373093, 27.443199, 23.556105>,  <37.985798, 27.446741, 23.456152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373093, 27.443199, 23.556105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248406, 0.148042, -0.957276,
		-0.028515, 0.988941, 0.145539,
		0.968236, -0.008856, 0.249881,
		38.663563, 27.440542, 23.631069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279774, 28.049429, 23.248041>,  <37.985798, 27.446741, 23.456152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279774, 28.049429, 23.248041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592239, 27.800047, 23.261238>,  <38.779720, 27.650417, 23.269157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592239, 27.800047, 23.261238>,  <38.279774, 28.049429, 23.248041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592239, 27.800047, 23.261238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194961, 0.193392, -0.961556,
		0.593106, 0.757564, 0.272620,
		0.781163, -0.623455, 0.032994,
		38.826588, 27.613010, 23.271135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822021, 28.327166, 22.792284>,  <38.279774, 28.049429, 23.248041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822021, 28.327166, 22.792284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.968052, 27.957458, 22.836910>,  <39.055672, 27.735634, 22.863686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.968052, 27.957458, 22.836910>,  <38.822021, 28.327166, 22.792284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968052, 27.957458, 22.836910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359352, 0.029352, -0.932741,
		0.858827, 0.380615, 0.342853,
		0.365079, -0.924268, 0.111566,
		39.077576, 27.680178, 22.870380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327774, 28.353241, 22.392805>,  <38.822021, 28.327166, 22.792284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327774, 28.353241, 22.392805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231174, 27.967667, 22.437536>,  <39.173214, 27.736322, 22.464375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231174, 27.967667, 22.437536>,  <39.327774, 28.353241, 22.392805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231174, 27.967667, 22.437536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311988, -0.186246, -0.931652,
		0.918882, -0.190099, 0.345715,
		-0.241494, -0.963937, 0.111829,
		39.158726, 27.678486, 22.471085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810204, 27.934366, 21.963673>,  <39.327774, 28.353241, 22.392805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810204, 27.934366, 21.963673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.475685, 27.723631, 22.024393>,  <39.274975, 27.597189, 22.060825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.475685, 27.723631, 22.024393>,  <39.810204, 27.934366, 21.963673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475685, 27.723631, 22.024393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151935, -0.488718, -0.859110,
		0.526802, -0.695409, 0.488760,
		-0.836299, -0.526840, 0.151801,
		39.224796, 27.565578, 22.069933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.995277, 27.225309, 21.887375>,  <39.810204, 27.934366, 21.963673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.995277, 27.225309, 21.887375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.602814, 27.258389, 21.817532>,  <39.367336, 27.278236, 21.775625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.602814, 27.258389, 21.817532>,  <39.995277, 27.225309, 21.887375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602814, 27.258389, 21.817532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102857, -0.541454, -0.834415,
		-0.163549, -0.836653, 0.522746,
		-0.981158, 0.082700, -0.174609,
		39.308468, 27.283199, 21.765148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794800, 26.628914, 21.602060>,  <39.995277, 27.225309, 21.887375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794800, 26.628914, 21.602060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.492100, 26.864624, 21.488863>,  <39.310478, 27.006050, 21.420944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.492100, 26.864624, 21.488863>,  <39.794800, 26.628914, 21.602060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492100, 26.864624, 21.488863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136564, -0.565863, -0.813111,
		-0.639281, -0.576675, 0.508690,
		-0.756750, 0.589275, -0.282993,
		39.265076, 27.041407, 21.403965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536308, 26.246279, 21.090248>,  <39.794800, 26.628914, 21.602060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536308, 26.246279, 21.090248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.337006, 26.587236, 21.026791>,  <39.217422, 26.791811, 20.988716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.337006, 26.587236, 21.026791>,  <39.536308, 26.246279, 21.090248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337006, 26.587236, 21.026791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096577, -0.236400, -0.966844,
		-0.861635, -0.466414, 0.200109,
		-0.498255, 0.852393, -0.158646,
		39.187531, 26.842955, 20.979197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891914, 26.181608, 20.630743>,  <39.536308, 26.246279, 21.090248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891914, 26.181608, 20.630743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.010284, 26.562376, 20.599047>,  <39.081306, 26.790836, 20.580029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.010284, 26.562376, 20.599047>,  <38.891914, 26.181608, 20.630743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.010284, 26.562376, 20.599047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211349, -0.015651, -0.977285,
		-0.931537, 0.305948, 0.196556,
		0.295922, 0.951920, -0.079241,
		39.099060, 26.847952, 20.575274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.397766, 26.642097, 20.186630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.716244, 26.883797, 20.174191>,  <38.907330, 27.028816, 20.166727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.716244, 26.883797, 20.174191>,  <38.397766, 26.642097, 20.186630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716244, 26.883797, 20.174191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141711, 0.136262, -0.980485,
		-0.588216, 0.785060, 0.194119,
		0.796191, 0.604246, -0.031100,
		38.955101, 27.065071, 20.164860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214016, 27.181671, 19.759462>,  <38.397766, 26.642097, 20.186630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214016, 27.181671, 19.759462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608921, 27.244497, 19.769592>,  <38.845863, 27.282194, 19.775671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.608921, 27.244497, 19.769592>,  <38.214016, 27.181671, 19.759462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608921, 27.244497, 19.769592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022330, 0.294415, -0.955417,
		-0.157521, 0.942682, 0.294172,
		0.987263, 0.157068, 0.025326,
		38.905102, 27.291618, 19.777189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315914, 27.770178, 19.480867>,  <38.214016, 27.181671, 19.759462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315914, 27.770178, 19.480867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.666809, 27.589653, 19.415409>,  <38.877346, 27.481339, 19.376135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.666809, 27.589653, 19.415409>,  <38.315914, 27.770178, 19.480867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666809, 27.589653, 19.415409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001860, 0.337682, -0.941258,
		0.480061, 0.826008, 0.295386,
		0.877233, -0.451312, -0.163645,
		38.929977, 27.454260, 19.366316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702526, 28.217606, 19.014931>,  <38.315914, 27.770178, 19.480867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702526, 28.217606, 19.014931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.893097, 27.866877, 18.989027>,  <39.007439, 27.656439, 18.973484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.893097, 27.866877, 18.989027>,  <38.702526, 28.217606, 19.014931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893097, 27.866877, 18.989027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136901, 0.146741, -0.979656,
		0.868489, 0.457871, 0.189950,
		0.476429, -0.876824, -0.064760,
		39.036026, 27.603828, 18.969599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238091, 28.368458, 18.538605>,  <38.702526, 28.217606, 19.014931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238091, 28.368458, 18.538605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.188496, 27.971563, 18.542547>,  <39.158737, 27.733427, 18.544912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.188496, 27.971563, 18.542547>,  <39.238091, 28.368458, 18.538605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188496, 27.971563, 18.542547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067424, -0.018333, -0.997556,
		0.989990, -0.123023, 0.069173,
		-0.123990, -0.992235, 0.009855,
		39.151299, 27.673893, 18.545504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841270, 28.113335, 18.308214>,  <39.238091, 28.368458, 18.538605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841270, 28.113335, 18.308214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.545628, 27.855154, 18.231146>,  <39.368244, 27.700247, 18.184906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.545628, 27.855154, 18.231146>,  <39.841270, 28.113335, 18.308214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545628, 27.855154, 18.231146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238427, 0.016830, -0.971015,
		0.629984, -0.763617, 0.141454,
		-0.739103, -0.645450, -0.192669,
		39.323898, 27.661520, 18.173346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006554, 27.846556, 17.697487>,  <39.841270, 28.113335, 18.308214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006554, 27.846556, 17.697487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.632542, 27.713560, 17.746754>,  <39.408134, 27.633762, 17.776314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.632542, 27.713560, 17.746754>,  <40.006554, 27.846556, 17.697487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632542, 27.713560, 17.746754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133153, 0.007321, -0.991068,
		0.328620, -0.943078, -0.051118,
		-0.935029, -0.332492, 0.123167,
		39.352032, 27.613813, 17.783705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883224, 27.178633, 17.392326>,  <40.006554, 27.846556, 17.697487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883224, 27.178633, 17.392326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536167, 27.376150, 17.415531>,  <39.327934, 27.494659, 17.429455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536167, 27.376150, 17.415531>,  <39.883224, 27.178633, 17.392326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536167, 27.376150, 17.415531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124007, -0.101930, -0.987032,
		-0.481475, -0.863586, 0.149672,
		-0.867643, 0.493792, 0.058014,
		39.275875, 27.524288, 17.432936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628693, 26.928493, 16.838743>,  <39.883224, 27.178633, 17.392326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628693, 26.928493, 16.838743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.395058, 27.240881, 16.927225>,  <39.254875, 27.428312, 16.980314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.395058, 27.240881, 16.927225>,  <39.628693, 26.928493, 16.838743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395058, 27.240881, 16.927225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078495, 0.216898, -0.973033,
		-0.807886, -0.585700, -0.065386,
		-0.584087, 0.780968, 0.221203,
		39.219830, 27.475172, 16.993586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180218, 26.845125, 16.318163>,  <39.628693, 26.928493, 16.838743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180218, 26.845125, 16.318163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118729, 27.211718, 16.465912>,  <39.081833, 27.431673, 16.554562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118729, 27.211718, 16.465912>,  <39.180218, 26.845125, 16.318163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118729, 27.211718, 16.465912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046247, 0.366731, -0.929177,
		-0.987031, -0.159920, -0.013991,
		-0.153725, 0.916479, 0.369371,
		39.072613, 27.486662, 16.576723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667721, 27.072086, 15.934939>,  <39.180218, 26.845125, 16.318163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667721, 27.072086, 15.934939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834759, 27.412252, 16.062944>,  <38.934982, 27.616352, 16.139748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.834759, 27.412252, 16.062944>,  <38.667721, 27.072086, 15.934939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834759, 27.412252, 16.062944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041439, 0.369650, -0.928246,
		-0.907686, 0.374374, 0.189606,
		0.417599, 0.850413, 0.320013,
		38.960037, 27.667376, 16.158949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275417, 27.687681, 15.687674>,  <38.667721, 27.072086, 15.934939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275417, 27.687681, 15.687674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.646168, 27.816660, 15.764546>,  <38.868618, 27.894047, 15.810670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.646168, 27.816660, 15.764546>,  <38.275417, 27.687681, 15.687674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646168, 27.816660, 15.764546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024618, 0.563090, -0.826029,
		-0.374565, 0.760893, 0.529851,
		0.926874, 0.322445, 0.192183,
		38.924229, 27.913393, 15.822201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215916, 28.264685, 15.348711>,  <38.275417, 27.687681, 15.687674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215916, 28.264685, 15.348711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606853, 28.215561, 15.417668>,  <38.841415, 28.186087, 15.459043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.606853, 28.215561, 15.417668>,  <38.215916, 28.264685, 15.348711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606853, 28.215561, 15.417668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210975, 0.499580, -0.840184,
		0.017057, 0.857518, 0.514170,
		0.977343, -0.122808, 0.172394,
		38.900055, 28.178719, 15.469386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515377, 28.861172, 15.057310>,  <38.215916, 28.264685, 15.348711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515377, 28.861172, 15.057310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.826950, 28.618025, 15.118977>,  <39.013893, 28.472136, 15.155976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.826950, 28.618025, 15.118977>,  <38.515377, 28.861172, 15.057310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826950, 28.618025, 15.118977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457388, 0.382497, -0.802802,
		0.429030, 0.695839, 0.575970,
		0.778928, -0.607868, 0.154166,
		39.060627, 28.435665, 15.165226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201134, 29.227549, 15.077933>,  <38.515377, 28.861172, 15.057310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201134, 29.227549, 15.077933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.290890, 28.857092, 14.956664>,  <39.344742, 28.634819, 14.883903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.290890, 28.857092, 14.956664>,  <39.201134, 29.227549, 15.077933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290890, 28.857092, 14.956664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522570, 0.376949, -0.764742,
		0.822539, 0.013169, 0.568556,
		0.224388, -0.926140, -0.303173,
		39.358208, 28.579250, 14.865712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878170, 29.322489, 14.830410>,  <39.201134, 29.227549, 15.077933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878170, 29.322489, 14.830410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.773396, 28.964592, 14.685731>,  <39.710529, 28.749853, 14.598924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.773396, 28.964592, 14.685731>,  <39.878170, 29.322489, 14.830410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773396, 28.964592, 14.685731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588840, 0.148769, -0.794440,
		0.764629, -0.421074, 0.487892,
		-0.261935, -0.894743, -0.361698,
		39.694817, 28.696169, 14.577222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503216, 28.996756, 14.463654>,  <39.878170, 29.322489, 14.830410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503216, 28.996756, 14.463654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.150833, 28.880039, 14.314643>,  <39.939404, 28.810009, 14.225237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.150833, 28.880039, 14.314643>,  <40.503216, 28.996756, 14.463654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150833, 28.880039, 14.314643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291180, 0.286286, -0.912828,
		0.373003, -0.912633, -0.167242,
		-0.880956, -0.291790, -0.372526,
		39.886547, 28.792503, 14.202886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658848, 28.658884, 13.883315>,  <40.503216, 28.996756, 14.463654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658848, 28.658884, 13.883315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.275749, 28.749311, 13.812185>,  <40.045891, 28.803568, 13.769507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.275749, 28.749311, 13.812185>,  <40.658848, 28.658884, 13.883315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275749, 28.749311, 13.812185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237685, 0.273908, -0.931923,
		-0.161970, -0.934809, -0.316066,
		-0.957743, 0.226068, -0.177825,
		39.988426, 28.817131, 13.758838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485962, 28.451662, 13.186026>,  <40.658848, 28.658884, 13.883315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485962, 28.451662, 13.186026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.175537, 28.683372, 13.285762>,  <39.989285, 28.822399, 13.345603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.175537, 28.683372, 13.285762>,  <40.485962, 28.451662, 13.186026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175537, 28.683372, 13.285762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001333, 0.396870, -0.917874,
		-0.630658, -0.711993, -0.308767,
		-0.776060, 0.579276, 0.249340,
		39.942719, 28.857155, 13.360564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926067, 28.403212, 12.641330>,  <40.485962, 28.451662, 13.186026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926067, 28.403212, 12.641330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.861023, 28.738207, 12.850011>,  <39.821995, 28.939203, 12.975220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.861023, 28.738207, 12.850011>,  <39.926067, 28.403212, 12.641330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861023, 28.738207, 12.850011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032995, 0.533061, -0.845434,
		-0.986138, -0.120263, -0.114314,
		-0.162611, 0.837486, 0.521703,
		39.812241, 28.989452, 13.006522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558632, 28.629068, 12.195914>,  <39.926067, 28.403212, 12.641330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558632, 28.629068, 12.195914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.660145, 28.935438, 12.432203>,  <39.721054, 29.119259, 12.573977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.660145, 28.935438, 12.432203>,  <39.558632, 28.629068, 12.195914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660145, 28.935438, 12.432203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082070, 0.625567, -0.775842,
		-0.963772, 0.148418, 0.221620,
		0.253787, 0.765923, 0.590723,
		39.736282, 29.165215, 12.609420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291630, 29.263853, 11.930346>,  <39.558632, 28.629068, 12.195914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291630, 29.263853, 11.930346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.572559, 29.439600, 12.154381>,  <39.741116, 29.545048, 12.288801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.572559, 29.439600, 12.154381>,  <39.291630, 29.263853, 11.930346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572559, 29.439600, 12.154381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136463, 0.689104, -0.711698,
		-0.698654, 0.576274, 0.424018,
		0.702325, 0.439368, 0.560085,
		39.783257, 29.571411, 12.322407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170269, 30.099283, 11.881196>,  <39.291630, 29.263853, 11.930346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170269, 30.099283, 11.881196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.543102, 30.016520, 12.000135>,  <39.766800, 29.966862, 12.071499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.543102, 30.016520, 12.000135>,  <39.170269, 30.099283, 11.881196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543102, 30.016520, 12.000135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344410, 0.760585, -0.550356,
		-0.112286, 0.615386, 0.780187,
		0.932080, -0.206907, 0.297348,
		39.822727, 29.954447, 12.089340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745586, 29.648245, 11.524734>,  <39.170269, 30.099283, 11.881196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745586, 29.648245, 11.524734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.775215, 29.404907, 11.840817>,  <38.792992, 29.258904, 12.030467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.775215, 29.404907, 11.840817>,  <38.745586, 29.648245, 11.524734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775215, 29.404907, 11.840817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844004, -0.383830, -0.374608,
		0.531197, 0.694687, 0.485016,
		0.074072, -0.608346, 0.790208,
		38.797436, 29.222403, 12.077880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497906, 30.292698, 11.495624>,  <38.745586, 29.648245, 11.524734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497906, 30.292698, 11.495624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.106255, 30.371210, 11.474558>,  <37.871262, 30.418318, 11.461918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.106255, 30.371210, 11.474558>,  <38.497906, 30.292698, 11.495624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106255, 30.371210, 11.474558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117886, -0.337482, 0.933921,
		0.165538, 0.920641, 0.353578,
		-0.979132, 0.196281, -0.052665,
		37.812515, 30.430094, 11.458758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309475, 30.639347, 12.129433>,  <38.497906, 30.292698, 11.495624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309475, 30.639347, 12.129433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969051, 30.485130, 11.986856>,  <37.764797, 30.392599, 11.901311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969051, 30.485130, 11.986856>,  <38.309475, 30.639347, 12.129433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969051, 30.485130, 11.986856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306993, -0.185354, 0.933488,
		-0.425968, 0.903881, 0.039389,
		-0.851062, -0.385544, -0.356440,
		37.713734, 30.369467, 11.879925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769482, 30.965807, 12.495604>,  <38.309475, 30.639347, 12.129433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769482, 30.965807, 12.495604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612427, 30.620293, 12.369295>,  <37.518196, 30.412985, 12.293510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.612427, 30.620293, 12.369295>,  <37.769482, 30.965807, 12.495604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612427, 30.620293, 12.369295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310429, -0.198721, 0.929593,
		-0.865720, 0.463015, -0.190120,
		-0.392635, -0.863786, -0.315770,
		37.494637, 30.361156, 12.274564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174007, 30.988245, 12.877205>,  <37.769482, 30.965807, 12.495604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174007, 30.988245, 12.877205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202019, 30.611187, 12.746657>,  <37.218826, 30.384953, 12.668329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202019, 30.611187, 12.746657>,  <37.174007, 30.988245, 12.877205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202019, 30.611187, 12.746657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279947, -0.332596, 0.900560,
		-0.957458, 0.028299, -0.287183,
		0.070031, -0.942645, -0.326369,
		37.223026, 30.328394, 12.648746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516346, 30.716970, 12.913079>,  <37.174007, 30.988245, 12.877205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516346, 30.716970, 12.913079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779629, 30.415873, 12.908268>,  <36.937599, 30.235214, 12.905381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.779629, 30.415873, 12.908268>,  <36.516346, 30.716970, 12.913079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779629, 30.415873, 12.908268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296762, -0.274109, 0.914766,
		-0.691881, -0.598533, -0.403805,
		0.658204, -0.752743, -0.012029,
		36.977089, 30.190050, 12.904659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119953, 30.117334, 13.085999>,  <36.516346, 30.716970, 12.913079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119953, 30.117334, 13.085999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501995, 30.015299, 13.146262>,  <36.731220, 29.954077, 13.182420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501995, 30.015299, 13.146262>,  <36.119953, 30.117334, 13.085999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501995, 30.015299, 13.146262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230239, -0.319108, 0.919326,
		-0.186433, -0.912743, -0.363514,
		0.955109, -0.255087, 0.150657,
		36.788528, 29.938772, 13.191459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063900, 29.456417, 13.301746>,  <36.119953, 30.117334, 13.085999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063900, 29.456417, 13.301746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410084, 29.608515, 13.432220>,  <36.617794, 29.699774, 13.510505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.410084, 29.608515, 13.432220>,  <36.063900, 29.456417, 13.301746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410084, 29.608515, 13.432220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107466, -0.495028, 0.862206,
		0.489319, -0.781257, -0.387563,
		0.865458, 0.380244, 0.326185,
		36.669720, 29.722588, 13.530076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417973, 28.831841, 13.615936>,  <36.063900, 29.456417, 13.301746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417973, 28.831841, 13.615936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.635929, 29.141167, 13.745597>,  <36.766705, 29.326761, 13.823393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.635929, 29.141167, 13.745597>,  <36.417973, 28.831841, 13.615936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635929, 29.141167, 13.745597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088270, -0.437337, 0.894955,
		0.833845, -0.459044, -0.306563,
		0.544895, 0.773315, 0.324151,
		36.799397, 29.373161, 13.842842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866005, 28.528194, 14.046276>,  <36.417973, 28.831841, 13.615936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866005, 28.528194, 14.046276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874474, 28.906670, 14.175448>,  <36.879555, 29.133755, 14.252952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.874474, 28.906670, 14.175448>,  <36.866005, 28.528194, 14.046276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874474, 28.906670, 14.175448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016188, -0.323286, 0.946163,
		0.999645, -0.014808, -0.022163,
		0.021175, 0.946186, 0.322931,
		36.880825, 29.190525, 14.272327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514282, 28.699034, 14.503070>,  <36.866005, 28.528194, 14.046276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514282, 28.699034, 14.503070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223660, 28.948414, 14.618605>,  <37.049286, 29.098042, 14.687925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223660, 28.948414, 14.618605>,  <37.514282, 28.699034, 14.503070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223660, 28.948414, 14.618605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112197, -0.307078, 0.945048,
		0.677883, 0.719038, 0.153161,
		-0.726558, 0.623448, 0.288837,
		37.005692, 29.135448, 14.705256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770870, 28.968056, 15.135581>,  <37.514282, 28.699034, 14.503070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770870, 28.968056, 15.135581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.386803, 29.079512, 15.143908>,  <37.156361, 29.146385, 15.148904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.386803, 29.079512, 15.143908>,  <37.770870, 28.968056, 15.135581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386803, 29.079512, 15.143908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004082, -0.088480, 0.996070,
		0.279387, 0.956311, 0.086093,
		-0.960170, 0.278640, 0.020816,
		37.098751, 29.163103, 15.150152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663887, 29.609858, 15.555918>,  <37.770870, 28.968056, 15.135581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663887, 29.609858, 15.555918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342548, 29.372515, 15.535648>,  <37.149746, 29.230108, 15.523487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.342548, 29.372515, 15.535648>,  <37.663887, 29.609858, 15.555918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342548, 29.372515, 15.535648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103438, -0.222828, 0.969354,
		-0.586464, 0.773482, 0.240383,
		-0.803343, -0.593357, -0.050673,
		37.101547, 29.194508, 15.520447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397842, 29.753687, 16.160444>,  <37.663887, 29.609858, 15.555918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397842, 29.753687, 16.160444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.193863, 29.426846, 16.052893>,  <37.071476, 29.230742, 15.988362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.193863, 29.426846, 16.052893>,  <37.397842, 29.753687, 16.160444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193863, 29.426846, 16.052893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127959, -0.237039, 0.963036,
		-0.850634, 0.525504, 0.016322,
		-0.509948, -0.817103, -0.268877,
		37.040878, 29.181715, 15.972230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874065, 29.787266, 16.622696>,  <37.397842, 29.753687, 16.160444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874065, 29.787266, 16.622696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870571, 29.419176, 16.466177>,  <36.868473, 29.198322, 16.372265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.870571, 29.419176, 16.466177>,  <36.874065, 29.787266, 16.622696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870571, 29.419176, 16.466177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275326, -0.373974, 0.885629,
		-0.961311, 0.115473, -0.250094,
		-0.008738, -0.920223, -0.391298,
		36.867950, 29.143108, 16.348787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254501, 29.424475, 16.898359>,  <36.874065, 29.787266, 16.622696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254501, 29.424475, 16.898359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527779, 29.147167, 16.806595>,  <36.691746, 28.980782, 16.751537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.527779, 29.147167, 16.806595>,  <36.254501, 29.424475, 16.898359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527779, 29.147167, 16.806595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134918, -0.428581, 0.893373,
		-0.717670, -0.579391, -0.386336,
		0.683189, -0.693271, -0.229409,
		36.732735, 28.939186, 16.737772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904476, 28.757744, 17.111549>,  <36.254501, 29.424475, 16.898359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904476, 28.757744, 17.111549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290241, 28.659212, 17.073118>,  <36.521702, 28.600094, 17.050060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.290241, 28.659212, 17.073118>,  <35.904476, 28.757744, 17.111549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290241, 28.659212, 17.073118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020200, -0.430961, 0.902144,
		-0.263628, -0.868099, -0.420600,
		0.964412, -0.246327, -0.096078,
		36.579563, 28.585314, 17.044294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862965, 28.095119, 17.189676>,  <35.904476, 28.757744, 17.111549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862965, 28.095119, 17.189676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.242458, 28.204067, 17.253832>,  <36.470154, 28.269436, 17.292324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.242458, 28.204067, 17.253832>,  <35.862965, 28.095119, 17.189676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242458, 28.204067, 17.253832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025556, -0.571861, 0.819953,
		0.315049, -0.773816, -0.549503,
		0.948732, 0.272369, 0.160388,
		36.527077, 28.285778, 17.301949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253101, 27.525415, 17.170324>,  <35.862965, 28.095119, 17.189676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253101, 27.525415, 17.170324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.457634, 27.788586, 17.391478>,  <36.580353, 27.946487, 17.524170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.457634, 27.788586, 17.391478>,  <36.253101, 27.525415, 17.170324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457634, 27.788586, 17.391478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131297, -0.575985, 0.806847,
		0.849296, -0.485156, -0.208134,
		0.511329, 0.657924, 0.552881,
		36.611034, 27.985964, 17.557343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671719, 27.040947, 17.520336>,  <36.253101, 27.525415, 17.170324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671719, 27.040947, 17.520336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.642841, 27.401299, 17.691547>,  <36.625515, 27.617510, 17.794273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.642841, 27.401299, 17.691547>,  <36.671719, 27.040947, 17.520336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642841, 27.401299, 17.691547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042023, -0.431515, 0.901127,
		0.996505, 0.047067, 0.069009,
		-0.072192, 0.900877, 0.428029,
		36.621185, 27.671562, 17.819956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852440, 26.781473, 18.162870>,  <36.671719, 27.040947, 17.520336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852440, 26.781473, 18.162870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.717087, 27.157404, 18.181728>,  <36.635876, 27.382963, 18.193043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.717087, 27.157404, 18.181728>,  <36.852440, 26.781473, 18.162870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717087, 27.157404, 18.181728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188246, -0.116694, 0.975164,
		0.921988, 0.321102, 0.216406,
		-0.338381, 0.939827, 0.047144,
		36.615574, 27.439352, 18.195871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.422516, 26.489899, 23.016811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.317219, 26.871500, 22.959425>,  <39.254040, 27.100460, 22.924994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.317219, 26.871500, 22.959425>,  <39.422516, 26.489899, 23.016811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317219, 26.871500, 22.959425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156251, 0.188910, 0.969484,
		0.951991, 0.232796, -0.198793,
		-0.263246, 0.954002, -0.143466,
		39.238247, 27.157700, 22.916386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859272, 26.859735, 23.469700>,  <39.422516, 26.489899, 23.016811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859272, 26.859735, 23.469700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.532055, 27.078852, 23.399574>,  <39.335724, 27.210321, 23.357498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.532055, 27.078852, 23.399574>,  <39.859272, 26.859735, 23.469700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532055, 27.078852, 23.399574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168717, 0.062859, 0.983658,
		0.549857, 0.834252, 0.041000,
		-0.818042, 0.547788, -0.175316,
		39.286644, 27.243189, 23.346979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879765, 27.245415, 23.937407>,  <39.859272, 26.859735, 23.469700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879765, 27.245415, 23.937407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.502434, 27.337805, 23.842094>,  <39.276035, 27.393238, 23.784908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.502434, 27.337805, 23.842094>,  <39.879765, 27.245415, 23.937407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502434, 27.337805, 23.842094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221598, 0.096045, 0.970396,
		0.247023, 0.968207, -0.039419,
		-0.943331, 0.230975, -0.238279,
		39.219433, 27.407097, 23.770611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699387, 27.845346, 24.305576>,  <39.879765, 27.245415, 23.937407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699387, 27.845346, 24.305576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363857, 27.639544, 24.234415>,  <39.162540, 27.516062, 24.191719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.363857, 27.639544, 24.234415>,  <39.699387, 27.845346, 24.305576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363857, 27.639544, 24.234415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339660, 0.239244, 0.909612,
		-0.425441, 0.823434, -0.375443,
		-0.838827, -0.514509, -0.177903,
		39.112209, 27.485191, 24.181044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239937, 28.201462, 24.542564>,  <39.699387, 27.845346, 24.305576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239937, 28.201462, 24.542564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.029293, 27.862627, 24.513935>,  <38.902905, 27.659327, 24.496758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.029293, 27.862627, 24.513935>,  <39.239937, 28.201462, 24.542564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029293, 27.862627, 24.513935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375148, 0.156013, 0.913742,
		-0.762852, 0.508039, -0.399941,
		-0.526612, -0.847087, -0.071575,
		38.871311, 27.608501, 24.492462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537922, 28.363216, 24.380947>,  <39.239937, 28.201462, 24.542564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537922, 28.363216, 24.380947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.540237, 28.001831, 24.552397>,  <38.541626, 27.785000, 24.655266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.540237, 28.001831, 24.552397>,  <38.537922, 28.363216, 24.380947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540237, 28.001831, 24.552397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622675, 0.332134, 0.708493,
		-0.782459, -0.270994, -0.560643,
		0.005789, -0.903465, 0.428622,
		38.541973, 27.730791, 24.680983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828419, 28.133104, 24.478453>,  <38.537922, 28.363216, 24.380947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828419, 28.133104, 24.478453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.048389, 27.917171, 24.733377>,  <38.180370, 27.787613, 24.886332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.048389, 27.917171, 24.733377>,  <37.828419, 28.133104, 24.478453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048389, 27.917171, 24.733377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703277, 0.112323, 0.701986,
		-0.450539, -0.834246, -0.317882,
		0.549924, -0.539831, 0.637312,
		38.213367, 27.755222, 24.924570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248375, 27.695572, 24.828735>,  <37.828419, 28.133104, 24.478453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248375, 27.695572, 24.828735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.574783, 27.696831, 25.059944>,  <37.770626, 27.697586, 25.198669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.574783, 27.696831, 25.059944>,  <37.248375, 27.695572, 24.828735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574783, 27.696831, 25.059944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578014, 0.011497, 0.815946,
		-0.004088, -0.999929, 0.011193,
		0.816017, 0.003134, 0.578020,
		37.819588, 27.697775, 25.233351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261566, 27.029472, 25.311560>,  <37.248375, 27.695572, 24.828735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261566, 27.029472, 25.311560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.474022, 27.313852, 25.495926>,  <37.601494, 27.484480, 25.606544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.474022, 27.313852, 25.495926>,  <37.261566, 27.029472, 25.311560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474022, 27.313852, 25.495926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531679, -0.143889, 0.834634,
		0.659703, -0.688365, 0.301571,
		0.531140, 0.710949, 0.460913,
		37.633366, 27.527138, 25.634199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451759, 26.753981, 25.864302>,  <37.261566, 27.029472, 25.311560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451759, 26.753981, 25.864302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.511471, 27.131275, 25.982971>,  <37.547298, 27.357653, 26.054173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.511471, 27.131275, 25.982971>,  <37.451759, 26.753981, 25.864302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511471, 27.131275, 25.982971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395076, -0.218149, 0.892371,
		0.906438, -0.250425, 0.340085,
		0.149283, 0.943238, 0.296676,
		37.556255, 27.414248, 26.071974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461376, 26.661505, 26.583097>,  <37.451759, 26.753981, 25.864302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461376, 26.661505, 26.583097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.457409, 27.059443, 26.542730>,  <37.455029, 27.298204, 26.518509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.457409, 27.059443, 26.542730>,  <37.461376, 26.661505, 26.583097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457409, 27.059443, 26.542730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381607, 0.089518, 0.919980,
		0.924272, 0.047640, 0.378751,
		-0.009923, 0.994845, -0.100919,
		37.454433, 27.357897, 26.512455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707817, 26.978775, 27.221577>,  <37.461376, 26.661505, 26.583097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707817, 26.978775, 27.221577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.481518, 27.255468, 27.042049>,  <37.345737, 27.421484, 26.934334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.481518, 27.255468, 27.042049>,  <37.707817, 26.978775, 27.221577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481518, 27.255468, 27.042049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567511, 0.068239, 0.820533,
		0.598216, 0.718923, 0.353960,
		-0.565746, 0.691732, -0.448818,
		37.311794, 27.462988, 26.907404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512192, 27.564133, 27.766932>,  <37.707817, 26.978775, 27.221577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512192, 27.564133, 27.766932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.227013, 27.537180, 27.487743>,  <37.055904, 27.521009, 27.320230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.227013, 27.537180, 27.487743>,  <37.512192, 27.564133, 27.766932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227013, 27.537180, 27.487743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701198, 0.075697, 0.708937,
		0.005066, 0.994852, -0.101216,
		-0.712949, -0.067381, -0.697971,
		37.013126, 27.516966, 27.278353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024948, 28.119164, 27.908779>,  <37.512192, 27.564133, 27.766932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024948, 28.119164, 27.908779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.871624, 27.812012, 27.703476>,  <36.779629, 27.627720, 27.580294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.871624, 27.812012, 27.703476>,  <37.024948, 28.119164, 27.908779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871624, 27.812012, 27.703476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790658, -0.014439, 0.612087,
		-0.477420, 0.640432, -0.601595,
		-0.383314, -0.767879, -0.513257,
		36.756630, 27.581648, 27.549500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967224, 28.229610, 28.734072>,  <37.024948, 28.119164, 27.908779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967224, 28.229610, 28.734072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.874325, 28.529692, 28.981703>,  <36.818584, 28.709740, 29.130281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.874325, 28.529692, 28.981703>,  <36.967224, 28.229610, 28.734072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874325, 28.529692, 28.981703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095139, 0.615907, -0.782053,
		-0.967993, -0.240526, -0.071667,
		-0.232245, 0.750204, 0.619078,
		36.804653, 28.754753, 29.167425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316959, 28.582014, 28.528193>,  <36.967224, 28.229610, 28.734072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316959, 28.582014, 28.528193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.548687, 28.834511, 28.734463>,  <36.687725, 28.986008, 28.858225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.548687, 28.834511, 28.734463>,  <36.316959, 28.582014, 28.528193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548687, 28.834511, 28.734463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008443, 0.627975, -0.778188,
		-0.815055, 0.455175, 0.358470,
		0.579322, 0.631240, 0.515677,
		36.722485, 29.023882, 28.889166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090271, 29.279970, 28.276062>,  <36.316959, 28.582014, 28.528193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090271, 29.279970, 28.276062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.438377, 29.356339, 28.457693>,  <36.647240, 29.402159, 28.566671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.438377, 29.356339, 28.457693>,  <36.090271, 29.279970, 28.276062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438377, 29.356339, 28.457693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260693, 0.603634, -0.753436,
		-0.417941, 0.774065, 0.475551,
		0.870267, 0.190919, 0.454076,
		36.699459, 29.413614, 28.593916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120682, 30.051802, 28.329208>,  <36.090271, 29.279970, 28.276062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120682, 30.051802, 28.329208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.480396, 29.876945, 28.334679>,  <36.696224, 29.772032, 28.337961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.480396, 29.876945, 28.334679>,  <36.120682, 30.051802, 28.329208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480396, 29.876945, 28.334679> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304088, 0.602488, -0.737929,
		0.314338, 0.667771, 0.674740,
		0.899290, -0.437139, 0.013676,
		36.750183, 29.745804, 28.338781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455582, 30.581829, 28.137609>,  <36.120682, 30.051802, 28.329208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455582, 30.581829, 28.137609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.736504, 30.300722, 28.092196>,  <36.905056, 30.132057, 28.064947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.736504, 30.300722, 28.092196>,  <36.455582, 30.581829, 28.137609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736504, 30.300722, 28.092196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473914, 0.580561, -0.662083,
		0.531204, 0.411176, 0.740781,
		0.702302, -0.702768, -0.113534,
		36.947193, 30.089891, 28.058136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206310, 30.868155, 28.135624>,  <36.455582, 30.581829, 28.137609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206310, 30.868155, 28.135624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.270916, 30.496365, 28.002966>,  <37.309677, 30.273291, 27.923370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.270916, 30.496365, 28.002966>,  <37.206310, 30.868155, 28.135624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270916, 30.496365, 28.002966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591632, 0.360166, -0.721285,
		0.789865, -0.079718, 0.608078,
		0.161510, -0.929476, -0.331646,
		37.319370, 30.217522, 27.903473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850746, 30.682224, 28.048523>,  <37.206310, 30.868155, 28.135624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850746, 30.682224, 28.048523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671566, 30.430536, 27.794462>,  <37.564056, 30.279524, 27.642025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.671566, 30.430536, 27.794462>,  <37.850746, 30.682224, 28.048523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671566, 30.430536, 27.794462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625435, 0.287114, -0.725532,
		0.638880, -0.722252, 0.264921,
		-0.447955, -0.629219, -0.635153,
		37.537178, 30.241770, 27.603916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328037, 30.285574, 27.708418>,  <37.850746, 30.682224, 28.048523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328037, 30.285574, 27.708418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.031208, 30.248825, 27.442822>,  <37.853111, 30.226776, 27.283464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.031208, 30.248825, 27.442822>,  <38.328037, 30.285574, 27.708418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031208, 30.248825, 27.442822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646883, 0.161474, -0.745298,
		0.175692, -0.982591, -0.060393,
		-0.742075, -0.091875, -0.663991,
		37.808586, 30.221264, 27.243624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571609, 29.790638, 27.142061>,  <38.328037, 30.285574, 27.708418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571609, 29.790638, 27.142061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.283573, 30.022738, 26.989859>,  <38.110752, 30.161997, 26.898537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.283573, 30.022738, 26.989859>,  <38.571609, 29.790638, 27.142061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283573, 30.022738, 26.989859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533236, 0.111864, -0.838538,
		-0.443996, -0.806720, -0.389962,
		-0.720088, 0.580249, -0.380505,
		38.067547, 30.196812, 26.875708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373417, 29.530054, 26.416801>,  <38.571609, 29.790638, 27.142061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373417, 29.530054, 26.416801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.258350, 29.912878, 26.402483>,  <38.189312, 30.142572, 26.393892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.258350, 29.912878, 26.402483>,  <38.373417, 29.530054, 26.416801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258350, 29.912878, 26.402483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394952, 0.084495, -0.914808,
		-0.872503, -0.277297, -0.402299,
		-0.287666, 0.957062, -0.035797,
		38.172050, 30.199997, 26.391745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289635, 29.569286, 25.643179>,  <38.373417, 29.530054, 26.416801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289635, 29.569286, 25.643179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.240459, 29.953655, 25.742386>,  <38.210957, 30.184277, 25.801910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.240459, 29.953655, 25.742386>,  <38.289635, 29.569286, 25.643179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240459, 29.953655, 25.742386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213228, 0.269651, -0.939054,
		-0.969237, -0.062559, -0.238046,
		-0.122935, 0.960924, 0.248016,
		38.203579, 30.241932, 25.816792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813244, 29.895231, 25.209671>,  <38.289635, 29.569286, 25.643179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813244, 29.895231, 25.209671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.007446, 30.220364, 25.338411>,  <38.123970, 30.415443, 25.415655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.007446, 30.220364, 25.338411>,  <37.813244, 29.895231, 25.209671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007446, 30.220364, 25.338411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063001, 0.399725, -0.914468,
		-0.871959, 0.423704, 0.245279,
		0.485508, 0.812831, 0.321850,
		38.153099, 30.464212, 25.434967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429306, 30.473543, 24.871895>,  <37.813244, 29.895231, 25.209671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429306, 30.473543, 24.871895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.787609, 30.608500, 24.987682>,  <38.002590, 30.689474, 25.057156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.787609, 30.608500, 24.987682>,  <37.429306, 30.473543, 24.871895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787609, 30.608500, 24.987682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154209, 0.374898, -0.914151,
		-0.416948, 0.863492, 0.283787,
		0.895753, 0.337390, 0.289471,
		38.056335, 30.709717, 25.074524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564392, 31.192562, 24.646189>,  <37.429306, 30.473543, 24.871895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564392, 31.192562, 24.646189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.937885, 31.063246, 24.707666>,  <38.161983, 30.985657, 24.744553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.937885, 31.063246, 24.707666>,  <37.564392, 31.192562, 24.646189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937885, 31.063246, 24.707666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294866, 0.451213, -0.842295,
		0.202958, 0.831799, 0.516642,
		0.933735, -0.323291, 0.153692,
		38.218006, 30.966259, 24.753775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079277, 31.671412, 24.575138>,  <37.564392, 31.192562, 24.646189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079277, 31.671412, 24.575138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.735973, 31.671061, 24.369852>,  <36.529991, 31.670851, 24.246681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.735973, 31.671061, 24.369852>,  <37.079277, 31.671412, 24.575138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735973, 31.671061, 24.369852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488149, -0.307307, 0.816868,
		-0.158430, 0.951610, 0.263322,
		-0.858260, -0.000876, -0.513214,
		36.478497, 31.670797, 24.215887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653679, 32.085857, 24.931328>,  <37.079277, 31.671412, 24.575138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653679, 32.085857, 24.931328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.443439, 31.833916, 24.702583>,  <36.317295, 31.682751, 24.565336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.443439, 31.833916, 24.702583>,  <36.653679, 32.085857, 24.931328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443439, 31.833916, 24.702583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498562, -0.316624, 0.806961,
		-0.689333, 0.709248, -0.147603,
		-0.525601, -0.629854, -0.571863,
		36.285759, 31.644960, 24.531025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984863, 32.100174, 25.180202>,  <36.653679, 32.085857, 24.931328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984863, 32.100174, 25.180202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.962887, 31.758968, 24.972610>,  <35.949703, 31.554245, 24.848055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.962887, 31.758968, 24.972610>,  <35.984863, 32.100174, 25.180202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962887, 31.758968, 24.972610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557456, -0.405016, 0.724710,
		-0.828387, 0.329124, -0.453269,
		-0.054938, -0.853018, -0.518982,
		35.946404, 31.503063, 24.816916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253159, 31.867855, 25.294685>,  <35.984863, 32.100174, 25.180202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253159, 31.867855, 25.294685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.431999, 31.536648, 25.159342>,  <35.539303, 31.337923, 25.078136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.431999, 31.536648, 25.159342>,  <35.253159, 31.867855, 25.294685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431999, 31.536648, 25.159342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478609, -0.541020, 0.691542,
		-0.755668, -0.147248, -0.638188,
		0.447101, -0.828019, -0.338357,
		35.566128, 31.288242, 25.057835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716671, 31.331472, 25.021734>,  <35.253159, 31.867855, 25.294685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716671, 31.331472, 25.021734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.044491, 31.116013, 25.099907>,  <35.241184, 30.986736, 25.146811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.044491, 31.116013, 25.099907>,  <34.716671, 31.331472, 25.021734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044491, 31.116013, 25.099907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527004, -0.574669, 0.626117,
		-0.224948, -0.616128, -0.754841,
		0.819552, -0.538648, 0.195432,
		35.290356, 30.954418, 25.158537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476200, 30.648211, 24.960747>,  <34.716671, 31.331472, 25.021734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476200, 30.648211, 24.960747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.811871, 30.578995, 25.166985>,  <35.013271, 30.537464, 25.290728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.811871, 30.578995, 25.166985>,  <34.476200, 30.648211, 24.960747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811871, 30.578995, 25.166985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520153, -0.532212, 0.667975,
		0.158819, -0.828738, -0.536628,
		0.839177, -0.173041, 0.515596,
		35.063625, 30.527082, 25.321663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602356, 29.909273, 25.137577>,  <34.476200, 30.648211, 24.960747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602356, 29.909273, 25.137577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.802380, 30.121702, 25.411190>,  <34.922394, 30.249159, 25.575357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.802380, 30.121702, 25.411190>,  <34.602356, 29.909273, 25.137577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802380, 30.121702, 25.411190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421955, -0.540356, 0.727991,
		0.756236, -0.652671, -0.046123,
		0.500061, 0.531071, 0.684034,
		34.952396, 30.281023, 25.616400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975269, 29.490082, 25.601475>,  <34.602356, 29.909273, 25.137577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975269, 29.490082, 25.601475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.912010, 29.829348, 25.803703>,  <34.874054, 30.032907, 25.925039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.912010, 29.829348, 25.803703>,  <34.975269, 29.490082, 25.601475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912010, 29.829348, 25.803703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526697, -0.505554, 0.683379,
		0.835212, -0.158205, 0.526681,
		-0.158152, 0.848167, 0.505570,
		34.864563, 30.083797, 25.955374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281181, 29.407948, 26.278303>,  <34.975269, 29.490082, 25.601475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281181, 29.407948, 26.278303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.047058, 29.723028, 26.355183>,  <34.906586, 29.912077, 26.401310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.047058, 29.723028, 26.355183>,  <35.281181, 29.407948, 26.278303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047058, 29.723028, 26.355183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527674, -0.550035, 0.647318,
		0.615611, 0.277461, 0.737590,
		-0.585306, 0.787703, 0.192199,
		34.871468, 29.959339, 26.412842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319435, 29.523291, 26.950651>,  <35.281181, 29.407948, 26.278303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319435, 29.523291, 26.950651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.978550, 29.709280, 26.854702>,  <34.774021, 29.820873, 26.797132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.978550, 29.709280, 26.854702>,  <35.319435, 29.523291, 26.950651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978550, 29.709280, 26.854702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449825, -0.417002, 0.789789,
		0.267203, 0.780967, 0.564529,
		-0.852209, 0.464973, -0.239874,
		34.722889, 29.848772, 26.782740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068985, 29.517427, 27.530807>,  <35.319435, 29.523291, 26.950651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068985, 29.517427, 27.530807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.764736, 29.593847, 27.282629>,  <34.582188, 29.639698, 27.133722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.764736, 29.593847, 27.282629>,  <35.068985, 29.517427, 27.530807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764736, 29.593847, 27.282629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600099, -0.571507, 0.559697,
		-0.247662, 0.798048, 0.549348,
		-0.760621, 0.191048, -0.620449,
		34.536549, 29.651161, 27.096495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505505, 29.574409, 27.975882>,  <35.068985, 29.517427, 27.530807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505505, 29.574409, 27.975882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.327572, 29.554581, 27.618185>,  <34.220810, 29.542683, 27.403568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.327572, 29.554581, 27.618185>,  <34.505505, 29.574409, 27.975882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327572, 29.554581, 27.618185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694773, -0.610971, 0.379480,
		-0.565167, 0.790099, 0.237340,
		-0.444834, -0.049572, -0.894240,
		34.194122, 29.539709, 27.349913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.054337, 33.863010, 21.681095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743210, 33.706329, 21.484499>,  <37.556534, 33.612320, 21.366541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743210, 33.706329, 21.484499>,  <38.054337, 33.863010, 21.681095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743210, 33.706329, 21.484499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196637, -0.591089, 0.782271,
		-0.596933, 0.705112, 0.382738,
		-0.777821, -0.391703, -0.491492,
		37.509865, 33.588818, 21.337051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444260, 33.839855, 22.129717>,  <38.054337, 33.863010, 21.681095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444260, 33.839855, 22.129717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386322, 33.560898, 21.848955>,  <37.351559, 33.393524, 21.680498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386322, 33.560898, 21.848955>,  <37.444260, 33.839855, 22.129717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386322, 33.560898, 21.848955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479210, -0.571190, 0.666408,
		-0.865666, 0.432886, -0.251461,
		-0.144846, -0.697389, -0.701903,
		37.342869, 33.351681, 21.638384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779514, 33.583698, 22.229139>,  <37.444260, 33.839855, 22.129717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779514, 33.583698, 22.229139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956493, 33.289345, 22.024115>,  <37.062679, 33.112732, 21.901100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956493, 33.289345, 22.024115>,  <36.779514, 33.583698, 22.229139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956493, 33.289345, 22.024115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453754, -0.676685, 0.579832,
		-0.773532, -0.023965, -0.633304,
		0.442443, -0.735883, -0.512563,
		37.089226, 33.068581, 21.870346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253277, 33.107315, 21.934370>,  <36.779514, 33.583698, 22.229139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253277, 33.107315, 21.934370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596275, 32.903862, 21.965324>,  <36.802074, 32.781788, 21.983898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596275, 32.903862, 21.965324>,  <36.253277, 33.107315, 21.934370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596275, 32.903862, 21.965324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461509, -0.693960, 0.552656,
		-0.227397, -0.509616, -0.829809,
		0.857497, -0.508636, 0.077388,
		36.853523, 32.751270, 21.988541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044407, 32.372578, 21.967268>,  <36.253277, 33.107315, 21.934370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.044407, 32.372578, 21.967268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414936, 32.386627, 22.117302>,  <36.637253, 32.395058, 22.207321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414936, 32.386627, 22.117302>,  <36.044407, 32.372578, 21.967268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414936, 32.386627, 22.117302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249257, -0.689411, 0.680136,
		0.282475, -0.723519, -0.629864,
		0.926326, 0.035124, 0.375083,
		36.692833, 32.397163, 22.229826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177124, 31.673513, 22.199320>,  <36.044407, 32.372578, 21.967268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177124, 31.673513, 22.199320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465191, 31.875742, 22.389378>,  <36.638031, 31.997080, 22.503412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465191, 31.875742, 22.389378>,  <36.177124, 31.673513, 22.199320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465191, 31.875742, 22.389378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179807, -0.525441, 0.831613,
		0.670101, -0.684331, -0.287498,
		0.720162, 0.505571, 0.475147,
		36.681240, 32.027412, 22.531921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526623, 31.185240, 22.674217>,  <36.177124, 31.673513, 22.199320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526623, 31.185240, 22.674217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592072, 31.563040, 22.788162>,  <36.631340, 31.789721, 22.856529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592072, 31.563040, 22.788162>,  <36.526623, 31.185240, 22.674217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592072, 31.563040, 22.788162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240991, -0.241737, 0.939939,
		0.956636, -0.222440, 0.188064,
		0.163618, 0.944502, 0.284861,
		36.641155, 31.846390, 22.873621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081753, 31.195271, 23.197227>,  <36.526623, 31.185240, 22.674217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081753, 31.195271, 23.197227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846054, 31.511177, 23.265417>,  <36.704636, 31.700722, 23.306330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846054, 31.511177, 23.265417>,  <37.081753, 31.195271, 23.197227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846054, 31.511177, 23.265417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135797, -0.304799, 0.942686,
		0.796461, 0.532323, 0.286849,
		-0.589244, 0.789766, 0.170473,
		36.669281, 31.748106, 23.316559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275612, 31.452166, 23.901913>,  <37.081753, 31.195271, 23.197227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275612, 31.452166, 23.901913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919052, 31.613869, 23.819952>,  <36.705116, 31.710892, 23.770777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919052, 31.613869, 23.819952>,  <37.275612, 31.452166, 23.901913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919052, 31.613869, 23.819952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336217, -0.286669, 0.897095,
		0.303920, 0.868559, 0.391455,
		-0.891398, 0.404259, -0.204900,
		36.651634, 31.735146, 23.758482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967335, 31.557793, 24.156757>,  <37.275612, 31.452166, 23.901913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967335, 31.557793, 24.156757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255222, 31.291553, 24.235733>,  <38.427956, 31.131809, 24.283117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255222, 31.291553, 24.235733>,  <37.967335, 31.557793, 24.156757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255222, 31.291553, 24.235733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396209, 0.160250, -0.904068,
		0.570107, 0.728902, 0.379051,
		0.719720, -0.665599, 0.197438,
		38.471138, 31.091873, 24.294964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584259, 31.813276, 23.889696>,  <37.967335, 31.557793, 24.156757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584259, 31.813276, 23.889696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665051, 31.422394, 23.915854>,  <38.713524, 31.187864, 23.931547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665051, 31.422394, 23.915854>,  <38.584259, 31.813276, 23.889696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665051, 31.422394, 23.915854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464508, 0.036798, -0.884804,
		0.862229, 0.209085, 0.461352,
		0.201976, -0.977205, 0.065394,
		38.725643, 31.129232, 23.935472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276936, 31.777210, 23.636738>,  <38.584259, 31.813276, 23.889696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276936, 31.777210, 23.636738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126446, 31.407513, 23.610735>,  <39.036152, 31.185694, 23.595133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126446, 31.407513, 23.610735>,  <39.276936, 31.777210, 23.636738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126446, 31.407513, 23.610735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480773, -0.134766, -0.866427,
		0.792030, -0.357226, 0.495054,
		-0.376227, -0.924244, -0.065006,
		39.013577, 31.130239, 23.591232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861317, 31.322983, 23.509258>,  <39.276936, 31.777210, 23.636738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861317, 31.322983, 23.509258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520248, 31.179802, 23.357035>,  <39.315609, 31.093893, 23.265701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520248, 31.179802, 23.357035>,  <39.861317, 31.322983, 23.509258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520248, 31.179802, 23.357035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433761, -0.079017, -0.897556,
		0.291213, -0.930390, 0.222641,
		-0.852670, -0.357953, -0.380557,
		39.264446, 31.072416, 23.242868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096088, 30.930641, 22.941456>,  <39.861317, 31.322983, 23.509258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096088, 30.930641, 22.941456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702663, 30.945038, 22.870682>,  <39.466610, 30.953676, 22.828217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702663, 30.945038, 22.870682>,  <40.096088, 30.930641, 22.941456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702663, 30.945038, 22.870682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167630, -0.182141, -0.968878,
		-0.067099, -0.982614, 0.173114,
		-0.983564, 0.035991, -0.176937,
		39.407593, 30.955835, 22.817600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942585, 30.334652, 22.535624>,  <40.096088, 30.930641, 22.941456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942585, 30.334652, 22.535624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659966, 30.602970, 22.445452>,  <39.490395, 30.763960, 22.391348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659966, 30.602970, 22.445452>,  <39.942585, 30.334652, 22.535624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659966, 30.602970, 22.445452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131534, -0.188521, -0.973221,
		-0.695329, -0.717284, 0.044968,
		-0.706553, 0.670794, -0.225431,
		39.447998, 30.804209, 22.377823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552101, 30.133396, 21.870678>,  <39.942585, 30.334652, 22.535624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552101, 30.133396, 21.870678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438709, 30.516762, 21.883854>,  <39.370674, 30.746780, 21.891760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438709, 30.516762, 21.883854>,  <39.552101, 30.133396, 21.870678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438709, 30.516762, 21.883854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048424, 0.020000, -0.998626,
		-0.957755, -0.284684, 0.040741,
		-0.283478, 0.958413, 0.032940,
		39.353664, 30.804285, 21.893736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876156, 30.188171, 21.399401>,  <39.552101, 30.133396, 21.870678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876156, 30.188171, 21.399401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061794, 30.541632, 21.423996>,  <39.173176, 30.753708, 21.438753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061794, 30.541632, 21.423996>,  <38.876156, 30.188171, 21.399401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061794, 30.541632, 21.423996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125696, 0.003016, -0.992064,
		-0.876823, 0.468139, -0.109671,
		0.464094, 0.883649, 0.061488,
		39.201023, 30.806726, 21.442442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539650, 30.571999, 20.983492>,  <38.876156, 30.188171, 21.399401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539650, 30.571999, 20.983492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869217, 30.795559, 21.020992>,  <39.066956, 30.929695, 21.043491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869217, 30.795559, 21.020992>,  <38.539650, 30.571999, 20.983492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869217, 30.795559, 21.020992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138979, -0.038896, -0.989531,
		-0.549402, 0.828322, -0.109723,
		0.823918, 0.558900, 0.093749,
		39.116394, 30.963228, 21.049116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517124, 31.056507, 20.418737>,  <38.539650, 30.571999, 20.983492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517124, 31.056507, 20.418737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901943, 31.099737, 20.518967>,  <39.132835, 31.125675, 20.579103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901943, 31.099737, 20.518967>,  <38.517124, 31.056507, 20.418737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901943, 31.099737, 20.518967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249911, 0.019853, -0.968065,
		-0.109599, 0.993944, -0.007910,
		0.962046, 0.108076, 0.250573,
		39.190556, 31.132160, 20.594139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758347, 31.556427, 19.866756>,  <38.517124, 31.056507, 20.418737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758347, 31.556427, 19.866756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066940, 31.354591, 20.021780>,  <39.252094, 31.233490, 20.114794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066940, 31.354591, 20.021780>,  <38.758347, 31.556427, 19.866756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066940, 31.354591, 20.021780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374962, -0.131538, -0.917661,
		0.514022, 0.853280, 0.087723,
		0.771482, -0.504590, 0.387561,
		39.298386, 31.203215, 20.138048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390526, 31.889923, 19.593426>,  <38.758347, 31.556427, 19.866756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390526, 31.889923, 19.593426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444046, 31.507816, 19.698921>,  <39.476158, 31.278551, 19.762218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444046, 31.507816, 19.698921>,  <39.390526, 31.889923, 19.593426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444046, 31.507816, 19.698921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345555, -0.204454, -0.915855,
		0.928810, 0.213682, 0.302740,
		0.133805, -0.955269, 0.263738,
		39.484188, 31.221235, 19.778042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898987, 31.817980, 19.155710>,  <39.390526, 31.889923, 19.593426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898987, 31.817980, 19.155710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820587, 31.451323, 19.295052>,  <39.773548, 31.231329, 19.378656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820587, 31.451323, 19.295052>,  <39.898987, 31.817980, 19.155710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820587, 31.451323, 19.295052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463162, -0.399659, -0.791046,
		0.864329, 0.006298, 0.502888,
		-0.196001, -0.916642, 0.348354,
		39.761787, 31.176331, 19.399557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493744, 31.387690, 19.191635>,  <39.898987, 31.817980, 19.155710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493744, 31.387690, 19.191635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170658, 31.154428, 19.156908>,  <39.976807, 31.014471, 19.136072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170658, 31.154428, 19.156908>,  <40.493744, 31.387690, 19.191635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170658, 31.154428, 19.156908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370871, -0.388078, -0.843712,
		0.458322, -0.713672, 0.529729,
		-0.807710, -0.583153, -0.086816,
		39.928345, 30.979483, 19.130863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.343773, 29.471771, 16.806458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.574444, 29.750916, 16.976370>,  <33.712845, 29.918402, 17.078318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.574444, 29.750916, 16.976370>,  <33.343773, 29.471771, 16.806458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574444, 29.750916, 16.976370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186501, -0.393764, 0.900093,
		0.795402, -0.598283, -0.096922,
		0.576675, 0.697859, 0.424780,
		33.747448, 29.960274, 17.103804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788071, 29.107706, 17.224716>,  <33.343773, 29.471771, 16.806458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788071, 29.107706, 17.224716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.807163, 29.477699, 17.375515>,  <33.818619, 29.699696, 17.465994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.807163, 29.477699, 17.375515>,  <33.788071, 29.107706, 17.224716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807163, 29.477699, 17.375515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043399, -0.375151, 0.925947,
		0.997917, -0.060555, 0.022239,
		0.047727, 0.924984, 0.376998,
		33.821480, 29.755194, 17.488615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258636, 29.109421, 17.738785>,  <33.788071, 29.107706, 17.224716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258636, 29.109421, 17.738785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.065727, 29.447855, 17.829597>,  <33.949982, 29.650915, 17.884085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.065727, 29.447855, 17.829597>,  <34.258636, 29.109421, 17.738785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065727, 29.447855, 17.829597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140193, -0.181280, 0.973388,
		0.864728, 0.501271, -0.031188,
		-0.482278, 0.846088, 0.227033,
		33.921043, 29.701681, 17.897707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666134, 29.692795, 18.253344>,  <34.258636, 29.109421, 17.738785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666134, 29.692795, 18.253344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.268639, 29.735720, 18.265829>,  <34.030144, 29.761475, 18.273321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.268639, 29.735720, 18.265829>,  <34.666134, 29.692795, 18.253344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268639, 29.735720, 18.265829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010099, -0.191929, 0.981357,
		0.111304, 0.975524, 0.189642,
		-0.993735, 0.107314, 0.031214,
		33.970516, 29.767914, 18.275194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630283, 29.844496, 18.881083>,  <34.666134, 29.692795, 18.253344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630283, 29.844496, 18.881083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.239407, 29.833733, 18.796816>,  <34.004883, 29.827274, 18.746256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.239407, 29.833733, 18.796816>,  <34.630283, 29.844496, 18.881083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239407, 29.833733, 18.796816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191302, -0.319285, 0.928149,
		-0.092236, 0.947277, 0.306854,
		-0.977188, -0.026907, -0.210665,
		33.946251, 29.825661, 18.733616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275238, 30.243881, 19.368155>,  <34.630283, 29.844496, 18.881083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275238, 30.243881, 19.368155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.014591, 29.977051, 19.223705>,  <33.858204, 29.816952, 19.137035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.014591, 29.977051, 19.223705>,  <34.275238, 30.243881, 19.368155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014591, 29.977051, 19.223705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257257, -0.253514, 0.932496,
		-0.713595, 0.700529, -0.006417,
		-0.651614, -0.667076, -0.361122,
		33.819107, 29.776928, 19.115368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612362, 30.377949, 19.699381>,  <34.275238, 30.243881, 19.368155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612362, 30.377949, 19.699381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.605495, 30.000509, 19.567123>,  <33.601376, 29.774046, 19.487768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.605495, 30.000509, 19.567123>,  <33.612362, 30.377949, 19.699381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605495, 30.000509, 19.567123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230458, -0.318057, 0.919635,
		-0.972931, 0.091984, -0.212001,
		-0.017164, -0.943599, -0.330646,
		33.600346, 29.717430, 19.467930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038643, 30.174677, 19.971903>,  <33.612362, 30.377949, 19.699381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038643, 30.174677, 19.971903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.251881, 29.846109, 19.890833>,  <33.379826, 29.648970, 19.842192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.251881, 29.846109, 19.890833>,  <33.038643, 30.174677, 19.971903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251881, 29.846109, 19.890833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234131, -0.373427, 0.897628,
		-0.813012, -0.431072, -0.391393,
		0.533099, -0.821419, -0.202673,
		33.411812, 29.599684, 19.830030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640244, 29.621195, 20.252232>,  <33.038643, 30.174677, 19.971903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640244, 29.621195, 20.252232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.017124, 29.492411, 20.215158>,  <33.243252, 29.415140, 20.192915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.017124, 29.492411, 20.215158>,  <32.640244, 29.621195, 20.252232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017124, 29.492411, 20.215158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026659, -0.347802, 0.937189,
		-0.333964, -0.880557, -0.336285,
		0.942209, -0.321952, -0.092678,
		33.299786, 29.395823, 20.187355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591095, 28.965460, 20.372591>,  <32.640244, 29.621195, 20.252232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591095, 28.965460, 20.372591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.985176, 28.991749, 20.435913>,  <33.221622, 29.007523, 20.473906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.985176, 28.991749, 20.435913>,  <32.591095, 28.965460, 20.372591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985176, 28.991749, 20.435913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112139, -0.451357, 0.885269,
		0.129633, -0.889920, -0.437307,
		0.985200, 0.065721, 0.158305,
		33.280735, 29.011465, 20.483404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772381, 28.336920, 20.640890>,  <32.591095, 28.965460, 20.372591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772381, 28.336920, 20.640890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.071106, 28.577826, 20.753710>,  <33.250340, 28.722368, 20.821402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.071106, 28.577826, 20.753710>,  <32.772381, 28.336920, 20.640890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071106, 28.577826, 20.753710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017514, -0.441771, 0.896957,
		0.664806, -0.664917, -0.340467,
		0.746811, 0.602265, 0.282047,
		33.295151, 28.758505, 20.838324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285496, 27.905754, 20.880318>,  <32.772381, 28.336920, 20.640890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285496, 27.905754, 20.880318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.384930, 28.262625, 21.031172>,  <33.444592, 28.476748, 21.121683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.384930, 28.262625, 21.031172>,  <33.285496, 27.905754, 20.880318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384930, 28.262625, 21.031172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194884, -0.427462, 0.882778,
		0.948802, -0.145949, -0.280132,
		0.248587, 0.892175, 0.377133,
		33.459507, 28.530277, 21.144312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783089, 27.791372, 21.384176>,  <33.285496, 27.905754, 20.880318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783089, 27.791372, 21.384176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.609493, 28.138546, 21.480801>,  <33.505337, 28.346849, 21.538774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.609493, 28.138546, 21.480801>,  <33.783089, 27.791372, 21.384176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609493, 28.138546, 21.480801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205693, -0.165587, 0.964506,
		0.877125, 0.468268, -0.106666,
		-0.433985, 0.867932, 0.241560,
		33.479298, 28.398926, 21.553268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151356, 28.068357, 21.879486>,  <33.783089, 27.791372, 21.384176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151356, 28.068357, 21.879486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.806644, 28.256630, 21.955164>,  <33.599819, 28.369595, 22.000570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.806644, 28.256630, 21.955164>,  <34.151356, 28.068357, 21.879486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806644, 28.256630, 21.955164> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044968, -0.300603, 0.952689,
		0.505286, 0.829515, 0.237888,
		-0.861779, 0.470683, 0.189192,
		33.548111, 28.397835, 22.011921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835434, 28.265882, 22.176781>,  <34.151356, 28.068357, 21.879486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835434, 28.265882, 22.176781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140255, 28.011019, 22.222916>,  <35.323147, 27.858101, 22.250597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.140255, 28.011019, 22.222916>,  <34.835434, 28.265882, 22.176781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140255, 28.011019, 22.222916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133500, -0.019694, -0.990853,
		0.633605, 0.770479, 0.070053,
		0.762052, -0.637161, 0.115337,
		35.368870, 27.819870, 22.257517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421421, 28.527592, 21.707565>,  <34.835434, 28.265882, 22.176781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421421, 28.527592, 21.707565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.510830, 28.147688, 21.795198>,  <35.564476, 27.919746, 21.847778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.510830, 28.147688, 21.795198>,  <35.421421, 28.527592, 21.707565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510830, 28.147688, 21.795198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319074, -0.141083, -0.937170,
		0.920993, 0.279384, 0.271508,
		0.223525, -0.949758, 0.219081,
		35.577888, 27.862761, 21.860922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150497, 28.479456, 21.752029>,  <35.421421, 28.527592, 21.707565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150497, 28.479456, 21.752029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.007343, 28.124092, 21.637035>,  <35.921452, 27.910873, 21.568039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.007343, 28.124092, 21.637035>,  <36.150497, 28.479456, 21.752029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007343, 28.124092, 21.637035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624026, 0.001477, -0.781402,
		0.694629, -0.459051, 0.553862,
		-0.357885, -0.888409, -0.287486,
		35.899979, 27.857569, 21.550789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772026, 28.234922, 21.446968>,  <36.150497, 28.479456, 21.752029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772026, 28.234922, 21.446968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.473629, 27.996553, 21.328054>,  <36.294590, 27.853533, 21.256706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.473629, 27.996553, 21.328054>,  <36.772026, 28.234922, 21.446968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473629, 27.996553, 21.328054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436706, -0.100719, -0.893948,
		0.502782, -0.796701, 0.335377,
		-0.745988, -0.595922, -0.297284,
		36.249832, 27.817778, 21.238869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.115757, 27.670712, 21.062489>,  <36.772026, 28.234922, 21.446968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.115757, 27.670712, 21.062489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.735199, 27.634607, 20.944704>,  <36.506866, 27.612946, 20.874033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.735199, 27.634607, 20.944704>,  <37.115757, 27.670712, 21.062489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735199, 27.634607, 20.944704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306839, -0.195498, -0.931466,
		0.026508, -0.976542, 0.213691,
		-0.951392, -0.090260, -0.294459,
		36.449780, 27.607529, 20.856367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216545, 27.253101, 20.473539>,  <37.115757, 27.670712, 21.062489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216545, 27.253101, 20.473539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.850662, 27.411215, 20.439917>,  <36.631134, 27.506083, 20.419743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.850662, 27.411215, 20.439917>,  <37.216545, 27.253101, 20.473539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850662, 27.411215, 20.439917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087728, -0.008814, -0.996106,
		-0.394486, -0.918517, -0.026615,
		-0.914705, 0.395284, -0.084057,
		36.576252, 27.529800, 20.414700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864697, 26.783880, 20.038992>,  <37.216545, 27.253101, 20.473539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864697, 26.783880, 20.038992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.675758, 27.135597, 20.014566>,  <36.562393, 27.346628, 19.999910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.675758, 27.135597, 20.014566>,  <36.864697, 26.783880, 20.038992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675758, 27.135597, 20.014566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139274, 0.006046, -0.990235,
		-0.870338, -0.476242, -0.125319,
		-0.472349, 0.879294, -0.061066,
		36.534054, 27.399385, 19.996246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368145, 26.834631, 19.446859>,  <36.864697, 26.783880, 20.038992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368145, 26.834631, 19.446859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.400524, 27.225353, 19.526154>,  <36.419952, 27.459787, 19.573730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.400524, 27.225353, 19.526154>,  <36.368145, 26.834631, 19.446859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400524, 27.225353, 19.526154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026296, 0.196725, -0.980106,
		-0.996371, 0.084553, -0.009761,
		0.080951, 0.976806, 0.198234,
		36.424809, 27.518394, 19.585625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909225, 27.210188, 18.933510>,  <36.368145, 26.834631, 19.446859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909225, 27.210188, 18.933510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.158665, 27.492165, 19.068672>,  <36.308331, 27.661350, 19.149771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.158665, 27.492165, 19.068672>,  <35.909225, 27.210188, 18.933510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158665, 27.492165, 19.068672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114566, 0.345170, -0.931522,
		-0.773303, 0.619610, 0.134486,
		0.623600, 0.704941, 0.337907,
		36.345745, 27.703648, 19.170044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657101, 27.884851, 18.670229>,  <35.909225, 27.210188, 18.933510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657101, 27.884851, 18.670229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046211, 27.887623, 18.762890>,  <36.279678, 27.889286, 18.818485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046211, 27.887623, 18.762890>,  <35.657101, 27.884851, 18.670229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046211, 27.887623, 18.762890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211205, 0.384986, -0.898431,
		-0.095406, 0.922896, 0.373042,
		0.972775, 0.006927, 0.231650,
		36.338043, 27.889702, 18.832384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967030, 28.406612, 18.390871>,  <35.657101, 27.884851, 18.670229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967030, 28.406612, 18.390871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.295158, 28.180382, 18.424812>,  <36.492035, 28.044643, 18.445177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.295158, 28.180382, 18.424812>,  <35.967030, 28.406612, 18.390871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295158, 28.180382, 18.424812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275579, 0.260900, -0.925196,
		0.501132, 0.782339, 0.369882,
		0.820319, -0.565577, 0.084851,
		36.541252, 28.010708, 18.450268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660728, 28.833418, 18.465099>,  <35.967030, 28.406612, 18.390871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660728, 28.833418, 18.465099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650517, 28.480215, 18.277634>,  <36.644390, 28.268293, 18.165154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650517, 28.480215, 18.277634>,  <36.660728, 28.833418, 18.465099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650517, 28.480215, 18.277634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128801, 0.462005, -0.877475,
		0.991342, -0.082768, 0.101936,
		-0.025532, -0.883007, -0.468665,
		36.642857, 28.215313, 18.137033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296177, 28.737392, 18.275654>,  <36.660728, 28.833418, 18.465099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296177, 28.737392, 18.275654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.100525, 28.481159, 18.038872>,  <36.983135, 28.327419, 17.896803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.100525, 28.481159, 18.038872>,  <37.296177, 28.737392, 18.275654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100525, 28.481159, 18.038872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322222, 0.497959, -0.805115,
		0.810512, -0.584543, -0.037154,
		-0.489126, -0.640583, -0.591954,
		36.953789, 28.288984, 17.861286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727802, 28.560642, 17.656036>,  <37.296177, 28.737392, 18.275654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727802, 28.560642, 17.656036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.361626, 28.477970, 17.517906>,  <37.141918, 28.428368, 17.435028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.361626, 28.477970, 17.517906>,  <37.727802, 28.560642, 17.656036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361626, 28.477970, 17.517906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282981, 0.279556, -0.917480,
		0.286178, -0.937617, -0.197424,
		-0.915437, -0.206696, -0.345331,
		37.086994, 28.415966, 17.414309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049908, 27.924107, 17.639774>,  <37.727802, 28.560642, 17.656036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049908, 27.924107, 17.639774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.424580, 27.813747, 17.553513>,  <38.649384, 27.747532, 17.501757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.424580, 27.813747, 17.553513>,  <38.049908, 27.924107, 17.639774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424580, 27.813747, 17.553513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148168, -0.245735, 0.957946,
		-0.317292, -0.929243, -0.189295,
		0.936681, -0.275901, -0.215654,
		38.705585, 27.730978, 17.488817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084362, 27.222322, 17.834335>,  <38.049908, 27.924107, 17.639774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084362, 27.222322, 17.834335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.461491, 27.355478, 17.827673>,  <38.687767, 27.435371, 17.823675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.461491, 27.355478, 17.827673>,  <38.084362, 27.222322, 17.834335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461491, 27.355478, 17.827673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171880, -0.442779, 0.880002,
		0.285568, -0.832546, -0.474677,
		0.942819, 0.332888, -0.016655,
		38.744335, 27.455345, 17.822676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481754, 26.643597, 18.170519>,  <38.084362, 27.222322, 17.834335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481754, 26.643597, 18.170519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.741192, 26.947870, 18.159992>,  <38.896854, 27.130434, 18.153675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.741192, 26.947870, 18.159992>,  <38.481754, 26.643597, 18.170519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741192, 26.947870, 18.159992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253847, -0.183584, 0.949662,
		0.717559, -0.622623, -0.312168,
		0.648591, 0.760682, -0.026319,
		38.935768, 27.176075, 18.152096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102306, 26.356707, 18.454437>,  <38.481754, 26.643597, 18.170519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102306, 26.356707, 18.454437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.114651, 26.754866, 18.490721>,  <39.122059, 26.993761, 18.512491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.114651, 26.754866, 18.490721>,  <39.102306, 26.356707, 18.454437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114651, 26.754866, 18.490721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205784, -0.095136, 0.973962,
		0.978111, -0.011392, -0.207773,
		0.030862, 0.995399, 0.090709,
		39.123909, 27.053486, 18.517933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615219, 26.432753, 18.901899>,  <39.102306, 26.356707, 18.454437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615219, 26.432753, 18.901899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.395374, 26.766920, 18.901167>,  <39.263470, 26.967421, 18.900726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.395374, 26.766920, 18.901167>,  <39.615219, 26.432753, 18.901899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395374, 26.766920, 18.901167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141297, 0.095118, 0.985387,
		0.823387, 0.541318, -0.170320,
		-0.549608, 0.835421, -0.001832,
		39.230492, 27.017546, 18.900618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004974, 26.752886, 19.332487>,  <39.615219, 26.432753, 18.901899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004974, 26.752886, 19.332487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.674889, 26.978804, 19.334496>,  <39.476837, 27.114355, 19.335701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.674889, 26.978804, 19.334496>,  <40.004974, 26.752886, 19.332487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674889, 26.978804, 19.334496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135181, 0.188860, 0.972655,
		0.548402, 0.803330, -0.232199,
		-0.825216, 0.564795, 0.005023,
		39.427322, 27.148243, 19.336002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173588, 27.304750, 19.819715>,  <40.004974, 26.752886, 19.332487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173588, 27.304750, 19.819715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.773926, 27.309359, 19.803930>,  <39.534130, 27.312124, 19.794460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.773926, 27.309359, 19.803930>,  <40.173588, 27.304750, 19.819715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773926, 27.309359, 19.803930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039679, -0.019294, 0.999026,
		0.010748, 0.999748, 0.019735,
		-0.999155, 0.011521, -0.039462,
		39.474178, 27.312815, 19.792091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965439, 27.809475, 20.369623>,  <40.173588, 27.304750, 19.819715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965439, 27.809475, 20.369623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.668694, 27.548367, 20.308271>,  <39.490646, 27.391701, 20.271460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.668694, 27.548367, 20.308271>,  <39.965439, 27.809475, 20.369623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668694, 27.548367, 20.308271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125201, -0.089871, 0.988053,
		-0.658758, 0.752204, -0.015055,
		-0.741864, -0.652773, -0.153380,
		39.446133, 27.352535, 20.262257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329391, 28.055098, 20.688721>,  <39.965439, 27.809475, 20.369623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329391, 28.055098, 20.688721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271191, 27.661882, 20.644062>,  <39.236271, 27.425953, 20.617266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271191, 27.661882, 20.644062>,  <39.329391, 28.055098, 20.688721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271191, 27.661882, 20.644062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413059, -0.042183, 0.909727,
		-0.899005, 0.178488, -0.399915,
		-0.145506, -0.983037, -0.111649,
		39.227539, 27.366972, 20.610567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779099, 28.080885, 20.950422>,  <39.329391, 28.055098, 20.688721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779099, 28.080885, 20.950422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.900585, 27.699804, 20.946144>,  <38.973476, 27.471155, 20.943577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.900585, 27.699804, 20.946144>,  <38.779099, 28.080885, 20.950422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900585, 27.699804, 20.946144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132203, -0.053258, 0.989791,
		-0.943547, -0.299198, -0.142126,
		0.303712, -0.952704, -0.010696,
		38.991699, 27.413994, 20.942936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185646, 27.659119, 21.175020>,  <38.779099, 28.080885, 20.950422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185646, 27.659119, 21.175020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.544472, 27.490023, 21.226492>,  <38.759769, 27.388565, 21.257374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.544472, 27.490023, 21.226492>,  <38.185646, 27.659119, 21.175020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544472, 27.490023, 21.226492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100037, 0.089359, 0.990963,
		-0.430421, -0.901834, 0.037871,
		0.897068, -0.422743, 0.128678,
		38.813591, 27.363199, 21.265095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049454, 27.164881, 21.602695>,  <38.185646, 27.659119, 21.175020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049454, 27.164881, 21.602695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.443783, 27.204376, 21.656969>,  <38.680378, 27.228073, 21.689533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.443783, 27.204376, 21.656969>,  <38.049454, 27.164881, 21.602695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443783, 27.204376, 21.656969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129670, -0.065008, 0.989424,
		0.106516, -0.992988, -0.051283,
		0.985819, 0.098740, 0.135686,
		38.739529, 27.233997, 21.697674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187904, 26.818663, 22.274313>,  <38.049454, 27.164881, 21.602695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187904, 26.818663, 22.274313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.498543, 27.060480, 22.203411>,  <38.684925, 27.205570, 22.160870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.498543, 27.060480, 22.203411>,  <38.187904, 26.818663, 22.274313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498543, 27.060480, 22.203411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210043, 0.016799, 0.977548,
		0.593948, -0.796395, -0.113934,
		0.776600, 0.604544, -0.177255,
		38.731522, 27.241844, 22.150234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711555, 26.448299, 22.543867>,  <38.187904, 26.818663, 22.274313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711555, 26.448299, 22.543867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.835621, 26.828260, 22.528471>,  <38.910061, 27.056236, 22.519234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.835621, 26.828260, 22.528471>,  <38.711555, 26.448299, 22.543867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835621, 26.828260, 22.528471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116883, 0.002079, 0.993144,
		0.943469, -0.312540, -0.110383,
		0.310167, 0.949902, -0.038492,
		38.928673, 27.113232, 22.516924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.799305, 30.673660, 18.962200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.410313, 30.649309, 18.872238>,  <40.176918, 30.634699, 18.818260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.410313, 30.649309, 18.872238>,  <40.799305, 30.673660, 18.962200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410313, 30.649309, 18.872238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232424, -0.321363, -0.917990,
		-0.016391, -0.944997, 0.326668,
		-0.972477, -0.060879, -0.224907,
		40.118568, 30.631046, 18.804766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755192, 30.103188, 18.494551>,  <40.799305, 30.673660, 18.962200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755192, 30.103188, 18.494551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.418804, 30.312197, 18.438354>,  <40.216972, 30.437603, 18.404636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.418804, 30.312197, 18.438354>,  <40.755192, 30.103188, 18.494551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.418804, 30.312197, 18.438354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039407, -0.199810, -0.979042,
		-0.539644, -0.828882, 0.147443,
		-0.840971, 0.522523, -0.140490,
		40.166512, 30.468954, 18.396208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216904, 29.700525, 18.087177>,  <40.755192, 30.103188, 18.494551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216904, 29.700525, 18.087177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112347, 30.083076, 18.035000>,  <40.049614, 30.312607, 18.003693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.112347, 30.083076, 18.035000>,  <40.216904, 29.700525, 18.087177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112347, 30.083076, 18.035000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135757, -0.170227, -0.976009,
		-0.955638, -0.237411, 0.174331,
		-0.261391, 0.956378, -0.130445,
		40.033928, 30.369989, 17.995867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791424, 29.649626, 17.469421>,  <40.216904, 29.700525, 18.087177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791424, 29.649626, 17.469421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.876312, 30.037104, 17.520939>,  <39.927246, 30.269590, 17.551849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.876312, 30.037104, 17.520939>,  <39.791424, 29.649626, 17.469421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876312, 30.037104, 17.520939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074040, 0.147354, -0.986309,
		-0.974412, 0.199782, 0.102995,
		0.212224, 0.968697, 0.128791,
		39.939980, 30.327713, 17.559576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360229, 30.060183, 17.006289>,  <39.791424, 29.649626, 17.469421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360229, 30.060183, 17.006289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.657513, 30.315588, 17.086227>,  <39.835884, 30.468830, 17.134192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.657513, 30.315588, 17.086227>,  <39.360229, 30.060183, 17.006289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657513, 30.315588, 17.086227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024843, 0.324832, -0.945446,
		-0.668595, 0.697702, 0.257281,
		0.743212, 0.638511, 0.199848,
		39.880478, 30.507141, 17.146181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164173, 30.702217, 16.721939>,  <39.360229, 30.060183, 17.006289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164173, 30.702217, 16.721939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.562023, 30.728106, 16.754261>,  <39.800732, 30.743639, 16.773653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.562023, 30.728106, 16.754261>,  <39.164173, 30.702217, 16.721939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562023, 30.728106, 16.754261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055847, 0.321765, -0.945171,
		-0.087172, 0.944605, 0.316422,
		0.994627, 0.064722, 0.080803,
		39.860413, 30.747522, 16.778502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396435, 31.386324, 16.439810>,  <39.164173, 30.702217, 16.721939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396435, 31.386324, 16.439810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.732174, 31.168894, 16.438187>,  <39.933617, 31.038435, 16.437212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.732174, 31.168894, 16.438187>,  <39.396435, 31.386324, 16.439810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732174, 31.168894, 16.438187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232276, 0.365394, -0.901407,
		0.491465, 0.755654, 0.432953,
		0.839351, -0.543575, -0.004058,
		39.983978, 31.005821, 16.436970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912392, 31.853889, 16.220907>,  <39.396435, 31.386324, 16.439810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912392, 31.853889, 16.220907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.066303, 31.489897, 16.159096>,  <40.158649, 31.271502, 16.122009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.066303, 31.489897, 16.159096>,  <39.912392, 31.853889, 16.220907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066303, 31.489897, 16.159096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432061, 0.325515, -0.841049,
		0.815640, 0.256851, 0.518419,
		0.384778, -0.909982, -0.154527,
		40.181736, 31.216902, 16.112738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653320, 31.974161, 16.021320>,  <39.912392, 31.853889, 16.220907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653320, 31.974161, 16.021320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.543575, 31.619322, 15.872845>,  <40.477730, 31.406418, 15.783759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.543575, 31.619322, 15.872845>,  <40.653320, 31.974161, 16.021320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543575, 31.619322, 15.872845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327214, 0.276848, -0.903485,
		0.904244, -0.369339, 0.214315,
		-0.274360, -0.887098, -0.371191,
		40.461266, 31.353191, 15.761487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992241, 32.032784, 15.445463>,  <40.653320, 31.974161, 16.021320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992241, 32.032784, 15.445463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.797981, 31.690269, 15.375123>,  <40.681423, 31.484762, 15.332919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.797981, 31.690269, 15.375123>,  <40.992241, 32.032784, 15.445463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797981, 31.690269, 15.375123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158668, 0.111475, -0.981019,
		0.859631, -0.504336, 0.081726,
		-0.485653, -0.856282, -0.175850,
		40.652287, 31.433386, 15.322368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412094, 31.586922, 15.072728>,  <40.992241, 32.032784, 15.445463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412094, 31.586922, 15.072728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.037361, 31.482431, 14.979679>,  <40.812523, 31.419737, 14.923850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.037361, 31.482431, 14.979679>,  <41.412094, 31.586922, 15.072728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037361, 31.482431, 14.979679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209066, 0.115014, -0.971115,
		0.280434, -0.958401, -0.053135,
		-0.936829, -0.261225, -0.232623,
		40.756313, 31.404064, 14.909892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438038, 30.974655, 14.627178>,  <41.412094, 31.586922, 15.072728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438038, 30.974655, 14.627178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.082676, 31.146685, 14.562959>,  <40.869457, 31.249903, 14.524427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.082676, 31.146685, 14.562959>,  <41.438038, 30.974655, 14.627178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082676, 31.146685, 14.562959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280124, 0.230805, -0.931804,
		-0.363690, -0.872792, -0.325522,
		-0.888403, 0.430074, -0.160549,
		40.816154, 31.275707, 14.514794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107609, 30.646078, 14.051637>,  <41.438038, 30.974655, 14.627178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107609, 30.646078, 14.051637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.041565, 31.035690, 14.113604>,  <41.001938, 31.269459, 14.150784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.041565, 31.035690, 14.113604>,  <41.107609, 30.646078, 14.051637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041565, 31.035690, 14.113604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285760, 0.197582, -0.937711,
		-0.943970, -0.110558, -0.310963,
		-0.165113, 0.974032, 0.154918,
		40.992031, 31.327900, 14.160079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085312, 30.747276, 13.400403>,  <41.107609, 30.646078, 14.051637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085312, 30.747276, 13.400403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.096855, 31.124073, 13.534163>,  <41.103783, 31.350151, 13.614418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.096855, 31.124073, 13.534163>,  <41.085312, 30.747276, 13.400403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096855, 31.124073, 13.534163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571922, 0.258808, -0.778411,
		-0.819801, 0.213713, -0.531276,
		0.028859, 0.941990, 0.334398,
		41.105515, 31.406670, 13.634481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724079, 30.112011, 13.063363>,  <41.085312, 30.747276, 13.400403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724079, 30.112011, 13.063363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.441669, 29.933128, 12.843712>,  <40.272224, 29.825798, 12.711922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.441669, 29.933128, 12.843712>,  <40.724079, 30.112011, 13.063363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441669, 29.933128, 12.843712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381918, -0.412543, 0.827011,
		-0.596385, 0.793607, 0.120467,
		-0.706020, -0.447208, -0.549128,
		40.229862, 29.798965, 12.678973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155251, 30.146179, 13.424016>,  <40.724079, 30.112011, 13.063363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155251, 30.146179, 13.424016> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.048740, 29.864578, 13.160660>,  <39.984837, 29.695618, 13.002645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.048740, 29.864578, 13.160660>,  <40.155251, 30.146179, 13.424016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048740, 29.864578, 13.160660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284910, -0.595047, 0.751495,
		-0.920829, 0.387684, -0.042134,
		-0.266271, -0.704003, -0.658392,
		39.968861, 29.653378, 12.963142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413704, 30.082777, 13.485068>,  <40.155251, 30.146179, 13.424016>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413704, 30.082777, 13.485068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.612148, 29.756821, 13.365183>,  <39.731213, 29.561247, 13.293252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.612148, 29.756821, 13.365183>,  <39.413704, 30.082777, 13.485068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612148, 29.756821, 13.365183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319677, -0.492370, 0.809554,
		-0.807269, -0.305816, -0.504771,
		0.496109, -0.814892, -0.299713,
		39.760983, 29.512354, 13.275269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875759, 29.596981, 13.670183>,  <39.413704, 30.082777, 13.485068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875759, 29.596981, 13.670183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.200401, 29.383068, 13.576116>,  <39.395187, 29.254721, 13.519675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.200401, 29.383068, 13.576116>,  <38.875759, 29.596981, 13.670183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200401, 29.383068, 13.576116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270286, -0.700598, 0.660384,
		-0.517919, -0.472409, -0.713154,
		0.811606, -0.534781, -0.235167,
		39.443882, 29.222633, 13.505565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729900, 28.879297, 13.572919>,  <38.875759, 29.596981, 13.670183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729900, 28.879297, 13.572919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.124840, 28.880516, 13.636340>,  <39.361801, 28.881247, 13.674393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.124840, 28.880516, 13.636340>,  <38.729900, 28.879297, 13.572919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124840, 28.880516, 13.636340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121273, -0.629725, 0.767293,
		0.102183, -0.776812, -0.621387,
		0.987346, 0.003047, 0.158553,
		39.421043, 28.881430, 13.683907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900646, 28.237328, 13.516859>,  <38.729900, 28.879297, 13.572919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900646, 28.237328, 13.516859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.197121, 28.389467, 13.738120>,  <39.375004, 28.480751, 13.870876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.197121, 28.389467, 13.738120>,  <38.900646, 28.237328, 13.516859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197121, 28.389467, 13.738120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181639, -0.679636, 0.710705,
		0.646259, -0.627239, -0.434650,
		0.741186, 0.380351, 0.553152,
		39.419476, 28.503572, 13.904066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033657, 27.603296, 13.979569>,  <38.900646, 28.237328, 13.516859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033657, 27.603296, 13.979569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.182461, 27.938856, 14.138492>,  <39.271744, 28.140192, 14.233845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.182461, 27.938856, 14.138492>,  <39.033657, 27.603296, 13.979569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182461, 27.938856, 14.138492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116587, -0.466865, 0.876609,
		0.920876, -0.279790, -0.271485,
		0.372013, 0.838901, 0.397306,
		39.294064, 28.190527, 14.257684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522842, 27.361654, 14.504840>,  <39.033657, 27.603296, 13.979569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522842, 27.361654, 14.504840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.459145, 27.745174, 14.598939>,  <39.420925, 27.975286, 14.655398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.459145, 27.745174, 14.598939>,  <39.522842, 27.361654, 14.504840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459145, 27.745174, 14.598939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177420, -0.262202, 0.948563,
		0.971166, 0.109316, 0.211865,
		-0.159245, 0.958802, 0.235247,
		39.411373, 28.032814, 14.669513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028465, 27.638290, 14.978849>,  <39.522842, 27.361654, 14.504840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028465, 27.638290, 14.978849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.693810, 27.850376, 15.033864>,  <39.493015, 27.977627, 15.066873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.693810, 27.850376, 15.033864>,  <40.028465, 27.638290, 14.978849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693810, 27.850376, 15.033864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074556, -0.138524, 0.987549,
		0.542663, 0.836472, 0.076363,
		-0.836635, 0.530213, 0.137536,
		39.442818, 28.009439, 15.075125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198509, 28.135118, 15.527591>,  <40.028465, 27.638290, 14.978849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198509, 28.135118, 15.527591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.800537, 28.154297, 15.562965>,  <39.561756, 28.165804, 15.584190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.800537, 28.154297, 15.562965>,  <40.198509, 28.135118, 15.527591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800537, 28.154297, 15.562965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079739, -0.160101, 0.983875,
		0.061329, 0.985936, 0.155466,
		-0.994927, 0.047944, 0.088437,
		39.502060, 28.168680, 15.589497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028866, 28.484423, 16.181599>,  <40.198509, 28.135118, 15.527591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028866, 28.484423, 16.181599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.686302, 28.309776, 16.071379>,  <39.480762, 28.204988, 16.005247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.686302, 28.309776, 16.071379>,  <40.028866, 28.484423, 16.181599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686302, 28.309776, 16.071379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194257, -0.221991, 0.955502,
		-0.478357, 0.871829, 0.105300,
		-0.856410, -0.436616, -0.275550,
		39.429379, 28.178791, 15.988714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555622, 28.685993, 16.708933>,  <40.028866, 28.484423, 16.181599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555622, 28.685993, 16.708933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.381981, 28.372673, 16.530945>,  <39.277798, 28.184681, 16.424152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.381981, 28.372673, 16.530945>,  <39.555622, 28.685993, 16.708933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381981, 28.372673, 16.530945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285134, -0.349073, 0.892662,
		-0.854548, 0.514384, -0.071811,
		-0.434104, -0.783298, -0.444968,
		39.251751, 28.137684, 16.397455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862705, 28.687878, 16.979818>,  <39.555622, 28.685993, 16.708933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862705, 28.687878, 16.979818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.943954, 28.319540, 16.846682>,  <38.992702, 28.098537, 16.766800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.943954, 28.319540, 16.846682>,  <38.862705, 28.687878, 16.979818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943954, 28.319540, 16.846682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202784, -0.372121, 0.905762,
		-0.957924, -0.116487, -0.262320,
		0.203124, -0.920846, -0.332842,
		39.004890, 28.043285, 16.746828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370289, 28.453491, 17.114681>,  <38.862705, 28.687878, 16.979818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370289, 28.453491, 17.114681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.629704, 28.150553, 17.084162>,  <38.785355, 27.968790, 17.065849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.629704, 28.150553, 17.084162>,  <38.370289, 28.453491, 17.114681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629704, 28.150553, 17.084162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362507, -0.395448, 0.843925,
		-0.669317, -0.519659, -0.531008,
		0.648540, -0.757347, -0.076300,
		38.824265, 27.923349, 17.061272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742970, 28.059027, 16.939404>,  <38.370289, 28.453491, 17.114681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742970, 28.059027, 16.939404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.385269, 28.235067, 16.971972>,  <37.170650, 28.340693, 16.991512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.385269, 28.235067, 16.971972>,  <37.742970, 28.059027, 16.939404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385269, 28.235067, 16.971972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007770, 0.166622, -0.985990,
		-0.447504, -0.882352, -0.145582,
		-0.894248, 0.440103, 0.081420,
		37.116993, 28.367098, 16.996397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521477, 27.986633, 16.306068>,  <37.742970, 28.059027, 16.939404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521477, 27.986633, 16.306068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.251667, 28.257030, 16.424759>,  <37.089779, 28.419270, 16.495974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.251667, 28.257030, 16.424759>,  <37.521477, 27.986633, 16.306068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251667, 28.257030, 16.424759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226572, 0.192980, -0.954685,
		-0.702624, -0.711190, 0.022991,
		-0.674526, 0.675994, 0.296728,
		37.049309, 28.459829, 16.513777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902962, 27.914427, 15.904592>,  <37.521477, 27.986633, 16.306068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902962, 27.914427, 15.904592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.900196, 28.293701, 16.031647>,  <36.898537, 28.521267, 16.107880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.900196, 28.293701, 16.031647>,  <36.902962, 27.914427, 15.904592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900196, 28.293701, 16.031647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175158, 0.311585, -0.933935,
		-0.984516, -0.062095, 0.163928,
		-0.006915, 0.948187, 0.317637,
		36.898121, 28.578157, 16.126938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327740, 28.202974, 15.537268>,  <36.902962, 27.914427, 15.904592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327740, 28.202974, 15.537268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552872, 28.502232, 15.677837>,  <36.687950, 28.681786, 15.762179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552872, 28.502232, 15.677837>,  <36.327740, 28.202974, 15.537268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552872, 28.502232, 15.677837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158178, 0.514790, -0.842598,
		-0.811294, 0.418655, 0.408081,
		0.562834, 0.748144, 0.351424,
		36.721722, 28.726675, 15.783264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908802, 28.780354, 15.514555>,  <36.327740, 28.202974, 15.537268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908802, 28.780354, 15.514555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.280193, 28.928196, 15.529056>,  <36.503029, 29.016901, 15.537756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.280193, 28.928196, 15.529056>,  <35.908802, 28.780354, 15.514555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280193, 28.928196, 15.529056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165952, 0.500239, -0.849836,
		-0.332237, 0.783041, 0.525799,
		0.928482, 0.369604, 0.036251,
		36.558739, 29.039078, 15.539930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836121, 29.389854, 15.212762>,  <35.908802, 28.780354, 15.514555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836121, 29.389854, 15.212762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.233952, 29.350119, 15.200397>,  <36.472649, 29.326277, 15.192979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.233952, 29.350119, 15.200397>,  <35.836121, 29.389854, 15.212762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233952, 29.350119, 15.200397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020372, 0.477314, -0.878496,
		0.102022, 0.873100, 0.476748,
		0.994573, -0.099338, -0.030910,
		36.532322, 29.320316, 15.191125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067623, 30.040922, 15.030174>,  <35.836121, 29.389854, 15.212762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067623, 30.040922, 15.030174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.365448, 29.786638, 14.948686>,  <36.544144, 29.634068, 14.899793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.365448, 29.786638, 14.948686>,  <36.067623, 30.040922, 15.030174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365448, 29.786638, 14.948686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221773, 0.523399, -0.822721,
		0.629638, 0.567388, 0.530686,
		0.744563, -0.635708, -0.203721,
		36.588818, 29.595926, 14.887569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036842, 30.763630, 15.268321>,  <36.067623, 30.040922, 15.030174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036842, 30.763630, 15.268321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689487, 30.892317, 15.117376>,  <35.481075, 30.969528, 15.026810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.689487, 30.892317, 15.117376>,  <36.036842, 30.763630, 15.268321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689487, 30.892317, 15.117376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421559, -0.078207, 0.903422,
		0.261132, 0.943601, 0.203536,
		-0.868388, 0.321715, -0.377361,
		35.428970, 30.988831, 15.004168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687416, 31.100740, 15.763393>,  <36.036842, 30.763630, 15.268321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687416, 31.100740, 15.763393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.363129, 31.033491, 15.539081>,  <35.168556, 30.993141, 15.404493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.363129, 31.033491, 15.539081>,  <35.687416, 31.100740, 15.763393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363129, 31.033491, 15.539081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523471, -0.220738, 0.822954,
		-0.262143, 0.960734, 0.090949,
		-0.810715, -0.168123, -0.560781,
		35.119915, 30.983055, 15.370846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119568, 31.474192, 15.942480>,  <35.687416, 31.100740, 15.763393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119568, 31.474192, 15.942480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.913174, 31.185299, 15.758245>,  <34.789337, 31.011963, 15.647704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.913174, 31.185299, 15.758245>,  <35.119568, 31.474192, 15.942480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913174, 31.185299, 15.758245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669716, 0.004889, 0.742602,
		-0.534078, 0.691635, -0.486212,
		-0.515987, -0.722230, -0.460588,
		34.758377, 30.968630, 15.620070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405125, 31.664436, 15.800630>,  <35.119568, 31.474192, 15.942480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405125, 31.664436, 15.800630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.405449, 31.265692, 15.832305>,  <34.405643, 31.026445, 15.851310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.405449, 31.265692, 15.832305>,  <34.405125, 31.664436, 15.800630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405449, 31.265692, 15.832305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774801, 0.049436, 0.630269,
		-0.632204, -0.061867, -0.772328,
		0.000812, -0.996859, 0.079188,
		34.405693, 30.966635, 15.856061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670444, 31.391207, 16.098799>,  <34.405125, 31.664436, 15.800630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670444, 31.391207, 16.098799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920925, 31.081068, 16.131571>,  <34.071213, 30.894985, 16.151234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.920925, 31.081068, 16.131571>,  <33.670444, 31.391207, 16.098799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920925, 31.081068, 16.131571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565898, -0.379705, 0.731836,
		-0.536317, -0.504639, -0.676538,
		0.626198, -0.775347, 0.081932,
		34.108784, 30.848465, 16.156151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227795, 30.842102, 16.206800>,  <33.670444, 31.391207, 16.098799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227795, 30.842102, 16.206800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.589401, 30.712347, 16.318171>,  <33.806366, 30.634493, 16.384993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.589401, 30.712347, 16.318171>,  <33.227795, 30.842102, 16.206800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589401, 30.712347, 16.318171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369008, -0.263318, 0.891346,
		-0.215824, -0.908536, -0.357746,
		0.904021, -0.324385, 0.278426,
		33.860607, 30.615030, 16.401697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086964, 30.139698, 16.402954>,  <33.227795, 30.842102, 16.206800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086964, 30.139698, 16.402954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.421108, 30.272099, 16.578503>,  <33.621593, 30.351538, 16.683832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.421108, 30.272099, 16.578503>,  <33.086964, 30.139698, 16.402954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421108, 30.272099, 16.578503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405753, -0.167343, 0.898533,
		0.370857, -0.928674, -0.005488,
		0.835362, 0.331000, 0.438873,
		33.671719, 30.371399, 16.710165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.637959, 33.996342, 14.515924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.853535, 33.660492, 14.543003>,  <38.982880, 33.458984, 14.559250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.853535, 33.660492, 14.543003>,  <38.637959, 33.996342, 14.515924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853535, 33.660492, 14.543003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645168, -0.359775, 0.674032,
		-0.541577, -0.406936, -0.735593,
		0.538936, -0.839622, 0.067696,
		39.015217, 33.408604, 14.563313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142075, 33.478897, 14.534100>,  <38.637959, 33.996342, 14.515924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142075, 33.478897, 14.534100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.488651, 33.373806, 14.703928>,  <38.696598, 33.310753, 14.805825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.488651, 33.373806, 14.703928>,  <38.142075, 33.478897, 14.534100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.488651, 33.373806, 14.703928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481610, -0.215523, 0.849471,
		-0.131673, -0.940492, -0.313269,
		0.866438, -0.262725, 0.424572,
		38.748581, 33.294987, 14.831299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964954, 32.862270, 14.904720>,  <38.142075, 33.478897, 14.534100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964954, 32.862270, 14.904720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.297169, 33.030636, 15.050617>,  <38.496498, 33.131657, 15.138156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.297169, 33.030636, 15.050617>,  <37.964954, 32.862270, 14.904720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297169, 33.030636, 15.050617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281610, -0.247643, 0.927021,
		0.480524, -0.872641, -0.087143,
		0.830537, 0.420916, 0.364743,
		38.546329, 33.156910, 15.160040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144855, 32.386490, 15.382539>,  <37.964954, 32.862270, 14.904720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144855, 32.386490, 15.382539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.330177, 32.728687, 15.475044>,  <38.441372, 32.934006, 15.530547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.330177, 32.728687, 15.475044>,  <38.144855, 32.386490, 15.382539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330177, 32.728687, 15.475044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170581, -0.169992, 0.970569,
		0.869627, -0.489118, 0.067173,
		0.463304, 0.855492, 0.231264,
		38.469170, 32.985336, 15.544423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617752, 32.205532, 15.926821>,  <38.144855, 32.386490, 15.382539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617752, 32.205532, 15.926821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.608658, 32.604843, 15.948457>,  <38.603199, 32.844429, 15.961438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.608658, 32.604843, 15.948457>,  <38.617752, 32.205532, 15.926821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608658, 32.604843, 15.948457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031493, -0.053361, 0.998079,
		0.999245, 0.024397, -0.030226,
		-0.022738, 0.998277, 0.054089,
		38.601837, 32.904327, 15.964684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973934, 32.268715, 16.414064>,  <38.617752, 32.205532, 15.926821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973934, 32.268715, 16.414064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.810669, 32.633862, 16.410681>,  <38.712711, 32.852951, 16.408649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.810669, 32.633862, 16.410681>,  <38.973934, 32.268715, 16.414064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810669, 32.633862, 16.410681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072194, 0.041514, 0.996527,
		0.910051, 0.406132, -0.082848,
		-0.408161, 0.912871, -0.008460,
		38.688221, 32.907722, 16.408142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391354, 32.769695, 16.827078>,  <38.973934, 32.268715, 16.414064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391354, 32.769695, 16.827078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.008926, 32.884163, 16.801655>,  <38.779469, 32.952843, 16.786402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.008926, 32.884163, 16.801655>,  <39.391354, 32.769695, 16.827078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008926, 32.884163, 16.801655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049885, 0.054823, 0.997249,
		0.288866, 0.956610, -0.038139,
		-0.956069, 0.286168, -0.063557,
		38.722107, 32.970013, 16.782587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334644, 33.092094, 17.463478>,  <39.391354, 32.769695, 16.827078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334644, 33.092094, 17.463478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.952858, 33.092609, 17.344147>,  <38.723785, 33.092918, 17.272549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.952858, 33.092609, 17.344147>,  <39.334644, 33.092094, 17.463478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952858, 33.092609, 17.344147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297500, -0.078599, 0.951481,
		-0.022227, 0.996905, 0.075402,
		-0.954463, 0.001284, -0.298327,
		38.666519, 33.092995, 17.254648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016975, 33.334251, 18.007792>,  <39.334644, 33.092094, 17.463478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016975, 33.334251, 18.007792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.712429, 33.192959, 17.790331>,  <38.529701, 33.108185, 17.659855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.712429, 33.192959, 17.790331>,  <39.016975, 33.334251, 18.007792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712429, 33.192959, 17.790331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585952, 0.016029, 0.810187,
		-0.277466, 0.935400, -0.219178,
		-0.761362, -0.353227, -0.543653,
		38.484020, 33.086990, 17.627235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571407, 33.877235, 17.945923>,  <39.016975, 33.334251, 18.007792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571407, 33.877235, 17.945923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.403584, 33.516937, 17.900986>,  <38.302891, 33.300758, 17.874023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.403584, 33.516937, 17.900986>,  <38.571407, 33.877235, 17.945923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403584, 33.516937, 17.900986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621265, 0.194710, 0.759024,
		-0.661816, 0.388250, -0.641296,
		-0.419558, -0.900749, -0.112344,
		38.277718, 33.246712, 17.867283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874359, 33.959522, 18.087242>,  <38.571407, 33.877235, 17.945923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874359, 33.959522, 18.087242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.949413, 33.569168, 18.131866>,  <37.994446, 33.334957, 18.158642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.949413, 33.569168, 18.131866>,  <37.874359, 33.959522, 18.087242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949413, 33.569168, 18.131866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535376, -0.006390, 0.844589,
		-0.823507, -0.218205, -0.523663,
		0.187640, -0.975882, 0.111560,
		38.005707, 33.276405, 18.165335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255451, 33.688545, 18.154835>,  <37.874359, 33.959522, 18.087242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255451, 33.688545, 18.154835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.522358, 33.443153, 18.323780>,  <37.682503, 33.295918, 18.425146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.522358, 33.443153, 18.323780>,  <37.255451, 33.688545, 18.154835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522358, 33.443153, 18.323780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477664, 0.082622, 0.874649,
		-0.571478, -0.785374, -0.237908,
		0.667270, -0.613483, 0.422362,
		37.722538, 33.259109, 18.450489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886742, 33.641365, 17.551996>,  <37.255451, 33.688545, 18.154835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886742, 33.641365, 17.551996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.487686, 33.664696, 17.537441>,  <36.248253, 33.678696, 17.528708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.487686, 33.664696, 17.537441>,  <36.886742, 33.641365, 17.551996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487686, 33.664696, 17.537441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041834, 0.095020, -0.994596,
		-0.054557, -0.993765, -0.097236,
		-0.997634, 0.058330, -0.036389,
		36.188396, 33.682194, 17.526524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711288, 33.086720, 17.063118>,  <36.886742, 33.641365, 17.551996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711288, 33.086720, 17.063118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.412594, 33.351933, 17.084173>,  <36.233376, 33.511063, 17.096806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.412594, 33.351933, 17.084173>,  <36.711288, 33.086720, 17.063118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412594, 33.351933, 17.084173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020468, 0.102010, -0.994573,
		-0.664806, -0.741605, -0.089746,
		-0.746735, 0.663035, 0.052637,
		36.188572, 33.550842, 17.099964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318478, 33.015316, 16.413052>,  <36.711288, 33.086720, 17.063118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318478, 33.015316, 16.413052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.175438, 33.362347, 16.551285>,  <36.089615, 33.570564, 16.634224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.175438, 33.362347, 16.551285>,  <36.318478, 33.015316, 16.413052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175438, 33.362347, 16.551285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141184, 0.315573, -0.938340,
		-0.923140, -0.384343, 0.009639,
		-0.357602, 0.867580, 0.345581,
		36.068157, 33.622620, 16.654959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678471, 33.144863, 16.086132>,  <36.318478, 33.015316, 16.413052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678471, 33.144863, 16.086132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.806637, 33.509476, 16.189241>,  <35.883537, 33.728241, 16.251106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.806637, 33.509476, 16.189241>,  <35.678471, 33.144863, 16.086132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806637, 33.509476, 16.189241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033358, 0.282808, -0.958596,
		-0.946688, 0.298554, 0.121024,
		0.320420, 0.911529, 0.257772,
		35.902763, 33.782936, 16.266573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372826, 33.561539, 15.632710>,  <35.678471, 33.144863, 16.086132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372826, 33.561539, 15.632710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.643105, 33.812622, 15.787324>,  <35.805271, 33.963272, 15.880093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.643105, 33.812622, 15.787324>,  <35.372826, 33.561539, 15.632710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643105, 33.812622, 15.787324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002009, 0.522777, -0.852467,
		-0.737175, 0.576788, 0.351978,
		0.675699, 0.627710, 0.386537,
		35.845814, 34.000935, 15.903285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129276, 34.356884, 15.540245>,  <35.372826, 33.561539, 15.632710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129276, 34.356884, 15.540245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.526161, 34.333908, 15.584470>,  <35.764290, 34.320122, 15.611005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.526161, 34.333908, 15.584470>,  <35.129276, 34.356884, 15.540245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526161, 34.333908, 15.584470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123951, 0.545151, -0.829124,
		-0.012644, 0.836368, 0.548023,
		0.992208, -0.057444, 0.110561,
		35.823822, 34.316673, 15.617639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421230, 35.120178, 15.411941>,  <35.129276, 34.356884, 15.540245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421230, 35.120178, 15.411941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.696445, 34.835155, 15.356999>,  <35.861572, 34.664143, 15.324035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.696445, 34.835155, 15.356999>,  <35.421230, 35.120178, 15.411941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696445, 34.835155, 15.356999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264398, 0.422416, -0.866982,
		0.675797, 0.560199, 0.479036,
		0.688035, -0.712560, -0.137352,
		35.902855, 34.621387, 15.315794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978527, 35.503227, 15.109350>,  <35.421230, 35.120178, 15.411941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978527, 35.503227, 15.109350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.103500, 35.136318, 15.010557>,  <36.178486, 34.916172, 14.951282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.103500, 35.136318, 15.010557>,  <35.978527, 35.503227, 15.109350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103500, 35.136318, 15.010557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130938, 0.299101, -0.945195,
		0.940872, 0.262972, 0.213555,
		0.312434, -0.917270, -0.246983,
		36.197231, 34.861137, 14.936462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520397, 35.604427, 14.661527>,  <35.978527, 35.503227, 15.109350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520397, 35.604427, 14.661527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.462551, 35.219006, 14.571505>,  <36.427845, 34.987751, 14.517491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.462551, 35.219006, 14.571505>,  <36.520397, 35.604427, 14.661527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462551, 35.219006, 14.571505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120925, 0.208531, -0.970511,
		0.982071, -0.167567, 0.086360,
		-0.144617, -0.963554, -0.225055,
		36.419167, 34.929939, 14.503988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095219, 35.241032, 14.314653>,  <36.520397, 35.604427, 14.661527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095219, 35.241032, 14.314653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.778046, 35.024910, 14.201987>,  <36.587742, 34.895237, 14.134387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.778046, 35.024910, 14.201987>,  <37.095219, 35.241032, 14.314653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778046, 35.024910, 14.201987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242484, 0.144269, -0.959369,
		0.558985, -0.829012, 0.016619,
		-0.792930, -0.540302, -0.281666,
		36.540165, 34.862820, 14.117488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299973, 34.844124, 13.786968>,  <37.095219, 35.241032, 14.314653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299973, 34.844124, 13.786968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.903225, 34.865261, 13.740668>,  <36.665176, 34.877945, 13.712889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.903225, 34.865261, 13.740668>,  <37.299973, 34.844124, 13.786968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903225, 34.865261, 13.740668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120128, 0.088987, -0.988762,
		-0.041951, -0.994630, -0.094612,
		-0.991872, 0.052845, -0.115750,
		36.605663, 34.881115, 13.705943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210892, 34.595310, 13.119631>,  <37.299973, 34.844124, 13.786968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210892, 34.595310, 13.119631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.868969, 34.777195, 13.219660>,  <36.663815, 34.886326, 13.279677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.868969, 34.777195, 13.219660>,  <37.210892, 34.595310, 13.119631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868969, 34.777195, 13.219660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039625, 0.423290, -0.905127,
		-0.517428, -0.783620, -0.343814,
		-0.854808, 0.454715, 0.250073,
		36.612526, 34.913609, 13.294682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745060, 34.331703, 12.648408>,  <37.210892, 34.595310, 13.119631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745060, 34.331703, 12.648408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.594604, 34.672382, 12.794358>,  <36.504330, 34.876789, 12.881928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.594604, 34.672382, 12.794358>,  <36.745060, 34.331703, 12.648408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594604, 34.672382, 12.794358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096472, 0.355655, -0.929625,
		-0.921527, -0.384869, -0.051611,
		-0.376139, 0.851696, 0.364875,
		36.481762, 34.927891, 12.903821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598778, 33.770172, 13.138003>,  <36.745060, 34.331703, 12.648408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598778, 33.770172, 13.138003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.533333, 33.454163, 12.901665>,  <36.494068, 33.264557, 12.759861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.533333, 33.454163, 12.901665>,  <36.598778, 33.770172, 13.138003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533333, 33.454163, 12.901665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738726, -0.298840, 0.604135,
		-0.653848, 0.535316, -0.534715,
		-0.163609, -0.790020, -0.590847,
		36.484249, 33.217155, 12.724411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016438, 33.479340, 13.382757>,  <36.598778, 33.770172, 13.138003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016438, 33.479340, 13.382757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.138233, 33.168346, 13.162643>,  <36.211311, 32.981750, 13.030575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.138233, 33.168346, 13.162643>,  <36.016438, 33.479340, 13.382757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138233, 33.168346, 13.162643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628262, -0.598160, 0.497486,
		-0.715943, 0.194244, -0.670593,
		0.304488, -0.777479, -0.550285,
		36.229580, 32.935104, 12.997558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400665, 33.089790, 13.237733>,  <36.016438, 33.479340, 13.382757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400665, 33.089790, 13.237733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.688858, 32.821472, 13.167377>,  <35.861774, 32.660480, 13.125164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.688858, 32.821472, 13.167377>,  <35.400665, 33.089790, 13.237733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688858, 32.821472, 13.167377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518161, -0.689303, 0.506331,
		-0.460885, -0.273665, -0.844211,
		0.720482, -0.670798, -0.175887,
		35.905003, 32.620232, 13.114612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061127, 32.479977, 12.974693>,  <35.400665, 33.089790, 13.237733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061127, 32.479977, 12.974693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.399521, 32.375793, 13.160797>,  <35.602558, 32.313286, 13.272460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.399521, 32.375793, 13.160797>,  <35.061127, 32.479977, 12.974693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399521, 32.375793, 13.160797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498269, -0.696812, 0.515927,
		0.189823, -0.668293, -0.719272,
		0.845988, -0.260456, 0.465260,
		35.653316, 32.297657, 13.300375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025475, 31.820635, 13.235694>,  <35.061127, 32.479977, 12.974693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025475, 31.820635, 13.235694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.368214, 31.893972, 13.428438>,  <35.573860, 31.937975, 13.544085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.368214, 31.893972, 13.428438>,  <35.025475, 31.820635, 13.235694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368214, 31.893972, 13.428438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312239, -0.559189, 0.767994,
		0.410257, -0.808513, -0.421896,
		0.856852, 0.183342, 0.481861,
		35.625271, 31.948975, 13.572996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328228, 31.142387, 13.353590>,  <35.025475, 31.820635, 13.235694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328228, 31.142387, 13.353590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.463406, 31.408983, 13.619398>,  <35.544514, 31.568941, 13.778883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.463406, 31.408983, 13.619398>,  <35.328228, 31.142387, 13.353590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463406, 31.408983, 13.619398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109891, -0.673288, 0.731168,
		0.934728, -0.320121, -0.154294,
		0.337947, 0.666487, 0.664520,
		35.564789, 31.608929, 13.818754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696613, 30.694452, 13.817976>,  <35.328228, 31.142387, 13.353590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696613, 30.694452, 13.817976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.609867, 31.042677, 13.994654>,  <35.557819, 31.251612, 14.100660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.609867, 31.042677, 13.994654>,  <35.696613, 30.694452, 13.817976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609867, 31.042677, 13.994654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283464, -0.489124, 0.824867,
		0.934140, 0.053680, 0.352847,
		-0.216864, 0.870561, 0.441694,
		35.544807, 31.303844, 14.127162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124893, 30.696823, 14.520888>,  <35.696613, 30.694452, 13.817976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124893, 30.696823, 14.520888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.802074, 30.932886, 14.528793>,  <35.608383, 31.074524, 14.533537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.802074, 30.932886, 14.528793>,  <36.124893, 30.696823, 14.520888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802074, 30.932886, 14.528793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195484, -0.298610, 0.934140,
		0.557190, 0.750032, 0.356359,
		-0.807047, 0.590156, 0.019763,
		35.559959, 31.109934, 14.534722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813461, 30.392776, 14.745676>,  <36.124893, 30.696823, 14.520888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813461, 30.392776, 14.745676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.837215, 30.024681, 14.590946>,  <36.851467, 29.803823, 14.498109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.837215, 30.024681, 14.590946>,  <36.813461, 30.392776, 14.745676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837215, 30.024681, 14.590946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221163, 0.390007, -0.893858,
		0.973427, -0.032467, 0.226685,
		0.059388, -0.920239, -0.386824,
		36.855030, 29.748610, 14.474899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507774, 30.328487, 14.434553>,  <36.813461, 30.392776, 14.745676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507774, 30.328487, 14.434553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.282009, 30.050667, 14.256101>,  <37.146549, 29.883974, 14.149030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.282009, 30.050667, 14.256101>,  <37.507774, 30.328487, 14.434553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282009, 30.050667, 14.256101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301201, 0.329907, -0.894673,
		0.768580, -0.639341, 0.022996,
		-0.564414, -0.694553, -0.446130,
		37.112686, 29.842300, 14.122262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866222, 30.169336, 13.852047>,  <37.507774, 30.328487, 14.434553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866222, 30.169336, 13.852047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.506241, 30.018641, 13.764281>,  <37.290253, 29.928223, 13.711622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.506241, 30.018641, 13.764281>,  <37.866222, 30.169336, 13.852047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506241, 30.018641, 13.764281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143706, 0.218808, -0.965128,
		0.411612, -0.900105, -0.142778,
		-0.899958, -0.376740, -0.219414,
		37.236252, 29.905619, 13.698457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974174, 29.494530, 13.497226>,  <37.866222, 30.169336, 13.852047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974174, 29.494530, 13.497226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.633057, 29.677845, 13.397060>,  <37.428387, 29.787834, 13.336961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.633057, 29.677845, 13.397060>,  <37.974174, 29.494530, 13.497226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633057, 29.677845, 13.397060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260481, -0.042330, -0.964550,
		-0.452645, -0.887794, -0.083277,
		-0.852797, 0.458291, -0.250414,
		37.377216, 29.815332, 13.321937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815128, 29.156618, 12.826507>,  <37.974174, 29.494530, 13.497226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815128, 29.156618, 12.826507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.560715, 29.464510, 12.848330>,  <37.408066, 29.649246, 12.861424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.560715, 29.464510, 12.848330>,  <37.815128, 29.156618, 12.826507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560715, 29.464510, 12.848330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124305, 0.171981, -0.977226,
		-0.761586, -0.614765, -0.205066,
		-0.636032, 0.769732, 0.054560,
		37.369904, 29.695429, 12.864698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408627, 29.098824, 12.273770>,  <37.815128, 29.156618, 12.826507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408627, 29.098824, 12.273770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.367569, 29.480677, 12.385586>,  <37.342934, 29.709787, 12.452675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.367569, 29.480677, 12.385586>,  <37.408627, 29.098824, 12.273770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367569, 29.480677, 12.385586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040631, 0.276766, -0.960078,
		-0.993888, -0.109906, 0.010379,
		-0.102645, 0.954631, 0.279540,
		37.336777, 29.767067, 12.469448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013851, 29.297972, 11.775981>,  <37.408627, 29.098824, 12.273770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013851, 29.297972, 11.775981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.137760, 29.638168, 11.946022>,  <37.212105, 29.842285, 12.048046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.137760, 29.638168, 11.946022>,  <37.013851, 29.297972, 11.775981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137760, 29.638168, 11.946022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006305, 0.448921, -0.893549,
		-0.950791, 0.274113, 0.144423,
		0.309768, 0.850489, 0.425102,
		37.230690, 29.893314, 12.073552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575142, 29.814306, 11.537179>,  <37.013851, 29.297972, 11.775981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575142, 29.814306, 11.537179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.930603, 29.967997, 11.637317>,  <37.143879, 30.060211, 11.697399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.930603, 29.967997, 11.637317>,  <36.575142, 29.814306, 11.537179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930603, 29.967997, 11.637317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040870, 0.477374, -0.877749,
		-0.456762, 0.790243, 0.408515,
		0.888650, 0.384226, 0.250343,
		37.197197, 30.083265, 11.712420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523506, 30.590508, 11.427342>,  <36.575142, 29.814306, 11.537179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523506, 30.590508, 11.427342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.918133, 30.527222, 11.443606>,  <37.154907, 30.489250, 11.453365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.918133, 30.527222, 11.443606>,  <36.523506, 30.590508, 11.427342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918133, 30.527222, 11.443606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078844, 0.243182, -0.966771,
		0.143071, 0.956990, 0.252390,
		0.986567, -0.158216, 0.040660,
		37.214104, 30.479757, 11.455805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.207378, 26.600040, 26.825594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.516991, 26.850388, 26.863880>,  <35.702759, 27.000597, 26.886852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.516991, 26.850388, 26.863880>,  <35.207378, 26.600040, 26.825594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516991, 26.850388, 26.863880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189406, 0.373143, -0.908235,
		-0.604152, 0.684874, 0.407368,
		0.774032, 0.625870, 0.095716,
		35.749199, 27.038149, 26.892595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864346, 27.222916, 26.489002>,  <35.207378, 26.600040, 26.825594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864346, 27.222916, 26.489002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.261868, 27.267176, 26.484692>,  <35.500381, 27.293732, 26.482105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.261868, 27.267176, 26.484692>,  <34.864346, 27.222916, 26.489002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261868, 27.267176, 26.484692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028135, 0.156520, -0.987274,
		-0.107556, 0.981457, 0.158663,
		0.993801, 0.110651, -0.010778,
		35.560009, 27.300371, 26.481459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108906, 27.941349, 26.220467>,  <34.864346, 27.222916, 26.489002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108906, 27.941349, 26.220467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.402672, 27.678064, 26.154266>,  <35.578930, 27.520094, 26.114546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.402672, 27.678064, 26.154266>,  <35.108906, 27.941349, 26.220467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402672, 27.678064, 26.154266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007625, 0.235835, -0.971763,
		0.678656, 0.714941, 0.168182,
		0.734417, -0.658211, -0.165503,
		35.622997, 27.480600, 26.104616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473576, 28.344572, 25.832682>,  <35.108906, 27.941349, 26.220467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473576, 28.344572, 25.832682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578835, 27.962835, 25.776127>,  <35.641991, 27.733793, 25.742193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578835, 27.962835, 25.776127>,  <35.473576, 28.344572, 25.832682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578835, 27.962835, 25.776127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210035, 0.199707, -0.957080,
		0.941615, 0.222155, 0.252997,
		0.263146, -0.954340, -0.141387,
		35.657780, 27.676533, 25.733711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171654, 28.345007, 25.505745>,  <35.473576, 28.344572, 25.832682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171654, 28.345007, 25.505745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.964226, 28.008245, 25.446043>,  <35.839767, 27.806189, 25.410221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.964226, 28.008245, 25.446043>,  <36.171654, 28.345007, 25.505745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964226, 28.008245, 25.446043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148427, 0.083272, -0.985411,
		0.842052, -0.533160, 0.081778,
		-0.518573, -0.841906, -0.149255,
		35.808655, 27.755674, 25.401266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556648, 28.023273, 24.984652>,  <36.171654, 28.345007, 25.505745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556648, 28.023273, 24.984652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199097, 27.846556, 24.954206>,  <35.984566, 27.740526, 24.935940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199097, 27.846556, 24.954206>,  <36.556648, 28.023273, 24.984652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199097, 27.846556, 24.954206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002584, 0.174857, -0.984590,
		0.448295, -0.879911, -0.157443,
		-0.893882, -0.441794, -0.076114,
		35.930931, 27.714018, 24.931372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661072, 27.893785, 24.383472>,  <36.556648, 28.023273, 24.984652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661072, 27.893785, 24.383472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281754, 27.780045, 24.439873>,  <36.054161, 27.711800, 24.473713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.281754, 27.780045, 24.439873>,  <36.661072, 27.893785, 24.383472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281754, 27.780045, 24.439873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167794, 0.072053, -0.983185,
		0.269412, -0.956008, -0.116040,
		-0.948295, -0.284353, 0.141000,
		35.997265, 27.694738, 24.482172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461830, 27.173655, 24.114485>,  <36.661072, 27.893785, 24.383472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461830, 27.173655, 24.114485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.143425, 27.415039, 24.133230>,  <35.952381, 27.559870, 24.144478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.143425, 27.415039, 24.133230>,  <36.461830, 27.173655, 24.114485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143425, 27.415039, 24.133230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180913, -0.163327, -0.969843,
		-0.577608, -0.780486, 0.239185,
		-0.796015, 0.603461, 0.046861,
		35.904621, 27.596077, 24.147289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011753, 26.784397, 23.776474>,  <36.461830, 27.173655, 24.114485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011753, 26.784397, 23.776474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862553, 27.154932, 23.797510>,  <35.773033, 27.377253, 23.810133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862553, 27.154932, 23.797510>,  <36.011753, 26.784397, 23.776474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862553, 27.154932, 23.797510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265861, -0.052403, -0.962586,
		-0.888924, -0.373031, 0.265823,
		-0.373004, 0.926338, 0.052592,
		35.750652, 27.432833, 23.813288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244019, 26.864864, 23.551506>,  <36.011753, 26.784397, 23.776474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244019, 26.864864, 23.551506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.425877, 27.217503, 23.500771>,  <35.534992, 27.429085, 23.470329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.425877, 27.217503, 23.500771>,  <35.244019, 26.864864, 23.551506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425877, 27.217503, 23.500771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241912, -0.014826, -0.970185,
		-0.857189, 0.471776, 0.206528,
		0.454648, 0.881594, -0.126837,
		35.562271, 27.481981, 23.462719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806877, 27.218685, 23.098846>,  <35.244019, 26.864864, 23.551506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806877, 27.218685, 23.098846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.150478, 27.422647, 23.080444>,  <35.356640, 27.545025, 23.069403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.150478, 27.422647, 23.080444>,  <34.806877, 27.218685, 23.098846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150478, 27.422647, 23.080444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154223, 0.172026, -0.972945,
		-0.488196, 0.842854, 0.226410,
		0.858999, 0.509906, -0.046005,
		35.408176, 27.575619, 23.066643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654839, 27.829985, 22.802034>,  <34.806877, 27.218685, 23.098846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654839, 27.829985, 22.802034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.047199, 27.767733, 22.755358>,  <35.282616, 27.730381, 22.727352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.047199, 27.767733, 22.755358>,  <34.654839, 27.829985, 22.802034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047199, 27.767733, 22.755358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096239, 0.133059, -0.986425,
		0.169044, 0.978813, 0.115540,
		0.980899, -0.155630, -0.116693,
		35.341469, 27.721045, 22.720350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267113, 28.378714, 22.624588>,  <34.654839, 27.829985, 22.802034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267113, 28.378714, 22.624588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873348, 28.424431, 22.571108>,  <33.637089, 28.451862, 22.539019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.873348, 28.424431, 22.571108>,  <34.267113, 28.378714, 22.624588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873348, 28.424431, 22.571108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162059, -0.293829, 0.942020,
		0.068382, 0.949000, 0.307770,
		-0.984409, 0.114294, -0.133702,
		33.578026, 28.458719, 22.530998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963379, 28.806684, 23.174397>,  <34.267113, 28.378714, 22.624588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963379, 28.806684, 23.174397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.681057, 28.555988, 23.042315>,  <33.511665, 28.405571, 22.963066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.681057, 28.555988, 23.042315>,  <33.963379, 28.806684, 23.174397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681057, 28.555988, 23.042315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109294, -0.364203, 0.924884,
		-0.699923, 0.688878, 0.188558,
		-0.705806, -0.626739, -0.330204,
		33.469315, 28.367966, 22.943253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455540, 28.880318, 23.629826>,  <33.963379, 28.806684, 23.174397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455540, 28.880318, 23.629826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.345245, 28.545658, 23.440517>,  <33.279068, 28.344862, 23.326933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.345245, 28.545658, 23.440517>,  <33.455540, 28.880318, 23.629826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345245, 28.545658, 23.440517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270044, -0.405107, 0.873479,
		-0.922521, 0.368654, -0.114229,
		-0.275737, -0.836650, -0.473273,
		33.262524, 28.294662, 23.298536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819191, 28.675377, 23.870920>,  <33.455540, 28.880318, 23.629826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819191, 28.675377, 23.870920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969753, 28.328411, 23.740742>,  <33.060089, 28.120232, 23.662636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.969753, 28.328411, 23.740742>,  <32.819191, 28.675377, 23.870920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969753, 28.328411, 23.740742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350395, -0.458473, 0.816717,
		-0.857639, -0.193380, -0.476508,
		0.376402, -0.867414, -0.325445,
		33.082676, 28.068188, 23.643108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270695, 28.223839, 23.950148>,  <32.819191, 28.675377, 23.870920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270695, 28.223839, 23.950148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600204, 27.998194, 23.927605>,  <32.797909, 27.862806, 23.914078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.600204, 27.998194, 23.927605>,  <32.270695, 28.223839, 23.950148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600204, 27.998194, 23.927605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315507, -0.538773, 0.781140,
		-0.471015, -0.625700, -0.621808,
		0.823772, -0.564113, -0.056358,
		32.847336, 27.828959, 23.910696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932148, 27.638241, 24.110518>,  <32.270695, 28.223839, 23.950148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932148, 27.638241, 24.110518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.322021, 27.566042, 24.163294>,  <32.555946, 27.522722, 24.194960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.322021, 27.566042, 24.163294>,  <31.932148, 27.638241, 24.110518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322021, 27.566042, 24.163294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216533, -0.615092, 0.758139,
		-0.055685, -0.767517, -0.638605,
		0.974686, -0.180496, 0.131942,
		32.614426, 27.511892, 24.202877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945574, 27.032051, 24.166084>,  <31.932148, 27.638241, 24.110518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945574, 27.032051, 24.166084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272259, 27.158867, 24.358944>,  <32.468269, 27.234957, 24.474659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272259, 27.158867, 24.358944>,  <31.945574, 27.032051, 24.166084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272259, 27.158867, 24.358944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271750, -0.525776, 0.806047,
		0.509050, -0.789332, -0.343252,
		0.816712, 0.317040, 0.482147,
		32.517273, 27.253979, 24.503588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106014, 26.533270, 24.643015>,  <31.945574, 27.032051, 24.166084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106014, 26.533270, 24.643015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.292191, 26.855892, 24.788799>,  <32.403896, 27.049465, 24.876270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.292191, 26.855892, 24.788799>,  <32.106014, 26.533270, 24.643015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292191, 26.855892, 24.788799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319143, -0.231145, 0.919087,
		0.825540, -0.544092, 0.149824,
		0.465437, 0.806558, 0.364462,
		32.431820, 27.097860, 24.898138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595432, 26.247036, 25.252407>,  <32.106014, 26.533270, 24.643015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595432, 26.247036, 25.252407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560135, 26.636019, 25.338696>,  <32.538956, 26.869410, 25.390469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560135, 26.636019, 25.338696>,  <32.595432, 26.247036, 25.252407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560135, 26.636019, 25.338696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293166, -0.232332, 0.927402,
		0.951980, 0.018599, 0.305595,
		-0.088248, 0.972459, 0.215723,
		32.533661, 26.927757, 25.403412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798275, 26.396353, 25.968307>,  <32.595432, 26.247036, 25.252407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798275, 26.396353, 25.968307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.591526, 26.732664, 25.903894>,  <32.467476, 26.934452, 25.865248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.591526, 26.732664, 25.903894>,  <32.798275, 26.396353, 25.968307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591526, 26.732664, 25.903894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423545, -0.087694, 0.901620,
		0.743943, 0.534227, 0.401435,
		-0.516874, 0.840780, -0.161030,
		32.436462, 26.984898, 25.855585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884270, 26.745974, 26.662313>,  <32.798275, 26.396353, 25.968307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884270, 26.745974, 26.662313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.577602, 26.920317, 26.473738>,  <32.393604, 27.024923, 26.360592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.577602, 26.920317, 26.473738>,  <32.884270, 26.745974, 26.662313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577602, 26.920317, 26.473738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529074, -0.012886, 0.848478,
		0.363741, 0.899923, 0.240480,
		-0.766664, 0.435858, -0.471439,
		32.347603, 27.051073, 26.332306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678120, 27.192570, 27.140818>,  <32.884270, 26.745974, 26.662313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678120, 27.192570, 27.140818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.363342, 27.177490, 26.894468>,  <32.174477, 27.168442, 26.746658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.363342, 27.177490, 26.894468>,  <32.678120, 27.192570, 27.140818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363342, 27.177490, 26.894468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616027, 0.104773, 0.780726,
		0.035094, 0.993781, -0.105674,
		-0.786943, -0.037700, -0.615873,
		32.127258, 27.166180, 26.709707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372150, 27.882347, 27.125835>,  <32.678120, 27.192570, 27.140818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372150, 27.882347, 27.125835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.095089, 27.614920, 27.017578>,  <31.928852, 27.454462, 26.952623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.095089, 27.614920, 27.017578>,  <32.372150, 27.882347, 27.125835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095089, 27.614920, 27.017578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591533, 0.311851, 0.743531,
		-0.412702, 0.675102, -0.611485,
		-0.692651, -0.668570, -0.270643,
		31.887293, 27.414349, 26.936384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754101, 28.230352, 27.142477>,  <32.372150, 27.882347, 27.125835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754101, 28.230352, 27.142477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.699762, 27.839602, 27.208521>,  <31.667158, 27.605152, 27.248146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.699762, 27.839602, 27.208521>,  <31.754101, 28.230352, 27.142477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699762, 27.839602, 27.208521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470354, 0.210266, 0.857062,
		-0.871959, 0.038771, -0.488041,
		-0.135848, -0.976875, 0.165108,
		31.659008, 27.546539, 27.258053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546652, 28.055311, 26.493759>,  <31.754101, 28.230352, 27.142477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546652, 28.055311, 26.493759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.177013, 28.005905, 26.349102>,  <30.955231, 27.976261, 26.262306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.177013, 28.005905, 26.349102>,  <31.546652, 28.055311, 26.493759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177013, 28.005905, 26.349102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255833, 0.503041, -0.825530,
		0.283889, -0.855391, -0.433259,
		-0.924098, -0.123516, -0.361645,
		30.899784, 27.968849, 26.240608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275146, 28.706579, 26.136719>,  <31.546652, 28.055311, 26.493759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275146, 28.706579, 26.136719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.579866, 28.915844, 26.289537>,  <31.762699, 29.041403, 26.381227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.579866, 28.915844, 26.289537>,  <31.275146, 28.706579, 26.136719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579866, 28.915844, 26.289537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136652, 0.446700, -0.884186,
		-0.633233, 0.725782, 0.268806,
		0.761802, 0.523163, 0.382045,
		31.808407, 29.072792, 26.404150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155167, 29.299892, 25.756853>,  <31.275146, 28.706579, 26.136719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155167, 29.299892, 25.756853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537600, 29.303944, 25.874023>,  <31.767059, 29.306374, 25.944326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537600, 29.303944, 25.874023>,  <31.155167, 29.299892, 25.756853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537600, 29.303944, 25.874023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227414, 0.604858, -0.763171,
		-0.184908, 0.796269, 0.575990,
		0.956081, 0.010128, 0.292926,
		31.824425, 29.306982, 25.961901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345282, 29.964239, 25.622618>,  <31.155167, 29.299892, 25.756853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345282, 29.964239, 25.622618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.704727, 29.794443, 25.666977>,  <31.920395, 29.692566, 25.693592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.704727, 29.794443, 25.666977>,  <31.345282, 29.964239, 25.622618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704727, 29.794443, 25.666977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380812, 0.629109, -0.677646,
		0.217887, 0.651174, 0.726978,
		0.898614, -0.424492, 0.110900,
		31.974312, 29.667095, 25.700247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746353, 30.570469, 25.745159>,  <31.345282, 29.964239, 25.622618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746353, 30.570469, 25.745159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.959293, 30.270351, 25.588360>,  <32.087059, 30.090281, 25.494280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.959293, 30.270351, 25.588360>,  <31.746353, 30.570469, 25.745159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959293, 30.270351, 25.588360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279699, 0.592959, -0.755095,
		0.798980, 0.292336, 0.525520,
		0.532353, -0.750293, -0.391996,
		32.118999, 30.045263, 25.470760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537464, 30.875797, 25.576546>,  <31.746353, 30.570469, 25.745159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537464, 30.875797, 25.576546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479134, 30.540438, 25.366470>,  <32.444134, 30.339222, 25.240425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.479134, 30.540438, 25.366470>,  <32.537464, 30.875797, 25.576546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479134, 30.540438, 25.366470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435254, 0.422356, -0.795091,
		0.888419, -0.344537, 0.303324,
		-0.145828, -0.838397, -0.525190,
		32.435387, 30.288919, 25.208914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158787, 30.534061, 25.426165>,  <32.537464, 30.875797, 25.576546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158787, 30.534061, 25.426165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909122, 30.409416, 25.139578>,  <32.759323, 30.334629, 24.967625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909122, 30.409416, 25.139578>,  <33.158787, 30.534061, 25.426165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909122, 30.409416, 25.139578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630913, 0.339877, -0.697447,
		0.460844, -0.887345, -0.015537,
		-0.624157, -0.311612, -0.716468,
		32.721874, 30.315933, 24.924637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621567, 30.350948, 24.878679>,  <33.158787, 30.534061, 25.426165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621567, 30.350948, 24.878679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259449, 30.377039, 24.710779>,  <33.042179, 30.392693, 24.610039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259449, 30.377039, 24.710779>,  <33.621567, 30.350948, 24.878679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259449, 30.377039, 24.710779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410603, 0.387592, -0.825335,
		0.108857, -0.919521, -0.377667,
		-0.905293, 0.065228, -0.419750,
		32.987862, 30.396606, 24.584854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716255, 30.064257, 24.220503>,  <33.621567, 30.350948, 24.878679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716255, 30.064257, 24.220503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364845, 30.252905, 24.190132>,  <33.153999, 30.366095, 24.171909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364845, 30.252905, 24.190132>,  <33.716255, 30.064257, 24.220503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364845, 30.252905, 24.190132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279215, 0.378007, -0.882695,
		-0.387598, -0.796670, -0.463773,
		-0.878525, 0.471623, -0.075927,
		33.101288, 30.394392, 24.167355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543362, 30.053995, 23.568380>,  <33.716255, 30.064257, 24.220503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543362, 30.053995, 23.568380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330250, 30.368614, 23.693274>,  <33.202385, 30.557386, 23.768209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.330250, 30.368614, 23.693274>,  <33.543362, 30.053995, 23.568380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330250, 30.368614, 23.693274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326794, 0.531563, -0.781439,
		-0.780612, -0.314297, -0.540244,
		-0.532777, 0.786549, 0.312234,
		33.170418, 30.604578, 23.786943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221649, 30.367908, 22.929306>,  <33.543362, 30.053995, 23.568380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221649, 30.367908, 22.929306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.230492, 30.659559, 23.202913>,  <33.235798, 30.834551, 23.367079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.230492, 30.659559, 23.202913>,  <33.221649, 30.367908, 22.929306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230492, 30.659559, 23.202913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359360, 0.632665, -0.685999,
		-0.932937, 0.260973, -0.248035,
		0.022105, 0.729128, 0.684020,
		33.237122, 30.878298, 23.408119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136543, 30.997644, 22.526688>,  <33.221649, 30.367908, 22.929306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136543, 30.997644, 22.526688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249218, 31.198723, 22.853601>,  <33.316822, 31.319370, 23.049749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.249218, 31.198723, 22.853601>,  <33.136543, 30.997644, 22.526688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249218, 31.198723, 22.853601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345505, 0.741496, -0.575161,
		-0.895143, 0.444389, 0.035184,
		0.281684, 0.502695, 0.817283,
		33.333725, 31.349531, 23.098787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786037, 31.701387, 22.546541>,  <33.136543, 30.997644, 22.526688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786037, 31.701387, 22.546541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131989, 31.682880, 22.746479>,  <33.339558, 31.671776, 22.866442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.131989, 31.682880, 22.746479>,  <32.786037, 31.701387, 22.546541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131989, 31.682880, 22.746479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380737, 0.709401, -0.593119,
		-0.327147, 0.703285, 0.631162,
		0.864878, -0.046270, 0.499845,
		33.391453, 31.668999, 22.896433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877590, 32.364784, 22.729702>,  <32.786037, 31.701387, 22.546541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877590, 32.364784, 22.729702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.241116, 32.201115, 22.762262>,  <33.459232, 32.102913, 22.781797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.241116, 32.201115, 22.762262>,  <32.877590, 32.364784, 22.729702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241116, 32.201115, 22.762262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378598, 0.726927, -0.572923,
		0.175254, 0.551500, 0.815557,
		0.908818, -0.409175, 0.081399,
		33.513760, 32.078362, 22.786682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194466, 32.884350, 22.444191>,  <32.877590, 32.364784, 22.729702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194466, 32.884350, 22.444191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.456627, 32.583588, 22.472712>,  <33.613922, 32.403130, 22.489824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.456627, 32.583588, 22.472712>,  <33.194466, 32.884350, 22.444191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456627, 32.583588, 22.472712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497059, 0.358324, -0.790276,
		0.568664, 0.553391, 0.608588,
		0.655403, -0.751906, 0.071302,
		33.653248, 32.358017, 22.494102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934170, 33.151554, 22.388390>,  <33.194466, 32.884350, 22.444191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934170, 33.151554, 22.388390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957386, 32.765404, 22.286661>,  <33.971317, 32.533714, 22.225624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.957386, 32.765404, 22.286661>,  <33.934170, 33.151554, 22.388390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957386, 32.765404, 22.286661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512570, 0.247428, -0.822223,
		0.856681, -0.082634, 0.509184,
		0.058043, -0.965376, -0.254323,
		33.974800, 32.475792, 22.210363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654228, 32.970116, 22.224039>,  <33.934170, 33.151554, 22.388390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654228, 32.970116, 22.224039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.430984, 32.689468, 22.046843>,  <34.297039, 32.521080, 21.940525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.430984, 32.689468, 22.046843>,  <34.654228, 32.970116, 22.224039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430984, 32.689468, 22.046843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586755, 0.043785, -0.808580,
		0.586713, -0.711204, 0.387243,
		-0.558110, -0.701620, -0.442992,
		34.263550, 32.478981, 21.913944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073689, 32.443466, 21.845720>,  <34.654228, 32.970116, 22.224039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073689, 32.443466, 21.845720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703144, 32.448833, 21.695164>,  <34.480816, 32.452053, 21.604830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.703144, 32.448833, 21.695164>,  <35.073689, 32.443466, 21.845720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703144, 32.448833, 21.695164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368590, 0.237721, -0.898683,
		0.077414, -0.971241, -0.225163,
		-0.926363, 0.013422, -0.376393,
		34.425236, 32.452862, 21.582247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192677, 32.007065, 21.167692>,  <35.073689, 32.443466, 21.845720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192677, 32.007065, 21.167692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.861069, 32.230640, 21.160549>,  <34.662106, 32.364784, 21.156263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.861069, 32.230640, 21.160549>,  <35.192677, 32.007065, 21.167692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861069, 32.230640, 21.160549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115482, 0.139861, -0.983414,
		-0.547170, -0.817329, -0.180494,
		-0.829017, 0.558938, -0.017860,
		34.612362, 32.398323, 21.155191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917088, 31.804270, 20.555857>,  <35.192677, 32.007065, 21.167692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917088, 31.804270, 20.555857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753128, 32.158112, 20.644808>,  <34.654751, 32.370419, 20.698179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.753128, 32.158112, 20.644808>,  <34.917088, 31.804270, 20.555857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753128, 32.158112, 20.644808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149751, 0.305761, -0.940258,
		-0.899752, -0.352113, -0.257802,
		-0.409903, 0.884606, 0.222380,
		34.630157, 32.423492, 20.711521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476501, 31.883095, 20.038511>,  <34.917088, 31.804270, 20.555857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476501, 31.883095, 20.038511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.544857, 32.252430, 20.176056>,  <34.585869, 32.474033, 20.258583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.544857, 32.252430, 20.176056>,  <34.476501, 31.883095, 20.038511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544857, 32.252430, 20.176056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011139, 0.347161, -0.937739,
		-0.985228, 0.164078, 0.049040,
		0.170887, 0.923340, 0.343861,
		34.596123, 32.529430, 20.279215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053982, 32.337341, 19.780537>,  <34.476501, 31.883095, 20.038511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053982, 32.337341, 19.780537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.342251, 32.593304, 19.887226>,  <34.515213, 32.746883, 19.951239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.342251, 32.593304, 19.887226>,  <34.053982, 32.337341, 19.780537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342251, 32.593304, 19.887226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121983, 0.261683, -0.957414,
		-0.682455, 0.722522, 0.110531,
		0.720677, 0.639910, 0.266722,
		34.558453, 32.785278, 19.967243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998402, 32.839603, 19.437967>,  <34.053982, 32.337341, 19.780537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998402, 32.839603, 19.437967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.383381, 32.878876, 19.539209>,  <34.614368, 32.902439, 19.599955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.383381, 32.878876, 19.539209>,  <33.998402, 32.839603, 19.437967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383381, 32.878876, 19.539209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239627, 0.130956, -0.961993,
		-0.127599, 0.986514, 0.102510,
		0.962444, 0.098185, 0.253105,
		34.672115, 32.908333, 19.615141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175400, 33.387058, 19.097740>,  <33.998402, 32.839603, 19.437967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175400, 33.387058, 19.097740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527229, 33.216732, 19.182629>,  <34.738327, 33.114536, 19.233562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527229, 33.216732, 19.182629>,  <34.175400, 33.387058, 19.097740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527229, 33.216732, 19.182629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348674, 0.273433, -0.896471,
		0.323704, 0.862504, 0.388975,
		0.879569, -0.425817, 0.212221,
		34.791100, 33.088985, 19.246296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657520, 33.809483, 18.822481>,  <34.175400, 33.387058, 19.097740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657520, 33.809483, 18.822481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910599, 33.502430, 18.863358>,  <35.062447, 33.318199, 18.887882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910599, 33.502430, 18.863358>,  <34.657520, 33.809483, 18.822481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910599, 33.502430, 18.863358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514180, 0.317743, -0.796654,
		0.579066, 0.556582, 0.595734,
		0.632694, -0.767630, 0.102190,
		35.100407, 33.272141, 18.894014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316151, 34.141197, 18.714743>,  <34.657520, 33.809483, 18.822481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316151, 34.141197, 18.714743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.347828, 33.750801, 18.633577>,  <35.366837, 33.516563, 18.584879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.347828, 33.750801, 18.633577>,  <35.316151, 34.141197, 18.714743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347828, 33.750801, 18.633577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483083, 0.215630, -0.848607,
		0.871985, -0.030818, 0.488561,
		0.079196, -0.975989, -0.202914,
		35.371586, 33.458004, 18.572702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945786, 34.125530, 18.583742>,  <35.316151, 34.141197, 18.714743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945786, 34.125530, 18.583742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794365, 33.791645, 18.423767>,  <35.703514, 33.591312, 18.327782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.794365, 33.791645, 18.423767>,  <35.945786, 34.125530, 18.583742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794365, 33.791645, 18.423767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483591, 0.190064, -0.854409,
		0.789202, -0.516843, 0.331713,
		-0.378549, -0.834715, -0.399939,
		35.680801, 33.541229, 18.303785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562424, 33.833488, 18.190308>,  <35.945786, 34.125530, 18.583742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562424, 33.833488, 18.190308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216331, 33.695042, 18.045208>,  <36.008678, 33.611973, 17.958149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216331, 33.695042, 18.045208>,  <36.562424, 33.833488, 18.190308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216331, 33.695042, 18.045208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295752, 0.231892, -0.926691,
		0.404864, -0.909081, -0.098273,
		-0.865226, -0.346119, -0.362747,
		35.956764, 33.591206, 17.936384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792946, 33.203606, 18.601774>,  <36.562424, 33.833488, 18.190308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792946, 33.203606, 18.601774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.165703, 33.126537, 18.724710>,  <37.389355, 33.080296, 18.798471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.165703, 33.126537, 18.724710>,  <36.792946, 33.203606, 18.601774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165703, 33.126537, 18.724710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319700, -0.035935, 0.946837,
		-0.171390, -0.980604, -0.095087,
		0.931889, -0.192677, 0.307340,
		37.445271, 33.068733, 18.816912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717129, 32.660053, 19.174255>,  <36.792946, 33.203606, 18.601774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717129, 32.660053, 19.174255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092716, 32.780796, 19.240252>,  <37.318069, 32.853241, 19.279850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.092716, 32.780796, 19.240252>,  <36.717129, 32.660053, 19.174255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092716, 32.780796, 19.240252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151480, -0.067806, 0.986132,
		0.308857, -0.950939, -0.017943,
		0.938968, 0.301856, 0.164991,
		37.374405, 32.871353, 19.289749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017738, 32.237305, 19.564196>,  <36.717129, 32.660053, 19.174255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017738, 32.237305, 19.564196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.262676, 32.546059, 19.632576>,  <37.409641, 32.731312, 19.673605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.262676, 32.546059, 19.632576>,  <37.017738, 32.237305, 19.564196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262676, 32.546059, 19.632576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076494, -0.157374, 0.984572,
		0.786879, -0.615977, -0.037323,
		0.612348, 0.771885, 0.170953,
		37.446381, 32.777622, 19.683863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484695, 31.996077, 20.029610>,  <37.017738, 32.237305, 19.564196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484695, 31.996077, 20.029610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.484070, 32.394093, 20.069403>,  <37.483696, 32.632900, 20.093279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.484070, 32.394093, 20.069403>,  <37.484695, 31.996077, 20.029610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484070, 32.394093, 20.069403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070827, -0.099125, 0.992551,
		0.997487, 0.008597, -0.070321,
		-0.001563, 0.995038, 0.099485,
		37.483601, 32.692604, 20.099249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019073, 32.157024, 20.463934>,  <37.484695, 31.996077, 20.029610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019073, 32.157024, 20.463934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.750938, 32.452953, 20.486954>,  <37.590057, 32.630508, 20.500765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.750938, 32.452953, 20.486954>,  <38.019073, 32.157024, 20.463934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750938, 32.452953, 20.486954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201616, 0.106948, 0.973608,
		0.714140, 0.664251, -0.220851,
		-0.670340, 0.739819, 0.057548,
		37.549835, 32.674900, 20.504219>
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
