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
	<24.325016, 34.726078, 35.162739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178835, 35.053074, 34.984680>,  <24.091125, 35.249271, 34.877846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.178835, 35.053074, 34.984680>,  <24.325016, 34.726078, 35.162739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.178835, 35.053074, 34.984680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026269, 0.487088, 0.872958,
		0.930459, 0.307331, -0.199482,
		-0.365452, 0.817492, -0.445142,
		24.069199, 35.298321, 34.851139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.409397, 35.274734, 35.723019>,  <24.325016, 34.726078, 35.162739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.409397, 35.274734, 35.723019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.137623, 35.437389, 35.478722>,  <23.974558, 35.534985, 35.332142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.137623, 35.437389, 35.478722>,  <24.409397, 35.274734, 35.723019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.137623, 35.437389, 35.478722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464175, 0.406434, 0.786990,
		0.568249, 0.818203, -0.087394,
		-0.679437, 0.406640, -0.610745,
		23.933792, 35.559380, 35.295498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.289248, 35.905197, 35.685856>,  <24.409397, 35.274734, 35.723019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.289248, 35.905197, 35.685856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.454077, 35.615784, 35.464333>,  <24.552975, 35.442135, 35.331421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.454077, 35.615784, 35.464333>,  <24.289248, 35.905197, 35.685856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.454077, 35.615784, 35.464333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886458, 0.177810, 0.427288,
		-0.210684, -0.666999, 0.714650,
		0.412073, -0.723530, -0.553805,
		24.577698, 35.398724, 35.298191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047199, 36.181850, 35.396187>,  <24.289248, 35.905197, 35.685856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047199, 36.181850, 35.396187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354052, 36.050667, 35.616714>,  <25.538162, 35.971954, 35.749031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354052, 36.050667, 35.616714>,  <25.047199, 36.181850, 35.396187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354052, 36.050667, 35.616714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264360, 0.621435, 0.737518,
		-0.584487, -0.711519, 0.390021,
		0.767130, -0.327963, 0.551318,
		25.584190, 35.952278, 35.782108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.481436, 36.230362, 34.788277>,  <25.047199, 36.181850, 35.396187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.481436, 36.230362, 34.788277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774855, 35.960842, 34.823830>,  <25.950907, 35.799129, 34.845161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774855, 35.960842, 34.823830>,  <25.481436, 36.230362, 34.788277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774855, 35.960842, 34.823830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440752, 0.372079, -0.816881,
		0.517343, 0.638397, 0.569917,
		0.733549, -0.673800, 0.088883,
		25.994919, 35.758701, 34.850494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175421, 36.580120, 34.595558>,  <25.481436, 36.230362, 34.788277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175421, 36.580120, 34.595558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176460, 36.187794, 34.517582>,  <26.177084, 35.952400, 34.470798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176460, 36.187794, 34.517582>,  <26.175421, 36.580120, 34.595558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.176460, 36.187794, 34.517582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575959, 0.160826, -0.801503,
		0.817475, -0.110192, 0.565325,
		0.002600, -0.980812, -0.194937,
		26.177240, 35.893551, 34.459099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.885017, 36.245922, 34.554756>,  <26.175421, 36.580120, 34.595558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.885017, 36.245922, 34.554756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638733, 36.017235, 34.337852>,  <26.490963, 35.880024, 34.207710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.638733, 36.017235, 34.337852>,  <26.885017, 36.245922, 34.554756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638733, 36.017235, 34.337852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540332, 0.194556, -0.818651,
		0.573537, -0.797049, 0.189128,
		-0.615709, -0.571718, -0.542256,
		26.454020, 35.845718, 34.175175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187984, 35.668552, 34.192463>,  <26.885017, 36.245922, 34.554756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187984, 35.668552, 34.192463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865709, 35.774620, 33.980595>,  <26.672344, 35.838261, 33.853474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865709, 35.774620, 33.980595>,  <27.187984, 35.668552, 34.192463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865709, 35.774620, 33.980595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565726, 0.079455, -0.820756,
		-0.175553, -0.960923, -0.214029,
		-0.805689, 0.265168, -0.529671,
		26.624002, 35.854172, 33.821693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246525, 35.271530, 33.599308>,  <27.187984, 35.668552, 34.192463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246525, 35.271530, 33.599308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979635, 35.552139, 33.499168>,  <26.819502, 35.720505, 33.439087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979635, 35.552139, 33.499168>,  <27.246525, 35.271530, 33.599308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979635, 35.552139, 33.499168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392078, 0.045015, -0.918830,
		-0.633314, -0.711221, -0.305088,
		-0.667224, 0.701526, -0.250346,
		26.779469, 35.762596, 33.424065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970510, 35.126373, 32.855659>,  <27.246525, 35.271530, 33.599308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970510, 35.126373, 32.855659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934935, 35.516075, 32.938534>,  <26.913589, 35.749897, 32.988258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934935, 35.516075, 32.938534>,  <26.970510, 35.126373, 32.855659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934935, 35.516075, 32.938534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447241, 0.224925, -0.865670,
		-0.889980, 0.015673, -0.455729,
		-0.088937, 0.974250, 0.207188,
		26.908253, 35.808350, 33.000690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.631134, 35.515221, 32.199280>,  <26.970510, 35.126373, 32.855659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.631134, 35.515221, 32.199280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837849, 35.763557, 32.435070>,  <26.961878, 35.912560, 32.576546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837849, 35.763557, 32.435070>,  <26.631134, 35.515221, 32.199280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837849, 35.763557, 32.435070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536933, 0.301249, -0.788005,
		-0.666808, 0.723741, -0.177670,
		0.516789, 0.620845, 0.589475,
		26.992886, 35.949810, 32.611912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728628, 36.352695, 32.075550>,  <26.631134, 35.515221, 32.199280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728628, 36.352695, 32.075550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053558, 36.191467, 32.244148>,  <27.248516, 36.094730, 32.345306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.053558, 36.191467, 32.244148>,  <26.728628, 36.352695, 32.075550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.053558, 36.191467, 32.244148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534525, 0.225500, -0.814514,
		0.233260, 0.886951, 0.398632,
		0.812326, -0.403072, 0.421497,
		27.297256, 36.070545, 32.370598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.317461, 36.821587, 31.941423>,  <26.728628, 36.352695, 32.075550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.317461, 36.821587, 31.941423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446993, 36.453876, 32.030926>,  <27.524712, 36.233250, 32.084629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.446993, 36.453876, 32.030926>,  <27.317461, 36.821587, 31.941423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.446993, 36.453876, 32.030926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706375, 0.077580, -0.703573,
		0.629418, 0.385896, 0.674476,
		0.323832, -0.919274, 0.223758,
		27.544142, 36.178093, 32.098053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118252, 36.704178, 31.944536>,  <27.317461, 36.821587, 31.941423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118252, 36.704178, 31.944536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928713, 36.369732, 31.833982>,  <27.814989, 36.169064, 31.767651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928713, 36.369732, 31.833982>,  <28.118252, 36.704178, 31.944536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928713, 36.369732, 31.833982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471798, 0.023967, -0.881381,
		0.743556, -0.548037, 0.383119,
		-0.473847, -0.836110, -0.276383,
		27.786558, 36.118900, 31.751068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325045, 36.331570, 32.558128>,  <28.118252, 36.704178, 31.944536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325045, 36.331570, 32.558128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967756, 36.480015, 32.456593>,  <27.753384, 36.569080, 32.395672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967756, 36.480015, 32.456593>,  <28.325045, 36.331570, 32.558128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967756, 36.480015, 32.456593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368084, -0.279333, 0.886841,
		0.258211, 0.885578, 0.386106,
		-0.893219, 0.371112, -0.253840,
		27.699791, 36.591347, 32.380440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.017389, 36.683994, 33.131989>,  <28.325045, 36.331570, 32.558128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.017389, 36.683994, 33.131989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721838, 36.572666, 32.886517>,  <27.544508, 36.505871, 32.739235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721838, 36.572666, 32.886517>,  <28.017389, 36.683994, 33.131989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721838, 36.572666, 32.886517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587353, -0.180357, 0.788979,
		-0.330268, 0.943403, -0.030209,
		-0.738877, -0.278318, -0.613677,
		27.500175, 36.489170, 32.702412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408525, 36.984192, 33.370155>,  <28.017389, 36.683994, 33.131989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408525, 36.984192, 33.370155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265516, 36.699089, 33.128777>,  <27.179710, 36.528027, 32.983948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265516, 36.699089, 33.128777>,  <27.408525, 36.984192, 33.370155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265516, 36.699089, 33.128777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723904, -0.196735, 0.661255,
		-0.590035, 0.673254, -0.445632,
		-0.357521, -0.712759, -0.603452,
		27.158260, 36.485260, 32.947742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681927, 37.024815, 33.319973>,  <27.408525, 36.984192, 33.370155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681927, 37.024815, 33.319973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741419, 36.643494, 33.214825>,  <26.777115, 36.414703, 33.151737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741419, 36.643494, 33.214825>,  <26.681927, 37.024815, 33.319973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741419, 36.643494, 33.214825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766553, -0.279079, 0.578369,
		-0.624720, 0.115483, -0.772262,
		0.148730, -0.953299, -0.262870,
		26.786037, 36.357506, 33.135963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090794, 36.776367, 32.989784>,  <26.681927, 37.024815, 33.319973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090794, 36.776367, 32.989784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285675, 36.451706, 33.118690>,  <26.402605, 36.256908, 33.196033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285675, 36.451706, 33.118690>,  <26.090794, 36.776367, 32.989784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285675, 36.451706, 33.118690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763854, -0.217213, 0.607739,
		-0.423272, -0.542255, -0.725810,
		0.487205, -0.811652, 0.322263,
		26.431837, 36.208210, 33.215370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.575388, 36.308216, 33.191452>,  <26.090794, 36.776367, 32.989784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.575388, 36.308216, 33.191452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894459, 36.138180, 33.362572>,  <26.085901, 36.036160, 33.465244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894459, 36.138180, 33.362572>,  <25.575388, 36.308216, 33.191452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894459, 36.138180, 33.362572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551072, -0.225583, 0.803388,
		-0.245011, -0.876589, -0.414199,
		0.797678, -0.425093, 0.427794,
		26.133762, 36.010651, 33.490910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.328178, 35.712082, 33.422935>,  <25.575388, 36.308216, 33.191452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.328178, 35.712082, 33.422935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637127, 35.795620, 33.662880>,  <25.822496, 35.845741, 33.806847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.637127, 35.795620, 33.662880>,  <25.328178, 35.712082, 33.422935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.637127, 35.795620, 33.662880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513556, -0.350410, 0.783246,
		0.373773, -0.913015, -0.163393,
		0.772369, 0.208845, 0.599858,
		25.868837, 35.858273, 33.842838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514278, 35.216320, 33.797852>,  <25.328178, 35.712082, 33.422935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514278, 35.216320, 33.797852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668232, 35.494507, 34.040565>,  <25.760605, 35.661419, 34.186195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.668232, 35.494507, 34.040565>,  <25.514278, 35.216320, 33.797852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.668232, 35.494507, 34.040565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537178, -0.365820, 0.760010,
		0.750536, -0.618469, 0.232790,
		0.384884, 0.695465, 0.606789,
		25.783697, 35.703148, 34.222603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967806, 34.914410, 34.305042>,  <25.514278, 35.216320, 33.797852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967806, 34.914410, 34.305042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799410, 35.248039, 34.447636>,  <25.698372, 35.448219, 34.533192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799410, 35.248039, 34.447636>,  <25.967806, 34.914410, 34.305042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799410, 35.248039, 34.447636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463210, -0.535592, 0.706101,
		0.779873, 0.132134, 0.611832,
		-0.420992, 0.834076, 0.356488,
		25.673113, 35.498260, 34.554581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570759, 34.755150, 34.781433>,  <25.967806, 34.914410, 34.305042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570759, 34.755150, 34.781433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827227, 35.057465, 34.834633>,  <26.981108, 35.238853, 34.866554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827227, 35.057465, 34.834633>,  <26.570759, 34.755150, 34.781433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827227, 35.057465, 34.834633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253199, -0.371961, 0.893048,
		0.724424, -0.538921, -0.429854,
		0.641171, 0.755784, 0.133003,
		27.019579, 35.284199, 34.874535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325821, 34.578506, 34.839451>,  <26.570759, 34.755150, 34.781433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325821, 34.578506, 34.839451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242014, 34.913383, 35.041527>,  <27.191730, 35.114307, 35.162773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242014, 34.913383, 35.041527>,  <27.325821, 34.578506, 34.839451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242014, 34.913383, 35.041527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317614, -0.430371, 0.844927,
		0.924783, 0.337482, -0.175733,
		-0.209517, 0.837190, 0.505189,
		27.179159, 35.164539, 35.193085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929573, 34.808479, 35.255428>,  <27.325821, 34.578506, 34.839451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929573, 34.808479, 35.255428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581226, 34.916431, 35.419746>,  <27.372217, 34.981205, 35.518337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581226, 34.916431, 35.419746>,  <27.929573, 34.808479, 35.255428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581226, 34.916431, 35.419746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309864, -0.347313, 0.885075,
		0.381541, 0.898074, 0.218837,
		-0.870868, 0.269883, 0.410795,
		27.319965, 34.997395, 35.542984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008289, 35.218170, 35.856949>,  <27.929573, 34.808479, 35.255428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008289, 35.218170, 35.856949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659540, 35.024063, 35.883347>,  <27.450291, 34.907600, 35.899185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.659540, 35.024063, 35.883347>,  <28.008289, 35.218170, 35.856949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659540, 35.024063, 35.883347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256806, -0.338278, 0.905328,
		-0.417001, 0.806278, 0.419555,
		-0.871872, -0.485267, 0.065995,
		27.397978, 34.878483, 35.903145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966755, 35.156860, 36.613953>,  <28.008289, 35.218170, 35.856949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966755, 35.156860, 36.613953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767645, 34.894279, 36.387226>,  <27.648178, 34.736729, 36.251190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767645, 34.894279, 36.387226>,  <27.966755, 35.156860, 36.613953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767645, 34.894279, 36.387226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196444, -0.721892, 0.663537,
		-0.844766, 0.218945, 0.488297,
		-0.497776, -0.656457, -0.566819,
		27.618313, 34.697342, 36.217182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070574, 35.781689, 36.832321>,  <27.966755, 35.156860, 36.613953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070574, 35.781689, 36.832321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375046, 35.670242, 37.066578>,  <28.557730, 35.603374, 37.207130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375046, 35.670242, 37.066578>,  <28.070574, 35.781689, 36.832321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375046, 35.670242, 37.066578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582932, -0.101851, -0.806112,
		0.284243, 0.954987, 0.084887,
		0.761181, -0.278615, 0.585643,
		28.603399, 35.586658, 37.242271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606503, 36.235531, 36.537392>,  <28.070574, 35.781689, 36.832321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606503, 36.235531, 36.537392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765272, 35.909454, 36.706108>,  <28.860535, 35.713806, 36.807339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765272, 35.909454, 36.706108>,  <28.606503, 36.235531, 36.537392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765272, 35.909454, 36.706108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766173, 0.041233, -0.641310,
		0.505400, 0.577720, 0.640945,
		0.396926, -0.815193, 0.421794,
		28.884350, 35.664898, 36.832645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317434, 36.388088, 36.568771>,  <28.606503, 36.235531, 36.537392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317434, 36.388088, 36.568771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256252, 35.993389, 36.590450>,  <29.219543, 35.756569, 36.603458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.256252, 35.993389, 36.590450>,  <29.317434, 36.388088, 36.568771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256252, 35.993389, 36.590450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683254, -0.145219, -0.715595,
		0.713981, -0.072421, 0.696410,
		-0.152956, -0.986746, 0.054202,
		29.210365, 35.697365, 36.606712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982290, 35.993435, 36.600567>,  <29.317434, 36.388088, 36.568771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982290, 35.993435, 36.600567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688124, 35.756111, 36.469639>,  <29.511623, 35.613716, 36.391083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.688124, 35.756111, 36.469639>,  <29.982290, 35.993435, 36.600567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688124, 35.756111, 36.469639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574646, -0.290091, -0.765264,
		0.359088, -0.750883, 0.554283,
		-0.735417, -0.593314, -0.327324,
		29.467499, 35.578117, 36.371441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204222, 35.295876, 36.465443>,  <29.982290, 35.993435, 36.600567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204222, 35.295876, 36.465443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902227, 35.383911, 36.218361>,  <29.721031, 35.436733, 36.070114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902227, 35.383911, 36.218361>,  <30.204222, 35.295876, 36.465443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902227, 35.383911, 36.218361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559984, -0.273740, -0.781975,
		-0.341191, -0.936284, 0.083426,
		-0.754988, 0.220086, -0.617702,
		29.675732, 35.449936, 36.033051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514345, 35.156948, 35.944340>,  <30.204222, 35.295876, 36.465443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514345, 35.156948, 35.944340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156826, 35.249332, 35.790569>,  <29.942314, 35.304764, 35.698307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.156826, 35.249332, 35.790569>,  <30.514345, 35.156948, 35.944340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156826, 35.249332, 35.790569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282766, -0.375114, -0.882799,
		-0.348094, -0.897746, 0.269969,
		-0.893797, 0.230959, -0.384426,
		29.888687, 35.318623, 35.675240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075840, 34.579796, 35.721661>,  <30.514345, 35.156948, 35.944340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075840, 34.579796, 35.721661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971298, 34.900402, 35.506523>,  <29.908573, 35.092766, 35.377441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.971298, 34.900402, 35.506523>,  <30.075840, 34.579796, 35.721661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971298, 34.900402, 35.506523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170951, -0.509962, -0.843039,
		-0.949983, -0.312278, -0.003737,
		-0.261357, 0.801512, -0.537839,
		29.892891, 35.140854, 35.345173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688417, 34.351810, 35.146732>,  <30.075840, 34.579796, 35.721661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688417, 34.351810, 35.146732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854027, 34.705654, 35.060894>,  <29.953392, 34.917961, 35.009392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854027, 34.705654, 35.060894>,  <29.688417, 34.351810, 35.146732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854027, 34.705654, 35.060894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412585, -0.392512, -0.822014,
		-0.811393, 0.251792, -0.527486,
		0.414021, 0.884610, -0.214595,
		29.978233, 34.971039, 34.996517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395935, 34.928577, 34.739109>,  <29.688417, 34.351810, 35.146732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395935, 34.928577, 34.739109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275379, 35.055859, 34.379574>,  <29.203045, 35.132225, 34.163853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275379, 35.055859, 34.379574>,  <29.395935, 34.928577, 34.739109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275379, 35.055859, 34.379574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490042, -0.860341, -0.140255,
		-0.817938, 0.398198, 0.415229,
		-0.301390, 0.318200, -0.898840,
		29.184963, 35.151318, 34.109921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914949, 35.295704, 35.082870>,  <29.395935, 34.928577, 34.739109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914949, 35.295704, 35.082870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206450, 35.087715, 35.261108>,  <29.381350, 34.962921, 35.368050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.206450, 35.087715, 35.261108>,  <28.914949, 35.295704, 35.082870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206450, 35.087715, 35.261108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348734, 0.278207, 0.894978,
		-0.589327, -0.807611, 0.021414,
		0.728751, -0.519967, 0.445596,
		29.425076, 34.931725, 35.394787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720003, 34.809338, 35.524448>,  <28.914949, 35.295704, 35.082870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.720003, 34.809338, 35.524448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069956, 34.946514, 35.661255>,  <29.279928, 35.028820, 35.743340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.069956, 34.946514, 35.661255>,  <28.720003, 34.809338, 35.524448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069956, 34.946514, 35.661255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443284, 0.282447, 0.850719,
		0.195136, -0.895891, 0.399124,
		0.874883, 0.342932, 0.342019,
		29.332420, 35.049397, 35.763859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746115, 34.577023, 36.102230>,  <28.720003, 34.809338, 35.524448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746115, 34.577023, 36.102230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979769, 34.899162, 36.142639>,  <29.119961, 35.092445, 36.166885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979769, 34.899162, 36.142639>,  <28.746115, 34.577023, 36.102230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979769, 34.899162, 36.142639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344556, 0.133346, 0.929247,
		0.734895, -0.577613, 0.355379,
		0.584133, 0.805347, 0.101024,
		29.155008, 35.140766, 36.172947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148033, 34.431957, 36.715633>,  <28.746115, 34.577023, 36.102230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148033, 34.431957, 36.715633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164898, 34.829048, 36.670540>,  <29.175016, 35.067303, 36.643486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164898, 34.829048, 36.670540>,  <29.148033, 34.431957, 36.715633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164898, 34.829048, 36.670540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294605, 0.120166, 0.948034,
		0.954689, -0.006759, 0.297530,
		0.042160, 0.992731, -0.112730,
		29.177546, 35.126869, 36.636723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644594, 34.679638, 37.318443>,  <29.148033, 34.431957, 36.715633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644594, 34.679638, 37.318443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386492, 34.950378, 37.176727>,  <29.231630, 35.112823, 37.091698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386492, 34.950378, 37.176727>,  <29.644594, 34.679638, 37.318443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386492, 34.950378, 37.176727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383361, 0.114272, 0.916502,
		0.660818, 0.727200, 0.185742,
		-0.645255, 0.676847, -0.354293,
		29.192915, 35.153431, 37.070438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663155, 35.352356, 37.658813>,  <29.644594, 34.679638, 37.318443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663155, 35.352356, 37.658813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300663, 35.254086, 37.521183>,  <29.083168, 35.195122, 37.438606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300663, 35.254086, 37.521183>,  <29.663155, 35.352356, 37.658813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300663, 35.254086, 37.521183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354211, -0.003134, 0.935160,
		-0.230826, 0.969347, -0.084182,
		-0.906231, -0.245677, -0.344077,
		29.028793, 35.180382, 37.417961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091217, 35.920441, 37.799778>,  <29.663155, 35.352356, 37.658813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091217, 35.920441, 37.799778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382622, 35.774834, 38.031902>,  <30.557465, 35.687469, 38.171177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382622, 35.774834, 38.031902>,  <30.091217, 35.920441, 37.799778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382622, 35.774834, 38.031902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175339, -0.719823, -0.671648,
		0.662214, 0.591055, -0.460573,
		0.728511, -0.364018, 0.580312,
		30.601175, 35.665627, 38.205997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641600, 36.039398, 37.427475>,  <30.091217, 35.920441, 37.799778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641600, 36.039398, 37.427475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638468, 35.713783, 37.659779>,  <30.636589, 35.518414, 37.799160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638468, 35.713783, 37.659779>,  <30.641600, 36.039398, 37.427475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638468, 35.713783, 37.659779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337559, -0.548838, -0.764742,
		0.941272, 0.190052, 0.279084,
		-0.007831, -0.814037, 0.580760,
		30.636118, 35.469570, 37.834007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.277136, 35.797379, 37.524513>,  <30.641600, 36.039398, 37.427475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.277136, 35.797379, 37.524513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027700, 35.485550, 37.547844>,  <30.878038, 35.298450, 37.561840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027700, 35.485550, 37.547844>,  <31.277136, 35.797379, 37.524513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027700, 35.485550, 37.547844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556920, -0.495364, -0.666673,
		0.548613, -0.383249, 0.743064,
		-0.623589, -0.779573, 0.058324,
		30.840624, 35.251678, 37.565342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601425, 35.159267, 37.719650>,  <31.277136, 35.797379, 37.524513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601425, 35.159267, 37.719650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295036, 35.108433, 37.467575>,  <31.111202, 35.077930, 37.316330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295036, 35.108433, 37.467575>,  <31.601425, 35.159267, 37.719650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295036, 35.108433, 37.467575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621282, -0.398251, -0.674837,
		-0.165210, -0.908430, 0.384006,
		-0.765973, -0.127086, -0.630186,
		31.065245, 35.070309, 37.278519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593767, 34.463165, 37.564461>,  <31.601425, 35.159267, 37.719650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593767, 34.463165, 37.564461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409931, 34.653065, 37.264225>,  <31.299629, 34.767006, 37.084084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.409931, 34.653065, 37.264225>,  <31.593767, 34.463165, 37.564461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.409931, 34.653065, 37.264225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679397, -0.356388, -0.641411,
		-0.572012, -0.804736, -0.158751,
		-0.459589, 0.474750, -0.750593,
		31.272055, 34.795490, 37.039047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597515, 33.908943, 36.917152>,  <31.593767, 34.463165, 37.564461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597515, 33.908943, 36.917152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593491, 34.302551, 36.846043>,  <31.591076, 34.538715, 36.803379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593491, 34.302551, 36.846043>,  <31.597515, 33.908943, 36.917152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593491, 34.302551, 36.846043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885712, -0.073748, -0.458341,
		-0.464127, -0.162063, -0.870817,
		-0.010059, 0.984021, -0.177770,
		31.590473, 34.597759, 36.792713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592155, 34.151836, 36.122627>,  <31.597515, 33.908943, 36.917152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592155, 34.151836, 36.122627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774265, 34.382244, 36.394192>,  <31.883532, 34.520489, 36.557133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774265, 34.382244, 36.394192>,  <31.592155, 34.151836, 36.122627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774265, 34.382244, 36.394192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845624, -0.041099, -0.532195,
		-0.278654, 0.816400, -0.505809,
		0.455272, 0.576022, 0.678915,
		31.910847, 34.555050, 36.597866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849470, 34.827934, 35.849663>,  <31.592155, 34.151836, 36.122627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849470, 34.827934, 35.849663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109085, 34.723675, 36.135548>,  <32.264854, 34.661121, 36.307079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.109085, 34.723675, 36.135548>,  <31.849470, 34.827934, 35.849663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.109085, 34.723675, 36.135548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741551, 0.006996, -0.670860,
		0.169857, 0.965409, 0.197824,
		0.649038, -0.260646, 0.714712,
		32.303795, 34.645481, 36.349960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371010, 35.294891, 35.926304>,  <31.849470, 34.827934, 35.849663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371010, 35.294891, 35.926304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532589, 34.937469, 36.004673>,  <32.629536, 34.723015, 36.051697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532589, 34.937469, 36.004673>,  <32.371010, 35.294891, 35.926304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532589, 34.937469, 36.004673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722031, 0.179926, -0.668056,
		0.561692, 0.411324, 0.717854,
		0.403948, -0.893554, 0.195925,
		32.653774, 34.669403, 36.063450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152679, 35.261379, 36.270206>,  <32.371010, 35.294891, 35.926304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152679, 35.261379, 36.270206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089489, 34.950554, 36.026497>,  <33.051575, 34.764057, 35.880272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089489, 34.950554, 36.026497>,  <33.152679, 35.261379, 36.270206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089489, 34.950554, 36.026497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855467, 0.200465, -0.477483,
		0.493174, -0.596640, 0.633088,
		-0.157973, -0.777068, -0.609270,
		33.042095, 34.717434, 35.843716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769665, 34.729576, 36.340111>,  <33.152679, 35.261379, 36.270206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769665, 34.729576, 36.340111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562126, 34.764072, 35.999908>,  <33.437603, 34.784771, 35.795788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562126, 34.764072, 35.999908>,  <33.769665, 34.729576, 36.340111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562126, 34.764072, 35.999908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848249, 0.175511, -0.499669,
		0.106179, -0.980692, -0.164219,
		-0.518844, 0.086245, -0.850508,
		33.406471, 34.789944, 35.744755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410332, 34.242573, 36.292984>,  <33.769665, 34.729576, 36.340111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410332, 34.242573, 36.292984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730999, 34.332863, 36.071579>,  <34.923401, 34.387039, 35.938736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730999, 34.332863, 36.071579>,  <34.410332, 34.242573, 36.292984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730999, 34.332863, 36.071579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323685, 0.614542, 0.719421,
		0.502547, -0.755901, 0.419596,
		0.801670, 0.225726, -0.553510,
		34.971500, 34.400581, 35.905525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959179, 34.267323, 36.783627>,  <34.410332, 34.242573, 36.292984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959179, 34.267323, 36.783627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114094, 34.468178, 36.474339>,  <35.207043, 34.588692, 36.288765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114094, 34.468178, 36.474339>,  <34.959179, 34.267323, 36.783627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114094, 34.468178, 36.474339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397411, 0.665833, 0.631452,
		0.831911, -0.551838, 0.058312,
		0.387285, 0.502138, -0.773219,
		35.230278, 34.618820, 36.242374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623894, 34.262714, 36.813980>,  <34.959179, 34.267323, 36.783627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623894, 34.262714, 36.813980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541496, 34.600304, 36.615879>,  <35.492058, 34.802856, 36.497017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541496, 34.600304, 36.615879>,  <35.623894, 34.262714, 36.813980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541496, 34.600304, 36.615879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529741, 0.521711, 0.668724,
		0.822765, -0.124606, -0.554555,
		-0.205990, 0.843973, -0.495255,
		35.479698, 34.853497, 36.467304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271530, 34.729168, 36.534904>,  <35.623894, 34.262714, 36.813980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271530, 34.729168, 36.534904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938126, 34.895393, 36.680546>,  <35.738083, 34.995129, 36.767929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938126, 34.895393, 36.680546>,  <36.271530, 34.729168, 36.534904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938126, 34.895393, 36.680546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539751, 0.471673, 0.697275,
		0.118026, 0.777710, -0.617445,
		-0.833510, 0.415563, 0.364100,
		35.688072, 35.020061, 36.789776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438843, 35.519508, 36.570824>,  <36.271530, 34.729168, 36.534904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438843, 35.519508, 36.570824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189983, 35.349022, 36.833508>,  <36.040668, 35.246731, 36.991119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189983, 35.349022, 36.833508>,  <36.438843, 35.519508, 36.570824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189983, 35.349022, 36.833508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436412, 0.507601, 0.742890,
		-0.649979, 0.748786, -0.129798,
		-0.622151, -0.426217, 0.656709,
		36.003338, 35.221157, 37.030521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438560, 35.925514, 37.128998>,  <36.438843, 35.519508, 36.570824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438560, 35.925514, 37.128998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358242, 35.547909, 37.233707>,  <36.310051, 35.321346, 37.296532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358242, 35.547909, 37.233707>,  <36.438560, 35.925514, 37.128998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358242, 35.547909, 37.233707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498497, 0.131567, 0.856849,
		-0.843315, 0.302548, 0.444168,
		-0.200800, -0.944010, 0.261771,
		36.298000, 35.264706, 37.312241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781254, 35.798725, 37.456516>,  <36.438560, 35.925514, 37.128998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781254, 35.798725, 37.456516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874756, 36.011292, 37.130829>,  <35.930855, 36.138832, 36.935417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874756, 36.011292, 37.130829>,  <35.781254, 35.798725, 37.456516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874756, 36.011292, 37.130829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096385, -0.820630, -0.563272,
		-0.967507, 0.210145, -0.140604,
		0.233753, 0.531417, -0.814221,
		35.944881, 36.170715, 36.886562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200397, 35.757862, 37.009018>,  <35.781254, 35.798725, 37.456516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200397, 35.757862, 37.009018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538231, 35.781010, 36.796104>,  <35.740932, 35.794899, 36.668358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538231, 35.781010, 36.796104>,  <35.200397, 35.757862, 37.009018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538231, 35.781010, 36.796104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323389, -0.737182, -0.593281,
		-0.426724, 0.673211, -0.603898,
		0.844586, 0.057874, -0.532283,
		35.791607, 35.798370, 36.636421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118217, 35.960190, 36.243256>,  <35.200397, 35.757862, 37.009018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118217, 35.960190, 36.243256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403698, 35.690865, 36.320480>,  <35.574986, 35.529270, 36.366814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403698, 35.690865, 36.320480>,  <35.118217, 35.960190, 36.243256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403698, 35.690865, 36.320480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410964, -0.625724, -0.663007,
		0.567215, 0.393850, -0.723291,
		0.713706, -0.673313, 0.193062,
		35.617809, 35.488869, 36.378399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290421, 35.668362, 35.537334>,  <35.118217, 35.960190, 36.243256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290421, 35.668362, 35.537334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399727, 35.425472, 35.835758>,  <35.465309, 35.279739, 36.014812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399727, 35.425472, 35.835758>,  <35.290421, 35.668362, 35.537334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399727, 35.425472, 35.835758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277757, -0.792350, -0.543168,
		0.920965, -0.058793, -0.385184,
		0.273266, -0.607227, 0.746057,
		35.481705, 35.243305, 36.059574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719635, 35.297932, 35.227058>,  <35.290421, 35.668362, 35.537334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719635, 35.297932, 35.227058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577492, 35.085712, 35.534885>,  <35.492207, 34.958382, 35.719582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577492, 35.085712, 35.534885>,  <35.719635, 35.297932, 35.227058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577492, 35.085712, 35.534885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285883, -0.722168, -0.629876,
		0.889941, -0.443837, 0.104951,
		-0.355355, -0.530549, 0.769572,
		35.470886, 34.926548, 35.765759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025776, 34.624531, 35.241253>,  <35.719635, 35.297932, 35.227058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025776, 34.624531, 35.241253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676056, 34.594994, 35.433147>,  <35.466225, 34.577271, 35.548283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676056, 34.594994, 35.433147>,  <36.025776, 34.624531, 35.241253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676056, 34.594994, 35.433147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246715, -0.783553, -0.570243,
		0.418006, -0.616921, 0.666843,
		-0.874301, -0.073845, 0.479734,
		35.413765, 34.572842, 35.577068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898087, 33.979958, 35.264595>,  <36.025776, 34.624531, 35.241253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898087, 33.979958, 35.264595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544395, 34.166588, 35.256084>,  <35.332180, 34.278564, 35.250977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544395, 34.166588, 35.256084>,  <35.898087, 33.979958, 35.264595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544395, 34.166588, 35.256084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376655, -0.739269, -0.558222,
		-0.276181, -0.485581, 0.829418,
		-0.884225, 0.466575, -0.021276,
		35.279129, 34.306561, 35.249702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392017, 33.370758, 35.286911>,  <35.898087, 33.979958, 35.264595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392017, 33.370758, 35.286911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210705, 33.681293, 35.111713>,  <35.101917, 33.867615, 35.006596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210705, 33.681293, 35.111713>,  <35.392017, 33.370758, 35.286911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210705, 33.681293, 35.111713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334612, -0.603631, -0.723647,
		-0.826181, -0.181456, 0.533385,
		-0.453277, 0.776340, -0.437991,
		35.074722, 33.914196, 34.980316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786140, 33.093605, 35.056873>,  <35.392017, 33.370758, 35.286911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786140, 33.093605, 35.056873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865501, 33.421650, 34.842194>,  <34.913116, 33.618477, 34.713387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865501, 33.421650, 34.842194>,  <34.786140, 33.093605, 35.056873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865501, 33.421650, 34.842194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212500, -0.498570, -0.840400,
		-0.956807, 0.280787, 0.075357,
		0.198402, 0.820114, -0.536702,
		34.925022, 33.667683, 34.681183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203415, 33.128895, 34.579105>,  <34.786140, 33.093605, 35.056873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203415, 33.128895, 34.579105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476780, 33.377781, 34.426369>,  <34.640797, 33.527111, 34.334728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.476780, 33.377781, 34.426369>,  <34.203415, 33.128895, 34.579105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476780, 33.377781, 34.426369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183596, -0.359744, -0.914810,
		-0.706571, 0.695294, -0.131617,
		0.683410, 0.622214, -0.381838,
		34.681805, 33.564445, 34.311817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885883, 33.429451, 33.946442>,  <34.203415, 33.128895, 34.579105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885883, 33.429451, 33.946442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284184, 33.448528, 33.914906>,  <34.523163, 33.459976, 33.895985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284184, 33.448528, 33.914906>,  <33.885883, 33.429451, 33.946442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284184, 33.448528, 33.914906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072272, -0.126441, -0.989338,
		-0.057157, 0.990827, -0.122456,
		0.995746, 0.047697, -0.078836,
		34.582909, 33.462837, 33.891254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042389, 33.947330, 33.407646>,  <33.885883, 33.429451, 33.946442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042389, 33.947330, 33.407646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383080, 33.738262, 33.422470>,  <34.587494, 33.612820, 33.431366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383080, 33.738262, 33.422470>,  <34.042389, 33.947330, 33.407646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383080, 33.738262, 33.422470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021597, -0.105684, -0.994165,
		0.523541, 0.845956, -0.101302,
		0.851726, -0.522674, 0.037060,
		34.638596, 33.581459, 33.433590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648323, 34.202591, 32.964333>,  <34.042389, 33.947330, 33.407646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648323, 34.202591, 32.964333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721188, 33.812557, 33.014965>,  <34.764908, 33.578537, 33.045345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721188, 33.812557, 33.014965>,  <34.648323, 34.202591, 32.964333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721188, 33.812557, 33.014965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116694, -0.149261, -0.981888,
		0.976320, 0.164090, -0.140976,
		0.182160, -0.975087, 0.126578,
		34.775837, 33.520031, 33.052940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009434, 33.965405, 32.399048>,  <34.648323, 34.202591, 32.964333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009434, 33.965405, 32.399048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886845, 33.606342, 32.525719>,  <34.813290, 33.390903, 32.601723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886845, 33.606342, 32.525719>,  <35.009434, 33.965405, 32.399048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886845, 33.606342, 32.525719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157565, -0.280258, -0.946905,
		0.938748, -0.340099, -0.055548,
		-0.306474, -0.897657, 0.316679,
		34.794903, 33.337044, 32.620724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268047, 33.560471, 31.878700>,  <35.009434, 33.965405, 32.399048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268047, 33.560471, 31.878700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031757, 33.319489, 32.093395>,  <34.889984, 33.174900, 32.222214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031757, 33.319489, 32.093395>,  <35.268047, 33.560471, 31.878700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031757, 33.319489, 32.093395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202393, -0.533303, -0.821356,
		0.781076, -0.593828, 0.193102,
		-0.590726, -0.602459, 0.536737,
		34.854538, 33.138752, 32.254417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615318, 32.863937, 31.882751>,  <35.268047, 33.560471, 31.878700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615318, 32.863937, 31.882751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222305, 32.827835, 31.947853>,  <34.986500, 32.806175, 31.986914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222305, 32.827835, 31.947853>,  <35.615318, 32.863937, 31.882751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222305, 32.827835, 31.947853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078423, -0.592290, -0.801899,
		0.168773, -0.800653, 0.574865,
		-0.982530, -0.090257, 0.162752,
		34.927547, 32.800758, 31.996679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402939, 32.295628, 31.657661>,  <35.615318, 32.863937, 31.882751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402939, 32.295628, 31.657661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039276, 32.462151, 31.662111>,  <34.821079, 32.562065, 31.664782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039276, 32.462151, 31.662111>,  <35.402939, 32.295628, 31.657661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039276, 32.462151, 31.662111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192198, -0.395736, -0.898027,
		-0.369449, -0.818587, 0.439799,
		-0.909157, 0.416304, 0.011127,
		34.766529, 32.587044, 31.665447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976734, 31.770653, 31.447027>,  <35.402939, 32.295628, 31.657661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976734, 31.770653, 31.447027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786152, 32.113850, 31.370255>,  <34.671803, 32.319767, 31.324190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786152, 32.113850, 31.370255>,  <34.976734, 31.770653, 31.447027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786152, 32.113850, 31.370255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156376, -0.297523, -0.941821,
		-0.865182, -0.418720, 0.275925,
		-0.476453, 0.857994, -0.191934,
		34.643215, 32.371246, 31.312674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244373, 31.648550, 31.294031>,  <34.976734, 31.770653, 31.447027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244373, 31.648550, 31.294031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338833, 32.004208, 31.137236>,  <34.395508, 32.217602, 31.043158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338833, 32.004208, 31.137236>,  <34.244373, 31.648550, 31.294031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338833, 32.004208, 31.137236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394678, -0.280859, -0.874841,
		-0.887953, 0.361306, 0.284600,
		0.236153, 0.889144, -0.391989,
		34.409679, 32.270950, 31.019638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662510, 31.791780, 30.765085>,  <34.244373, 31.648550, 31.294031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662510, 31.791780, 30.765085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957752, 32.045174, 30.672216>,  <34.134895, 32.197208, 30.616495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957752, 32.045174, 30.672216>,  <33.662510, 31.791780, 30.765085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957752, 32.045174, 30.672216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295799, -0.005447, -0.955235,
		-0.606390, 0.773737, 0.183363,
		0.738102, 0.633484, -0.232174,
		34.179184, 32.235218, 30.602564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418865, 32.228802, 30.232817>,  <33.662510, 31.791780, 30.765085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418865, 32.228802, 30.232817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811783, 32.284111, 30.182270>,  <34.047535, 32.317299, 30.151941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811783, 32.284111, 30.182270>,  <33.418865, 32.228802, 30.232817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811783, 32.284111, 30.182270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149476, 0.172032, -0.973685,
		-0.112899, 0.975338, 0.189656,
		0.982299, 0.138277, -0.126367,
		34.106472, 32.325596, 30.144360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471657, 32.915184, 29.845030>,  <33.418865, 32.228802, 30.232817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471657, 32.915184, 29.845030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790939, 32.679932, 29.792931>,  <33.982510, 32.538780, 29.761671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.790939, 32.679932, 29.792931>,  <33.471657, 32.915184, 29.845030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.790939, 32.679932, 29.792931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145948, 0.020959, -0.989070,
		0.584435, 0.808492, -0.069108,
		0.798207, -0.588133, -0.130247,
		34.030403, 32.503490, 29.753857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908428, 33.174957, 29.242208>,  <33.471657, 32.915184, 29.845030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908428, 33.174957, 29.242208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056793, 32.807247, 29.294901>,  <34.145813, 32.586620, 29.326515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056793, 32.807247, 29.294901>,  <33.908428, 33.174957, 29.242208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056793, 32.807247, 29.294901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087375, -0.106674, -0.990448,
		0.924547, 0.378884, 0.040754,
		0.370917, -0.919276, 0.131730,
		34.168068, 32.531464, 29.334419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410313, 33.221508, 28.806908>,  <33.908428, 33.174957, 29.242208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410313, 33.221508, 28.806908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362942, 32.830563, 28.877043>,  <34.334518, 32.595997, 28.919125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362942, 32.830563, 28.877043>,  <34.410313, 33.221508, 28.806908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362942, 32.830563, 28.877043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046520, -0.170928, -0.984185,
		0.991872, -0.124712, -0.025224,
		-0.118429, -0.977359, 0.175340,
		34.327412, 32.537354, 28.929646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922298, 32.939987, 28.386431>,  <34.410313, 33.221508, 28.806908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922298, 32.939987, 28.386431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632877, 32.676773, 28.469812>,  <34.459225, 32.518845, 28.519840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632877, 32.676773, 28.469812>,  <34.922298, 32.939987, 28.386431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632877, 32.676773, 28.469812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164576, -0.128821, -0.977916,
		0.670358, -0.741884, -0.015088,
		-0.723557, -0.658037, 0.208453,
		34.415810, 32.479362, 28.532349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965359, 32.471149, 27.874346>,  <34.922298, 32.939987, 28.386431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965359, 32.471149, 27.874346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593651, 32.395157, 28.001064>,  <34.370625, 32.349560, 28.077095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593651, 32.395157, 28.001064>,  <34.965359, 32.471149, 27.874346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593651, 32.395157, 28.001064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272056, -0.228134, -0.934848,
		0.249878, -0.954914, 0.160312,
		-0.929272, -0.189984, 0.316796,
		34.314869, 32.338161, 28.096104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739746, 31.870184, 27.484116>,  <34.965359, 32.471149, 27.874346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739746, 31.870184, 27.484116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398418, 32.017040, 27.632198>,  <34.193623, 32.105156, 27.721048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398418, 32.017040, 27.632198>,  <34.739746, 31.870184, 27.484116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398418, 32.017040, 27.632198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450471, -0.161633, -0.878038,
		-0.262530, -0.916013, 0.303313,
		-0.853319, 0.367145, 0.370204,
		34.142422, 32.127182, 27.743259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230175, 31.405357, 27.337765>,  <34.739746, 31.870184, 27.484116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230175, 31.405357, 27.337765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032906, 31.745436, 27.411461>,  <33.914543, 31.949484, 27.455679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032906, 31.745436, 27.411461>,  <34.230175, 31.405357, 27.337765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032906, 31.745436, 27.411461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467372, -0.080321, -0.880405,
		-0.733720, -0.520300, 0.436971,
		-0.493172, 0.850198, 0.184240,
		33.884953, 32.000496, 27.466732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573250, 31.267704, 27.237282>,  <34.230175, 31.405357, 27.337765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573250, 31.267704, 27.237282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610359, 31.665697, 27.222292>,  <33.632626, 31.904493, 27.213297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610359, 31.665697, 27.222292>,  <33.573250, 31.267704, 27.237282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610359, 31.665697, 27.222292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392823, 0.001989, -0.919612,
		-0.914923, 0.100034, 0.391036,
		0.092770, 0.994982, -0.037476,
		33.638191, 31.964191, 27.211050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048874, 31.468983, 26.957165>,  <33.573250, 31.267704, 27.237282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048874, 31.468983, 26.957165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227585, 31.823637, 26.909395>,  <33.334812, 32.036430, 26.880733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.227585, 31.823637, 26.909395>,  <33.048874, 31.468983, 26.957165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227585, 31.823637, 26.909395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451775, 0.108373, -0.885526,
		-0.772198, 0.449587, 0.448979,
		0.446778, 0.886638, -0.119426,
		33.361618, 32.089630, 26.873568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514935, 31.922779, 26.679514>,  <33.048874, 31.468983, 26.957165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514935, 31.922779, 26.679514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875641, 32.070415, 26.589544>,  <33.092064, 32.158997, 26.535563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875641, 32.070415, 26.589544>,  <32.514935, 31.922779, 26.679514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875641, 32.070415, 26.589544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219075, -0.058293, -0.973965,
		-0.372591, 0.927564, 0.028292,
		0.901766, 0.369089, -0.224925,
		33.146172, 32.181141, 26.522066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381832, 32.320522, 26.029871>,  <32.514935, 31.922779, 26.679514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381832, 32.320522, 26.029871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777592, 32.264793, 26.046301>,  <33.015045, 32.231354, 26.056160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777592, 32.264793, 26.046301>,  <32.381832, 32.320522, 26.029871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777592, 32.264793, 26.046301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021538, -0.138943, -0.990066,
		0.143648, 0.980451, -0.134469,
		0.989394, -0.139325, 0.041076,
		33.074409, 32.222996, 26.058624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566116, 32.786049, 25.523846>,  <32.381832, 32.320522, 26.029871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566116, 32.786049, 25.523846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876030, 32.536026, 25.561834>,  <33.061977, 32.386013, 25.584627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876030, 32.536026, 25.561834>,  <32.566116, 32.786049, 25.523846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876030, 32.536026, 25.561834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088716, -0.041248, -0.995203,
		0.625972, 0.779491, 0.023494,
		0.774783, -0.625054, 0.094974,
		33.108463, 32.348511, 25.590326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053131, 33.001545, 25.021973>,  <32.566116, 32.786049, 25.523846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053131, 33.001545, 25.021973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184265, 32.631550, 25.098824>,  <33.262947, 32.409554, 25.144934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184265, 32.631550, 25.098824>,  <33.053131, 33.001545, 25.021973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184265, 32.631550, 25.098824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047994, -0.186798, -0.981225,
		0.943514, 0.330903, -0.016846,
		0.327837, -0.924992, 0.192128,
		33.282616, 32.354053, 25.156462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669765, 32.947281, 24.641010>,  <33.053131, 33.001545, 25.021973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669765, 32.947281, 24.641010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544853, 32.576965, 24.726244>,  <33.469906, 32.354778, 24.777384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544853, 32.576965, 24.726244>,  <33.669765, 32.947281, 24.641010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544853, 32.576965, 24.726244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115512, -0.259641, -0.958772,
		0.942942, -0.274791, 0.188020,
		-0.312279, -0.925784, 0.213085,
		33.451168, 32.299229, 24.790169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178665, 32.522141, 24.358387>,  <33.669765, 32.947281, 24.641010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178665, 32.522141, 24.358387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835079, 32.317921, 24.373983>,  <33.628929, 32.195389, 24.383341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835079, 32.317921, 24.373983>,  <34.178665, 32.522141, 24.358387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835079, 32.317921, 24.373983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078675, -0.206837, -0.975207,
		0.505959, -0.834598, 0.217833,
		-0.858962, -0.510553, 0.038989,
		33.577389, 32.164757, 24.385679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414227, 31.963570, 23.909851>,  <34.178665, 32.522141, 24.358387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414227, 31.963570, 23.909851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017101, 31.963343, 23.957731>,  <33.778828, 31.963207, 23.986460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017101, 31.963343, 23.957731>,  <34.414227, 31.963570, 23.909851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017101, 31.963343, 23.957731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117818, -0.172146, -0.978000,
		0.021160, -0.985071, 0.170842,
		-0.992810, -0.000566, 0.119702,
		33.719257, 31.963173, 23.993641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126846, 31.387280, 23.506813>,  <34.414227, 31.963570, 23.909851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126846, 31.387280, 23.506813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811401, 31.628265, 23.556013>,  <33.622135, 31.772858, 23.585533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811401, 31.628265, 23.556013>,  <34.126846, 31.387280, 23.506813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811401, 31.628265, 23.556013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260653, -0.146358, -0.954274,
		-0.556916, -0.784610, 0.272454,
		-0.788609, 0.602467, 0.123002,
		33.574818, 31.809006, 23.592915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603279, 31.075745, 23.203136>,  <34.126846, 31.387280, 23.506813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603279, 31.075745, 23.203136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499519, 31.461216, 23.228563>,  <33.437263, 31.692499, 23.243820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499519, 31.461216, 23.228563>,  <33.603279, 31.075745, 23.203136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499519, 31.461216, 23.228563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191909, 0.013074, -0.981326,
		-0.946511, -0.266752, 0.181547,
		-0.259397, 0.963676, 0.063567,
		33.421700, 31.750319, 23.247633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987595, 31.105696, 22.779964>,  <33.603279, 31.075745, 23.203136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987595, 31.105696, 22.779964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098221, 31.488880, 22.810478>,  <33.164597, 31.718790, 22.828787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098221, 31.488880, 22.810478>,  <32.987595, 31.105696, 22.779964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098221, 31.488880, 22.810478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405036, 0.188184, -0.894725,
		-0.871467, 0.216555, 0.440055,
		0.276569, 0.957962, 0.076284,
		33.181190, 31.776268, 22.833363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339691, 31.547461, 22.669804>,  <32.987595, 31.105696, 22.779964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339691, 31.547461, 22.669804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663750, 31.770105, 22.596220>,  <32.858185, 31.903692, 22.552071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663750, 31.770105, 22.596220>,  <32.339691, 31.547461, 22.669804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663750, 31.770105, 22.596220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339730, 0.190049, -0.921122,
		-0.477748, 0.808742, 0.343066,
		0.810149, 0.556614, -0.183958,
		32.906796, 31.937090, 22.541033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086109, 32.123409, 22.378731>,  <32.339691, 31.547461, 22.669804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086109, 32.123409, 22.378731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473621, 32.148804, 22.282864>,  <32.706127, 32.164040, 22.225344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473621, 32.148804, 22.282864>,  <32.086109, 32.123409, 22.378731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473621, 32.148804, 22.282864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247754, 0.210834, -0.945604,
		-0.009503, 0.975458, 0.219980,
		0.968777, 0.063487, -0.239670,
		32.764256, 32.167850, 22.210962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090874, 32.678169, 22.042395>,  <32.086109, 32.123409, 22.378731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090874, 32.678169, 22.042395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425190, 32.485477, 21.937031>,  <32.625782, 32.369862, 21.873814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425190, 32.485477, 21.937031>,  <32.090874, 32.678169, 22.042395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425190, 32.485477, 21.937031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183975, 0.206300, -0.961038,
		0.517300, 0.851691, 0.083799,
		0.835795, -0.481728, -0.263409,
		32.675930, 32.340958, 21.858007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454807, 33.172283, 21.740658>,  <32.090874, 32.678169, 22.042395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454807, 33.172283, 21.740658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591057, 32.822556, 21.602364>,  <32.672806, 32.612717, 21.519386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591057, 32.822556, 21.602364>,  <32.454807, 33.172283, 21.740658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591057, 32.822556, 21.602364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137366, 0.317500, -0.938256,
		0.930110, 0.367087, -0.011954,
		0.340626, -0.874323, -0.345736,
		32.693245, 32.560257, 21.498642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894463, 33.329212, 21.093822>,  <32.454807, 33.172283, 21.740658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894463, 33.329212, 21.093822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767262, 32.950203, 21.080704>,  <32.690941, 32.722797, 21.072832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767262, 32.950203, 21.080704>,  <32.894463, 33.329212, 21.093822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767262, 32.950203, 21.080704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259020, 0.120102, -0.958376,
		0.912022, -0.296269, -0.283620,
		-0.318000, -0.947523, -0.032796,
		32.671860, 32.665947, 21.070866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274353, 32.982075, 20.485987>,  <32.894463, 33.329212, 21.093822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274353, 32.982075, 20.485987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928616, 32.803215, 20.578045>,  <32.721172, 32.695900, 20.633280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928616, 32.803215, 20.578045>,  <33.274353, 32.982075, 20.485987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928616, 32.803215, 20.578045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382246, 0.286756, -0.878441,
		0.326810, -0.847242, -0.418780,
		-0.864340, -0.447160, 0.230141,
		32.669312, 32.669071, 20.647089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031097, 32.728786, 19.836527>,  <33.274353, 32.982075, 20.485987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031097, 32.728786, 19.836527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702194, 32.688240, 20.060532>,  <32.504852, 32.663910, 20.194935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702194, 32.688240, 20.060532>,  <33.031097, 32.728786, 19.836527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702194, 32.688240, 20.060532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563239, 0.003926, -0.826284,
		0.081568, -0.994840, -0.060328,
		-0.822258, -0.101378, 0.560013,
		32.455517, 32.657829, 20.228535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656391, 32.278099, 19.419144>,  <33.031097, 32.728786, 19.836527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656391, 32.278099, 19.419144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393616, 32.403610, 19.693363>,  <32.235950, 32.478916, 19.857895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393616, 32.403610, 19.693363>,  <32.656391, 32.278099, 19.419144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393616, 32.403610, 19.693363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731632, -0.045728, -0.680164,
		-0.182071, -0.948395, 0.259609,
		-0.656936, 0.313776, 0.685551,
		32.196533, 32.497742, 19.899029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075504, 31.833111, 19.477001>,  <32.656391, 32.278099, 19.419144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075504, 31.833111, 19.477001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979231, 32.204014, 19.591732>,  <31.921469, 32.426556, 19.660570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979231, 32.204014, 19.591732>,  <32.075504, 31.833111, 19.477001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979231, 32.204014, 19.591732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672917, 0.053554, -0.737776,
		-0.699468, -0.370579, 0.611077,
		-0.240679, 0.927256, 0.286829,
		31.907026, 32.482189, 19.677780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390615, 31.818769, 19.549032>,  <32.075504, 31.833111, 19.477001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390615, 31.818769, 19.549032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495321, 32.198864, 19.481466>,  <31.558146, 32.426922, 19.440928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495321, 32.198864, 19.481466>,  <31.390615, 31.818769, 19.549032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495321, 32.198864, 19.481466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766533, 0.098347, -0.634630,
		-0.586435, 0.295602, 0.754131,
		0.261764, 0.950235, -0.168915,
		31.573851, 32.483936, 19.430792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.869324, 32.104317, 19.996746>,  <31.390615, 31.818769, 19.549032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.869324, 32.104317, 19.996746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015865, 32.286995, 19.672470>,  <31.103790, 32.396603, 19.477905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015865, 32.286995, 19.672470>,  <30.869324, 32.104317, 19.996746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015865, 32.286995, 19.672470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926528, 0.098881, -0.362999,
		-0.085618, 0.884111, 0.459365,
		0.366354, 0.456694, -0.810688,
		31.125771, 32.424004, 19.429264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606079, 32.842728, 19.941118>,  <30.869324, 32.104317, 19.996746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606079, 32.842728, 19.941118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672729, 32.684074, 19.580027>,  <30.712721, 32.588882, 19.363373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672729, 32.684074, 19.580027>,  <30.606079, 32.842728, 19.941118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672729, 32.684074, 19.580027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862463, 0.385109, -0.328402,
		0.477904, 0.833290, -0.277912,
		0.166628, -0.396633, -0.902728,
		30.722717, 32.565083, 19.309208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444332, 33.394600, 19.577822>,  <30.606079, 32.842728, 19.941118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444332, 33.394600, 19.577822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398712, 33.028942, 19.422213>,  <30.371340, 32.809547, 19.328846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.398712, 33.028942, 19.422213>,  <30.444332, 33.394600, 19.577822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398712, 33.028942, 19.422213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969517, 0.187890, -0.157275,
		0.216865, 0.359229, -0.907703,
		-0.114050, -0.914140, -0.389025,
		30.364496, 32.754700, 19.305506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.157305, 33.387764, 18.886826>,  <30.444332, 33.394600, 19.577822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.157305, 33.387764, 18.886826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076635, 33.031555, 19.049942>,  <30.028233, 32.817829, 19.147812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076635, 33.031555, 19.049942>,  <30.157305, 33.387764, 18.886826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076635, 33.031555, 19.049942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975836, 0.146939, -0.161721,
		0.084096, -0.430552, -0.898639,
		-0.201675, -0.890525, 0.407791,
		30.016132, 32.764397, 19.172279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192099, 33.269585, 18.141367>,  <30.157305, 33.387764, 18.886826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192099, 33.269585, 18.141367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937958, 33.562344, 18.239880>,  <29.785473, 33.737999, 18.298986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.937958, 33.562344, 18.239880>,  <30.192099, 33.269585, 18.141367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.937958, 33.562344, 18.239880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422325, 0.596329, -0.682666,
		-0.646508, -0.329721, -0.687977,
		-0.635350, 0.731898, 0.246282,
		29.747353, 33.781914, 18.313765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182486, 34.042065, 18.256233>,  <30.192099, 33.269585, 18.141367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182486, 34.042065, 18.256233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322685, 34.413227, 18.205406>,  <30.406805, 34.635925, 18.174910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322685, 34.413227, 18.205406>,  <30.182486, 34.042065, 18.256233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322685, 34.413227, 18.205406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121931, 0.089308, 0.988513,
		0.928591, -0.361968, -0.081837,
		0.350501, 0.927903, -0.127065,
		30.427835, 34.691597, 18.167286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878494, 33.986588, 18.539169>,  <30.182486, 34.042065, 18.256233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878494, 33.986588, 18.539169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698244, 34.343662, 18.542061>,  <30.590094, 34.557907, 18.543795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.698244, 34.343662, 18.542061>,  <30.878494, 33.986588, 18.539169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698244, 34.343662, 18.542061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034425, 0.009286, 0.999364,
		0.892050, 0.450586, -0.034915,
		-0.450624, 0.892685, 0.007228,
		30.563057, 34.611469, 18.544230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351353, 34.641373, 18.805408>,  <30.878494, 33.986588, 18.539169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351353, 34.641373, 18.805408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961794, 34.672752, 18.890610>,  <30.728058, 34.691582, 18.941730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961794, 34.672752, 18.890610>,  <31.351353, 34.641373, 18.805408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961794, 34.672752, 18.890610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211959, -0.021499, 0.977042,
		0.081229, 0.996686, 0.004310,
		-0.973897, 0.078450, 0.213003,
		30.669624, 34.696289, 18.954512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330784, 35.223160, 19.253145>,  <31.351353, 34.641373, 18.805408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330784, 35.223160, 19.253145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005306, 34.992748, 19.284372>,  <30.810020, 34.854500, 19.303108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005306, 34.992748, 19.284372>,  <31.330784, 35.223160, 19.253145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005306, 34.992748, 19.284372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177645, -0.118538, 0.976929,
		-0.553486, 0.808789, 0.198782,
		-0.813693, -0.576029, 0.078068,
		30.761198, 34.819939, 19.307793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684851, 35.585938, 19.676533>,  <31.330784, 35.223160, 19.253145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684851, 35.585938, 19.676533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721758, 35.188122, 19.696035>,  <30.743902, 34.949432, 19.707737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721758, 35.188122, 19.696035>,  <30.684851, 35.585938, 19.676533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721758, 35.188122, 19.696035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061429, 0.054556, 0.996619,
		-0.993838, -0.088959, 0.066128,
		0.092266, -0.994540, 0.048756,
		30.749437, 34.889759, 19.710663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214159, 35.358395, 20.178471>,  <30.684851, 35.585938, 19.676533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214159, 35.358395, 20.178471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516094, 35.098415, 20.143185>,  <30.697256, 34.942429, 20.122013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516094, 35.098415, 20.143185>,  <30.214159, 35.358395, 20.178471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516094, 35.098415, 20.143185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120827, 0.005593, 0.992658,
		-0.644685, -0.759956, 0.082753,
		0.754839, -0.649950, -0.088217,
		30.742546, 34.903431, 20.116720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298334, 34.898415, 20.830940>,  <30.214159, 35.358395, 20.178471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298334, 34.898415, 20.830940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648136, 34.888550, 20.637184>,  <30.858017, 34.882629, 20.520931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648136, 34.888550, 20.637184>,  <30.298334, 34.898415, 20.830940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648136, 34.888550, 20.637184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477103, -0.135918, 0.868274,
		-0.087248, -0.990413, -0.107096,
		0.874506, -0.024659, -0.484387,
		30.910488, 34.881149, 20.491867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529253, 34.256916, 21.023466>,  <30.298334, 34.898415, 20.830940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529253, 34.256916, 21.023466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815317, 34.508781, 20.902096>,  <30.986956, 34.659901, 20.829273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815317, 34.508781, 20.902096>,  <30.529253, 34.256916, 21.023466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815317, 34.508781, 20.902096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471973, -0.114838, 0.874102,
		0.515546, -0.768332, -0.379312,
		0.715160, 0.629665, -0.303427,
		31.029865, 34.697681, 20.811068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183382, 34.030991, 21.292616>,  <30.529253, 34.256916, 21.023466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183382, 34.030991, 21.292616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212543, 34.423275, 21.220064>,  <31.230040, 34.658646, 21.176533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212543, 34.423275, 21.220064>,  <31.183382, 34.030991, 21.292616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212543, 34.423275, 21.220064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461483, 0.128055, 0.877859,
		0.884149, -0.147701, -0.443244,
		0.072901, 0.980707, -0.181381,
		31.234413, 34.717487, 21.165649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836996, 34.191185, 21.356966>,  <31.183382, 34.030991, 21.292616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836996, 34.191185, 21.356966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653038, 34.543083, 21.405220>,  <31.542664, 34.754223, 21.434172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.653038, 34.543083, 21.405220>,  <31.836996, 34.191185, 21.356966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653038, 34.543083, 21.405220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471469, 0.126795, 0.872720,
		0.752471, 0.458235, -0.473083,
		-0.459895, 0.879741, 0.120634,
		31.515070, 34.807007, 21.441410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262447, 34.522877, 21.793825>,  <31.836996, 34.191185, 21.356966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262447, 34.522877, 21.793825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958397, 34.781368, 21.820942>,  <31.775967, 34.936462, 21.837212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958397, 34.781368, 21.820942>,  <32.262447, 34.522877, 21.793825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958397, 34.781368, 21.820942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374090, 0.349927, 0.858841,
		0.531288, 0.678186, -0.507737,
		-0.760125, 0.646231, 0.067791,
		31.730360, 34.975239, 21.841280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581131, 35.120308, 22.079302>,  <32.262447, 34.522877, 21.793825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581131, 35.120308, 22.079302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186211, 35.166950, 22.122461>,  <31.949259, 35.194935, 22.148357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186211, 35.166950, 22.122461>,  <32.581131, 35.120308, 22.079302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186211, 35.166950, 22.122461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151229, 0.481739, 0.863167,
		0.048676, 0.868521, -0.493256,
		-0.987300, 0.116610, 0.107896,
		31.890020, 35.201935, 22.154831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431087, 35.813164, 22.173447>,  <32.581131, 35.120308, 22.079302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431087, 35.813164, 22.173447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141766, 35.603500, 22.353266>,  <31.968174, 35.477703, 22.461157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141766, 35.603500, 22.353266>,  <32.431087, 35.813164, 22.173447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141766, 35.603500, 22.353266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259718, 0.396719, 0.880432,
		-0.639829, 0.753574, -0.150814,
		-0.723302, -0.524157, 0.449549,
		31.924774, 35.446255, 22.488131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163445, 36.253414, 22.557541>,  <32.431087, 35.813164, 22.173447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163445, 36.253414, 22.557541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021896, 35.928474, 22.742956>,  <31.936968, 35.733513, 22.854204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021896, 35.928474, 22.742956>,  <32.163445, 36.253414, 22.557541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021896, 35.928474, 22.742956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234715, 0.402614, 0.884766,
		-0.905364, 0.421892, 0.048196,
		-0.353871, -0.812348, 0.463537,
		31.915735, 35.684769, 22.882017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811045, 36.555092, 23.038534>,  <32.163445, 36.253414, 22.557541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811045, 36.555092, 23.038534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866272, 36.180477, 23.167429>,  <31.899408, 35.955708, 23.244766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866272, 36.180477, 23.167429>,  <31.811045, 36.555092, 23.038534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866272, 36.180477, 23.167429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164399, 0.342508, 0.925020,
		-0.976683, -0.074739, 0.201255,
		0.138066, -0.936537, 0.322235,
		31.907692, 35.899517, 23.264099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581444, 36.495373, 23.749292>,  <31.811045, 36.555092, 23.038534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581444, 36.495373, 23.749292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814070, 36.170639, 23.728489>,  <31.953646, 35.975800, 23.716007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814070, 36.170639, 23.728489>,  <31.581444, 36.495373, 23.749292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814070, 36.170639, 23.728489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336663, 0.181988, 0.923871,
		-0.740566, -0.554802, 0.379152,
		0.581567, -0.811834, -0.052007,
		31.988541, 35.927090, 23.712887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407772, 36.082233, 24.367502>,  <31.581444, 36.495373, 23.749292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407772, 36.082233, 24.367502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758692, 35.940853, 24.237631>,  <31.969244, 35.856026, 24.159708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758692, 35.940853, 24.237631>,  <31.407772, 36.082233, 24.367502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758692, 35.940853, 24.237631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384357, 0.112264, 0.916333,
		-0.287432, -0.928691, 0.234342,
		0.877298, -0.353455, -0.324680,
		32.021881, 35.834816, 24.140226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530193, 35.470520, 24.737486>,  <31.407772, 36.082233, 24.367502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530193, 35.470520, 24.737486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884298, 35.609497, 24.613811>,  <32.096760, 35.692883, 24.539606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884298, 35.609497, 24.613811>,  <31.530193, 35.470520, 24.737486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884298, 35.609497, 24.613811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330054, -0.000936, 0.943961,
		0.327682, -0.937701, -0.115504,
		0.885262, 0.347442, -0.309185,
		32.149876, 35.713730, 24.521055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034569, 35.045082, 24.937012>,  <31.530193, 35.470520, 24.737486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034569, 35.045082, 24.937012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253311, 35.379345, 24.916553>,  <32.384556, 35.579903, 24.904278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253311, 35.379345, 24.916553>,  <32.034569, 35.045082, 24.937012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253311, 35.379345, 24.916553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212228, -0.079267, 0.974000,
		0.809880, -0.543494, -0.220699,
		0.546858, 0.835662, -0.051148,
		32.417370, 35.630043, 24.901209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513828, 34.858692, 25.392757>,  <32.034569, 35.045082, 24.937012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513828, 34.858692, 25.392757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539635, 35.256683, 25.362164>,  <32.555119, 35.495480, 25.343807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.539635, 35.256683, 25.362164>,  <32.513828, 34.858692, 25.392757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539635, 35.256683, 25.362164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029415, 0.074715, 0.996771,
		0.997483, -0.066553, -0.024447,
		0.064512, 0.994981, -0.076484,
		32.558987, 35.555180, 25.339218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025211, 35.045574, 25.776104>,  <32.513828, 34.858692, 25.392757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025211, 35.045574, 25.776104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767776, 35.351025, 25.755442>,  <32.613316, 35.534294, 25.743044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767776, 35.351025, 25.755442>,  <33.025211, 35.045574, 25.776104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767776, 35.351025, 25.755442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133527, 0.178482, 0.974841,
		0.753633, 0.620499, -0.216835,
		-0.643589, 0.763626, -0.051656,
		32.574699, 35.580112, 25.739944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234566, 35.482090, 26.424288>,  <33.025211, 35.045574, 25.776104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234566, 35.482090, 26.424288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903271, 35.674076, 26.308588>,  <32.704494, 35.789268, 26.239168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903271, 35.674076, 26.308588>,  <33.234566, 35.482090, 26.424288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903271, 35.674076, 26.308588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057889, 0.440119, 0.896071,
		0.557386, 0.758900, -0.336737,
		-0.828233, 0.479964, -0.289248,
		32.654800, 35.818066, 26.221813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409660, 36.198624, 26.564760>,  <33.234566, 35.482090, 26.424288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409660, 36.198624, 26.564760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014847, 36.136372, 26.549063>,  <32.777958, 36.099022, 26.539644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014847, 36.136372, 26.549063>,  <33.409660, 36.198624, 26.564760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014847, 36.136372, 26.549063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110586, 0.482233, 0.869035,
		-0.116323, 0.862108, -0.493192,
		-0.987036, -0.155629, -0.039242,
		32.718735, 36.089684, 26.537291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038673, 36.874817, 26.765322>,  <33.409660, 36.198624, 26.564760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038673, 36.874817, 26.765322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788231, 36.571819, 26.839294>,  <32.637966, 36.390022, 26.883678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.788231, 36.571819, 26.839294>,  <33.038673, 36.874817, 26.765322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788231, 36.571819, 26.839294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075551, 0.294988, 0.952509,
		-0.776069, 0.582401, -0.241923,
		-0.626106, -0.757490, 0.184930,
		32.600399, 36.344574, 26.894773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578255, 37.154739, 27.134508>,  <33.038673, 36.874817, 26.765322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578255, 37.154739, 27.134508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487663, 36.777321, 27.231192>,  <32.433308, 36.550869, 27.289202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487663, 36.777321, 27.231192>,  <32.578255, 37.154739, 27.134508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487663, 36.777321, 27.231192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262581, 0.298113, 0.917704,
		-0.937956, 0.144368, -0.315273,
		-0.226474, -0.943550, 0.241709,
		32.419720, 36.494255, 27.303703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041786, 37.142811, 27.551264>,  <32.578255, 37.154739, 27.134508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041786, 37.142811, 27.551264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149082, 36.764812, 27.626131>,  <32.213459, 36.538013, 27.671051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149082, 36.764812, 27.626131>,  <32.041786, 37.142811, 27.551264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149082, 36.764812, 27.626131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117768, 0.160663, 0.979958,
		-0.956128, -0.284901, -0.068195,
		0.268235, -0.944997, 0.187166,
		32.229553, 36.481312, 27.682281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487055, 36.688187, 27.872370>,  <32.041786, 37.142811, 27.551264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487055, 36.688187, 27.872370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837025, 36.545609, 28.003489>,  <32.047009, 36.460060, 28.082159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837025, 36.545609, 28.003489>,  <31.487055, 36.688187, 27.872370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837025, 36.545609, 28.003489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329723, 0.057268, 0.942339,
		-0.354665, -0.932559, -0.067423,
		0.874926, -0.356446, 0.327797,
		32.099503, 36.438675, 28.101828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304543, 36.571255, 28.579464>,  <31.487055, 36.688187, 27.872370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304543, 36.571255, 28.579464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694204, 36.481411, 28.569832>,  <31.928001, 36.427505, 28.564053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694204, 36.481411, 28.569832>,  <31.304543, 36.571255, 28.579464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694204, 36.481411, 28.569832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022661, -0.008905, 0.999704,
		-0.224754, -0.974409, -0.003585,
		0.974152, -0.224606, -0.024082,
		31.986450, 36.414028, 28.562607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476410, 35.973259, 29.135113>,  <31.304543, 36.571255, 28.579464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476410, 35.973259, 29.135113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805092, 36.184757, 29.050035>,  <32.002300, 36.311657, 28.998989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.805092, 36.184757, 29.050035>,  <31.476410, 35.973259, 29.135113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805092, 36.184757, 29.050035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300415, -0.084705, 0.950040,
		0.484310, -0.844546, -0.228444,
		0.821702, 0.528742, -0.212691,
		32.051601, 36.343380, 28.986229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951811, 35.713470, 29.601654>,  <31.476410, 35.973259, 29.135113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951811, 35.713470, 29.601654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125439, 36.057415, 29.494160>,  <32.229614, 36.263783, 29.429663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125439, 36.057415, 29.494160>,  <31.951811, 35.713470, 29.601654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125439, 36.057415, 29.494160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463137, 0.042874, 0.885249,
		0.772714, -0.508723, -0.379623,
		0.434071, 0.859862, -0.268738,
		32.255661, 36.315372, 29.413538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736477, 35.657665, 29.580654>,  <31.951811, 35.713470, 29.601654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736477, 35.657665, 29.580654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665512, 36.044411, 29.654093>,  <32.622932, 36.276459, 29.698156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665512, 36.044411, 29.654093>,  <32.736477, 35.657665, 29.580654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665512, 36.044411, 29.654093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535444, -0.061698, 0.842314,
		0.825727, 0.247742, -0.506753,
		-0.177411, 0.966859, 0.183598,
		32.612289, 36.334469, 29.709171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245785, 35.862053, 29.839539>,  <32.736477, 35.657665, 29.580654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245785, 35.862053, 29.839539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000122, 36.155140, 29.956797>,  <32.852726, 36.330994, 30.027151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.000122, 36.155140, 29.956797>,  <33.245785, 35.862053, 29.839539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.000122, 36.155140, 29.956797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398916, -0.032275, 0.916419,
		0.680942, 0.679762, -0.272472,
		-0.614153, 0.732722, 0.293146,
		32.815876, 36.374958, 30.044741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688332, 36.307819, 30.320742>,  <33.245785, 35.862053, 29.839539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688332, 36.307819, 30.320742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304024, 36.357574, 30.419895>,  <33.073437, 36.387428, 30.479387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304024, 36.357574, 30.419895>,  <33.688332, 36.307819, 30.320742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304024, 36.357574, 30.419895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246172, -0.029176, 0.968787,
		0.127739, 0.991804, -0.002590,
		-0.960772, 0.124389, 0.247881,
		33.015793, 36.394890, 30.494259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675308, 36.923302, 30.885723>,  <33.688332, 36.307819, 30.320742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675308, 36.923302, 30.885723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335304, 36.713989, 30.909914>,  <33.131302, 36.588402, 30.924429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335304, 36.713989, 30.909914>,  <33.675308, 36.923302, 30.885723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335304, 36.713989, 30.909914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117787, -0.076903, 0.990057,
		-0.513426, 0.848683, 0.127004,
		-0.850012, -0.523281, 0.060480,
		33.080299, 36.557007, 30.928059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452984, 37.189457, 31.500059>,  <33.675308, 36.923302, 30.885723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452984, 37.189457, 31.500059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250069, 36.850822, 31.435635>,  <33.128319, 36.647640, 31.396980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250069, 36.850822, 31.435635>,  <33.452984, 37.189457, 31.500059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250069, 36.850822, 31.435635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109458, -0.248680, 0.962381,
		-0.854795, 0.470577, 0.218819,
		-0.507290, -0.846590, -0.161062,
		33.097881, 36.596844, 31.387316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918365, 37.226097, 31.834242>,  <33.452984, 37.189457, 31.500059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918365, 37.226097, 31.834242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983696, 36.833675, 31.792547>,  <33.022896, 36.598225, 31.767530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983696, 36.833675, 31.792547>,  <32.918365, 37.226097, 31.834242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983696, 36.833675, 31.792547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062824, -0.095099, 0.993483,
		-0.984570, -0.168811, 0.046101,
		0.163327, -0.981050, -0.104237,
		33.032696, 36.539360, 31.761276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521488, 36.934155, 32.248222>,  <32.918365, 37.226097, 31.834242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521488, 36.934155, 32.248222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785255, 36.640640, 32.182838>,  <32.943516, 36.464531, 32.143608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785255, 36.640640, 32.182838>,  <32.521488, 36.934155, 32.248222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785255, 36.640640, 32.182838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129745, -0.103090, 0.986174,
		-0.740494, -0.671512, 0.027226,
		0.659420, -0.733788, -0.163463,
		32.983082, 36.420506, 32.133801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421360, 36.455677, 32.752815>,  <32.521488, 36.934155, 32.248222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421360, 36.455677, 32.752815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789658, 36.364159, 32.626400>,  <33.010635, 36.309246, 32.550552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789658, 36.364159, 32.626400>,  <32.421360, 36.455677, 32.752815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789658, 36.364159, 32.626400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300949, -0.099039, 0.948483,
		-0.248312, -0.968423, -0.022332,
		0.920744, -0.228799, -0.316039,
		33.065880, 36.295521, 32.531590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691349, 35.936287, 33.233612>,  <32.421360, 36.455677, 32.752815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691349, 35.936287, 33.233612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032715, 36.012665, 33.039612>,  <33.237534, 36.058491, 32.923210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032715, 36.012665, 33.039612>,  <32.691349, 35.936287, 33.233612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032715, 36.012665, 33.039612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512507, -0.137815, 0.847552,
		0.094994, -0.971878, -0.215473,
		0.853412, 0.190944, -0.485003,
		33.288738, 36.069946, 32.894112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204800, 35.417023, 33.415733>,  <32.691349, 35.936287, 33.233612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204800, 35.417023, 33.415733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396557, 35.747452, 33.297218>,  <33.511612, 35.945709, 33.226109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.396557, 35.747452, 33.297218>,  <33.204800, 35.417023, 33.415733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396557, 35.747452, 33.297218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608709, -0.069789, 0.790318,
		0.632181, -0.559229, -0.536293,
		0.479396, 0.826071, -0.296288,
		33.540375, 35.995274, 33.208332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889847, 35.347828, 33.503521>,  <33.204800, 35.417023, 33.415733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889847, 35.347828, 33.503521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914555, 35.745258, 33.465595>,  <33.929379, 35.983715, 33.442841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.914555, 35.745258, 33.465595>,  <33.889847, 35.347828, 33.503521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914555, 35.745258, 33.465595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715821, 0.022096, 0.697934,
		0.695546, -0.110981, -0.709858,
		0.061773, 0.993577, -0.094812,
		33.933086, 36.043331, 33.437153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555950, 35.513191, 33.348320>,  <33.889847, 35.347828, 33.503521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555950, 35.513191, 33.348320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404781, 35.861389, 33.474442>,  <34.314079, 36.070309, 33.550114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404781, 35.861389, 33.474442>,  <34.555950, 35.513191, 33.348320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404781, 35.861389, 33.474442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649610, 0.006654, 0.760238,
		0.659684, 0.492135, -0.567996,
		-0.377920, 0.870493, 0.315306,
		34.291405, 36.122536, 33.569035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122952, 35.766708, 33.744892>,  <34.555950, 35.513191, 33.348320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122952, 35.766708, 33.744892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780148, 35.930656, 33.869816>,  <34.574463, 36.029026, 33.944771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780148, 35.930656, 33.869816>,  <35.122952, 35.766708, 33.744892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780148, 35.930656, 33.869816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222333, -0.252635, 0.941671,
		0.464864, 0.876459, 0.125383,
		-0.857012, 0.409872, 0.312307,
		34.523045, 36.053619, 33.963509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287930, 36.087372, 34.364582>,  <35.122952, 35.766708, 33.744892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287930, 36.087372, 34.364582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888828, 36.061440, 34.357929>,  <34.649368, 36.045879, 34.353935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888828, 36.061440, 34.357929>,  <35.287930, 36.087372, 34.364582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888828, 36.061440, 34.357929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009622, -0.384870, 0.922921,
		-0.066240, 0.920691, 0.384630,
		-0.997757, -0.064835, -0.016635,
		34.589500, 36.041988, 34.352940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041969, 36.794510, 34.198048>,  <35.287930, 36.087372, 34.364582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041969, 36.794510, 34.198048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437363, 36.832600, 34.245098>,  <35.674599, 36.855453, 34.273327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437363, 36.832600, 34.245098>,  <35.041969, 36.794510, 34.198048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437363, 36.832600, 34.245098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099147, 0.179748, -0.978703,
		-0.114339, 0.979093, 0.168236,
		0.988482, 0.095224, 0.117626,
		35.733906, 36.861168, 34.280388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240807, 37.483532, 33.920776>,  <35.041969, 36.794510, 34.198048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240807, 37.483532, 33.920776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568192, 37.254238, 33.905212>,  <35.764622, 37.116661, 33.895874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568192, 37.254238, 33.905212>,  <35.240807, 37.483532, 33.920776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568192, 37.254238, 33.905212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200818, 0.348869, -0.915403,
		0.538317, 0.741412, 0.400653,
		0.818466, -0.573235, -0.038913,
		35.813732, 37.082268, 33.893539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809162, 37.964436, 33.732494>,  <35.240807, 37.483532, 33.920776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809162, 37.964436, 33.732494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889801, 37.585690, 33.632256>,  <35.938183, 37.358440, 33.572113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889801, 37.585690, 33.632256>,  <35.809162, 37.964436, 33.732494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889801, 37.585690, 33.632256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115739, 0.277091, -0.953847,
		0.972606, 0.163290, 0.165451,
		0.201598, -0.946867, -0.250601,
		35.950279, 37.301628, 33.557076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274982, 38.050690, 33.245945>,  <35.809162, 37.964436, 33.732494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274982, 38.050690, 33.245945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171028, 37.668274, 33.191624>,  <36.108654, 37.438824, 33.159031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171028, 37.668274, 33.191624>,  <36.274982, 38.050690, 33.245945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171028, 37.668274, 33.191624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110819, 0.110175, -0.987715,
		0.959260, -0.271741, 0.077315,
		-0.259884, -0.956043, -0.135801,
		36.093063, 37.381462, 33.150883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726902, 38.006989, 32.830845>,  <36.274982, 38.050690, 33.245945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726902, 38.006989, 32.830845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497890, 37.689198, 32.749836>,  <36.360485, 37.498524, 32.701233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497890, 37.689198, 32.749836>,  <36.726902, 38.006989, 32.830845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497890, 37.689198, 32.749836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060684, 0.205269, -0.976822,
		0.817636, -0.571548, -0.069310,
		-0.572528, -0.794479, -0.202519,
		36.326134, 37.450855, 32.689079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000450, 37.823895, 32.215668>,  <36.726902, 38.006989, 32.830845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000450, 37.823895, 32.215668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667526, 37.602291, 32.223015>,  <36.467773, 37.469330, 32.227425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667526, 37.602291, 32.223015>,  <37.000450, 37.823895, 32.215668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667526, 37.602291, 32.223015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119232, 0.146565, -0.981989,
		0.541337, -0.819508, -0.188043,
		-0.832308, -0.554008, 0.018371,
		36.417835, 37.436089, 32.228527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995636, 37.247059, 31.713915>,  <37.000450, 37.823895, 32.215668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995636, 37.247059, 31.713915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599346, 37.277470, 31.758957>,  <36.361572, 37.295715, 31.785982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599346, 37.277470, 31.758957>,  <36.995636, 37.247059, 31.713915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599346, 37.277470, 31.758957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108825, 0.052160, -0.992692,
		-0.081347, -0.995740, -0.043402,
		-0.990727, 0.076029, 0.112604,
		36.302128, 37.300278, 31.792738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680862, 36.905979, 31.167700>,  <36.995636, 37.247059, 31.713915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680862, 36.905979, 31.167700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380272, 37.139149, 31.291304>,  <36.199917, 37.279049, 31.365465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380272, 37.139149, 31.291304>,  <36.680862, 36.905979, 31.167700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380272, 37.139149, 31.291304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170440, 0.280944, -0.944469,
		-0.637367, -0.762411, -0.111769,
		-0.751475, 0.582923, 0.309009,
		36.154831, 37.314026, 31.384007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993977, 36.624306, 31.008938>,  <36.680862, 36.905979, 31.167700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993977, 36.624306, 31.008938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011532, 37.023521, 31.026827>,  <36.022064, 37.263050, 31.037560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011532, 37.023521, 31.026827>,  <35.993977, 36.624306, 31.008938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011532, 37.023521, 31.026827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215863, 0.053179, -0.974974,
		-0.975437, 0.033132, 0.217773,
		0.043883, 0.998035, 0.044721,
		36.024696, 37.322933, 31.040243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402737, 36.777233, 30.688669>,  <35.993977, 36.624306, 31.008938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402737, 36.777233, 30.688669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606972, 37.121136, 30.684275>,  <35.729515, 37.327477, 30.681639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606972, 37.121136, 30.684275>,  <35.402737, 36.777233, 30.688669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606972, 37.121136, 30.684275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286266, 0.157931, -0.945045,
		-0.810771, 0.485675, 0.326756,
		0.510590, 0.859754, -0.010987,
		35.760147, 37.379063, 30.680979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964146, 37.191807, 30.255953>,  <35.402737, 36.777233, 30.688669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964146, 37.191807, 30.255953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304153, 37.402412, 30.249708>,  <35.508160, 37.528774, 30.245962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.304153, 37.402412, 30.249708>,  <34.964146, 37.191807, 30.255953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304153, 37.402412, 30.249708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135960, 0.190674, -0.972193,
		-0.508896, 0.828509, 0.233662,
		0.850023, 0.526514, -0.015611,
		35.559162, 37.560368, 30.245026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867409, 37.894623, 29.891523>,  <34.964146, 37.191807, 30.255953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867409, 37.894623, 29.891523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261555, 37.828766, 29.873878>,  <35.498043, 37.789253, 29.863291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261555, 37.828766, 29.873878>,  <34.867409, 37.894623, 29.891523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261555, 37.828766, 29.873878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015756, 0.169719, -0.985367,
		0.169719, 0.971642, 0.164641,
		0.985367, -0.164641, -0.044114,
		35.557163, 37.779373, 29.860645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123875, 38.439041, 29.462713>,  <34.867409, 37.894623, 29.891523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123875, 38.439041, 29.462713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406494, 38.156620, 29.443602>,  <35.576065, 37.987167, 29.432135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406494, 38.156620, 29.443602>,  <35.123875, 38.439041, 29.462713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406494, 38.156620, 29.443602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025640, 0.093012, -0.995335,
		0.707199, 0.702028, 0.083821,
		0.706550, -0.706049, -0.047778,
		35.618458, 37.944805, 29.429268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613071, 38.742416, 28.927107>,  <35.123875, 38.439041, 29.462713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613071, 38.742416, 28.927107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707615, 38.354851, 28.956352>,  <35.764339, 38.122311, 28.973900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707615, 38.354851, 28.956352>,  <35.613071, 38.742416, 28.927107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707615, 38.354851, 28.956352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162283, -0.034826, -0.986130,
		0.958019, 0.244942, 0.149006,
		0.236356, -0.968912, 0.073114,
		35.778522, 38.064178, 28.978287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221531, 38.570415, 28.565393>,  <35.613071, 38.742416, 28.927107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221531, 38.570415, 28.565393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035011, 38.216873, 28.580185>,  <35.923100, 38.004749, 28.589060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035011, 38.216873, 28.580185>,  <36.221531, 38.570415, 28.565393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035011, 38.216873, 28.580185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032975, -0.059137, -0.997705,
		0.884014, -0.464006, 0.056720,
		-0.466295, -0.883856, 0.036977,
		35.895123, 37.951717, 28.591278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566597, 38.082382, 28.033085>,  <36.221531, 38.570415, 28.565393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566597, 38.082382, 28.033085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209560, 37.926842, 28.124365>,  <35.995338, 37.833519, 28.179132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209560, 37.926842, 28.124365>,  <36.566597, 38.082382, 28.033085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209560, 37.926842, 28.124365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183418, -0.149189, -0.971648,
		0.411868, -0.909142, 0.061843,
		-0.892593, -0.388848, 0.228199,
		35.941784, 37.810188, 28.192825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448662, 37.560226, 27.612759>,  <36.566597, 38.082382, 28.033085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448662, 37.560226, 27.612759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075745, 37.654778, 27.722271>,  <35.851994, 37.711510, 27.787979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075745, 37.654778, 27.722271>,  <36.448662, 37.560226, 27.612759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075745, 37.654778, 27.722271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326613, -0.224916, -0.918007,
		-0.155414, -0.945273, 0.286890,
		-0.932293, 0.236373, 0.273784,
		35.796059, 37.725693, 27.804405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129826, 36.989403, 27.276011>,  <36.448662, 37.560226, 27.612759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129826, 36.989403, 27.276011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827682, 37.241043, 27.349398>,  <35.646397, 37.392029, 27.393431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827682, 37.241043, 27.349398>,  <36.129826, 36.989403, 27.276011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827682, 37.241043, 27.349398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431039, -0.266093, -0.862206,
		-0.493598, -0.730357, 0.472164,
		-0.755359, 0.629104, 0.183470,
		35.601074, 37.429775, 27.404438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614376, 36.626213, 27.139294>,  <36.129826, 36.989403, 27.276011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614376, 36.626213, 27.139294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487129, 37.001366, 27.083889>,  <35.410782, 37.226456, 27.050646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487129, 37.001366, 27.083889>,  <35.614376, 36.626213, 27.139294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487129, 37.001366, 27.083889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496989, -0.289392, -0.818080,
		-0.807344, -0.191404, 0.558175,
		-0.318116, 0.937879, -0.138513,
		35.391693, 37.282730, 27.042336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875481, 36.616245, 27.060682>,  <35.614376, 36.626213, 27.139294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875481, 36.616245, 27.060682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996059, 36.951878, 26.879543>,  <35.068405, 37.153255, 26.770859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996059, 36.951878, 26.879543>,  <34.875481, 36.616245, 27.060682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996059, 36.951878, 26.879543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489629, -0.271314, -0.828645,
		-0.818165, 0.471520, 0.329052,
		0.301446, 0.839082, -0.452849,
		35.086494, 37.203602, 26.743689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305073, 36.811352, 26.653803>,  <34.875481, 36.616245, 27.060682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305073, 36.811352, 26.653803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604156, 37.014767, 26.483004>,  <34.783607, 37.136814, 26.380524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604156, 37.014767, 26.483004>,  <34.305073, 36.811352, 26.653803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604156, 37.014767, 26.483004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410051, -0.152188, -0.899276,
		-0.522296, 0.847486, 0.094733,
		0.747707, 0.508533, -0.427000,
		34.828468, 37.167328, 26.354904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952972, 37.297291, 26.146120>,  <34.305073, 36.811352, 26.653803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952972, 37.297291, 26.146120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343327, 37.272552, 26.062380>,  <34.577538, 37.257710, 26.012135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343327, 37.272552, 26.062380>,  <33.952972, 37.297291, 26.146120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343327, 37.272552, 26.062380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214282, -0.088297, -0.972773,
		0.041680, 0.994172, -0.099421,
		0.975882, -0.061850, -0.209353,
		34.636093, 37.253998, 25.999575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081787, 37.793411, 25.602633>,  <33.952972, 37.297291, 26.146120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081787, 37.793411, 25.602633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368828, 37.514885, 25.608253>,  <34.541054, 37.347771, 25.611626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368828, 37.514885, 25.608253>,  <34.081787, 37.793411, 25.602633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368828, 37.514885, 25.608253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075187, -0.097512, -0.992390,
		0.692385, 0.711083, -0.122328,
		0.717601, -0.696313, 0.014052,
		34.584106, 37.305992, 25.612469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493515, 37.929535, 25.052189>,  <34.081787, 37.793411, 25.602633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493515, 37.929535, 25.052189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615158, 37.553288, 25.112518>,  <34.688145, 37.327538, 25.148716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615158, 37.553288, 25.112518>,  <34.493515, 37.929535, 25.052189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615158, 37.553288, 25.112518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104544, -0.190318, -0.976140,
		0.946884, 0.281085, -0.156214,
		0.304108, -0.940622, 0.150823,
		34.706390, 37.271099, 25.157764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980255, 37.740265, 24.469423>,  <34.493515, 37.929535, 25.052189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980255, 37.740265, 24.469423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876926, 37.375504, 24.596981>,  <34.814930, 37.156647, 24.673515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876926, 37.375504, 24.596981>,  <34.980255, 37.740265, 24.469423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876926, 37.375504, 24.596981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105096, -0.354669, -0.929067,
		0.960324, -0.206487, 0.187458,
		-0.258326, -0.911906, 0.318896,
		34.799427, 37.101933, 24.692650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481495, 37.190876, 24.137768>,  <34.980255, 37.740265, 24.469423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481495, 37.190876, 24.137768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159161, 36.992546, 24.267248>,  <34.965759, 36.873547, 24.344936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159161, 36.992546, 24.267248>,  <35.481495, 37.190876, 24.137768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159161, 36.992546, 24.267248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099756, -0.425179, -0.899595,
		0.583673, -0.757219, 0.293164,
		-0.805838, -0.495825, 0.323703,
		34.917408, 36.843800, 24.364359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577152, 36.430588, 24.073893>,  <35.481495, 37.190876, 24.137768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577152, 36.430588, 24.073893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181702, 36.487339, 24.053955>,  <34.944431, 36.521389, 24.041992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181702, 36.487339, 24.053955>,  <35.577152, 36.430588, 24.073893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181702, 36.487339, 24.053955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065244, -0.703336, -0.707857,
		-0.135484, -0.696556, 0.704595,
		-0.988629, 0.141874, -0.049845,
		34.885113, 36.529900, 24.039001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198799, 35.670349, 24.064619>,  <35.577152, 36.430588, 24.073893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198799, 35.670349, 24.064619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955231, 35.945374, 23.906389>,  <34.809090, 36.110386, 23.811451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955231, 35.945374, 23.906389>,  <35.198799, 35.670349, 24.064619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955231, 35.945374, 23.906389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207905, -0.619591, -0.756890,
		-0.765499, -0.378646, 0.520230,
		-0.608923, 0.687557, -0.395574,
		34.772552, 36.151642, 23.787718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635406, 35.201477, 23.797623>,  <35.198799, 35.670349, 24.064619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635406, 35.201477, 23.797623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617413, 35.566711, 23.635508>,  <34.606617, 35.785851, 23.538239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617413, 35.566711, 23.635508>,  <34.635406, 35.201477, 23.797623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617413, 35.566711, 23.635508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154771, -0.407170, -0.900143,
		-0.986926, 0.022234, 0.159635,
		-0.044984, 0.913082, -0.405288,
		34.603916, 35.840637, 23.513922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146893, 35.127651, 23.325848>,  <34.635406, 35.201477, 23.797623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146893, 35.127651, 23.325848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269295, 35.475445, 23.170748>,  <34.342735, 35.684120, 23.077688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269295, 35.475445, 23.170748>,  <34.146893, 35.127651, 23.325848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269295, 35.475445, 23.170748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007314, -0.409423, -0.912315,
		-0.952002, 0.276337, -0.131645,
		0.306005, 0.869488, -0.387751,
		34.361095, 35.736290, 23.054422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763580, 35.178543, 22.649044>,  <34.146893, 35.127651, 23.325848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763580, 35.178543, 22.649044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079327, 35.421223, 22.611465>,  <34.268772, 35.566830, 22.588919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079327, 35.421223, 22.611465>,  <33.763580, 35.178543, 22.649044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079327, 35.421223, 22.611465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056326, -0.223951, -0.972971,
		-0.611336, 0.762737, -0.210952,
		0.789364, 0.606694, -0.093948,
		34.316135, 35.603230, 22.583281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704922, 35.361206, 21.929230>,  <33.763580, 35.178543, 22.649044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704922, 35.361206, 21.929230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073330, 35.480644, 22.029282>,  <34.294376, 35.552307, 22.089314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073330, 35.480644, 22.029282>,  <33.704922, 35.361206, 21.929230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073330, 35.480644, 22.029282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292886, -0.107537, -0.950081,
		-0.256788, 0.948303, -0.186497,
		0.921020, 0.298592, 0.250131,
		34.349636, 35.570221, 22.104321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897038, 35.948193, 21.658426>,  <33.704922, 35.361206, 21.929230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897038, 35.948193, 21.658426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259052, 35.798321, 21.738958>,  <34.476261, 35.708397, 21.787277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259052, 35.798321, 21.738958>,  <33.897038, 35.948193, 21.658426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259052, 35.798321, 21.738958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192737, -0.060706, -0.979371,
		0.379168, 0.925167, 0.017273,
		0.905033, -0.374675, 0.201332,
		34.530563, 35.685917, 21.799358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370777, 36.210426, 21.217627>,  <33.897038, 35.948193, 21.658426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370777, 36.210426, 21.217627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570175, 35.887669, 21.344381>,  <34.689816, 35.694012, 21.420435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570175, 35.887669, 21.344381>,  <34.370777, 36.210426, 21.217627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570175, 35.887669, 21.344381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352890, -0.145005, -0.924360,
		0.791815, 0.572617, 0.212462,
		0.498496, -0.806898, 0.316888,
		34.719723, 35.645599, 21.439447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916740, 36.331612, 20.950264>,  <34.370777, 36.210426, 21.217627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916740, 36.331612, 20.950264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916245, 35.938004, 21.021490>,  <34.915947, 35.701839, 21.064226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.916245, 35.938004, 21.021490>,  <34.916740, 36.331612, 20.950264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916245, 35.938004, 21.021490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437484, -0.160652, -0.884759,
		0.899225, 0.076806, 0.430691,
		-0.001236, -0.984018, 0.178063,
		34.915874, 35.642799, 21.074909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565701, 36.104691, 20.617849>,  <34.916740, 36.331612, 20.950264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565701, 36.104691, 20.617849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315876, 35.794712, 20.656586>,  <35.165981, 35.608723, 20.679829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315876, 35.794712, 20.656586>,  <35.565701, 36.104691, 20.617849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315876, 35.794712, 20.656586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212665, -0.288075, -0.933695,
		0.751463, -0.562555, 0.344725,
		-0.624562, -0.774948, 0.096842,
		35.128506, 35.562229, 20.685638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964863, 35.590988, 20.339336>,  <35.565701, 36.104691, 20.617849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964863, 35.590988, 20.339336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587135, 35.459385, 20.337706>,  <35.360500, 35.380424, 20.336727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587135, 35.459385, 20.337706>,  <35.964863, 35.590988, 20.339336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587135, 35.459385, 20.337706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055883, -0.148161, -0.987383,
		0.324254, -0.932632, 0.158296,
		-0.944318, -0.329009, -0.004076,
		35.303841, 35.360683, 20.336483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913185, 34.967327, 20.054691>,  <35.964863, 35.590988, 20.339336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913185, 34.967327, 20.054691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564831, 35.157547, 20.005047>,  <35.355816, 35.271679, 19.975260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564831, 35.157547, 20.005047>,  <35.913185, 34.967327, 20.054691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564831, 35.157547, 20.005047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083759, -0.105221, -0.990915,
		-0.484290, -0.873372, 0.051804,
		-0.870889, 0.475552, -0.124110,
		35.303562, 35.300213, 19.967813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329155, 34.625198, 19.563900>,  <35.913185, 34.967327, 20.054691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329155, 34.625198, 19.563900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605503, 34.336014, 19.565609>,  <36.771313, 34.162502, 19.566633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605503, 34.336014, 19.565609>,  <36.329155, 34.625198, 19.563900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605503, 34.336014, 19.565609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399263, -0.376605, 0.835917,
		-0.602728, -0.579219, -0.548839,
		0.690875, -0.722962, 0.004270,
		36.812767, 34.119125, 19.566891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024975, 34.003014, 19.808302>,  <36.329155, 34.625198, 19.563900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024975, 34.003014, 19.808302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418598, 33.944824, 19.849213>,  <36.654774, 33.909912, 19.873758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418598, 33.944824, 19.849213>,  <36.024975, 34.003014, 19.808302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418598, 33.944824, 19.849213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165803, -0.542696, 0.823402,
		-0.064273, -0.827236, -0.558165,
		0.984062, -0.145468, 0.102278,
		36.713818, 33.901184, 19.879896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071186, 33.350468, 20.130892>,  <36.024975, 34.003014, 19.808302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071186, 33.350468, 20.130892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437351, 33.499847, 20.190979>,  <36.657051, 33.589474, 20.227032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437351, 33.499847, 20.190979>,  <36.071186, 33.350468, 20.130892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437351, 33.499847, 20.190979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063512, -0.234507, 0.970038,
		0.397484, -0.897521, -0.190951,
		0.915408, 0.373447, 0.150216,
		36.711975, 33.611881, 20.236044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388672, 32.894073, 20.586464>,  <36.071186, 33.350468, 20.130892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388672, 32.894073, 20.586464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630875, 33.209751, 20.627508>,  <36.776196, 33.399158, 20.652134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630875, 33.209751, 20.627508>,  <36.388672, 32.894073, 20.586464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630875, 33.209751, 20.627508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049209, -0.165814, 0.984928,
		0.794318, -0.591330, -0.139237,
		0.605505, 0.789199, 0.102610,
		36.812527, 33.446510, 20.658291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797451, 32.748337, 21.171871>,  <36.388672, 32.894073, 20.586464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797451, 32.748337, 21.171871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839851, 33.145283, 21.146643>,  <36.865292, 33.383450, 21.131506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839851, 33.145283, 21.146643>,  <36.797451, 32.748337, 21.171871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839851, 33.145283, 21.146643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085950, 0.072337, 0.993670,
		0.990644, -0.099910, 0.092962,
		0.106002, 0.992364, -0.063073,
		36.871651, 33.442993, 21.127720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319187, 32.905075, 21.600615>,  <36.797451, 32.748337, 21.171871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319187, 32.905075, 21.600615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090630, 33.231884, 21.569693>,  <36.953495, 33.427971, 21.551140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090630, 33.231884, 21.569693>,  <37.319187, 32.905075, 21.600615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090630, 33.231884, 21.569693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051804, 0.129919, 0.990170,
		0.819036, 0.561777, -0.116561,
		-0.571398, 0.817024, -0.077307,
		36.919209, 33.476990, 21.546501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762409, 33.493412, 21.809782>,  <37.319187, 32.905075, 21.600615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762409, 33.493412, 21.809782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376270, 33.588886, 21.851986>,  <37.144585, 33.646172, 21.877308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376270, 33.588886, 21.851986>,  <37.762409, 33.493412, 21.809782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376270, 33.588886, 21.851986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158989, 0.217314, 0.963066,
		0.206938, 0.946470, -0.247732,
		-0.965349, 0.238682, 0.105508,
		37.086666, 33.660492, 21.883638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761734, 34.040733, 22.256500>,  <37.762409, 33.493412, 21.809782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761734, 34.040733, 22.256500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365414, 33.989021, 22.272526>,  <37.127621, 33.957993, 22.282141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365414, 33.989021, 22.272526>,  <37.761734, 34.040733, 22.256500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365414, 33.989021, 22.272526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011640, 0.376288, 0.926430,
		-0.134848, 0.917438, -0.374330,
		-0.990798, -0.129285, 0.040062,
		37.068172, 33.950237, 22.284544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489933, 34.721169, 22.460281>,  <37.761734, 34.040733, 22.256500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489933, 34.721169, 22.460281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246483, 34.422176, 22.566751>,  <37.100414, 34.242783, 22.630634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246483, 34.422176, 22.566751>,  <37.489933, 34.721169, 22.460281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246483, 34.422176, 22.566751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024568, 0.317551, 0.947923,
		-0.793076, 0.583471, -0.174906,
		-0.608627, -0.747478, 0.266177,
		37.063896, 34.197933, 22.646605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042725, 35.037643, 22.936476>,  <37.489933, 34.721169, 22.460281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042725, 35.037643, 22.936476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970375, 34.651772, 23.013083>,  <36.926964, 34.420250, 23.059046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970375, 34.651772, 23.013083>,  <37.042725, 35.037643, 22.936476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970375, 34.651772, 23.013083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182166, 0.224220, 0.957361,
		-0.966489, 0.138273, -0.216287,
		-0.180874, -0.964679, 0.191517,
		36.916115, 34.362370, 23.070538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478134, 35.041245, 23.374882>,  <37.042725, 35.037643, 22.936476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478134, 35.041245, 23.374882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640953, 34.682949, 23.446390>,  <36.738644, 34.467972, 23.489294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640953, 34.682949, 23.446390>,  <36.478134, 35.041245, 23.374882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640953, 34.682949, 23.446390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256609, 0.075692, 0.963547,
		-0.876620, -0.438085, -0.199045,
		0.407049, -0.895741, 0.178769,
		36.763069, 34.414227, 23.500021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971512, 34.554054, 23.708935>,  <36.478134, 35.041245, 23.374882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971512, 34.554054, 23.708935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332001, 34.422489, 23.821798>,  <36.548294, 34.343548, 23.889517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332001, 34.422489, 23.821798>,  <35.971512, 34.554054, 23.708935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332001, 34.422489, 23.821798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305753, -0.021195, 0.951875,
		-0.307109, -0.944120, -0.119669,
		0.901221, -0.328918, 0.282158,
		36.602367, 34.323814, 23.906446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845486, 34.089760, 24.257343>,  <35.971512, 34.554054, 23.708935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845486, 34.089760, 24.257343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236290, 34.172039, 24.279751>,  <36.470772, 34.221409, 24.293196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236290, 34.172039, 24.279751>,  <35.845486, 34.089760, 24.257343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236290, 34.172039, 24.279751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041278, -0.075260, 0.996309,
		0.209157, -0.975717, -0.065039,
		0.977010, 0.205701, 0.056017,
		36.529392, 34.233749, 24.296556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048767, 33.579124, 24.764801>,  <35.845486, 34.089760, 24.257343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048767, 33.579124, 24.764801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319386, 33.873627, 24.770523>,  <36.481758, 34.050327, 24.773956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319386, 33.873627, 24.770523>,  <36.048767, 33.579124, 24.764801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319386, 33.873627, 24.770523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004111, -0.015651, 0.999869,
		0.736386, -0.676519, -0.007561,
		0.676549, 0.736259, 0.014306,
		36.522350, 34.094505, 24.774815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547173, 33.466324, 25.322363>,  <36.048767, 33.579124, 24.764801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547173, 33.466324, 25.322363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599983, 33.859245, 25.269236>,  <36.631668, 34.094997, 25.237360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599983, 33.859245, 25.269236>,  <36.547173, 33.466324, 25.322363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599983, 33.859245, 25.269236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113143, 0.118181, 0.986525,
		0.984768, -0.145275, -0.095538,
		0.132027, 0.982308, -0.132817,
		36.639591, 34.153938, 25.229391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130295, 33.660183, 25.853321>,  <36.547173, 33.466324, 25.322363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130295, 33.660183, 25.853321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932144, 33.994205, 25.757578>,  <36.813255, 34.194618, 25.700132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932144, 33.994205, 25.757578>,  <37.130295, 33.660183, 25.853321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932144, 33.994205, 25.757578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120956, 0.339163, 0.932919,
		0.860218, 0.433191, -0.269017,
		-0.495373, 0.835053, -0.239358,
		36.783531, 34.244720, 25.685770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478085, 34.101318, 26.259062>,  <37.130295, 33.660183, 25.853321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478085, 34.101318, 26.259062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153534, 34.305470, 26.145096>,  <36.958805, 34.427959, 26.076715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.153534, 34.305470, 26.145096>,  <37.478085, 34.101318, 26.259062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153534, 34.305470, 26.145096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062870, 0.560807, 0.825556,
		0.581132, 0.651925, -0.487114,
		-0.811378, 0.510381, -0.284916,
		36.910122, 34.458584, 26.059622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711990, 34.829651, 26.350740>,  <37.478085, 34.101318, 26.259062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711990, 34.829651, 26.350740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320065, 34.754364, 26.377691>,  <37.084908, 34.709190, 26.393862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320065, 34.754364, 26.377691>,  <37.711990, 34.829651, 26.350740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320065, 34.754364, 26.377691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009047, 0.378438, 0.925582,
		-0.199708, 0.906289, -0.372502,
		-0.979814, -0.188216, 0.067377,
		37.026119, 34.697899, 26.397905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497440, 35.453621, 26.491522>,  <37.711990, 34.829651, 26.350740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497440, 35.453621, 26.491522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200878, 35.210480, 26.605242>,  <37.022942, 35.064594, 26.673473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200878, 35.210480, 26.605242>,  <37.497440, 35.453621, 26.491522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200878, 35.210480, 26.605242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065342, 0.487039, 0.870932,
		-0.667866, 0.627139, -0.400813,
		-0.741407, -0.607856, 0.284298,
		36.978455, 35.028122, 26.690531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118629, 35.965393, 26.807550>,  <37.497440, 35.453621, 26.491522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118629, 35.965393, 26.807550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986336, 35.616158, 26.950842>,  <36.906960, 35.406616, 27.036818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986336, 35.616158, 26.950842>,  <37.118629, 35.965393, 26.807550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986336, 35.616158, 26.950842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101565, 0.410317, 0.906269,
		-0.938242, 0.263352, -0.224382,
		-0.330736, -0.873089, 0.358230,
		36.887115, 35.354229, 27.058311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604866, 36.197063, 27.307394>,  <37.118629, 35.965393, 26.807550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604866, 36.197063, 27.307394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702278, 35.828075, 27.427221>,  <36.760727, 35.606682, 27.499119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702278, 35.828075, 27.427221>,  <36.604866, 36.197063, 27.307394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702278, 35.828075, 27.427221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051814, 0.320801, 0.945728,
		-0.968508, -0.214791, 0.125921,
		0.243530, -0.922470, 0.299570,
		36.775337, 35.551334, 27.517092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146236, 36.093048, 27.828003>,  <36.604866, 36.197063, 27.307394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146236, 36.093048, 27.828003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451366, 35.844486, 27.899504>,  <36.634445, 35.695351, 27.942404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451366, 35.844486, 27.899504>,  <36.146236, 36.093048, 27.828003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451366, 35.844486, 27.899504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123933, 0.411834, 0.902792,
		-0.634616, -0.666520, 0.391170,
		0.762826, -0.621405, 0.178752,
		36.680214, 35.658066, 27.953129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034035, 35.842300, 28.475080>,  <36.146236, 36.093048, 27.828003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034035, 35.842300, 28.475080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418385, 35.737564, 28.438959>,  <36.648994, 35.674725, 28.417286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.418385, 35.737564, 28.438959>,  <36.034035, 35.842300, 28.475080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418385, 35.737564, 28.438959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145799, 0.200953, 0.968690,
		-0.235494, -0.943959, 0.231267,
		0.960877, -0.261839, -0.090305,
		36.706646, 35.659012, 28.411867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197384, 35.500984, 29.065386>,  <36.034035, 35.842300, 28.475080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197384, 35.500984, 29.065386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562386, 35.611439, 28.944668>,  <36.781387, 35.677711, 28.872238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562386, 35.611439, 28.944668>,  <36.197384, 35.500984, 29.065386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562386, 35.611439, 28.944668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234987, 0.250037, 0.939288,
		0.334832, -0.928025, 0.163272,
		0.912507, 0.276137, -0.301794,
		36.836140, 35.694279, 28.854130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707943, 35.094643, 29.475471>,  <36.197384, 35.500984, 29.065386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707943, 35.094643, 29.475471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906872, 35.408520, 29.327456>,  <37.026230, 35.596844, 29.238646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906872, 35.408520, 29.327456>,  <36.707943, 35.094643, 29.475471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906872, 35.408520, 29.327456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359842, 0.201534, 0.910987,
		0.789418, -0.586213, -0.182137,
		0.497326, 0.784690, -0.370039,
		37.056068, 35.643929, 29.216444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397251, 34.992386, 29.734543>,  <36.707943, 35.094643, 29.475471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397251, 34.992386, 29.734543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357250, 35.380630, 29.646982>,  <37.333248, 35.613575, 29.594446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357250, 35.380630, 29.646982>,  <37.397251, 34.992386, 29.734543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357250, 35.380630, 29.646982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363792, 0.240441, 0.899913,
		0.926097, 0.010358, -0.377144,
		-0.100002, 0.970609, -0.218903,
		37.327248, 35.671814, 29.581310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087017, 35.365711, 29.706270>,  <37.397251, 34.992386, 29.734543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087017, 35.365711, 29.706270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803162, 35.630619, 29.802452>,  <37.632851, 35.789562, 29.860161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803162, 35.630619, 29.802452>,  <38.087017, 35.365711, 29.706270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803162, 35.630619, 29.802452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390438, 0.085548, 0.916646,
		0.586496, 0.744366, -0.319283,
		-0.709634, 0.662269, 0.240455,
		37.590271, 35.829300, 29.874588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477005, 35.887768, 29.945541>,  <38.087017, 35.365711, 29.706270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477005, 35.887768, 29.945541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102718, 35.954449, 30.069893>,  <37.878147, 35.994457, 30.144505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102718, 35.954449, 30.069893>,  <38.477005, 35.887768, 29.945541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102718, 35.954449, 30.069893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325499, 0.068342, 0.943069,
		0.135962, 0.983636, -0.118209,
		-0.935716, 0.166699, 0.310881,
		37.822002, 36.004459, 30.163157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528164, 36.522511, 30.274496>,  <38.477005, 35.887768, 29.945541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528164, 36.522511, 30.274496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204342, 36.329475, 30.408197>,  <38.010048, 36.213654, 30.488419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204342, 36.329475, 30.408197>,  <38.528164, 36.522511, 30.274496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204342, 36.329475, 30.408197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272202, 0.195886, 0.942091,
		-0.520119, 0.853660, -0.027219,
		-0.809557, -0.482590, 0.334252,
		37.961475, 36.184700, 30.508472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299374, 37.029980, 30.816391>,  <38.528164, 36.522511, 30.274496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299374, 37.029980, 30.816391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152550, 36.661766, 30.869875>,  <38.064457, 36.440838, 30.901964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.152550, 36.661766, 30.869875>,  <38.299374, 37.029980, 30.816391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152550, 36.661766, 30.869875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290447, 0.023134, 0.956611,
		-0.883691, 0.389966, 0.258876,
		-0.367057, -0.920538, 0.133708,
		38.042431, 36.385605, 30.909986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009377, 37.097820, 31.536915>,  <38.299374, 37.029980, 30.816391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009377, 37.097820, 31.536915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044014, 36.710434, 31.443466>,  <38.064796, 36.478001, 31.387398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044014, 36.710434, 31.443466>,  <38.009377, 37.097820, 31.536915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044014, 36.710434, 31.443466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287992, -0.200157, 0.936481,
		-0.953710, -0.148371, 0.261578,
		0.086590, -0.968464, -0.233621,
		38.069992, 36.419895, 31.373381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671886, 36.769032, 32.086880>,  <38.009377, 37.097820, 31.536915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671886, 36.769032, 32.086880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884594, 36.476830, 31.915495>,  <38.012218, 36.301510, 31.812664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.884594, 36.476830, 31.915495>,  <37.671886, 36.769032, 32.086880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884594, 36.476830, 31.915495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288660, -0.319287, 0.902624,
		-0.796174, -0.603671, 0.041079,
		0.531772, -0.730504, -0.428464,
		38.044125, 36.257679, 31.786955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601849, 36.168835, 32.482658>,  <37.671886, 36.769032, 32.086880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601849, 36.168835, 32.482658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937325, 36.113132, 32.272060>,  <38.138611, 36.079712, 32.145702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937325, 36.113132, 32.272060>,  <37.601849, 36.168835, 32.482658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937325, 36.113132, 32.272060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432416, -0.417433, 0.799229,
		-0.331073, -0.897975, -0.289883,
		0.838693, -0.139253, -0.526499,
		38.188934, 36.071358, 32.114109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800232, 35.491917, 32.654091>,  <37.601849, 36.168835, 32.482658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800232, 35.491917, 32.654091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126690, 35.673401, 32.510948>,  <38.322563, 35.782291, 32.425064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126690, 35.673401, 32.510948>,  <37.800232, 35.491917, 32.654091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126690, 35.673401, 32.510948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534598, -0.357755, 0.765648,
		0.219360, -0.816184, -0.534532,
		0.816141, 0.453712, -0.357853,
		38.371532, 35.809513, 32.403591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229115, 34.975910, 32.731571>,  <37.800232, 35.491917, 32.654091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229115, 34.975910, 32.731571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434536, 35.318199, 32.706264>,  <38.557789, 35.523571, 32.691078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.434536, 35.318199, 32.706264>,  <38.229115, 34.975910, 32.731571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434536, 35.318199, 32.706264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538341, -0.263905, 0.800340,
		0.668170, -0.445080, -0.596199,
		0.513555, 0.855721, -0.063271,
		38.588604, 35.574917, 32.687283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873905, 34.774292, 32.643890>,  <38.229115, 34.975910, 32.731571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873905, 34.774292, 32.643890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926235, 35.143463, 32.788715>,  <38.957634, 35.364967, 32.875610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.926235, 35.143463, 32.788715>,  <38.873905, 34.774292, 32.643890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926235, 35.143463, 32.788715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573855, -0.368299, 0.731469,
		0.808440, 0.112075, -0.577810,
		0.130827, 0.922928, 0.362062,
		38.965485, 35.420341, 32.897335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627468, 34.832268, 32.735138>,  <38.873905, 34.774292, 32.643890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627468, 34.832268, 32.735138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467773, 35.117916, 32.965145>,  <39.371956, 35.289303, 33.103149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467773, 35.117916, 32.965145>,  <39.627468, 34.832268, 32.735138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467773, 35.117916, 32.965145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596847, -0.273654, 0.754246,
		0.695978, 0.644319, -0.316967,
		-0.399236, 0.714119, 0.575017,
		39.348003, 35.332153, 33.137650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179852, 35.179211, 32.989197>,  <39.627468, 34.832268, 32.735138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179852, 35.179211, 32.989197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882587, 35.280376, 33.236984>,  <39.704227, 35.341076, 33.385658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.882587, 35.280376, 33.236984>,  <40.179852, 35.179211, 32.989197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882587, 35.280376, 33.236984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554779, -0.284676, 0.781780,
		0.374073, 0.924658, 0.071247,
		-0.743161, 0.252917, 0.619471,
		39.659637, 35.356251, 33.422825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509357, 35.433838, 33.462475>,  <40.179852, 35.179211, 32.989197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509357, 35.433838, 33.462475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158142, 35.351616, 33.635353>,  <39.947414, 35.302280, 33.739082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158142, 35.351616, 33.635353>,  <40.509357, 35.433838, 33.462475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158142, 35.351616, 33.635353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478588, -0.380691, 0.791219,
		0.001893, 0.901565, 0.432639,
		-0.878038, -0.205558, 0.432199,
		39.894730, 35.289948, 33.765015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518093, 35.793278, 34.154377>,  <40.509357, 35.433838, 33.462475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518093, 35.793278, 34.154377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270786, 35.479111, 34.166145>,  <40.122402, 35.290611, 34.173206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.270786, 35.479111, 34.166145>,  <40.518093, 35.793278, 34.154377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.270786, 35.479111, 34.166145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403138, -0.284763, 0.869707,
		-0.674705, 0.549572, 0.492691,
		-0.618266, -0.785418, 0.029422,
		40.085308, 35.243484, 34.174973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028076, 36.381702, 34.190510>,  <40.518093, 35.793278, 34.154377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028076, 36.381702, 34.190510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291985, 36.667130, 34.284763>,  <40.450329, 36.838387, 34.341316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291985, 36.667130, 34.284763>,  <40.028076, 36.381702, 34.190510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291985, 36.667130, 34.284763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707733, 0.484632, 0.514048,
		0.252611, -0.505921, 0.824761,
		0.659773, 0.713565, 0.235633,
		40.489918, 36.881199, 34.355453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940933, 36.506836, 34.896843>,  <40.028076, 36.381702, 34.190510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940933, 36.506836, 34.896843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095024, 36.830013, 34.718483>,  <40.187477, 37.023922, 34.611465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095024, 36.830013, 34.718483>,  <39.940933, 36.506836, 34.896843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095024, 36.830013, 34.718483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584263, 0.587546, 0.559844,
		0.714310, 0.044856, 0.698390,
		0.385224, 0.807946, -0.445898,
		40.210590, 37.072395, 34.584713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057781, 37.016647, 35.463551>,  <39.940933, 36.506836, 34.896843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057781, 37.016647, 35.463551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055950, 37.235149, 35.128510>,  <40.054852, 37.366253, 34.927486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.055950, 37.235149, 35.128510>,  <40.057781, 37.016647, 35.463551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055950, 37.235149, 35.128510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642513, 0.640230, 0.421050,
		0.766261, 0.540099, 0.348047,
		-0.004579, 0.546259, -0.837604,
		40.054577, 37.399029, 34.877228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236530, 37.679909, 35.594028>,  <40.057781, 37.016647, 35.463551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236530, 37.679909, 35.594028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995777, 37.713268, 35.276340>,  <39.851326, 37.733284, 35.085728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995777, 37.713268, 35.276340>,  <40.236530, 37.679909, 35.594028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995777, 37.713268, 35.276340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464819, 0.772119, 0.433331,
		0.649371, 0.629981, -0.425958,
		-0.601880, 0.083399, -0.794219,
		39.815212, 37.738289, 35.038074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063202, 38.380016, 35.504482>,  <40.236530, 37.679909, 35.594028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063202, 38.380016, 35.504482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770699, 38.207462, 35.293140>,  <39.595196, 38.103931, 35.166336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770699, 38.207462, 35.293140>,  <40.063202, 38.380016, 35.504482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770699, 38.207462, 35.293140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616405, 0.749615, 0.241087,
		0.292063, 0.501980, -0.814073,
		-0.731262, -0.431386, -0.528358,
		39.551319, 38.078045, 35.134632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617390, 38.959530, 35.347130>,  <40.063202, 38.380016, 35.504482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617390, 38.959530, 35.347130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405025, 38.664448, 35.180313>,  <39.277607, 38.487396, 35.080223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405025, 38.664448, 35.180313>,  <39.617390, 38.959530, 35.347130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405025, 38.664448, 35.180313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841769, 0.515870, 0.159072,
		0.097791, 0.435505, -0.894859,
		-0.530907, -0.737709, -0.417042,
		39.245754, 38.443134, 35.055199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331448, 39.255821, 34.656574>,  <39.617390, 38.959530, 35.347130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331448, 39.255821, 34.656574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135567, 38.952835, 34.829288>,  <39.018040, 38.771042, 34.932915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135567, 38.952835, 34.829288>,  <39.331448, 39.255821, 34.656574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135567, 38.952835, 34.829288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690656, 0.639259, 0.338145,
		-0.532155, -0.132623, -0.836195,
		-0.489699, -0.757469, 0.431782,
		38.988659, 38.725594, 34.958824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658863, 39.256195, 34.403725>,  <39.331448, 39.255821, 34.656574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658863, 39.256195, 34.403725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664330, 39.093945, 34.769299>,  <38.667610, 38.996593, 34.988644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664330, 39.093945, 34.769299>,  <38.658863, 39.256195, 34.403725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664330, 39.093945, 34.769299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639822, 0.698854, 0.319736,
		-0.768401, -0.589128, -0.249975,
		0.013669, -0.405625, 0.913937,
		38.668430, 38.972256, 35.043480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942337, 39.139202, 34.611099>,  <38.658863, 39.256195, 34.403725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942337, 39.139202, 34.611099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161098, 39.154198, 34.945641>,  <38.292355, 39.163197, 35.146366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161098, 39.154198, 34.945641>,  <37.942337, 39.139202, 34.611099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161098, 39.154198, 34.945641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686459, 0.591941, 0.422351,
		-0.479237, -0.805109, 0.349473,
		0.546906, 0.037493, 0.836354,
		38.325169, 39.165447, 35.196548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536217, 38.947651, 35.216946>,  <37.942337, 39.139202, 34.611099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536217, 38.947651, 35.216946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829765, 39.210873, 35.284355>,  <38.005894, 39.368805, 35.324802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829765, 39.210873, 35.284355>,  <37.536217, 38.947651, 35.216946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829765, 39.210873, 35.284355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679058, 0.717158, 0.156733,
		-0.017721, -0.229460, 0.973157,
		0.733871, 0.658052, 0.168526,
		38.049927, 39.408287, 35.334911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029419, 39.253086, 35.592117>,  <37.536217, 38.947651, 35.216946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029419, 39.253086, 35.592117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381504, 39.442467, 35.605209>,  <37.592754, 39.556095, 35.613064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381504, 39.442467, 35.605209>,  <37.029419, 39.253086, 35.592117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381504, 39.442467, 35.605209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423581, 0.752647, 0.504085,
		0.214021, -0.457568, 0.863033,
		0.880213, 0.473450, 0.032735,
		37.645569, 39.584503, 35.615028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137642, 39.445446, 36.238178>,  <37.029419, 39.253086, 35.592117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137642, 39.445446, 36.238178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364025, 39.709461, 36.040577>,  <37.499855, 39.867870, 35.922016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364025, 39.709461, 36.040577>,  <37.137642, 39.445446, 36.238178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364025, 39.709461, 36.040577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355712, 0.736057, 0.575924,
		0.743753, -0.150220, 0.651357,
		0.565951, 0.660041, -0.494010,
		37.533813, 39.907475, 35.892376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346218, 39.747417, 36.744373>,  <37.137642, 39.445446, 36.238178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346218, 39.747417, 36.744373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425636, 39.985134, 36.432632>,  <37.473286, 40.127766, 36.245586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425636, 39.985134, 36.432632>,  <37.346218, 39.747417, 36.744373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425636, 39.985134, 36.432632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305228, 0.793135, 0.527041,
		0.931351, 0.133241, 0.338868,
		0.198545, 0.594293, -0.779356,
		37.485199, 40.163422, 36.198826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714188, 40.437088, 37.022083>,  <37.346218, 39.747417, 36.744373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714188, 40.437088, 37.022083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547527, 40.516556, 36.667248>,  <37.447529, 40.564236, 36.454346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547527, 40.516556, 36.667248>,  <37.714188, 40.437088, 37.022083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547527, 40.516556, 36.667248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457924, 0.797109, 0.393601,
		0.785306, 0.570216, -0.241141,
		-0.416653, 0.198673, -0.887090,
		37.422531, 40.576157, 36.401119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894981, 41.121498, 36.844036>,  <37.714188, 40.437088, 37.022083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894981, 41.121498, 36.844036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544624, 41.055954, 36.662502>,  <37.334412, 41.016628, 36.553581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544624, 41.055954, 36.662502>,  <37.894981, 41.121498, 36.844036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544624, 41.055954, 36.662502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463336, 0.548147, 0.696315,
		0.134666, 0.820172, -0.556041,
		-0.875891, -0.163864, -0.453832,
		37.281857, 41.006794, 36.526352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557400, 41.768871, 36.759293>,  <37.894981, 41.121498, 36.844036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557400, 41.768871, 36.759293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310551, 41.454208, 36.766491>,  <37.162441, 41.265411, 36.770809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310551, 41.454208, 36.766491>,  <37.557400, 41.768871, 36.759293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310551, 41.454208, 36.766491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507040, 0.415053, 0.755408,
		-0.601719, 0.457056, -0.655007,
		-0.617127, -0.786658, 0.018000,
		37.125412, 41.218212, 36.771893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855270, 42.126007, 36.892807>,  <37.557400, 41.768871, 36.759293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855270, 42.126007, 36.892807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833572, 41.738171, 36.988258>,  <36.820553, 41.505466, 37.045528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.833572, 41.738171, 36.988258>,  <36.855270, 42.126007, 36.892807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833572, 41.738171, 36.988258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662466, 0.213761, 0.717945,
		-0.747126, -0.119140, -0.653918,
		-0.054246, -0.969594, 0.238633,
		36.817299, 41.447292, 37.059849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062550, 41.948654, 36.970512>,  <36.855270, 42.126007, 36.892807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062550, 41.948654, 36.970512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277050, 41.673244, 37.165806>,  <36.405750, 41.507999, 37.282982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277050, 41.673244, 37.165806>,  <36.062550, 41.948654, 36.970512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277050, 41.673244, 37.165806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649092, 0.033357, 0.759978,
		-0.539548, -0.724447, -0.429027,
		0.536253, -0.688523, 0.488230,
		36.437927, 41.466686, 37.312275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642731, 41.626984, 37.293125>,  <36.062550, 41.948654, 36.970512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642731, 41.626984, 37.293125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959766, 41.542831, 37.522049>,  <36.149990, 41.492340, 37.659405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959766, 41.542831, 37.522049>,  <35.642731, 41.626984, 37.293125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959766, 41.542831, 37.522049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536748, 0.204605, 0.818559,
		-0.289307, -0.955969, 0.049247,
		0.792593, -0.210381, 0.572308,
		36.197544, 41.479717, 37.693741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438248, 41.105747, 37.842258>,  <35.642731, 41.626984, 37.293125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438248, 41.105747, 37.842258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750160, 41.320156, 37.971645>,  <35.937305, 41.448799, 38.049278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750160, 41.320156, 37.971645>,  <35.438248, 41.105747, 37.842258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750160, 41.320156, 37.971645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435198, 0.092672, 0.895553,
		0.450056, -0.839105, 0.305538,
		0.779777, 0.536018, 0.323469,
		35.984093, 41.480961, 38.068687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390911, 40.874256, 38.444950>,  <35.438248, 41.105747, 37.842258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390911, 40.874256, 38.444950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623890, 41.199322, 38.452255>,  <35.763676, 41.394360, 38.456638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623890, 41.199322, 38.452255>,  <35.390911, 40.874256, 38.444950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623890, 41.199322, 38.452255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345088, 0.226859, 0.910741,
		0.735981, -0.536763, 0.412574,
		0.582448, 0.812663, 0.018266,
		35.798626, 41.443119, 38.457737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857777, 40.956284, 39.145142>,  <35.390911, 40.874256, 38.444950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857777, 40.956284, 39.145142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722050, 41.308334, 39.012325>,  <35.640614, 41.519566, 38.932636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722050, 41.308334, 39.012325>,  <35.857777, 40.956284, 39.145142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722050, 41.308334, 39.012325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447771, 0.159306, 0.879843,
		0.827265, 0.447221, 0.340039,
		-0.339314, 0.880123, -0.332040,
		35.620255, 41.572372, 38.912712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979561, 41.208668, 39.934288>,  <35.857777, 40.956284, 39.145142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979561, 41.208668, 39.934288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062363, 41.115219, 40.314304>,  <36.112045, 41.059151, 40.542313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062363, 41.115219, 40.314304>,  <35.979561, 41.208668, 39.934288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062363, 41.115219, 40.314304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876586, -0.475511, 0.074066,
		0.434449, -0.848121, -0.303225,
		0.207004, -0.233625, 0.950036,
		36.124462, 41.045132, 40.599316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822842, 41.738045, 39.418152>,  <35.979561, 41.208668, 39.934288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822842, 41.738045, 39.418152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664837, 41.907433, 39.744255>,  <35.570034, 42.009064, 39.939915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.664837, 41.907433, 39.744255>,  <35.822842, 41.738045, 39.418152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664837, 41.907433, 39.744255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737334, 0.675498, 0.006387,
		-0.547998, 0.603639, -0.579066,
		-0.395013, 0.423465, 0.815255,
		35.546333, 42.034473, 39.988831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385475, 41.932301, 38.909119>,  <35.822842, 41.738045, 39.418152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385475, 41.932301, 38.909119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547421, 42.192764, 39.165890>,  <36.644588, 42.349041, 39.319954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547421, 42.192764, 39.165890>,  <36.385475, 41.932301, 38.909119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547421, 42.192764, 39.165890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914293, 0.297761, 0.274603,
		-0.012331, -0.698089, 0.715905,
		0.404866, 0.651160, 0.641930,
		36.668880, 42.388111, 39.358467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021412, 41.929886, 38.484600>,  <36.385475, 41.932301, 38.909119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021412, 41.929886, 38.484600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724586, 41.676315, 38.397446>,  <36.546490, 41.524174, 38.345154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724586, 41.676315, 38.397446>,  <37.021412, 41.929886, 38.484600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724586, 41.676315, 38.397446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569300, -0.424400, -0.704118,
		0.353888, -0.646545, 0.675827,
		-0.742065, -0.633927, -0.217888,
		36.501968, 41.486137, 38.332081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152473, 41.069397, 38.458763>,  <37.021412, 41.929886, 38.484600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152473, 41.069397, 38.458763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872417, 41.207310, 38.208668>,  <36.704384, 41.290058, 38.058609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872417, 41.207310, 38.208668>,  <37.152473, 41.069397, 38.458763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872417, 41.207310, 38.208668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531531, -0.333005, -0.778834,
		-0.476737, -0.877629, 0.049888,
		-0.700141, 0.344783, -0.625243,
		36.662376, 41.310745, 38.021095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126236, 40.561596, 37.915817>,  <37.152473, 41.069397, 38.458763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126236, 40.561596, 37.915817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922157, 40.861374, 37.747040>,  <36.799709, 41.041241, 37.645775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922157, 40.861374, 37.747040>,  <37.126236, 40.561596, 37.915817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922157, 40.861374, 37.747040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217732, -0.362068, -0.906366,
		-0.832041, -0.554295, 0.021548,
		-0.510196, 0.749443, -0.421943,
		36.769100, 41.086208, 37.620457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638699, 40.259003, 37.466850>,  <37.126236, 40.561596, 37.915817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638699, 40.259003, 37.466850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702980, 40.629543, 37.330585>,  <36.741550, 40.851868, 37.248829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.702980, 40.629543, 37.330585>,  <36.638699, 40.259003, 37.466850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702980, 40.629543, 37.330585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359123, -0.376368, -0.854036,
		-0.919350, 0.014913, -0.393159,
		0.160708, 0.926350, -0.340658,
		36.751194, 40.907448, 37.228390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224209, 40.332207, 36.799835>,  <36.638699, 40.259003, 37.466850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224209, 40.332207, 36.799835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480404, 40.637997, 36.770569>,  <36.634121, 40.821468, 36.753010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480404, 40.637997, 36.770569>,  <36.224209, 40.332207, 36.799835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480404, 40.637997, 36.770569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186119, -0.246954, -0.950985,
		-0.745070, 0.595480, -0.300455,
		0.640492, 0.764471, -0.073167,
		36.672550, 40.867336, 36.748619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142788, 40.645840, 36.186199>,  <36.224209, 40.332207, 36.799835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142788, 40.645840, 36.186199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504860, 40.785519, 36.283115>,  <36.722103, 40.869324, 36.341267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504860, 40.785519, 36.283115>,  <36.142788, 40.645840, 36.186199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504860, 40.785519, 36.283115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286014, -0.078792, -0.954980,
		-0.314384, 0.933732, -0.171196,
		0.905184, 0.349195, 0.242290,
		36.776417, 40.890278, 36.355801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441536, 40.847893, 35.654232>,  <36.142788, 40.645840, 36.186199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441536, 40.847893, 35.654232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745918, 40.974197, 35.880943>,  <36.928547, 41.049980, 36.016972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745918, 40.974197, 35.880943>,  <36.441536, 40.847893, 35.654232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745918, 40.974197, 35.880943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620517, -0.609334, -0.493629,
		0.189491, 0.727328, -0.659612,
		0.760954, 0.315762, 0.566783,
		36.974205, 41.068928, 36.050980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051842, 41.054619, 35.249573>,  <36.441536, 40.847893, 35.654232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051842, 41.054619, 35.249573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141697, 40.876736, 35.596394>,  <37.195610, 40.770004, 35.804485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141697, 40.876736, 35.596394>,  <37.051842, 41.054619, 35.249573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141697, 40.876736, 35.596394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611361, -0.628560, -0.480781,
		0.758799, 0.638080, 0.130680,
		0.224637, -0.444709, 0.867048,
		37.209087, 40.743324, 35.856506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821991, 40.996304, 35.285172>,  <37.051842, 41.054619, 35.249573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821991, 40.996304, 35.285172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707653, 40.720860, 35.551739>,  <37.639050, 40.555595, 35.711678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707653, 40.720860, 35.551739>,  <37.821991, 40.996304, 35.285172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707653, 40.720860, 35.551739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751085, -0.592876, -0.290462,
		0.595119, 0.417512, 0.686672,
		-0.285840, -0.688608, 0.666419,
		37.621902, 40.514278, 35.751663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518856, 40.606350, 35.439114>,  <37.821991, 40.996304, 35.285172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518856, 40.606350, 35.439114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220825, 40.376343, 35.574291>,  <38.042007, 40.238338, 35.655399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220825, 40.376343, 35.574291>,  <38.518856, 40.606350, 35.439114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220825, 40.376343, 35.574291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529185, -0.818064, -0.225243,
		0.405983, 0.011013, 0.913814,
		-0.745078, -0.575022, 0.337948,
		37.997303, 40.203835, 35.675674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857597, 39.997883, 35.929764>,  <38.518856, 40.606350, 35.439114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857597, 39.997883, 35.929764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486687, 39.883553, 35.833054>,  <38.264141, 39.814953, 35.775028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486687, 39.883553, 35.833054>,  <38.857597, 39.997883, 35.929764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486687, 39.883553, 35.833054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332156, -0.926064, -0.179103,
		-0.172709, -0.246386, 0.953659,
		-0.927278, -0.285830, -0.241778,
		38.208504, 39.797802, 35.760521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769150, 39.373287, 36.218403>,  <38.857597, 39.997883, 35.929764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769150, 39.373287, 36.218403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454227, 39.330910, 35.975445>,  <38.265274, 39.305485, 35.829670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.454227, 39.330910, 35.975445>,  <38.769150, 39.373287, 36.218403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454227, 39.330910, 35.975445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196432, -0.976894, -0.084220,
		-0.584437, -0.185619, 0.789923,
		-0.787304, -0.105945, -0.607395,
		38.218037, 39.299126, 35.793228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438145, 38.779194, 36.369377>,  <38.769150, 39.373287, 36.218403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438145, 38.779194, 36.369377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368919, 38.849033, 35.981651>,  <38.327385, 38.890938, 35.749016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368919, 38.849033, 35.981651>,  <38.438145, 38.779194, 36.369377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368919, 38.849033, 35.981651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444222, -0.864537, -0.235037,
		-0.879043, -0.471266, 0.072059,
		-0.173063, 0.174598, -0.969312,
		38.317001, 38.901413, 35.690857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446804, 38.195034, 36.065853>,  <38.438145, 38.779194, 36.369377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446804, 38.195034, 36.065853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475548, 38.406445, 35.727505>,  <38.492794, 38.533291, 35.524494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475548, 38.406445, 35.727505>,  <38.446804, 38.195034, 36.065853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475548, 38.406445, 35.727505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496786, -0.754350, -0.429138,
		-0.864893, -0.389380, -0.316771,
		0.071858, 0.528525, -0.845871,
		38.497105, 38.565002, 35.473743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401917, 37.681648, 35.584869>,  <38.446804, 38.195034, 36.065853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401917, 37.681648, 35.584869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558529, 37.991993, 35.386986>,  <38.652496, 38.178200, 35.268253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.558529, 37.991993, 35.386986>,  <38.401917, 37.681648, 35.584869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558529, 37.991993, 35.386986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596017, -0.623440, -0.506050,
		-0.701049, -0.096724, -0.706523,
		0.391527, 0.775866, -0.494711,
		38.675987, 38.224754, 35.238571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473675, 37.390888, 34.916378>,  <38.401917, 37.681648, 35.584869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473675, 37.390888, 34.916378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732735, 37.693878, 34.949333>,  <38.888168, 37.875671, 34.969105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.732735, 37.693878, 34.949333>,  <38.473675, 37.390888, 34.916378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732735, 37.693878, 34.949333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654976, -0.498216, -0.568143,
		-0.389305, 0.421919, -0.818795,
		0.647648, 0.757472, 0.082389,
		38.927029, 37.921120, 34.974049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796314, 37.494637, 34.272457>,  <38.473675, 37.390888, 34.916378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796314, 37.494637, 34.272457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052814, 37.642315, 34.541527>,  <39.206715, 37.730923, 34.702969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.052814, 37.642315, 34.541527>,  <38.796314, 37.494637, 34.272457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052814, 37.642315, 34.541527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765207, -0.372822, -0.524844,
		0.057014, 0.851291, -0.521587,
		0.641254, 0.369199, 0.672670,
		39.245190, 37.753075, 34.743328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431267, 37.545033, 33.857903>,  <38.796314, 37.494637, 34.272457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431267, 37.545033, 33.857903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552414, 37.646881, 34.225258>,  <39.625103, 37.707993, 34.445671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.552414, 37.646881, 34.225258>,  <39.431267, 37.545033, 33.857903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552414, 37.646881, 34.225258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930991, -0.285099, -0.227979,
		0.203783, 0.924059, -0.323401,
		0.302867, 0.254625, 0.918388,
		39.643272, 37.723270, 34.500774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046951, 37.947353, 33.714813>,  <39.431267, 37.545033, 33.857903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046951, 37.947353, 33.714813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050770, 37.792419, 34.083569>,  <40.053059, 37.699459, 34.304821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050770, 37.792419, 34.083569>,  <40.046951, 37.947353, 33.714813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050770, 37.792419, 34.083569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949946, -0.284392, -0.129322,
		0.312269, 0.876979, 0.365234,
		0.009543, -0.387336, 0.921889,
		40.053635, 37.676220, 34.360134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693027, 38.084377, 33.978386>,  <40.046951, 37.947353, 33.714813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693027, 38.084377, 33.978386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534809, 37.777260, 34.179996>,  <40.439877, 37.592991, 34.300961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534809, 37.777260, 34.179996>,  <40.693027, 38.084377, 33.978386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534809, 37.777260, 34.179996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850704, -0.513124, -0.114042,
		0.346186, 0.383665, 0.856129,
		-0.395547, -0.767792, 0.504022,
		40.416145, 37.546921, 34.331203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158504, 37.915951, 34.455601>,  <40.693027, 38.084377, 33.978386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158504, 37.915951, 34.455601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937149, 37.585838, 34.410557>,  <40.804337, 37.387772, 34.383530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937149, 37.585838, 34.410557>,  <41.158504, 37.915951, 34.455601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937149, 37.585838, 34.410557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828598, -0.531695, -0.175287,
		0.084789, -0.190306, 0.978057,
		-0.553386, -0.825278, -0.112605,
		40.771133, 37.338253, 34.376774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352226, 37.331573, 34.943745>,  <41.158504, 37.915951, 34.455601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352226, 37.331573, 34.943745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227150, 37.320541, 34.563961>,  <41.152103, 37.313923, 34.336090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227150, 37.320541, 34.563961>,  <41.352226, 37.331573, 34.943745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227150, 37.320541, 34.563961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941580, -0.140654, -0.306011,
		-0.125104, -0.989675, 0.069953,
		-0.312691, -0.027583, -0.949455,
		41.133343, 37.312267, 34.279125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827724, 36.983261, 34.654392>,  <41.352226, 37.331573, 34.943745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827724, 36.983261, 34.654392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651619, 37.152946, 34.337860>,  <41.545956, 37.254757, 34.147942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651619, 37.152946, 34.337860>,  <41.827724, 36.983261, 34.654392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651619, 37.152946, 34.337860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860813, -0.051162, -0.506342,
		-0.255285, -0.904114, -0.342647,
		-0.440261, 0.424217, -0.791334,
		41.519539, 37.280212, 34.100460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904404, 36.596138, 33.981735>,  <41.827724, 36.983261, 34.654392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904404, 36.596138, 33.981735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870239, 36.986607, 33.901943>,  <41.849739, 37.220886, 33.854069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.870239, 36.986607, 33.901943>,  <41.904404, 36.596138, 33.981735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.870239, 36.986607, 33.901943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953015, 0.021643, -0.302148,
		-0.290632, -0.215913, -0.932156,
		-0.085412, 0.976173, -0.199478,
		41.844616, 37.279457, 33.842098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120125, 36.167175, 34.564510>,  <41.904404, 36.596138, 33.981735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120125, 36.167175, 34.564510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039398, 36.006248, 34.207321>,  <41.990963, 35.909691, 33.993008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039398, 36.006248, 34.207321>,  <42.120125, 36.167175, 34.564510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039398, 36.006248, 34.207321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634875, -0.747988, 0.193513,
		-0.745790, -0.527875, 0.406380,
		-0.201817, -0.402321, -0.892977,
		41.978851, 35.885551, 33.939426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857296, 35.532249, 34.621712>,  <42.120125, 36.167175, 34.564510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857296, 35.532249, 34.621712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088646, 35.617046, 34.306614>,  <42.227455, 35.667927, 34.117554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088646, 35.617046, 34.306614>,  <41.857296, 35.532249, 34.621712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088646, 35.617046, 34.306614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663958, -0.683372, 0.303582,
		-0.473965, -0.698614, -0.536000,
		0.578374, 0.211994, -0.787745,
		42.262157, 35.680645, 34.070290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156952, 34.915413, 34.531418>,  <41.857296, 35.532249, 34.621712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156952, 34.915413, 34.531418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372047, 35.146374, 34.285675>,  <42.501106, 35.284950, 34.138229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.372047, 35.146374, 34.285675>,  <42.156952, 34.915413, 34.531418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.372047, 35.146374, 34.285675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789640, -0.600289, 0.126977,
		-0.295476, -0.553404, -0.778741,
		0.537739, 0.577406, -0.614361,
		42.533371, 35.319595, 34.101368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127892, 34.746353, 35.237511>,  <42.156952, 34.915413, 34.531418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127892, 34.746353, 35.237511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309219, 34.394585, 35.295639>,  <42.418015, 34.183521, 35.330517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309219, 34.394585, 35.295639>,  <42.127892, 34.746353, 35.237511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309219, 34.394585, 35.295639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228849, 0.272401, 0.934572,
		-0.861471, -0.390399, 0.324739,
		0.453315, -0.879423, 0.145324,
		42.445213, 34.130756, 35.339237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907452, 34.531738, 35.947514>,  <42.127892, 34.746353, 35.237511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907452, 34.531738, 35.947514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273506, 34.419716, 35.831520>,  <42.493141, 34.352501, 35.761925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.273506, 34.419716, 35.831520>,  <41.907452, 34.531738, 35.947514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273506, 34.419716, 35.831520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402724, 0.667646, 0.626149,
		0.018247, -0.689796, 0.723774,
		0.915140, -0.280056, -0.289980,
		42.548050, 34.335701, 35.744526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423466, 34.383568, 36.522697>,  <41.907452, 34.531738, 35.947514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423466, 34.383568, 36.522697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582638, 34.521381, 36.182590>,  <42.678139, 34.604069, 35.978527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582638, 34.521381, 36.182590>,  <42.423466, 34.383568, 36.522697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582638, 34.521381, 36.182590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294591, 0.829735, 0.474085,
		0.868834, -0.439131, 0.228674,
		0.397924, 0.344536, -0.850266,
		42.702015, 34.624741, 35.927509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.127285, 34.561188, 36.702408>,  <42.423466, 34.383568, 36.522697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.127285, 34.561188, 36.702408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980080, 34.782917, 36.403801>,  <42.891754, 34.915955, 36.224636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980080, 34.782917, 36.403801>,  <43.127285, 34.561188, 36.702408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980080, 34.782917, 36.403801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382155, 0.822090, 0.422049,
		0.847656, -0.129963, -0.514382,
		-0.368017, 0.554326, -0.746516,
		42.869675, 34.949215, 36.179848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657097, 33.949154, 36.752613>,  <43.127285, 34.561188, 36.702408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657097, 33.949154, 36.752613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643738, 33.557404, 36.672901>,  <43.635723, 33.322353, 36.625072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643738, 33.557404, 36.672901>,  <43.657097, 33.949154, 36.752613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643738, 33.557404, 36.672901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778612, 0.099512, -0.619565,
		0.626616, -0.175856, 0.759228,
		-0.033402, -0.979373, -0.199280,
		43.633717, 33.263592, 36.613117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252064, 33.638844, 37.068924>,  <43.657097, 33.949154, 36.752613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252064, 33.638844, 37.068924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094372, 33.572079, 36.707432>,  <43.999756, 33.532021, 36.490536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.094372, 33.572079, 36.707432>,  <44.252064, 33.638844, 37.068924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094372, 33.572079, 36.707432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821588, 0.376627, -0.427955,
		0.411800, -0.911204, -0.011343,
		-0.394226, -0.166912, -0.903729,
		43.976105, 33.522007, 36.436314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803448, 33.330269, 36.530830>,  <44.252064, 33.638844, 37.068924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803448, 33.330269, 36.530830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519749, 33.537537, 36.339638>,  <44.349529, 33.661900, 36.224922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.519749, 33.537537, 36.339638>,  <44.803448, 33.330269, 36.530830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519749, 33.537537, 36.339638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689737, 0.369917, -0.622434,
		-0.145714, -0.771141, -0.619765,
		-0.709247, 0.518172, -0.477982,
		44.306976, 33.692989, 36.196243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942577, 33.224087, 35.859642>,  <44.803448, 33.330269, 36.530830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942577, 33.224087, 35.859642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.776886, 33.565968, 35.984795>,  <44.677471, 33.771095, 36.059887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.776886, 33.565968, 35.984795>,  <44.942577, 33.224087, 35.859642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.776886, 33.565968, 35.984795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787599, 0.508896, -0.347437,
		-0.456178, 0.102503, -0.883965,
		-0.414233, 0.854703, 0.312879,
		44.652615, 33.822380, 36.078659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967129, 33.713432, 35.285423>,  <44.942577, 33.224087, 35.859642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967129, 33.713432, 35.285423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956165, 33.847324, 35.662189>,  <44.949585, 33.927658, 35.888248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956165, 33.847324, 35.662189>,  <44.967129, 33.713432, 35.285423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956165, 33.847324, 35.662189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961690, 0.265947, -0.066523,
		-0.272767, 0.904007, -0.329196,
		-0.027411, 0.334730, 0.941915,
		44.947941, 33.947742, 35.944763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091595, 34.395931, 35.337952>,  <44.967129, 33.713432, 35.285423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091595, 34.395931, 35.337952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211433, 34.217918, 35.675518>,  <45.283337, 34.111111, 35.878056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.211433, 34.217918, 35.675518>,  <45.091595, 34.395931, 35.337952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.211433, 34.217918, 35.675518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950456, 0.216093, -0.223465,
		-0.082916, 0.869052, 0.487722,
		0.299596, -0.445030, 0.843914,
		45.301311, 34.084408, 35.928692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.297752, 34.883614, 35.921295>,  <45.091595, 34.395931, 35.337952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.297752, 34.883614, 35.921295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471973, 34.548790, 35.788853>,  <45.576508, 34.347897, 35.709389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.471973, 34.548790, 35.788853>,  <45.297752, 34.883614, 35.921295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.471973, 34.548790, 35.788853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679742, 0.546980, -0.488634,
		0.590122, -0.012240, 0.807221,
		0.435553, -0.837056, -0.331105,
		45.602638, 34.297672, 35.689522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.930096, 34.910072, 36.193745>,  <45.297752, 34.883614, 35.921295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.930096, 34.910072, 36.193745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909138, 34.725796, 35.839340>,  <45.896564, 34.615231, 35.626698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909138, 34.725796, 35.839340>,  <45.930096, 34.910072, 36.193745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909138, 34.725796, 35.839340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613388, 0.685291, -0.392595,
		0.788041, -0.564041, 0.246675,
		-0.052395, -0.460689, -0.886014,
		45.893417, 34.587589, 35.573536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.557175, 34.980026, 35.965748>,  <45.930096, 34.910072, 36.193745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.557175, 34.980026, 35.965748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.361912, 34.886562, 35.629391>,  <46.244755, 34.830482, 35.427574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.361912, 34.886562, 35.629391>,  <46.557175, 34.980026, 35.965748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.361912, 34.886562, 35.629391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570949, 0.643220, -0.510182,
		0.660091, -0.729157, -0.180583,
		-0.488157, -0.233662, -0.840895,
		46.215466, 34.816463, 35.377121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.076099, 35.079697, 35.592728>,  <46.557175, 34.980026, 35.965748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.076099, 35.079697, 35.592728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.740158, 35.108345, 35.377502>,  <46.538593, 35.125534, 35.248367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.740158, 35.108345, 35.377502>,  <47.076099, 35.079697, 35.592728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.740158, 35.108345, 35.377502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413515, 0.726565, -0.548734,
		0.351638, -0.683355, -0.639826,
		-0.839855, 0.071622, -0.538065,
		46.488201, 35.129833, 35.216084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.479893, 34.928059, 34.963100>,  <47.076099, 35.079697, 35.592728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.479893, 34.928059, 34.963100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.620415, 35.270741, 35.114170>,  <47.704727, 35.476349, 35.204811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.620415, 35.270741, 35.114170>,  <47.479893, 34.928059, 34.963100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.620415, 35.270741, 35.114170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763503, 0.495617, -0.414036,
		-0.541890, -0.142903, 0.828211,
		0.351309, 0.856704, 0.377677,
		47.725807, 35.527752, 35.227474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.382462, 30.904791, 25.965052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016788, 31.065353, 25.987486>,  <36.797386, 31.161692, 26.000946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016788, 31.065353, 25.987486>,  <37.382462, 30.904791, 25.965052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016788, 31.065353, 25.987486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179969, 0.278035, 0.943561,
		0.363159, 0.872679, -0.326415,
		-0.914181, 0.401408, 0.056084,
		36.742535, 31.185776, 26.004311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492020, 31.578083, 26.223190>,  <37.382462, 30.904791, 25.965052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492020, 31.578083, 26.223190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115437, 31.459730, 26.287836>,  <36.889488, 31.388720, 26.326624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.115437, 31.459730, 26.287836>,  <37.492020, 31.578083, 26.223190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115437, 31.459730, 26.287836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090609, 0.239673, 0.966616,
		-0.324737, 0.924668, -0.198832,
		-0.941454, -0.295880, 0.161614,
		36.833000, 31.370966, 26.336321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195499, 32.089508, 26.758417>,  <37.492020, 31.578083, 26.223190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195499, 32.089508, 26.758417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954483, 31.770327, 26.764372>,  <36.809875, 31.578819, 26.767944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.954483, 31.770327, 26.764372>,  <37.195499, 32.089508, 26.758417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954483, 31.770327, 26.764372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151447, 0.132636, 0.979526,
		-0.783588, 0.587948, -0.200765,
		-0.602539, -0.797951, 0.014889,
		36.773720, 31.530941, 26.768839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419117, 32.307182, 26.999117>,  <37.195499, 32.089508, 26.758417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419117, 32.307182, 26.999117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.512768, 31.926970, 27.080782>,  <36.568958, 31.698843, 27.129780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.512768, 31.926970, 27.080782>,  <36.419117, 32.307182, 26.999117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512768, 31.926970, 27.080782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144109, 0.173748, 0.974189,
		-0.961467, -0.257503, -0.096301,
		0.234124, -0.950528, 0.204161,
		36.583004, 31.641811, 27.142031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876637, 31.990501, 27.584225>,  <36.419117, 32.307182, 26.999117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876637, 31.990501, 27.584225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197681, 31.752705, 27.603811>,  <36.390308, 31.610027, 27.615562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.197681, 31.752705, 27.603811>,  <35.876637, 31.990501, 27.584225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197681, 31.752705, 27.603811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023415, 0.050625, 0.998443,
		-0.596043, -0.802508, 0.026712,
		0.802611, -0.594490, 0.048965,
		36.438465, 31.574358, 27.618500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680294, 31.575573, 28.174398>,  <35.876637, 31.990501, 27.584225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680294, 31.575573, 28.174398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073952, 31.544329, 28.110689>,  <36.310146, 31.525583, 28.072464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.073952, 31.544329, 28.110689>,  <35.680294, 31.575573, 28.174398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073952, 31.544329, 28.110689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170143, 0.161506, 0.972094,
		-0.050206, -0.983776, 0.172234,
		0.984140, -0.078110, -0.159274,
		36.369194, 31.520895, 28.062906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923557, 31.156477, 28.653122>,  <35.680294, 31.575573, 28.174398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923557, 31.156477, 28.653122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256123, 31.343298, 28.532713>,  <36.455662, 31.455391, 28.460466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.256123, 31.343298, 28.532713>,  <35.923557, 31.156477, 28.653122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256123, 31.343298, 28.532713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219373, 0.221837, 0.950086,
		0.510517, -0.855951, 0.081979,
		0.831413, 0.467051, -0.301024,
		36.505547, 31.483414, 28.442406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489136, 30.832672, 29.014914>,  <35.923557, 31.156477, 28.653122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489136, 30.832672, 29.014914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631134, 31.181677, 28.880630>,  <36.716331, 31.391079, 28.800060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.631134, 31.181677, 28.880630>,  <36.489136, 30.832672, 29.014914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631134, 31.181677, 28.880630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284620, 0.241178, 0.927806,
		0.890488, -0.424917, -0.162717,
		0.354997, 0.872513, -0.335706,
		36.737633, 31.443430, 28.779919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219795, 30.939737, 29.073606>,  <36.489136, 30.832672, 29.014914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219795, 30.939737, 29.073606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017998, 31.284771, 29.088757>,  <36.896919, 31.491791, 29.097847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.017998, 31.284771, 29.088757>,  <37.219795, 30.939737, 29.073606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017998, 31.284771, 29.088757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381022, 0.183056, 0.906263,
		0.774794, 0.471636, -0.421015,
		-0.504496, 0.862583, 0.037873,
		36.866650, 31.543547, 29.100119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661995, 31.293127, 29.602985>,  <37.219795, 30.939737, 29.073606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661995, 31.293127, 29.602985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.361645, 31.550158, 29.541960>,  <37.181435, 31.704376, 29.505344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.361645, 31.550158, 29.541960>,  <37.661995, 31.293127, 29.602985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361645, 31.550158, 29.541960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140895, 0.381546, 0.913548,
		0.645234, 0.664469, -0.377031,
		-0.750880, 0.642575, -0.152566,
		37.136379, 31.742929, 29.496189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927631, 31.829840, 29.887630>,  <37.661995, 31.293127, 29.602985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927631, 31.829840, 29.887630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.531075, 31.876867, 29.864574>,  <37.293140, 31.905085, 29.850740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.531075, 31.876867, 29.864574>,  <37.927631, 31.829840, 29.887630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531075, 31.876867, 29.864574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011649, 0.359265, 0.933163,
		0.130421, 0.925800, -0.354803,
		-0.991390, 0.117571, -0.057640,
		37.233658, 31.912138, 29.847282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785534, 32.536537, 30.052597>,  <37.927631, 31.829840, 29.887630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785534, 32.536537, 30.052597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.461330, 32.314568, 30.127565>,  <37.266808, 32.181385, 30.172546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.461330, 32.314568, 30.127565>,  <37.785534, 32.536537, 30.052597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461330, 32.314568, 30.127565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008372, 0.308975, 0.951033,
		-0.585664, 0.772392, -0.245782,
		-0.810511, -0.554928, 0.187422,
		37.218178, 32.148090, 30.183792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498009, 32.910042, 30.496986>,  <37.785534, 32.536537, 30.052597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498009, 32.910042, 30.496986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.266495, 32.586018, 30.534546>,  <37.127586, 32.391602, 30.557081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.266495, 32.586018, 30.534546>,  <37.498009, 32.910042, 30.496986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266495, 32.586018, 30.534546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012700, 0.124086, 0.992190,
		-0.815384, 0.573068, -0.082107,
		-0.578781, -0.810059, 0.093899,
		37.092861, 32.342999, 30.562716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001198, 33.012447, 30.935091>,  <37.498009, 32.910042, 30.496986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001198, 33.012447, 30.935091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.002983, 32.612698, 30.949156>,  <37.004055, 32.372849, 30.957594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.002983, 32.612698, 30.949156>,  <37.001198, 33.012447, 30.935091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002983, 32.612698, 30.949156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008337, 0.035198, 0.999345,
		-0.999955, -0.004171, 0.008489,
		0.004467, -0.999371, 0.035162,
		37.004322, 32.312885, 30.959703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340111, 32.757210, 31.370464>,  <37.001198, 33.012447, 30.935091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340111, 32.757210, 31.370464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638512, 32.491024, 31.380566>,  <36.817551, 32.331314, 31.386627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638512, 32.491024, 31.380566>,  <36.340111, 32.757210, 31.370464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638512, 32.491024, 31.380566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044505, -0.011985, 0.998937,
		-0.664454, -0.746334, -0.038557,
		0.746003, -0.665464, 0.025253,
		36.862312, 32.291386, 31.388142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132187, 32.138435, 31.880159>,  <36.340111, 32.757210, 31.370464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132187, 32.138435, 31.880159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526566, 32.166603, 31.819555>,  <36.763191, 32.183502, 31.783192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526566, 32.166603, 31.819555>,  <36.132187, 32.138435, 31.880159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526566, 32.166603, 31.819555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154684, -0.041985, 0.987071,
		0.063148, -0.996634, -0.052288,
		0.985944, 0.070420, -0.151512,
		36.822350, 32.187729, 31.774101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376774, 31.729576, 32.310123>,  <36.132187, 32.138435, 31.880159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376774, 31.729576, 32.310123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.696354, 31.955839, 32.228428>,  <36.888100, 32.091599, 32.179409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.696354, 31.955839, 32.228428>,  <36.376774, 31.729576, 32.310123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696354, 31.955839, 32.228428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214777, 0.048841, 0.975441,
		0.561743, -0.823191, -0.082469,
		0.798946, 0.565660, -0.204239,
		36.936039, 32.125538, 32.167156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886063, 31.316889, 32.697338>,  <36.376774, 31.729576, 32.310123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886063, 31.316889, 32.697338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959419, 31.707901, 32.655773>,  <37.003433, 31.942509, 32.630833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959419, 31.707901, 32.655773>,  <36.886063, 31.316889, 32.697338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959419, 31.707901, 32.655773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273960, 0.050693, 0.960404,
		0.944093, -0.204602, -0.258507,
		0.183396, 0.977532, -0.103912,
		37.014439, 32.001160, 32.624599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434284, 31.333527, 33.136841>,  <36.886063, 31.316889, 32.697338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434284, 31.333527, 33.136841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341034, 31.718992, 33.084675>,  <37.285084, 31.950272, 33.053375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.341034, 31.718992, 33.084675>,  <37.434284, 31.333527, 33.136841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341034, 31.718992, 33.084675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328592, 0.204285, 0.922114,
		0.915249, 0.172114, -0.364275,
		-0.233125, 0.963662, -0.130417,
		37.271095, 32.008091, 33.045551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036053, 31.718174, 33.330135>,  <37.434284, 31.333527, 33.136841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036053, 31.718174, 33.330135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710812, 31.947929, 33.367966>,  <37.515667, 32.085781, 33.390663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.710812, 31.947929, 33.367966>,  <38.036053, 31.718174, 33.330135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710812, 31.947929, 33.367966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221391, 0.154863, 0.962810,
		0.538380, 0.803801, -0.253083,
		-0.813101, 0.574388, 0.094580,
		37.466881, 32.120247, 33.396339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221516, 32.338783, 33.673000>,  <38.036053, 31.718174, 33.330135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221516, 32.338783, 33.673000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.824665, 32.322559, 33.720398>,  <37.586555, 32.312824, 33.748837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.824665, 32.322559, 33.720398>,  <38.221516, 32.338783, 33.673000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824665, 32.322559, 33.720398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087585, 0.451616, 0.887903,
		-0.089524, 0.891290, -0.444508,
		-0.992126, -0.040556, 0.118494,
		37.527027, 32.310394, 33.755947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611244, 32.865700, 33.234436>,  <38.221516, 32.338783, 33.673000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611244, 32.865700, 33.234436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.922615, 33.116795, 33.234524>,  <39.109436, 33.267452, 33.234577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.922615, 33.116795, 33.234524>,  <38.611244, 32.865700, 33.234436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922615, 33.116795, 33.234524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153802, -0.190378, -0.969588,
		-0.608602, 0.754788, -0.244742,
		0.778427, 0.627735, 0.000224,
		39.156143, 33.305115, 33.234592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496841, 33.307911, 32.674786>,  <38.611244, 32.865700, 33.234436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496841, 33.307911, 32.674786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890263, 33.334263, 32.742050>,  <39.126316, 33.350075, 32.782410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.890263, 33.334263, 32.742050>,  <38.496841, 33.307911, 32.674786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890263, 33.334263, 32.742050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178592, -0.215966, -0.959929,
		-0.026925, 0.974176, -0.224181,
		0.983555, 0.065883, 0.168165,
		39.185329, 33.354027, 32.792500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750607, 33.708733, 32.131508>,  <38.496841, 33.307911, 32.674786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750607, 33.708733, 32.131508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051270, 33.499199, 32.291813>,  <39.231667, 33.373478, 32.387997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.051270, 33.499199, 32.291813>,  <38.750607, 33.708733, 32.131508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051270, 33.499199, 32.291813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340784, -0.211779, -0.915978,
		0.564697, 0.825072, 0.019331,
		0.751654, -0.523838, 0.400762,
		39.276764, 33.342049, 32.412041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177441, 33.821316, 31.733877>,  <38.750607, 33.708733, 32.131508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177441, 33.821316, 31.733877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.378281, 33.509892, 31.884466>,  <39.498787, 33.323036, 31.974819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.378281, 33.509892, 31.884466>,  <39.177441, 33.821316, 31.733877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378281, 33.509892, 31.884466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339182, -0.223157, -0.913869,
		0.795517, 0.586550, 0.152026,
		0.502104, -0.778563, 0.376473,
		39.528912, 33.276321, 31.997408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902454, 33.819347, 31.354095>,  <39.177441, 33.821316, 31.733877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902454, 33.819347, 31.354095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.813087, 33.453522, 31.488947>,  <39.759468, 33.234028, 31.569859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.813087, 33.453522, 31.488947>,  <39.902454, 33.819347, 31.354095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813087, 33.453522, 31.488947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190932, -0.380233, -0.904969,
		0.955841, -0.137813, 0.259569,
		-0.223414, -0.914566, 0.337129,
		39.746063, 33.179153, 31.590086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469307, 33.442471, 31.327770>,  <39.902454, 33.819347, 31.354095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469307, 33.442471, 31.327770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.202400, 33.144566, 31.331535>,  <40.042255, 32.965824, 31.333794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.202400, 33.144566, 31.331535>,  <40.469307, 33.442471, 31.327770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202400, 33.144566, 31.331535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324069, -0.301679, -0.896643,
		0.670626, -0.595247, 0.442654,
		-0.667263, -0.744762, 0.009413,
		40.002220, 32.921139, 31.334358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733459, 33.036869, 30.951279>,  <40.469307, 33.442471, 31.327770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733459, 33.036869, 30.951279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.377834, 32.856976, 30.985477>,  <40.164459, 32.749039, 31.005997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.377834, 32.856976, 30.985477>,  <40.733459, 33.036869, 30.951279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377834, 32.856976, 30.985477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123095, -0.414738, -0.901577,
		0.440925, -0.791034, 0.424087,
		-0.889062, -0.449731, 0.085496,
		40.111115, 32.722057, 31.011126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796566, 32.278336, 30.691319>,  <40.733459, 33.036869, 30.951279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796566, 32.278336, 30.691319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.419857, 32.412384, 30.680330>,  <40.193832, 32.492813, 30.673737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.419857, 32.412384, 30.680330>,  <40.796566, 32.278336, 30.691319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419857, 32.412384, 30.680330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126521, -0.428883, -0.894456,
		-0.311532, -0.838900, 0.446311,
		-0.941775, 0.335120, -0.027473,
		40.137325, 32.512920, 30.672089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456631, 31.818304, 30.280014>,  <40.796566, 32.278336, 30.691319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456631, 31.818304, 30.280014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.229599, 32.147629, 30.278679>,  <40.093380, 32.345222, 30.277878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.229599, 32.147629, 30.278679>,  <40.456631, 31.818304, 30.280014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229599, 32.147629, 30.278679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383958, -0.268279, -0.883518,
		-0.728306, -0.500184, 0.468386,
		-0.567580, 0.823312, -0.003339,
		40.059326, 32.394623, 30.277678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870220, 31.462034, 30.031017>,  <40.456631, 31.818304, 30.280014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870220, 31.462034, 30.031017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.843975, 31.856247, 29.968513>,  <39.828228, 32.092773, 29.931011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.843975, 31.856247, 29.968513>,  <39.870220, 31.462034, 30.031017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843975, 31.856247, 29.968513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311455, -0.169003, -0.935112,
		-0.947993, -0.012688, 0.318039,
		-0.065614, 0.985534, -0.156262,
		39.824291, 32.151909, 29.921635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254097, 31.600689, 29.711769>,  <39.870220, 31.462034, 30.031017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254097, 31.600689, 29.711769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.462360, 31.932940, 29.632799>,  <39.587318, 32.132290, 29.585417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.462360, 31.932940, 29.632799>,  <39.254097, 31.600689, 29.711769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462360, 31.932940, 29.632799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065326, -0.191801, -0.979257,
		-0.851262, 0.522755, -0.045601,
		0.520658, 0.830626, -0.197423,
		39.618557, 32.182129, 29.573572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940372, 31.891588, 29.067671>,  <39.254097, 31.600689, 29.711769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940372, 31.891588, 29.067671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.301144, 32.063412, 29.085546>,  <39.517609, 32.166504, 29.096272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.301144, 32.063412, 29.085546>,  <38.940372, 31.891588, 29.067671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301144, 32.063412, 29.085546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068385, -0.039874, -0.996862,
		-0.426428, 0.902158, -0.065339,
		0.901933, 0.429558, 0.044690,
		39.571724, 32.192280, 29.098953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965145, 32.513851, 28.675537>,  <38.940372, 31.891588, 29.067671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965145, 32.513851, 28.675537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.328686, 32.347519, 28.688593>,  <39.546810, 32.247719, 28.696426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.328686, 32.347519, 28.688593>,  <38.965145, 32.513851, 28.675537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328686, 32.347519, 28.688593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019024, -0.036850, -0.999140,
		0.416676, 0.908695, -0.025581,
		0.908856, -0.415831, 0.032642,
		39.601341, 32.222771, 28.698385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447163, 32.941360, 28.195541>,  <38.965145, 32.513851, 28.675537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447163, 32.941360, 28.195541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.638382, 32.600101, 28.279072>,  <39.753113, 32.395348, 28.329189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.638382, 32.600101, 28.279072>,  <39.447163, 32.941360, 28.195541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638382, 32.600101, 28.279072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200759, -0.125323, -0.971591,
		0.855082, 0.506391, 0.111367,
		0.478048, -0.853148, 0.208824,
		39.781796, 32.344158, 28.341719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009426, 32.900894, 27.742168>,  <39.447163, 32.941360, 28.195541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009426, 32.900894, 27.742168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.926361, 32.529636, 27.865728>,  <39.876522, 32.306881, 27.939863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.926361, 32.529636, 27.865728>,  <40.009426, 32.900894, 27.742168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926361, 32.529636, 27.865728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194369, -0.348637, -0.916882,
		0.958695, -0.130363, 0.252803,
		-0.207664, -0.928147, 0.308898,
		39.864063, 32.251194, 27.958397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471146, 32.517155, 27.405598>,  <40.009426, 32.900894, 27.742168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471146, 32.517155, 27.405598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.197983, 32.248650, 27.520868>,  <40.034084, 32.087547, 27.590031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.197983, 32.248650, 27.520868>,  <40.471146, 32.517155, 27.405598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197983, 32.248650, 27.520868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087537, -0.466842, -0.879998,
		0.725240, -0.575732, 0.377571,
		-0.682908, -0.671261, 0.288174,
		39.993111, 32.047272, 27.607321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658779, 31.984688, 27.049570>,  <40.471146, 32.517155, 27.405598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658779, 31.984688, 27.049570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.275196, 31.925589, 27.146368>,  <40.045044, 31.890129, 27.204447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.275196, 31.925589, 27.146368>,  <40.658779, 31.984688, 27.049570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275196, 31.925589, 27.146368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149962, -0.460046, -0.875139,
		0.240632, -0.875515, 0.419010,
		-0.958962, -0.147751, 0.241996,
		39.987507, 31.881264, 27.218967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645332, 31.270813, 26.858530>,  <40.658779, 31.984688, 27.049570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645332, 31.270813, 26.858530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.286945, 31.447533, 26.876686>,  <40.071915, 31.553564, 26.887581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.286945, 31.447533, 26.876686>,  <40.645332, 31.270813, 26.858530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286945, 31.447533, 26.876686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293980, -0.513351, -0.806255,
		-0.332898, -0.735721, 0.589824,
		-0.895966, 0.441797, 0.045393,
		40.018154, 31.580072, 26.890305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142139, 30.718203, 26.577276>,  <40.645332, 31.270813, 26.858530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142139, 30.718203, 26.577276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924065, 31.053444, 26.569729>,  <39.793221, 31.254589, 26.565201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924065, 31.053444, 26.569729>,  <40.142139, 30.718203, 26.577276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924065, 31.053444, 26.569729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530019, -0.362044, -0.766814,
		-0.649500, -0.408057, 0.641591,
		-0.545188, 0.838102, -0.018870,
		39.760509, 31.304874, 26.564068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.390106, 30.574259, 26.503105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.388840, 30.960150, 26.397812>,  <39.388081, 31.191685, 26.334637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.388840, 30.960150, 26.397812>,  <39.390106, 30.574259, 26.503105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388840, 30.960150, 26.397812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622814, -0.207849, -0.754256,
		-0.782364, 0.161558, 0.601503,
		-0.003166, 0.964727, -0.263234,
		39.387890, 31.249567, 26.318842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686634, 30.661106, 26.516323>,  <39.390106, 30.574259, 26.503105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686634, 30.661106, 26.516323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842522, 30.927721, 26.262129>,  <38.936054, 31.087690, 26.109612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842522, 30.927721, 26.262129>,  <38.686634, 30.661106, 26.516323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842522, 30.927721, 26.262129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654228, -0.285277, -0.700430,
		-0.648153, 0.688726, 0.324890,
		0.389721, 0.666538, -0.635487,
		38.959438, 31.127682, 26.071482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097076, 30.925995, 26.039570>,  <38.686634, 30.661106, 26.516323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097076, 30.925995, 26.039570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.445423, 31.041033, 25.880131>,  <38.654430, 31.110056, 25.784468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.445423, 31.041033, 25.880131>,  <38.097076, 30.925995, 26.039570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445423, 31.041033, 25.880131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374185, -0.137926, -0.917040,
		-0.318714, 0.947769, -0.012501,
		0.870866, 0.287596, -0.398599,
		38.706684, 31.127312, 25.760551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937714, 31.476154, 25.474325>,  <38.097076, 30.925995, 26.039570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937714, 31.476154, 25.474325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.294521, 31.307316, 25.409658>,  <38.508606, 31.206013, 25.370859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.294521, 31.307316, 25.409658>,  <37.937714, 31.476154, 25.474325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294521, 31.307316, 25.409658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208490, -0.066889, -0.975735,
		0.401041, 0.904080, -0.147669,
		0.892019, -0.422097, -0.161666,
		38.562126, 31.180687, 25.361158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234650, 31.783545, 24.920149>,  <37.937714, 31.476154, 25.474325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234650, 31.783545, 24.920149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454502, 31.449505, 24.911121>,  <38.586414, 31.249081, 24.905704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454502, 31.449505, 24.911121>,  <38.234650, 31.783545, 24.920149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454502, 31.449505, 24.911121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174357, -0.088252, -0.980720,
		0.817008, 0.542971, -0.194112,
		0.549634, -0.835101, -0.022568,
		38.619392, 31.198975, 24.904350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691631, 31.902107, 24.407625>,  <38.234650, 31.783545, 24.920149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691631, 31.902107, 24.407625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667446, 31.504620, 24.445299>,  <38.652935, 31.266127, 24.467903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.667446, 31.504620, 24.445299>,  <38.691631, 31.902107, 24.407625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667446, 31.504620, 24.445299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113669, -0.086887, -0.989712,
		0.991677, -0.070548, -0.107701,
		-0.060464, -0.993717, 0.094183,
		38.649307, 31.206505, 24.473555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037468, 31.739693, 23.861387>,  <38.691631, 31.902107, 24.407625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037468, 31.739693, 23.861387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.817329, 31.423000, 23.967426>,  <38.685246, 31.232985, 24.031050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.817329, 31.423000, 23.967426>,  <39.037468, 31.739693, 23.861387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817329, 31.423000, 23.967426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127574, -0.234042, -0.963820,
		0.825130, -0.564259, 0.027801,
		-0.550350, -0.791730, 0.265099,
		38.652225, 31.185482, 24.046957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368156, 31.272539, 23.402853>,  <39.037468, 31.739693, 23.861387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368156, 31.272539, 23.402853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.023647, 31.118290, 23.535215>,  <38.816940, 31.025740, 23.614632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.023647, 31.118290, 23.535215>,  <39.368156, 31.272539, 23.402853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023647, 31.118290, 23.535215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295059, -0.150639, -0.943530,
		0.413696, -0.910275, 0.015960,
		-0.861276, -0.385625, 0.330904,
		38.765266, 31.002602, 23.634487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290478, 30.661413, 23.140736>,  <39.368156, 31.272539, 23.402853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290478, 30.661413, 23.140736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.914791, 30.773676, 23.219833>,  <38.689381, 30.841034, 23.267292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.914791, 30.773676, 23.219833>,  <39.290478, 30.661413, 23.140736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914791, 30.773676, 23.219833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239906, -0.124491, -0.962781,
		-0.245594, -0.951700, 0.184255,
		-0.939217, 0.280657, 0.197744,
		38.633026, 30.857872, 23.279158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033001, 30.319384, 22.656645>,  <39.290478, 30.661413, 23.140736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033001, 30.319384, 22.656645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.743519, 30.562286, 22.787786>,  <38.569828, 30.708027, 22.866470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.743519, 30.562286, 22.787786>,  <39.033001, 30.319384, 22.656645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743519, 30.562286, 22.787786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438606, -0.037960, -0.897878,
		-0.532796, -0.793599, 0.293818,
		-0.723708, 0.607256, 0.327852,
		38.526405, 30.744463, 22.886143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434731, 29.975546, 22.473866>,  <39.033001, 30.319384, 22.656645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434731, 29.975546, 22.473866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364227, 30.368982, 22.489275>,  <38.321926, 30.605043, 22.498520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364227, 30.368982, 22.489275>,  <38.434731, 29.975546, 22.473866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364227, 30.368982, 22.489275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244918, -0.005916, -0.969526,
		-0.953388, -0.180319, 0.241942,
		-0.176256, 0.983590, 0.038523,
		38.311352, 30.664059, 22.500832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896946, 30.039320, 22.012957>,  <38.434731, 29.975546, 22.473866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896946, 30.039320, 22.012957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979187, 30.428028, 22.059246>,  <38.028530, 30.661253, 22.087021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.979187, 30.428028, 22.059246>,  <37.896946, 30.039320, 22.012957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979187, 30.428028, 22.059246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199255, 0.157343, -0.967233,
		-0.958136, 0.175808, 0.225980,
		0.205604, 0.971769, 0.115725,
		38.040867, 30.719559, 22.093964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310978, 30.514812, 21.742847>,  <37.896946, 30.039320, 22.012957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310978, 30.514812, 21.742847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.653603, 30.720881, 21.730843>,  <37.859177, 30.844522, 21.723640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.653603, 30.720881, 21.730843>,  <37.310978, 30.514812, 21.742847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653603, 30.720881, 21.730843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177181, 0.238977, -0.954723,
		-0.484674, 0.823097, 0.295977,
		0.856561, 0.515171, -0.030011,
		37.910572, 30.875431, 21.721840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159348, 31.184694, 21.553934>,  <37.310978, 30.514812, 21.742847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159348, 31.184694, 21.553934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530300, 31.084455, 21.442823>,  <37.752872, 31.024311, 21.376156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.530300, 31.084455, 21.442823>,  <37.159348, 31.184694, 21.553934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530300, 31.084455, 21.442823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207891, 0.272110, -0.939541,
		0.311035, 0.929062, 0.200252,
		0.927383, -0.250599, -0.277779,
		37.808514, 31.009275, 21.359489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378750, 31.749344, 21.182966>,  <37.159348, 31.184694, 21.553934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378750, 31.749344, 21.182966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678249, 31.502968, 21.084988>,  <37.857948, 31.355143, 21.026199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.678249, 31.502968, 21.084988>,  <37.378750, 31.749344, 21.182966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678249, 31.502968, 21.084988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034721, 0.405470, -0.913449,
		0.661948, 0.675436, 0.324979,
		0.748745, -0.615939, -0.244948,
		37.902874, 31.318186, 21.011503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858864, 32.084667, 20.804403>,  <37.378750, 31.749344, 21.182966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858864, 32.084667, 20.804403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.989033, 31.721325, 20.699337>,  <38.067135, 31.503321, 20.636297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.989033, 31.721325, 20.699337>,  <37.858864, 32.084667, 20.804403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989033, 31.721325, 20.699337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032102, 0.267014, -0.963158,
		0.945022, 0.321869, 0.057734,
		0.325427, -0.908352, -0.262667,
		38.086662, 31.448820, 20.620537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305649, 32.192001, 20.297785>,  <37.858864, 32.084667, 20.804403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305649, 32.192001, 20.297785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.192867, 31.812271, 20.242231>,  <38.125198, 31.584435, 20.208900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.192867, 31.812271, 20.242231>,  <38.305649, 32.192001, 20.297785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192867, 31.812271, 20.242231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033950, 0.154538, -0.987403,
		0.958826, -0.273691, -0.075803,
		-0.281958, -0.949322, -0.138883,
		38.108280, 31.527475, 20.200567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683170, 32.042488, 19.758457>,  <38.305649, 32.192001, 20.297785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683170, 32.042488, 19.758457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.385315, 31.775503, 19.757307>,  <38.206600, 31.615313, 19.756617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.385315, 31.775503, 19.757307>,  <38.683170, 32.042488, 19.758457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385315, 31.775503, 19.757307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041623, 0.050731, -0.997845,
		0.666171, -0.742912, -0.065559,
		-0.744637, -0.667464, -0.002873,
		38.161922, 31.575264, 19.756445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829769, 31.444256, 19.289347>,  <38.683170, 32.042488, 19.758457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829769, 31.444256, 19.289347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.430134, 31.457760, 19.299736>,  <38.190353, 31.465862, 19.305969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.430134, 31.457760, 19.299736>,  <38.829769, 31.444256, 19.289347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430134, 31.457760, 19.299736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029596, -0.111684, -0.993303,
		-0.030631, -0.993170, 0.112581,
		-0.999092, 0.033758, 0.025973,
		38.130405, 31.467888, 19.307528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597786, 31.143372, 18.662376>,  <38.829769, 31.444256, 19.289347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597786, 31.143372, 18.662376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239368, 31.270229, 18.786646>,  <38.024319, 31.346344, 18.861208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.239368, 31.270229, 18.786646>,  <38.597786, 31.143372, 18.662376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239368, 31.270229, 18.786646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418517, -0.369937, -0.829452,
		-0.148129, -0.873250, 0.464212,
		-0.896048, 0.317146, 0.310671,
		37.970554, 31.365374, 18.879847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123604, 30.558846, 18.694056>,  <38.597786, 31.143372, 18.662376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123604, 30.558846, 18.694056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920879, 30.900476, 18.647242>,  <37.799244, 31.105455, 18.619152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920879, 30.900476, 18.647242>,  <38.123604, 30.558846, 18.694056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920879, 30.900476, 18.647242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349459, -0.327654, -0.877793,
		-0.788051, -0.403973, 0.464522,
		-0.506807, 0.854078, -0.117036,
		37.768837, 31.156700, 18.612131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406647, 30.393677, 18.497137>,  <38.123604, 30.558846, 18.694056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406647, 30.393677, 18.497137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.472992, 30.769243, 18.376522>,  <37.512798, 30.994583, 18.304153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.472992, 30.769243, 18.376522>,  <37.406647, 30.393677, 18.497137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472992, 30.769243, 18.376522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496509, -0.184680, -0.848158,
		-0.852038, 0.290393, 0.435550,
		0.165862, 0.938917, -0.301538,
		37.522751, 31.050919, 18.286060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046959, 30.529266, 17.829447>,  <37.406647, 30.393677, 18.497137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046959, 30.529266, 17.829447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246273, 30.207733, 17.959406>,  <37.365864, 30.014812, 18.037380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246273, 30.207733, 17.959406>,  <37.046959, 30.529266, 17.829447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246273, 30.207733, 17.959406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785711, 0.260230, -0.561194,
		0.366559, 0.534912, 0.761251,
		0.498289, -0.803834, 0.324897,
		37.395760, 29.966583, 18.056875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302849, 30.767635, 17.853605>,  <37.046959, 30.529266, 17.829447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302849, 30.767635, 17.853605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.966766, 30.984381, 17.861923>,  <35.765118, 31.114428, 17.866915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.966766, 30.984381, 17.861923>,  <36.302849, 30.767635, 17.853605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966766, 30.984381, 17.861923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057636, 0.051107, 0.997029,
		0.539192, 0.838910, -0.074172,
		-0.840208, 0.541865, 0.020795,
		35.714703, 31.146940, 17.868162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286301, 31.455296, 18.209564>,  <36.302849, 30.767635, 17.853605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286301, 31.455296, 18.209564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.917995, 31.300869, 18.231987>,  <35.697010, 31.208212, 18.245440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.917995, 31.300869, 18.231987>,  <36.286301, 31.455296, 18.209564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917995, 31.300869, 18.231987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016272, 0.105555, 0.994280,
		-0.389777, 0.916411, -0.090909,
		-0.920765, -0.386069, 0.056055,
		35.641766, 31.185049, 18.248804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835323, 31.978716, 18.593000>,  <36.286301, 31.455296, 18.209564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835323, 31.978716, 18.593000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670177, 31.615919, 18.626240>,  <35.571091, 31.398241, 18.646183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.670177, 31.615919, 18.626240>,  <35.835323, 31.978716, 18.593000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670177, 31.615919, 18.626240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056100, 0.065737, 0.996259,
		-0.909061, 0.415986, 0.023742,
		-0.412869, -0.906992, 0.083096,
		35.546318, 31.343822, 18.651169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280079, 32.001419, 19.178572>,  <35.835323, 31.978716, 18.593000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280079, 32.001419, 19.178572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306492, 31.604979, 19.132345>,  <35.322342, 31.367113, 19.104609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.306492, 31.604979, 19.132345>,  <35.280079, 32.001419, 19.178572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306492, 31.604979, 19.132345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152791, -0.124497, 0.980385,
		-0.986050, -0.047083, -0.159653,
		0.066035, -0.991102, -0.115566,
		35.326302, 31.307648, 19.097675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677048, 31.707792, 19.492096>,  <35.280079, 32.001419, 19.178572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677048, 31.707792, 19.492096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937386, 31.404610, 19.474615>,  <35.093586, 31.222700, 19.464127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937386, 31.404610, 19.474615>,  <34.677048, 31.707792, 19.492096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937386, 31.404610, 19.474615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195359, -0.222820, 0.955084,
		-0.733649, -0.613071, -0.293094,
		0.650841, -0.757955, -0.043703,
		35.132637, 31.177223, 19.461504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297707, 31.192801, 19.699270>,  <34.677048, 31.707792, 19.492096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297707, 31.192801, 19.699270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.683090, 31.098791, 19.750658>,  <34.914322, 31.042385, 19.781490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.683090, 31.098791, 19.750658>,  <34.297707, 31.192801, 19.699270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683090, 31.098791, 19.750658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163589, -0.136554, 0.977032,
		-0.212084, -0.962349, -0.170012,
		0.963462, -0.235025, 0.128469,
		34.972130, 31.028284, 19.789200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300720, 30.540018, 20.001099>,  <34.297707, 31.192801, 19.699270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300720, 30.540018, 20.001099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640381, 30.717741, 20.115314>,  <34.844177, 30.824375, 20.183844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.640381, 30.717741, 20.115314>,  <34.300720, 30.540018, 20.001099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640381, 30.717741, 20.115314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229512, -0.176498, 0.957169,
		0.475673, -0.878317, -0.047900,
		0.849152, 0.444306, 0.285539,
		34.895126, 30.851032, 20.200975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508957, 30.139805, 20.468981>,  <34.300720, 30.540018, 20.001099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508957, 30.139805, 20.468981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.736401, 30.460478, 20.542723>,  <34.872868, 30.652882, 20.586967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.736401, 30.460478, 20.542723>,  <34.508957, 30.139805, 20.468981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736401, 30.460478, 20.542723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169567, -0.105068, 0.979902,
		0.804938, -0.588446, 0.076196,
		0.568613, 0.801681, 0.184355,
		34.906986, 30.700981, 20.598030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066475, 29.976633, 20.969715>,  <34.508957, 30.139805, 20.468981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066475, 29.976633, 20.969715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.045689, 30.375584, 20.989887>,  <35.033218, 30.614954, 21.001989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.045689, 30.375584, 20.989887>,  <35.066475, 29.976633, 20.969715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045689, 30.375584, 20.989887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028813, -0.048978, 0.998384,
		0.998233, 0.053335, -0.026192,
		-0.051966, 0.997375, 0.050428,
		35.030098, 30.674797, 21.005016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429893, 30.190533, 21.440479>,  <35.066475, 29.976633, 20.969715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429893, 30.190533, 21.440479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260914, 30.552990, 21.448870>,  <35.159527, 30.770466, 21.453905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260914, 30.552990, 21.448870>,  <35.429893, 30.190533, 21.440479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260914, 30.552990, 21.448870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016741, -0.015340, 0.999742,
		0.906234, 0.422688, -0.008690,
		-0.422446, 0.906145, 0.020978,
		35.134182, 30.824833, 21.455164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864059, 30.693697, 21.729208>,  <35.429893, 30.190533, 21.440479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864059, 30.693697, 21.729208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.503777, 30.857191, 21.788073>,  <35.287605, 30.955288, 21.823391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.503777, 30.857191, 21.788073>,  <35.864059, 30.693697, 21.729208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503777, 30.857191, 21.788073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201753, 0.093568, 0.974957,
		0.384730, 0.907844, -0.166741,
		-0.900710, 0.408736, 0.147161,
		35.233562, 30.979813, 21.832220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977402, 31.374573, 21.967154>,  <35.864059, 30.693697, 21.729208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977402, 31.374573, 21.967154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614288, 31.256004, 22.085854>,  <35.396420, 31.184864, 22.157074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614288, 31.256004, 22.085854>,  <35.977402, 31.374573, 21.967154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614288, 31.256004, 22.085854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249357, 0.187492, 0.950088,
		-0.337262, 0.936473, -0.096288,
		-0.907786, -0.296419, 0.296750,
		35.341953, 31.167078, 22.174879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864021, 31.740271, 22.447292>,  <35.977402, 31.374573, 21.967154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864021, 31.740271, 22.447292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563251, 31.494741, 22.543489>,  <35.382790, 31.347424, 22.601208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563251, 31.494741, 22.543489>,  <35.864021, 31.740271, 22.447292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563251, 31.494741, 22.543489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340916, -0.049808, 0.938773,
		-0.564263, 0.787871, 0.246714,
		-0.751920, -0.613823, 0.240493,
		35.337677, 31.310595, 22.615637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648636, 31.986597, 23.112761>,  <35.864021, 31.740271, 22.447292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648636, 31.986597, 23.112761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502338, 31.614515, 23.100414>,  <35.414562, 31.391266, 23.093006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.502338, 31.614515, 23.100414>,  <35.648636, 31.986597, 23.112761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502338, 31.614515, 23.100414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227795, -0.121622, 0.966084,
		-0.902409, 0.346306, 0.256378,
		-0.365741, -0.930205, -0.030866,
		35.392616, 31.335453, 23.091154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355438, 31.857056, 23.713223>,  <35.648636, 31.986597, 23.112761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355438, 31.857056, 23.713223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.432587, 31.490248, 23.573582>,  <35.478874, 31.270163, 23.489798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.432587, 31.490248, 23.573582>,  <35.355438, 31.857056, 23.713223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432587, 31.490248, 23.573582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490399, -0.218075, 0.843772,
		-0.849888, -0.333938, 0.407647,
		0.192870, -0.917022, -0.349102,
		35.490448, 31.215141, 23.468851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094902, 31.433455, 24.242062>,  <35.355438, 31.857056, 23.713223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094902, 31.433455, 24.242062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.346912, 31.196089, 24.041693>,  <35.498119, 31.053669, 23.921471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.346912, 31.196089, 24.041693>,  <35.094902, 31.433455, 24.242062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346912, 31.196089, 24.041693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516074, -0.162067, 0.841072,
		-0.580288, -0.788412, 0.204140,
		0.630026, -0.593415, -0.500924,
		35.535919, 31.018064, 23.891415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126274, 30.881329, 24.701014>,  <35.094902, 31.433455, 24.242062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126274, 30.881329, 24.701014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.441521, 30.833820, 24.459429>,  <35.630669, 30.805315, 24.314478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.441521, 30.833820, 24.459429>,  <35.126274, 30.881329, 24.701014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441521, 30.833820, 24.459429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594206, -0.109230, 0.796861,
		-0.160614, -0.986895, -0.015512,
		0.788113, -0.118770, -0.603963,
		35.677956, 30.798189, 24.278240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306931, 30.296030, 24.928375>,  <35.126274, 30.881329, 24.701014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306931, 30.296030, 24.928375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.607147, 30.485788, 24.744360>,  <35.787277, 30.599644, 24.633951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.607147, 30.485788, 24.744360>,  <35.306931, 30.296030, 24.928375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607147, 30.485788, 24.744360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559958, -0.086900, 0.823951,
		0.350902, -0.876012, -0.330864,
		0.750543, 0.474396, -0.460037,
		35.832310, 30.628107, 24.606348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774609, 29.993286, 25.246868>,  <35.306931, 30.296030, 24.928375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774609, 29.993286, 25.246868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.950104, 30.314316, 25.085182>,  <36.055401, 30.506933, 24.988171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.950104, 30.314316, 25.085182>,  <35.774609, 29.993286, 25.246868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950104, 30.314316, 25.085182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476621, 0.173503, 0.861818,
		0.761803, -0.570767, -0.306401,
		0.438736, 0.802572, -0.404215,
		36.081726, 30.555088, 24.963919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527988, 29.926563, 25.306606>,  <35.774609, 29.993286, 25.246868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527988, 29.926563, 25.306606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422787, 30.312460, 25.302483>,  <36.359665, 30.543997, 25.300009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.422787, 30.312460, 25.302483>,  <36.527988, 29.926563, 25.306606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422787, 30.312460, 25.302483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359218, 0.107832, 0.927003,
		0.895429, 0.240100, -0.374912,
		-0.263001, 0.964741, -0.010308,
		36.343887, 30.601883, 25.299391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057823, 30.314583, 25.620724>,  <36.527988, 29.926563, 25.306606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057823, 30.314583, 25.620724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.792381, 30.613794, 25.624264>,  <36.633118, 30.793322, 25.626387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.792381, 30.613794, 25.624264>,  <37.057823, 30.314583, 25.620724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792381, 30.613794, 25.624264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214243, 0.178703, 0.960294,
		0.716748, 0.639152, -0.278848,
		-0.663606, 0.748030, 0.008848,
		36.593300, 30.838203, 25.626919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.892185, 31.895325, 28.778252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.505100, 31.994980, 28.762918>,  <40.272850, 32.054771, 28.753717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.505100, 31.994980, 28.762918>,  <40.892185, 31.895325, 28.778252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505100, 31.994980, 28.762918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058604, 0.370279, 0.927070,
		0.245162, 0.894888, -0.372923,
		-0.967709, 0.249137, -0.038334,
		40.214787, 32.069721, 28.751419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842525, 32.492031, 29.148605>,  <40.892185, 31.895325, 28.778252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842525, 32.492031, 29.148605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.449852, 32.417839, 29.131182>,  <40.214249, 32.373325, 29.120728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.449852, 32.417839, 29.131182>,  <40.842525, 32.492031, 29.148605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449852, 32.417839, 29.131182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097477, 0.292510, 0.951281,
		-0.163703, 0.938102, -0.305232,
		-0.981682, -0.185481, -0.043559,
		40.155346, 32.362194, 29.118114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429749, 33.137497, 29.270996>,  <40.842525, 32.492031, 29.148605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429749, 33.137497, 29.270996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.176498, 32.848595, 29.382349>,  <40.024548, 32.675251, 29.449162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.176498, 32.848595, 29.382349>,  <40.429749, 33.137497, 29.270996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176498, 32.848595, 29.382349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144612, 0.463681, 0.874121,
		-0.760423, 0.513169, -0.398014,
		-0.633123, -0.722259, 0.278383,
		39.986561, 32.631916, 29.465864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842876, 33.487499, 29.686018>,  <40.429749, 33.137497, 29.270996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842876, 33.487499, 29.686018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850395, 33.094120, 29.758106>,  <39.854908, 32.858093, 29.801359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.850395, 33.094120, 29.758106>,  <39.842876, 33.487499, 29.686018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850395, 33.094120, 29.758106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097896, 0.177576, 0.979226,
		-0.995019, -0.036049, -0.092938,
		0.018797, -0.983446, 0.180221,
		39.856033, 32.799088, 29.812172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323330, 33.417294, 30.269239>,  <39.842876, 33.487499, 29.686018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323330, 33.417294, 30.269239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517643, 33.069225, 30.236200>,  <39.634232, 32.860386, 30.216377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.517643, 33.069225, 30.236200>,  <39.323330, 33.417294, 30.269239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517643, 33.069225, 30.236200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066278, -0.130897, 0.989178,
		-0.871564, -0.475049, -0.121260,
		0.485781, -0.870169, -0.082600,
		39.663376, 32.808174, 30.211420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930859, 32.813519, 30.473564>,  <39.323330, 33.417294, 30.269239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930859, 32.813519, 30.473564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.314106, 32.725857, 30.547298>,  <39.544056, 32.673260, 30.591539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.314106, 32.725857, 30.547298>,  <38.930859, 32.813519, 30.473564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314106, 32.725857, 30.547298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211108, -0.105588, 0.971743,
		-0.193505, -0.969959, -0.147432,
		0.958118, -0.219161, 0.184334,
		39.601540, 32.660110, 30.602598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926086, 32.196011, 30.907036>,  <38.930859, 32.813519, 30.473564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926086, 32.196011, 30.907036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.266171, 32.402321, 30.949207>,  <39.470222, 32.526108, 30.974510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.266171, 32.402321, 30.949207>,  <38.926086, 32.196011, 30.907036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266171, 32.402321, 30.949207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093092, -0.049810, 0.994411,
		0.518149, -0.855272, 0.005666,
		0.850209, 0.515780, 0.105428,
		39.521233, 32.557056, 30.980835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093658, 31.958317, 31.544754>,  <38.926086, 32.196011, 30.907036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093658, 31.958317, 31.544754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334579, 32.272366, 31.487045>,  <39.479134, 32.460796, 31.452419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334579, 32.272366, 31.487045>,  <39.093658, 31.958317, 31.544754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334579, 32.272366, 31.487045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024528, 0.162446, 0.986412,
		0.797892, -0.597656, 0.078584,
		0.602301, 0.785123, -0.144274,
		39.515270, 32.507904, 31.443764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539814, 31.945946, 32.093639>,  <39.093658, 31.958317, 31.544754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539814, 31.945946, 32.093639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.591225, 32.314861, 31.947840>,  <39.622070, 32.536209, 31.860359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.591225, 32.314861, 31.947840>,  <39.539814, 31.945946, 32.093639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591225, 32.314861, 31.947840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114133, 0.351354, 0.929260,
		0.985117, -0.161033, -0.060107,
		0.128522, 0.922290, -0.364504,
		39.629780, 32.591549, 31.838490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105942, 32.213558, 32.472446>,  <39.539814, 31.945946, 32.093639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105942, 32.213558, 32.472446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.915363, 32.532509, 32.324291>,  <39.801018, 32.723881, 32.235397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.915363, 32.532509, 32.324291>,  <40.105942, 32.213558, 32.472446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915363, 32.532509, 32.324291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044216, 0.442478, 0.895689,
		0.878091, 0.410370, -0.246074,
		-0.476446, 0.797377, -0.370391,
		39.772430, 32.771721, 32.213173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336231, 32.751324, 32.861702>,  <40.105942, 32.213558, 32.472446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336231, 32.751324, 32.861702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007950, 32.929352, 32.718395>,  <39.810982, 33.036171, 32.632412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007950, 32.929352, 32.718395>,  <40.336231, 32.751324, 32.861702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007950, 32.929352, 32.718395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025618, 0.597751, 0.801272,
		0.570777, 0.666787, -0.479175,
		-0.820705, 0.445072, -0.358264,
		39.761738, 33.062874, 32.610916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490398, 33.486500, 32.946705>,  <40.336231, 32.751324, 32.861702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490398, 33.486500, 32.946705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.095154, 33.430511, 32.921246>,  <39.858009, 33.396919, 32.905972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.095154, 33.430511, 32.921246>,  <40.490398, 33.486500, 32.946705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095154, 33.430511, 32.921246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124120, 0.481777, 0.867459,
		-0.090759, 0.865042, -0.493422,
		-0.988108, -0.139973, -0.063644,
		39.798721, 33.388519, 32.902153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274910, 34.066814, 33.335911>,  <40.490398, 33.486500, 32.946705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274910, 34.066814, 33.335911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955162, 33.827770, 33.311043>,  <39.763313, 33.684341, 33.296120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.955162, 33.827770, 33.311043>,  <40.274910, 34.066814, 33.335911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955162, 33.827770, 33.311043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282433, 0.282407, 0.916776,
		-0.530319, 0.750403, -0.394534,
		-0.799370, -0.597613, -0.062173,
		39.715351, 33.648487, 33.292393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813164, 34.442192, 33.674896>,  <40.274910, 34.066814, 33.335911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813164, 34.442192, 33.674896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.701229, 34.058914, 33.651031>,  <39.634068, 33.828949, 33.636711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.701229, 34.058914, 33.651031>,  <39.813164, 34.442192, 33.674896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701229, 34.058914, 33.651031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263321, 0.016844, 0.964561,
		-0.923229, 0.285633, -0.257025,
		-0.279840, -0.958191, -0.059662,
		39.617279, 33.771458, 33.633133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168678, 34.330502, 34.126850>,  <39.813164, 34.442192, 33.674896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168678, 34.330502, 34.126850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.448208, 34.613037, 34.171986>,  <39.615925, 34.782558, 34.199066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.448208, 34.613037, 34.171986>,  <39.168678, 34.330502, 34.126850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448208, 34.613037, 34.171986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415997, 0.529661, -0.739193,
		-0.581886, 0.469625, 0.663974,
		0.698824, 0.706337, 0.112840,
		39.657856, 34.824940, 34.205837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800793, 34.894993, 34.326546>,  <39.168678, 34.330502, 34.126850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800793, 34.894993, 34.326546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.133739, 35.041634, 34.160282>,  <39.333508, 35.129620, 34.060524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.133739, 35.041634, 34.160282>,  <38.800793, 34.894993, 34.326546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133739, 35.041634, 34.160282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546102, 0.414568, -0.727946,
		-0.094548, 0.832909, 0.545274,
		0.832366, 0.366601, -0.415657,
		39.383450, 35.151615, 34.035583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716045, 35.686958, 34.241848>,  <38.800793, 34.894993, 34.326546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716045, 35.686958, 34.241848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.994408, 35.568043, 33.980366>,  <39.161427, 35.496693, 33.823479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.994408, 35.568043, 33.980366>,  <38.716045, 35.686958, 34.241848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994408, 35.568043, 33.980366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373590, 0.627538, -0.683101,
		0.613303, 0.719593, 0.325645,
		0.695909, -0.297290, -0.653704,
		39.203182, 35.478855, 33.784256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984100, 36.267540, 33.971355>,  <38.716045, 35.686958, 34.241848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984100, 36.267540, 33.971355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.087158, 35.977711, 33.715664>,  <39.148991, 35.803814, 33.562248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.087158, 35.977711, 33.715664>,  <38.984100, 36.267540, 33.971355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087158, 35.977711, 33.715664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405030, 0.519646, -0.752276,
		0.877252, 0.452723, -0.159593,
		0.257640, -0.724576, -0.639227,
		39.164452, 35.760338, 33.523895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116035, 36.610924, 33.331638>,  <38.984100, 36.267540, 33.971355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116035, 36.610924, 33.331638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.063927, 36.234947, 33.205433>,  <39.032661, 36.009361, 33.129711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.063927, 36.234947, 33.205433>,  <39.116035, 36.610924, 33.331638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063927, 36.234947, 33.205433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389713, 0.341154, -0.855416,
		0.911676, 0.011526, -0.410747,
		-0.130268, -0.939937, -0.315514,
		39.024845, 35.952965, 33.110779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464458, 36.545803, 32.670464>,  <39.116035, 36.610924, 33.331638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464458, 36.545803, 32.670464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.173725, 36.271523, 32.686077>,  <38.999283, 36.106953, 32.695446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.173725, 36.271523, 32.686077>,  <39.464458, 36.545803, 32.670464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173725, 36.271523, 32.686077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389155, 0.364337, -0.846060,
		0.565921, -0.630138, -0.531657,
		-0.726837, -0.685700, 0.039035,
		38.955673, 36.065811, 32.697788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382729, 36.383213, 31.858276>,  <39.464458, 36.545803, 32.670464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382729, 36.383213, 31.858276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076218, 36.193901, 32.032093>,  <38.892311, 36.080315, 32.136383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.076218, 36.193901, 32.032093>,  <39.382729, 36.383213, 31.858276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076218, 36.193901, 32.032093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412199, -0.156674, -0.897522,
		0.492862, -0.866866, -0.075031,
		-0.766276, -0.473282, 0.434540,
		38.846336, 36.051918, 32.162457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252506, 35.769123, 31.473757>,  <39.382729, 36.383213, 31.858276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252506, 35.769123, 31.473757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.912033, 35.861706, 31.662186>,  <38.707748, 35.917255, 31.775244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.912033, 35.861706, 31.662186>,  <39.252506, 35.769123, 31.473757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912033, 35.861706, 31.662186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497826, -0.071674, -0.864310,
		-0.166294, -0.970199, 0.176237,
		-0.851185, 0.231465, 0.471071,
		38.656677, 35.931145, 31.803507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705654, 35.328995, 31.187698>,  <39.252506, 35.769123, 31.473757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705654, 35.328995, 31.187698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.508030, 35.614464, 31.386320>,  <38.389454, 35.785748, 31.505493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.508030, 35.614464, 31.386320>,  <38.705654, 35.328995, 31.187698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508030, 35.614464, 31.386320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583421, 0.151302, -0.797953,
		-0.644609, -0.683941, 0.341620,
		-0.494065, 0.713675, 0.496556,
		38.359810, 35.828568, 31.535286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088348, 35.163761, 31.203939>,  <38.705654, 35.328995, 31.187698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088348, 35.163761, 31.203939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.095573, 35.562016, 31.240564>,  <38.099911, 35.800968, 31.262539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.095573, 35.562016, 31.240564>,  <38.088348, 35.163761, 31.203939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095573, 35.562016, 31.240564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522839, 0.087466, -0.847932,
		-0.852240, -0.032554, 0.522137,
		0.018065, 0.995635, 0.091563,
		38.100994, 35.860706, 31.268034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448082, 35.250229, 31.099482>,  <38.088348, 35.163761, 31.203939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448082, 35.250229, 31.099482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.628658, 35.601780, 31.037807>,  <37.737003, 35.812710, 31.000803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.628658, 35.601780, 31.037807>,  <37.448082, 35.250229, 31.099482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628658, 35.601780, 31.037807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543217, 0.133609, -0.828893,
		-0.707898, 0.457949, 0.537739,
		0.451438, 0.878881, -0.154184,
		37.764088, 35.865444, 30.991552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877411, 35.647942, 30.931988>,  <37.448082, 35.250229, 31.099482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877411, 35.647942, 30.931988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.221420, 35.794022, 30.789444>,  <37.427826, 35.881668, 30.703918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.221420, 35.794022, 30.789444>,  <36.877411, 35.647942, 30.931988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221420, 35.794022, 30.789444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449524, 0.211823, -0.867790,
		-0.241428, 0.906511, 0.346337,
		0.860023, 0.365196, -0.356359,
		37.479427, 35.903580, 30.682537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711624, 36.333294, 30.678846>,  <36.877411, 35.647942, 30.931988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711624, 36.333294, 30.678846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.047623, 36.225204, 30.490637>,  <37.249222, 36.160351, 30.377710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.047623, 36.225204, 30.490637>,  <36.711624, 36.333294, 30.678846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047623, 36.225204, 30.490637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461911, 0.098874, -0.881398,
		0.284693, 0.957708, -0.041763,
		0.839993, -0.270219, -0.470524,
		37.299622, 36.144138, 30.349480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954082, 36.898624, 30.186174>,  <36.711624, 36.333294, 30.678846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954082, 36.898624, 30.186174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.126873, 36.554142, 30.079058>,  <37.230549, 36.347450, 30.014788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.126873, 36.554142, 30.079058>,  <36.954082, 36.898624, 30.186174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126873, 36.554142, 30.079058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282785, 0.152615, -0.946964,
		0.856403, 0.484798, -0.177610,
		0.431980, -0.861208, -0.267793,
		37.256466, 36.295780, 29.998720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764797, 37.489933, 29.873053>,  <36.954082, 36.898624, 30.186174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764797, 37.489933, 29.873053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.391582, 37.633110, 29.858555>,  <36.167652, 37.719017, 29.849855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.391582, 37.633110, 29.858555>,  <36.764797, 37.489933, 29.873053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391582, 37.633110, 29.858555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024032, 0.162529, 0.986411,
		0.358970, 0.919490, -0.160248,
		-0.933040, 0.357943, -0.036246,
		36.111671, 37.740494, 29.847681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754971, 38.096630, 30.267458>,  <36.764797, 37.489933, 29.873053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754971, 38.096630, 30.267458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.381546, 37.953323, 30.263231>,  <36.157494, 37.867340, 30.260695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.381546, 37.953323, 30.263231>,  <36.754971, 38.096630, 30.267458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381546, 37.953323, 30.263231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002832, -0.022108, 0.999752,
		-0.358413, 0.933357, 0.019624,
		-0.933559, -0.358269, -0.010567,
		36.101479, 37.845844, 30.260061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403969, 38.434044, 30.753071>,  <36.754971, 38.096630, 30.267458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403969, 38.434044, 30.753071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.170540, 38.110817, 30.720913>,  <36.030483, 37.916878, 30.701618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.170540, 38.110817, 30.720913>,  <36.403969, 38.434044, 30.753071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170540, 38.110817, 30.720913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119354, -0.012576, 0.992772,
		-0.803242, 0.588949, -0.089107,
		-0.583572, -0.808072, -0.080395,
		35.995468, 37.868397, 30.696795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819489, 38.530388, 31.163784>,  <36.403969, 38.434044, 30.753071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819489, 38.530388, 31.163784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.907230, 38.141087, 31.136454>,  <35.959877, 37.907505, 31.120056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.907230, 38.141087, 31.136454>,  <35.819489, 38.530388, 31.163784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907230, 38.141087, 31.136454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161432, -0.105272, 0.981253,
		-0.962197, -0.204211, -0.180206,
		0.219353, -0.973250, -0.068326,
		35.973038, 37.849113, 31.115955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387489, 38.268436, 31.594158>,  <35.819489, 38.530388, 31.163784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387489, 38.268436, 31.594158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.667847, 37.986820, 31.548414>,  <35.836063, 37.817852, 31.520967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.667847, 37.986820, 31.548414>,  <35.387489, 38.268436, 31.594158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667847, 37.986820, 31.548414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187659, -0.336706, 0.922721,
		-0.688135, -0.625270, -0.368114,
		0.700895, -0.704036, -0.114361,
		35.878117, 37.775608, 31.514107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129627, 37.696941, 32.010624>,  <35.387489, 38.268436, 31.594158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129627, 37.696941, 32.010624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.494793, 37.564106, 31.915703>,  <35.713890, 37.484406, 31.858751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.494793, 37.564106, 31.915703>,  <35.129627, 37.696941, 32.010624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494793, 37.564106, 31.915703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034625, -0.516286, 0.855716,
		-0.406685, -0.789410, -0.459825,
		0.912912, -0.332085, -0.237299,
		35.768665, 37.464481, 31.844513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175919, 36.959118, 32.143631>,  <35.129627, 37.696941, 32.010624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175919, 36.959118, 32.143631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.539364, 37.123192, 32.175056>,  <35.757431, 37.221634, 32.193913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.539364, 37.123192, 32.175056>,  <35.175919, 36.959118, 32.143631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539364, 37.123192, 32.175056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119115, -0.434819, 0.892605,
		0.400292, -0.801675, -0.443941,
		0.908613, 0.410183, 0.078563,
		35.811947, 37.246246, 32.198624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556702, 36.408974, 32.369034>,  <35.175919, 36.959118, 32.143631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556702, 36.408974, 32.369034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.771095, 36.731148, 32.470222>,  <35.899731, 36.924454, 32.530937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.771095, 36.731148, 32.470222>,  <35.556702, 36.408974, 32.369034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771095, 36.731148, 32.470222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118359, -0.368380, 0.922110,
		0.835891, -0.464294, -0.292776,
		0.535983, 0.805436, 0.252973,
		35.931889, 36.972778, 32.546116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134834, 36.145706, 32.767307>,  <35.556702, 36.408974, 32.369034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134834, 36.145706, 32.767307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.100616, 36.524830, 32.890171>,  <36.080086, 36.752304, 32.963890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.100616, 36.524830, 32.890171>,  <36.134834, 36.145706, 32.767307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100616, 36.524830, 32.890171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280373, -0.272932, 0.920271,
		0.956072, 0.164841, -0.242392,
		-0.085542, 0.947806, 0.307159,
		36.074955, 36.809170, 32.982319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498066, 36.145180, 33.300354>,  <36.134834, 36.145706, 32.767307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498066, 36.145180, 33.300354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.332119, 36.503559, 33.363800>,  <36.232552, 36.718586, 33.401867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.332119, 36.503559, 33.363800>,  <36.498066, 36.145180, 33.300354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332119, 36.503559, 33.363800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056080, -0.148816, 0.987273,
		0.908154, 0.418478, 0.011494,
		-0.414863, 0.895952, 0.158616,
		36.207661, 36.772346, 33.411385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931431, 36.421562, 33.896214>,  <36.498066, 36.145180, 33.300354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931431, 36.421562, 33.896214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.571018, 36.594738, 33.885643>,  <36.354771, 36.698643, 33.879303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.571018, 36.594738, 33.885643>,  <36.931431, 36.421562, 33.896214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571018, 36.594738, 33.885643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116972, -0.183876, 0.975965,
		0.417677, 0.882469, 0.216321,
		-0.901035, 0.432942, -0.026423,
		36.300709, 36.724621, 33.877716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991798, 36.750614, 34.565044>,  <36.931431, 36.421562, 33.896214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991798, 36.750614, 34.565044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608437, 36.754040, 34.450935>,  <36.378418, 36.756096, 34.382469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.608437, 36.754040, 34.450935>,  <36.991798, 36.750614, 34.565044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608437, 36.754040, 34.450935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280702, -0.208941, 0.936776,
		-0.051579, 0.977891, 0.202656,
		-0.958408, 0.008568, -0.285273,
		36.320915, 36.756611, 34.365353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.855274, 37.799709, 25.890104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526119, 37.612358, 26.018778>,  <35.328629, 37.499947, 26.095982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526119, 37.612358, 26.018778>,  <35.855274, 37.799709, 25.890104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526119, 37.612358, 26.018778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128048, 0.398710, 0.908093,
		-0.553593, 0.788447, -0.268117,
		-0.822884, -0.468382, 0.321682,
		35.279255, 37.471844, 26.115282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558388, 38.260860, 26.249521>,  <35.855274, 37.799709, 25.890104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558388, 38.260860, 26.249521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408035, 37.928085, 26.412783>,  <35.317825, 37.728420, 26.510740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408035, 37.928085, 26.412783>,  <35.558388, 38.260860, 26.249521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408035, 37.928085, 26.412783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105089, 0.399342, 0.910759,
		-0.920691, 0.385227, -0.062677,
		-0.375879, -0.831941, 0.408154,
		35.295273, 37.678501, 26.535229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033211, 38.502155, 26.898907>,  <35.558388, 38.260860, 26.249521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033211, 38.502155, 26.898907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147385, 38.120529, 26.935305>,  <35.215889, 37.891552, 26.957144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147385, 38.120529, 26.935305>,  <35.033211, 38.502155, 26.898907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147385, 38.120529, 26.935305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173381, 0.144781, 0.974155,
		-0.942584, -0.262284, 0.206743,
		0.285438, -0.954068, 0.090993,
		35.233017, 37.834309, 26.962603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629978, 38.306137, 27.554348>,  <35.033211, 38.502155, 26.898907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629978, 38.306137, 27.554348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911480, 38.027592, 27.498051>,  <35.080383, 37.860466, 27.464272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911480, 38.027592, 27.498051>,  <34.629978, 38.306137, 27.554348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911480, 38.027592, 27.498051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190935, -0.005428, 0.981588,
		-0.684302, -0.717672, 0.129139,
		0.703757, -0.696360, -0.140743,
		35.122608, 37.818684, 27.455828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548618, 37.754936, 28.068451>,  <34.629978, 38.306137, 27.554348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548618, 37.754936, 28.068451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937855, 37.721619, 27.982523>,  <35.171398, 37.701630, 27.930965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937855, 37.721619, 27.982523>,  <34.548618, 37.754936, 28.068451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937855, 37.721619, 27.982523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211809, -0.043563, 0.976340,
		-0.090681, -0.995572, -0.024749,
		0.973095, -0.083294, -0.214822,
		35.229782, 37.696632, 27.918076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754852, 37.291351, 28.425592>,  <34.548618, 37.754936, 28.068451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754852, 37.291351, 28.425592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111187, 37.457325, 28.351566>,  <35.324986, 37.556908, 28.307152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111187, 37.457325, 28.351566>,  <34.754852, 37.291351, 28.425592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111187, 37.457325, 28.351566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238108, -0.079472, 0.967982,
		0.386937, -0.906376, -0.169594,
		0.890833, 0.414930, -0.185064,
		35.378437, 37.581802, 28.296047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213562, 36.919361, 28.926979>,  <34.754852, 37.291351, 28.425592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213562, 36.919361, 28.926979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437138, 37.225010, 28.798166>,  <35.571281, 37.408398, 28.720879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437138, 37.225010, 28.798166>,  <35.213562, 36.919361, 28.926979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437138, 37.225010, 28.798166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318401, 0.160813, 0.934216,
		0.765642, -0.624705, -0.153413,
		0.558939, 0.764122, -0.322032,
		35.604820, 37.454247, 28.701557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857983, 36.753502, 29.169207>,  <35.213562, 36.919361, 28.926979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857983, 36.753502, 29.169207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835617, 37.148647, 29.111235>,  <35.822197, 37.385735, 29.076450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835617, 37.148647, 29.111235>,  <35.857983, 36.753502, 29.169207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835617, 37.148647, 29.111235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255641, 0.154484, 0.954349,
		0.965154, 0.016307, -0.261175,
		-0.055910, 0.987861, -0.144932,
		35.818844, 37.445007, 29.067755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479977, 37.020782, 29.344786>,  <35.857983, 36.753502, 29.169207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479977, 37.020782, 29.344786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204628, 37.309776, 29.370581>,  <36.039417, 37.483173, 29.386057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204628, 37.309776, 29.370581>,  <36.479977, 37.020782, 29.344786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204628, 37.309776, 29.370581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139629, 0.044746, 0.989192,
		0.711791, 0.689937, -0.131682,
		-0.688372, 0.722485, 0.064486,
		35.998116, 37.526524, 29.389927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260078, 36.983265, 29.376781>,  <36.479977, 37.020782, 29.344786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260078, 36.983265, 29.376781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262623, 36.587021, 29.431414>,  <37.264149, 36.349274, 29.464193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262623, 36.587021, 29.431414>,  <37.260078, 36.983265, 29.376781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262623, 36.587021, 29.431414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122968, -0.136322, -0.983003,
		0.992390, -0.010547, -0.122680,
		0.006357, -0.990608, 0.136581,
		37.264530, 36.289837, 29.472387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515827, 36.699459, 28.714291>,  <37.260078, 36.983265, 29.376781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515827, 36.699459, 28.714291> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398399, 36.362656, 28.895329>,  <37.327942, 36.160572, 29.003950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398399, 36.362656, 28.895329>,  <37.515827, 36.699459, 28.714291>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398399, 36.362656, 28.895329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152385, -0.426181, -0.891711,
		0.943715, -0.330744, -0.003197,
		-0.293566, -0.842008, 0.452594,
		37.310329, 36.110054, 29.031107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977428, 36.114811, 28.452322>,  <37.515827, 36.699459, 28.714291>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977428, 36.114811, 28.452322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612576, 35.990990, 28.559795>,  <37.393661, 35.916698, 28.624279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612576, 35.990990, 28.559795>,  <37.977428, 36.114811, 28.452322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612576, 35.990990, 28.559795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091829, -0.484510, -0.869952,
		0.399472, -0.818187, 0.413513,
		-0.912135, -0.309549, 0.268681,
		37.338936, 35.898125, 28.640400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970825, 35.372604, 28.207733>,  <37.977428, 36.114811, 28.452322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970825, 35.372604, 28.207733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583885, 35.443939, 28.279778>,  <37.351723, 35.486740, 28.323004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583885, 35.443939, 28.279778>,  <37.970825, 35.372604, 28.207733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583885, 35.443939, 28.279778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253457, -0.676587, -0.691368,
		-0.001435, -0.714442, 0.699693,
		-0.967346, 0.178334, 0.180109,
		37.293682, 35.497440, 28.333811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542160, 34.711391, 28.162527>,  <37.970825, 35.372604, 28.207733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542160, 34.711391, 28.162527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287582, 35.010227, 28.085808>,  <37.134834, 35.189529, 28.039776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287582, 35.010227, 28.085808>,  <37.542160, 34.711391, 28.162527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287582, 35.010227, 28.085808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328048, -0.487238, -0.809311,
		-0.698082, -0.452164, 0.555184,
		-0.636448, 0.747092, -0.191801,
		37.096649, 35.234356, 28.028267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955772, 34.347809, 27.952787>,  <37.542160, 34.711391, 28.162527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955772, 34.347809, 27.952787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909138, 34.723183, 27.822716>,  <36.881157, 34.948406, 27.744673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909138, 34.723183, 27.822716>,  <36.955772, 34.347809, 27.952787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909138, 34.723183, 27.822716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260427, -0.344843, -0.901810,
		-0.958428, -0.020455, 0.284599,
		-0.116588, 0.938437, -0.325181,
		36.874161, 35.004715, 27.725161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410412, 34.305191, 27.623369>,  <36.955772, 34.347809, 27.952787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410412, 34.305191, 27.623369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537846, 34.639107, 27.443754>,  <36.614304, 34.839455, 27.335985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537846, 34.639107, 27.443754>,  <36.410412, 34.305191, 27.623369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537846, 34.639107, 27.443754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229152, -0.391844, -0.891037,
		-0.919780, 0.386766, 0.066459,
		0.318582, 0.834788, -0.449039,
		36.633419, 34.889542, 27.309042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970592, 34.363075, 27.080519>,  <36.410412, 34.305191, 27.623369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970592, 34.363075, 27.080519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259624, 34.601711, 26.940828>,  <36.433044, 34.744892, 26.857014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259624, 34.601711, 26.940828>,  <35.970592, 34.363075, 27.080519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259624, 34.601711, 26.940828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213492, -0.287902, -0.933560,
		-0.657496, 0.749128, -0.080664,
		0.722579, 0.596591, -0.349227,
		36.476398, 34.780689, 26.836060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724995, 34.701530, 26.455996>,  <35.970592, 34.363075, 27.080519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724995, 34.701530, 26.455996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124195, 34.679832, 26.443016>,  <36.363716, 34.666813, 26.435228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124195, 34.679832, 26.443016>,  <35.724995, 34.701530, 26.455996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124195, 34.679832, 26.443016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046650, -0.285661, -0.957195,
		0.042652, 0.956794, -0.287620,
		0.998000, -0.054243, -0.032450,
		36.423595, 34.663559, 26.433281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806747, 35.185028, 25.961761>,  <35.724995, 34.701530, 26.455996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806747, 35.185028, 25.961761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140114, 34.964275, 25.973377>,  <36.340134, 34.831825, 25.980347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140114, 34.964275, 25.973377>,  <35.806747, 35.185028, 25.961761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140114, 34.964275, 25.973377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025269, -0.090547, -0.995571,
		0.552069, 0.828991, -0.089409,
		0.833416, -0.551883, 0.029041,
		36.390137, 34.798710, 25.982090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281231, 35.410835, 25.450951>,  <35.806747, 35.185028, 25.961761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281231, 35.410835, 25.450951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434410, 35.049923, 25.530191>,  <36.526318, 34.833378, 25.577736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434410, 35.049923, 25.530191>,  <36.281231, 35.410835, 25.450951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434410, 35.049923, 25.530191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159780, -0.146524, -0.976218,
		0.909848, 0.405492, 0.088055,
		0.382946, -0.902279, 0.198104,
		36.549294, 34.779240, 25.589622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880741, 35.402802, 25.066002>,  <36.281231, 35.410835, 25.450951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880741, 35.402802, 25.066002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786629, 35.017303, 25.116331>,  <36.730160, 34.786003, 25.146528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786629, 35.017303, 25.116331>,  <36.880741, 35.402802, 25.066002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786629, 35.017303, 25.116331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436153, -0.220383, -0.872469,
		0.868569, -0.150398, 0.472194,
		-0.235282, -0.963749, 0.125821,
		36.716045, 34.728180, 25.154078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447189, 35.023968, 24.721937>,  <36.880741, 35.402802, 25.066002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447189, 35.023968, 24.721937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174755, 34.731346, 24.734289>,  <37.011295, 34.555775, 24.741701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174755, 34.731346, 24.734289>,  <37.447189, 35.023968, 24.721937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174755, 34.731346, 24.734289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326432, -0.341125, -0.881519,
		0.655412, -0.590309, 0.471138,
		-0.681085, -0.731552, 0.030881,
		36.970428, 34.511879, 24.743553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804901, 34.332966, 24.533222>,  <37.447189, 35.023968, 24.721937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804901, 34.332966, 24.533222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415646, 34.310364, 24.443953>,  <37.182091, 34.296803, 24.390390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415646, 34.310364, 24.443953>,  <37.804901, 34.332966, 24.533222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415646, 34.310364, 24.443953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228697, -0.126132, -0.965292,
		0.026397, -0.990403, 0.135667,
		-0.973140, -0.056507, -0.223172,
		37.123703, 34.293411, 24.377001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.019138, 31.131021, 24.920559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.196102, 31.488894, 24.895826>,  <33.302280, 31.703617, 24.880987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.196102, 31.488894, 24.895826>,  <33.019138, 31.131021, 24.920559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196102, 31.488894, 24.895826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123833, 0.007341, 0.992276,
		0.888222, -0.446650, -0.107543,
		0.442411, 0.894678, -0.061830,
		33.328827, 31.757298, 24.877277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541039, 31.066999, 25.451935>,  <33.019138, 31.131021, 24.920559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541039, 31.066999, 25.451935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.504593, 31.451956, 25.349558>,  <33.482727, 31.682930, 25.288132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.504593, 31.451956, 25.349558>,  <33.541039, 31.066999, 25.451935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504593, 31.451956, 25.349558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301742, 0.271609, 0.913882,
		0.949026, 0.006037, -0.315140,
		-0.091112, 0.962389, -0.255943,
		33.477261, 31.740673, 25.272776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069687, 31.498873, 25.749130>,  <33.541039, 31.066999, 25.451935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069687, 31.498873, 25.749130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.767544, 31.755728, 25.696831>,  <33.586258, 31.909842, 25.665451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.767544, 31.755728, 25.696831>,  <34.069687, 31.498873, 25.749130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767544, 31.755728, 25.696831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079487, 0.287823, 0.954379,
		0.650476, 0.710503, -0.268450,
		-0.755356, 0.642139, -0.130746,
		33.540936, 31.948370, 25.657606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337273, 31.986700, 26.029869>,  <34.069687, 31.498873, 25.749130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337273, 31.986700, 26.029869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.946304, 32.070824, 26.038094>,  <33.711723, 32.121300, 26.043028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.946304, 32.070824, 26.038094>,  <34.337273, 31.986700, 26.029869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946304, 32.070824, 26.038094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083385, 0.294450, 0.952022,
		0.194166, 0.932238, -0.305338,
		-0.977418, 0.210311, 0.020562,
		33.653080, 32.133919, 26.044262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384850, 32.606071, 26.259153>,  <34.337273, 31.986700, 26.029869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384850, 32.606071, 26.259153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.013840, 32.478260, 26.336721>,  <33.791233, 32.401573, 26.383263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.013840, 32.478260, 26.336721>,  <34.384850, 32.606071, 26.259153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013840, 32.478260, 26.336721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113539, 0.253438, 0.960666,
		-0.356111, 0.913054, -0.198789,
		-0.927520, -0.319533, 0.193919,
		33.735584, 32.382401, 26.394897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193787, 33.085491, 26.721651>,  <34.384850, 32.606071, 26.259153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193787, 33.085491, 26.721651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.930801, 32.785183, 26.747221>,  <33.773010, 32.605000, 26.762562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.930801, 32.785183, 26.747221>,  <34.193787, 33.085491, 26.721651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930801, 32.785183, 26.747221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066535, 0.026658, 0.997428,
		-0.750540, 0.660029, 0.032426,
		-0.657467, -0.750767, 0.063923,
		33.733562, 32.559952, 26.766397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738701, 33.281067, 27.155977>,  <34.193787, 33.085491, 26.721651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738701, 33.281067, 27.155977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.687374, 32.884785, 27.174068>,  <33.656578, 32.647015, 27.184923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.687374, 32.884785, 27.174068>,  <33.738701, 33.281067, 27.155977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687374, 32.884785, 27.174068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154942, 0.025018, 0.987607,
		-0.979555, 0.133732, 0.150291,
		-0.128315, -0.990702, 0.045228,
		33.648880, 32.587574, 27.187637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388851, 33.147682, 27.745035>,  <33.738701, 33.281067, 27.155977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388851, 33.147682, 27.745035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.533539, 32.786842, 27.650902>,  <33.620350, 32.570339, 27.594421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.533539, 32.786842, 27.650902>,  <33.388851, 33.147682, 27.745035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533539, 32.786842, 27.650902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101369, -0.212872, 0.971808,
		-0.926759, -0.375378, 0.014444,
		0.361720, -0.902096, -0.235333,
		33.642056, 32.516212, 27.580301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065289, 32.633095, 28.184587>,  <33.388851, 33.147682, 27.745035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065289, 32.633095, 28.184587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.418362, 32.493420, 28.058767>,  <33.630207, 32.409615, 27.983276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.418362, 32.493420, 28.058767>,  <33.065289, 32.633095, 28.184587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418362, 32.493420, 28.058767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244689, -0.229969, 0.941935,
		-0.401247, -0.908396, -0.117547,
		0.882682, -0.349187, -0.314549,
		33.683167, 32.388664, 27.964403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173267, 32.134430, 28.590000>,  <33.065289, 32.633095, 28.184587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173267, 32.134430, 28.590000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.536140, 32.203308, 28.436449>,  <33.753864, 32.244633, 28.344318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.536140, 32.203308, 28.436449>,  <33.173267, 32.134430, 28.590000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536140, 32.203308, 28.436449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412230, -0.181339, 0.892851,
		0.084131, -0.968228, -0.235491,
		0.907187, 0.172194, -0.383877,
		33.808296, 32.254967, 28.321285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559734, 31.543430, 28.724810>,  <33.173267, 32.134430, 28.590000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559734, 31.543430, 28.724810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.797810, 31.860380, 28.671303>,  <33.940655, 32.050549, 28.639198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.797810, 31.860380, 28.671303>,  <33.559734, 31.543430, 28.724810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797810, 31.860380, 28.671303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413705, -0.159436, 0.896342,
		0.688911, -0.588832, -0.422704,
		0.595189, 0.792374, -0.133765,
		33.976368, 32.098091, 28.631174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296021, 31.282471, 29.030041>,  <33.559734, 31.543430, 28.724810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296021, 31.282471, 29.030041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.289467, 31.681877, 29.009281>,  <34.285534, 31.921522, 28.996826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.289467, 31.681877, 29.009281>,  <34.296021, 31.282471, 29.030041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289467, 31.681877, 29.009281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488366, 0.053284, 0.871011,
		0.872485, -0.011074, -0.488516,
		-0.016385, 0.998518, -0.051898,
		34.284550, 31.981432, 28.993711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880333, 31.476463, 29.458351>,  <34.296021, 31.282471, 29.030041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880333, 31.476463, 29.458351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.643692, 31.797165, 29.424406>,  <34.501709, 31.989586, 29.404039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.643692, 31.797165, 29.424406>,  <34.880333, 31.476463, 29.458351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643692, 31.797165, 29.424406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391072, 0.377417, 0.839416,
		0.705032, 0.463412, -0.536823,
		-0.591601, 0.801752, -0.084864,
		34.466213, 32.037689, 29.398947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273369, 32.188065, 29.526377>,  <34.880333, 31.476463, 29.458351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273369, 32.188065, 29.526377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.892563, 32.195942, 29.648539>,  <34.664078, 32.200668, 29.721836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.892563, 32.195942, 29.648539>,  <35.273369, 32.188065, 29.526377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892563, 32.195942, 29.648539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301053, 0.239664, 0.923000,
		-0.055018, 0.970656, -0.234094,
		-0.952019, 0.019693, 0.305404,
		34.606956, 32.201851, 29.740160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035362, 32.426010, 29.376270>,  <35.273369, 32.188065, 29.526377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035362, 32.426010, 29.376270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.400932, 32.265820, 29.402672>,  <36.620274, 32.169704, 29.418512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.400932, 32.265820, 29.402672>,  <36.035362, 32.426010, 29.376270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400932, 32.265820, 29.402672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003730, -0.170897, -0.985282,
		0.405857, 0.900231, -0.157681,
		0.913929, -0.400472, 0.066002,
		36.675110, 32.145679, 29.422472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518036, 32.775185, 28.912237>,  <36.035362, 32.426010, 29.376270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518036, 32.775185, 28.912237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.651699, 32.404251, 28.979635>,  <36.731899, 32.181690, 29.020073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.651699, 32.404251, 28.979635>,  <36.518036, 32.775185, 28.912237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651699, 32.404251, 28.979635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062030, -0.156744, -0.985689,
		0.940472, 0.339832, 0.005145,
		0.334162, -0.927332, 0.168494,
		36.751949, 32.126053, 29.030184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079224, 32.634098, 28.394129>,  <36.518036, 32.775185, 28.912237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079224, 32.634098, 28.394129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.012722, 32.262161, 28.525436>,  <36.972820, 32.039001, 28.604221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.012722, 32.262161, 28.525436>,  <37.079224, 32.634098, 28.394129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012722, 32.262161, 28.525436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048990, -0.340279, -0.939047,
		0.984865, -0.140042, 0.102127,
		-0.166258, -0.929838, 0.328268,
		36.962845, 31.983210, 28.623917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608841, 32.121609, 28.062410>,  <37.079224, 32.634098, 28.394129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608841, 32.121609, 28.062410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.281456, 31.920391, 28.173456>,  <37.085026, 31.799660, 28.240084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.281456, 31.920391, 28.173456>,  <37.608841, 32.121609, 28.062410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281456, 31.920391, 28.173456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078498, -0.380740, -0.921344,
		0.569175, -0.775876, 0.272133,
		-0.818461, -0.503045, 0.277612,
		37.035919, 31.769478, 28.256741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632675, 31.466608, 27.819656>,  <37.608841, 32.121609, 28.062410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632675, 31.466608, 27.819656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238689, 31.504959, 27.877151>,  <37.002300, 31.527969, 27.911650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.238689, 31.504959, 27.877151>,  <37.632675, 31.466608, 27.819656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238689, 31.504959, 27.877151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172637, -0.580108, -0.796034,
		0.007062, -0.808877, 0.587936,
		-0.984960, 0.095878, 0.143739,
		36.943203, 31.533722, 27.920273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431034, 30.801708, 27.679939>,  <37.632675, 31.466608, 27.819656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431034, 30.801708, 27.679939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.116543, 31.047834, 27.657179>,  <36.927849, 31.195511, 27.643522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.116543, 31.047834, 27.657179>,  <37.431034, 30.801708, 27.679939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116543, 31.047834, 27.657179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275098, -0.430985, -0.859403,
		-0.553329, -0.660028, 0.508123,
		-0.786224, 0.615316, -0.056904,
		36.880676, 31.232430, 27.640108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906509, 30.374910, 27.307379>,  <37.431034, 30.801708, 27.679939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906509, 30.374910, 27.307379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.800018, 30.755651, 27.246586>,  <36.736122, 30.984097, 27.210110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.800018, 30.755651, 27.246586>,  <36.906509, 30.374910, 27.307379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800018, 30.755651, 27.246586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221743, -0.213923, -0.951350,
		-0.938057, -0.219579, 0.268020,
		-0.266232, 0.951852, -0.151982,
		36.720150, 31.041206, 27.200991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216194, 30.407478, 27.045746>,  <36.906509, 30.374910, 27.307379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216194, 30.407478, 27.045746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.381924, 30.756266, 26.941431>,  <36.481361, 30.965538, 26.878841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.381924, 30.756266, 26.941431>,  <36.216194, 30.407478, 27.045746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381924, 30.756266, 26.941431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332067, -0.121957, -0.935338,
		-0.847389, 0.474131, 0.239022,
		0.414322, 0.871967, -0.260789,
		36.506222, 31.017857, 26.863194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719490, 30.845146, 26.648676>,  <36.216194, 30.407478, 27.045746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719490, 30.845146, 26.648676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045551, 31.050776, 26.541904>,  <36.241188, 31.174152, 26.477840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.045551, 31.050776, 26.541904>,  <35.719490, 30.845146, 26.648676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045551, 31.050776, 26.541904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253882, -0.097121, -0.962347,
		-0.520641, 0.852230, 0.051345,
		0.815154, 0.514073, -0.266931,
		36.290096, 31.204998, 26.461824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449986, 31.245962, 26.079386>,  <35.719490, 30.845146, 26.648676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449986, 31.245962, 26.079386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.849667, 31.240623, 26.064363>,  <36.089478, 31.237419, 26.055351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.849667, 31.240623, 26.064363>,  <35.449986, 31.245962, 26.079386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849667, 31.240623, 26.064363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038663, -0.095827, -0.994647,
		0.009679, 0.995309, -0.096267,
		0.999205, -0.013349, -0.037554,
		36.149429, 31.236618, 26.053097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665810, 31.727945, 25.563784>,  <35.449986, 31.245962, 26.079386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665810, 31.727945, 25.563784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.961861, 31.461315, 25.599318>,  <36.139492, 31.301336, 25.620638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.961861, 31.461315, 25.599318>,  <35.665810, 31.727945, 25.563784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961861, 31.461315, 25.599318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066610, -0.204120, -0.976677,
		0.669163, 0.716945, -0.195475,
		0.740124, -0.666577, 0.088834,
		36.183899, 31.261341, 25.625967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166664, 31.901293, 25.039530>,  <35.665810, 31.727945, 25.563784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166664, 31.901293, 25.039530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.217209, 31.513136, 25.121866>,  <36.247536, 31.280241, 25.171268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.217209, 31.513136, 25.121866>,  <36.166664, 31.901293, 25.039530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217209, 31.513136, 25.121866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073568, -0.216101, -0.973595,
		0.989252, 0.107883, -0.098697,
		0.126363, -0.970393, 0.205841,
		36.255119, 31.222017, 25.183619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615017, 31.651224, 24.499744>,  <36.166664, 31.901293, 25.039530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615017, 31.651224, 24.499744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.442772, 31.315660, 24.632891>,  <36.339424, 31.114323, 24.712778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.442772, 31.315660, 24.632891>,  <36.615017, 31.651224, 24.499744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442772, 31.315660, 24.632891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173849, -0.284808, -0.942688,
		0.885635, -0.463803, -0.023201,
		-0.430613, -0.838911, 0.332867,
		36.313587, 31.063988, 24.732750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892288, 31.156170, 24.016449>,  <36.615017, 31.651224, 24.499744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892288, 31.156170, 24.016449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.577549, 30.991852, 24.200672>,  <36.388706, 30.893261, 24.311207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.577549, 30.991852, 24.200672>,  <36.892288, 31.156170, 24.016449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577549, 30.991852, 24.200672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407290, -0.215021, -0.887627,
		0.463664, -0.886009, 0.001876,
		-0.786849, -0.410796, 0.460560,
		36.341496, 30.868612, 24.338840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552795, 30.654472, 24.128166>,  <36.892288, 31.156170, 24.016449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552795, 30.654472, 24.128166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.909908, 30.729212, 23.964203>,  <38.124176, 30.774055, 23.865824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.909908, 30.729212, 23.964203>,  <37.552795, 30.654472, 24.128166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909908, 30.729212, 23.964203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436832, -0.136742, 0.889089,
		0.110076, -0.972825, -0.203703,
		0.892782, 0.186851, -0.409909,
		38.177742, 30.785267, 23.841230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021049, 30.081444, 24.255156>,  <37.552795, 30.654472, 24.128166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021049, 30.081444, 24.255156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.221546, 30.424341, 24.208008>,  <38.341843, 30.630079, 24.179718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.221546, 30.424341, 24.208008>,  <38.021049, 30.081444, 24.255156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221546, 30.424341, 24.208008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476020, -0.159416, 0.864865,
		0.722608, -0.489614, -0.487970,
		0.501241, 0.857242, -0.117871,
		38.371918, 30.681515, 24.172647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642311, 29.941633, 24.609480>,  <38.021049, 30.081444, 24.255156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642311, 29.941633, 24.609480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.639187, 30.340332, 24.577383>,  <38.637310, 30.579552, 24.558125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.639187, 30.340332, 24.577383>,  <38.642311, 29.941633, 24.609480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639187, 30.340332, 24.577383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488887, 0.073808, 0.869219,
		0.872312, -0.032437, -0.487872,
		-0.007814, 0.996745, -0.080242,
		38.636845, 30.639355, 24.553310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337635, 30.209894, 24.726555>,  <38.642311, 29.941633, 24.609480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337635, 30.209894, 24.726555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.074226, 30.490599, 24.835281>,  <38.916183, 30.659021, 24.900518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.074226, 30.490599, 24.835281>,  <39.337635, 30.209894, 24.726555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074226, 30.490599, 24.835281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581532, 0.245252, 0.775675,
		0.477674, 0.668867, -0.569600,
		-0.658519, 0.701761, 0.271817,
		38.876671, 30.701126, 24.916826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756729, 30.645020, 25.042048>,  <39.337635, 30.209894, 24.726555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756729, 30.645020, 25.042048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.401615, 30.801498, 25.139048>,  <39.188549, 30.895386, 25.197248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.401615, 30.801498, 25.139048>,  <39.756729, 30.645020, 25.042048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401615, 30.801498, 25.139048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406509, 0.419346, 0.811726,
		0.215855, 0.819215, -0.531313,
		-0.887782, 0.391199, 0.242500,
		39.135281, 30.918858, 25.211798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935432, 31.370527, 25.253380>,  <39.756729, 30.645020, 25.042048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935432, 31.370527, 25.253380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.569553, 31.296944, 25.397322>,  <39.350025, 31.252792, 25.483686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.569553, 31.296944, 25.397322>,  <39.935432, 31.370527, 25.253380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569553, 31.296944, 25.397322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205785, 0.554333, 0.806454,
		-0.347834, 0.811711, -0.469188,
		-0.914694, -0.183960, 0.359853,
		39.295147, 31.241756, 25.505278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628784, 32.062634, 25.292173>,  <39.935432, 31.370527, 25.253380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628784, 32.062634, 25.292173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.471272, 31.775728, 25.522120>,  <39.376762, 31.603586, 25.660088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.471272, 31.775728, 25.522120>,  <39.628784, 32.062634, 25.292173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471272, 31.775728, 25.522120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232873, 0.527150, 0.817241,
		-0.889216, 0.455687, -0.040552,
		-0.393783, -0.717261, 0.574867,
		39.353138, 31.560551, 25.694580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401443, 32.396095, 25.783094>,  <39.628784, 32.062634, 25.292173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401443, 32.396095, 25.783094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.405006, 32.034019, 25.953060>,  <39.407143, 31.816774, 26.055040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.405006, 32.034019, 25.953060>,  <39.401443, 32.396095, 25.783094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405006, 32.034019, 25.953060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188979, 0.418797, 0.888198,
		-0.981941, 0.072389, 0.174792,
		0.008907, -0.905190, 0.424914,
		39.407677, 31.762463, 26.080534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246513, 32.461620, 26.406492>,  <39.401443, 32.396095, 25.783094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246513, 32.461620, 26.406492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.371723, 32.084221, 26.450008>,  <39.446850, 31.857782, 26.476118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.371723, 32.084221, 26.450008>,  <39.246513, 32.461620, 26.406492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371723, 32.084221, 26.450008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345851, 0.219919, 0.912153,
		-0.884537, -0.247896, 0.395148,
		0.313020, -0.943495, 0.108792,
		39.465630, 31.801172, 26.482645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750595, 32.069416, 26.944675>,  <39.246513, 32.461620, 26.406492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750595, 32.069416, 26.944675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.128220, 31.941753, 26.911478>,  <39.354794, 31.865154, 26.891560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.128220, 31.941753, 26.911478>,  <38.750595, 32.069416, 26.944675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128220, 31.941753, 26.911478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203845, 0.366947, 0.907633,
		-0.259228, -0.873777, 0.411479,
		0.944060, -0.319161, -0.082993,
		39.411438, 31.846004, 26.886580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776512, 31.664770, 27.580233>,  <38.750595, 32.069416, 26.944675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776512, 31.664770, 27.580233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.154919, 31.719994, 27.462938>,  <39.381962, 31.753128, 27.392563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.154919, 31.719994, 27.462938>,  <38.776512, 31.664770, 27.580233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154919, 31.719994, 27.462938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257768, 0.227959, 0.938930,
		0.196470, -0.963834, 0.180068,
		0.946021, 0.138056, -0.293233,
		39.438725, 31.761412, 27.374968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080330, 31.217739, 27.988247>,  <38.776512, 31.664770, 27.580233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080330, 31.217739, 27.988247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354073, 31.480852, 27.862398>,  <39.518318, 31.638720, 27.786888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354073, 31.480852, 27.862398>,  <39.080330, 31.217739, 27.988247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354073, 31.480852, 27.862398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308200, 0.130100, 0.942383,
		0.660814, -0.741888, -0.113693,
		0.684352, 0.657780, -0.314622,
		39.559380, 31.678186, 27.768011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669933, 31.106850, 28.454756>,  <39.080330, 31.217739, 27.988247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669933, 31.106850, 28.454756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710468, 31.463583, 28.278408>,  <39.734791, 31.677622, 28.172600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.710468, 31.463583, 28.278408>,  <39.669933, 31.106850, 28.454756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710468, 31.463583, 28.278408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119741, 0.428995, 0.895335,
		0.987620, -0.143523, -0.063315,
		0.101340, 0.891832, -0.440870,
		39.740871, 31.731133, 28.146147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.390991, 31.254959, 28.602354>,  <39.669933, 31.106850, 28.454756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.390991, 31.254959, 28.602354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.204357, 31.599808, 28.523315>,  <40.092377, 31.806717, 28.475893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.204357, 31.599808, 28.523315>,  <40.390991, 31.254959, 28.602354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204357, 31.599808, 28.523315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027898, 0.237639, 0.970953,
		0.884036, 0.447520, -0.134930,
		-0.466586, 0.862121, -0.197597,
		40.064381, 31.858444, 28.464037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.726353, 33.720192, 24.157003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.388802, 33.920261, 24.079346>,  <37.186272, 34.040302, 24.032751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.388802, 33.920261, 24.079346>,  <37.726353, 33.720192, 24.157003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388802, 33.920261, 24.079346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088872, -0.226540, -0.969939,
		-0.529122, -0.835765, 0.146721,
		-0.843879, 0.500177, -0.194143,
		37.135639, 34.070312, 24.021103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319202, 33.259724, 23.696566>,  <37.726353, 33.720192, 24.157003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319202, 33.259724, 23.696566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.142796, 33.614784, 23.643526>,  <37.036953, 33.827820, 23.611702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.142796, 33.614784, 23.643526>,  <37.319202, 33.259724, 23.696566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142796, 33.614784, 23.643526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333266, -0.299147, -0.894116,
		-0.833328, -0.350130, 0.427753,
		-0.441019, 0.887649, -0.132601,
		37.010490, 33.881081, 23.603746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636341, 33.170616, 23.485155>,  <37.319202, 33.259724, 23.696566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636341, 33.170616, 23.485155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.746304, 33.525261, 23.336378>,  <36.812279, 33.738049, 23.247112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.746304, 33.525261, 23.336378>,  <36.636341, 33.170616, 23.485155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746304, 33.525261, 23.336378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378654, -0.255749, -0.889502,
		-0.883770, 0.385366, 0.265414,
		0.274905, 0.886615, -0.371944,
		36.828773, 33.791245, 23.224794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214931, 33.230350, 22.885033>,  <36.636341, 33.170616, 23.485155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214931, 33.230350, 22.885033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.454014, 33.545326, 22.824783>,  <36.597462, 33.734310, 22.788633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.454014, 33.545326, 22.824783>,  <36.214931, 33.230350, 22.885033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454014, 33.545326, 22.824783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190724, -0.042823, -0.980709,
		-0.778700, 0.614901, 0.124589,
		0.597704, 0.787441, -0.150623,
		36.633324, 33.781559, 22.779596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813736, 33.722885, 22.312767>,  <36.214931, 33.230350, 22.885033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813736, 33.722885, 22.312767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.207230, 33.794392, 22.319809>,  <36.443325, 33.837296, 22.324034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.207230, 33.794392, 22.319809>,  <35.813736, 33.722885, 22.312767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207230, 33.794392, 22.319809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018448, -0.003047, -0.999825,
		-0.178679, 0.983887, -0.006295,
		0.983734, 0.178764, 0.017607,
		36.502350, 33.848022, 22.325090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879520, 34.087658, 21.774473>,  <35.813736, 33.722885, 22.312767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879520, 34.087658, 21.774473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.253304, 33.960800, 21.839218>,  <36.477573, 33.884686, 21.878065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.253304, 33.960800, 21.839218>,  <35.879520, 34.087658, 21.774473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253304, 33.960800, 21.839218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164277, -0.019304, -0.986225,
		0.315902, 0.948180, 0.034061,
		0.934462, -0.317146, 0.161862,
		36.533642, 33.865658, 21.887777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287891, 34.574341, 21.458797>,  <35.879520, 34.087658, 21.774473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287891, 34.574341, 21.458797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.480587, 34.224560, 21.481644>,  <36.596207, 34.014690, 21.495352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.480587, 34.224560, 21.481644>,  <36.287891, 34.574341, 21.458797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480587, 34.224560, 21.481644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153147, 0.019836, -0.988004,
		0.862827, 0.484711, 0.143475,
		0.481743, -0.874449, 0.057117,
		36.625111, 33.962227, 21.498779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852436, 34.712971, 21.132877>,  <36.287891, 34.574341, 21.458797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852436, 34.712971, 21.132877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.855564, 34.313004, 21.128658>,  <36.857441, 34.073025, 21.126127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.855564, 34.313004, 21.128658>,  <36.852436, 34.712971, 21.132877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855564, 34.313004, 21.128658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224136, 0.012033, -0.974484,
		0.974527, 0.005256, 0.224210,
		0.007820, -0.999914, -0.010548,
		36.857910, 34.013031, 21.125494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426594, 34.619602, 20.825710>,  <36.852436, 34.712971, 21.132877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426594, 34.619602, 20.825710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.241135, 34.271980, 20.756697>,  <37.129860, 34.063408, 20.715288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.241135, 34.271980, 20.756697>,  <37.426594, 34.619602, 20.825710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241135, 34.271980, 20.756697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321258, 0.016585, -0.946846,
		0.825724, -0.494436, 0.271502,
		-0.463652, -0.869056, -0.172536,
		37.102039, 34.011265, 20.704935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893074, 34.111446, 20.556944>,  <37.426594, 34.619602, 20.825710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893074, 34.111446, 20.556944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.543621, 33.950573, 20.447390>,  <37.333950, 33.854050, 20.381657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.543621, 33.950573, 20.447390>,  <37.893074, 34.111446, 20.556944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543621, 33.950573, 20.447390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281058, 0.042390, -0.958754,
		0.397205, -0.914577, 0.076003,
		-0.873633, -0.402183, -0.273887,
		37.281532, 33.829918, 20.365223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976669, 33.533794, 20.067457>,  <37.893074, 34.111446, 20.556944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976669, 33.533794, 20.067457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.604050, 33.662788, 20.000254>,  <37.380478, 33.740185, 19.959932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.604050, 33.662788, 20.000254>,  <37.976669, 33.533794, 20.067457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604050, 33.662788, 20.000254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165474, -0.035468, -0.985576,
		-0.323794, -0.945909, -0.020323,
		-0.931545, 0.322487, -0.168008,
		37.324585, 33.759533, 19.949852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676479, 33.071529, 19.529762>,  <37.976669, 33.533794, 20.067457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676479, 33.071529, 19.529762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.451881, 33.402481, 19.534906>,  <37.317123, 33.601051, 19.537992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.451881, 33.402481, 19.534906>,  <37.676479, 33.071529, 19.529762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451881, 33.402481, 19.534906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188668, 0.143138, -0.971553,
		-0.805684, -0.543097, -0.236472,
		-0.561496, 0.827380, 0.012859,
		37.283432, 33.650696, 19.538765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493519, 33.241810, 18.825241>,  <37.676479, 33.071529, 19.529762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493519, 33.241810, 18.825241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.349262, 33.562439, 19.015993>,  <37.262711, 33.754818, 19.130444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.349262, 33.562439, 19.015993>,  <37.493519, 33.241810, 18.825241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349262, 33.562439, 19.015993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079119, 0.535736, -0.840671,
		-0.929344, -0.265448, -0.256626,
		-0.360638, 0.801576, 0.476881,
		37.241070, 33.802914, 19.159058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007786, 32.949444, 18.374840>,  <37.493519, 33.241810, 18.825241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007786, 32.949444, 18.374840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.118183, 32.967480, 17.990799>,  <38.184422, 32.978302, 17.760374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.118183, 32.967480, 17.990799>,  <38.007786, 32.949444, 18.374840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118183, 32.967480, 17.990799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260944, -0.957866, -0.120001,
		-0.925060, 0.283652, -0.252598,
		0.275994, 0.045094, -0.960101,
		38.200981, 32.981007, 17.702768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635841, 32.402115, 18.064760>,  <38.007786, 32.949444, 18.374840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635841, 32.402115, 18.064760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.587345, 32.009743, 18.125517>,  <37.558247, 31.774319, 18.161970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.587345, 32.009743, 18.125517>,  <37.635841, 32.402115, 18.064760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587345, 32.009743, 18.125517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025967, 0.149833, 0.988370,
		-0.992283, 0.123775, 0.007306,
		-0.121241, -0.980933, 0.151891,
		37.550972, 31.715464, 18.171083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150330, 32.314087, 18.543934>,  <37.635841, 32.402115, 18.064760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150330, 32.314087, 18.543934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.351822, 31.968550, 18.546402>,  <37.472717, 31.761229, 18.547884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.351822, 31.968550, 18.546402>,  <37.150330, 32.314087, 18.543934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351822, 31.968550, 18.546402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006632, 0.011011, 0.999917,
		-0.863836, -0.503647, 0.011275,
		0.503730, -0.863839, 0.006171,
		37.502941, 31.709398, 18.548254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919827, 31.995930, 19.253798>,  <37.150330, 32.314087, 18.543934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919827, 31.995930, 19.253798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.245537, 31.791451, 19.143793>,  <37.440964, 31.668762, 19.077791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.245537, 31.791451, 19.143793>,  <36.919827, 31.995930, 19.253798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245537, 31.791451, 19.143793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296388, -0.041208, 0.954178,
		-0.499108, -0.858474, 0.117959,
		0.814276, -0.511199, -0.275009,
		37.489819, 31.638090, 19.061291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864094, 31.341089, 19.572914>,  <36.919827, 31.995930, 19.253798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864094, 31.341089, 19.572914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.252651, 31.390673, 19.491899>,  <37.485786, 31.420424, 19.443291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.252651, 31.390673, 19.491899>,  <36.864094, 31.341089, 19.572914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252651, 31.390673, 19.491899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223293, -0.186646, 0.956715,
		0.080792, -0.974576, -0.208987,
		0.971397, 0.123960, -0.202537,
		37.544071, 31.427860, 19.431139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196163, 30.710146, 19.705685>,  <36.864094, 31.341089, 19.572914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196163, 30.710146, 19.705685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512463, 30.954428, 19.722460>,  <37.702240, 31.100998, 19.732525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512463, 30.954428, 19.722460>,  <37.196163, 30.710146, 19.705685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512463, 30.954428, 19.722460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148432, -0.257755, 0.954741,
		0.593876, -0.748732, -0.294467,
		0.790746, 0.610706, 0.041938,
		37.749687, 31.137640, 19.735041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659382, 30.360847, 20.092449>,  <37.196163, 30.710146, 19.705685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659382, 30.360847, 20.092449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.805470, 30.732498, 20.115540>,  <37.893124, 30.955488, 20.129395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.805470, 30.732498, 20.115540>,  <37.659382, 30.360847, 20.092449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805470, 30.732498, 20.115540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421148, -0.220211, 0.879853,
		0.830209, -0.297030, -0.471727,
		0.365222, 0.929129, 0.057727,
		37.915035, 31.011236, 20.132858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346287, 30.266140, 20.187031>,  <37.659382, 30.360847, 20.092449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346287, 30.266140, 20.187031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228745, 30.618683, 20.335011>,  <38.158218, 30.830208, 20.423798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.228745, 30.618683, 20.335011>,  <38.346287, 30.266140, 20.187031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228745, 30.618683, 20.335011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419003, -0.229094, 0.878608,
		0.859120, 0.413190, -0.301971,
		-0.293852, 0.881357, 0.369947,
		38.140591, 30.883089, 20.445995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841148, 30.541243, 20.671047>,  <38.346287, 30.266140, 20.187031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841148, 30.541243, 20.671047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.535957, 30.770195, 20.791206>,  <38.352840, 30.907566, 20.863302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.535957, 30.770195, 20.791206>,  <38.841148, 30.541243, 20.671047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535957, 30.770195, 20.791206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228851, -0.195436, 0.953641,
		0.604555, 0.796357, 0.018123,
		-0.762981, 0.572381, 0.300399,
		38.307064, 30.941910, 20.881327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109917, 30.954893, 21.146690>,  <38.841148, 30.541243, 20.671047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109917, 30.954893, 21.146690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.718880, 30.963531, 21.230453>,  <38.484257, 30.968716, 21.280710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.718880, 30.963531, 21.230453>,  <39.109917, 30.954893, 21.146690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718880, 30.963531, 21.230453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210359, 0.138665, 0.967740,
		-0.008136, 0.990104, -0.140101,
		-0.977590, 0.021598, 0.209405,
		38.425602, 30.970011, 21.293276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992851, 31.573868, 21.695833>,  <39.109917, 30.954893, 21.146690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992851, 31.573868, 21.695833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.650928, 31.366539, 21.706003>,  <38.445774, 31.242142, 21.712105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.650928, 31.366539, 21.706003>,  <38.992851, 31.573868, 21.695833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650928, 31.366539, 21.706003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018667, 0.018247, 0.999659,
		-0.518610, 0.854991, -0.005922,
		-0.854807, -0.518322, 0.025423,
		38.394485, 31.211042, 21.713631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521641, 31.912590, 22.144270>,  <38.992851, 31.573868, 21.695833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521641, 31.912590, 22.144270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.361324, 31.546328, 22.132000>,  <38.265133, 31.326571, 22.124638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.361324, 31.546328, 22.132000>,  <38.521641, 31.912590, 22.144270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361324, 31.546328, 22.132000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047316, -0.012749, 0.998798,
		-0.914945, 0.401766, -0.038216,
		-0.400796, -0.915654, -0.030675,
		38.241085, 31.271631, 22.122797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984478, 31.925003, 22.591949>,  <38.521641, 31.912590, 22.144270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984478, 31.925003, 22.591949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.073208, 31.536436, 22.558149>,  <38.126446, 31.303295, 22.537868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.073208, 31.536436, 22.558149>,  <37.984478, 31.925003, 22.591949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073208, 31.536436, 22.558149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016194, -0.082977, 0.996420,
		-0.974952, -0.222401, -0.002675,
		0.221827, -0.971418, -0.084500,
		38.139755, 31.245010, 22.532799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466026, 31.560339, 22.968628>,  <37.984478, 31.925003, 22.591949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466026, 31.560339, 22.968628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.771393, 31.302523, 22.951859>,  <37.954613, 31.147833, 22.941797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.771393, 31.302523, 22.951859>,  <37.466026, 31.560339, 22.968628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771393, 31.302523, 22.951859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053992, -0.000995, 0.998541,
		-0.643642, -0.764569, 0.034040,
		0.763420, -0.644541, -0.041922,
		38.000420, 31.109161, 22.939281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411716, 31.065144, 23.545900>,  <37.466026, 31.560339, 22.968628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411716, 31.065144, 23.545900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.797699, 30.995302, 23.467543>,  <38.029289, 30.953398, 23.420528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.797699, 30.995302, 23.467543>,  <37.411716, 31.065144, 23.545900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797699, 30.995302, 23.467543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178098, -0.112498, 0.977561,
		-0.192727, -0.978191, -0.077458,
		0.964955, -0.174607, -0.195895,
		38.087185, 30.942921, 23.408773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776844, 30.589041, 23.621843>,  <37.411716, 31.065144, 23.545900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776844, 30.589041, 23.621843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.442623, 30.668257, 23.826834>,  <36.242092, 30.715786, 23.949829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.442623, 30.668257, 23.826834>,  <36.776844, 30.589041, 23.621843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442623, 30.668257, 23.826834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528185, -0.032769, -0.848497,
		-0.151248, -0.979645, 0.131985,
		-0.835551, 0.198046, 0.512478,
		36.191959, 30.727669, 23.980577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332275, 30.181639, 23.415665>,  <36.776844, 30.589041, 23.621843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332275, 30.181639, 23.415665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.059822, 30.438580, 23.556200>,  <35.896351, 30.592745, 23.640522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.059822, 30.438580, 23.556200>,  <36.332275, 30.181639, 23.415665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059822, 30.438580, 23.556200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507412, -0.068211, -0.858999,
		-0.527816, -0.763367, 0.372399,
		-0.681133, 0.642354, 0.351339,
		35.855480, 30.631285, 23.661602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660473, 29.965734, 23.134962>,  <36.332275, 30.181639, 23.415665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660473, 29.965734, 23.134962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.623405, 30.358532, 23.200809>,  <35.601166, 30.594210, 23.240318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.623405, 30.358532, 23.200809>,  <35.660473, 29.965734, 23.134962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623405, 30.358532, 23.200809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662513, 0.062609, -0.746429,
		-0.743295, -0.178236, 0.644782,
		-0.092671, 0.981994, 0.164621,
		35.595604, 30.653130, 23.250196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932083, 30.129953, 22.906511>,  <35.660473, 29.965734, 23.134962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932083, 30.129953, 22.906511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.074368, 30.497131, 22.976768>,  <35.159737, 30.717438, 23.018923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.074368, 30.497131, 22.976768>,  <34.932083, 30.129953, 22.906511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074368, 30.497131, 22.976768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573043, 0.362675, -0.734907,
		-0.738305, 0.160762, 0.655028,
		0.355707, 0.917945, 0.175641,
		35.181080, 30.772514, 23.029461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368443, 30.461403, 22.777483>,  <34.932083, 30.129953, 22.906511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368443, 30.461403, 22.777483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663128, 30.730108, 22.746534>,  <34.839939, 30.891331, 22.727966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.663128, 30.730108, 22.746534>,  <34.368443, 30.461403, 22.777483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663128, 30.730108, 22.746534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384950, 0.322576, -0.864730,
		-0.555935, 0.666843, 0.496242,
		0.736715, 0.671762, -0.077370,
		34.884144, 30.931637, 22.723324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074924, 31.107491, 22.595963>,  <34.368443, 30.461403, 22.777483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074924, 31.107491, 22.595963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.450298, 31.089678, 22.458935>,  <34.675522, 31.078991, 22.376719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.450298, 31.089678, 22.458935>,  <34.074924, 31.107491, 22.595963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450298, 31.089678, 22.458935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315411, 0.294010, -0.902261,
		0.140898, 0.954764, 0.261864,
		0.938437, -0.044532, -0.342569,
		34.731831, 31.076319, 22.356165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110806, 31.634689, 21.970922>,  <34.074924, 31.107491, 22.595963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110806, 31.634689, 21.970922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.439224, 31.411921, 21.920782>,  <34.636276, 31.278259, 21.890697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.439224, 31.411921, 21.920782>,  <34.110806, 31.634689, 21.970922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439224, 31.411921, 21.920782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067188, 0.123785, -0.990032,
		0.566888, 0.821289, 0.064215,
		0.821051, -0.556922, -0.125353,
		34.685539, 31.244844, 21.883177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042564, 32.275333, 21.853201>,  <34.110806, 31.634689, 21.970922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042564, 32.275333, 21.853201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.659111, 32.238232, 21.960848>,  <33.429039, 32.215969, 22.025436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.659111, 32.238232, 21.960848>,  <34.042564, 32.275333, 21.853201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659111, 32.238232, 21.960848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263447, 0.068986, 0.962204,
		-0.107817, 0.993296, -0.041695,
		-0.958630, -0.092758, 0.269119,
		33.371521, 32.210403, 22.041584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871643, 32.802166, 22.318876>,  <34.042564, 32.275333, 21.853201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871643, 32.802166, 22.318876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593536, 32.525341, 22.396492>,  <33.426674, 32.359245, 22.443062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593536, 32.525341, 22.396492>,  <33.871643, 32.802166, 22.318876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593536, 32.525341, 22.396492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208641, 0.064013, 0.975895,
		-0.687805, 0.718990, 0.099888,
		-0.695265, -0.692066, 0.194039,
		33.384956, 32.317722, 22.454704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485397, 33.093903, 22.775429>,  <33.871643, 32.802166, 22.318876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485397, 33.093903, 22.775429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.424355, 32.700508, 22.814342>,  <33.387730, 32.464470, 22.837690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.424355, 32.700508, 22.814342>,  <33.485397, 33.093903, 22.775429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424355, 32.700508, 22.814342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124961, 0.078445, 0.989056,
		-0.980355, 0.163096, 0.110926,
		-0.152609, -0.983487, 0.097285,
		33.378571, 32.405460, 22.843529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934204, 32.980228, 23.349318>,  <33.485397, 33.093903, 22.775429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934204, 32.980228, 23.349318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.088127, 32.611881, 23.324280>,  <33.180481, 32.390873, 23.309258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.088127, 32.611881, 23.324280>,  <32.934204, 32.980228, 23.349318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088127, 32.611881, 23.324280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116200, -0.018944, 0.993045,
		-0.915653, -0.389407, 0.099716,
		0.384809, -0.920871, -0.062595,
		33.203571, 32.335621, 23.305502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621582, 32.625916, 23.896524>,  <32.934204, 32.980228, 23.349318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621582, 32.625916, 23.896524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.927200, 32.398060, 23.775362>,  <33.110573, 32.261349, 23.702665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.927200, 32.398060, 23.775362>,  <32.621582, 32.625916, 23.896524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927200, 32.398060, 23.775362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252039, -0.168653, 0.952907,
		-0.593896, -0.804407, 0.014712,
		0.764045, -0.569636, -0.302904,
		33.156414, 32.227169, 23.684490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398788, 32.062664, 24.139940>,  <32.621582, 32.625916, 23.896524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398788, 32.062664, 24.139940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.793697, 32.018265, 24.094385>,  <33.030643, 31.991625, 24.067051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.793697, 32.018265, 24.094385>,  <32.398788, 32.062664, 24.139940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793697, 32.018265, 24.094385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093030, -0.177723, 0.979673,
		-0.128984, -0.977800, -0.165135,
		0.987273, -0.110999, -0.113888,
		33.089878, 31.984964, 24.060219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530037, 31.455713, 24.527739>,  <32.398788, 32.062664, 24.139940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530037, 31.455713, 24.527739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.873203, 31.655836, 24.480951>,  <33.079102, 31.775909, 24.452879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.873203, 31.655836, 24.480951>,  <32.530037, 31.455713, 24.527739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873203, 31.655836, 24.480951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249664, -0.206958, 0.945958,
		0.449061, -0.840751, -0.302460,
		0.857911, 0.500306, -0.116968,
		33.130577, 31.805927, 24.445862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.958019, 35.494480, 19.932709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.351357, 35.422058, 19.926193>,  <34.587357, 35.378605, 19.922285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.351357, 35.422058, 19.926193>,  <33.958019, 35.494480, 19.932709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351357, 35.422058, 19.926193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033598, -0.269067, 0.962535,
		-0.178647, -0.945952, -0.270667,
		0.983340, -0.181048, -0.016286,
		34.646358, 35.367744, 19.921307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068504, 34.885040, 20.246084>,  <33.958019, 35.494480, 19.932709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068504, 34.885040, 20.246084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.433231, 35.046032, 20.278570>,  <34.652069, 35.142628, 20.298061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.433231, 35.046032, 20.278570>,  <34.068504, 34.885040, 20.246084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433231, 35.046032, 20.278570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058624, -0.323395, 0.944446,
		0.406386, -0.856403, -0.318473,
		0.911819, 0.402480, 0.081217,
		34.706776, 35.166775, 20.302935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299435, 34.625755, 20.867043>,  <34.068504, 34.885040, 20.246084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299435, 34.625755, 20.867043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.600185, 34.885803, 20.823172>,  <34.780636, 35.041832, 20.796850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.600185, 34.885803, 20.823172>,  <34.299435, 34.625755, 20.867043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600185, 34.885803, 20.823172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088612, 0.065195, 0.993930,
		0.653326, -0.757028, -0.008590,
		0.751873, 0.650122, -0.109675,
		34.825748, 35.080841, 20.790270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743450, 34.420212, 21.355062>,  <34.299435, 34.625755, 20.867043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743450, 34.420212, 21.355062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.812553, 34.801193, 21.254677>,  <34.854015, 35.029781, 21.194445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.812553, 34.801193, 21.254677>,  <34.743450, 34.420212, 21.355062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812553, 34.801193, 21.254677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141689, 0.228114, 0.963269,
		0.974720, -0.201969, -0.095544,
		0.172756, 0.952456, -0.250965,
		34.864380, 35.086929, 21.179388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226460, 34.570866, 21.847664>,  <34.743450, 34.420212, 21.355062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226460, 34.570866, 21.847664> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.066364, 34.912613, 21.715078>,  <34.970306, 35.117661, 21.635527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.066364, 34.912613, 21.715078>,  <35.226460, 34.570866, 21.847664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066364, 34.912613, 21.715078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165155, 0.423023, 0.890941,
		0.901406, 0.301845, -0.310413,
		-0.400238, 0.854366, -0.331465,
		34.946293, 35.168922, 21.615639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642830, 35.027100, 22.073343>,  <35.226460, 34.570866, 21.847664>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642830, 35.027100, 22.073343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.304104, 35.226295, 21.998600>,  <35.100868, 35.345814, 21.953754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.304104, 35.226295, 21.998600>,  <35.642830, 35.027100, 22.073343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304104, 35.226295, 21.998600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006741, 0.361332, 0.932413,
		0.531847, 0.788320, -0.309338,
		-0.846814, 0.497986, -0.186860,
		35.050060, 35.375690, 21.942543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608879, 35.710197, 22.462353>,  <35.642830, 35.027100, 22.073343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608879, 35.710197, 22.462353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.227837, 35.678394, 22.344898>,  <34.999210, 35.659313, 22.274426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.227837, 35.678394, 22.344898>,  <35.608879, 35.710197, 22.462353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227837, 35.678394, 22.344898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296984, 0.452229, 0.841005,
		0.065923, 0.888350, -0.454409,
		-0.952604, -0.079511, -0.293639,
		34.942055, 35.654541, 22.256807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393536, 36.362202, 22.372869>,  <35.608879, 35.710197, 22.462353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393536, 36.362202, 22.372869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.085293, 36.130695, 22.479607>,  <34.900349, 35.991791, 22.543650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.085293, 36.130695, 22.479607>,  <35.393536, 36.362202, 22.372869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085293, 36.130695, 22.479607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092818, 0.516156, 0.851451,
		-0.630520, 0.631363, -0.451470,
		-0.770603, -0.578762, 0.266845,
		34.854111, 35.957066, 22.559660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850498, 36.820141, 22.525379>,  <35.393536, 36.362202, 22.372869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850498, 36.820141, 22.525379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.738747, 36.487713, 22.717743>,  <34.671696, 36.288258, 22.833160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.738747, 36.487713, 22.717743>,  <34.850498, 36.820141, 22.525379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738747, 36.487713, 22.717743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301404, 0.551443, 0.777860,
		-0.911648, 0.072370, -0.404549,
		-0.279379, -0.831068, 0.480909,
		34.654934, 36.238392, 22.862015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369408, 37.072742, 22.981588>,  <34.850498, 36.820141, 22.525379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369408, 37.072742, 22.981588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.443859, 36.709438, 23.131481>,  <34.488529, 36.491455, 23.221416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.443859, 36.709438, 23.131481>,  <34.369408, 37.072742, 22.981588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443859, 36.709438, 23.131481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282773, 0.315740, 0.905730,
		-0.940955, -0.274546, -0.198063,
		0.186128, -0.908258, 0.374731,
		34.499699, 36.436962, 23.243900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777973, 36.846855, 23.385231>,  <34.369408, 37.072742, 22.981588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777973, 36.846855, 23.385231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.092823, 36.645451, 23.527729>,  <34.281734, 36.524609, 23.613228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.092823, 36.645451, 23.527729>,  <33.777973, 36.846855, 23.385231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092823, 36.645451, 23.527729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207251, 0.328085, 0.921633,
		-0.580934, -0.799271, 0.153890,
		0.787123, -0.503514, 0.356245,
		34.328960, 36.494396, 23.634602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625843, 36.920498, 24.019779>,  <33.777973, 36.846855, 23.385231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625843, 36.920498, 24.019779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.005978, 36.796036, 24.016979>,  <34.234058, 36.721359, 24.015299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.005978, 36.796036, 24.016979>,  <33.625843, 36.920498, 24.019779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005978, 36.796036, 24.016979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148445, 0.433393, 0.888895,
		-0.273550, -0.845786, 0.458057,
		0.950334, -0.311153, -0.006998,
		34.291077, 36.702690, 24.014879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296886, 36.242409, 24.122124>,  <33.625843, 36.920498, 24.019779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296886, 36.242409, 24.122124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.955482, 36.078484, 24.250854>,  <32.750641, 35.980129, 24.328093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.955482, 36.078484, 24.250854>,  <33.296886, 36.242409, 24.122124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955482, 36.078484, 24.250854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165354, -0.372686, -0.913106,
		0.494142, -0.832562, 0.250328,
		-0.853511, -0.409812, 0.321827,
		32.699429, 35.955540, 24.347403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224369, 35.543514, 23.825850>,  <33.296886, 36.242409, 24.122124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224369, 35.543514, 23.825850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.842430, 35.623001, 23.914185>,  <32.613266, 35.670692, 23.967186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.842430, 35.623001, 23.914185>,  <33.224369, 35.543514, 23.825850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842430, 35.623001, 23.914185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292533, -0.499272, -0.815569,
		-0.051812, -0.843349, 0.534863,
		-0.954851, 0.198721, 0.220839,
		32.555973, 35.682617, 23.980436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742142, 34.866863, 23.609419>,  <33.224369, 35.543514, 23.825850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742142, 34.866863, 23.609419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.505138, 35.186123, 23.653028>,  <32.362934, 35.377678, 23.679195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.505138, 35.186123, 23.653028>,  <32.742142, 34.866863, 23.609419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505138, 35.186123, 23.653028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515796, -0.271933, -0.812408,
		-0.618776, -0.537596, 0.572806,
		-0.592512, 0.798149, 0.109025,
		32.327385, 35.425568, 23.685736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141106, 34.610931, 23.642162>,  <32.742142, 34.866863, 23.609419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141106, 34.610931, 23.642162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.073689, 34.989510, 23.532015>,  <32.033237, 35.216656, 23.465925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.073689, 34.989510, 23.532015>,  <32.141106, 34.610931, 23.642162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073689, 34.989510, 23.532015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488112, -0.322845, -0.810875,
		-0.856354, -0.002252, 0.516385,
		-0.168538, 0.946449, -0.275370,
		32.023129, 35.273445, 23.449404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468227, 34.556828, 23.387802>,  <32.141106, 34.610931, 23.642162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468227, 34.556828, 23.387802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.582476, 34.911732, 23.242918>,  <31.651024, 35.124672, 23.155987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.582476, 34.911732, 23.242918>,  <31.468227, 34.556828, 23.387802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582476, 34.911732, 23.242918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470118, -0.199636, -0.859729,
		-0.835111, 0.415838, 0.360096,
		0.285620, 0.887257, -0.362212,
		31.668161, 35.177910, 23.134254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900782, 34.792435, 23.016699>,  <31.468227, 34.556828, 23.387802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900782, 34.792435, 23.016699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.213844, 34.985714, 22.859743>,  <31.401682, 35.101681, 22.765570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.213844, 34.985714, 22.859743>,  <30.900782, 34.792435, 23.016699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213844, 34.985714, 22.859743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422899, -0.049775, -0.904809,
		-0.456734, 0.874094, 0.165387,
		0.782656, 0.483199, -0.392387,
		31.448641, 35.130672, 22.742027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604071, 35.197784, 22.456413>,  <30.900782, 34.792435, 23.016699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604071, 35.197784, 22.456413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.992165, 35.201595, 22.359619>,  <31.225021, 35.203880, 22.301542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.992165, 35.201595, 22.359619>,  <30.604071, 35.197784, 22.456413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992165, 35.201595, 22.359619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239948, -0.097323, -0.965895,
		-0.032753, 0.995207, -0.092140,
		0.970233, 0.009527, -0.241985,
		31.283234, 35.204453, 22.287024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612116, 35.650009, 21.991289>,  <30.604071, 35.197784, 22.456413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612116, 35.650009, 21.991289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.959204, 35.458206, 21.938919>,  <31.167456, 35.343124, 21.907497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.959204, 35.458206, 21.938919>,  <30.612116, 35.650009, 21.991289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959204, 35.458206, 21.938919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144092, 0.009428, -0.989519,
		0.475712, 0.877489, -0.060911,
		0.867719, -0.479503, -0.130924,
		31.219519, 35.314354, 21.899641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938282, 35.950008, 21.438910>,  <30.612116, 35.650009, 21.991289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938282, 35.950008, 21.438910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.108923, 35.588417, 21.450459>,  <31.211308, 35.371464, 21.457388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.108923, 35.588417, 21.450459>,  <30.938282, 35.950008, 21.438910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108923, 35.588417, 21.450459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039546, -0.013250, -0.999130,
		0.903575, 0.427372, 0.030097,
		0.426601, -0.903979, 0.028874,
		31.236904, 35.317223, 21.459120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438118, 35.919441, 20.931614>,  <30.938282, 35.950008, 21.438910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438118, 35.919441, 20.931614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.392767, 35.529770, 21.009716>,  <31.365557, 35.295967, 21.056578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.392767, 35.529770, 21.009716>,  <31.438118, 35.919441, 20.931614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392767, 35.529770, 21.009716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049004, -0.201769, -0.978206,
		0.992343, -0.101338, 0.070615,
		-0.113378, -0.974176, 0.195258,
		31.358753, 35.237518, 21.068293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741508, 35.685226, 20.368700>,  <31.438118, 35.919441, 20.931614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741508, 35.685226, 20.368700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.565035, 35.361446, 20.523697>,  <31.459150, 35.167179, 20.616695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.565035, 35.361446, 20.523697>,  <31.741508, 35.685226, 20.368700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565035, 35.361446, 20.523697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020179, -0.440627, -0.897463,
		0.897189, -0.388128, 0.210732,
		-0.441184, -0.809447, 0.387494,
		31.432680, 35.118610, 20.639946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106541, 35.041771, 20.144024>,  <31.741508, 35.685226, 20.368700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106541, 35.041771, 20.144024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.717581, 34.996731, 20.225769>,  <31.484205, 34.969707, 20.274817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.717581, 34.996731, 20.225769>,  <32.106541, 35.041771, 20.144024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717581, 34.996731, 20.225769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166708, -0.277531, -0.946142,
		0.163257, -0.954095, 0.251098,
		-0.972397, -0.112604, 0.204364,
		31.425861, 34.962948, 20.287079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760803, 34.389061, 19.799126>,  <32.106541, 35.041771, 20.144024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760803, 34.389061, 19.799126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.501165, 34.681034, 19.884802>,  <31.345383, 34.856216, 19.936209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.501165, 34.681034, 19.884802>,  <31.760803, 34.389061, 19.799126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501165, 34.681034, 19.884802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392085, -0.079734, -0.916467,
		-0.651879, -0.678855, 0.337950,
		-0.649094, 0.729931, 0.214192,
		31.306437, 34.900013, 19.949059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749441, 33.810658, 19.325781>,  <31.760803, 34.389061, 19.799126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749441, 33.810658, 19.325781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.677502, 33.419945, 19.372334>,  <31.634338, 33.185516, 19.400265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.677502, 33.419945, 19.372334>,  <31.749441, 33.810658, 19.325781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677502, 33.419945, 19.372334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484363, 0.015040, 0.874738,
		-0.856181, 0.213692, 0.470414,
		-0.179850, -0.976785, 0.116381,
		31.623547, 33.126907, 19.407248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463852, 33.655319, 20.051704>,  <31.749441, 33.810658, 19.325781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463852, 33.655319, 20.051704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.611797, 33.306667, 19.923038>,  <31.700563, 33.097477, 19.845839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.611797, 33.306667, 19.923038>,  <31.463852, 33.655319, 20.051704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611797, 33.306667, 19.923038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545457, -0.076555, 0.834635,
		-0.752116, -0.484153, 0.447120,
		0.369862, -0.871628, -0.321663,
		31.722755, 33.045177, 19.826540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353331, 33.205296, 20.653870>,  <31.463852, 33.655319, 20.051704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353331, 33.205296, 20.653870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.622299, 33.010914, 20.430552>,  <31.783680, 32.894283, 20.296560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.622299, 33.010914, 20.430552>,  <31.353331, 33.205296, 20.653870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622299, 33.010914, 20.430552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451354, -0.328598, 0.829640,
		-0.586624, -0.809858, -0.001618,
		0.672422, -0.485956, -0.558296,
		31.824026, 32.865128, 20.263063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405396, 32.585831, 20.990828>,  <31.353331, 33.205296, 20.653870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405396, 32.585831, 20.990828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.726677, 32.600758, 20.753014>,  <31.919445, 32.609715, 20.610325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.726677, 32.600758, 20.753014>,  <31.405396, 32.585831, 20.990828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726677, 32.600758, 20.753014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540027, -0.466910, 0.700261,
		-0.251462, -0.883517, -0.395176,
		0.803204, 0.037317, -0.594534,
		31.967638, 32.611954, 20.574654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649961, 31.916252, 21.001421>,  <31.405396, 32.585831, 20.990828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649961, 31.916252, 21.001421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.955078, 32.152645, 20.896431>,  <32.138149, 32.294479, 20.833437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.955078, 32.152645, 20.896431>,  <31.649961, 31.916252, 21.001421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955078, 32.152645, 20.896431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568002, -0.418337, 0.708779,
		0.309072, -0.689736, -0.654782,
		0.762790, 0.590981, -0.262475,
		32.183914, 32.329941, 20.817688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247810, 31.441093, 21.060242>,  <31.649961, 31.916252, 21.001421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247810, 31.441093, 21.060242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.387936, 31.815462, 21.074835>,  <32.472012, 32.040085, 21.083591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.387936, 31.815462, 21.074835>,  <32.247810, 31.441093, 21.060242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387936, 31.815462, 21.074835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567726, -0.243159, 0.786486,
		0.744960, -0.254805, -0.616529,
		0.350316, 0.935921, 0.036484,
		32.493031, 32.096237, 21.085779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002377, 31.371881, 21.075329>,  <32.247810, 31.441093, 21.060242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002377, 31.371881, 21.075329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.925217, 31.734049, 21.226595>,  <32.878922, 31.951349, 21.317354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.925217, 31.734049, 21.226595>,  <33.002377, 31.371881, 21.075329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925217, 31.734049, 21.226595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639201, -0.176450, 0.748524,
		0.744453, 0.386117, -0.544705,
		-0.192904, 0.905417, 0.378165,
		32.867344, 32.005672, 21.340044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596638, 31.613960, 21.334757>,  <33.002377, 31.371881, 21.075329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596638, 31.613960, 21.334757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.327377, 31.850758, 21.512032>,  <33.165821, 31.992836, 21.618397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.327377, 31.850758, 21.512032>,  <33.596638, 31.613960, 21.334757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327377, 31.850758, 21.512032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467467, -0.123734, 0.875308,
		0.573014, 0.796387, -0.193447,
		-0.673148, 0.591994, 0.443186,
		33.125431, 32.028355, 21.644987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361752, 31.783125, 21.287340>,  <33.596638, 31.613960, 21.334757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361752, 31.783125, 21.287340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.611866, 31.476007, 21.343224>,  <34.761932, 31.291737, 21.376753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.611866, 31.476007, 21.343224>,  <34.361752, 31.783125, 21.287340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611866, 31.476007, 21.343224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186235, -0.027042, -0.982133,
		0.757852, 0.640128, 0.126081,
		0.625282, -0.767792, 0.139708,
		34.799450, 31.245670, 21.385136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035686, 31.985136, 21.044458>,  <34.361752, 31.783125, 21.287340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.035686, 31.985136, 21.044458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.026356, 31.585684, 21.025743>,  <35.020756, 31.346012, 21.014515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.026356, 31.585684, 21.025743>,  <35.035686, 31.985136, 21.044458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026356, 31.585684, 21.025743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308966, 0.037308, -0.950341,
		0.950787, -0.036625, 0.307673,
		-0.023328, -0.998632, -0.046788,
		35.019356, 31.286095, 21.011707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673809, 31.729191, 20.845419>,  <35.035686, 31.985136, 21.044458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673809, 31.729191, 20.845419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.425491, 31.432608, 20.743551>,  <35.276501, 31.254658, 20.682430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.425491, 31.432608, 20.743551>,  <35.673809, 31.729191, 20.845419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425491, 31.432608, 20.743551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429169, -0.049560, -0.901864,
		0.656074, -0.669165, 0.348978,
		-0.620791, -0.741459, -0.254669,
		35.239254, 31.210171, 20.667150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095375, 31.281374, 20.415173>,  <35.673809, 31.729191, 20.845419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095375, 31.281374, 20.415173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.727436, 31.139326, 20.348520>,  <35.506672, 31.054096, 20.308529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.727436, 31.139326, 20.348520>,  <36.095375, 31.281374, 20.415173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.727436, 31.139326, 20.348520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210927, -0.089612, -0.973386,
		0.330739, -0.930515, 0.157334,
		-0.919849, -0.355122, -0.166633,
		35.451481, 31.032789, 20.298531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160080, 30.569899, 20.112303>,  <36.095375, 31.281374, 20.415173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160080, 30.569899, 20.112303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.817009, 30.732492, 19.986345>,  <35.611164, 30.830048, 19.910770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.817009, 30.732492, 19.986345>,  <36.160080, 30.569899, 20.112303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817009, 30.732492, 19.986345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271881, -0.161285, -0.948719,
		-0.436426, -0.899310, 0.027816,
		-0.857679, 0.406483, -0.314894,
		35.559704, 30.854437, 19.891876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052540, 30.240974, 19.426435>,  <36.160080, 30.569899, 20.112303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052540, 30.240974, 19.426435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.774460, 30.528461, 19.431311>,  <35.607613, 30.700953, 19.434237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.774460, 30.528461, 19.431311>,  <36.052540, 30.240974, 19.426435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774460, 30.528461, 19.431311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031408, -0.013431, -0.999417,
		-0.718133, -0.695174, 0.031910,
		-0.695197, 0.718716, 0.012189,
		35.565899, 30.744076, 19.434967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660374, 30.055384, 18.885044>,  <36.052540, 30.240974, 19.426435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660374, 30.055384, 18.885044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.561954, 30.432917, 18.973257>,  <35.502903, 30.659437, 19.026186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.561954, 30.432917, 18.973257>,  <35.660374, 30.055384, 18.885044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561954, 30.432917, 18.973257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227839, 0.164833, -0.959646,
		-0.942098, -0.286368, 0.174485,
		-0.246051, 0.943834, 0.220534,
		35.488140, 30.716066, 19.039417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900257, 30.213619, 18.518869>,  <35.660374, 30.055384, 18.885044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900257, 30.213619, 18.518869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.110245, 30.547054, 18.587620>,  <35.236237, 30.747116, 18.628870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.110245, 30.547054, 18.587620>,  <34.900257, 30.213619, 18.518869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110245, 30.547054, 18.587620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072132, 0.244789, -0.966889,
		-0.848061, 0.495186, 0.188634,
		0.524966, 0.833588, 0.171877,
		35.267735, 30.797131, 18.639183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411537, 30.808884, 18.297890>,  <34.900257, 30.213619, 18.518869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411537, 30.808884, 18.297890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.802773, 30.890152, 18.279755>,  <35.037514, 30.938913, 18.268873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.802773, 30.890152, 18.279755>,  <34.411537, 30.808884, 18.297890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802773, 30.890152, 18.279755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103267, 0.284454, -0.953112,
		-0.180750, 0.936913, 0.299203,
		0.978093, 0.203173, -0.045337,
		35.096199, 30.951103, 18.266153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.949955, 31.877804, 34.182610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079704, 32.255802, 34.165829>,  <37.157555, 32.482601, 34.155762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079704, 32.255802, 34.165829>,  <36.949955, 31.877804, 34.182610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079704, 32.255802, 34.165829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269334, 0.049759, -0.961761,
		-0.906774, 0.323270, 0.270660,
		0.324377, 0.944998, -0.041948,
		37.177017, 32.539303, 34.153244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452473, 32.385448, 33.994617>,  <36.949955, 31.877804, 34.182610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452473, 32.385448, 33.994617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.821125, 32.483730, 33.874470>,  <37.042316, 32.542698, 33.802380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.821125, 32.483730, 33.874470>,  <36.452473, 32.385448, 33.994617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821125, 32.483730, 33.874470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304844, -0.020576, -0.952180,
		-0.240135, 0.969126, 0.055938,
		0.921632, 0.245704, -0.300374,
		37.097614, 32.557442, 33.784359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492580, 33.010624, 33.506840>,  <36.452473, 32.385448, 33.994617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492580, 33.010624, 33.506840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795521, 32.752838, 33.464718>,  <36.977283, 32.598167, 33.439445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795521, 32.752838, 33.464718>,  <36.492580, 33.010624, 33.506840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795521, 32.752838, 33.464718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228176, -0.110072, -0.967378,
		0.611851, 0.756668, -0.230414,
		0.757346, -0.644466, -0.105306,
		37.022724, 32.559498, 33.433125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871510, 33.244946, 32.926132>,  <36.492580, 33.010624, 33.506840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871510, 33.244946, 32.926132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.986851, 32.864807, 32.972927>,  <37.056057, 32.636723, 33.001003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.986851, 32.864807, 32.972927>,  <36.871510, 33.244946, 32.926132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986851, 32.864807, 32.972927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085684, -0.096080, -0.991679,
		0.953682, 0.295981, 0.053725,
		0.288356, -0.950349, 0.116991,
		37.073357, 32.579700, 33.008026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463963, 33.229313, 32.476692>,  <36.871510, 33.244946, 32.926132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463963, 33.229313, 32.476692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.358086, 32.847080, 32.528549>,  <37.294559, 32.617741, 32.559666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.358086, 32.847080, 32.528549>,  <37.463963, 33.229313, 32.476692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358086, 32.847080, 32.528549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014328, -0.130530, -0.991341,
		0.964226, -0.264259, 0.020858,
		-0.264693, -0.955578, 0.129647,
		37.278679, 32.560406, 32.567444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901638, 32.910603, 31.984568>,  <37.463963, 33.229313, 32.476692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901638, 32.910603, 31.984568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.604492, 32.649193, 32.042625>,  <37.426205, 32.492348, 32.077461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.604492, 32.649193, 32.042625>,  <37.901638, 32.910603, 31.984568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604492, 32.649193, 32.042625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056285, -0.155074, -0.986298,
		0.667074, -0.740854, 0.078415,
		-0.742863, -0.653520, 0.145144,
		37.381634, 32.453136, 32.086170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145939, 32.242905, 31.681694>,  <37.901638, 32.910603, 31.984568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145939, 32.242905, 31.681694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.747223, 32.211475, 31.687860>,  <37.507992, 32.192619, 31.691561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.747223, 32.211475, 31.687860>,  <38.145939, 32.242905, 31.681694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747223, 32.211475, 31.687860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023787, -0.474434, -0.879970,
		0.076454, -0.876778, 0.474780,
		-0.996789, -0.078571, 0.015416,
		37.448185, 32.187904, 31.692486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940407, 31.589485, 31.338516>,  <38.145939, 32.242905, 31.681694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940407, 31.589485, 31.338516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.580654, 31.762793, 31.361780>,  <37.364803, 31.866777, 31.375738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.580654, 31.762793, 31.361780>,  <37.940407, 31.589485, 31.338516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580654, 31.762793, 31.361780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191354, -0.270561, -0.943494,
		-0.393052, -0.859694, 0.326246,
		-0.899385, 0.433271, 0.058161,
		37.310837, 31.892773, 31.379229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412964, 31.123413, 31.010998>,  <37.940407, 31.589485, 31.338516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412964, 31.123413, 31.010998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.265507, 31.495228, 31.014160>,  <37.177032, 31.718317, 31.016058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.265507, 31.495228, 31.014160>,  <37.412964, 31.123413, 31.010998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265507, 31.495228, 31.014160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308171, -0.114181, -0.944454,
		-0.877004, -0.350601, 0.328548,
		-0.368640, 0.929539, 0.007908,
		37.154915, 31.774090, 31.016533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721180, 31.124525, 30.790894>,  <37.412964, 31.123413, 31.010998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721180, 31.124525, 30.790894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830299, 31.502106, 30.716557>,  <36.895771, 31.728653, 30.671953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.830299, 31.502106, 30.716557>,  <36.721180, 31.124525, 30.790894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830299, 31.502106, 30.716557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206048, -0.131362, -0.969685,
		-0.939747, 0.302822, 0.158663,
		0.272800, 0.943951, -0.185843,
		36.912140, 31.785292, 30.660803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150822, 31.460117, 30.421076>,  <36.721180, 31.124525, 30.790894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150822, 31.460117, 30.421076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489586, 31.655365, 30.336710>,  <36.692844, 31.772514, 30.286091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489586, 31.655365, 30.336710>,  <36.150822, 31.460117, 30.421076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489586, 31.655365, 30.336710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313074, 0.137122, -0.939778,
		-0.429805, 0.861937, 0.268948,
		0.846908, 0.488121, -0.210914,
		36.743660, 31.801802, 30.273436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948231, 31.997080, 30.032473>,  <36.150822, 31.460117, 30.421076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948231, 31.997080, 30.032473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333141, 31.934025, 29.943766>,  <36.564087, 31.896193, 29.890541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333141, 31.934025, 29.943766>,  <35.948231, 31.997080, 30.032473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333141, 31.934025, 29.943766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203812, 0.122347, -0.971335,
		0.180250, 0.979889, 0.085603,
		0.962274, -0.157636, -0.221766,
		36.621822, 31.886734, 29.877235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395405, 32.437561, 30.190378>,  <35.948231, 31.997080, 30.032473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395405, 32.437561, 30.190378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996616, 32.411011, 30.174122>,  <34.757343, 32.395081, 30.164368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996616, 32.411011, 30.174122>,  <35.395405, 32.437561, 30.190378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996616, 32.411011, 30.174122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053351, 0.202628, 0.977802,
		-0.056663, 0.977004, -0.205554,
		-0.996967, -0.066372, -0.040643,
		34.697525, 32.391098, 30.161928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217693, 33.027271, 30.496708>,  <35.395405, 32.437561, 30.190378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217693, 33.027271, 30.496708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891174, 32.796284, 30.491302>,  <34.695263, 32.657692, 30.488060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891174, 32.796284, 30.491302>,  <35.217693, 33.027271, 30.496708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891174, 32.796284, 30.491302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157631, 0.200197, 0.966992,
		-0.555706, 0.791484, -0.254449,
		-0.816299, -0.577472, -0.013512,
		34.646286, 32.623043, 30.487249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558590, 33.470188, 30.554800>,  <35.217693, 33.027271, 30.496708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558590, 33.470188, 30.554800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.551899, 33.097317, 30.699442>,  <34.547886, 32.873592, 30.786228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.551899, 33.097317, 30.699442>,  <34.558590, 33.470188, 30.554800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551899, 33.097317, 30.699442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093275, 0.361534, 0.927682,
		-0.995500, -0.018212, -0.092997,
		-0.016726, -0.932181, 0.361606,
		34.546883, 32.817661, 30.807924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200584, 33.580692, 31.173649>,  <34.558590, 33.470188, 30.554800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200584, 33.580692, 31.173649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335659, 33.205357, 31.203272>,  <34.416706, 32.980156, 31.221046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335659, 33.205357, 31.203272>,  <34.200584, 33.580692, 31.173649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335659, 33.205357, 31.203272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053803, 0.097795, 0.993751,
		-0.939718, -0.331595, 0.083510,
		0.337690, -0.938339, 0.074059,
		34.436966, 32.923855, 31.225489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723396, 33.267132, 31.622999>,  <34.200584, 33.580692, 31.173649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723396, 33.267132, 31.622999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.056244, 33.045837, 31.638475>,  <34.255955, 32.913059, 31.647762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.056244, 33.045837, 31.638475>,  <33.723396, 33.267132, 31.622999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056244, 33.045837, 31.638475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008865, 0.083028, 0.996508,
		-0.554520, -0.828874, 0.073995,
		0.832123, -0.553240, 0.038693,
		34.305882, 32.879868, 31.650084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580715, 32.906487, 32.303783>,  <33.723396, 33.267132, 31.622999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580715, 32.906487, 32.303783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.970501, 32.867516, 32.222858>,  <34.204372, 32.844131, 32.174305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.970501, 32.867516, 32.222858>,  <33.580715, 32.906487, 32.303783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970501, 32.867516, 32.222858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221645, 0.272891, 0.936164,
		-0.036001, -0.957099, 0.287517,
		0.974463, -0.097429, -0.202312,
		34.262840, 32.838287, 32.162167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895645, 32.580212, 32.909798>,  <33.580715, 32.906487, 32.303783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895645, 32.580212, 32.909798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.194309, 32.739986, 32.697025>,  <34.373508, 32.835854, 32.569363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.194309, 32.739986, 32.697025>,  <33.895645, 32.580212, 32.909798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194309, 32.739986, 32.697025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492209, 0.206155, 0.845713,
		0.447471, -0.893280, -0.042680,
		0.746660, 0.399439, -0.531929,
		34.418308, 32.859818, 32.537445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452686, 32.209461, 33.149536>,  <33.895645, 32.580212, 32.909798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452686, 32.209461, 33.149536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573391, 32.554165, 32.986412>,  <34.645813, 32.760986, 32.888538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.573391, 32.554165, 32.986412>,  <34.452686, 32.209461, 33.149536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573391, 32.554165, 32.986412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471354, 0.236961, 0.849514,
		0.828713, -0.448574, -0.334689,
		0.301762, 0.861760, -0.407809,
		34.663921, 32.812695, 32.864071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212475, 32.364601, 33.301502>,  <34.452686, 32.209461, 33.149536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212475, 32.364601, 33.301502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.081200, 32.733082, 33.217903>,  <35.002434, 32.954170, 33.167744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.081200, 32.733082, 33.217903>,  <35.212475, 32.364601, 33.301502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081200, 32.733082, 33.217903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339242, 0.321431, 0.884080,
		0.881593, 0.219245, -0.418001,
		-0.328189, 0.921202, -0.208994,
		34.982742, 33.009441, 33.155205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678757, 32.825798, 33.515495>,  <35.212475, 32.364601, 33.301502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678757, 32.825798, 33.515495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348492, 33.051422, 33.511154>,  <35.150333, 33.186798, 33.508549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348492, 33.051422, 33.511154>,  <35.678757, 32.825798, 33.515495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348492, 33.051422, 33.511154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296262, 0.449877, 0.842520,
		0.480116, 0.692421, -0.538555,
		-0.825662, 0.564061, -0.010855,
		35.100792, 33.220642, 33.507896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898773, 33.553905, 33.687271>,  <35.678757, 32.825798, 33.515495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898773, 33.553905, 33.687271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.500420, 33.560886, 33.722866>,  <35.261410, 33.565075, 33.744225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.500420, 33.560886, 33.722866>,  <35.898773, 33.553905, 33.687271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500420, 33.560886, 33.722866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082758, 0.576215, 0.813098,
		-0.037085, 0.817112, -0.575285,
		-0.995880, 0.017456, 0.088991,
		35.201656, 33.566124, 33.749565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692551, 34.227657, 33.831657>,  <35.898773, 33.553905, 33.687271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692551, 34.227657, 33.831657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377129, 34.020031, 33.963570>,  <35.187878, 33.895454, 34.042717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377129, 34.020031, 33.963570>,  <35.692551, 34.227657, 33.831657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377129, 34.020031, 33.963570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070275, 0.608801, 0.790204,
		-0.610938, 0.599943, -0.516549,
		-0.788553, -0.519066, 0.329779,
		35.140564, 33.864311, 34.062504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101788, 34.727322, 33.982670>,  <35.692551, 34.227657, 33.831657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101788, 34.727322, 33.982670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.059372, 34.385288, 34.185684>,  <35.033924, 34.180069, 34.307491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.059372, 34.385288, 34.185684>,  <35.101788, 34.727322, 33.982670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059372, 34.385288, 34.185684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055541, 0.514706, 0.855566,
		-0.992810, 0.062531, -0.102069,
		-0.106035, -0.855083, 0.507533,
		35.027561, 34.128765, 34.337944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513077, 34.897659, 34.359886>,  <35.101788, 34.727322, 33.982670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513077, 34.897659, 34.359886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.707199, 34.600128, 34.543716>,  <34.823673, 34.421612, 34.654015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.707199, 34.600128, 34.543716>,  <34.513077, 34.897659, 34.359886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707199, 34.600128, 34.543716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052207, 0.549332, 0.833971,
		-0.872785, -0.380737, 0.305426,
		0.485304, -0.743824, 0.459572,
		34.852791, 34.376980, 34.681587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142673, 34.804600, 35.005455>,  <34.513077, 34.897659, 34.359886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142673, 34.804600, 35.005455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513199, 34.668324, 35.069805>,  <34.735512, 34.586559, 35.108414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.513199, 34.668324, 35.069805>,  <34.142673, 34.804600, 35.005455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513199, 34.668324, 35.069805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054552, 0.301217, 0.951994,
		-0.372791, -0.890618, 0.260436,
		0.926310, -0.340687, 0.160876,
		34.791092, 34.566116, 35.118069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685192, 35.279549, 34.489658>,  <34.142673, 34.804600, 35.005455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685192, 35.279549, 34.489658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.896397, 35.577938, 34.652004>,  <34.023121, 35.756973, 34.749413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.896397, 35.577938, 34.652004>,  <33.685192, 35.279549, 34.489658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896397, 35.577938, 34.652004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018488, 0.487900, -0.872704,
		-0.849034, 0.453297, 0.271409,
		0.528014, 0.745973, 0.405863,
		34.054802, 35.801731, 34.773762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309391, 35.992260, 34.580029>,  <33.685192, 35.279549, 34.489658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309391, 35.992260, 34.580029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.700298, 35.985821, 34.495472>,  <33.934845, 35.981956, 34.444740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.700298, 35.985821, 34.495472>,  <33.309391, 35.992260, 34.580029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700298, 35.985821, 34.495472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175377, 0.498816, -0.848779,
		0.119107, 0.866558, 0.484655,
		0.977270, -0.016098, -0.211387,
		33.993481, 35.980991, 34.432056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425877, 36.589710, 34.369370>,  <33.309391, 35.992260, 34.580029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425877, 36.589710, 34.369370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739017, 36.396374, 34.212643>,  <33.926903, 36.280373, 34.118607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.739017, 36.396374, 34.212643>,  <33.425877, 36.589710, 34.369370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739017, 36.396374, 34.212643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133885, 0.484118, -0.864699,
		0.607627, 0.729394, 0.314283,
		0.782857, -0.483337, -0.391817,
		33.973873, 36.251373, 34.095097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799625, 37.209396, 34.078316>,  <33.425877, 36.589710, 34.369370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799625, 37.209396, 34.078316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958321, 36.885769, 33.904877>,  <34.053539, 36.691593, 33.800816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958321, 36.885769, 33.904877>,  <33.799625, 37.209396, 34.078316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958321, 36.885769, 33.904877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282915, 0.341589, -0.896256,
		0.873246, 0.478249, -0.093377,
		0.396737, -0.809070, -0.433595,
		34.077343, 36.643047, 33.774799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814140, 37.300667, 33.405823>,  <33.799625, 37.209396, 34.078316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814140, 37.300667, 33.405823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870388, 36.904671, 33.400860>,  <33.904137, 36.667072, 33.397881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870388, 36.904671, 33.400860>,  <33.814140, 37.300667, 33.405823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870388, 36.904671, 33.400860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413623, -0.047355, -0.909216,
		0.899524, 0.132981, -0.416140,
		0.140615, -0.989987, -0.012407,
		33.912571, 36.607674, 33.397137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110340, 37.122257, 32.827679>,  <33.814140, 37.300667, 33.405823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110340, 37.122257, 32.827679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.970802, 36.759296, 32.921429>,  <33.887077, 36.541519, 32.977676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.970802, 36.759296, 32.921429>,  <34.110340, 37.122257, 32.827679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970802, 36.759296, 32.921429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241666, -0.154527, -0.957977,
		0.905485, -0.390828, -0.165381,
		-0.348848, -0.907400, 0.234372,
		33.866146, 36.487076, 32.991741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339508, 36.580647, 32.343594>,  <34.110340, 37.122257, 32.827679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339508, 36.580647, 32.343594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036285, 36.375340, 32.504543>,  <33.854351, 36.252155, 32.601112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.036285, 36.375340, 32.504543>,  <34.339508, 36.580647, 32.343594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036285, 36.375340, 32.504543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340064, -0.215383, -0.915405,
		0.556514, -0.830761, -0.011272,
		-0.758056, -0.513269, 0.402376,
		33.808868, 36.221359, 32.625256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254601, 35.887917, 32.078514>,  <34.339508, 36.580647, 32.343594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254601, 35.887917, 32.078514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887596, 35.982281, 32.206589>,  <33.667393, 36.038898, 32.283432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887596, 35.982281, 32.206589>,  <34.254601, 35.887917, 32.078514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887596, 35.982281, 32.206589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379730, -0.280291, -0.881613,
		-0.118240, -0.930474, 0.346754,
		-0.917510, 0.235915, 0.320187,
		33.612343, 36.053055, 32.302647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764484, 35.394455, 31.927313>,  <34.254601, 35.887917, 32.078514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764484, 35.394455, 31.927313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522942, 35.709648, 31.975367>,  <33.378017, 35.898766, 32.004200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.522942, 35.709648, 31.975367>,  <33.764484, 35.394455, 31.927313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522942, 35.709648, 31.975367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405079, -0.173569, -0.897655,
		-0.686489, -0.590720, 0.424008,
		-0.603858, 0.787987, 0.120134,
		33.341785, 35.946045, 32.011406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138954, 35.270386, 31.501034>,  <33.764484, 35.394455, 31.927313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138954, 35.270386, 31.501034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.098251, 35.660259, 31.580662>,  <33.073830, 35.894184, 31.628439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.098251, 35.660259, 31.580662>,  <33.138954, 35.270386, 31.501034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098251, 35.660259, 31.580662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333569, 0.155095, -0.929880,
		-0.937218, -0.161024, 0.309344,
		-0.101755, 0.974688, 0.199070,
		33.067726, 35.952667, 31.640383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.493347, 35.426098, 31.290516>,  <33.138954, 35.270386, 31.501034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.493347, 35.426098, 31.290516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666763, 35.786255, 31.305136>,  <32.770813, 36.002350, 31.313908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666763, 35.786255, 31.305136>,  <32.493347, 35.426098, 31.290516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666763, 35.786255, 31.305136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325942, 0.194495, -0.925167,
		-0.840122, 0.389185, 0.377797,
		0.433541, 0.900393, 0.036548,
		32.796825, 36.056374, 31.316099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974728, 35.944187, 30.989666>,  <32.493347, 35.426098, 31.290516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974728, 35.944187, 30.989666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.329632, 36.127781, 30.971325>,  <32.542576, 36.237938, 30.960320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.329632, 36.127781, 30.971325>,  <31.974728, 35.944187, 30.989666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329632, 36.127781, 30.971325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184672, 0.262368, -0.947132,
		-0.422688, 0.848821, 0.317550,
		0.887260, 0.458984, -0.045853,
		32.595810, 36.265476, 30.957569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774965, 36.605339, 30.737255>,  <31.974728, 35.944187, 30.989666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774965, 36.605339, 30.737255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158264, 36.526794, 30.654112>,  <32.388245, 36.479668, 30.604227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.158264, 36.526794, 30.654112>,  <31.774965, 36.605339, 30.737255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158264, 36.526794, 30.654112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127776, 0.356248, -0.925614,
		0.255806, 0.913525, 0.316283,
		0.958247, -0.196364, -0.207857,
		32.445740, 36.467884, 30.591755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915091, 37.184650, 30.414717>,  <31.774965, 36.605339, 30.737255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915091, 37.184650, 30.414717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202053, 36.923794, 30.316708>,  <32.374229, 36.767281, 30.257902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202053, 36.923794, 30.316708>,  <31.915091, 37.184650, 30.414717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202053, 36.923794, 30.316708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050876, 0.301731, -0.952035,
		0.694793, 0.695463, 0.183286,
		0.717408, -0.652142, -0.245023,
		32.417274, 36.728149, 30.243200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111752, 37.481316, 29.661964>,  <31.915091, 37.184650, 30.414717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111752, 37.481316, 29.661964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.310558, 37.134232, 29.659267>,  <32.429844, 36.925980, 29.657650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.310558, 37.134232, 29.659267>,  <32.111752, 37.481316, 29.661964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310558, 37.134232, 29.659267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069710, -0.032183, -0.997048,
		0.864934, 0.496024, -0.076484,
		0.497021, -0.867712, -0.006741,
		32.459663, 36.873917, 29.657246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595959, 37.480492, 29.046465>,  <32.111752, 37.481316, 29.661964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595959, 37.480492, 29.046465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.528645, 37.106709, 29.171980>,  <32.488258, 36.882439, 29.247290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.528645, 37.106709, 29.171980>,  <32.595959, 37.480492, 29.046465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528645, 37.106709, 29.171980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011174, -0.316499, -0.948527,
		0.985676, -0.163125, 0.042819,
		-0.168281, -0.934462, 0.313788,
		32.478161, 36.826370, 29.266117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115582, 37.010788, 28.827108>,  <32.595959, 37.480492, 29.046465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115582, 37.010788, 28.827108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.788239, 36.785038, 28.870514>,  <32.591831, 36.649590, 28.896557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.788239, 36.785038, 28.870514>,  <33.115582, 37.010788, 28.827108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.788239, 36.785038, 28.870514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151589, -0.394100, -0.906480,
		0.554359, -0.725374, 0.408067,
		-0.818356, -0.564373, 0.108514,
		32.542732, 36.615726, 28.903069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264668, 36.305721, 28.660089>,  <33.115582, 37.010788, 28.827108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264668, 36.305721, 28.660089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869049, 36.346565, 28.617451>,  <32.631680, 36.371071, 28.591867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869049, 36.346565, 28.617451>,  <33.264668, 36.305721, 28.660089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869049, 36.346565, 28.617451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044310, -0.483465, -0.874242,
		-0.140806, -0.869388, 0.473644,
		-0.989045, 0.102111, -0.106598,
		32.572334, 36.377197, 28.585472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039021, 35.648846, 28.429569>,  <33.264668, 36.305721, 28.660089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039021, 35.648846, 28.429569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.747395, 35.903728, 28.329624>,  <32.572418, 36.056656, 28.269657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.747395, 35.903728, 28.329624>,  <33.039021, 35.648846, 28.429569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747395, 35.903728, 28.329624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052268, -0.312158, -0.948591,
		-0.682443, -0.704647, 0.194278,
		-0.729067, 0.637205, -0.249861,
		32.528675, 36.094891, 28.254665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569950, 35.264965, 27.997881>,  <33.039021, 35.648846, 28.429569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569950, 35.264965, 27.997881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476448, 35.638660, 27.890137>,  <32.420345, 35.862877, 27.825489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.476448, 35.638660, 27.890137>,  <32.569950, 35.264965, 27.997881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476448, 35.638660, 27.890137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019344, -0.281452, -0.959380,
		-0.972103, -0.219051, 0.083863,
		-0.233756, 0.934238, -0.269363,
		32.406322, 35.918934, 27.809328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220089, 35.208553, 27.441359>,  <32.569950, 35.264965, 27.997881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220089, 35.208553, 27.441359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.264206, 35.604549, 27.406130>,  <32.290676, 35.842148, 27.384993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.264206, 35.604549, 27.406130>,  <32.220089, 35.208553, 27.441359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264206, 35.604549, 27.406130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177243, -0.067599, -0.981843,
		-0.977968, 0.123900, 0.168013,
		0.110293, 0.989989, -0.088070,
		32.297295, 35.901546, 27.379709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609085, 35.411896, 27.040100>,  <32.220089, 35.208553, 27.441359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609085, 35.411896, 27.040100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.897770, 35.684402, 26.991091>,  <32.070980, 35.847904, 26.961685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.897770, 35.684402, 26.991091>,  <31.609085, 35.411896, 27.040100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897770, 35.684402, 26.991091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049235, -0.126038, -0.990803,
		-0.690439, 0.721108, -0.057421,
		0.721713, 0.681262, -0.122526,
		32.114285, 35.888783, 26.954332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427696, 35.696239, 26.444281>,  <31.609085, 35.411896, 27.040100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427696, 35.696239, 26.444281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.803144, 35.833347, 26.459799>,  <32.028412, 35.915611, 26.469110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.803144, 35.833347, 26.459799>,  <31.427696, 35.696239, 26.444281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.803144, 35.833347, 26.459799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011001, 0.082662, -0.996517,
		-0.344781, 0.935776, 0.073817,
		0.938619, 0.342768, 0.038795,
		32.084728, 35.936176, 26.471437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460670, 36.289116, 25.976223>,  <31.427696, 35.696239, 26.444281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460670, 36.289116, 25.976223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.833456, 36.151009, 26.020458>,  <32.057129, 36.068142, 26.046999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.833456, 36.151009, 26.020458>,  <31.460670, 36.289116, 25.976223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833456, 36.151009, 26.020458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106001, -0.032203, -0.993844,
		0.346708, 0.937950, 0.006587,
		0.931964, -0.345272, 0.110589,
		32.113045, 36.047428, 26.053635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951481, 36.703434, 25.601450>,  <31.460670, 36.289116, 25.976223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951481, 36.703434, 25.601450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164879, 36.368462, 25.648932>,  <32.292919, 36.167477, 25.677422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164879, 36.368462, 25.648932>,  <31.951481, 36.703434, 25.601450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164879, 36.368462, 25.648932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267915, 0.034197, -0.962835,
		0.802249, 0.545472, 0.242605,
		0.533496, -0.837431, 0.118706,
		32.324928, 36.117233, 25.684544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649960, 36.838333, 25.274389>,  <31.951481, 36.703434, 25.601450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649960, 36.838333, 25.274389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.597683, 36.442085, 25.290339>,  <32.566319, 36.204338, 25.299908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.597683, 36.442085, 25.290339>,  <32.649960, 36.838333, 25.274389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597683, 36.442085, 25.290339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220241, -0.068221, -0.973057,
		0.966651, -0.118390, 0.227091,
		-0.130692, -0.990621, 0.039872,
		32.558475, 36.144897, 25.302299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175598, 36.701702, 24.773111>,  <32.649960, 36.838333, 25.274389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175598, 36.701702, 24.773111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920677, 36.396770, 24.818180>,  <32.767723, 36.213810, 24.845222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920677, 36.396770, 24.818180>,  <33.175598, 36.701702, 24.773111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920677, 36.396770, 24.818180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061157, -0.195785, -0.978738,
		0.768184, -0.616861, 0.171396,
		-0.637302, -0.762333, 0.112673,
		32.729488, 36.168072, 24.851982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786346, 36.297337, 24.740658>,  <33.175598, 36.701702, 24.773111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786346, 36.297337, 24.740658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124424, 36.458382, 24.600061>,  <34.327271, 36.555008, 24.515703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.124424, 36.458382, 24.600061>,  <33.786346, 36.297337, 24.740658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124424, 36.458382, 24.600061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277624, 0.231242, 0.932444,
		0.456695, -0.885680, 0.083669,
		0.845195, 0.402614, -0.351493,
		34.377983, 36.579166, 24.494614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378422, 35.970001, 25.035549>,  <33.786346, 36.297337, 24.740658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378422, 35.970001, 25.035549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497837, 36.341892, 24.949314>,  <34.569489, 36.565025, 24.897573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.497837, 36.341892, 24.949314>,  <34.378422, 35.970001, 25.035549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497837, 36.341892, 24.949314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296637, 0.124312, 0.946865,
		0.907127, -0.346630, -0.238679,
		0.298541, 0.929728, -0.215590,
		34.587399, 36.620811, 24.884638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972317, 36.047718, 25.456900>,  <34.378422, 35.970001, 25.035549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972317, 36.047718, 25.456900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.890598, 36.424843, 25.351542>,  <34.841568, 36.651115, 25.288326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.890598, 36.424843, 25.351542>,  <34.972317, 36.047718, 25.456900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890598, 36.424843, 25.351542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297647, 0.316159, 0.900805,
		0.932561, 0.105630, -0.345214,
		-0.204295, 0.942807, -0.263397,
		34.829311, 36.707684, 25.272522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605782, 36.496792, 25.522036>,  <34.972317, 36.047718, 25.456900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605782, 36.496792, 25.522036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.284828, 36.731720, 25.564444>,  <35.092258, 36.872677, 25.589890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.284828, 36.731720, 25.564444>,  <35.605782, 36.496792, 25.522036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284828, 36.731720, 25.564444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357909, 0.331376, 0.872979,
		0.477587, 0.738405, -0.476097,
		-0.802379, 0.587323, 0.106021,
		35.044113, 36.907917, 25.596251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872074, 37.122501, 25.652649>,  <35.605782, 36.496792, 25.522036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872074, 37.122501, 25.652649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492241, 37.168354, 25.769367>,  <35.264339, 37.195866, 25.839399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492241, 37.168354, 25.769367>,  <35.872074, 37.122501, 25.652649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492241, 37.168354, 25.769367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302818, 0.576323, 0.759048,
		-0.081160, 0.809143, -0.581980,
		-0.949586, 0.114630, 0.291797,
		35.207363, 37.202744, 25.856907>
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
