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
	<4.763624, 15.290957, 15.196119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.404984, 15.241982, 15.025887>,  <4.189800, 15.212598, 14.923748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.404984, 15.241982, 15.025887>,  <4.763624, 15.290957, 15.196119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.404984, 15.241982, 15.025887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294279, 0.882869, 0.365981,
		0.330922, 0.453378, -0.827610,
		-0.896599, -0.122437, -0.425581,
		4.136004, 15.205252, 14.898213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.606071, 15.821416, 14.727653>,  <4.763624, 15.290957, 15.196119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.606071, 15.821416, 14.727653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.265350, 15.670908, 14.873449>,  <4.060918, 15.580604, 14.960927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.265350, 15.670908, 14.873449>,  <4.606071, 15.821416, 14.727653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.265350, 15.670908, 14.873449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264266, 0.909392, 0.321200,
		-0.452324, 0.177276, -0.874057,
		-0.851802, -0.376270, 0.364492,
		4.009810, 15.558027, 14.982797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.047447, 16.144835, 14.386097>,  <4.606071, 15.821416, 14.727653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.047447, 16.144835, 14.386097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.909736, 16.029367, 14.743453>,  <3.827110, 15.960088, 14.957867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.909736, 16.029367, 14.743453>,  <4.047447, 16.144835, 14.386097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.909736, 16.029367, 14.743453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144469, 0.956516, 0.253391,
		-0.927687, -0.041830, -0.371009,
		-0.344277, -0.288666, 0.893390,
		3.806453, 15.942767, 15.011470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.333443, 16.375069, 14.558649>,  <4.047447, 16.144835, 14.386097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.333443, 16.375069, 14.558649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.625341, 16.366566, 14.832005>,  <3.800480, 16.361464, 14.996017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.625341, 16.366566, 14.832005>,  <3.333443, 16.375069, 14.558649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.625341, 16.366566, 14.832005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104019, 0.984430, 0.141694,
		-0.675760, -0.174486, 0.716172,
		0.729745, -0.021256, 0.683388,
		3.844265, 16.360189, 15.037021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.082786, 16.622101, 15.312932>,  <3.333443, 16.375069, 14.558649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.082786, 16.622101, 15.312932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.458082, 16.700325, 15.198768>,  <3.683260, 16.747259, 15.130269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.458082, 16.700325, 15.198768>,  <3.082786, 16.622101, 15.312932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.458082, 16.700325, 15.198768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144561, 0.971056, 0.190135,
		0.314333, -0.137133, 0.939356,
		0.938241, 0.195560, -0.285411,
		3.739555, 16.758993, 15.113144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.250292, 17.107960, 15.809174>,  <3.082786, 16.622101, 15.312932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.250292, 17.107960, 15.809174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.532125, 17.146883, 15.528006>,  <3.701225, 17.170237, 15.359305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.532125, 17.146883, 15.528006>,  <3.250292, 17.107960, 15.809174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.532125, 17.146883, 15.528006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009483, 0.991756, 0.127787,
		0.709559, -0.083371, 0.699697,
		0.704583, 0.097307, -0.702919,
		3.743500, 17.176075, 15.317130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.808209, 17.565092, 16.086143>,  <3.250292, 17.107960, 15.809174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.808209, 17.565092, 16.086143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.839782, 17.584583, 15.687868>,  <3.858725, 17.596277, 15.448903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.839782, 17.584583, 15.687868>,  <3.808209, 17.565092, 16.086143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.839782, 17.584583, 15.687868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097702, 0.993618, 0.056372,
		0.992081, -0.101730, 0.073667,
		0.078932, 0.048728, -0.995689,
		3.863461, 17.599201, 15.389162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.426044, 17.859154, 15.892726>,  <3.808209, 17.565092, 16.086143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.426044, 17.859154, 15.892726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.188169, 17.938259, 15.581024>,  <4.045444, 17.985723, 15.394003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.188169, 17.938259, 15.581024>,  <4.426044, 17.859154, 15.892726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.188169, 17.938259, 15.581024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084290, 0.979268, 0.184201,
		0.799527, 0.043858, -0.599027,
		-0.594686, 0.197766, -0.779254,
		4.009763, 17.997589, 15.347248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.660780, 18.396366, 15.534719>,  <4.426044, 17.859154, 15.892726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.660780, 18.396366, 15.534719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.284933, 18.405092, 15.398109>,  <4.059424, 18.410328, 15.316143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.284933, 18.405092, 15.398109>,  <4.660780, 18.396366, 15.534719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.284933, 18.405092, 15.398109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049261, 0.996194, -0.071903,
		0.338658, -0.084385, -0.937118,
		-0.939619, 0.021813, -0.341526,
		4.003047, 18.411636, 15.295651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.687726, 19.021278, 15.221653>,  <4.660780, 18.396366, 15.534719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.687726, 19.021278, 15.221653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.299131, 18.931358, 15.191524>,  <4.065974, 18.877407, 15.173446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.299131, 18.931358, 15.191524>,  <4.687726, 19.021278, 15.221653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.299131, 18.931358, 15.191524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190964, 0.930249, -0.313318,
		0.140505, -0.290001, -0.946656,
		-0.971489, -0.224800, -0.075325,
		4.007684, 18.863918, 15.168926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.412854, 19.302021, 14.527592>,  <4.687726, 19.021278, 15.221653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.412854, 19.302021, 14.527592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.102555, 19.266684, 14.777523>,  <3.916375, 19.245481, 14.927482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.102555, 19.266684, 14.777523>,  <4.412854, 19.302021, 14.527592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.102555, 19.266684, 14.777523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313232, 0.913467, -0.259737,
		-0.547814, -0.397207, -0.736293,
		-0.775749, -0.088343, 0.624828,
		3.869830, 19.240181, 14.964972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.872294, 19.702389, 14.215825>,  <4.412854, 19.302021, 14.527592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.872294, 19.702389, 14.215825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.774105, 19.650322, 14.600075>,  <3.715192, 19.619081, 14.830625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.774105, 19.650322, 14.600075>,  <3.872294, 19.702389, 14.215825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.774105, 19.650322, 14.600075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219139, 0.972744, 0.075812,
		-0.944310, -0.191901, -0.267306,
		-0.245472, -0.130167, 0.960625,
		3.700464, 19.611271, 14.888262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.259767, 20.022781, 14.331495>,  <3.872294, 19.702389, 14.215825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.259767, 20.022781, 14.331495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.417408, 20.005564, 14.698719>,  <3.511992, 19.995234, 14.919053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.417408, 20.005564, 14.698719>,  <3.259767, 20.022781, 14.331495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.417408, 20.005564, 14.698719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235250, 0.960901, 0.146040,
		-0.888449, -0.273527, 0.368566,
		0.394101, -0.043044, 0.918058,
		3.535638, 19.992651, 14.974136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.766622, 20.459396, 14.698861>,  <3.259767, 20.022781, 14.331495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.766622, 20.459396, 14.698861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.101887, 20.418295, 14.913122>,  <3.303046, 20.393635, 15.041679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.101887, 20.418295, 14.913122>,  <2.766622, 20.459396, 14.698861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.101887, 20.418295, 14.913122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045528, 0.965485, 0.256448,
		-0.543517, -0.239332, 0.804556,
		0.838163, -0.102754, 0.535654,
		3.353336, 20.387468, 15.073818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.569114, 20.723291, 15.340450>,  <2.766622, 20.459396, 14.698861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.569114, 20.723291, 15.340450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.966611, 20.742735, 15.300226>,  <3.205109, 20.754400, 15.276092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.966611, 20.742735, 15.300226>,  <2.569114, 20.723291, 15.340450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.966611, 20.742735, 15.300226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017287, 0.956425, 0.291465,
		0.110346, -0.287903, 0.951281,
		0.993743, 0.048607, -0.100561,
		3.264734, 20.757317, 15.270058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.812556, 20.912642, 15.968525>,  <2.569114, 20.723291, 15.340450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.812556, 20.912642, 15.968525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.120107, 20.996935, 15.727056>,  <3.304637, 21.047510, 15.582174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.120107, 20.996935, 15.727056>,  <2.812556, 20.912642, 15.968525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.120107, 20.996935, 15.727056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176996, 0.837087, 0.517647,
		0.614412, -0.504854, 0.606317,
		0.768876, 0.210733, -0.603673,
		3.350770, 21.060154, 15.545954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.226501, 21.274151, 16.366402>,  <2.812556, 20.912642, 15.968525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.226501, 21.274151, 16.366402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.390663, 21.367414, 16.013765>,  <3.489161, 21.423372, 15.802183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.390663, 21.367414, 16.013765>,  <3.226501, 21.274151, 16.366402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.390663, 21.367414, 16.013765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312952, 0.872034, 0.376322,
		0.856519, -0.430341, 0.284924,
		0.410411, 0.233159, -0.881590,
		3.513786, 21.437363, 15.749289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.044590, 21.467409, 16.389162>,  <3.226501, 21.274151, 16.366402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.044590, 21.467409, 16.389162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.898493, 21.652683, 16.066162>,  <3.810834, 21.763847, 15.872362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.898493, 21.652683, 16.066162>,  <4.044590, 21.467409, 16.389162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.898493, 21.652683, 16.066162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237636, 0.885082, 0.400200,
		0.900070, -0.045720, -0.433339,
		-0.365243, 0.463185, -0.807500,
		3.788920, 21.791639, 15.823912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.497681, 21.879551, 16.248051>,  <4.044590, 21.467409, 16.389162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.497681, 21.879551, 16.248051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.194846, 22.046423, 16.046942>,  <4.013145, 22.146545, 15.926276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.194846, 22.046423, 16.046942>,  <4.497681, 21.879551, 16.248051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.194846, 22.046423, 16.046942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290175, 0.904224, 0.313332,
		0.585334, 0.091328, -0.805632,
		-0.757088, 0.417179, -0.502772,
		3.967720, 22.171577, 15.896111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.791607, 22.495413, 15.884365>,  <4.497681, 21.879551, 16.248051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.791607, 22.495413, 15.884365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.396650, 22.557755, 15.873302>,  <4.159676, 22.595160, 15.866665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.396650, 22.557755, 15.873302>,  <4.791607, 22.495413, 15.884365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.396650, 22.557755, 15.873302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151708, 0.981647, 0.115556,
		0.045157, 0.109904, -0.992916,
		-0.987393, 0.155852, -0.027655,
		4.100432, 22.604509, 15.865005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.700686, 23.136148, 15.517200>,  <4.791607, 22.495413, 15.884365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.700686, 23.136148, 15.517200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.392877, 23.067114, 15.763143>,  <4.208192, 23.025694, 15.910708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.392877, 23.067114, 15.763143>,  <4.700686, 23.136148, 15.517200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.392877, 23.067114, 15.763143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057033, 0.940372, 0.335332,
		-0.636068, 0.293113, -0.713795,
		-0.769523, -0.172585, 0.614857,
		4.162020, 23.015339, 15.947599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.306834, 23.788017, 15.536291>,  <4.700686, 23.136148, 15.517200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.306834, 23.788017, 15.536291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.152688, 23.598732, 15.853167>,  <4.060200, 23.485161, 16.043291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.152688, 23.598732, 15.853167>,  <4.306834, 23.788017, 15.536291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.152688, 23.598732, 15.853167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010589, 0.860706, 0.508992,
		-0.922703, 0.187760, -0.336698,
		-0.385367, -0.473214, 0.792188,
		4.037077, 23.456768, 16.090822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.817726, 24.256218, 15.768532>,  <4.306834, 23.788017, 15.536291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.817726, 24.256218, 15.768532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.833779, 23.987564, 16.064449>,  <3.843410, 23.826372, 16.242001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.833779, 23.987564, 16.064449>,  <3.817726, 24.256218, 15.768532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.833779, 23.987564, 16.064449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219012, 0.716473, 0.662344,
		-0.974897, -0.188604, -0.118344,
		0.040130, -0.671636, 0.739794,
		3.845818, 23.786074, 16.286388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.207686, 24.310724, 16.121296>,  <3.817726, 24.256218, 15.768532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.207686, 24.310724, 16.121296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.467594, 24.149454, 16.379055>,  <3.623539, 24.052692, 16.533710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.467594, 24.149454, 16.379055>,  <3.207686, 24.310724, 16.121296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.467594, 24.149454, 16.379055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338055, 0.606020, 0.720041,
		-0.680821, -0.685703, 0.257478,
		0.649771, -0.403177, 0.644396,
		3.662526, 24.028502, 16.572374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.894854, 24.191359, 16.862747>,  <3.207686, 24.310724, 16.121296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.894854, 24.191359, 16.862747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.289140, 24.219357, 16.924023>,  <3.525712, 24.236155, 16.960789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.289140, 24.219357, 16.924023>,  <2.894854, 24.191359, 16.862747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.289140, 24.219357, 16.924023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158593, 0.691934, 0.704326,
		-0.056699, -0.718560, 0.693150,
		0.985715, 0.069994, 0.153191,
		3.584854, 24.240355, 16.969980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.061896, 24.123556, 17.665714>,  <2.894854, 24.191359, 16.862747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.061896, 24.123556, 17.665714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.356224, 24.332598, 17.493458>,  <3.532821, 24.458023, 17.390104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.356224, 24.332598, 17.493458>,  <3.061896, 24.123556, 17.665714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.356224, 24.332598, 17.493458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064092, 0.686830, 0.723987,
		0.674123, -0.505134, 0.538887,
		0.735833, 0.522594, -0.430632,
		3.576970, 24.489378, 17.364265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.669450, 24.309284, 18.146643>,  <3.061896, 24.123556, 17.665714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.669450, 24.309284, 18.146643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.622950, 24.610235, 17.887285>,  <3.595049, 24.790806, 17.731670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.622950, 24.610235, 17.887285>,  <3.669450, 24.309284, 18.146643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.622950, 24.610235, 17.887285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253695, 0.653656, 0.713002,
		0.960273, -0.081606, -0.266863,
		-0.116251, 0.752379, -0.648392,
		3.588074, 24.835949, 17.692768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.263591, 24.766729, 17.977467>,  <3.669450, 24.309284, 18.146643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.263591, 24.766729, 17.977467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.924712, 24.979025, 17.967907>,  <3.721385, 25.106403, 17.962172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.924712, 24.979025, 17.967907>,  <4.263591, 24.766729, 17.977467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.924712, 24.979025, 17.967907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264684, 0.460650, 0.847197,
		0.460650, 0.711418, -0.530740,
		-0.847197, 0.530740, -0.023898,
		3.670553, 25.138247, 17.960737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.104569, 24.511744, 18.706738>,  <4.263591, 24.766729, 17.977467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.104569, 24.511744, 18.706738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.495656, 24.454649, 18.645164>,  <4.730309, 24.420391, 18.608221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.495656, 24.454649, 18.645164>,  <4.104569, 24.511744, 18.706738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.495656, 24.454649, 18.645164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176438, 0.161415, 0.970987,
		-0.113751, -0.976510, 0.183003,
		0.977717, -0.142739, -0.153932,
		4.788971, 24.411827, 18.598986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.417460, 24.000502, 19.204350>,  <4.104569, 24.511744, 18.706738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.417460, 24.000502, 19.204350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.724076, 24.222506, 19.075117>,  <4.908046, 24.355707, 18.997578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.724076, 24.222506, 19.075117>,  <4.417460, 24.000502, 19.204350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.724076, 24.222506, 19.075117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343409, 0.070866, 0.936508,
		0.542667, -0.828820, -0.136274,
		0.766540, 0.555010, -0.323081,
		4.954038, 24.389008, 18.978193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.065943, 23.602915, 19.293001>,  <4.417460, 24.000502, 19.204350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.065943, 23.602915, 19.293001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.071125, 24.001032, 19.331409>,  <5.074234, 24.239902, 19.354454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.071125, 24.001032, 19.331409>,  <5.065943, 23.602915, 19.293001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.071125, 24.001032, 19.331409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282690, -0.095759, 0.954420,
		0.959124, 0.014780, -0.282600,
		0.012956, 0.995295, 0.096023,
		5.075012, 24.299620, 19.360216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.810983, 23.981722, 19.605963>,  <5.065943, 23.602915, 19.293001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.810983, 23.981722, 19.605963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.497698, 24.203876, 19.717768>,  <5.309728, 24.337170, 19.784851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.497698, 24.203876, 19.717768>,  <5.810983, 23.981722, 19.605963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.497698, 24.203876, 19.717768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318415, -0.027839, 0.947542,
		0.534033, 0.831127, -0.155039,
		-0.783212, 0.555386, 0.279510,
		5.262735, 24.370493, 19.801620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.614574, 24.078587, 20.319717>,  <5.810983, 23.981722, 19.605963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.614574, 24.078587, 20.319717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.440197, 23.892139, 20.627661>,  <5.335570, 23.780272, 20.812428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.440197, 23.892139, 20.627661>,  <5.614574, 24.078587, 20.319717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.440197, 23.892139, 20.627661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211129, -0.884521, -0.415988,
		0.874859, -0.018807, 0.484013,
		-0.435943, -0.466120, 0.769861,
		5.309414, 23.752304, 20.858620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.066891, 23.679457, 20.689484>,  <5.614574, 24.078587, 20.319717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.066891, 23.679457, 20.689484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.703495, 23.517036, 20.729019>,  <5.485457, 23.419584, 20.752741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.703495, 23.517036, 20.729019>,  <6.066891, 23.679457, 20.689484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.703495, 23.517036, 20.729019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314352, -0.819829, -0.478606,
		0.275369, -0.403738, 0.872449,
		-0.908490, -0.406049, 0.098840,
		5.430947, 23.395222, 20.758671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.086401, 22.969969, 20.897345>,  <6.066891, 23.679457, 20.689484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.086401, 22.969969, 20.897345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.699740, 22.967039, 20.794949>,  <5.467743, 22.965282, 20.733511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.699740, 22.967039, 20.794949>,  <6.086401, 22.969969, 20.897345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.699740, 22.967039, 20.794949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124620, -0.886706, -0.445221,
		-0.223727, -0.462275, 0.858049,
		-0.966652, -0.007322, -0.255989,
		5.409744, 22.964842, 20.718151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.986466, 22.290222, 21.085915>,  <6.086401, 22.969969, 20.897345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.986466, 22.290222, 21.085915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.728744, 22.439703, 20.819017>,  <5.574110, 22.529392, 20.658878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.728744, 22.439703, 20.819017>,  <5.986466, 22.290222, 21.085915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.728744, 22.439703, 20.819017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097738, -0.825090, -0.556484,
		-0.758496, -0.423761, 0.495086,
		-0.644306, 0.373702, -0.667245,
		5.535451, 22.551813, 20.618845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.539999, 21.753994, 20.849628>,  <5.986466, 22.290222, 21.085915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.539999, 21.753994, 20.849628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.532181, 22.016083, 20.547556>,  <5.527491, 22.173336, 20.366312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.532181, 22.016083, 20.547556>,  <5.539999, 21.753994, 20.849628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.532181, 22.016083, 20.547556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106708, -0.752379, -0.650031,
		-0.994098, 0.067880, 0.084622,
		-0.019544, 0.655224, -0.755182,
		5.526318, 22.212650, 20.321001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.971862, 21.449617, 20.479900>,  <5.539999, 21.753994, 20.849628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.971862, 21.449617, 20.479900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.212918, 21.660238, 20.240046>,  <5.357552, 21.786612, 20.096132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.212918, 21.660238, 20.240046>,  <4.971862, 21.449617, 20.479900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.212918, 21.660238, 20.240046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006337, -0.754549, -0.656213,
		-0.797987, 0.391661, -0.458059,
		0.602641, 0.526552, -0.599639,
		5.393711, 21.818205, 20.060154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.750215, 21.263695, 19.746614>,  <4.971862, 21.449617, 20.479900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.750215, 21.263695, 19.746614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.114410, 21.425344, 19.711527>,  <5.332927, 21.522335, 19.690475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.114410, 21.425344, 19.711527>,  <4.750215, 21.263695, 19.746614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.114410, 21.425344, 19.711527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224275, -0.660766, -0.716302,
		-0.347435, 0.632512, -0.692255,
		0.910489, 0.404124, -0.087717,
		5.387557, 21.546581, 19.685211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.880872, 21.309256, 19.026533>,  <4.750215, 21.263695, 19.746614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.880872, 21.309256, 19.026533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.251467, 21.322830, 19.176449>,  <5.473825, 21.330975, 19.266397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.251467, 21.322830, 19.176449>,  <4.880872, 21.309256, 19.026533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.251467, 21.322830, 19.176449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305101, -0.650756, -0.695292,
		0.220300, 0.758528, -0.613272,
		0.926489, 0.033937, 0.374790,
		5.529414, 21.333012, 19.288885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.338523, 21.451300, 18.537111>,  <4.880872, 21.309256, 19.026533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.338523, 21.451300, 18.537111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.530269, 21.235477, 18.813976>,  <5.645317, 21.105984, 18.980095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.530269, 21.235477, 18.813976>,  <5.338523, 21.451300, 18.537111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.530269, 21.235477, 18.813976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320312, -0.626716, -0.710371,
		0.817074, 0.562235, -0.127599,
		0.479364, -0.539554, 0.692164,
		5.674078, 21.073610, 19.021626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.884102, 21.386456, 18.095371>,  <5.338523, 21.451300, 18.537111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.884102, 21.386456, 18.095371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.870535, 21.130991, 18.402866>,  <5.862395, 20.977713, 18.587364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.870535, 21.130991, 18.402866>,  <5.884102, 21.386456, 18.095371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.870535, 21.130991, 18.402866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455831, -0.694405, -0.556794,
		0.889420, 0.331531, 0.314674,
		-0.033916, -0.638662, 0.768739,
		5.860361, 20.939392, 18.633488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.436624, 21.034578, 17.990463>,  <5.884102, 21.386456, 18.095371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.436624, 21.034578, 17.990463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.234493, 20.809902, 18.252501>,  <6.113215, 20.675097, 18.409723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.234493, 20.809902, 18.252501>,  <6.436624, 21.034578, 17.990463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.234493, 20.809902, 18.252501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409970, -0.824275, -0.390507,
		0.759323, 0.071236, 0.646804,
		-0.505326, -0.561691, 0.655095,
		6.082895, 20.641396, 18.449030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.921219, 20.554317, 18.255602>,  <6.436624, 21.034578, 17.990463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.921219, 20.554317, 18.255602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.557279, 20.393847, 18.297991>,  <6.338915, 20.297564, 18.323423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.557279, 20.393847, 18.297991>,  <6.921219, 20.554317, 18.255602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.557279, 20.393847, 18.297991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332647, -0.857880, -0.391648,
		0.248033, -0.321089, 0.913992,
		-0.909849, -0.401178, 0.105973,
		6.284324, 20.273493, 18.329782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.067196, 19.848955, 18.406122>,  <6.921219, 20.554317, 18.255602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.067196, 19.848955, 18.406122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.684718, 19.837715, 18.289570>,  <6.455232, 19.830971, 18.219639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.684718, 19.837715, 18.289570>,  <7.067196, 19.848955, 18.406122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.684718, 19.837715, 18.289570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161566, -0.880706, -0.445256,
		-0.244108, -0.472828, 0.846667,
		-0.956194, -0.028102, -0.291381,
		6.397860, 19.829285, 18.202156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.918407, 19.204655, 18.438080>,  <7.067196, 19.848955, 18.406122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.918407, 19.204655, 18.438080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.627600, 19.353209, 18.207075>,  <6.453115, 19.442341, 18.068472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.627600, 19.353209, 18.207075>,  <6.918407, 19.204655, 18.438080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.627600, 19.353209, 18.207075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123601, -0.756566, -0.642130,
		-0.675401, -0.538221, 0.504134,
		-0.727018, 0.371384, -0.577510,
		6.409494, 19.464624, 18.033823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.452167, 18.653963, 18.258347>,  <6.918407, 19.204655, 18.438080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.452167, 18.653963, 18.258347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.392102, 18.938848, 17.984062>,  <6.356062, 19.109779, 17.819490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.392102, 18.938848, 17.984062>,  <6.452167, 18.653963, 18.258347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.392102, 18.938848, 17.984062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010223, -0.694658, -0.719268,
		-0.988608, -0.100998, 0.111593,
		-0.150163, 0.712215, -0.685712,
		6.347053, 19.152514, 17.778349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.836532, 18.464846, 17.928503>,  <6.452167, 18.653963, 18.258347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.836532, 18.464846, 17.928503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.026334, 18.693476, 17.660727>,  <6.140215, 18.830654, 17.500061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.026334, 18.693476, 17.660727>,  <5.836532, 18.464846, 17.928503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.026334, 18.693476, 17.660727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009019, -0.763625, -0.645597,
		-0.880207, 0.300301, -0.367498,
		0.474505, 0.571574, -0.669439,
		6.168685, 18.864948, 17.459894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.489665, 18.380056, 17.333576>,  <5.836532, 18.464846, 17.928503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.489665, 18.380056, 17.333576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.840605, 18.502100, 17.185432>,  <6.051168, 18.575327, 17.096546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.840605, 18.502100, 17.185432>,  <5.489665, 18.380056, 17.333576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.840605, 18.502100, 17.185432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076506, -0.673007, -0.735669,
		-0.473714, 0.673773, -0.567119,
		0.877349, 0.305109, -0.370361,
		6.103809, 18.593634, 17.074324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.416583, 18.382959, 16.568529>,  <5.489665, 18.380056, 17.333576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.416583, 18.382959, 16.568529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.812663, 18.423771, 16.606674>,  <6.050311, 18.448257, 16.629560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.812663, 18.423771, 16.606674>,  <5.416583, 18.382959, 16.568529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.812663, 18.423771, 16.606674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137540, -0.594041, -0.792590,
		-0.024217, 0.797939, -0.602252,
		0.990200, 0.102027, 0.095363,
		6.109723, 18.454380, 16.635283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.662910, 18.582890, 15.896358>,  <5.416583, 18.382959, 16.568529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.662910, 18.582890, 15.896358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.966896, 18.412481, 16.092709>,  <6.149287, 18.310236, 16.210518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.966896, 18.412481, 16.092709>,  <5.662910, 18.582890, 15.896358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.966896, 18.412481, 16.092709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176846, -0.591211, -0.786889,
		0.625442, 0.684818, -0.373960,
		0.759965, -0.426020, 0.490876,
		6.194885, 18.284676, 16.239971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.192473, 18.490355, 15.361383>,  <5.662910, 18.582890, 15.896358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.192473, 18.490355, 15.361383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.295060, 18.233904, 15.650709>,  <6.356612, 18.080034, 15.824305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.295060, 18.233904, 15.650709>,  <6.192473, 18.490355, 15.361383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.295060, 18.233904, 15.650709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032100, -0.742281, -0.669320,
		0.966020, 0.194877, -0.169790,
		0.256467, -0.641126, 0.723313,
		6.372000, 18.041567, 15.867703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.767020, 18.093321, 15.117019>,  <6.192473, 18.490355, 15.361383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.767020, 18.093321, 15.117019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.633861, 17.877428, 15.426307>,  <6.553966, 17.747892, 15.611879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.633861, 17.877428, 15.426307>,  <6.767020, 18.093321, 15.117019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.633861, 17.877428, 15.426307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096569, -0.835192, -0.541414,
		0.938005, -0.105567, 0.330154,
		-0.332898, -0.539732, 0.773220,
		6.533992, 17.715509, 15.658273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.259364, 17.568214, 15.133092>,  <6.767020, 18.093321, 15.117019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.259364, 17.568214, 15.133092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.940342, 17.447498, 15.342024>,  <6.748929, 17.375069, 15.467383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.940342, 17.447498, 15.342024>,  <7.259364, 17.568214, 15.133092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.940342, 17.447498, 15.342024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102712, -0.921158, -0.375391,
		0.594437, -0.245746, 0.765672,
		-0.797556, -0.301789, 0.522329,
		6.701075, 17.356962, 15.498723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.477029, 16.902033, 15.405912>,  <7.259364, 17.568214, 15.133092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.477029, 16.902033, 15.405912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.077773, 16.920578, 15.390087>,  <6.838219, 16.931705, 15.380591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.077773, 16.920578, 15.390087>,  <7.477029, 16.902033, 15.405912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.077773, 16.920578, 15.390087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030885, -0.944359, -0.327463,
		-0.052545, -0.325632, 0.944036,
		-0.998141, 0.046363, -0.039564,
		6.778330, 16.934486, 15.378218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.268544, 16.312534, 15.675477>,  <7.477029, 16.902033, 15.405912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.268544, 16.312534, 15.675477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.963854, 16.444513, 15.452440>,  <6.781040, 16.523701, 15.318619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.963854, 16.444513, 15.452440>,  <7.268544, 16.312534, 15.675477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.963854, 16.444513, 15.452440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224592, -0.941722, -0.250437,
		-0.607727, -0.065534, 0.791438,
		-0.761726, 0.329948, -0.557591,
		6.735336, 16.543497, 15.285163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.706884, 15.933364, 15.139591>,  <7.268544, 16.312534, 15.675477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.706884, 15.933364, 15.139591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.775982, 16.033657, 14.758584>,  <7.817441, 16.093832, 14.529980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.775982, 16.033657, 14.758584>,  <7.706884, 15.933364, 15.139591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.775982, 16.033657, 14.758584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971196, 0.117784, 0.207138,
		0.164128, -0.960864, -0.223163,
		0.172746, 0.250732, -0.952519,
		7.827806, 16.108877, 14.472828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.841504, 15.185661, 15.043919>,  <7.706884, 15.933364, 15.139591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.841504, 15.185661, 15.043919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.472246, 15.328755, 14.987591>,  <7.250691, 15.414612, 14.953794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.472246, 15.328755, 14.987591>,  <7.841504, 15.185661, 15.043919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.472246, 15.328755, 14.987591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324311, 0.921318, 0.214465,
		0.206461, 0.152313, -0.966527,
		-0.923145, 0.357734, -0.140820,
		7.195303, 15.436075, 14.945345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.531541, 15.047333, 14.965744>,  <7.841504, 15.185661, 15.043919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.531541, 15.047333, 14.965744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.636542, 15.113457, 15.346010>,  <8.699543, 15.153131, 15.574170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.636542, 15.113457, 15.346010>,  <8.531541, 15.047333, 14.965744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.636542, 15.113457, 15.346010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804220, 0.506947, -0.310219,
		-0.533219, 0.845977, 0.000129,
		0.262503, 0.165311, 0.950665,
		8.715293, 15.163050, 15.631209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.682747, 15.790305, 15.041484>,  <8.531541, 15.047333, 14.965744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.682747, 15.790305, 15.041484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.860121, 15.592603, 15.340569>,  <8.966545, 15.473981, 15.520020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.860121, 15.592603, 15.340569>,  <8.682747, 15.790305, 15.041484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.860121, 15.592603, 15.340569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855532, 0.482154, -0.188662,
		-0.267266, 0.723352, 0.636656,
		0.443435, -0.494257, 0.747714,
		8.993152, 15.444325, 15.564883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.987338, 16.220978, 15.554325>,  <8.682747, 15.790305, 15.041484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.987338, 16.220978, 15.554325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.170989, 15.869423, 15.502541>,  <9.281179, 15.658490, 15.471470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.170989, 15.869423, 15.502541>,  <8.987338, 16.220978, 15.554325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.170989, 15.869423, 15.502541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866453, 0.475190, -0.153144,
		0.196115, -0.041861, 0.979687,
		0.459127, -0.878887, -0.129462,
		9.308727, 15.605757, 15.463702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.411128, 16.053061, 16.108313>,  <8.987338, 16.220978, 15.554325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.411128, 16.053061, 16.108313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.551681, 15.902027, 15.765626>,  <9.636012, 15.811407, 15.560015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.551681, 15.902027, 15.765626>,  <9.411128, 16.053061, 16.108313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.551681, 15.902027, 15.765626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837849, 0.535157, 0.107780,
		0.417781, -0.755670, 0.504403,
		0.351381, -0.377585, -0.856715,
		9.657095, 15.788752, 15.508612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.146122, 15.843917, 16.294353>,  <9.411128, 16.053061, 16.108313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.146122, 15.843917, 16.294353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.119285, 15.894860, 15.898520>,  <10.103182, 15.925426, 15.661019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.119285, 15.894860, 15.898520>,  <10.146122, 15.843917, 16.294353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.119285, 15.894860, 15.898520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886620, 0.462499, -0.000590,
		0.457607, -0.877425, -0.143949,
		-0.067094, 0.127358, -0.989585,
		10.099156, 15.933067, 15.601645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.785027, 15.623506, 16.008589>,  <10.146122, 15.843917, 16.294353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.785027, 15.623506, 16.008589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.604689, 15.907108, 15.791684>,  <10.496486, 16.077271, 15.661541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.604689, 15.907108, 15.791684>,  <10.785027, 15.623506, 16.008589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.604689, 15.907108, 15.791684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818913, 0.570254, 0.064748,
		0.355134, -0.414875, -0.837710,
		-0.450845, 0.709006, -0.542263,
		10.469435, 16.119810, 15.629005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.504492, 15.799182, 16.204594>,  <10.785027, 15.623506, 16.008589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.504492, 15.799182, 16.204594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.756318, 15.531057, 16.361732>,  <11.907414, 15.370183, 16.456017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.756318, 15.531057, 16.361732>,  <11.504492, 15.799182, 16.204594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.756318, 15.531057, 16.361732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233050, 0.319424, 0.918508,
		-0.741170, -0.669815, 0.044883,
		0.629567, -0.670311, 0.392848,
		11.945189, 15.329965, 16.479588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.257003, 15.621734, 16.867455>,  <11.504492, 15.799182, 16.204594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.257003, 15.621734, 16.867455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.633768, 15.506047, 16.935751>,  <11.859827, 15.436636, 16.976728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.633768, 15.506047, 16.935751>,  <11.257003, 15.621734, 16.867455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.633768, 15.506047, 16.935751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078891, 0.303623, 0.949520,
		-0.326457, -0.907837, 0.263171,
		0.941914, -0.289215, 0.170740,
		11.916343, 15.419283, 16.986973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.250216, 15.238907, 17.500090>,  <11.257003, 15.621734, 16.867455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.250216, 15.238907, 17.500090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.624143, 15.377998, 17.471233>,  <11.848498, 15.461453, 17.453920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.624143, 15.377998, 17.471233>,  <11.250216, 15.238907, 17.500090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.624143, 15.377998, 17.471233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042316, 0.310754, 0.949548,
		0.352606, -0.884598, 0.305212,
		0.934814, 0.347732, -0.072142,
		11.904587, 15.482317, 17.449591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.560044, 15.022540, 18.055210>,  <11.250216, 15.238907, 17.500090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.560044, 15.022540, 18.055210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.784763, 15.332184, 17.938496>,  <11.919595, 15.517970, 17.868467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.784763, 15.332184, 17.938496>,  <11.560044, 15.022540, 18.055210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.784763, 15.332184, 17.938496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010551, 0.345976, 0.938184,
		0.827208, -0.530148, 0.186200,
		0.561797, 0.774108, -0.291788,
		11.953302, 15.564416, 17.850960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.107844, 15.009550, 18.493835>,  <11.560044, 15.022540, 18.055210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.107844, 15.009550, 18.493835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.134422, 15.381882, 18.350090>,  <12.150370, 15.605281, 18.263844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.134422, 15.381882, 18.350090>,  <12.107844, 15.009550, 18.493835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.134422, 15.381882, 18.350090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047128, 0.362686, 0.930719,
		0.996676, -0.044906, 0.067967,
		0.066445, 0.930829, -0.359364,
		12.154356, 15.661130, 18.242281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.541758, 15.319064, 18.991220>,  <12.107844, 15.009550, 18.493835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.541758, 15.319064, 18.991220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.376895, 15.636138, 18.811541>,  <12.277978, 15.826383, 18.703733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.376895, 15.636138, 18.811541>,  <12.541758, 15.319064, 18.991220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.376895, 15.636138, 18.811541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106578, 0.447691, 0.887814,
		0.904858, 0.413792, -0.100036,
		-0.412156, 0.792684, -0.449198,
		12.253248, 15.873943, 18.676781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.887099, 15.937963, 19.114708>,  <12.541758, 15.319064, 18.991220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.887099, 15.937963, 19.114708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.513618, 16.063498, 19.045769>,  <12.289529, 16.138819, 19.004406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.513618, 16.063498, 19.045769>,  <12.887099, 15.937963, 19.114708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.513618, 16.063498, 19.045769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018453, 0.438537, 0.898524,
		0.357572, 0.842135, -0.403672,
		-0.933703, 0.313838, -0.172348,
		12.233506, 16.157648, 18.994064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.865595, 16.466116, 19.613539>,  <12.887099, 15.937963, 19.114708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.865595, 16.466116, 19.613539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.492748, 16.466871, 19.468678>,  <12.269040, 16.467325, 19.381760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.492748, 16.466871, 19.468678>,  <12.865595, 16.466116, 19.613539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.492748, 16.466871, 19.468678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313304, 0.497392, 0.808976,
		0.181661, 0.867524, -0.463035,
		-0.932116, 0.001889, -0.362155,
		12.213114, 16.467438, 19.360031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.628904, 17.182529, 19.511982>,  <12.865595, 16.466116, 19.613539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.628904, 17.182529, 19.511982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.319759, 16.935436, 19.570068>,  <12.134273, 16.787180, 19.604921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.319759, 16.935436, 19.570068>,  <12.628904, 17.182529, 19.511982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.319759, 16.935436, 19.570068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248679, 0.505373, 0.826291,
		-0.583817, 0.602497, -0.544202,
		-0.772863, -0.617734, 0.145217,
		12.087900, 16.750116, 19.613634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.148324, 17.616226, 19.661522>,  <12.628904, 17.182529, 19.511982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.148324, 17.616226, 19.661522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.049535, 17.265781, 19.827139>,  <11.990261, 17.055515, 19.926508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.049535, 17.265781, 19.827139>,  <12.148324, 17.616226, 19.661522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.049535, 17.265781, 19.827139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264805, 0.472034, 0.840870,
		-0.932138, 0.098033, -0.348580,
		-0.246974, -0.876113, 0.414042,
		11.975443, 17.002947, 19.951351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.513683, 17.753065, 20.005253>,  <12.148324, 17.616226, 19.661522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.513683, 17.753065, 20.005253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.585191, 17.396753, 20.172373>,  <11.628096, 17.182966, 20.272644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.585191, 17.396753, 20.172373>,  <11.513683, 17.753065, 20.005253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.585191, 17.396753, 20.172373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302686, 0.354254, 0.884808,
		-0.936175, -0.284638, -0.206296,
		0.178769, -0.890778, 0.417800,
		11.638822, 17.129520, 20.297712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.941327, 17.482710, 20.324156>,  <11.513683, 17.753065, 20.005253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.941327, 17.482710, 20.324156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.255371, 17.313448, 20.505060>,  <11.443797, 17.211891, 20.613604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.255371, 17.313448, 20.505060>,  <10.941327, 17.482710, 20.324156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.255371, 17.313448, 20.505060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383918, 0.240508, 0.891495,
		-0.486015, -0.873553, 0.026368,
		0.785109, -0.423156, 0.452263,
		11.490904, 17.186501, 20.640739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.620247, 17.158319, 20.931093>,  <10.941327, 17.482710, 20.324156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.620247, 17.158319, 20.931093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.013299, 17.177584, 21.002777>,  <11.249130, 17.189142, 21.045788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.013299, 17.177584, 21.002777>,  <10.620247, 17.158319, 20.931093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.013299, 17.177584, 21.002777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185569, 0.256534, 0.948554,
		-0.000294, -0.965335, 0.261015,
		0.982631, 0.048158, 0.179211,
		11.308088, 17.192032, 21.056540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.644695, 16.889084, 21.542709>,  <10.620247, 17.158319, 20.931093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.644695, 16.889084, 21.542709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.996792, 17.075317, 21.506031>,  <11.208050, 17.187057, 21.484024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.996792, 17.075317, 21.506031>,  <10.644695, 16.889084, 21.542709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.996792, 17.075317, 21.506031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069271, 0.317242, 0.945811,
		0.469444, -0.826190, 0.311501,
		0.880241, 0.465583, -0.091696,
		11.260864, 17.214993, 21.478523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.102945, 16.683058, 22.063198>,  <10.644695, 16.889084, 21.542709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.102945, 16.683058, 22.063198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.267379, 17.029827, 21.950449>,  <11.366038, 17.237888, 21.882799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.267379, 17.029827, 21.950449>,  <11.102945, 16.683058, 22.063198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.267379, 17.029827, 21.950449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119162, 0.357657, 0.926219,
		0.903776, -0.347164, 0.250331,
		0.411083, 0.866925, -0.281873,
		11.390704, 17.289904, 21.865887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.600079, 16.986788, 22.582146>,  <11.102945, 16.683058, 22.063198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.600079, 16.986788, 22.582146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.500041, 17.320007, 22.384769>,  <11.440019, 17.519939, 22.266344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.500041, 17.320007, 22.384769>,  <11.600079, 16.986788, 22.582146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.500041, 17.320007, 22.384769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256035, 0.434595, 0.863466,
		0.933756, 0.342285, 0.104600,
		-0.250093, 0.833048, -0.493442,
		11.425014, 17.569921, 22.236736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.811296, 17.559734, 23.141039>,  <11.600079, 16.986788, 22.582146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.811296, 17.559734, 23.141039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.606386, 17.761734, 22.863176>,  <11.483440, 17.882935, 22.696459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.606386, 17.761734, 22.863176>,  <11.811296, 17.559734, 23.141039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.606386, 17.761734, 22.863176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256777, 0.681789, 0.685003,
		0.819536, 0.529283, -0.219592,
		-0.512276, 0.504999, -0.694658,
		11.452703, 17.913233, 22.654779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.029033, 18.204969, 23.223413>,  <11.811296, 17.559734, 23.141039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.029033, 18.204969, 23.223413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.676883, 18.262403, 23.042604>,  <11.465593, 18.296864, 22.934118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.676883, 18.262403, 23.042604>,  <12.029033, 18.204969, 23.223413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.676883, 18.262403, 23.042604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320211, 0.523119, 0.789817,
		0.349867, 0.840077, -0.414563,
		-0.880374, 0.143583, -0.452024,
		11.412770, 18.305479, 22.906998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.752165, 18.974817, 23.261215>,  <12.029033, 18.204969, 23.223413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.752165, 18.974817, 23.261215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.421003, 18.754377, 23.219526>,  <11.222306, 18.622112, 23.194513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.421003, 18.754377, 23.219526>,  <11.752165, 18.974817, 23.261215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.421003, 18.754377, 23.219526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399486, 0.448981, 0.799266,
		-0.393683, 0.703352, -0.591871,
		-0.827904, -0.551102, -0.104224,
		11.172632, 18.589046, 23.188259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.192462, 19.453152, 23.423454>,  <11.752165, 18.974817, 23.261215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.192462, 19.453152, 23.423454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.038985, 19.086069, 23.464628>,  <10.946899, 18.865820, 23.489332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.038985, 19.086069, 23.464628>,  <11.192462, 19.453152, 23.423454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.038985, 19.086069, 23.464628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306287, 0.231622, 0.923331,
		-0.871188, 0.322748, -0.369953,
		-0.383692, -0.917706, 0.102933,
		10.923878, 18.810757, 23.495508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.581834, 19.555067, 23.761946>,  <11.192462, 19.453152, 23.423454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.581834, 19.555067, 23.761946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.668180, 19.168633, 23.818632>,  <10.719987, 18.936771, 23.852644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.668180, 19.168633, 23.818632>,  <10.581834, 19.555067, 23.761946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.668180, 19.168633, 23.818632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306792, 0.070680, 0.949148,
		-0.926974, -0.248365, -0.281130,
		0.215865, -0.966084, 0.141715,
		10.732939, 18.878807, 23.861147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.082196, 19.389511, 24.204952>,  <10.581834, 19.555067, 23.761946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.082196, 19.389511, 24.204952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.357588, 19.103821, 24.255356>,  <10.522822, 18.932407, 24.285599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.357588, 19.103821, 24.255356>,  <10.082196, 19.389511, 24.204952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.357588, 19.103821, 24.255356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202438, -0.022409, 0.979039,
		-0.696432, -0.699556, -0.160015,
		0.688478, -0.714226, 0.126011,
		10.564131, 18.889553, 24.293159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.752276, 18.766882, 24.481112>,  <10.082196, 19.389511, 24.204952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.752276, 18.766882, 24.481112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.136468, 18.775408, 24.592127>,  <10.366982, 18.780523, 24.658735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.136468, 18.775408, 24.592127>,  <9.752276, 18.766882, 24.481112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.136468, 18.775408, 24.592127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275279, -0.075088, 0.958427,
		0.041265, -0.996949, -0.066254,
		0.960478, 0.021312, 0.277538,
		10.424611, 18.781801, 24.675388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.790711, 18.229900, 24.957785>,  <9.752276, 18.766882, 24.481112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.790711, 18.229900, 24.957785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.134974, 18.424860, 25.016726>,  <10.341531, 18.541836, 25.052090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.134974, 18.424860, 25.016726>,  <9.790711, 18.229900, 24.957785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.134974, 18.424860, 25.016726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014917, -0.313400, 0.949504,
		0.508968, -0.814999, -0.277000,
		0.860656, 0.487399, 0.147353,
		10.393170, 18.571079, 25.060932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.134195, 17.782337, 25.282467>,  <9.790711, 18.229900, 24.957785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.134195, 17.782337, 25.282467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.312820, 18.131336, 25.361790>,  <10.419995, 18.340736, 25.409384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.312820, 18.131336, 25.361790>,  <10.134195, 17.782337, 25.282467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.312820, 18.131336, 25.361790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033868, -0.237960, 0.970684,
		0.894111, -0.426755, -0.135813,
		0.446562, 0.872499, 0.198309,
		10.446789, 18.393085, 25.421282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.785290, 17.506992, 25.674049>,  <10.134195, 17.782337, 25.282467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.785290, 17.506992, 25.674049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.715184, 17.896448, 25.732441>,  <10.673121, 18.130121, 25.767475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.715184, 17.896448, 25.732441>,  <10.785290, 17.506992, 25.674049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.715184, 17.896448, 25.732441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078493, -0.161618, 0.983727,
		0.981388, 0.160953, 0.104750,
		-0.175263, 0.973639, 0.145977,
		10.662605, 18.188540, 25.776234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.295675, 17.766754, 26.120089>,  <10.785290, 17.506992, 25.674049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.295675, 17.766754, 26.120089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.957061, 17.971842, 26.177357>,  <10.753892, 18.094894, 26.211718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.957061, 17.971842, 26.177357>,  <11.295675, 17.766754, 26.120089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.957061, 17.971842, 26.177357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117904, -0.081683, 0.989660,
		0.519111, 0.854663, 0.008696,
		-0.846536, 0.512718, 0.143170,
		10.703100, 18.125658, 26.220308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.355380, 18.265894, 26.608952>,  <11.295675, 17.766754, 26.120089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.355380, 18.265894, 26.608952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.962670, 18.190039, 26.613972>,  <10.727044, 18.144526, 26.616983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.962670, 18.190039, 26.613972>,  <11.355380, 18.265894, 26.608952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.962670, 18.190039, 26.613972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045443, -0.170129, 0.984374,
		-0.184538, 0.967003, 0.175646,
		-0.981774, -0.189636, 0.012548,
		10.668139, 18.133148, 26.617737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.954841, 18.740532, 27.060127>,  <11.355380, 18.265894, 26.608952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.954841, 18.740532, 27.060127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.837548, 18.358702, 27.038973>,  <10.767173, 18.129602, 27.026279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.837548, 18.358702, 27.038973>,  <10.954841, 18.740532, 27.060127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.837548, 18.358702, 27.038973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078664, -0.079221, 0.993748,
		-0.952800, 0.287238, 0.098321,
		-0.293231, -0.954577, -0.052886,
		10.749578, 18.072329, 27.023108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.215680, 18.614468, 27.279314>,  <10.954841, 18.740532, 27.060127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.215680, 18.614468, 27.279314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.419216, 18.277266, 27.349085>,  <10.541338, 18.074945, 27.390947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.419216, 18.277266, 27.349085>,  <10.215680, 18.614468, 27.279314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.419216, 18.277266, 27.349085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005151, 0.205597, 0.978623,
		-0.860845, -0.497065, 0.108959,
		0.508841, -0.843004, 0.174427,
		10.571869, 18.024364, 27.401413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.911617, 18.313810, 27.945593>,  <10.215680, 18.614468, 27.279314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.911617, 18.313810, 27.945593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.244259, 18.093088, 27.920471>,  <10.443844, 17.960655, 27.905397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.244259, 18.093088, 27.920471>,  <9.911617, 18.313810, 27.945593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.244259, 18.093088, 27.920471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170238, 0.145634, 0.974582,
		-0.528633, -0.821159, 0.215048,
		0.831605, -0.551805, -0.062805,
		10.493740, 17.927547, 27.901630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.864801, 17.890238, 28.474154>,  <9.911617, 18.313810, 27.945593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.864801, 17.890238, 28.474154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.254698, 17.881144, 28.385281>,  <10.488635, 17.875687, 28.331957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.254698, 17.881144, 28.385281>,  <9.864801, 17.890238, 28.474154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.254698, 17.881144, 28.385281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223343, 0.098696, 0.969730,
		-0.000120, -0.994858, 0.101281,
		0.974740, -0.022736, -0.222182,
		10.547120, 17.874323, 28.318626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.166200, 17.397116, 28.938812>,  <9.864801, 17.890238, 28.474154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.166200, 17.397116, 28.938812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.472429, 17.613199, 28.799059>,  <10.656167, 17.742849, 28.715206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.472429, 17.613199, 28.799059>,  <10.166200, 17.397116, 28.938812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.472429, 17.613199, 28.799059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345416, 0.113017, 0.931620,
		0.542758, -0.833906, -0.100075,
		0.765573, 0.540211, -0.349386,
		10.702101, 17.775263, 28.694242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.708756, 17.020609, 29.184437>,  <10.166200, 17.397116, 28.938812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.708756, 17.020609, 29.184437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.838526, 17.390972, 29.107033>,  <10.916388, 17.613190, 29.060591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.838526, 17.390972, 29.107033>,  <10.708756, 17.020609, 29.184437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.838526, 17.390972, 29.107033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273493, 0.104019, 0.956233,
		0.905512, -0.363148, -0.219483,
		0.324423, 0.925907, -0.193509,
		10.935853, 17.668745, 29.048981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.409772, 16.979279, 29.409132>,  <10.708756, 17.020609, 29.184437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.409772, 16.979279, 29.409132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.269075, 17.353661, 29.415640>,  <11.184657, 17.578289, 29.419544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.269075, 17.353661, 29.415640>,  <11.409772, 16.979279, 29.409132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.269075, 17.353661, 29.415640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361296, 0.119703, 0.924736,
		0.863564, 0.331147, -0.380261,
		-0.351742, 0.935956, 0.016271,
		11.163553, 17.634447, 29.420521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.026543, 17.394115, 29.645144>,  <11.409772, 16.979279, 29.409132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.026543, 17.394115, 29.645144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.732999, 17.660130, 29.700541>,  <11.556872, 17.819738, 29.733780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.732999, 17.660130, 29.700541>,  <12.026543, 17.394115, 29.645144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.732999, 17.660130, 29.700541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199817, 0.016473, 0.979695,
		0.649249, 0.746631, -0.144974,
		-0.733859, 0.665034, 0.138495,
		11.512841, 17.859640, 29.742088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.304918, 17.793482, 30.145941>,  <12.026543, 17.394115, 29.645144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.304918, 17.793482, 30.145941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.914881, 17.879519, 30.167591>,  <11.680859, 17.931141, 30.180582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.914881, 17.879519, 30.167591>,  <12.304918, 17.793482, 30.145941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.914881, 17.879519, 30.167591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076036, 0.094928, 0.992576,
		0.208357, 0.971969, -0.108919,
		-0.975093, 0.215092, 0.054126,
		11.622353, 17.944046, 30.183828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.171075, 18.520285, 30.567055>,  <12.304918, 17.793482, 30.145941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.171075, 18.520285, 30.567055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.839054, 18.297426, 30.576855>,  <11.639842, 18.163712, 30.582735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.839054, 18.297426, 30.576855>,  <12.171075, 18.520285, 30.567055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.839054, 18.297426, 30.576855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083253, -0.080351, 0.993284,
		-0.551438, 0.826517, 0.113080,
		-0.830051, -0.557148, 0.024502,
		11.590038, 18.130281, 30.584206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.774323, 18.802237, 30.969690>,  <12.171075, 18.520285, 30.567055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.774323, 18.802237, 30.969690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.631097, 18.430109, 31.001427>,  <11.545161, 18.206833, 31.020468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.631097, 18.430109, 31.001427>,  <11.774323, 18.802237, 30.969690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.631097, 18.430109, 31.001427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064953, 0.059951, 0.996086,
		-0.931435, 0.361816, 0.038960,
		-0.358064, -0.930320, 0.079342,
		11.523678, 18.151012, 31.025229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.186659, 18.926252, 31.423641>,  <11.774323, 18.802237, 30.969690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.186659, 18.926252, 31.423641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.237925, 18.529608, 31.416924>,  <11.268683, 18.291620, 31.412893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.237925, 18.529608, 31.416924>,  <11.186659, 18.926252, 31.423641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.237925, 18.529608, 31.416924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198409, -0.042227, 0.979209,
		-0.971704, -0.122167, -0.202157,
		0.128163, -0.991611, -0.016794,
		11.276374, 18.232124, 31.411886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.636260, 18.571541, 31.775314>,  <11.186659, 18.926252, 31.423641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.636260, 18.571541, 31.775314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.952932, 18.327442, 31.786900>,  <11.142936, 18.180983, 31.793850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.952932, 18.327442, 31.786900>,  <10.636260, 18.571541, 31.775314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.952932, 18.327442, 31.786900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097434, -0.079316, 0.992076,
		-0.603116, -0.788229, -0.122252,
		0.791680, -0.610249, 0.028963,
		11.190436, 18.144367, 31.795589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.596736, 17.804159, 31.974308>,  <10.636260, 18.571541, 31.775314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.596736, 17.804159, 31.974308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.924471, 18.003674, 32.087372>,  <11.121112, 18.123383, 32.155212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.924471, 18.003674, 32.087372>,  <10.596736, 17.804159, 31.974308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.924471, 18.003674, 32.087372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148101, -0.292156, 0.944834,
		0.553853, -0.816000, -0.165504,
		0.819337, 0.498787, 0.282662,
		11.170272, 18.153309, 32.172169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.172739, 17.406883, 32.404274>,  <10.596736, 17.804159, 31.974308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.172739, 17.406883, 32.404274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.139289, 17.794056, 32.499031>,  <11.119219, 18.026360, 32.555885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.139289, 17.794056, 32.499031>,  <11.172739, 17.406883, 32.404274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.139289, 17.794056, 32.499031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023337, -0.239563, 0.970600,
		0.996224, 0.075638, 0.042622,
		-0.083625, 0.967930, 0.236894,
		11.114202, 18.084435, 32.570099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.751041, 17.670780, 32.830063>,  <11.172739, 17.406883, 32.404274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.751041, 17.670780, 32.830063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.394254, 17.837324, 32.900532>,  <11.180182, 17.937250, 32.942814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.394254, 17.837324, 32.900532>,  <11.751041, 17.670780, 32.830063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.394254, 17.837324, 32.900532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001172, -0.391810, 0.920045,
		0.452097, 0.820445, 0.349971,
		-0.891968, 0.416360, 0.176174,
		11.126663, 17.962233, 32.953384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.515228, 17.510677, 33.503098>,  <11.751041, 17.670780, 32.830063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.515228, 17.510677, 33.503098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.188579, 17.714991, 33.395599>,  <10.992589, 17.837580, 33.331100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.188579, 17.714991, 33.395599>,  <11.515228, 17.510677, 33.503098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.188579, 17.714991, 33.395599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487376, -0.360839, 0.795148,
		0.309176, 0.780317, 0.543614,
		-0.816624, 0.510785, -0.268745,
		10.943591, 17.868227, 33.314976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.655113, 17.163446, 34.129501>,  <11.515228, 17.510677, 33.503098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.655113, 17.163446, 34.129501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.857837, 16.820543, 34.093159>,  <11.979470, 16.614801, 34.071354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.857837, 16.820543, 34.093159>,  <11.655113, 17.163446, 34.129501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.857837, 16.820543, 34.093159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673248, 0.459428, -0.579364,
		0.538408, 0.232455, 0.809989,
		0.506808, -0.857257, -0.090860,
		12.009879, 16.563366, 34.065899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.423713, 17.004314, 34.484924>,  <11.655113, 17.163446, 34.129501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.423713, 17.004314, 34.484924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.386811, 16.849550, 34.117928>,  <12.364670, 16.756691, 33.897732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.386811, 16.849550, 34.117928>,  <12.423713, 17.004314, 34.484924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.386811, 16.849550, 34.117928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773663, 0.552209, -0.310663,
		0.626845, -0.738488, 0.248396,
		-0.092254, -0.386912, -0.917490,
		12.359135, 16.733477, 33.842682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.016555, 16.618420, 34.391464>,  <12.423713, 17.004314, 34.484924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.016555, 16.618420, 34.391464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.837786, 16.807541, 34.087696>,  <12.730524, 16.921013, 33.905434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.837786, 16.807541, 34.087696>,  <13.016555, 16.618420, 34.391464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.837786, 16.807541, 34.087696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829781, 0.536294, -0.154443,
		0.334251, -0.699177, -0.632003,
		-0.446922, 0.472801, -0.759421,
		12.703709, 16.949381, 33.859871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479625, 16.572254, 33.900169>,  <13.016555, 16.618420, 34.391464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.479625, 16.572254, 33.900169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.236147, 16.884901, 33.845665>,  <13.090060, 17.072489, 33.812962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.236147, 16.884901, 33.845665>,  <13.479625, 16.572254, 33.900169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.236147, 16.884901, 33.845665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792229, 0.608110, -0.050753,
		0.043191, -0.138841, -0.989372,
		-0.608694, 0.781617, -0.136259,
		13.053539, 17.119387, 33.804787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.602407, 17.144552, 33.438431>,  <13.479625, 16.572254, 33.900169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.602407, 17.144552, 33.438431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.295204, 16.954756, 33.266373>,  <13.110883, 16.840878, 33.163139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.295204, 16.954756, 33.266373>,  <13.602407, 17.144552, 33.438431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.295204, 16.954756, 33.266373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538206, -0.114133, -0.835050,
		0.347131, -0.872829, 0.343029,
		-0.768007, -0.474492, -0.430143,
		13.064802, 16.812408, 33.137329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.872442, 16.540382, 33.033676>,  <13.602407, 17.144552, 33.438431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.872442, 16.540382, 33.033676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.507386, 16.647005, 32.909718>,  <13.288352, 16.710979, 32.835342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.507386, 16.647005, 32.909718>,  <13.872442, 16.540382, 33.033676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.507386, 16.647005, 32.909718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357251, 0.151722, -0.921603,
		-0.198641, -0.951802, -0.233695,
		-0.912641, 0.266557, -0.309894,
		13.233594, 16.726973, 32.816750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.268600, 16.607822, 32.448650>,  <13.872442, 16.540382, 33.033676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.268600, 16.607822, 32.448650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.871716, 16.567966, 32.478561>,  <13.633586, 16.544054, 32.496506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.871716, 16.567966, 32.478561>,  <14.268600, 16.607822, 32.448650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.871716, 16.567966, 32.478561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004047, -0.625707, -0.780048,
		0.124511, -0.773668, 0.621236,
		-0.992210, -0.099639, 0.074776,
		13.574054, 16.538074, 32.500996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.094601, 15.917713, 32.506561>,  <14.268600, 16.607822, 32.448650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.094601, 15.917713, 32.506561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.792506, 16.123940, 32.344666>,  <13.611249, 16.247675, 32.247528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.792506, 16.123940, 32.344666>,  <14.094601, 15.917713, 32.506561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.792506, 16.123940, 32.344666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003447, -0.620604, -0.784116,
		-0.655448, -0.590795, 0.470478,
		-0.755233, 0.515569, -0.404737,
		13.565935, 16.278608, 32.223244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862865, 15.406684, 32.113907>,  <14.094601, 15.917713, 32.506561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.862865, 15.406684, 32.113907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.659924, 15.729302, 31.992533>,  <13.538158, 15.922873, 31.919708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.659924, 15.729302, 31.992533>,  <13.862865, 15.406684, 32.113907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.659924, 15.729302, 31.992533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073251, -0.391215, -0.917379,
		-0.858618, -0.443209, 0.257565,
		-0.507355, 0.806545, -0.303439,
		13.507717, 15.971266, 31.901501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.155546, 15.181419, 31.899067>,  <13.862865, 15.406684, 32.113907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.155546, 15.181419, 31.899067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.237998, 15.528983, 31.719065>,  <13.287469, 15.737521, 31.611063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.237998, 15.528983, 31.719065>,  <13.155546, 15.181419, 31.899067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.237998, 15.528983, 31.719065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373707, -0.355120, -0.856874,
		-0.904353, 0.344797, 0.251517,
		0.206128, 0.868910, -0.450007,
		13.299836, 15.789656, 31.584063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.517241, 15.237235, 31.458397>,  <13.155546, 15.181419, 31.899067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.517241, 15.237235, 31.458397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.844071, 15.431658, 31.334373>,  <13.040170, 15.548311, 31.259960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.844071, 15.431658, 31.334373>,  <12.517241, 15.237235, 31.458397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.844071, 15.431658, 31.334373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198504, -0.267739, -0.942821,
		-0.541279, 0.831904, -0.122279,
		0.817076, 0.486057, -0.310058,
		13.089194, 15.577475, 31.241356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.340174, 15.552845, 30.769829>,  <12.517241, 15.237235, 31.458397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.340174, 15.552845, 30.769829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.739911, 15.567321, 30.770174>,  <12.979753, 15.576006, 30.770380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.739911, 15.567321, 30.770174>,  <12.340174, 15.552845, 30.769829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.739911, 15.567321, 30.770174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011806, -0.303322, -0.952815,
		-0.034220, 0.952201, -0.303550,
		0.999345, 0.036189, 0.000862,
		13.039715, 15.578177, 30.770433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.436442, 15.790313, 30.153328>,  <12.340174, 15.552845, 30.769829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.436442, 15.790313, 30.153328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.789583, 15.630772, 30.252514>,  <13.001468, 15.535048, 30.312025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.789583, 15.630772, 30.252514>,  <12.436442, 15.790313, 30.153328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.789583, 15.630772, 30.252514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002641, -0.523758, -0.851863,
		0.469642, 0.752725, -0.461348,
		0.882853, -0.398852, 0.247967,
		13.054440, 15.511116, 30.326904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.886456, 15.938068, 29.546694>,  <12.436442, 15.790313, 30.153328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.886456, 15.938068, 29.546694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.077699, 15.642356, 29.736378>,  <13.192445, 15.464929, 29.850189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.077699, 15.642356, 29.736378>,  <12.886456, 15.938068, 29.546694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.077699, 15.642356, 29.736378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221388, -0.421046, -0.879607,
		0.849942, 0.525530, -0.037637,
		0.478107, -0.739282, 0.474211,
		13.221130, 15.420571, 29.878641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.527884, 15.932192, 29.411953>,  <12.886456, 15.938068, 29.546694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.527884, 15.932192, 29.411953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.467190, 15.551208, 29.517632>,  <13.430774, 15.322618, 29.581039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.467190, 15.551208, 29.517632>,  <13.527884, 15.932192, 29.411953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.467190, 15.551208, 29.517632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252724, -0.295790, -0.921216,
		0.955567, -0.073011, 0.285590,
		-0.151733, -0.952459, 0.264196,
		13.421670, 15.265471, 29.596889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.014450, 15.503523, 29.087694>,  <13.527884, 15.932192, 29.411953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.014450, 15.503523, 29.087694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.736156, 15.239468, 29.200951>,  <13.569179, 15.081035, 29.268904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.736156, 15.239468, 29.200951>,  <14.014450, 15.503523, 29.087694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.736156, 15.239468, 29.200951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179023, -0.541103, -0.821680,
		0.695630, -0.520984, 0.494645,
		-0.695736, -0.660139, 0.283139,
		13.527434, 15.041426, 29.285892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.312994, 14.805288, 29.064497>,  <14.014450, 15.503523, 29.087694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.312994, 14.805288, 29.064497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.916546, 14.780195, 29.017603>,  <13.678677, 14.765140, 28.989466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.916546, 14.780195, 29.017603>,  <14.312994, 14.805288, 29.064497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.916546, 14.780195, 29.017603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131979, -0.571353, -0.810023,
		-0.016170, -0.818304, 0.574559,
		-0.991121, -0.062732, -0.117237,
		13.619209, 14.761375, 28.982431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.219806, 14.143892, 28.784296>,  <14.312994, 14.805288, 29.064497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.219806, 14.143892, 28.784296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.856895, 14.302231, 28.727507>,  <13.639150, 14.397234, 28.693432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.856895, 14.302231, 28.727507>,  <14.219806, 14.143892, 28.784296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.856895, 14.302231, 28.727507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073363, -0.481409, -0.873421,
		-0.414085, -0.782019, 0.465811,
		-0.907277, 0.395844, -0.141973,
		13.584713, 14.420985, 28.684914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.783112, 13.607858, 28.567247>,  <14.219806, 14.143892, 28.784296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.783112, 13.607858, 28.567247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.606986, 13.948479, 28.453417>,  <13.501310, 14.152851, 28.385118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.606986, 13.948479, 28.453417>,  <13.783112, 13.607858, 28.567247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.606986, 13.948479, 28.453417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050034, -0.339736, -0.939189,
		-0.896449, -0.399299, 0.192197,
		-0.440313, 0.851551, -0.284577,
		13.474892, 14.203944, 28.368044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.182821, 13.396298, 28.213154>,  <13.783112, 13.607858, 28.567247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.182821, 13.396298, 28.213154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.258360, 13.768387, 28.087280>,  <13.303683, 13.991640, 28.011757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.258360, 13.768387, 28.087280>,  <13.182821, 13.396298, 28.213154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.258360, 13.768387, 28.087280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011696, -0.318296, -0.947919,
		-0.981937, 0.182691, -0.049229,
		0.188846, 0.930221, -0.314683,
		13.315014, 14.047453, 27.992876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.756348, 13.593217, 27.640535>,  <13.182821, 13.396298, 28.213154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.756348, 13.593217, 27.640535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.091585, 13.811140, 27.629351>,  <13.292727, 13.941895, 27.622641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.091585, 13.811140, 27.629351>,  <12.756348, 13.593217, 27.640535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.091585, 13.811140, 27.629351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022094, -0.085111, -0.996126,
		-0.545078, 0.834230, -0.083368,
		0.838094, 0.544808, -0.027961,
		13.343014, 13.974583, 27.620962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.653854, 14.157717, 27.229805>,  <12.756348, 13.593217, 27.640535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.653854, 14.157717, 27.229805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.046961, 14.084921, 27.242765>,  <13.282825, 14.041244, 27.250542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.046961, 14.084921, 27.242765>,  <12.653854, 14.157717, 27.229805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.046961, 14.084921, 27.242765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044740, 0.064098, -0.996940,
		0.179355, 0.981209, 0.071135,
		0.982767, -0.181989, 0.032403,
		13.341791, 14.030324, 27.252487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.049370, 14.722729, 26.836756>,  <12.653854, 14.157717, 27.229805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.049370, 14.722729, 26.836756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.322765, 14.432676, 26.870291>,  <13.486803, 14.258645, 26.890411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.322765, 14.432676, 26.870291>,  <13.049370, 14.722729, 26.836756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.322765, 14.432676, 26.870291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106784, -0.014290, -0.994180,
		0.722108, 0.688463, 0.067665,
		0.683489, -0.725131, 0.083835,
		13.527812, 14.215137, 26.895441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.680270, 14.913408, 26.467634>,  <13.049370, 14.722729, 26.836756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.680270, 14.913408, 26.467634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.681861, 14.513731, 26.483624>,  <13.682816, 14.273925, 26.493217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.681861, 14.513731, 26.483624>,  <13.680270, 14.913408, 26.467634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.681861, 14.513731, 26.483624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127217, -0.039143, -0.991102,
		0.991867, 0.009028, 0.126958,
		0.003978, -0.999193, 0.039973,
		13.683054, 14.213973, 26.495615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.152080, 14.785257, 25.982304>,  <13.680270, 14.913408, 26.467634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.152080, 14.785257, 25.982304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.955114, 14.439732, 26.024929>,  <13.836935, 14.232416, 26.050505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.955114, 14.439732, 26.024929>,  <14.152080, 14.785257, 25.982304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.955114, 14.439732, 26.024929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066139, -0.084943, -0.994188,
		0.867845, -0.496599, -0.015305,
		-0.492413, -0.863814, 0.106561,
		13.807390, 14.180588, 26.056898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.521626, 14.194942, 25.651262>,  <14.152080, 14.785257, 25.982304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.521626, 14.194942, 25.651262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.161414, 14.021769, 25.667345>,  <13.945287, 13.917865, 25.676994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.161414, 14.021769, 25.667345>,  <14.521626, 14.194942, 25.651262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.161414, 14.021769, 25.667345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034275, -0.162874, -0.986051,
		0.433443, -0.886590, 0.161512,
		-0.900529, -0.432933, 0.040209,
		13.891255, 13.891889, 25.679407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.552725, 13.664322, 25.216450>,  <14.521626, 14.194942, 25.651262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.552725, 13.664322, 25.216450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.156659, 13.708030, 25.251398>,  <13.919020, 13.734255, 25.272367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.156659, 13.708030, 25.251398>,  <14.552725, 13.664322, 25.216450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.156659, 13.708030, 25.251398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115841, -0.290173, -0.949937,
		-0.078447, -0.950716, 0.299977,
		-0.990165, 0.109269, 0.087369,
		13.859610, 13.740810, 25.277609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.300725, 13.049572, 24.886175>,  <14.552725, 13.664322, 25.216450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.300725, 13.049572, 24.886175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.008005, 13.322033, 24.895121>,  <13.832373, 13.485510, 24.900488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.008005, 13.322033, 24.895121>,  <14.300725, 13.049572, 24.886175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.008005, 13.322033, 24.895121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143713, -0.122155, -0.982051,
		-0.666195, -0.721879, 0.187284,
		-0.731800, 0.681152, 0.022364,
		13.788465, 13.526379, 24.901831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.732933, 12.805238, 24.378775>,  <14.300725, 13.049572, 24.886175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.732933, 12.805238, 24.378775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.593379, 13.177011, 24.426832>,  <13.509646, 13.400074, 24.455667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.593379, 13.177011, 24.426832>,  <13.732933, 12.805238, 24.378775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.593379, 13.177011, 24.426832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262963, 0.025961, -0.964456,
		-0.899516, -0.368078, 0.235349,
		-0.348885, 0.929432, 0.120144,
		13.488713, 13.455840, 24.462875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.127241, 12.814590, 24.085577>,  <13.732933, 12.805238, 24.378775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.127241, 12.814590, 24.085577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.251009, 13.194953, 24.087915>,  <13.325270, 13.423171, 24.089319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.251009, 13.194953, 24.087915>,  <13.127241, 12.814590, 24.085577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.251009, 13.194953, 24.087915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275659, 0.095579, -0.956492,
		-0.910094, 0.294345, 0.291700,
		0.309419, 0.950908, 0.005847,
		13.343835, 13.480226, 24.089670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.619007, 13.220935, 23.795071>,  <13.127241, 12.814590, 24.085577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.619007, 13.220935, 23.795071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.932229, 13.469428, 23.783108>,  <13.120162, 13.618525, 23.775930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.932229, 13.469428, 23.783108>,  <12.619007, 13.220935, 23.795071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.932229, 13.469428, 23.783108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179275, 0.179408, -0.967302,
		-0.595556, 0.762811, 0.251858,
		0.783054, 0.621234, -0.029905,
		13.167146, 13.655798, 23.774136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.325925, 13.909059, 23.452452>,  <12.619007, 13.220935, 23.795071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.325925, 13.909059, 23.452452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.723276, 13.902946, 23.406902>,  <12.961687, 13.899278, 23.379574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.723276, 13.902946, 23.406902>,  <12.325925, 13.909059, 23.452452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.723276, 13.902946, 23.406902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106228, 0.255416, -0.960978,
		0.043771, 0.966711, 0.252101,
		0.993378, -0.015282, -0.113871,
		13.021290, 13.898361, 23.372742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.592651, 14.533613, 23.049099>,  <12.325925, 13.909059, 23.452452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.592651, 14.533613, 23.049099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.882863, 14.261289, 23.008894>,  <13.056991, 14.097894, 22.984772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.882863, 14.261289, 23.008894>,  <12.592651, 14.533613, 23.049099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.882863, 14.261289, 23.008894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052319, 0.091063, -0.994470,
		0.686199, 0.726776, 0.030449,
		0.725530, -0.680811, -0.100511,
		13.100522, 14.057045, 22.978741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.205133, 14.758309, 22.903046>,  <12.592651, 14.533613, 23.049099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.205133, 14.758309, 22.903046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.205472, 14.390506, 22.745819>,  <13.205675, 14.169824, 22.651484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.205472, 14.390506, 22.745819>,  <13.205133, 14.758309, 22.903046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.205472, 14.390506, 22.745819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152784, 0.388333, -0.908765,
		0.988259, 0.060824, -0.140157,
		0.000847, -0.919509, -0.393067,
		13.205727, 14.114653, 22.627899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.225685, 14.850017, 22.215521>,  <13.205133, 14.758309, 22.903046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.225685, 14.850017, 22.215521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.185803, 14.453816, 22.177645>,  <13.161875, 14.216096, 22.154919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.185803, 14.453816, 22.177645>,  <13.225685, 14.850017, 22.215521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.185803, 14.453816, 22.177645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082820, 0.103096, -0.991217,
		0.991565, -0.090985, -0.092313,
		-0.099703, -0.990502, -0.094691,
		13.155892, 14.156666, 22.149237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.632832, 14.736516, 21.711046>,  <13.225685, 14.850017, 22.215521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.632832, 14.736516, 21.711046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.412944, 14.402609, 21.723507>,  <13.281011, 14.202265, 21.730984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.412944, 14.402609, 21.723507>,  <13.632832, 14.736516, 21.711046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.412944, 14.402609, 21.723507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076986, 0.013496, -0.996940,
		0.831794, -0.550436, -0.071685,
		-0.549720, -0.834768, 0.031151,
		13.248028, 14.152179, 21.732853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.947357, 14.291245, 21.260925>,  <13.632832, 14.736516, 21.711046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.947357, 14.291245, 21.260925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.573455, 14.156084, 21.304846>,  <13.349113, 14.074987, 21.331198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.573455, 14.156084, 21.304846>,  <13.947357, 14.291245, 21.260925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.573455, 14.156084, 21.304846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034016, -0.222513, -0.974336,
		0.353662, -0.914500, 0.196501,
		-0.934754, -0.337902, 0.109802,
		13.293029, 14.054713, 21.337786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.000030, 13.656992, 20.917978>,  <13.947357, 14.291245, 21.260925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.000030, 13.656992, 20.917978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.622005, 13.787722, 20.920544>,  <13.395189, 13.866159, 20.922083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.622005, 13.787722, 20.920544>,  <14.000030, 13.656992, 20.917978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.622005, 13.787722, 20.920544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050592, -0.126850, -0.990631,
		-0.322948, -0.936534, 0.136416,
		-0.945064, 0.326824, 0.006415,
		13.338486, 13.885769, 20.922468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.633088, 13.169269, 20.661049>,  <14.000030, 13.656992, 20.917978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.633088, 13.169269, 20.661049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.400365, 13.486330, 20.588165>,  <13.260731, 13.676567, 20.544436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.400365, 13.486330, 20.588165>,  <13.633088, 13.169269, 20.661049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.400365, 13.486330, 20.588165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065830, -0.269189, -0.960835,
		-0.810658, -0.547026, 0.208797,
		-0.581807, 0.792654, -0.182210,
		13.225822, 13.724126, 20.533503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.176135, 12.853194, 20.256016>,  <13.633088, 13.169269, 20.661049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.176135, 12.853194, 20.256016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.105324, 13.240866, 20.187481>,  <13.062837, 13.473469, 20.146360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.105324, 13.240866, 20.187481>,  <13.176135, 12.853194, 20.256016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.105324, 13.240866, 20.187481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110413, -0.192543, -0.975057,
		-0.977993, -0.153695, 0.141095,
		-0.177029, 0.969178, -0.171335,
		13.052216, 13.531619, 20.136080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.672092, 12.838732, 19.721621>,  <13.176135, 12.853194, 20.256016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.672092, 12.838732, 19.721621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.785612, 13.222283, 19.720570>,  <12.853724, 13.452415, 19.719938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.785612, 13.222283, 19.720570>,  <12.672092, 12.838732, 19.721621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.785612, 13.222283, 19.720570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099407, 0.026694, -0.994689,
		-0.953717, 0.282553, 0.102895,
		0.283799, 0.958880, -0.002629,
		12.870751, 13.509948, 19.719782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.216823, 13.182305, 19.292582>,  <12.672092, 12.838732, 19.721621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.216823, 13.182305, 19.292582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.555523, 13.395002, 19.299068>,  <12.758743, 13.522620, 19.302961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.555523, 13.395002, 19.299068>,  <12.216823, 13.182305, 19.292582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.555523, 13.395002, 19.299068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061683, -0.067854, -0.995787,
		-0.528401, 0.844184, -0.090255,
		0.846751, 0.531742, 0.016217,
		12.809548, 13.554524, 19.303934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.175946, 13.627822, 18.697643>,  <12.216823, 13.182305, 19.292582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.175946, 13.627822, 18.697643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.563117, 13.634404, 18.797922>,  <12.795420, 13.638353, 18.858089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.563117, 13.634404, 18.797922>,  <12.175946, 13.627822, 18.697643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.563117, 13.634404, 18.797922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250895, -0.115242, -0.961130,
		0.013075, 0.993201, -0.115674,
		0.967926, 0.016455, 0.250696,
		12.853495, 13.639340, 18.873131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.436844, 14.213969, 18.247007>,  <12.175946, 13.627822, 18.697643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.436844, 14.213969, 18.247007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.744367, 13.986312, 18.363634>,  <12.928881, 13.849717, 18.433611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.744367, 13.986312, 18.363634>,  <12.436844, 14.213969, 18.247007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.744367, 13.986312, 18.363634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269351, -0.125322, -0.954853,
		0.579988, 0.812632, 0.056951,
		0.768807, -0.569144, 0.291568,
		12.975009, 13.815569, 18.451105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.033950, 14.494763, 17.990990>,  <12.436844, 14.213969, 18.247007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.033950, 14.494763, 17.990990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.106601, 14.105990, 18.050800>,  <13.150191, 13.872726, 18.086687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.106601, 14.105990, 18.050800>,  <13.033950, 14.494763, 17.990990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.106601, 14.105990, 18.050800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170267, -0.118677, -0.978225,
		0.968515, 0.203131, 0.143933,
		0.181627, -0.971933, 0.149527,
		13.161089, 13.814410, 18.095659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.779688, 14.184821, 17.813068>,  <13.033950, 14.494763, 17.990990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.779688, 14.184821, 17.813068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.470680, 13.940862, 17.742373>,  <13.285275, 13.794486, 17.699955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.470680, 13.940862, 17.742373>,  <13.779688, 14.184821, 17.813068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.470680, 13.940862, 17.742373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235284, -0.016409, -0.971788,
		0.589792, -0.792310, 0.156175,
		-0.772520, -0.609898, -0.176740,
		13.238924, 13.757893, 17.689350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.461412, 14.453158, 17.772570>,  <13.779688, 14.184821, 17.813068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.461412, 14.453158, 17.772570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.846846, 14.490191, 17.672220>,  <15.078105, 14.512410, 17.612011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.846846, 14.490191, 17.672220>,  <14.461412, 14.453158, 17.772570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.846846, 14.490191, 17.672220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266145, -0.240842, 0.933360,
		0.025990, -0.966139, -0.256711,
		0.963582, 0.092580, -0.250874,
		15.135921, 14.517964, 17.596958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.816825, 14.128780, 18.299891>,  <14.461412, 14.453158, 17.772570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.816825, 14.128780, 18.299891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.121196, 14.308695, 18.112837>,  <15.303818, 14.416644, 18.000605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.121196, 14.308695, 18.112837>,  <14.816825, 14.128780, 18.299891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.121196, 14.308695, 18.112837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537316, -0.032821, 0.842742,
		0.363707, -0.892532, -0.266652,
		0.760926, 0.449788, -0.467635,
		15.349474, 14.443631, 17.972546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.379766, 13.721745, 18.411421>,  <14.816825, 14.128780, 18.299891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.379766, 13.721745, 18.411421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.535916, 14.081710, 18.333687>,  <15.629606, 14.297688, 18.287046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.535916, 14.081710, 18.333687>,  <15.379766, 13.721745, 18.411421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.535916, 14.081710, 18.333687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521962, -0.042453, 0.851912,
		0.758394, -0.434003, -0.486292,
		0.390377, 0.899911, -0.194337,
		15.653029, 14.351683, 18.275387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.993923, 13.612369, 18.501167>,  <15.379766, 13.721745, 18.411421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.993923, 13.612369, 18.501167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.949088, 14.006483, 18.552774>,  <15.922187, 14.242952, 18.583738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.949088, 14.006483, 18.552774>,  <15.993923, 13.612369, 18.501167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.949088, 14.006483, 18.552774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648212, -0.025908, 0.761019,
		0.753165, 0.168931, -0.635771,
		-0.112089, 0.985287, 0.129016,
		15.915462, 14.302070, 18.591478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.669088, 13.784401, 18.610096>,  <15.993923, 13.612369, 18.501167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.669088, 13.784401, 18.610096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.415205, 14.061274, 18.747519>,  <16.262875, 14.227397, 18.829971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.415205, 14.061274, 18.747519>,  <16.669088, 13.784401, 18.610096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.415205, 14.061274, 18.747519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461294, -0.017298, 0.887079,
		0.619962, 0.721517, -0.308319,
		-0.634709, 0.692181, 0.343555,
		16.224792, 14.268928, 18.850586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.056173, 14.273128, 19.068113>,  <16.669088, 13.784401, 18.610096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.056173, 14.273128, 19.068113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674210, 14.319788, 19.177320>,  <16.445030, 14.347784, 19.242846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.674210, 14.319788, 19.177320>,  <17.056173, 14.273128, 19.068113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.674210, 14.319788, 19.177320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293149, 0.224857, 0.929249,
		0.047007, 0.967384, -0.248914,
		-0.954911, 0.116650, 0.273018,
		16.387737, 14.354783, 19.259226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.111647, 14.834398, 19.360872>,  <17.056173, 14.273128, 19.068113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.111647, 14.834398, 19.360872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.782175, 14.665297, 19.512045>,  <16.584492, 14.563835, 19.602749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.782175, 14.665297, 19.512045>,  <17.111647, 14.834398, 19.360872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.782175, 14.665297, 19.512045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356705, 0.131821, 0.924870,
		-0.440813, 0.896605, 0.042221,
		-0.823678, -0.422755, 0.377932,
		16.535072, 14.538470, 19.625423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736326, 15.287496, 19.836094>,  <17.111647, 14.834398, 19.360872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.736326, 15.287496, 19.836094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.638372, 14.911937, 19.932844>,  <16.579599, 14.686602, 19.990894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.638372, 14.911937, 19.932844>,  <16.736326, 15.287496, 19.836094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.638372, 14.911937, 19.932844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161254, 0.206558, 0.965055,
		-0.956048, 0.275332, 0.100818,
		-0.244885, -0.938896, 0.241877,
		16.564907, 14.630268, 20.005407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.604143, 15.370211, 20.572855>,  <16.736326, 15.287496, 19.836094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.604143, 15.370211, 20.572855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.582878, 14.973978, 20.522379>,  <16.570120, 14.736238, 20.492092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.582878, 14.973978, 20.522379>,  <16.604143, 15.370211, 20.572855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.582878, 14.973978, 20.522379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312267, -0.103542, 0.944335,
		-0.948506, 0.089609, -0.303821,
		-0.053162, -0.990580, -0.126192,
		16.566929, 14.676804, 20.484522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.929121, 15.064172, 20.849274>,  <16.604143, 15.370211, 20.572855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.929121, 15.064172, 20.849274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.213581, 14.783007, 20.843922>,  <16.384256, 14.614307, 20.840712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.213581, 14.783007, 20.843922>,  <15.929121, 15.064172, 20.849274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.213581, 14.783007, 20.843922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161692, -0.182047, 0.969904,
		-0.684194, -0.687584, -0.243119,
		0.711150, -0.702913, -0.013379,
		16.426926, 14.572133, 20.839909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.639183, 14.622900, 21.239716>,  <15.929121, 15.064172, 20.849274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.639183, 14.622900, 21.239716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.025402, 14.519770, 21.253813>,  <16.257133, 14.457891, 21.262272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.025402, 14.519770, 21.253813>,  <15.639183, 14.622900, 21.239716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.025402, 14.519770, 21.253813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072510, -0.136499, 0.987983,
		-0.249918, -0.956500, -0.150491,
		0.965548, -0.257827, 0.035242,
		16.315067, 14.442422, 21.264385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.729783, 14.099112, 21.731178>,  <15.639183, 14.622900, 21.239716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.729783, 14.099112, 21.731178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.116047, 14.200840, 21.709932>,  <16.347805, 14.261877, 21.697186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.116047, 14.200840, 21.709932>,  <15.729783, 14.099112, 21.731178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.116047, 14.200840, 21.709932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005525, 0.184286, 0.982857,
		0.259752, -0.949399, 0.176552,
		0.965660, 0.254324, -0.053114,
		16.405745, 14.277136, 21.693998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.145855, 13.762547, 22.295687>,  <15.729783, 14.099112, 21.731178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.145855, 13.762547, 22.295687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.375620, 14.068518, 22.179111>,  <16.513479, 14.252100, 22.109165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.375620, 14.068518, 22.179111>,  <16.145855, 13.762547, 22.295687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.375620, 14.068518, 22.179111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103707, 0.285163, 0.952852,
		0.811970, -0.577554, 0.084473,
		0.574412, 0.764927, -0.291440,
		16.547943, 14.297996, 22.091681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711061, 13.685412, 22.773804>,  <16.145855, 13.762547, 22.295687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711061, 13.685412, 22.773804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.701523, 14.054379, 22.619621>,  <16.695799, 14.275760, 22.527111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.701523, 14.054379, 22.619621>,  <16.711061, 13.685412, 22.773804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.701523, 14.054379, 22.619621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099952, 0.385836, 0.917137,
		0.994707, -0.016657, -0.101398,
		-0.023846, 0.922417, -0.385458,
		16.694368, 14.331104, 22.503984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.131910, 14.047400, 23.200943>,  <16.711061, 13.685412, 22.773804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.131910, 14.047400, 23.200943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.908890, 14.329537, 23.025843>,  <16.775078, 14.498820, 22.920782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.908890, 14.329537, 23.025843>,  <17.131910, 14.047400, 23.200943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.908890, 14.329537, 23.025843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170050, 0.419097, 0.891875,
		0.812539, 0.571705, -0.113724,
		-0.557551, 0.705344, -0.437751,
		16.741625, 14.541141, 22.894518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.295412, 14.798442, 23.520275>,  <17.131910, 14.047400, 23.200943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.295412, 14.798442, 23.520275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.930325, 14.834473, 23.360861>,  <16.711271, 14.856091, 23.265211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.930325, 14.834473, 23.360861>,  <17.295412, 14.798442, 23.520275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.930325, 14.834473, 23.360861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294360, 0.531500, 0.794267,
		0.283368, 0.842255, -0.458594,
		-0.912718, 0.090078, -0.398537,
		16.656509, 14.861496, 23.241301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.070831, 15.509269, 23.621025>,  <17.295412, 14.798442, 23.520275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.070831, 15.509269, 23.621025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.715971, 15.333565, 23.564434>,  <16.503056, 15.228143, 23.530479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.715971, 15.333565, 23.564434>,  <17.070831, 15.509269, 23.621025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.715971, 15.333565, 23.564434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369428, 0.492261, 0.788164,
		-0.276566, 0.751485, -0.598984,
		-0.887150, -0.439260, -0.141477,
		16.449825, 15.201787, 23.521992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.560375, 16.049416, 23.710926>,  <17.070831, 15.509269, 23.621025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.560375, 16.049416, 23.710926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.369303, 15.700818, 23.755322>,  <16.254660, 15.491660, 23.781960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.369303, 15.700818, 23.755322>,  <16.560375, 16.049416, 23.710926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.369303, 15.700818, 23.755322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443189, 0.348125, 0.826071,
		-0.758553, 0.345411, -0.552530,
		-0.477683, -0.871493, 0.110988,
		16.225998, 15.439370, 23.788618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.754974, 16.218227, 23.752777>,  <16.560375, 16.049416, 23.710926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.754974, 16.218227, 23.752777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.826751, 15.861423, 23.918724>,  <15.869817, 15.647340, 24.018291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.826751, 15.861423, 23.918724>,  <15.754974, 16.218227, 23.752777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.826751, 15.861423, 23.918724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414221, 0.314000, 0.854298,
		-0.892312, -0.325144, -0.313145,
		0.179442, -0.892012, 0.414868,
		15.880584, 15.593819, 24.043184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101520, 15.875467, 24.048092>,  <15.754974, 16.218227, 23.752777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.101520, 15.875467, 24.048092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.393992, 15.714393, 24.268353>,  <15.569476, 15.617748, 24.400509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.393992, 15.714393, 24.268353>,  <15.101520, 15.875467, 24.048092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.393992, 15.714393, 24.268353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444177, 0.331618, 0.832308,
		-0.517765, -0.853155, 0.063608,
		0.731181, -0.402686, 0.550652,
		15.613347, 15.593587, 24.433548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.762229, 15.675727, 24.575869>,  <15.101520, 15.875467, 24.048092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.762229, 15.675727, 24.575869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.133976, 15.648550, 24.721008>,  <15.357024, 15.632244, 24.808092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.133976, 15.648550, 24.721008>,  <14.762229, 15.675727, 24.575869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.133976, 15.648550, 24.721008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352500, 0.128566, 0.926938,
		-0.109630, -0.989371, 0.095534,
		0.929368, -0.067945, 0.362848,
		15.412786, 15.628167, 24.829863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627374, 15.340868, 25.174910>,  <14.762229, 15.675727, 24.575869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.627374, 15.340868, 25.174910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.993564, 15.486370, 25.243713>,  <15.213278, 15.573671, 25.284996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.993564, 15.486370, 25.243713>,  <14.627374, 15.340868, 25.174910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.993564, 15.486370, 25.243713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229295, 0.120331, 0.965890,
		0.330650, -0.923690, 0.193567,
		0.915475, 0.363755, 0.172010,
		15.268207, 15.595497, 25.295317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.890666, 15.092332, 25.741051>,  <14.627374, 15.340868, 25.174910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.890666, 15.092332, 25.741051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.096678, 15.434167, 25.714439>,  <15.220284, 15.639268, 25.698473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.096678, 15.434167, 25.714439>,  <14.890666, 15.092332, 25.741051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.096678, 15.434167, 25.714439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162427, 0.173507, 0.971346,
		0.841642, -0.489466, 0.228169,
		0.515029, 0.854587, -0.066528,
		15.251186, 15.690543, 25.694481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.039341, 15.171124, 26.415337>,  <14.890666, 15.092332, 25.741051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.039341, 15.171124, 26.415337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.126820, 15.519902, 26.240120>,  <15.179307, 15.729169, 26.134989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.126820, 15.519902, 26.240120>,  <15.039341, 15.171124, 26.415337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.126820, 15.519902, 26.240120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243073, 0.483440, 0.840953,
		0.945033, -0.077436, 0.317672,
		0.218695, 0.871946, -0.438044,
		15.192429, 15.781487, 26.108707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.571457, 15.518998, 26.850241>,  <15.039341, 15.171124, 26.415337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.571457, 15.518998, 26.850241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.359316, 15.792023, 26.649109>,  <15.232031, 15.955837, 26.528431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.359316, 15.792023, 26.649109>,  <15.571457, 15.518998, 26.850241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.359316, 15.792023, 26.649109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346715, 0.366617, 0.863354,
		0.773637, 0.632221, 0.042218,
		-0.530353, 0.682561, -0.502829,
		15.200210, 15.996791, 26.498260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652256, 16.166607, 27.124355>,  <15.571457, 15.518998, 26.850241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.652256, 16.166607, 27.124355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.306107, 16.213823, 26.929544>,  <15.098417, 16.242153, 26.812658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.306107, 16.213823, 26.929544>,  <15.652256, 16.166607, 27.124355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.306107, 16.213823, 26.929544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354438, 0.542874, 0.761355,
		0.354265, 0.831477, -0.427951,
		-0.865373, 0.118040, -0.487029,
		15.046494, 16.249235, 26.783436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.538987, 16.873644, 27.099289>,  <15.652256, 16.166607, 27.124355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.538987, 16.873644, 27.099289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.189174, 16.679827, 27.091179>,  <14.979286, 16.563538, 27.086313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.189174, 16.679827, 27.091179>,  <15.538987, 16.873644, 27.099289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.189174, 16.679827, 27.091179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266555, 0.445325, 0.854771,
		-0.405143, 0.752931, -0.518608,
		-0.874533, -0.484542, -0.020277,
		14.926814, 16.534464, 27.085096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.076025, 17.302374, 27.134672>,  <15.538987, 16.873644, 27.099289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.076025, 17.302374, 27.134672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.913398, 16.971682, 27.290218>,  <14.815822, 16.773266, 27.383547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.913398, 16.971682, 27.290218>,  <15.076025, 17.302374, 27.134672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.913398, 16.971682, 27.290218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294727, 0.521560, 0.800694,
		-0.864776, 0.210928, -0.455710,
		-0.406569, -0.826731, 0.388866,
		14.791428, 16.723661, 27.406878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.361310, 17.507734, 27.273109>,  <15.076025, 17.302374, 27.134672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.361310, 17.507734, 27.273109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.493497, 17.199879, 27.491632>,  <14.572809, 17.015165, 27.622746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.493497, 17.199879, 27.491632>,  <14.361310, 17.507734, 27.273109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.493497, 17.199879, 27.491632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102111, 0.546273, 0.831360,
		-0.938278, -0.330521, 0.101937,
		0.330467, -0.769638, 0.546305,
		14.592637, 16.968987, 27.655523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.986022, 17.515097, 27.890291>,  <14.361310, 17.507734, 27.273109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.986022, 17.515097, 27.890291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.253805, 17.242212, 28.007877>,  <14.414475, 17.078482, 28.078428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.253805, 17.242212, 28.007877>,  <13.986022, 17.515097, 27.890291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.253805, 17.242212, 28.007877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000576, 0.395250, 0.918573,
		-0.742850, -0.615115, 0.264210,
		0.669458, -0.682210, 0.293966,
		14.454642, 17.037550, 28.096067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.706759, 17.233349, 28.396738>,  <13.986022, 17.515097, 27.890291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.706759, 17.233349, 28.396738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.096519, 17.177135, 28.466938>,  <14.330374, 17.143408, 28.509058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.096519, 17.177135, 28.466938>,  <13.706759, 17.233349, 28.396738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.096519, 17.177135, 28.466938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108138, 0.391434, 0.913830,
		-0.197122, -0.909412, 0.366215,
		0.974397, -0.140534, 0.175502,
		14.388838, 17.134975, 28.519588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.773504, 16.919935, 29.046366>,  <13.706759, 17.233349, 28.396738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.773504, 16.919935, 29.046366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.148225, 17.047302, 28.988380>,  <14.373057, 17.123722, 28.953588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.148225, 17.047302, 28.988380>,  <13.773504, 16.919935, 29.046366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.148225, 17.047302, 28.988380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005324, 0.401318, 0.915923,
		0.349821, -0.858810, 0.374260,
		0.936802, 0.318417, -0.144961,
		14.429265, 17.142828, 28.944891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.196638, 16.656801, 29.566257>,  <13.773504, 16.919935, 29.046366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.196638, 16.656801, 29.566257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.366442, 16.988129, 29.420006>,  <14.468324, 17.186924, 29.332254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.366442, 16.988129, 29.420006>,  <14.196638, 16.656801, 29.566257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.366442, 16.988129, 29.420006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078804, 0.436089, 0.896447,
		0.901988, -0.351735, 0.250398,
		0.424508, 0.828317, -0.365629,
		14.493794, 17.236624, 29.310318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.390306, 16.928875, 30.165236>,  <14.196638, 16.656801, 29.566257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.390306, 16.928875, 30.165236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.485963, 17.224585, 29.913429>,  <14.543357, 17.402010, 29.762346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.485963, 17.224585, 29.913429>,  <14.390306, 16.928875, 30.165236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.485963, 17.224585, 29.913429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071431, 0.633174, 0.770706,
		0.968354, -0.229274, 0.098611,
		0.239141, 0.739272, -0.629514,
		14.557705, 17.446365, 29.724575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.017698, 17.275299, 30.444782>,  <14.390306, 16.928875, 30.165236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.017698, 17.275299, 30.444782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.806349, 17.520344, 30.209656>,  <14.679540, 17.667370, 30.068581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.806349, 17.520344, 30.209656>,  <15.017698, 17.275299, 30.444782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.806349, 17.520344, 30.209656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042452, 0.710550, 0.702365,
		0.847950, 0.346157, -0.401442,
		-0.528373, 0.612612, -0.587816,
		14.647837, 17.704128, 30.033310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319452, 17.952696, 30.412815>,  <15.017698, 17.275299, 30.444782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.319452, 17.952696, 30.412815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.937135, 18.021751, 30.317608>,  <14.707744, 18.063185, 30.260483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.937135, 18.021751, 30.317608>,  <15.319452, 17.952696, 30.412815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.937135, 18.021751, 30.317608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021414, 0.848211, 0.529225,
		0.293255, 0.500733, -0.814413,
		-0.955794, 0.172637, -0.238020,
		14.650396, 18.073544, 30.246202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.356976, 18.563465, 30.089472>,  <15.319452, 17.952696, 30.412815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.356976, 18.563465, 30.089472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.002575, 18.575939, 30.274525>,  <14.789935, 18.583424, 30.385557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.002575, 18.575939, 30.274525>,  <15.356976, 18.563465, 30.089472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.002575, 18.575939, 30.274525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338195, 0.726040, 0.598741,
		-0.317217, 0.686945, -0.653819,
		-0.886001, 0.031187, 0.462633,
		14.736774, 18.585295, 30.413315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.171666, 19.200026, 30.495138>,  <15.356976, 18.563465, 30.089472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.171666, 19.200026, 30.495138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.275677, 19.585613, 30.472687>,  <15.338083, 19.816965, 30.459217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.275677, 19.585613, 30.472687>,  <15.171666, 19.200026, 30.495138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.275677, 19.585613, 30.472687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532419, -0.191624, -0.824506,
		-0.805553, 0.184512, -0.563063,
		0.260027, 0.963969, -0.056126,
		15.353685, 19.874804, 30.455849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.066804, 19.410933, 29.796888>,  <15.171666, 19.200026, 30.495138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.066804, 19.410933, 29.796888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.346358, 19.623941, 29.987877>,  <15.514091, 19.751747, 30.102470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.346358, 19.623941, 29.987877>,  <15.066804, 19.410933, 29.796888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.346358, 19.623941, 29.987877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632217, -0.147783, -0.760567,
		-0.334455, 0.833415, -0.439952,
		0.698886, 0.532521, 0.477473,
		15.556024, 19.783697, 30.131119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.301536, 19.817642, 29.252216>,  <15.066804, 19.410933, 29.796888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.301536, 19.817642, 29.252216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.587925, 19.824902, 29.531372>,  <15.759759, 19.829256, 29.698866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.587925, 19.824902, 29.531372>,  <15.301536, 19.817642, 29.252216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587925, 19.824902, 29.531372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695284, -0.108655, -0.710475,
		0.062937, 0.993914, -0.090411,
		0.715974, 0.018146, 0.697891,
		15.802717, 19.830345, 29.740740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.866096, 20.006908, 28.945831>,  <15.301536, 19.817642, 29.252216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.866096, 20.006908, 28.945831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.055355, 19.896591, 29.280512>,  <16.168911, 19.830400, 29.481321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.055355, 19.896591, 29.280512>,  <15.866096, 20.006908, 28.945831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.055355, 19.896591, 29.280512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816303, -0.219946, -0.534109,
		0.331332, 0.935715, 0.121062,
		0.473147, -0.275791, 0.836703,
		16.197300, 19.813854, 29.531523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.453064, 20.456367, 29.100279>,  <15.866096, 20.006908, 28.945831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.453064, 20.456367, 29.100279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.515181, 20.089828, 29.247896>,  <16.552450, 19.869905, 29.336466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.515181, 20.089828, 29.247896>,  <16.453064, 20.456367, 29.100279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.515181, 20.089828, 29.247896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841806, -0.072747, -0.534856,
		0.516961, 0.393721, 0.760089,
		0.155289, -0.916347, 0.369044,
		16.561768, 19.814924, 29.358610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.239183, 20.442528, 29.151474>,  <16.453064, 20.456367, 29.100279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.239183, 20.442528, 29.151474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.121267, 20.060623, 29.167116>,  <17.050518, 19.831480, 29.176502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.121267, 20.060623, 29.167116>,  <17.239183, 20.442528, 29.151474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.121267, 20.060623, 29.167116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858709, -0.282640, -0.427474,
		0.419189, -0.092432, 0.903181,
		-0.294788, -0.954762, 0.039107,
		17.032831, 19.774195, 29.178848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.920803, 20.105038, 29.069113>,  <17.239183, 20.442528, 29.151474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.920803, 20.105038, 29.069113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.641476, 19.826174, 29.004219>,  <17.473879, 19.658855, 28.965282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.641476, 19.826174, 29.004219>,  <17.920803, 20.105038, 29.069113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.641476, 19.826174, 29.004219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667593, -0.552590, -0.498963,
		0.258209, -0.456740, 0.851303,
		-0.698318, -0.697161, -0.162233,
		17.431980, 19.617025, 28.955549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.389526, 19.526907, 28.959196>,  <17.920803, 20.105038, 29.069113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.389526, 19.526907, 28.959196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.026854, 19.432468, 28.819378>,  <17.809250, 19.375805, 28.735487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.026854, 19.432468, 28.819378>,  <18.389526, 19.526907, 28.959196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026854, 19.432468, 28.819378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411526, -0.676985, -0.610195,
		-0.092573, -0.697101, 0.710971,
		-0.906684, -0.236096, -0.349546,
		17.754848, 19.361639, 28.714514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.418055, 18.763018, 29.014725>,  <18.389526, 19.526907, 28.959196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.418055, 18.763018, 29.014725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.132254, 18.853949, 28.750055>,  <17.960773, 18.908506, 28.591253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.132254, 18.853949, 28.750055>,  <18.418055, 18.763018, 29.014725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.132254, 18.853949, 28.750055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284476, -0.769636, -0.571607,
		-0.639187, -0.596644, 0.485238,
		-0.714502, 0.227325, -0.661672,
		17.917904, 18.922146, 28.551554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.009953, 18.088396, 28.811237>,  <18.418055, 18.763018, 29.014725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.009953, 18.088396, 28.811237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.940411, 18.350393, 28.517092>,  <17.898685, 18.507591, 28.340605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.940411, 18.350393, 28.517092>,  <18.009953, 18.088396, 28.811237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.940411, 18.350393, 28.517092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179143, -0.713238, -0.677642,
		-0.968340, -0.249548, 0.006664,
		-0.173857, 0.654994, -0.735362,
		17.888254, 18.546892, 28.296484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.589743, 17.722134, 28.402941>,  <18.009953, 18.088396, 28.811237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.589743, 17.722134, 28.402941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.731474, 18.007961, 28.161663>,  <17.816513, 18.179459, 28.016897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.731474, 18.007961, 28.161663>,  <17.589743, 17.722134, 28.402941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.731474, 18.007961, 28.161663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079620, -0.665754, -0.741912,
		-0.931726, 0.214853, -0.292788,
		0.354326, 0.714570, -0.603194,
		17.837772, 18.222332, 27.980705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.235970, 17.543854, 27.785036>,  <17.589743, 17.722134, 28.402941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.235970, 17.543854, 27.785036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.552296, 17.775023, 27.704420>,  <17.742092, 17.913723, 27.656052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.552296, 17.775023, 27.704420>,  <17.235970, 17.543854, 27.785036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.552296, 17.775023, 27.704420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209006, -0.564478, -0.798549,
		-0.575261, 0.589384, -0.567187,
		0.790817, 0.577920, -0.201538,
		17.789541, 17.948399, 27.643959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.224396, 17.824165, 26.991814>,  <17.235970, 17.543854, 27.785036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.224396, 17.824165, 26.991814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.600155, 17.814617, 27.128613>,  <17.825611, 17.808887, 27.210691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.600155, 17.814617, 27.128613>,  <17.224396, 17.824165, 26.991814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.600155, 17.814617, 27.128613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315042, -0.333312, -0.888623,
		0.135204, 0.942514, -0.305592,
		0.939398, -0.023871, 0.341997,
		17.881973, 17.807455, 27.231213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.593571, 18.159698, 26.496729>,  <17.224396, 17.824165, 26.991814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.593571, 18.159698, 26.496729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.837023, 17.914806, 26.698618>,  <17.983093, 17.767872, 26.819752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.837023, 17.914806, 26.698618>,  <17.593571, 18.159698, 26.496729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.837023, 17.914806, 26.698618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303485, -0.408114, -0.861011,
		0.733121, 0.677212, -0.062588,
		0.608630, -0.612230, 0.504721,
		18.019611, 17.731136, 26.850035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.211466, 18.242243, 26.184311>,  <17.593571, 18.159698, 26.496729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.211466, 18.242243, 26.184311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.205469, 17.881063, 26.356104>,  <18.201872, 17.664356, 26.459181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.205469, 17.881063, 26.356104>,  <18.211466, 18.242243, 26.184311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.205469, 17.881063, 26.356104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188998, -0.424349, -0.885555,
		0.981863, 0.067895, 0.177018,
		-0.014992, -0.902950, 0.429484,
		18.200972, 17.610178, 26.484949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953207, 17.854267, 26.068670>,  <18.211466, 18.242243, 26.184311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.953207, 17.854267, 26.068670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.678448, 17.572056, 26.138418>,  <18.513592, 17.402729, 26.180267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.678448, 17.572056, 26.138418>,  <18.953207, 17.854267, 26.068670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.678448, 17.572056, 26.138418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392923, -0.562364, -0.727570,
		0.611379, -0.431252, 0.663504,
		-0.686897, -0.705527, 0.174369,
		18.472378, 17.360397, 26.190729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.317368, 17.220024, 26.035839>,  <18.953207, 17.854267, 26.068670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.317368, 17.220024, 26.035839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.930099, 17.154991, 25.959719>,  <18.697739, 17.115971, 25.914045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.930099, 17.154991, 25.959719>,  <19.317368, 17.220024, 26.035839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.930099, 17.154991, 25.959719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244878, -0.457922, -0.854601,
		0.051801, -0.873999, 0.483159,
		-0.968169, -0.162585, -0.190302,
		18.639648, 17.106216, 25.902628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.273270, 16.490564, 25.803810>,  <19.317368, 17.220024, 26.035839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.273270, 16.490564, 25.803810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.918829, 16.636915, 25.689997>,  <18.706165, 16.724726, 25.621708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.918829, 16.636915, 25.689997>,  <19.273270, 16.490564, 25.803810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.918829, 16.636915, 25.689997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070623, -0.500144, -0.863058,
		-0.458083, -0.784850, 0.417338,
		-0.886100, 0.365878, -0.284535,
		18.653000, 16.746679, 25.604635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.962309, 15.920577, 25.437281>,  <19.273270, 16.490564, 25.803810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.962309, 15.920577, 25.437281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.732857, 16.231085, 25.332701>,  <18.595186, 16.417389, 25.269953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.732857, 16.231085, 25.332701>,  <18.962309, 15.920577, 25.437281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.732857, 16.231085, 25.332701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141594, -0.408354, -0.901775,
		-0.806785, -0.480263, 0.344158,
		-0.573627, 0.776269, -0.261452,
		18.560768, 16.463966, 25.254265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.316767, 15.661153, 25.164619>,  <18.962309, 15.920577, 25.437281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.316767, 15.661153, 25.164619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.394184, 16.024994, 25.017561>,  <18.440634, 16.243299, 24.929327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.394184, 16.024994, 25.017561>,  <18.316767, 15.661153, 25.164619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.394184, 16.024994, 25.017561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062230, -0.362594, -0.929867,
		-0.979116, 0.202847, -0.013573,
		0.193542, 0.909604, -0.367645,
		18.452248, 16.297874, 24.907267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.825510, 15.785022, 24.575460>,  <18.316767, 15.661153, 25.164619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.825510, 15.785022, 24.575460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.103022, 16.062893, 24.499472>,  <18.269529, 16.229616, 24.453878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.103022, 16.062893, 24.499472>,  <17.825510, 15.785022, 24.575460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.103022, 16.062893, 24.499472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038180, -0.227936, -0.972927,
		-0.719173, 0.682252, -0.131615,
		0.693781, 0.694678, -0.189974,
		18.311155, 16.271296, 24.442480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588600, 16.195007, 23.990759>,  <17.825510, 15.785022, 24.575460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.588600, 16.195007, 23.990759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.981253, 16.270685, 24.000601>,  <18.216845, 16.316092, 24.006506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.981253, 16.270685, 24.000601>,  <17.588600, 16.195007, 23.990759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981253, 16.270685, 24.000601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063649, -0.203178, -0.977071,
		-0.179858, 0.960690, -0.211488,
		0.981631, 0.189195, 0.024604,
		18.275742, 16.327444, 24.007982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.716042, 16.539743, 23.334841>,  <17.588600, 16.195007, 23.990759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.716042, 16.539743, 23.334841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.066885, 16.386824, 23.451138>,  <18.277391, 16.295073, 23.520916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.066885, 16.386824, 23.451138>,  <17.716042, 16.539743, 23.334841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.066885, 16.386824, 23.451138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254426, -0.143597, -0.956372,
		0.407370, 0.912812, -0.028683,
		0.877107, -0.382300, 0.290740,
		18.330017, 16.272133, 23.538359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.111689, 16.811016, 22.920780>,  <17.716042, 16.539743, 23.334841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.111689, 16.811016, 22.920780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.323277, 16.502005, 23.061285>,  <18.450230, 16.316597, 23.145588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.323277, 16.502005, 23.061285>,  <18.111689, 16.811016, 22.920780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.323277, 16.502005, 23.061285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198025, -0.290126, -0.936276,
		0.825212, 0.564823, -0.000489,
		0.528972, -0.772530, 0.351264,
		18.481968, 16.270247, 23.166664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.779251, 16.948288, 22.537584>,  <18.111689, 16.811016, 22.920780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.779251, 16.948288, 22.537584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.775225, 16.576485, 22.685051>,  <18.772808, 16.353403, 22.773531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.775225, 16.576485, 22.685051>,  <18.779251, 16.948288, 22.537584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.775225, 16.576485, 22.685051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338408, -0.350097, -0.873449,
		0.940946, 0.115966, 0.318077,
		-0.010068, -0.929507, 0.368666,
		18.772203, 16.297632, 22.795650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.335651, 16.562439, 22.267628>,  <18.779251, 16.948288, 22.537584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.335651, 16.562439, 22.267628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.084854, 16.274549, 22.386875>,  <18.934376, 16.101816, 22.458424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.084854, 16.274549, 22.386875>,  <19.335651, 16.562439, 22.267628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.084854, 16.274549, 22.386875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065038, -0.332984, -0.940687,
		0.776305, -0.609193, 0.161969,
		-0.626993, -0.719726, 0.298118,
		18.896757, 16.058632, 22.476311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.701792, 15.928956, 22.033646>,  <19.335651, 16.562439, 22.267628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.701792, 15.928956, 22.033646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.317371, 15.832298, 22.087294>,  <19.086720, 15.774303, 22.119482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.317371, 15.832298, 22.087294>,  <19.701792, 15.928956, 22.033646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.317371, 15.832298, 22.087294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019712, -0.543991, -0.838859,
		0.275666, -0.803543, 0.527567,
		-0.961052, -0.241645, 0.134120,
		19.029057, 15.759805, 22.127529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.666786, 15.258450, 22.085239>,  <19.701792, 15.928956, 22.033646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.666786, 15.258450, 22.085239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.297470, 15.364085, 21.973673>,  <19.075880, 15.427466, 21.906733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.297470, 15.364085, 21.973673>,  <19.666786, 15.258450, 22.085239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.297470, 15.364085, 21.973673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082305, -0.573260, -0.815230,
		-0.375185, -0.775649, 0.507549,
		-0.923289, 0.264088, -0.278918,
		19.020483, 15.443312, 21.889997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.628408, 14.779242, 21.538145>,  <19.666786, 15.258450, 22.085239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.628408, 14.779242, 21.538145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.315748, 15.024611, 21.493006>,  <19.128153, 15.171832, 21.465923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.315748, 15.024611, 21.493006>,  <19.628408, 14.779242, 21.538145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.315748, 15.024611, 21.493006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046594, -0.122993, -0.991313,
		-0.621974, -0.780119, 0.067555,
		-0.781651, 0.613423, -0.112847,
		19.081253, 15.208637, 21.459152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.190945, 14.474373, 20.939880>,  <19.628408, 14.779242, 21.538145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.190945, 14.474373, 20.939880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.100727, 14.861289, 20.986319>,  <19.046597, 15.093439, 21.014181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.100727, 14.861289, 20.986319>,  <19.190945, 14.474373, 20.939880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.100727, 14.861289, 20.986319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005139, 0.120344, -0.992719,
		-0.974220, -0.223304, -0.032114,
		-0.225543, 0.967292, 0.116094,
		19.033064, 15.151477, 21.021147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.707603, 14.577892, 20.325651>,  <19.190945, 14.474373, 20.939880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.707603, 14.577892, 20.325651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.848928, 14.922015, 20.472643>,  <18.933723, 15.128489, 20.560839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.848928, 14.922015, 20.472643>,  <18.707603, 14.577892, 20.325651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.848928, 14.922015, 20.472643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191048, 0.318184, -0.928579,
		-0.915790, 0.398286, -0.051941,
		0.353313, 0.860307, 0.367481,
		18.954922, 15.180107, 20.582888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.330824, 15.080708, 20.018360>,  <18.707603, 14.577892, 20.325651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.330824, 15.080708, 20.018360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.622906, 15.315554, 20.158129>,  <18.798155, 15.456462, 20.241989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.622906, 15.315554, 20.158129>,  <18.330824, 15.080708, 20.018360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.622906, 15.315554, 20.158129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085031, 0.429357, -0.899123,
		-0.677916, 0.686256, 0.263595,
		0.730205, 0.587116, 0.349421,
		18.841967, 15.491689, 20.262955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.232676, 15.769397, 19.801346>,  <18.330824, 15.080708, 20.018360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.232676, 15.769397, 19.801346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623825, 15.780644, 19.884260>,  <18.858515, 15.787394, 19.934010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.623825, 15.780644, 19.884260>,  <18.232676, 15.769397, 19.801346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.623825, 15.780644, 19.884260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192453, 0.267391, -0.944174,
		-0.081977, 0.963178, 0.256063,
		0.977876, 0.028120, 0.207287,
		18.917189, 15.789081, 19.946445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.440807, 16.385096, 19.574812>,  <18.232676, 15.769397, 19.801346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.440807, 16.385096, 19.574812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.781757, 16.179853, 19.615171>,  <18.986326, 16.056707, 19.639387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.781757, 16.179853, 19.615171>,  <18.440807, 16.385096, 19.574812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.781757, 16.179853, 19.615171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213724, 0.165720, -0.962735,
		0.477265, 0.842174, 0.250918,
		0.852373, -0.513107, 0.100900,
		19.037470, 16.025921, 19.645441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.967484, 16.776489, 19.283892>,  <18.440807, 16.385096, 19.574812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.967484, 16.776489, 19.283892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.102119, 16.400373, 19.263634>,  <19.182901, 16.174704, 19.251480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.102119, 16.400373, 19.263634>,  <18.967484, 16.776489, 19.283892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.102119, 16.400373, 19.263634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217310, 0.129894, -0.967421,
		0.916233, 0.314620, 0.248055,
		0.336591, -0.940288, -0.050643,
		19.203096, 16.118286, 19.248442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.566462, 16.834650, 18.812740>,  <18.967484, 16.776489, 19.283892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.566462, 16.834650, 18.812740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.459291, 16.449436, 18.823912>,  <19.394989, 16.218307, 18.830614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.459291, 16.449436, 18.823912>,  <19.566462, 16.834650, 18.812740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.459291, 16.449436, 18.823912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243290, -0.095680, -0.965223,
		0.932215, -0.251813, 0.259932,
		-0.267926, -0.963035, 0.027930,
		19.378914, 16.160526, 18.832291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.080469, 16.550249, 18.436760>,  <19.566462, 16.834650, 18.812740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.080469, 16.550249, 18.436760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.798159, 16.266876, 18.436865>,  <19.628773, 16.096853, 18.436928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.798159, 16.266876, 18.436865>,  <20.080469, 16.550249, 18.436760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.798159, 16.266876, 18.436865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231355, -0.230840, -0.945086,
		0.669591, -0.666960, 0.326821,
		-0.705778, -0.708433, 0.000264,
		19.586426, 16.054346, 18.436943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.407270, 16.093267, 18.082682>,  <20.080469, 16.550249, 18.436760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.407270, 16.093267, 18.082682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.022001, 15.989197, 18.055536>,  <19.790840, 15.926755, 18.039249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.022001, 15.989197, 18.055536>,  <20.407270, 16.093267, 18.082682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.022001, 15.989197, 18.055536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179112, -0.432590, -0.883620,
		0.200539, -0.863235, 0.463260,
		-0.963174, -0.260175, -0.067864,
		19.733049, 15.911144, 18.035177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.406334, 15.372321, 17.847752>,  <20.407270, 16.093267, 18.082682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.406334, 15.372321, 17.847752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.047033, 15.532454, 17.775221>,  <19.831453, 15.628534, 17.731703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.047033, 15.532454, 17.775221>,  <20.406334, 15.372321, 17.847752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.047033, 15.532454, 17.775221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028182, -0.359274, -0.932807,
		-0.438583, -0.843003, 0.311435,
		-0.898249, 0.400336, -0.181329,
		19.777559, 15.652555, 17.720821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.253956, 15.082570, 17.247955>,  <20.406334, 15.372321, 17.847752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.253956, 15.082570, 17.247955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.961426, 15.355174, 17.237318>,  <19.785908, 15.518736, 17.230936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.961426, 15.355174, 17.237318>,  <20.253956, 15.082570, 17.247955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.961426, 15.355174, 17.237318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033933, -0.075302, -0.996583,
		-0.681184, -0.727925, 0.078196,
		-0.731326, 0.681510, -0.026594,
		19.742027, 15.559627, 17.229340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.688417, 14.765234, 16.882017>,  <20.253956, 15.082570, 17.247955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.688417, 14.765234, 16.882017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.645010, 15.162326, 16.861181>,  <19.618965, 15.400580, 16.848679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.645010, 15.162326, 16.861181>,  <19.688417, 14.765234, 16.882017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.645010, 15.162326, 16.861181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095006, -0.041804, -0.994598,
		-0.989544, -0.112881, -0.089779,
		-0.108518, 0.992729, -0.052091,
		19.612455, 15.460144, 16.845554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.090479, 14.889142, 16.453552>,  <19.688417, 14.765234, 16.882017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.090479, 14.889142, 16.453552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.387402, 15.157117, 16.448446>,  <19.565556, 15.317902, 16.445383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.387402, 15.157117, 16.448446>,  <19.090479, 14.889142, 16.453552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.387402, 15.157117, 16.448446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248745, -0.293205, -0.923123,
		-0.622178, 0.682066, -0.384292,
		0.742307, 0.669938, -0.012765,
		19.610094, 15.358098, 16.444616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.096952, 15.130256, 15.696569>,  <19.090479, 14.889142, 16.453552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.096952, 15.130256, 15.696569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.437147, 15.241846, 15.874938>,  <19.641264, 15.308801, 15.981959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.437147, 15.241846, 15.874938>,  <19.096952, 15.130256, 15.696569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.437147, 15.241846, 15.874938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469094, -0.018754, -0.882949,
		-0.237959, 0.960115, -0.146816,
		0.850486, 0.278976, 0.445921,
		19.692293, 15.325539, 16.008715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.370018, 15.858214, 15.606349>,  <19.096952, 15.130256, 15.696569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.370018, 15.858214, 15.606349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.637152, 15.564430, 15.654620>,  <19.797432, 15.388160, 15.683583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.637152, 15.564430, 15.654620>,  <19.370018, 15.858214, 15.606349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.637152, 15.564430, 15.654620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205783, 0.026383, -0.978242,
		0.715296, 0.678139, 0.168758,
		0.667836, -0.734460, 0.120678,
		19.837503, 15.344092, 15.690824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.985752, 16.069275, 15.443499>,  <19.370018, 15.858214, 15.606349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.985752, 16.069275, 15.443499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.941286, 15.680121, 15.362367>,  <19.914606, 15.446630, 15.313687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.941286, 15.680121, 15.362367>,  <19.985752, 16.069275, 15.443499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.941286, 15.680121, 15.362367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127478, 0.216368, -0.967954,
		0.985592, -0.081746, -0.148074,
		-0.111164, -0.972884, -0.202830,
		19.907936, 15.388256, 15.301517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.390697, 16.314756, 14.925751>,  <19.985752, 16.069275, 15.443499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.390697, 16.314756, 14.925751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.734684, 16.296906, 14.722393>,  <19.941076, 16.286196, 14.600379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.734684, 16.296906, 14.722393>,  <19.390697, 16.314756, 14.925751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.734684, 16.296906, 14.722393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276104, 0.797112, -0.537010,
		0.429211, 0.602180, 0.673169,
		0.859968, -0.044626, -0.508393,
		19.992674, 16.283518, 14.569875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.654644, 16.956575, 14.904129>,  <19.390697, 16.314756, 14.925751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.654644, 16.956575, 14.904129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.773754, 16.765623, 14.573448>,  <19.845221, 16.651052, 14.375039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.773754, 16.765623, 14.573448>,  <19.654644, 16.956575, 14.904129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.773754, 16.765623, 14.573448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427368, 0.707700, -0.562599,
		0.853631, 0.520834, 0.006718,
		0.297775, -0.477381, -0.826703,
		19.863087, 16.622408, 14.325438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.212704, 17.251022, 14.509020>,  <19.654644, 16.956575, 14.904129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.212704, 17.251022, 14.509020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.019991, 17.037840, 14.230784>,  <19.904364, 16.909929, 14.063844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.019991, 17.037840, 14.230784>,  <20.212704, 17.251022, 14.509020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.019991, 17.037840, 14.230784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024686, 0.785217, -0.618729,
		0.875944, -0.315263, -0.365146,
		-0.481781, -0.532958, -0.695589,
		19.875456, 16.877953, 14.022108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.590054, 17.254324, 13.920597>,  <20.212704, 17.251022, 14.509020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.590054, 17.254324, 13.920597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.215845, 17.169859, 13.807310>,  <19.991320, 17.119181, 13.739338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.215845, 17.169859, 13.807310>,  <20.590054, 17.254324, 13.920597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.215845, 17.169859, 13.807310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068840, 0.677361, -0.732423,
		0.346500, -0.704693, -0.619149,
		-0.935521, -0.211162, -0.283216,
		19.935188, 17.106510, 13.722345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.522413, 17.007711, 13.170624>,  <20.590054, 17.254324, 13.920597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.522413, 17.007711, 13.170624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.156364, 17.154169, 13.238141>,  <19.936735, 17.242044, 13.278651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.156364, 17.154169, 13.238141>,  <20.522413, 17.007711, 13.170624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.156364, 17.154169, 13.238141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099799, 0.611340, -0.785051,
		-0.390633, -0.701570, -0.595991,
		-0.915121, 0.366146, 0.168794,
		19.881828, 17.264013, 13.288779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.272732, 17.027859, 12.539254>,  <20.522413, 17.007711, 13.170624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.272732, 17.027859, 12.539254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.050856, 17.277536, 12.759327>,  <19.917730, 17.427343, 12.891371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.050856, 17.277536, 12.759327>,  <20.272732, 17.027859, 12.539254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.050856, 17.277536, 12.759327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048218, 0.684236, -0.727665,
		-0.830658, -0.377100, -0.409636,
		-0.554690, 0.624193, 0.550183,
		19.884449, 17.464794, 12.924382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.822380, 17.255405, 12.030242>,  <20.272732, 17.027859, 12.539254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.822380, 17.255405, 12.030242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.763124, 17.508467, 12.334295>,  <19.727571, 17.660303, 12.516727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.763124, 17.508467, 12.334295>,  <19.822380, 17.255405, 12.030242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.763124, 17.508467, 12.334295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233801, 0.724423, -0.648497,
		-0.960933, -0.273787, 0.040601,
		-0.148138, 0.632655, 0.760134,
		19.718683, 17.698263, 12.562335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.165539, 17.588482, 11.980196>,  <19.822380, 17.255405, 12.030242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.165539, 17.588482, 11.980196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.398083, 17.823874, 12.204948>,  <19.537609, 17.965109, 12.339800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.398083, 17.823874, 12.204948>,  <19.165539, 17.588482, 11.980196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.398083, 17.823874, 12.204948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057690, 0.718647, -0.692979,
		-0.811599, 0.370455, 0.451741,
		0.581360, 0.588481, 0.561881,
		19.572491, 18.000418, 12.373513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.819454, 18.242981, 11.895993>,  <19.165539, 17.588482, 11.980196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.819454, 18.242981, 11.895993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.171629, 18.321609, 12.068592>,  <19.382935, 18.368788, 12.172152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.171629, 18.321609, 12.068592>,  <18.819454, 18.242981, 11.895993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.171629, 18.321609, 12.068592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145843, 0.753636, -0.640907,
		-0.451177, 0.627209, 0.634860,
		0.880437, 0.196573, 0.431498,
		19.435760, 18.380581, 12.198041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.777601, 18.886101, 12.117229>,  <18.819454, 18.242981, 11.895993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.777601, 18.886101, 12.117229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.174252, 18.835934, 12.104897>,  <19.412241, 18.805834, 12.097499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.174252, 18.835934, 12.104897>,  <18.777601, 18.886101, 12.117229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.174252, 18.835934, 12.104897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090741, 0.846421, -0.524727,
		0.091905, 0.517534, 0.850712,
		0.991625, -0.125420, -0.030829,
		19.471739, 18.798307, 12.095649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.104229, 19.461977, 12.365347>,  <18.777601, 18.886101, 12.117229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.104229, 19.461977, 12.365347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.426321, 19.300499, 12.191619>,  <19.619577, 19.203613, 12.087382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.426321, 19.300499, 12.191619>,  <19.104229, 19.461977, 12.365347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.426321, 19.300499, 12.191619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276970, 0.903712, -0.326483,
		0.524300, 0.142601, 0.839508,
		0.805231, -0.403694, -0.434320,
		19.667891, 19.179390, 12.061323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.838108, 19.884991, 12.650615>,  <19.104229, 19.461977, 12.365347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.838108, 19.884991, 12.650615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.899820, 19.705986, 12.298267>,  <19.936848, 19.598583, 12.086859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.899820, 19.705986, 12.298267>,  <19.838108, 19.884991, 12.650615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.899820, 19.705986, 12.298267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376680, 0.850849, -0.366288,
		0.913406, -0.275295, 0.299838,
		0.154280, -0.447512, -0.880869,
		19.946104, 19.571732, 12.034007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.541447, 20.053528, 12.521827>,  <19.838108, 19.884991, 12.650615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.541447, 20.053528, 12.521827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.352619, 19.947491, 12.185523>,  <20.239323, 19.883869, 11.983741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.352619, 19.947491, 12.185523>,  <20.541447, 20.053528, 12.521827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.352619, 19.947491, 12.185523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330276, 0.831071, -0.447480,
		0.817353, -0.488926, -0.304773,
		-0.472073, -0.265090, -0.840758,
		20.210999, 19.867964, 11.933295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.121506, 20.157637, 11.976654>,  <20.541447, 20.053528, 12.521827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.121506, 20.157637, 11.976654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.778809, 20.145084, 11.770738>,  <20.573191, 20.137554, 11.647188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.778809, 20.145084, 11.770738>,  <21.121506, 20.157637, 11.976654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.778809, 20.145084, 11.770738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301470, 0.779398, -0.549231,
		0.418461, -0.625743, -0.658282,
		-0.856741, -0.031379, -0.514791,
		20.521786, 20.135670, 11.616301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.227291, 20.366964, 11.275881>,  <21.121506, 20.157637, 11.976654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.227291, 20.366964, 11.275881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.830050, 20.413649, 11.280315>,  <20.591705, 20.441660, 11.282976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.830050, 20.413649, 11.280315>,  <21.227291, 20.366964, 11.275881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.830050, 20.413649, 11.280315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073587, 0.694169, -0.716041,
		-0.091266, -0.710288, -0.697970,
		-0.993104, 0.116712, 0.011087,
		20.532118, 20.448662, 11.283641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.952219, 20.397425, 10.513123>,  <21.227291, 20.366964, 11.275881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.952219, 20.397425, 10.513123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.677008, 20.578930, 10.739649>,  <20.511881, 20.687834, 10.875565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.677008, 20.578930, 10.739649>,  <20.952219, 20.397425, 10.513123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677008, 20.578930, 10.739649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008249, 0.785230, -0.619150,
		-0.725636, -0.421322, -0.544004,
		-0.688030, 0.453765, 0.566315,
		20.470598, 20.715059, 10.909543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.503466, 20.703985, 10.022246>,  <20.952219, 20.397425, 10.513123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.503466, 20.703985, 10.022246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.459850, 20.901964, 10.367068>,  <20.433681, 21.020752, 10.573961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.459850, 20.901964, 10.367068>,  <20.503466, 20.703985, 10.022246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.459850, 20.901964, 10.367068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094756, 0.868451, -0.486635,
		-0.989511, 0.028623, -0.141595,
		-0.109039, 0.494948, 0.862054,
		20.427139, 21.050449, 10.625685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.836044, 21.126692, 9.919780>,  <20.503466, 20.703985, 10.022246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.836044, 21.126692, 9.919780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.093977, 21.281225, 10.183579>,  <20.248737, 21.373945, 10.341859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.093977, 21.281225, 10.183579>,  <19.836044, 21.126692, 9.919780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093977, 21.281225, 10.183579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009659, 0.858664, -0.512447,
		-0.764263, 0.336812, 0.549963,
		0.644832, 0.386332, 0.659499,
		20.287426, 21.397125, 10.381429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.822649, 21.753494, 9.721193>,  <19.836044, 21.126692, 9.919780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.822649, 21.753494, 9.721193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.142206, 21.802935, 9.956647>,  <20.333941, 21.832600, 10.097919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.142206, 21.802935, 9.956647>,  <19.822649, 21.753494, 9.721193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.142206, 21.802935, 9.956647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243989, 0.827923, -0.504988,
		-0.549760, 0.547053, 0.631266,
		0.798895, 0.123601, 0.588634,
		20.381874, 21.840015, 10.133237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.766447, 22.435858, 9.956206>,  <19.822649, 21.753494, 9.721193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.766447, 22.435858, 9.956206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.151047, 22.339895, 10.009814>,  <20.381807, 22.282318, 10.041979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.151047, 22.339895, 10.009814>,  <19.766447, 22.435858, 9.956206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.151047, 22.339895, 10.009814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274783, 0.833763, -0.478888,
		0.003146, 0.497278, 0.867586,
		0.961501, -0.239904, 0.134020,
		20.439497, 22.267923, 10.050020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.112015, 22.970930, 10.242225>,  <19.766447, 22.435858, 9.956206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.112015, 22.970930, 10.242225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.432745, 22.775970, 10.103937>,  <20.625183, 22.658995, 10.020965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.432745, 22.775970, 10.103937>,  <20.112015, 22.970930, 10.242225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.432745, 22.775970, 10.103937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321164, 0.839387, -0.438502,
		0.503917, 0.240569, 0.829575,
		0.801824, -0.487398, -0.345719,
		20.673292, 22.629751, 10.000221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.674610, 23.388298, 10.322015>,  <20.112015, 22.970930, 10.242225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.674610, 23.388298, 10.322015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.794312, 23.135262, 10.036280>,  <20.866133, 22.983440, 9.864839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.794312, 23.135262, 10.036280>,  <20.674610, 23.388298, 10.322015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.794312, 23.135262, 10.036280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306130, 0.772720, -0.556047,
		0.903733, -0.052282, 0.424893,
		0.299252, -0.632590, -0.714337,
		20.884087, 22.945484, 9.821979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.360447, 23.575623, 10.207847>,  <20.674610, 23.388298, 10.322015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.360447, 23.575623, 10.207847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.262981, 23.331579, 9.906280>,  <21.204502, 23.185152, 9.725339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.262981, 23.331579, 9.906280>,  <21.360447, 23.575623, 10.207847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.262981, 23.331579, 9.906280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507640, 0.582131, -0.635158,
		0.826396, -0.537484, 0.167872,
		-0.243663, -0.610110, -0.753919,
		21.189882, 23.148546, 9.680104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.914825, 23.557781, 9.824429>,  <21.360447, 23.575623, 10.207847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.914825, 23.557781, 9.824429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.649149, 23.455019, 9.543616>,  <21.489742, 23.393362, 9.375129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.649149, 23.455019, 9.543616>,  <21.914825, 23.557781, 9.824429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.649149, 23.455019, 9.543616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444744, 0.619033, -0.647303,
		0.600876, -0.742158, -0.296899,
		-0.664192, -0.256905, -0.702032,
		21.449890, 23.377949, 9.333007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.316399, 23.540543, 9.250265>,  <21.914825, 23.557781, 9.824429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.316399, 23.540543, 9.250265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.936155, 23.606487, 9.145066>,  <21.708010, 23.646053, 9.081947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.936155, 23.606487, 9.145066>,  <22.316399, 23.540543, 9.250265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.936155, 23.606487, 9.145066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303358, 0.672862, -0.674708,
		0.065727, -0.721164, -0.689640,
		-0.950607, 0.164861, -0.262996,
		21.650972, 23.655945, 9.066168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.045433, 23.352175, 8.549619>,  <22.316399, 23.540543, 9.250265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.045433, 23.352175, 8.549619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.854927, 23.668406, 8.703587>,  <21.740623, 23.858143, 8.795967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.854927, 23.668406, 8.703587>,  <22.045433, 23.352175, 8.549619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.854927, 23.668406, 8.703587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275138, 0.549760, -0.788709,
		-0.835148, -0.269728, -0.479349,
		-0.476264, 0.790576, 0.384919,
		21.712048, 23.905579, 8.819062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.940147, 22.654871, 8.816537>,  <22.045433, 23.352175, 8.549619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.940147, 22.654871, 8.816537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.575085, 22.802673, 8.886416>,  <21.356047, 22.891356, 8.928344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.575085, 22.802673, 8.886416>,  <21.940147, 22.654871, 8.816537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.575085, 22.802673, 8.886416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186090, -0.004894, 0.982521,
		0.363903, 0.929215, -0.064295,
		-0.912658, 0.369507, 0.174699,
		21.301287, 22.913525, 8.938826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.964914, 22.033543, 8.367329>,  <21.940147, 22.654871, 8.816537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.964914, 22.033543, 8.367329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.356117, 22.086456, 8.302826>,  <22.590839, 22.118204, 8.264124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.356117, 22.086456, 8.302826>,  <21.964914, 22.033543, 8.367329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.356117, 22.086456, 8.302826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208521, -0.637800, 0.741438,
		-0.004768, -0.758757, -0.651357,
		0.978006, 0.132286, -0.161257,
		22.649519, 22.126143, 8.254449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.316790, 21.411745, 8.280486>,  <21.964914, 22.033543, 8.367329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.316790, 21.411745, 8.280486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.568560, 21.676607, 8.443151>,  <22.719622, 21.835524, 8.540751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.568560, 21.676607, 8.443151>,  <22.316790, 21.411745, 8.280486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.568560, 21.676607, 8.443151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018357, -0.510519, 0.859670,
		0.776844, -0.548563, -0.309178,
		0.629425, 0.662154, 0.406664,
		22.757387, 21.875254, 8.565150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.008963, 21.093695, 8.408819>,  <22.316790, 21.411745, 8.280486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.008963, 21.093695, 8.408819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.897768, 21.390083, 8.653337>,  <22.831051, 21.567917, 8.800049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.897768, 21.390083, 8.653337>,  <23.008963, 21.093695, 8.408819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.897768, 21.390083, 8.653337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163150, -0.590713, 0.790215,
		0.946629, 0.319401, 0.043320,
		-0.277986, 0.740973, 0.611297,
		22.814373, 21.612375, 8.836726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.533834, 21.096930, 8.884274>,  <23.008963, 21.093695, 8.408819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.533834, 21.096930, 8.884274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.216623, 21.253664, 9.070853>,  <23.026297, 21.347704, 9.182800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.216623, 21.253664, 9.070853>,  <23.533834, 21.096930, 8.884274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.216623, 21.253664, 9.070853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255343, -0.481376, 0.838497,
		0.553090, 0.784054, 0.281691,
		-0.793027, 0.391837, 0.466447,
		22.978716, 21.371216, 9.210788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.246731, 21.066360, 9.084698>,  <23.533834, 21.096930, 8.884274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.246731, 21.066360, 9.084698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.391853, 21.432585, 9.015277>,  <24.478928, 21.652319, 8.973624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.391853, 21.432585, 9.015277>,  <24.246731, 21.066360, 9.084698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.391853, 21.432585, 9.015277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542198, -0.358873, -0.759757,
		-0.757887, 0.181545, -0.626617,
		0.362806, 0.915561, -0.173552,
		24.500694, 21.707253, 8.963211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.078638, 21.503944, 9.771044>,  <24.246731, 21.066360, 9.084698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.078638, 21.503944, 9.771044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.737488, 21.385193, 9.599246>,  <23.532797, 21.313942, 9.496167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.737488, 21.385193, 9.599246>,  <24.078638, 21.503944, 9.771044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.737488, 21.385193, 9.599246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058408, -0.763192, 0.643526,
		-0.518837, 0.573934, 0.633568,
		-0.852876, -0.296879, -0.429495,
		23.481625, 21.296129, 9.470398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.569555, 21.306011, 10.250754>,  <24.078638, 21.503944, 9.771044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.569555, 21.306011, 10.250754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465252, 21.102943, 9.922297>,  <23.402670, 20.981102, 9.725222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.465252, 21.102943, 9.922297>,  <23.569555, 21.306011, 10.250754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.465252, 21.102943, 9.922297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162220, -0.815435, 0.555653,
		-0.951678, 0.278096, 0.130275,
		-0.260756, -0.507669, -0.821144,
		23.387026, 20.950642, 9.675953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.902315, 21.009089, 10.329873>,  <23.569555, 21.306011, 10.250754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.902315, 21.009089, 10.329873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.084568, 20.760628, 10.074821>,  <23.193920, 20.611551, 9.921789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.084568, 20.760628, 10.074821>,  <22.902315, 21.009089, 10.329873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.084568, 20.760628, 10.074821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244956, -0.776137, 0.581040,
		-0.855803, -0.108547, -0.505786,
		0.455629, -0.621151, -0.637631,
		23.221256, 20.574282, 9.883532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.431255, 20.508497, 10.200796>,  <22.902315, 21.009089, 10.329873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.431255, 20.508497, 10.200796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.793697, 20.353575, 10.132711>,  <23.011162, 20.260622, 10.091861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.793697, 20.353575, 10.132711>,  <22.431255, 20.508497, 10.200796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.793697, 20.353575, 10.132711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250889, -0.815894, 0.520933,
		-0.340634, -0.429315, -0.836455,
		0.906103, -0.387305, -0.170211,
		23.065529, 20.237383, 10.081648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.207161, 19.763412, 10.143275>,  <22.431255, 20.508497, 10.200796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.207161, 19.763412, 10.143275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.601833, 19.787302, 10.203804>,  <22.838636, 19.801636, 10.240121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.601833, 19.787302, 10.203804>,  <22.207161, 19.763412, 10.143275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.601833, 19.787302, 10.203804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062191, -0.721050, 0.690087,
		0.150325, -0.690305, -0.707730,
		0.986679, 0.059723, 0.151322,
		22.897837, 19.805220, 10.249201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.422153, 19.085337, 10.232922>,  <22.207161, 19.763412, 10.143275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.422153, 19.085337, 10.232922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.711655, 19.296494, 10.410691>,  <22.885355, 19.423187, 10.517353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.711655, 19.296494, 10.410691>,  <22.422153, 19.085337, 10.232922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.711655, 19.296494, 10.410691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142248, -0.744335, 0.652480,
		0.675241, -0.409014, -0.613805,
		0.723750, 0.527894, 0.444424,
		22.928780, 19.454863, 10.544019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.947021, 18.652384, 10.276426>,  <22.422153, 19.085337, 10.232922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.947021, 18.652384, 10.276426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.956226, 18.928917, 10.565293>,  <22.961748, 19.094837, 10.738614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.956226, 18.928917, 10.565293>,  <22.947021, 18.652384, 10.276426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.956226, 18.928917, 10.565293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023236, -0.722534, 0.690945,
		0.999465, 0.000882, -0.032690,
		0.023010, 0.691335, 0.722168,
		22.963129, 19.136318, 10.781943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.347149, 18.395227, 10.677746>,  <22.947021, 18.652384, 10.276426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.347149, 18.395227, 10.677746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.172733, 18.661392, 10.920100>,  <23.068085, 18.821091, 11.065513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.172733, 18.661392, 10.920100>,  <23.347149, 18.395227, 10.677746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.172733, 18.661392, 10.920100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024578, -0.681814, 0.731113,
		0.899592, 0.303902, 0.313651,
		-0.436039, 0.665412, 0.605885,
		23.041922, 18.861015, 11.101866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.674255, 18.371347, 11.321884>,  <23.347149, 18.395227, 10.677746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.674255, 18.371347, 11.321884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.319628, 18.530031, 11.417058>,  <23.106852, 18.625242, 11.474162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.319628, 18.530031, 11.417058>,  <23.674255, 18.371347, 11.321884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.319628, 18.530031, 11.417058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129464, -0.706581, 0.695689,
		0.444108, 0.585973, 0.677793,
		-0.886570, 0.396711, 0.237936,
		23.053658, 18.649044, 11.488439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.637482, 18.391371, 12.059464>,  <23.674255, 18.371347, 11.321884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.637482, 18.391371, 12.059464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.253553, 18.416277, 11.950020>,  <23.023195, 18.431221, 11.884354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.253553, 18.416277, 11.950020>,  <23.637482, 18.391371, 12.059464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.253553, 18.416277, 11.950020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225045, -0.753251, 0.618036,
		-0.167614, 0.654780, 0.737000,
		-0.959823, 0.062267, -0.273611,
		22.965607, 18.434958, 11.867936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.242897, 18.406261, 12.752022>,  <23.637482, 18.391371, 12.059464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.242897, 18.406261, 12.752022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.976263, 18.291948, 12.476634>,  <22.816282, 18.223360, 12.311401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.976263, 18.291948, 12.476634>,  <23.242897, 18.406261, 12.752022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.976263, 18.291948, 12.476634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289009, -0.752266, 0.592089,
		-0.687122, 0.593652, 0.418856,
		-0.666586, -0.285785, -0.688469,
		22.776287, 18.206213, 12.270093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.607239, 18.268675, 13.135753>,  <23.242897, 18.406261, 12.752022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.607239, 18.268675, 13.135753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.516571, 18.094938, 12.787047>,  <22.462172, 17.990696, 12.577825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.516571, 18.094938, 12.787047>,  <22.607239, 18.268675, 13.135753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.516571, 18.094938, 12.787047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379766, -0.784803, 0.489758,
		-0.896883, 0.442078, 0.012941,
		-0.226668, -0.434341, -0.871763,
		22.448570, 17.964636, 12.525518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.882774, 18.119141, 13.104851>,  <22.607239, 18.268675, 13.135753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.882774, 18.119141, 13.104851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.032930, 17.851591, 12.848198>,  <22.123024, 17.691061, 12.694206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.032930, 17.851591, 12.848198>,  <21.882774, 18.119141, 13.104851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.032930, 17.851591, 12.848198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339873, -0.743374, 0.576091,
		-0.862305, 0.001815, -0.506387,
		0.375389, -0.668873, -0.641632,
		22.145548, 17.650928, 12.655708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.464453, 17.489508, 13.071487>,  <21.882774, 18.119141, 13.104851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.464453, 17.489508, 13.071487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.813574, 17.373838, 12.914211>,  <22.023046, 17.304438, 12.819845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.813574, 17.373838, 12.914211>,  <21.464453, 17.489508, 13.071487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.813574, 17.373838, 12.914211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063743, -0.866226, 0.495569,
		-0.483897, -0.407470, -0.774476,
		0.872801, -0.289172, -0.393191,
		22.075415, 17.287086, 12.796254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.295094, 16.826336, 13.022977>,  <21.464453, 17.489508, 13.071487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.295094, 16.826336, 13.022977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.693850, 16.846466, 12.998712>,  <21.933104, 16.858545, 12.984153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.693850, 16.846466, 12.998712>,  <21.295094, 16.826336, 13.022977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.693850, 16.846466, 12.998712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072235, -0.891302, 0.447620,
		-0.031542, -0.450610, -0.892164,
		0.996889, 0.050327, -0.060663,
		21.992916, 16.861565, 12.980513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.495184, 16.145859, 12.701804>,  <21.295094, 16.826336, 13.022977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.495184, 16.145859, 12.701804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.796978, 16.306919, 12.909120>,  <21.978054, 16.403555, 13.033509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.796978, 16.306919, 12.909120>,  <21.495184, 16.145859, 12.701804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.796978, 16.306919, 12.909120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145676, -0.872735, 0.465952,
		0.639946, -0.276052, -0.717122,
		0.754485, 0.402652, 0.518289,
		22.023323, 16.427715, 13.064607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.954134, 15.632962, 12.747490>,  <21.495184, 16.145859, 12.701804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.954134, 15.632962, 12.747490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.089766, 15.889389, 13.022898>,  <22.171144, 16.043245, 13.188143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.089766, 15.889389, 13.022898>,  <21.954134, 15.632962, 12.747490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.089766, 15.889389, 13.022898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143596, -0.758571, 0.635571,
		0.929735, -0.116639, -0.349269,
		0.339078, 0.641066, 0.688520,
		22.191488, 16.081709, 13.229454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.531757, 15.260897, 12.969092>,  <21.954134, 15.632962, 12.747490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.531757, 15.260897, 12.969092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.427958, 15.528658, 13.247534>,  <22.365677, 15.689315, 13.414598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.427958, 15.528658, 13.247534>,  <22.531757, 15.260897, 12.969092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.427958, 15.528658, 13.247534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003864, -0.721509, 0.692394,
		0.965735, 0.176987, 0.189819,
		-0.259501, 0.669403, 0.696103,
		22.350107, 15.729479, 13.456365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.984549, 15.137149, 13.530149>,  <22.531757, 15.260897, 12.969092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.984549, 15.137149, 13.530149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.667246, 15.333020, 13.674903>,  <22.476864, 15.450543, 13.761756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.667246, 15.333020, 13.674903>,  <22.984549, 15.137149, 13.530149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.667246, 15.333020, 13.674903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190745, -0.764271, 0.616041,
		0.578242, 0.419649, 0.699665,
		-0.793254, 0.489679, 0.361887,
		22.429270, 15.479924, 13.783469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.086344, 15.136465, 14.206868>,  <22.984549, 15.137149, 13.530149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.086344, 15.136465, 14.206868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.692085, 15.136362, 14.139337>,  <22.455530, 15.136300, 14.098818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.692085, 15.136362, 14.139337>,  <23.086344, 15.136465, 14.206868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.692085, 15.136362, 14.139337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103951, -0.787040, 0.608081,
		-0.133032, 0.616902, 0.775715,
		-0.985645, -0.000258, -0.168829,
		22.396391, 15.136285, 14.088688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.160862, 14.570173, 14.668021>,  <23.086344, 15.136465, 14.206868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.160862, 14.570173, 14.668021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.543007, 14.676546, 14.616538>,  <23.772293, 14.740370, 14.585649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.543007, 14.676546, 14.616538>,  <23.160862, 14.570173, 14.668021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.543007, 14.676546, 14.616538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035489, 0.535788, 0.843607,
		0.293302, -0.801381, 0.521308,
		0.955361, 0.265932, -0.128707,
		23.829615, 14.756326, 14.577926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.326038, 14.755939, 15.257071>,  <23.160862, 14.570173, 14.668021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.326038, 14.755939, 15.257071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.594700, 14.937952, 15.023206>,  <23.755896, 15.047160, 14.882887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.594700, 14.937952, 15.023206>,  <23.326038, 14.755939, 15.257071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.594700, 14.937952, 15.023206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030067, 0.771767, 0.635195,
		0.740252, -0.444212, 0.504681,
		0.671657, 0.455030, -0.584658,
		23.796196, 15.074462, 14.847808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.812675, 15.013032, 15.755075>,  <23.326038, 14.755939, 15.257071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.812675, 15.013032, 15.755075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.847334, 15.221191, 15.415268>,  <23.868130, 15.346087, 15.211384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.847334, 15.221191, 15.415268>,  <23.812675, 15.013032, 15.755075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.847334, 15.221191, 15.415268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274022, 0.807383, 0.522537,
		0.957812, -0.278062, -0.072643,
		0.086647, 0.520398, -0.849517,
		23.873327, 15.377311, 15.160413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.411013, 15.215490, 16.109509>,  <23.812675, 15.013032, 15.755075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.411013, 15.215490, 16.109509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.597971, 14.864570, 16.065905>,  <24.710146, 14.654017, 16.039743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.597971, 14.864570, 16.065905>,  <24.411013, 15.215490, 16.109509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.597971, 14.864570, 16.065905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446483, 0.340680, -0.827400,
		0.763015, 0.338054, 0.550933,
		0.467398, -0.877301, -0.109009,
		24.738190, 14.601379, 16.033201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.152437, 15.371511, 15.791369>,  <24.411013, 15.215490, 16.109509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.152437, 15.371511, 15.791369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.027540, 14.994484, 15.743920>,  <24.952602, 14.768268, 15.715451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.027540, 14.994484, 15.743920>,  <25.152437, 15.371511, 15.791369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.027540, 14.994484, 15.743920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347779, 0.002786, -0.937572,
		0.884055, -0.334006, 0.326935,
		-0.312244, -0.942567, -0.118623,
		24.933867, 14.711714, 15.708333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642731, 15.016595, 15.453948>,  <25.152437, 15.371511, 15.791369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642731, 15.016595, 15.453948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289284, 14.847965, 15.372465>,  <25.077215, 14.746787, 15.323576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289284, 14.847965, 15.372465>,  <25.642731, 15.016595, 15.453948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289284, 14.847965, 15.372465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248811, -0.054232, -0.967032,
		0.396629, -0.905170, 0.152813,
		-0.883617, -0.421575, -0.203706,
		25.024199, 14.721493, 15.311354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272623, 15.012419, 14.992636>,  <25.642731, 15.016595, 15.453948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272623, 15.012419, 14.992636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628864, 14.928531, 14.831222>,  <26.842609, 14.878198, 14.734373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.628864, 14.928531, 14.831222>,  <26.272623, 15.012419, 14.992636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628864, 14.928531, 14.831222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416699, 0.020878, 0.908805,
		-0.182170, -0.977538, 0.105984,
		0.890604, -0.209720, -0.403536,
		26.896046, 14.865615, 14.710161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<14.069781, 20.160484, 24.536276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.714214, 19.981096, 24.498960>,  <13.500875, 19.873463, 24.476572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.714214, 19.981096, 24.498960>,  <14.069781, 20.160484, 24.536276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.714214, 19.981096, 24.498960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263472, -0.333975, -0.905010,
		0.374714, -0.829057, 0.415035,
		-0.888916, -0.448470, -0.093289,
		13.447539, 19.846556, 24.470974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.204985, 19.633535, 24.094257>,  <14.069781, 20.160484, 24.536276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.204985, 19.633535, 24.094257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.805690, 19.655804, 24.086006>,  <13.566113, 19.669165, 24.081057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.805690, 19.655804, 24.086006>,  <14.204985, 19.633535, 24.094257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.805690, 19.655804, 24.086006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010674, -0.173459, -0.984783,
		-0.058401, -0.983267, 0.172559,
		-0.998236, 0.055671, -0.020625,
		13.506219, 19.672506, 24.079819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.992108, 19.003506, 23.701813>,  <14.204985, 19.633535, 24.094257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.992108, 19.003506, 23.701813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.675451, 19.243301, 23.654634>,  <13.485457, 19.387178, 23.626328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.675451, 19.243301, 23.654634>,  <13.992108, 19.003506, 23.701813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.675451, 19.243301, 23.654634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081722, -0.295206, -0.951932,
		-0.605495, -0.743951, 0.282689,
		-0.791642, 0.599492, -0.117948,
		13.437959, 19.423149, 23.619249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.474498, 18.556452, 23.381142>,  <13.992108, 19.003506, 23.701813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.474498, 18.556452, 23.381142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.396817, 18.940138, 23.298977>,  <13.350208, 19.170349, 23.249678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.396817, 18.940138, 23.298977>,  <13.474498, 18.556452, 23.381142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.396817, 18.940138, 23.298977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044884, -0.200489, -0.978667,
		-0.979934, -0.199279, -0.004118,
		-0.194202, 0.959214, -0.205410,
		13.338556, 19.227901, 23.237354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.950894, 18.406862, 22.918430>,  <13.474498, 18.556452, 23.381142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.950894, 18.406862, 22.918430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.116800, 18.768341, 22.875900>,  <13.216344, 18.985228, 22.850382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.116800, 18.768341, 22.875900>,  <12.950894, 18.406862, 22.918430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.116800, 18.768341, 22.875900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151117, -0.183638, -0.971309,
		-0.897292, 0.386798, -0.212730,
		0.414766, 0.903695, -0.106325,
		13.241230, 19.039450, 22.844002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.605073, 18.587297, 22.395464>,  <12.950894, 18.406862, 22.918430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.605073, 18.587297, 22.395464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.891416, 18.865335, 22.368942>,  <13.063221, 19.032158, 22.353029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.891416, 18.865335, 22.368942>,  <12.605073, 18.587297, 22.395464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.891416, 18.865335, 22.368942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020525, -0.115861, -0.993053,
		-0.697947, 0.709522, -0.097207,
		0.715856, 0.695093, -0.066302,
		13.106173, 19.073864, 22.349052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.361042, 19.080629, 21.916700>,  <12.605073, 18.587297, 22.395464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.361042, 19.080629, 21.916700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.759132, 19.101852, 21.949469>,  <12.997987, 19.114586, 21.969130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.759132, 19.101852, 21.949469>,  <12.361042, 19.080629, 21.916700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.759132, 19.101852, 21.949469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091511, -0.215442, -0.972219,
		-0.033936, 0.975074, -0.219269,
		0.995226, 0.053059, 0.081919,
		13.057700, 19.117769, 21.974045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.605992, 19.483099, 21.232502>,  <12.361042, 19.080629, 21.916700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.605992, 19.483099, 21.232502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.916353, 19.281761, 21.384619>,  <13.102570, 19.160959, 21.475889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.916353, 19.281761, 21.384619>,  <12.605992, 19.483099, 21.232502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.916353, 19.281761, 21.384619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275164, -0.272426, -0.921992,
		0.567680, 0.820017, -0.072874,
		0.775902, -0.503344, 0.380290,
		13.149124, 19.130758, 21.498705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.131245, 19.578850, 20.701914>,  <12.605992, 19.483099, 21.232502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.131245, 19.578850, 20.701914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.242307, 19.274986, 20.937143>,  <13.308944, 19.092669, 21.078281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.242307, 19.274986, 20.937143>,  <13.131245, 19.578850, 20.701914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.242307, 19.274986, 20.937143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346987, -0.491516, -0.798756,
		0.895828, 0.425833, 0.127119,
		0.277656, -0.759657, 0.588072,
		13.325603, 19.047089, 21.113565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.830235, 19.550596, 20.583246>,  <13.131245, 19.578850, 20.701914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.830235, 19.550596, 20.583246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.713116, 19.184574, 20.694199>,  <13.642843, 18.964960, 20.760769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.713116, 19.184574, 20.694199>,  <13.830235, 19.550596, 20.583246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.713116, 19.184574, 20.694199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297419, -0.362863, -0.883104,
		0.908741, -0.176075, 0.378402,
		-0.292800, -0.915056, 0.277380,
		13.625276, 18.910057, 20.777412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.343234, 19.051123, 20.413372>,  <13.830235, 19.550596, 20.583246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.343234, 19.051123, 20.413372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.056429, 18.779474, 20.476221>,  <13.884346, 18.616486, 20.513931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.056429, 18.779474, 20.476221>,  <14.343234, 19.051123, 20.413372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.056429, 18.779474, 20.476221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372194, -0.563583, -0.737459,
		0.589375, -0.470288, 0.656861,
		-0.717014, -0.679120, 0.157123,
		13.841325, 18.575739, 20.523357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.608690, 18.318796, 20.416338>,  <14.343234, 19.051123, 20.413372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.608690, 18.318796, 20.416338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.217724, 18.291687, 20.336271>,  <13.983144, 18.275421, 20.288231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.217724, 18.291687, 20.336271>,  <14.608690, 18.318796, 20.416338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.217724, 18.291687, 20.336271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193364, -0.668974, -0.717694,
		-0.085265, -0.740190, 0.666970,
		-0.977415, -0.067773, -0.200166,
		13.924500, 18.271355, 20.276222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.560625, 17.702930, 20.241060>,  <14.608690, 18.318796, 20.416338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.560625, 17.702930, 20.241060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.209526, 17.839523, 20.106628>,  <13.998866, 17.921478, 20.025970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.209526, 17.839523, 20.106628>,  <14.560625, 17.702930, 20.241060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.209526, 17.839523, 20.106628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143437, -0.481990, -0.864356,
		-0.457138, -0.806897, 0.374088,
		-0.877753, 0.341472, -0.336074,
		13.946201, 17.941967, 20.005804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.138220, 17.102627, 19.970991>,  <14.560625, 17.702930, 20.241060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.138220, 17.102627, 19.970991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.033366, 17.449644, 19.801922>,  <13.970454, 17.657854, 19.700480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.033366, 17.449644, 19.801922>,  <14.138220, 17.102627, 19.970991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.033366, 17.449644, 19.801922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080003, -0.416947, -0.905403,
		-0.961709, -0.271152, 0.039890,
		-0.262134, 0.867543, -0.422675,
		13.954726, 17.709908, 19.675119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.528300, 16.913513, 19.530624>,  <14.138220, 17.102627, 19.970991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.528300, 16.913513, 19.530624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.704803, 17.260431, 19.438459>,  <13.810705, 17.468582, 19.383162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.704803, 17.260431, 19.438459>,  <13.528300, 16.913513, 19.530624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.704803, 17.260431, 19.438459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016208, -0.264420, -0.964271,
		-0.897234, 0.421758, -0.130735,
		0.441258, 0.867296, -0.230411,
		13.837181, 17.520620, 19.369337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.221938, 17.144428, 18.964556>,  <13.528300, 16.913513, 19.530624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.221938, 17.144428, 18.964556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.532792, 17.393311, 18.926769>,  <13.719304, 17.542639, 18.904097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.532792, 17.393311, 18.926769>,  <13.221938, 17.144428, 18.964556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.532792, 17.393311, 18.926769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160435, -0.341017, -0.926266,
		-0.608541, 0.704677, -0.364840,
		0.777135, 0.622203, -0.094468,
		13.765933, 17.579971, 18.898428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.101103, 17.517542, 18.322845>,  <13.221938, 17.144428, 18.964556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.101103, 17.517542, 18.322845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.493877, 17.516382, 18.398520>,  <13.729543, 17.515686, 18.443924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.493877, 17.516382, 18.398520>,  <13.101103, 17.517542, 18.322845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.493877, 17.516382, 18.398520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184000, -0.218370, -0.958363,
		0.044090, 0.975862, -0.213892,
		0.981937, -0.002898, 0.189186,
		13.788459, 17.515512, 18.455275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.335463, 17.686443, 17.715940>,  <13.101103, 17.517542, 18.322845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.335463, 17.686443, 17.715940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.657446, 17.539925, 17.902645>,  <13.850636, 17.452013, 18.014668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.657446, 17.539925, 17.902645>,  <13.335463, 17.686443, 17.715940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.657446, 17.539925, 17.902645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453556, -0.127306, -0.882088,
		0.382527, 0.921749, 0.063659,
		0.804960, -0.366296, 0.466763,
		13.898933, 17.430037, 18.042673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.905293, 18.067102, 17.485355>,  <13.335463, 17.686443, 17.715940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.905293, 18.067102, 17.485355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.063127, 17.722509, 17.613199>,  <14.157826, 17.515753, 17.689905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.063127, 17.722509, 17.613199>,  <13.905293, 18.067102, 17.485355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.063127, 17.722509, 17.613199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460934, -0.115322, -0.879909,
		0.794885, 0.494517, 0.351583,
		0.394585, -0.861483, 0.319608,
		14.181502, 17.464064, 17.709082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.643182, 18.115911, 17.218515>,  <13.905293, 18.067102, 17.485355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.643182, 18.115911, 17.218515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.582780, 17.732054, 17.313408>,  <14.546539, 17.501740, 17.370344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.582780, 17.732054, 17.313408>,  <14.643182, 18.115911, 17.218515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.582780, 17.732054, 17.313408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649409, -0.277237, -0.708101,
		0.745295, 0.047135, 0.665066,
		-0.151004, -0.959645, 0.237234,
		14.537478, 17.444160, 17.384579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.325421, 17.800621, 17.365463>,  <14.643182, 18.115911, 17.218515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.325421, 17.800621, 17.365463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.072423, 17.511751, 17.253454>,  <14.920624, 17.338430, 17.186249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.072423, 17.511751, 17.253454>,  <15.325421, 17.800621, 17.365463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.072423, 17.511751, 17.253454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641441, -0.285716, -0.711983,
		0.434168, -0.629946, 0.643946,
		-0.632496, -0.722174, -0.280025,
		14.882674, 17.295099, 17.169447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.750368, 17.226492, 17.321407>,  <15.325421, 17.800621, 17.365463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.750368, 17.226492, 17.321407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.419591, 17.176191, 17.102190>,  <15.221125, 17.146011, 16.970659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.419591, 17.176191, 17.102190>,  <15.750368, 17.226492, 17.321407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.419591, 17.176191, 17.102190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558097, -0.302302, -0.772749,
		-0.068500, -0.944881, 0.320168,
		-0.826943, -0.125752, -0.548043,
		15.171508, 17.138466, 16.937777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.931541, 16.601257, 16.835253>,  <15.750368, 17.226492, 17.321407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.931541, 16.601257, 16.835253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.274267, 16.802446, 16.789846>,  <16.479902, 16.923161, 16.762602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.274267, 16.802446, 16.789846>,  <15.931541, 16.601257, 16.835253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.274267, 16.802446, 16.789846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223186, -0.163309, 0.960998,
		0.464820, -0.848732, -0.252183,
		0.856814, 0.502975, -0.113516,
		16.531311, 16.953339, 16.755793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.451290, 16.167305, 17.169462>,  <15.931541, 16.601257, 16.835253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.451290, 16.167305, 17.169462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.590706, 16.542191, 17.164539>,  <16.674356, 16.767122, 17.161585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.590706, 16.542191, 17.164539>,  <16.451290, 16.167305, 17.169462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.590706, 16.542191, 17.164539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242676, -0.077550, 0.967003,
		0.905333, -0.340026, -0.254468,
		0.348540, 0.937213, -0.012307,
		16.695269, 16.823355, 17.160847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059130, 16.149315, 17.552946>,  <16.451290, 16.167305, 17.169462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059130, 16.149315, 17.552946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.946272, 16.533062, 17.551916>,  <16.878557, 16.763309, 17.551298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.946272, 16.533062, 17.551916>,  <17.059130, 16.149315, 17.552946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946272, 16.533062, 17.551916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282775, 0.085728, 0.955348,
		0.916751, 0.268820, -0.295473,
		-0.282147, 0.959368, -0.002575,
		16.861628, 16.820873, 17.551144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.578320, 16.532061, 18.004103>,  <17.059130, 16.149315, 17.552946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.578320, 16.532061, 18.004103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.255096, 16.766052, 17.976278>,  <17.061163, 16.906448, 17.959583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.255096, 16.766052, 17.976278>,  <17.578320, 16.532061, 18.004103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.255096, 16.766052, 17.976278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104899, 0.259075, 0.960144,
		0.579688, 0.768555, -0.270711,
		-0.808058, 0.584981, -0.069562,
		17.012678, 16.941547, 17.955410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.645477, 16.761938, 18.673155>,  <17.578320, 16.532061, 18.004103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.645477, 16.761938, 18.673155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.296930, 16.904234, 18.538000>,  <17.087803, 16.989613, 18.456907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.296930, 16.904234, 18.538000>,  <17.645477, 16.761938, 18.673155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.296930, 16.904234, 18.538000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231711, 0.308652, 0.922520,
		0.432467, 0.882147, -0.186521,
		-0.871368, 0.355741, -0.337885,
		17.035521, 17.010956, 18.436634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.524221, 17.498001, 18.904507>,  <17.645477, 16.761938, 18.673155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.524221, 17.498001, 18.904507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.166189, 17.342817, 18.816582>,  <16.951370, 17.249706, 18.763826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.166189, 17.342817, 18.816582>,  <17.524221, 17.498001, 18.904507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166189, 17.342817, 18.816582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327326, 0.236913, 0.914729,
		-0.302803, 0.890707, -0.339046,
		-0.895080, -0.387961, -0.219814,
		16.897665, 17.226429, 18.750637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.070465, 18.010242, 19.120710>,  <17.524221, 17.498001, 18.904507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.070465, 18.010242, 19.120710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.861216, 17.669580, 19.107927>,  <16.735666, 17.465183, 19.100258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.861216, 17.669580, 19.107927>,  <17.070465, 18.010242, 19.120710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.861216, 17.669580, 19.107927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450294, 0.244364, 0.858791,
		-0.723585, 0.463647, -0.511329,
		-0.523126, -0.851656, -0.031960,
		16.704277, 17.414083, 19.098339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.283772, 18.047474, 19.035606>,  <17.070465, 18.010242, 19.120710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.283772, 18.047474, 19.035606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.378635, 17.711157, 19.230265>,  <16.435555, 17.509367, 19.347059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.378635, 17.711157, 19.230265>,  <16.283772, 18.047474, 19.035606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.378635, 17.711157, 19.230265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668773, 0.222035, 0.709537,
		-0.704626, -0.493727, -0.509642,
		0.237160, -0.840794, 0.486644,
		16.449783, 17.458920, 19.376257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.827701, 18.042677, 19.541002>,  <16.283772, 18.047474, 19.035606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.827701, 18.042677, 19.541002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.048130, 17.731421, 19.661543>,  <16.180387, 17.544666, 19.733868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.048130, 17.731421, 19.661543>,  <15.827701, 18.042677, 19.541002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.048130, 17.731421, 19.661543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431850, 0.043065, 0.900917,
		-0.714019, -0.626610, -0.312309,
		0.551073, -0.778142, 0.301351,
		16.213451, 17.497978, 19.751947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455709, 17.561531, 19.993870>,  <15.827701, 18.042677, 19.541002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.455709, 17.561531, 19.993870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.840988, 17.484535, 20.068914>,  <16.072155, 17.438337, 20.113941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.840988, 17.484535, 20.068914>,  <15.455709, 17.561531, 19.993870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840988, 17.484535, 20.068914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197060, -0.031006, 0.979901,
		-0.182802, -0.980809, -0.067796,
		0.963198, -0.192488, 0.187611,
		16.129948, 17.426788, 20.125198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415241, 17.367949, 20.661652>,  <15.455709, 17.561531, 19.993870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.415241, 17.367949, 20.661652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.808840, 17.423611, 20.617136>,  <16.044998, 17.457008, 20.590425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.808840, 17.423611, 20.617136>,  <15.415241, 17.367949, 20.661652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.808840, 17.423611, 20.617136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082980, 0.194845, 0.977318,
		0.157687, -0.970912, 0.180179,
		0.983996, 0.139159, -0.111291,
		16.104038, 17.465359, 20.583748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.659454, 17.042582, 21.123474>,  <15.415241, 17.367949, 20.661652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.659454, 17.042582, 21.123474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.933829, 17.321074, 21.038857>,  <16.098455, 17.488169, 20.988087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.933829, 17.321074, 21.038857>,  <15.659454, 17.042582, 21.123474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.933829, 17.321074, 21.038857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044886, 0.249679, 0.967288,
		0.726274, -0.672995, 0.140013,
		0.685938, 0.696232, -0.211543,
		16.139610, 17.529943, 20.975393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229511, 16.737995, 21.592304>,  <15.659454, 17.042582, 21.123474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.229511, 16.737995, 21.592304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.233822, 17.123178, 21.484531>,  <16.236408, 17.354288, 21.419867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.233822, 17.123178, 21.484531>,  <16.229511, 16.737995, 21.592304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.233822, 17.123178, 21.484531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015418, 0.269577, 0.962856,
		0.999823, -0.006221, 0.017752,
		0.010775, 0.962959, -0.269434,
		16.237055, 17.412066, 21.403702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.788328, 17.077744, 21.959040>,  <16.229511, 16.737995, 21.592304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.788328, 17.077744, 21.959040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.529581, 17.361347, 21.846703>,  <16.374332, 17.531509, 21.779301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.529581, 17.361347, 21.846703>,  <16.788328, 17.077744, 21.959040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.529581, 17.361347, 21.846703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121321, 0.459252, 0.879982,
		0.752892, 0.535158, -0.383092,
		-0.646866, 0.709009, -0.280841,
		16.335522, 17.574049, 21.762449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181211, 17.754271, 22.166245>,  <16.788328, 17.077744, 21.959040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181211, 17.754271, 22.166245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.798956, 17.867916, 22.135180>,  <16.569603, 17.936104, 22.116541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.798956, 17.867916, 22.135180>,  <17.181211, 17.754271, 22.166245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798956, 17.867916, 22.135180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059530, 0.444539, 0.893779,
		0.288459, 0.849508, -0.441733,
		-0.955640, 0.284115, -0.077660,
		16.512264, 17.953150, 22.111881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099894, 18.484041, 22.422276>,  <17.181211, 17.754271, 22.166245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.099894, 18.484041, 22.422276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.736561, 18.319714, 22.453676>,  <16.518562, 18.221117, 22.472517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.736561, 18.319714, 22.453676>,  <17.099894, 18.484041, 22.422276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.736561, 18.319714, 22.453676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116187, 0.428147, 0.896209,
		-0.401792, 0.804933, -0.436631,
		-0.908330, -0.410821, 0.078504,
		16.464062, 18.196468, 22.477228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710648, 19.032412, 22.643822>,  <17.099894, 18.484041, 22.422276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.710648, 19.032412, 22.643822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.434019, 18.757563, 22.732899>,  <16.268042, 18.592653, 22.786345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.434019, 18.757563, 22.732899>,  <16.710648, 19.032412, 22.643822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.434019, 18.757563, 22.732899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337233, 0.579798, 0.741693,
		-0.638750, 0.437834, -0.632692,
		-0.691572, -0.687122, 0.222694,
		16.226547, 18.551426, 22.799707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.034895, 19.337267, 22.637737>,  <16.710648, 19.032412, 22.643822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.034895, 19.337267, 22.637737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.033447, 19.015688, 22.875612>,  <16.032579, 18.822741, 23.018337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.033447, 19.015688, 22.875612>,  <16.034895, 19.337267, 22.637737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.033447, 19.015688, 22.875612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508297, 0.513616, 0.691254,
		-0.861174, -0.299778, -0.410503,
		-0.003618, -0.803948, 0.594689,
		16.032362, 18.774504, 23.054018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<15.407084, 19.438845, 23.102144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.576200, 19.130838, 23.293278>,  <15.677670, 18.946035, 23.407957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.576200, 19.130838, 23.293278>,  <15.407084, 19.438845, 23.102144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.576200, 19.130838, 23.293278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386800, 0.323500, 0.863559,
		-0.819532, -0.549931, -0.161069,
		0.422792, -0.770016, 0.477832,
		15.703038, 18.899834, 23.436626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.970605, 19.095030, 23.602962>,  <15.407084, 19.438845, 23.102144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.970605, 19.095030, 23.602962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.334901, 19.007513, 23.743067>,  <15.553478, 18.955002, 23.827129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.334901, 19.007513, 23.743067>,  <14.970605, 19.095030, 23.602962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.334901, 19.007513, 23.743067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257636, 0.361839, 0.895933,
		-0.322762, -0.906202, 0.273173,
		0.910741, -0.218794, 0.350259,
		15.608123, 18.941875, 23.848145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.864531, 18.827738, 24.351252>,  <14.970605, 19.095030, 23.602962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.864531, 18.827738, 24.351252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.253557, 18.916405, 24.323030>,  <15.486973, 18.969604, 24.306099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.253557, 18.916405, 24.323030>,  <14.864531, 18.827738, 24.351252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.253557, 18.916405, 24.323030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016640, 0.236214, 0.971559,
		0.231961, -0.946095, 0.226050,
		0.972583, 0.221602, -0.070535,
		15.545327, 18.982906, 24.301865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.227024, 18.419933, 24.938503>,  <14.864531, 18.827738, 24.351252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.227024, 18.419933, 24.938503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.424358, 18.753445, 24.839359>,  <15.542759, 18.953552, 24.779873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.424358, 18.753445, 24.839359>,  <15.227024, 18.419933, 24.938503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.424358, 18.753445, 24.839359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018220, 0.294789, 0.955388,
		0.869648, -0.466812, 0.160622,
		0.493336, 0.833778, -0.247858,
		15.572359, 19.003578, 24.765001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.601668, 18.588158, 25.587172>,  <15.227024, 18.419933, 24.938503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.601668, 18.588158, 25.587172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.659956, 18.919910, 25.371435>,  <15.694928, 19.118961, 25.241993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.659956, 18.919910, 25.371435>,  <15.601668, 18.588158, 25.587172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.659956, 18.919910, 25.371435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019984, 0.547519, 0.836555,
		0.989124, -0.111124, 0.096359,
		0.145719, 0.829382, -0.539343,
		15.703671, 19.168726, 25.209633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.135143, 18.939182, 25.920355>,  <15.601668, 18.588158, 25.587172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.135143, 18.939182, 25.920355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.986063, 19.220984, 25.678770>,  <15.896615, 19.390064, 25.533819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.986063, 19.220984, 25.678770>,  <16.135143, 18.939182, 25.920355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.986063, 19.220984, 25.678770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139194, 0.685934, 0.714226,
		0.917452, 0.182124, -0.353711,
		-0.372701, 0.704503, -0.603962,
		15.874253, 19.432335, 25.497581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.624559, 19.477690, 26.055338>,  <16.135143, 18.939182, 25.920355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.624559, 19.477690, 26.055338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.268133, 19.591084, 25.913553>,  <16.054277, 19.659119, 25.828482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.268133, 19.591084, 25.913553>,  <16.624559, 19.477690, 26.055338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.268133, 19.591084, 25.913553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164805, 0.525580, 0.834629,
		0.422901, 0.802125, -0.421606,
		-0.891063, 0.283482, -0.354463,
		16.000814, 19.676128, 25.807215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564978, 20.088026, 26.316757>,  <16.624559, 19.477690, 26.055338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564978, 20.088026, 26.316757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.189812, 20.003183, 26.206976>,  <15.964712, 19.952278, 26.141108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.189812, 20.003183, 26.206976>,  <16.564978, 20.088026, 26.316757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.189812, 20.003183, 26.206976> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346857, 0.569626, 0.745128,
		-0.001711, 0.794064, -0.607832,
		-0.937916, -0.212105, -0.274452,
		15.908437, 19.939552, 26.124640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.077223, 20.762569, 26.301624>,  <16.564978, 20.088026, 26.316757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.077223, 20.762569, 26.301624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.821675, 20.457186, 26.339527>,  <15.668347, 20.273956, 26.362268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.821675, 20.457186, 26.339527>,  <16.077223, 20.762569, 26.301624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.821675, 20.457186, 26.339527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382600, 0.422161, 0.821826,
		-0.667433, 0.488784, -0.561804,
		-0.638867, -0.763459, 0.094755,
		15.630015, 20.228148, 26.367954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.474316, 21.100466, 26.338737>,  <16.077223, 20.762569, 26.301624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.474316, 21.100466, 26.338737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.404633, 20.741728, 26.501377>,  <15.362823, 20.526485, 26.598961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.404633, 20.741728, 26.501377>,  <15.474316, 21.100466, 26.338737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.404633, 20.741728, 26.501377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496614, 0.436573, 0.750185,
		-0.850309, -0.071235, -0.521440,
		-0.174207, -0.896844, 0.406598,
		15.352370, 20.472675, 26.623356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.728189, 21.142586, 26.406866>,  <15.474316, 21.100466, 26.338737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.728189, 21.142586, 26.406866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.871621, 20.859194, 26.650003>,  <14.957680, 20.689159, 26.795887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.871621, 20.859194, 26.650003>,  <14.728189, 21.142586, 26.406866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.871621, 20.859194, 26.650003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599034, 0.324760, 0.731908,
		-0.715946, -0.626567, -0.307952,
		0.358579, -0.708481, 0.607846,
		14.979195, 20.646650, 26.832357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.204623, 20.952698, 26.813492>,  <14.728189, 21.142586, 26.406866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.204623, 20.952698, 26.813492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.514098, 20.800848, 27.016388>,  <14.699783, 20.709738, 27.138126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.514098, 20.800848, 27.016388>,  <14.204623, 20.952698, 26.813492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.514098, 20.800848, 27.016388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384017, 0.355799, 0.852020,
		-0.503922, -0.853987, 0.129495,
		0.773688, -0.379623, 0.507241,
		14.746204, 20.686962, 27.168560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.930613, 20.730368, 27.459419>,  <14.204623, 20.952698, 26.813492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.930613, 20.730368, 27.459419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.320951, 20.765888, 27.539261>,  <14.555153, 20.787201, 27.587166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.320951, 20.765888, 27.539261>,  <13.930613, 20.730368, 27.459419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.320951, 20.765888, 27.539261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215352, 0.237259, 0.947276,
		0.036759, -0.967379, 0.250651,
		0.975844, 0.088799, 0.199605,
		14.613704, 20.792528, 27.599142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.027780, 20.544096, 28.193010>,  <13.930613, 20.730368, 27.459419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.027780, 20.544096, 28.193010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.371253, 20.733080, 28.113567>,  <14.577337, 20.846470, 28.065901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.371253, 20.733080, 28.113567>,  <14.027780, 20.544096, 28.193010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.371253, 20.733080, 28.113567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010005, 0.402903, 0.915188,
		0.512410, -0.783869, 0.350693,
		0.858683, 0.472460, -0.198609,
		14.628859, 20.874817, 28.053986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.365870, 20.460009, 28.722227>,  <14.027780, 20.544096, 28.193010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.365870, 20.460009, 28.722227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.519876, 20.784657, 28.546484>,  <14.612281, 20.979445, 28.441038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.519876, 20.784657, 28.546484>,  <14.365870, 20.460009, 28.722227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.519876, 20.784657, 28.546484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075349, 0.502112, 0.861514,
		0.919828, -0.298593, 0.254476,
		0.385017, 0.811619, -0.439359,
		14.635382, 21.028143, 28.414677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.894623, 20.605467, 29.068323>,  <14.365870, 20.460009, 28.722227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.894623, 20.605467, 29.068323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.769561, 20.945333, 28.898472>,  <14.694524, 21.149254, 28.796560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.769561, 20.945333, 28.898472>,  <14.894623, 20.605467, 29.068323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.769561, 20.945333, 28.898472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150711, 0.397004, 0.905358,
		0.937834, 0.347061, 0.003930,
		-0.312654, 0.849669, -0.424630,
		14.675764, 21.200233, 28.771082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.261989, 21.197041, 29.491158>,  <14.894623, 20.605467, 29.068323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.261989, 21.197041, 29.491158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.981572, 21.365498, 29.260963>,  <14.813322, 21.466572, 29.122847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.981572, 21.365498, 29.260963>,  <15.261989, 21.197041, 29.491158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.981572, 21.365498, 29.260963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245398, 0.615241, 0.749172,
		0.669569, 0.666423, -0.327961,
		-0.701040, 0.421141, -0.575485,
		14.771260, 21.491840, 29.088318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.423674, 21.942801, 29.640150>,  <15.261989, 21.197041, 29.491158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.423674, 21.942801, 29.640150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.044294, 21.874220, 29.533531>,  <14.816667, 21.833071, 29.469559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.044294, 21.874220, 29.533531>,  <15.423674, 21.942801, 29.640150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.044294, 21.874220, 29.533531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316764, 0.540040, 0.779755,
		0.010255, 0.823991, -0.566511,
		-0.948449, -0.171453, -0.266548,
		14.759760, 21.822784, 29.453568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.136933, 22.508749, 29.985264>,  <15.423674, 21.942801, 29.640150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.136933, 22.508749, 29.985264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.819621, 22.292751, 29.872755>,  <14.629233, 22.163153, 29.805250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.819621, 22.292751, 29.872755>,  <15.136933, 22.508749, 29.985264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.819621, 22.292751, 29.872755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549781, 0.436793, 0.712006,
		-0.261621, 0.719458, -0.643377,
		-0.793281, -0.539992, -0.281270,
		14.581636, 22.130754, 29.788374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.632022, 22.950289, 29.985153>,  <15.136933, 22.508749, 29.985264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.632022, 22.950289, 29.985153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.470704, 22.587904, 30.036674>,  <14.373914, 22.370474, 30.067587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.470704, 22.587904, 30.036674>,  <14.632022, 22.950289, 29.985153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.470704, 22.587904, 30.036674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524501, 0.344202, 0.778732,
		-0.749835, 0.246499, -0.613991,
		-0.403294, -0.905960, 0.128805,
		14.349716, 22.316116, 30.075315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.965570, 23.130573, 30.133015>,  <14.632022, 22.950289, 29.985153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.965570, 23.130573, 30.133015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.066073, 22.761452, 30.249844>,  <14.126375, 22.539980, 30.319941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.066073, 22.761452, 30.249844>,  <13.965570, 23.130573, 30.133015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.066073, 22.761452, 30.249844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380101, 0.183444, 0.906571,
		-0.890165, -0.338799, -0.304667,
		0.251256, -0.922802, 0.292074,
		14.141450, 22.484612, 30.337465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.355400, 22.810692, 30.528431>,  <13.965570, 23.130573, 30.133015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.355400, 22.810692, 30.528431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.658957, 22.576181, 30.641825>,  <13.841090, 22.435474, 30.709862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.658957, 22.576181, 30.641825>,  <13.355400, 22.810692, 30.528431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.658957, 22.576181, 30.641825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305276, 0.064249, 0.950094,
		-0.575231, -0.807560, -0.130218,
		0.758892, -0.586276, 0.283486,
		13.886624, 22.400299, 30.726871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.032073, 22.261953, 30.805933>,  <13.355400, 22.810692, 30.528431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.032073, 22.261953, 30.805933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.398166, 22.328529, 30.952711>,  <13.617822, 22.368475, 31.040777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.398166, 22.328529, 30.952711>,  <13.032073, 22.261953, 30.805933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.398166, 22.328529, 30.952711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384127, 0.085497, 0.919313,
		0.121644, -0.982337, 0.142187,
		0.915232, 0.166447, 0.366943,
		13.672735, 22.378460, 31.062794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.490109, 22.433996, 31.351538>,  <13.032073, 22.261953, 30.805933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.490109, 22.433996, 31.351538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.145932, 22.471104, 31.551950>,  <11.939426, 22.493368, 31.672197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.145932, 22.471104, 31.551950>,  <12.490109, 22.433996, 31.351538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.145932, 22.471104, 31.551950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406891, -0.716980, -0.566021,
		0.306722, -0.690894, 0.654666,
		-0.860442, 0.092767, 0.501032,
		11.887799, 22.498934, 31.702259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.407399, 21.830315, 31.514608>,  <12.490109, 22.433996, 31.351538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.407399, 21.830315, 31.514608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.060802, 22.027403, 31.482578>,  <11.852843, 22.145657, 31.463360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.060802, 22.027403, 31.482578>,  <12.407399, 21.830315, 31.514608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.060802, 22.027403, 31.482578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388736, -0.766670, -0.510981,
		-0.313165, -0.411633, 0.855854,
		-0.866494, 0.492723, -0.080077,
		11.800854, 22.175220, 31.458555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.904120, 21.375523, 31.732040>,  <12.407399, 21.830315, 31.514608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.904120, 21.375523, 31.732040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.693048, 21.643812, 31.523548>,  <11.566404, 21.804787, 31.398453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.693048, 21.643812, 31.523548>,  <11.904120, 21.375523, 31.732040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.693048, 21.643812, 31.523548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401591, -0.737692, -0.542710,
		-0.748519, -0.077054, 0.658621,
		-0.527678, 0.670726, -0.521233,
		11.534743, 21.845030, 31.367180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.328162, 21.047323, 31.602871>,  <11.904120, 21.375523, 31.732040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.328162, 21.047323, 31.602871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.291659, 21.336327, 31.328747>,  <11.269757, 21.509729, 31.164272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.291659, 21.336327, 31.328747>,  <11.328162, 21.047323, 31.602871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.291659, 21.336327, 31.328747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077029, -0.691244, -0.718505,
		-0.992844, -0.012780, 0.118735,
		-0.091257, 0.722509, -0.685312,
		11.264282, 21.553080, 31.123154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.700689, 20.862616, 31.132191>,  <11.328162, 21.047323, 31.602871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.700689, 20.862616, 31.132191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.944092, 21.113016, 30.937113>,  <11.090133, 21.263256, 30.820066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.944092, 21.113016, 30.937113>,  <10.700689, 20.862616, 31.132191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.944092, 21.113016, 30.937113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010247, -0.608323, -0.793623,
		-0.793484, 0.487922, -0.363753,
		0.608505, 0.625999, -0.487694,
		11.126643, 21.300816, 30.790804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.554242, 20.742680, 30.400696>,  <10.700689, 20.862616, 31.132191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.554242, 20.742680, 30.400696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.907788, 20.927139, 30.369392>,  <11.119916, 21.037815, 30.350611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.907788, 20.927139, 30.369392>,  <10.554242, 20.742680, 30.400696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.907788, 20.927139, 30.369392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191275, -0.509027, -0.839229,
		-0.426843, 0.726797, -0.538118,
		0.883866, 0.461147, -0.078257,
		11.172948, 21.065483, 30.345915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.590052, 20.861929, 29.641323>,  <10.554242, 20.742680, 30.400696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.590052, 20.861929, 29.641323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.961851, 20.898123, 29.784346>,  <11.184931, 20.919840, 29.870159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.961851, 20.898123, 29.784346>,  <10.590052, 20.861929, 29.641323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.961851, 20.898123, 29.784346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357898, -0.455536, -0.815105,
		0.089126, 0.885607, -0.455804,
		0.929498, 0.090484, 0.357557,
		11.240701, 20.925268, 29.891613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.992811, 21.267447, 29.236376>,  <10.590052, 20.861929, 29.641323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.992811, 21.267447, 29.236376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.253047, 21.034357, 29.431173>,  <11.409188, 20.894503, 29.548052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.253047, 21.034357, 29.431173>,  <10.992811, 21.267447, 29.236376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.253047, 21.034357, 29.431173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325088, -0.365845, -0.872052,
		0.686331, 0.725665, -0.048578,
		0.650590, -0.582724, 0.486996,
		11.448224, 20.859539, 29.577272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.549745, 21.203449, 28.729630>,  <10.992811, 21.267447, 29.236376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.549745, 21.203449, 28.729630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.667505, 20.913862, 28.979174>,  <11.738162, 20.740110, 29.128901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.667505, 20.913862, 28.979174>,  <11.549745, 21.203449, 28.729630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.667505, 20.913862, 28.979174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539029, -0.413257, -0.733938,
		0.789161, 0.552352, 0.268575,
		0.294402, -0.723965, 0.623860,
		11.755826, 20.696672, 29.166332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.257289, 21.179621, 28.568302>,  <11.549745, 21.203449, 28.729630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.257289, 21.179621, 28.568302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.165220, 20.838537, 28.755880>,  <12.109979, 20.633888, 28.868427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.165220, 20.838537, 28.755880>,  <12.257289, 21.179621, 28.568302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.165220, 20.838537, 28.755880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561482, -0.509953, -0.651679,
		0.794832, 0.113308, 0.596157,
		-0.230172, -0.852707, 0.468948,
		12.096169, 20.582726, 28.896564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.869537, 20.921959, 28.630245>,  <12.257289, 21.179621, 28.568302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.869537, 20.921959, 28.630245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.594234, 20.633690, 28.663540>,  <12.429051, 20.460728, 28.683516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.594234, 20.633690, 28.663540>,  <12.869537, 20.921959, 28.630245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.594234, 20.633690, 28.663540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478555, -0.537244, -0.694517,
		0.545238, -0.438175, 0.714646,
		-0.688259, -0.720674, 0.083235,
		12.387755, 20.417488, 28.688511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.212353, 20.361425, 28.795500>,  <12.869537, 20.921959, 28.630245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.212353, 20.361425, 28.795500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.868709, 20.249352, 28.624187>,  <12.662522, 20.182108, 28.521400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.868709, 20.249352, 28.624187>,  <13.212353, 20.361425, 28.795500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.868709, 20.249352, 28.624187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511605, -0.492560, -0.704020,
		-0.013699, -0.823943, 0.566508,
		-0.859112, -0.280184, -0.428281,
		12.610975, 20.165297, 28.495703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.287091, 19.597212, 28.534357>,  <13.212353, 20.361425, 28.795500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.287091, 19.597212, 28.534357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.973575, 19.739923, 28.331034>,  <12.785464, 19.825550, 28.209040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.973575, 19.739923, 28.331034>,  <13.287091, 19.597212, 28.534357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.973575, 19.739923, 28.331034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358093, -0.409083, -0.839298,
		-0.507387, -0.839856, 0.192874,
		-0.783791, 0.356782, -0.508310,
		12.738438, 19.846958, 28.178541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.039755, 19.034664, 28.060934>,  <13.287091, 19.597212, 28.534357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.039755, 19.034664, 28.060934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.894531, 19.361496, 27.881792>,  <12.807397, 19.557594, 27.774307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.894531, 19.361496, 27.881792>,  <13.039755, 19.034664, 28.060934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.894531, 19.361496, 27.881792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192742, -0.404397, -0.894043,
		-0.911613, -0.410911, -0.010665,
		-0.363059, 0.817077, -0.447854,
		12.785613, 19.606619, 27.747437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.765113, 18.802036, 27.438251>,  <13.039755, 19.034664, 28.060934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.765113, 18.802036, 27.438251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.808888, 19.192120, 27.361322>,  <12.835154, 19.426170, 27.315165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.808888, 19.192120, 27.361322>,  <12.765113, 18.802036, 27.438251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.808888, 19.192120, 27.361322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193457, -0.210683, -0.958221,
		-0.974986, 0.067661, -0.211719,
		0.109440, 0.975210, -0.192324,
		12.841721, 19.484682, 27.303625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.361552, 18.897842, 26.780373>,  <12.765113, 18.802036, 27.438251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.361552, 18.897842, 26.780373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.612389, 19.208981, 26.796930>,  <12.762891, 19.395664, 26.806864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.612389, 19.208981, 26.796930>,  <12.361552, 18.897842, 26.780373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.612389, 19.208981, 26.796930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133284, -0.054793, -0.989562,
		-0.767458, 0.626063, -0.138035,
		0.627092, 0.777845, 0.041393,
		12.800516, 19.442333, 26.809349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.054753, 19.449596, 26.450552>,  <12.361552, 18.897842, 26.780373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.054753, 19.449596, 26.450552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.444528, 19.538942, 26.440874>,  <12.678392, 19.592550, 26.435066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.444528, 19.538942, 26.440874>,  <12.054753, 19.449596, 26.450552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.444528, 19.538942, 26.440874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035207, 0.045450, -0.998346,
		-0.221895, 0.973675, 0.052152,
		0.974435, 0.223364, -0.024196,
		12.736858, 19.605951, 26.433615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.139362, 20.042048, 26.027855>,  <12.054753, 19.449596, 26.450552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.139362, 20.042048, 26.027855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.506656, 19.883898, 26.037041>,  <12.727032, 19.789007, 26.042551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.506656, 19.883898, 26.037041>,  <12.139362, 20.042048, 26.027855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.506656, 19.883898, 26.037041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094478, 0.162375, -0.982196,
		0.384607, 0.904054, 0.186452,
		0.918233, -0.395375, 0.022962,
		12.782125, 19.765285, 26.043930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.523827, 20.546724, 25.654673>,  <12.139362, 20.042048, 26.027855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.523827, 20.546724, 25.654673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.726534, 20.201942, 25.648672>,  <12.848158, 19.995073, 25.645071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.726534, 20.201942, 25.648672>,  <12.523827, 20.546724, 25.654673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.726534, 20.201942, 25.648672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132765, 0.095228, -0.986562,
		0.851798, 0.497966, 0.162696,
		0.506767, -0.861952, -0.015003,
		12.878564, 19.943357, 25.644171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.070050, 20.667677, 25.286463>,  <12.523827, 20.546724, 25.654673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.070050, 20.667677, 25.286463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.084829, 20.268658, 25.262691>,  <13.093697, 20.029245, 25.248428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.084829, 20.268658, 25.262691>,  <13.070050, 20.667677, 25.286463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.084829, 20.268658, 25.262691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042006, 0.060969, -0.997255,
		0.998434, 0.034351, 0.044156,
		0.036949, -0.997548, -0.059430,
		13.095914, 19.969393, 25.244862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.697379, 20.618422, 24.949377>,  <13.070050, 20.667677, 25.286463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.697379, 20.618422, 24.949377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.489890, 20.278698, 24.910185>,  <13.365396, 20.074863, 24.886669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.489890, 20.278698, 24.910185>,  <13.697379, 20.618422, 24.949377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.489890, 20.278698, 24.910185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310972, -0.080680, -0.946989,
		0.796382, -0.521693, 0.305962,
		-0.518722, -0.849310, -0.097980,
		13.334273, 20.023905, 24.880791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<23.517279, 26.467236, 8.120459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.721113, 26.267248, 8.400559>,  <23.843414, 26.147255, 8.568620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.721113, 26.267248, 8.400559>,  <23.517279, 26.467236, 8.120459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.721113, 26.267248, 8.400559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558917, 0.811108, 0.172381,
		-0.654164, 0.303539, 0.692772,
		0.509588, -0.499968, 0.700251,
		23.873989, 26.117258, 8.610635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.709469, 25.813152, 8.130070>,  <23.517279, 26.467236, 8.120459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.709469, 25.813152, 8.130070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.644278, 25.882551, 7.741568>,  <23.605164, 25.924191, 7.508467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.644278, 25.882551, 7.741568>,  <23.709469, 25.813152, 8.130070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.644278, 25.882551, 7.741568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458225, -0.885117, -0.081222,
		-0.873767, 0.431817, 0.223754,
		-0.162976, 0.173499, -0.971256,
		23.595385, 25.934601, 7.450191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.978622, 25.899076, 7.815324>,  <23.709469, 25.813152, 8.130070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.978622, 25.899076, 7.815324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.206015, 25.715672, 7.542091>,  <23.342449, 25.605629, 7.378152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.206015, 25.715672, 7.542091>,  <22.978622, 25.899076, 7.815324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.206015, 25.715672, 7.542091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640069, -0.768128, -0.017086,
		-0.516860, 0.446932, -0.730142,
		0.568479, -0.458510, -0.683082,
		23.376558, 25.578119, 7.337167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.204973, 25.712770, 8.048585>,  <22.978622, 25.899076, 7.815324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.204973, 25.712770, 8.048585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.312765, 26.009632, 8.294051>,  <22.377441, 26.187750, 8.441331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.312765, 26.009632, 8.294051>,  <22.204973, 25.712770, 8.048585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.312765, 26.009632, 8.294051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393779, -0.666451, 0.633072,
		0.878816, 0.071047, -0.471842,
		0.269482, 0.742156, 0.613665,
		22.393610, 26.232279, 8.478150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.777012, 25.215271, 7.610039>,  <22.204973, 25.712770, 8.048585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.777012, 25.215271, 7.610039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.611290, 25.351612, 7.947600>,  <21.511858, 25.433416, 8.150137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.611290, 25.351612, 7.947600>,  <21.777012, 25.215271, 7.610039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.611290, 25.351612, 7.947600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154593, -0.940106, 0.303811,
		0.896913, -0.004592, 0.442183,
		-0.414304, 0.340850, 0.843904,
		21.487000, 25.453867, 8.200771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.965855, 24.942492, 8.177009>,  <21.777012, 25.215271, 7.610039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.965855, 24.942492, 8.177009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.609535, 25.043451, 8.328150>,  <21.395744, 25.104027, 8.418835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.609535, 25.043451, 8.328150>,  <21.965855, 24.942492, 8.177009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.609535, 25.043451, 8.328150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173523, -0.957477, 0.230493,
		0.419961, 0.139757, 0.896717,
		-0.890799, 0.252399, 0.377852,
		21.342295, 25.119171, 8.441505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.802944, 24.871237, 8.912230>,  <21.965855, 24.942492, 8.177009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.802944, 24.871237, 8.912230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.472767, 24.828773, 8.690466>,  <21.274660, 24.803295, 8.557407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.472767, 24.828773, 8.690466>,  <21.802944, 24.871237, 8.912230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.472767, 24.828773, 8.690466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051406, -0.963939, 0.261110,
		-0.562138, 0.244032, 0.790221,
		-0.825444, -0.106158, -0.554412,
		21.225134, 24.796926, 8.524142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.294657, 24.625456, 9.242004>,  <21.802944, 24.871237, 8.912230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.294657, 24.625456, 9.242004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.223328, 24.493982, 8.871023>,  <21.180531, 24.415098, 8.648435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.223328, 24.493982, 8.871023>,  <21.294657, 24.625456, 9.242004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.223328, 24.493982, 8.871023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231974, -0.901950, 0.364246,
		-0.956236, 0.280099, 0.084594,
		-0.178325, -0.328682, -0.927453,
		21.169830, 24.395378, 8.592788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.606754, 24.422163, 9.023305>,  <21.294657, 24.625456, 9.242004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.606754, 24.422163, 9.023305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.914185, 24.218073, 8.868921>,  <21.098642, 24.095619, 8.776291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.914185, 24.218073, 8.868921>,  <20.606754, 24.422163, 9.023305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.914185, 24.218073, 8.868921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329612, -0.832858, 0.444639,
		-0.548314, -0.214522, -0.808290,
		0.768575, -0.510224, -0.385958,
		21.144756, 24.065006, 8.753134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.373529, 23.850346, 8.787069>,  <20.606754, 24.422163, 9.023305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.373529, 23.850346, 8.787069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.758888, 23.778767, 8.866909>,  <20.990105, 23.735819, 8.914813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.758888, 23.778767, 8.866909>,  <20.373529, 23.850346, 8.787069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.758888, 23.778767, 8.866909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248376, -0.875983, 0.413476,
		0.100854, -0.447918, -0.888368,
		0.963399, -0.178949, 0.199599,
		21.047909, 23.725082, 8.926788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.476004, 23.193808, 8.551582>,  <20.373529, 23.850346, 8.787069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.476004, 23.193808, 8.551582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.777534, 23.270754, 8.802895>,  <20.958454, 23.316921, 8.953682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.777534, 23.270754, 8.802895>,  <20.476004, 23.193808, 8.551582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.777534, 23.270754, 8.802895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175839, -0.862249, 0.474981,
		0.633105, -0.468530, -0.616163,
		0.753829, 0.192367, 0.628280,
		21.003683, 23.328465, 8.991379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.876703, 22.616783, 8.556235>,  <20.476004, 23.193808, 8.551582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.876703, 22.616783, 8.556235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.952486, 22.785440, 8.910934>,  <20.997955, 22.886635, 9.123755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.952486, 22.785440, 8.910934>,  <20.876703, 22.616783, 8.556235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.952486, 22.785440, 8.910934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249367, -0.852832, 0.458796,
		0.949696, -0.308047, -0.056428,
		0.189455, 0.421645, 0.886748,
		21.009323, 22.911934, 9.176959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.290840, 22.085360, 8.954313>,  <20.876703, 22.616783, 8.556235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.290840, 22.085360, 8.954313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.128937, 22.353714, 9.202854>,  <21.031794, 22.514727, 9.351979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.128937, 22.353714, 9.202854>,  <21.290840, 22.085360, 8.954313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.128937, 22.353714, 9.202854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233799, -0.732845, 0.638965,
		0.884029, 0.113356, 0.453480,
		-0.404761, 0.670887, 0.621353,
		21.007509, 22.554979, 9.389260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.685568, 21.958830, 9.484280>,  <21.290840, 22.085360, 8.954313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.685568, 21.958830, 9.484280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.367508, 22.156244, 9.625224>,  <21.176672, 22.274693, 9.709790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.367508, 22.156244, 9.625224>,  <21.685568, 21.958830, 9.484280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.367508, 22.156244, 9.625224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177046, -0.744681, 0.643509,
		0.579990, 0.449303, 0.679513,
		-0.795151, 0.493535, 0.352360,
		21.128962, 22.304304, 9.730932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.681553, 21.934067, 10.237842>,  <21.685568, 21.958830, 9.484280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.681553, 21.934067, 10.237842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.304070, 22.027510, 10.144169>,  <21.077579, 22.083574, 10.087965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.304070, 22.027510, 10.144169>,  <21.681553, 21.934067, 10.237842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.304070, 22.027510, 10.144169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330738, -0.655652, 0.678773,
		0.005023, 0.718017, 0.696007,
		-0.943709, 0.233605, -0.234182,
		21.020956, 22.097591, 10.073915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.379519, 21.997154, 10.876364>,  <21.681553, 21.934067, 10.237842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.379519, 21.997154, 10.876364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.027451, 21.987301, 10.686756>,  <20.816210, 21.981388, 10.572991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.027451, 21.987301, 10.686756>,  <21.379519, 21.997154, 10.876364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.027451, 21.987301, 10.686756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368529, -0.593911, 0.715161,
		-0.299143, 0.804153, 0.513664,
		-0.880171, -0.024635, -0.474018,
		20.763399, 21.979910, 10.544551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.865965, 21.982832, 11.404922>,  <21.379519, 21.997154, 10.876364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.865965, 21.982832, 11.404922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.673031, 21.812216, 11.098871>,  <20.557270, 21.709846, 10.915241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.673031, 21.812216, 11.098871>,  <20.865965, 21.982832, 11.404922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.673031, 21.812216, 11.098871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243942, -0.773490, 0.584983,
		-0.841336, 0.468804, 0.269029,
		-0.482333, -0.426540, -0.765126,
		20.528332, 21.684254, 10.869333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.242254, 21.739496, 11.673870>,  <20.865965, 21.982832, 11.404922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.242254, 21.739496, 11.673870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.268742, 21.523277, 11.338389>,  <20.284634, 21.393545, 11.137101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.268742, 21.523277, 11.338389>,  <20.242254, 21.739496, 11.673870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.268742, 21.523277, 11.338389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251683, -0.822418, 0.510181,
		-0.965542, 0.177303, -0.190508,
		0.066220, -0.540549, -0.838703,
		20.288609, 21.361113, 11.086779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.595146, 21.287506, 11.659014>,  <20.242254, 21.739496, 11.673870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.595146, 21.287506, 11.659014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.863863, 21.106056, 11.424775>,  <20.025093, 20.997187, 11.284232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.863863, 21.106056, 11.424775>,  <19.595146, 21.287506, 11.659014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.863863, 21.106056, 11.424775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220424, -0.877162, 0.426615,
		-0.707186, -0.157516, -0.689258,
		0.671790, -0.453625, -0.585596,
		20.065399, 20.969969, 11.249096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.273434, 20.739176, 11.317533>,  <19.595146, 21.287506, 11.659014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.273434, 20.739176, 11.317533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.663794, 20.652056, 11.312124>,  <19.898010, 20.599785, 11.308879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.663794, 20.652056, 11.312124>,  <19.273434, 20.739176, 11.317533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.663794, 20.652056, 11.312124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199784, -0.916672, 0.346119,
		-0.087780, -0.335076, -0.938093,
		0.975900, -0.217798, -0.013522,
		19.956564, 20.586716, 11.308067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.297670, 20.107891, 11.079808>,  <19.273434, 20.739176, 11.317533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.297670, 20.107891, 11.079808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.658581, 20.107473, 11.252272>,  <19.875128, 20.107224, 11.355750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.658581, 20.107473, 11.252272>,  <19.297670, 20.107891, 11.079808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.658581, 20.107473, 11.252272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168225, -0.921594, 0.349806,
		0.396988, -0.388153, -0.831708,
		0.902276, -0.001045, 0.431159,
		19.929264, 20.107161, 11.381619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.688698, 19.549881, 10.736684>,  <19.297670, 20.107891, 11.079808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.688698, 19.549881, 10.736684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.849518, 19.650154, 11.088937>,  <19.946009, 19.710318, 11.300289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.849518, 19.650154, 11.088937>,  <19.688698, 19.549881, 10.736684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.849518, 19.650154, 11.088937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134677, -0.935138, 0.327686,
		0.905659, -0.250347, -0.342210,
		0.402049, 0.250684, 0.880633,
		19.970133, 19.725359, 11.353127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.249973, 18.960560, 10.959138>,  <19.688698, 19.549881, 10.736684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.249973, 18.960560, 10.959138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.141926, 19.151386, 11.293669>,  <20.077097, 19.265882, 11.494388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.141926, 19.151386, 11.293669>,  <20.249973, 18.960560, 10.959138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.141926, 19.151386, 11.293669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031259, -0.863814, 0.502841,
		0.962319, 0.161969, 0.218420,
		-0.270119, 0.477066, 0.836327,
		20.060890, 19.294506, 11.544567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.663576, 18.606758, 11.504431>,  <20.249973, 18.960560, 10.959138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.663576, 18.606758, 11.504431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.369053, 18.802977, 11.690857>,  <20.192339, 18.920708, 11.802712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.369053, 18.802977, 11.690857>,  <20.663576, 18.606758, 11.504431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.369053, 18.802977, 11.690857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089153, -0.753113, 0.651822,
		0.670748, 0.438391, 0.598257,
		-0.736308, 0.490545, 0.466066,
		20.148161, 18.950140, 11.830677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.787701, 18.668133, 12.109396>,  <20.663576, 18.606758, 11.504431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.787701, 18.668133, 12.109396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.389126, 18.701715, 12.112586>,  <20.149981, 18.721865, 12.114500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.389126, 18.701715, 12.112586>,  <20.787701, 18.668133, 12.109396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.389126, 18.701715, 12.112586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059187, -0.763561, 0.643018,
		0.060074, 0.640255, 0.765810,
		-0.996438, 0.083954, 0.007976,
		20.090195, 18.726902, 12.114979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.627882, 18.489008, 12.731324>,  <20.787701, 18.668133, 12.109396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.627882, 18.489008, 12.731324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.259943, 18.473810, 12.575151>,  <20.039179, 18.464691, 12.481447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.259943, 18.473810, 12.575151>,  <20.627882, 18.489008, 12.731324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.259943, 18.473810, 12.575151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259467, -0.687544, 0.678203,
		-0.294207, 0.725148, 0.622578,
		-0.919847, -0.037994, -0.390432,
		19.983990, 18.462412, 12.458022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.242867, 18.744246, 13.216562>,  <20.627882, 18.489008, 12.731324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.242867, 18.744246, 13.216562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.037868, 18.512297, 12.963235>,  <19.914869, 18.373127, 12.811238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.037868, 18.512297, 12.963235>,  <20.242867, 18.744246, 13.216562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.037868, 18.512297, 12.963235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232423, -0.616333, 0.752405,
		-0.826636, 0.532803, 0.181093,
		-0.512497, -0.579874, -0.633319,
		19.884119, 18.338335, 12.773239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.617739, 18.641411, 13.491200>,  <20.242867, 18.744246, 13.216562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.617739, 18.641411, 13.491200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.647440, 18.337881, 13.232380>,  <19.665260, 18.155764, 13.077087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.647440, 18.337881, 13.232380>,  <19.617739, 18.641411, 13.491200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.647440, 18.337881, 13.232380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252790, -0.641972, 0.723857,
		-0.964668, 0.109820, -0.239490,
		0.074252, -0.758822, -0.647051,
		19.669716, 18.110235, 13.038264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.100885, 18.264069, 13.636451>,  <19.617739, 18.641411, 13.491200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.100885, 18.264069, 13.636451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.327488, 18.010859, 13.425417>,  <19.463449, 17.858932, 13.298797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.327488, 18.010859, 13.425417>,  <19.100885, 18.264069, 13.636451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.327488, 18.010859, 13.425417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227788, -0.735577, 0.637996,
		-0.791951, -0.241249, -0.560903,
		0.566504, -0.633029, -0.527587,
		19.497440, 17.820950, 13.267141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.704540, 17.667292, 13.614469>,  <19.100885, 18.264069, 13.636451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.704540, 17.667292, 13.614469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.062454, 17.535038, 13.494443>,  <19.277203, 17.455685, 13.422427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.062454, 17.535038, 13.494443>,  <18.704540, 17.667292, 13.614469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.062454, 17.535038, 13.494443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023645, -0.706190, 0.707628,
		-0.445869, -0.626080, -0.639706,
		0.894786, -0.330636, -0.300064,
		19.330891, 17.435846, 13.404424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.678947, 16.975546, 13.449153>,  <18.704540, 17.667292, 13.614469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.678947, 16.975546, 13.449153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.066595, 17.006327, 13.542861>,  <19.299185, 17.024796, 13.599086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.066595, 17.006327, 13.542861>,  <18.678947, 16.975546, 13.449153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.066595, 17.006327, 13.542861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093289, -0.765029, 0.637204,
		0.228257, -0.639382, -0.734227,
		0.969121, 0.076952, 0.234270,
		19.357332, 17.029411, 13.613142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.041857, 16.335428, 13.360897>,  <18.678947, 16.975546, 13.449153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.041857, 16.335428, 13.360897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.241920, 16.562046, 13.622849>,  <19.361959, 16.698017, 13.780019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.241920, 16.562046, 13.622849>,  <19.041857, 16.335428, 13.360897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.241920, 16.562046, 13.622849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078241, -0.723608, 0.685762,
		0.862390, -0.394230, -0.317594,
		0.500161, 0.566546, 0.654878,
		19.391970, 16.732010, 13.819312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.618986, 15.923768, 13.552472>,  <19.041857, 16.335428, 13.360897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.618986, 15.923768, 13.552472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.540686, 16.182270, 13.847507>,  <19.493706, 16.337372, 14.024528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.540686, 16.182270, 13.847507>,  <19.618986, 15.923768, 13.552472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.540686, 16.182270, 13.847507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016047, -0.749927, 0.661326,
		0.980522, 0.141292, 0.136430,
		-0.195752, 0.646256, 0.737587,
		19.481960, 16.376146, 14.068783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150404, 15.657434, 14.109583>,  <19.618986, 15.923768, 13.552472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.150404, 15.657434, 14.109583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.827185, 15.830013, 14.270039>,  <19.633253, 15.933561, 14.366312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.827185, 15.830013, 14.270039>,  <20.150404, 15.657434, 14.109583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.827185, 15.830013, 14.270039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000319, -0.680592, 0.732662,
		0.589118, 0.592153, 0.549813,
		-0.808047, 0.431449, 0.401138,
		19.584770, 15.959448, 14.390380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.859949, 15.613312, 13.842299>,  <20.150404, 15.657434, 14.109583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.859949, 15.613312, 13.842299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.067650, 15.589300, 14.183303>,  <21.192270, 15.574893, 14.387905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.067650, 15.589300, 14.183303>,  <20.859949, 15.613312, 13.842299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.067650, 15.589300, 14.183303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497954, -0.831959, 0.244715,
		0.694564, -0.551580, -0.461889,
		0.519253, -0.060029, 0.852510,
		21.223425, 15.571291, 14.439055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.375290, 16.083351, 14.231238>,  <20.859949, 15.613312, 13.842299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.375290, 16.083351, 14.231238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.711170, 15.900763, 14.113571>,  <21.912699, 15.791209, 14.042971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.711170, 15.900763, 14.113571>,  <21.375290, 16.083351, 14.231238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.711170, 15.900763, 14.113571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186570, 0.751219, -0.633136,
		0.509995, 0.476761, 0.715964,
		0.839700, -0.456474, -0.294169,
		21.963079, 15.763821, 14.025320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.000923, 16.536718, 14.448400>,  <21.375290, 16.083351, 14.231238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.000923, 16.536718, 14.448400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.099262, 16.302809, 14.139182>,  <22.158266, 16.162462, 13.953651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.099262, 16.302809, 14.139182>,  <22.000923, 16.536718, 14.448400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.099262, 16.302809, 14.139182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299222, 0.804356, -0.513300,
		0.921968, -0.105118, 0.372727,
		0.245848, -0.584775, -0.773044,
		22.173018, 16.127377, 13.907269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.660885, 16.752516, 14.210239>,  <22.000923, 16.536718, 14.448400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.660885, 16.752516, 14.210239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.502808, 16.553368, 13.901449>,  <22.407961, 16.433878, 13.716175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.502808, 16.553368, 13.901449>,  <22.660885, 16.752516, 14.210239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.502808, 16.553368, 13.901449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179183, 0.782461, -0.596362,
		0.900953, -0.374002, -0.220013,
		-0.395193, -0.497872, -0.771975,
		22.384251, 16.404005, 13.669857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.082401, 16.902273, 13.738695>,  <22.660885, 16.752516, 14.210239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.082401, 16.902273, 13.738695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.774775, 16.760479, 13.525949>,  <22.590199, 16.675404, 13.398302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.774775, 16.760479, 13.525949>,  <23.082401, 16.902273, 13.738695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.774775, 16.760479, 13.525949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089490, 0.764204, -0.638737,
		0.632873, -0.538828, -0.556001,
		-0.769066, -0.354483, -0.531864,
		22.544054, 16.654135, 13.366390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.291830, 16.926737, 12.986872>,  <23.082401, 16.902273, 13.738695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.291830, 16.926737, 12.986872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.894583, 16.881727, 12.973858>,  <22.656235, 16.854721, 12.966049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.894583, 16.881727, 12.973858>,  <23.291830, 16.926737, 12.986872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.894583, 16.881727, 12.973858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046083, 0.630704, -0.774654,
		0.107687, -0.767822, -0.631548,
		-0.993116, -0.112523, -0.032535,
		22.596647, 16.847971, 12.964097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.200516, 16.836414, 12.339538>,  <23.291830, 16.926737, 12.986872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.200516, 16.836414, 12.339538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.850254, 16.972935, 12.476208>,  <22.640097, 17.054848, 12.558210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.850254, 16.972935, 12.476208>,  <23.200516, 16.836414, 12.339538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.850254, 16.972935, 12.476208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018616, 0.683113, -0.730075,
		-0.482580, -0.645654, -0.591817,
		-0.875654, 0.341302, 0.341676,
		22.587559, 17.075325, 12.578711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.757042, 16.978266, 11.734933>,  <23.200516, 16.836414, 12.339538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.757042, 16.978266, 11.734933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.597342, 17.187645, 12.036025>,  <22.501522, 17.313272, 12.216681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.597342, 17.187645, 12.036025>,  <22.757042, 16.978266, 11.734933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.597342, 17.187645, 12.036025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002604, 0.821648, -0.569990,
		-0.916839, -0.225608, -0.329405,
		-0.399249, 0.523447, 0.752731,
		22.477566, 17.344679, 12.261845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.192751, 17.217064, 11.471828>,  <22.757042, 16.978266, 11.734933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.192751, 17.217064, 11.471828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.292397, 17.454422, 11.777984>,  <22.352184, 17.596836, 11.961678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.292397, 17.454422, 11.777984>,  <22.192751, 17.217064, 11.471828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.292397, 17.454422, 11.777984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011051, 0.788513, -0.614918,
		-0.968411, 0.161644, 0.189873,
		0.249115, 0.593395, 0.765391,
		22.367130, 17.632441, 12.007601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.908253, 17.905165, 11.305323>,  <22.192751, 17.217064, 11.471828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.908253, 17.905165, 11.305323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.167982, 17.993328, 11.596473>,  <22.323820, 18.046227, 11.771163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.167982, 17.993328, 11.596473>,  <21.908253, 17.905165, 11.305323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.167982, 17.993328, 11.596473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221216, 0.860962, -0.458048,
		-0.727629, 0.458439, 0.510284,
		0.649322, 0.220406, 0.727875,
		22.362780, 18.059450, 11.814836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.741665, 18.579515, 11.621977>,  <21.908253, 17.905165, 11.305323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.741665, 18.579515, 11.621977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.132231, 18.522108, 11.686492>,  <22.366571, 18.487663, 11.725201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.132231, 18.522108, 11.686492>,  <21.741665, 18.579515, 11.621977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.132231, 18.522108, 11.686492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195787, 0.903466, -0.381334,
		-0.090988, 0.403919, 0.910258,
		0.976416, -0.143520, 0.161287,
		22.425156, 18.479052, 11.734878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.969063, 19.206793, 11.860111>,  <21.741665, 18.579515, 11.621977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.969063, 19.206793, 11.860111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.304064, 19.032717, 11.727929>,  <22.505064, 18.928272, 11.648620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.304064, 19.032717, 11.727929>,  <21.969063, 19.206793, 11.860111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.304064, 19.032717, 11.727929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304011, 0.873602, -0.379997,
		0.454058, 0.217786, 0.863945,
		0.837502, -0.435189, -0.330456,
		22.555315, 18.902161, 11.628792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.489944, 19.751383, 11.979902>,  <21.969063, 19.206793, 11.860111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.489944, 19.751383, 11.979902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.642796, 19.497452, 11.711284>,  <22.734507, 19.345093, 11.550113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.642796, 19.497452, 11.711284>,  <22.489944, 19.751383, 11.979902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.642796, 19.497452, 11.711284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447802, 0.762879, -0.466356,
		0.808364, -0.122513, 0.575794,
		0.382126, -0.634827, -0.671546,
		22.757433, 19.307003, 11.509820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.147793, 20.023558, 11.698336>,  <22.489944, 19.751383, 11.979902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.147793, 20.023558, 11.698336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.061970, 19.749704, 11.419700>,  <23.010475, 19.585392, 11.252518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.061970, 19.749704, 11.419700>,  <23.147793, 20.023558, 11.698336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.061970, 19.749704, 11.419700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175102, 0.674683, -0.717037,
		0.960887, -0.275821, -0.024879,
		-0.214559, -0.684636, -0.696590,
		22.997602, 19.544313, 11.210723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.718424, 20.109297, 11.285544>,  <23.147793, 20.023558, 11.698336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.718424, 20.109297, 11.285544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.460770, 19.908815, 11.054413>,  <23.306177, 19.788527, 10.915734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.460770, 19.908815, 11.054413>,  <23.718424, 20.109297, 11.285544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.460770, 19.908815, 11.054413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262477, 0.564720, -0.782430,
		0.718467, -0.655658, -0.232203,
		-0.644135, -0.501202, -0.577828,
		23.267529, 19.758455, 10.881064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.119009, 19.943884, 10.587232>,  <23.718424, 20.109297, 11.285544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.119009, 19.943884, 10.587232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.740934, 19.912048, 10.460560>,  <23.514090, 19.892948, 10.384557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.740934, 19.912048, 10.460560>,  <24.119009, 19.943884, 10.587232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.740934, 19.912048, 10.460560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231763, 0.519656, -0.822340,
		0.230012, -0.850661, -0.472727,
		-0.945188, -0.079587, -0.316679,
		23.457378, 19.888172, 10.365556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.212999, 19.726526, 9.897630>,  <24.119009, 19.943884, 10.587232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.212999, 19.726526, 9.897630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.854391, 19.892311, 9.960201>,  <23.639225, 19.991781, 9.997745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.854391, 19.892311, 9.960201>,  <24.212999, 19.726526, 9.897630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.854391, 19.892311, 9.960201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138749, 0.598052, -0.789356,
		-0.420710, -0.685971, -0.593673,
		-0.896522, 0.414462, 0.156429,
		23.585434, 20.016649, 10.007130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.808092, 19.705139, 9.221751>,  <24.212999, 19.726526, 9.897630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.808092, 19.705139, 9.221751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.636694, 19.993454, 9.439690>,  <23.533855, 20.166443, 9.570453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.636694, 19.993454, 9.439690>,  <23.808092, 19.705139, 9.221751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.636694, 19.993454, 9.439690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031688, 0.614629, -0.788180,
		-0.902987, -0.320467, -0.286207,
		-0.428497, 0.720786, 0.544847,
		23.508144, 20.209690, 9.603144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.097029, 18.338242, 20.732445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806189, 18.078211, 20.820740>,  <16.631685, 17.922192, 20.873716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806189, 18.078211, 20.820740>,  <17.097029, 18.338242, 20.732445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.806189, 18.078211, 20.820740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125603, -0.442060, -0.888148,
		0.674944, -0.618047, 0.403074,
		-0.727100, -0.650077, 0.220737,
		16.588058, 17.883188, 20.886961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370928, 17.672773, 20.665543>,  <17.097029, 18.338242, 20.732445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370928, 17.672773, 20.665543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978235, 17.610792, 20.621368>,  <16.742620, 17.573603, 20.594864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978235, 17.610792, 20.621368>,  <17.370928, 17.672773, 20.665543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.978235, 17.610792, 20.621368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175850, -0.517123, -0.837652,
		0.072688, -0.841768, 0.534924,
		-0.981729, -0.154954, -0.110436,
		16.683716, 17.564306, 20.588238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.301891, 16.956589, 20.494646>,  <17.370928, 17.672773, 20.665543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.301891, 16.956589, 20.494646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.944593, 17.109926, 20.400696>,  <16.730215, 17.201929, 20.344326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.944593, 17.109926, 20.400696>,  <17.301891, 16.956589, 20.494646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.944593, 17.109926, 20.400696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066707, -0.403643, -0.912481,
		-0.444597, -0.830735, 0.334980,
		-0.893243, 0.383341, -0.234874,
		16.676620, 17.224930, 20.330233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.935535, 16.469110, 20.094412>,  <17.301891, 16.956589, 20.494646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.935535, 16.469110, 20.094412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716782, 16.784096, 19.980700>,  <16.585529, 16.973087, 19.912472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716782, 16.784096, 19.980700>,  <16.935535, 16.469110, 20.094412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.716782, 16.784096, 19.980700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103165, -0.273585, -0.956299,
		-0.830827, -0.552313, 0.068380,
		-0.546885, 0.787465, -0.284281,
		16.552715, 17.020336, 19.895414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.484612, 16.234835, 19.690344>,  <16.935535, 16.469110, 20.094412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.484612, 16.234835, 19.690344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.470074, 16.622179, 19.591589>,  <16.461351, 16.854586, 19.532335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.470074, 16.622179, 19.591589>,  <16.484612, 16.234835, 19.690344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.470074, 16.622179, 19.591589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097743, -0.249313, -0.963478,
		-0.994548, -0.010885, 0.103712,
		-0.036344, 0.968362, -0.246889,
		16.459171, 16.912687, 19.517523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.980206, 16.312393, 19.104685>,  <16.484612, 16.234835, 19.690344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.980206, 16.312393, 19.104685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.194700, 16.649981, 19.099520>,  <16.323397, 16.852533, 19.096420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.194700, 16.649981, 19.099520>,  <15.980206, 16.312393, 19.104685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.194700, 16.649981, 19.099520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077677, -0.064578, -0.994885,
		-0.840486, 0.532491, -0.100186,
		0.536237, 0.843969, -0.012915,
		16.355572, 16.903172, 19.095646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.850367, 16.622393, 18.438099>,  <15.980206, 16.312393, 19.104685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.850367, 16.622393, 18.438099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176311, 16.818193, 18.562286>,  <16.371878, 16.935673, 18.636799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176311, 16.818193, 18.562286>,  <15.850367, 16.622393, 18.438099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.176311, 16.818193, 18.562286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219450, 0.235226, -0.946842,
		-0.536509, 0.839678, 0.084256,
		0.814862, 0.489500, 0.310469,
		16.420771, 16.965044, 18.655426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.807055, 17.265614, 18.212732>,  <15.850367, 16.622393, 18.438099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.807055, 17.265614, 18.212732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.197174, 17.195499, 18.266508>,  <16.431246, 17.153431, 18.298775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.197174, 17.195499, 18.266508>,  <15.807055, 17.265614, 18.212732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.197174, 17.195499, 18.266508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163408, 0.162928, -0.973012,
		0.148650, 0.970943, 0.187546,
		0.975295, -0.175284, 0.134440,
		16.489763, 17.142914, 18.306841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.090536, 17.798742, 17.833044>,  <15.807055, 17.265614, 18.212732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.090536, 17.798742, 17.833044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.397644, 17.547314, 17.882725>,  <16.581909, 17.396456, 17.912533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.397644, 17.547314, 17.882725>,  <16.090536, 17.798742, 17.833044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.397644, 17.547314, 17.882725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224648, 0.082545, -0.970938,
		0.600053, 0.773358, 0.204583,
		0.767769, -0.628573, 0.124202,
		16.627975, 17.358742, 17.919985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.590040, 18.097361, 17.379049>,  <16.090536, 17.798742, 17.833044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.590040, 18.097361, 17.379049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.673410, 17.714058, 17.457336>,  <16.723433, 17.484077, 17.504309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.673410, 17.714058, 17.457336>,  <16.590040, 18.097361, 17.379049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.673410, 17.714058, 17.457336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159712, -0.164077, -0.973432,
		0.964909, 0.234148, 0.118847,
		0.208427, -0.958255, 0.195716,
		16.735939, 17.426580, 17.516050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.204451, 18.039082, 17.030260>,  <16.590040, 18.097361, 17.379049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.204451, 18.039082, 17.030260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037172, 17.677944, 17.070230>,  <16.936806, 17.461262, 17.094212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.037172, 17.677944, 17.070230>,  <17.204451, 18.039082, 17.030260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.037172, 17.677944, 17.070230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078088, -0.145331, -0.986297,
		0.904993, -0.404664, 0.131279,
		-0.418197, -0.902843, 0.099924,
		16.911713, 17.407091, 17.100208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.602966, 17.665430, 16.610683>,  <17.204451, 18.039082, 17.030260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.602966, 17.665430, 16.610683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247469, 17.487110, 16.653387>,  <17.034170, 17.380117, 16.679008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247469, 17.487110, 16.653387>,  <17.602966, 17.665430, 16.610683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247469, 17.487110, 16.653387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048282, -0.322631, -0.945292,
		0.455857, -0.834967, 0.308260,
		-0.888743, -0.445801, 0.106760,
		16.980846, 17.353371, 16.685415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.293316, 17.416666, 16.719198>,  <17.602966, 17.665430, 16.610683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.293316, 17.416666, 16.719198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.358700, 17.028328, 16.649061>,  <18.397930, 16.795326, 16.606979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.358700, 17.028328, 16.649061>,  <18.293316, 17.416666, 16.719198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.358700, 17.028328, 16.649061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941369, 0.206660, -0.266676,
		0.295137, -0.121471, 0.947702,
		0.163458, -0.970843, -0.175342,
		18.407738, 16.737076, 16.596458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.972675, 17.394407, 16.784044>,  <18.293316, 17.416666, 16.719198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.972675, 17.394407, 16.784044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.903002, 17.046213, 16.599907>,  <18.861197, 16.837297, 16.489424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.903002, 17.046213, 16.599907>,  <18.972675, 17.394407, 16.784044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.903002, 17.046213, 16.599907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881704, 0.070292, -0.466538,
		0.438472, -0.487151, 0.755265,
		-0.174185, -0.870484, -0.460344,
		18.850746, 16.785069, 16.461803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.554670, 16.823294, 16.811501>,  <18.972675, 17.394407, 16.784044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.554670, 16.823294, 16.811501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.587137, 16.424692, 16.803619>,  <19.606617, 16.185532, 16.798891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.587137, 16.424692, 16.803619>,  <19.554670, 16.823294, 16.811501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.587137, 16.424692, 16.803619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305858, -0.043719, 0.951073,
		-0.948611, -0.071170, -0.308338,
		0.081168, -0.996506, -0.019704,
		19.611488, 16.125740, 16.797709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.895527, 16.524368, 16.918795>,  <19.554670, 16.823294, 16.811501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.895527, 16.524368, 16.918795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.160971, 16.245117, 17.026306>,  <19.320236, 16.077566, 17.090813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.160971, 16.245117, 17.026306>,  <18.895527, 16.524368, 16.918795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.160971, 16.245117, 17.026306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456967, -0.093835, 0.884520,
		-0.592286, -0.709799, -0.381291,
		0.663610, -0.698126, 0.268778,
		19.360054, 16.035679, 17.106939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.616369, 16.162642, 17.498636>,  <18.895527, 16.524368, 16.918795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.616369, 16.162642, 17.498636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.990709, 16.035141, 17.558741>,  <19.215313, 15.958640, 17.594803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.990709, 16.035141, 17.558741>,  <18.616369, 16.162642, 17.498636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.990709, 16.035141, 17.558741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168023, -0.028816, 0.985362,
		-0.309758, -0.947399, -0.080525,
		0.935852, -0.318754, 0.150259,
		19.271465, 15.939515, 17.603819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.481390, 15.578686, 17.944656>,  <18.616369, 16.162642, 17.498636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.481390, 15.578686, 17.944656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.866961, 15.682788, 17.966986>,  <19.098303, 15.745250, 17.980383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.866961, 15.682788, 17.966986>,  <18.481390, 15.578686, 17.944656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.866961, 15.682788, 17.966986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009373, -0.242786, 0.970035,
		0.266012, -0.934517, -0.236467,
		0.963924, 0.260257, 0.055825,
		19.156137, 15.760865, 17.983732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.731037, 15.031048, 18.330652>,  <18.481390, 15.578686, 17.944656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.731037, 15.031048, 18.330652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.973873, 15.345592, 18.376394>,  <19.119576, 15.534320, 18.403839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.973873, 15.345592, 18.376394>,  <18.731037, 15.031048, 18.330652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.973873, 15.345592, 18.376394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086718, -0.077485, 0.993215,
		0.789888, -0.612886, 0.021152,
		0.607089, 0.786363, 0.114353,
		19.156000, 15.581501, 18.410700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.067642, 14.900629, 18.906414>,  <18.731037, 15.031048, 18.330652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.067642, 14.900629, 18.906414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199125, 15.276719, 18.870792>,  <19.278015, 15.502373, 18.849419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199125, 15.276719, 18.870792>,  <19.067642, 14.900629, 18.906414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.199125, 15.276719, 18.870792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074868, 0.068057, 0.994868,
		0.941460, -0.333686, -0.048022,
		0.328706, 0.940224, -0.089056,
		19.297737, 15.558786, 18.844076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.794174, 14.973670, 19.107233>,  <19.067642, 14.900629, 18.906414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.794174, 14.973670, 19.107233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.604963, 15.322034, 19.160542>,  <19.491438, 15.531053, 19.192528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.604963, 15.322034, 19.160542>,  <19.794174, 14.973670, 19.107233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.604963, 15.322034, 19.160542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192097, -0.045678, 0.980313,
		0.859852, 0.489315, -0.145692,
		-0.473026, 0.870910, 0.133272,
		19.463055, 15.583307, 19.200523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.186113, 15.380927, 19.536644>,  <19.794174, 14.973670, 19.107233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.186113, 15.380927, 19.536644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.824366, 15.544070, 19.586868>,  <19.607317, 15.641956, 19.617002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.824366, 15.544070, 19.586868>,  <20.186113, 15.380927, 19.536644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.824366, 15.544070, 19.586868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121625, -0.035685, 0.991934,
		0.409049, 0.912348, -0.017333,
		-0.904371, 0.407858, 0.125561,
		19.553055, 15.666428, 19.624537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.248283, 15.820152, 20.104982>,  <20.186113, 15.380927, 19.536644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.248283, 15.820152, 20.104982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.855078, 15.756619, 20.068201>,  <19.619154, 15.718500, 20.046133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.855078, 15.756619, 20.068201>,  <20.248283, 15.820152, 20.104982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.855078, 15.756619, 20.068201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096570, 0.021580, 0.995092,
		-0.156067, 0.987070, -0.036552,
		-0.983014, -0.158831, -0.091953,
		19.560173, 15.708970, 20.040615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.891533, 16.145584, 20.766125>,  <20.248283, 15.820152, 20.104982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.891533, 16.145584, 20.766125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.591242, 15.936552, 20.604473>,  <19.411068, 15.811133, 20.507483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.591242, 15.936552, 20.604473>,  <19.891533, 16.145584, 20.766125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.591242, 15.936552, 20.604473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425001, -0.086287, 0.901071,
		-0.505752, 0.848213, -0.157318,
		-0.750726, -0.522579, -0.404131,
		19.366024, 15.779778, 20.483234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.305063, 16.380804, 20.997175>,  <19.891533, 16.145584, 20.766125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.305063, 16.380804, 20.997175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.211006, 16.007210, 20.889563>,  <19.154572, 15.783053, 20.824995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.211006, 16.007210, 20.889563>,  <19.305063, 16.380804, 20.997175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.211006, 16.007210, 20.889563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443774, -0.143094, 0.884640,
		-0.864739, 0.327406, -0.380831,
		-0.235142, -0.933986, -0.269034,
		19.140463, 15.727014, 20.808853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.686180, 16.356743, 21.178549>,  <19.305063, 16.380804, 20.997175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.686180, 16.356743, 21.178549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.783926, 15.970638, 21.141544>,  <18.842573, 15.738976, 21.119341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.783926, 15.970638, 21.141544>,  <18.686180, 16.356743, 21.178549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.783926, 15.970638, 21.141544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463612, -0.200094, 0.863149,
		-0.851675, -0.168034, -0.496402,
		0.244365, -0.965261, -0.092512,
		18.857235, 15.681060, 21.113791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070078, 15.999617, 21.116276>,  <18.686180, 16.356743, 21.178549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.070078, 15.999617, 21.116276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.368235, 15.767350, 21.247253>,  <18.547129, 15.627990, 21.325840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.368235, 15.767350, 21.247253>,  <18.070078, 15.999617, 21.116276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.368235, 15.767350, 21.247253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440632, -0.060567, 0.895642,
		-0.500237, -0.811885, -0.301006,
		0.745390, -0.580667, 0.327445,
		18.591852, 15.593150, 21.345488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.778812, 15.579398, 21.534819>,  <18.070078, 15.999617, 21.116276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.778812, 15.579398, 21.534819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.160116, 15.568325, 21.655174>,  <18.388899, 15.561681, 21.727388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.160116, 15.568325, 21.655174>,  <17.778812, 15.579398, 21.534819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.160116, 15.568325, 21.655174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292480, 0.165486, 0.941844,
		-0.075867, -0.985823, 0.149653,
		0.953257, -0.027685, 0.300888,
		18.446093, 15.560019, 21.745441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.617516, 14.802021, 21.590410>,  <17.778812, 15.579398, 21.534819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.617516, 14.802021, 21.590410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.248093, 14.651980, 21.622257>,  <17.026438, 14.561956, 21.641365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.248093, 14.651980, 21.622257>,  <17.617516, 14.802021, 21.590410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.248093, 14.651980, 21.622257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035303, -0.289923, -0.956399,
		0.381830, -0.880479, 0.281003,
		-0.923558, -0.375102, 0.079618,
		16.971025, 14.539450, 21.646143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.608149, 14.111240, 21.252502>,  <17.617516, 14.802021, 21.590410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.608149, 14.111240, 21.252502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.216412, 14.191194, 21.240276>,  <16.981369, 14.239165, 21.232941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.216412, 14.191194, 21.240276>,  <17.608149, 14.111240, 21.252502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.216412, 14.191194, 21.240276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001830, -0.159922, -0.987128,
		-0.202203, -0.966680, 0.156985,
		-0.979342, 0.199887, -0.030568,
		16.922609, 14.251159, 21.231106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.277983, 13.593963, 20.804235>,  <17.608149, 14.111240, 21.252502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.277983, 13.593963, 20.804235> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021128, 13.900135, 20.821081>,  <16.867014, 14.083838, 20.831188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021128, 13.900135, 20.821081>,  <17.277983, 13.593963, 20.804235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.021128, 13.900135, 20.821081> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034371, 0.026133, -0.999067,
		-0.765817, -0.642988, 0.009528,
		-0.642139, 0.765430, 0.042113,
		16.828485, 14.129765, 20.833715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822351, 13.371491, 20.387058>,  <17.277983, 13.593963, 20.804235>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.822351, 13.371491, 20.387058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.759300, 13.765515, 20.414806>,  <16.721470, 14.001929, 20.431456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.759300, 13.765515, 20.414806>,  <16.822351, 13.371491, 20.387058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.759300, 13.765515, 20.414806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139292, 0.047367, -0.989118,
		-0.977625, -0.165577, 0.129745,
		-0.157629, 0.985059, 0.069371,
		16.712011, 14.061033, 20.435617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.076639, 13.451345, 20.177582>,  <16.822351, 13.371491, 20.387058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.076639, 13.451345, 20.177582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.210989, 13.827111, 20.150187>,  <16.291599, 14.052570, 20.133749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.210989, 13.827111, 20.150187>,  <16.076639, 13.451345, 20.177582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.210989, 13.827111, 20.150187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454109, 0.097798, -0.885562,
		-0.825212, 0.328537, 0.459444,
		0.335873, 0.939414, -0.068488,
		16.311750, 14.108935, 20.129641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.437943, 13.949445, 20.013390>,  <16.076639, 13.451345, 20.177582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.437943, 13.949445, 20.013390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.770910, 14.133201, 19.889427>,  <15.970691, 14.243454, 19.815050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.770910, 14.133201, 19.889427>,  <15.437943, 13.949445, 20.013390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.770910, 14.133201, 19.889427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439516, 0.206724, -0.874123,
		-0.337498, 0.863844, 0.373989,
		0.832419, 0.459389, -0.309905,
		16.020636, 14.271017, 19.796455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.207742, 14.555464, 19.740309>,  <15.437943, 13.949445, 20.013390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.207742, 14.555464, 19.740309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.574524, 14.513064, 19.586449>,  <15.794594, 14.487625, 19.494133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.574524, 14.513064, 19.586449>,  <15.207742, 14.555464, 19.740309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.574524, 14.513064, 19.586449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350045, 0.248917, -0.903055,
		0.191468, 0.962707, 0.191142,
		0.916956, -0.105998, -0.384651,
		15.849610, 14.481265, 19.471054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.394924, 15.157913, 19.398087>,  <15.207742, 14.555464, 19.740309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.394924, 15.157913, 19.398087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.638883, 14.888077, 19.231735>,  <15.785257, 14.726174, 19.131926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.638883, 14.888077, 19.231735>,  <15.394924, 15.157913, 19.398087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.638883, 14.888077, 19.231735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316039, 0.274199, -0.908259,
		0.726737, 0.685376, -0.045964,
		0.609896, -0.674592, -0.415876,
		15.821852, 14.685699, 19.106972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.654967, 15.514224, 18.802387>,  <15.394924, 15.157913, 19.398087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.654967, 15.514224, 18.802387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.719004, 15.128425, 18.718372>,  <15.757425, 14.896945, 18.667963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.719004, 15.128425, 18.718372>,  <15.654967, 15.514224, 18.802387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.719004, 15.128425, 18.718372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200198, 0.176634, -0.963702,
		0.966588, 0.196328, -0.164813,
		0.160090, -0.964498, -0.210037,
		15.767031, 14.839075, 18.655361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.116638, 15.491566, 18.255713>,  <15.654967, 15.514224, 18.802387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.116638, 15.491566, 18.255713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.912505, 15.147587, 18.252865>,  <15.790025, 14.941199, 18.251156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.912505, 15.147587, 18.252865>,  <16.116638, 15.491566, 18.255713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.912505, 15.147587, 18.252865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142413, 0.092673, -0.985459,
		0.848103, -0.501899, -0.169762,
		-0.510333, -0.859948, -0.007119,
		15.759405, 14.889603, 18.250729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.379456, 15.115745, 17.734051>,  <16.116638, 15.491566, 18.255713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.379456, 15.115745, 17.734051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.031557, 14.927907, 17.794746>,  <15.822819, 14.815205, 17.831163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.031557, 14.927907, 17.794746>,  <16.379456, 15.115745, 17.734051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.031557, 14.927907, 17.794746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072384, -0.182765, -0.980489,
		0.488165, -0.863758, 0.124968,
		-0.869744, -0.469595, 0.151741,
		15.770634, 14.787028, 17.840269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.280174, 14.630697, 17.141111>,  <16.379456, 15.115745, 17.734051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.280174, 14.630697, 17.141111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919930, 14.674294, 17.309408>,  <15.703784, 14.700453, 17.410385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.919930, 14.674294, 17.309408>,  <16.280174, 14.630697, 17.141111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.919930, 14.674294, 17.309408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429102, -0.069091, -0.900610,
		-0.069091, -0.991639, 0.108993,
		0.900610, -0.108993, -0.420740,
		15.649748, 14.706992, 17.435631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.025388, 16.520596, 26.063688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.361913, 16.488367, 26.277493>,  <14.563828, 16.469030, 26.405775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.361913, 16.488367, 26.277493>,  <14.025388, 16.520596, 26.063688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.361913, 16.488367, 26.277493> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430042, -0.499335, -0.752149,
		0.327502, 0.862654, -0.385448,
		0.841312, -0.080571, 0.534511,
		14.614306, 16.464195, 26.437845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.626025, 16.928343, 25.752869>,  <14.025388, 16.520596, 26.063688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.626025, 16.928343, 25.752869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.787406, 16.644903, 25.984425>,  <14.884234, 16.474840, 26.123358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.787406, 16.644903, 25.984425>,  <14.626025, 16.928343, 25.752869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.787406, 16.644903, 25.984425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636755, -0.236908, -0.733769,
		0.657092, 0.664652, 0.355623,
		0.403451, -0.708599, 0.578891,
		14.908442, 16.432323, 26.158092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.331816, 17.103937, 25.789431>,  <14.626025, 16.928343, 25.752869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.331816, 17.103937, 25.789431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.305060, 16.708931, 25.846479>,  <15.289007, 16.471928, 25.880709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.305060, 16.708931, 25.846479>,  <15.331816, 17.103937, 25.789431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.305060, 16.708931, 25.846479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599398, -0.154045, -0.785488,
		0.797652, 0.032949, 0.602218,
		-0.066888, -0.987514, 0.142624,
		15.284994, 16.412676, 25.889267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.949853, 16.785923, 25.557304>,  <15.331816, 17.103937, 25.789431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.949853, 16.785923, 25.557304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.740501, 16.447172, 25.594982>,  <15.614890, 16.243921, 25.617588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.740501, 16.447172, 25.594982>,  <15.949853, 16.785923, 25.557304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.740501, 16.447172, 25.594982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480671, -0.384705, -0.788008,
		0.703584, -0.367150, 0.608416,
		-0.523379, -0.846878, 0.094194,
		15.583488, 16.193110, 25.623240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.434200, 16.269327, 25.332907>,  <15.949853, 16.785923, 25.557304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.434200, 16.269327, 25.332907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.093611, 16.060802, 25.355627>,  <15.889256, 15.935688, 25.369259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.093611, 16.060802, 25.355627>,  <16.434200, 16.269327, 25.332907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.093611, 16.060802, 25.355627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248572, -0.496616, -0.831616,
		0.461740, -0.693980, 0.552439,
		-0.851475, -0.521311, 0.056803,
		15.838168, 15.904409, 25.372667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.611370, 15.636743, 25.323399>,  <16.434200, 16.269327, 25.332907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.611370, 15.636743, 25.323399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.238340, 15.624439, 25.179529>,  <16.014523, 15.617057, 25.093208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.238340, 15.624439, 25.179529>,  <16.611370, 15.636743, 25.323399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.238340, 15.624439, 25.179529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320305, -0.530003, -0.785176,
		-0.166476, -0.847438, 0.504118,
		-0.932572, -0.030759, -0.359671,
		15.958569, 15.615211, 25.071629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612118, 14.977174, 24.950356>,  <16.611370, 15.636743, 25.323399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.612118, 14.977174, 24.950356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.273581, 15.128231, 24.800110>,  <16.070457, 15.218865, 24.709963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.273581, 15.128231, 24.800110>,  <16.612118, 14.977174, 24.950356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.273581, 15.128231, 24.800110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190594, -0.443781, -0.875632,
		-0.497369, -0.812676, 0.303614,
		-0.846344, 0.377645, -0.375614,
		16.019676, 15.241524, 24.687426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.161421, 14.458686, 24.564985>,  <16.612118, 14.977174, 24.950356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.161421, 14.458686, 24.564985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.058065, 14.808497, 24.400824>,  <15.996053, 15.018385, 24.302326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.058065, 14.808497, 24.400824>,  <16.161421, 14.458686, 24.564985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.058065, 14.808497, 24.400824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236025, -0.354808, -0.904657,
		-0.936765, -0.330618, -0.114733,
		-0.258388, 0.874530, -0.410406,
		15.980549, 15.070856, 24.277702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.617561, 14.269389, 23.992157>,  <16.161421, 14.458686, 24.564985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.617561, 14.269389, 23.992157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.805047, 14.617276, 23.930323>,  <15.917539, 14.826009, 23.893221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.805047, 14.617276, 23.930323>,  <15.617561, 14.269389, 23.992157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.805047, 14.617276, 23.930323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218934, -0.283918, -0.933519,
		-0.855788, 0.403710, -0.323488,
		0.468715, 0.869718, -0.154588,
		15.945662, 14.878192, 23.883945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.339183, 14.550067, 23.266096>,  <15.617561, 14.269389, 23.992157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.339183, 14.550067, 23.266096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.677226, 14.752261, 23.335699>,  <15.880052, 14.873578, 23.377460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.677226, 14.752261, 23.335699>,  <15.339183, 14.550067, 23.266096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.677226, 14.752261, 23.335699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250548, -0.086975, -0.964189,
		-0.472250, 0.858440, -0.200151,
		0.845107, 0.505485, 0.174007,
		15.930758, 14.903907, 23.387901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.462415, 14.737320, 22.594276>,  <15.339183, 14.550067, 23.266096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.462415, 14.737320, 22.594276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.803619, 14.797127, 22.794283>,  <16.008343, 14.833011, 22.914286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.803619, 14.797127, 22.794283>,  <15.462415, 14.737320, 22.594276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.803619, 14.797127, 22.794283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518023, -0.126144, -0.846014,
		-0.063420, 0.980679, -0.185056,
		0.853013, 0.149518, 0.500014,
		16.059523, 14.841982, 22.944286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.886003, 15.376677, 22.354866>,  <15.462415, 14.737320, 22.594276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.886003, 15.376677, 22.354866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.133064, 15.111669, 22.524370>,  <16.281301, 14.952664, 22.626072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.133064, 15.111669, 22.524370>,  <15.886003, 15.376677, 22.354866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.133064, 15.111669, 22.524370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372459, -0.228146, -0.899569,
		0.692660, 0.713455, 0.105846,
		0.617653, -0.662519, 0.423760,
		16.318359, 14.912913, 22.651499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.480164, 15.491087, 21.944782>,  <15.886003, 15.376677, 22.354866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.480164, 15.491087, 21.944782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.563139, 15.155461, 22.145954>,  <16.612925, 14.954085, 22.266657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.563139, 15.155461, 22.145954>,  <16.480164, 15.491087, 21.944782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.563139, 15.155461, 22.145954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357938, -0.413361, -0.837265,
		0.910412, 0.353698, 0.214587,
		0.207438, -0.839065, 0.502931,
		16.625370, 14.903742, 22.296833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181200, 15.400779, 21.895344>,  <16.480164, 15.491087, 21.944782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181200, 15.400779, 21.895344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.977749, 15.059853, 21.944099>,  <16.855679, 14.855297, 21.973352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.977749, 15.059853, 21.944099>,  <17.181200, 15.400779, 21.895344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.977749, 15.059853, 21.944099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358553, -0.338390, -0.870018,
		0.782776, -0.398811, 0.477714,
		-0.508627, -0.852316, 0.121889,
		16.825161, 14.804158, 21.980665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777641, 15.377940, 22.288683>,  <17.181200, 15.400779, 21.895344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777641, 15.377940, 22.288683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.159580, 15.489096, 22.246647>,  <18.388744, 15.555789, 22.221426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.159580, 15.489096, 22.246647>,  <17.777641, 15.377940, 22.288683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.159580, 15.489096, 22.246647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108190, 0.004196, 0.994121,
		0.276697, -0.960604, -0.026059,
		0.954848, 0.277890, -0.105089,
		18.446035, 15.572462, 22.215120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.012897, 15.119422, 22.813349>,  <17.777641, 15.377940, 22.288683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.012897, 15.119422, 22.813349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.296034, 15.387459, 22.723963>,  <18.465916, 15.548281, 22.670330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.296034, 15.387459, 22.723963>,  <18.012897, 15.119422, 22.813349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.296034, 15.387459, 22.723963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148920, 0.167683, 0.974528,
		0.690495, -0.723090, 0.018903,
		0.707842, 0.670092, -0.223467,
		18.508387, 15.588487, 22.656923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.578489, 15.075392, 23.230906>,  <18.012897, 15.119422, 22.813349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.578489, 15.075392, 23.230906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.637283, 15.451137, 23.106974>,  <18.672560, 15.676583, 23.032616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.637283, 15.451137, 23.106974>,  <18.578489, 15.075392, 23.230906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.637283, 15.451137, 23.106974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127630, 0.292600, 0.947679,
		0.980870, -0.178838, -0.076883,
		0.146985, 0.939363, -0.309828,
		18.681379, 15.732945, 23.014025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.152958, 15.283170, 23.674236>,  <18.578489, 15.075392, 23.230906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.152958, 15.283170, 23.674236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.948553, 15.589368, 23.517836>,  <18.825911, 15.773087, 23.423994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.948553, 15.589368, 23.517836>,  <19.152958, 15.283170, 23.674236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.948553, 15.589368, 23.517836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125645, 0.383474, 0.914965,
		0.850341, 0.516686, -0.099779,
		-0.511012, 0.765496, -0.391003,
		18.795250, 15.819016, 23.400536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.550449, 15.894671, 23.803505>,  <19.152958, 15.283170, 23.674236>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.550449, 15.894671, 23.803505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.175280, 16.015934, 23.736109>,  <18.950176, 16.088692, 23.695671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.175280, 16.015934, 23.736109>,  <19.550449, 15.894671, 23.803505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.175280, 16.015934, 23.736109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043355, 0.379506, 0.924173,
		0.344113, 0.874111, -0.342805,
		-0.937927, 0.303157, -0.168490,
		18.893902, 16.106882, 23.685562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.613091, 16.552996, 24.108812>,  <19.550449, 15.894671, 23.803505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.613091, 16.552996, 24.108812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.220428, 16.487778, 24.069279>,  <18.984831, 16.448647, 24.045559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.220428, 16.487778, 24.069279>,  <19.613091, 16.552996, 24.108812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.220428, 16.487778, 24.069279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169729, 0.511161, 0.842560,
		-0.086856, 0.843879, -0.529457,
		-0.981656, -0.163045, -0.098833,
		18.925932, 16.438864, 24.039629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.299978, 17.166027, 24.343487>,  <19.613091, 16.552996, 24.108812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.299978, 17.166027, 24.343487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.016699, 16.884851, 24.369822>,  <18.846731, 16.716146, 24.385622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.016699, 16.884851, 24.369822>,  <19.299978, 17.166027, 24.343487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.016699, 16.884851, 24.369822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233773, 0.321463, 0.917612,
		-0.666189, 0.634459, -0.391988,
		-0.708197, -0.702939, 0.065836,
		18.804239, 16.673969, 24.389572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.651739, 17.505817, 24.493681>,  <19.299978, 17.166027, 24.343487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.651739, 17.505817, 24.493681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.618902, 17.132887, 24.634552>,  <18.599199, 16.909128, 24.719074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.618902, 17.132887, 24.634552>,  <18.651739, 17.505817, 24.493681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.618902, 17.132887, 24.634552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302529, 0.360010, 0.882536,
		-0.949598, -0.034093, -0.311610,
		-0.082095, -0.932325, 0.352179,
		18.594275, 16.853189, 24.740206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.091408, 17.605669, 24.822605>,  <18.651739, 17.505817, 24.493681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.091408, 17.605669, 24.822605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.227791, 17.250933, 24.947353>,  <18.309620, 17.038092, 25.022202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.227791, 17.250933, 24.947353>,  <18.091408, 17.605669, 24.822605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.227791, 17.250933, 24.947353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399080, 0.163825, 0.902162,
		-0.851166, -0.432060, -0.298063,
		0.340958, -0.886840, 0.311868,
		18.330078, 16.984880, 25.040915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.554861, 17.233047, 25.171734>,  <18.091408, 17.605669, 24.822605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.554861, 17.233047, 25.171734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.901302, 17.093306, 25.314739>,  <18.109167, 17.009460, 25.400543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.901302, 17.093306, 25.314739>,  <17.554861, 17.233047, 25.171734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.901302, 17.093306, 25.314739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327792, 0.143024, 0.933861,
		-0.377383, -0.926010, 0.009357,
		0.866103, -0.349356, 0.357513,
		18.161133, 16.988499, 25.421993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.400763, 16.678827, 25.734011>,  <17.554861, 17.233047, 25.171734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.400763, 16.678827, 25.734011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.760798, 16.838707, 25.803389>,  <17.976818, 16.934635, 25.845016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.760798, 16.838707, 25.803389>,  <17.400763, 16.678827, 25.734011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.760798, 16.838707, 25.803389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227460, 0.091524, 0.969477,
		0.371625, -0.912065, 0.173296,
		0.900087, 0.399700, 0.173446,
		18.030825, 16.958616, 25.855423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.602030, 16.444044, 26.365065>,  <17.400763, 16.678827, 25.734011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.602030, 16.444044, 26.365065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.853317, 16.749273, 26.304316>,  <18.004089, 16.932411, 26.267866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.853317, 16.749273, 26.304316>,  <17.602030, 16.444044, 26.365065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.853317, 16.749273, 26.304316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088244, 0.263820, 0.960527,
		0.773018, -0.590017, 0.233072,
		0.628217, 0.763072, -0.151872,
		18.041782, 16.978195, 26.258755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.940012, 16.455885, 26.984205>,  <17.602030, 16.444044, 26.365065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.940012, 16.455885, 26.984205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.991417, 16.821341, 26.829933>,  <18.022261, 17.040613, 26.737370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.991417, 16.821341, 26.829933>,  <17.940012, 16.455885, 26.984205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.991417, 16.821341, 26.829933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050944, 0.394476, 0.917493,
		0.990399, -0.098261, 0.097239,
		0.128512, 0.913638, -0.385682,
		18.029970, 17.095432, 26.714228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.775488, 15.997005, 27.557610>,  <17.940012, 16.455885, 26.984205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.775488, 15.997005, 27.557610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.021030, 16.308636, 27.608543>,  <18.168356, 16.495615, 27.639105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.021030, 16.308636, 27.608543>,  <17.775488, 15.997005, 27.557610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.021030, 16.308636, 27.608543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765071, 0.547386, 0.339168,
		0.194536, -0.305623, 0.932068,
		0.613858, 0.779078, 0.127337,
		18.205189, 16.542358, 27.646744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.848592, 19.128538, 26.276949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.114531, 18.829771, 26.273031>,  <10.274094, 18.650511, 26.270681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.114531, 18.829771, 26.273031>,  <9.848592, 19.128538, 26.276949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.114531, 18.829771, 26.273031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116639, 0.116753, -0.986288,
		0.737818, 0.654588, 0.164742,
		0.664846, -0.746916, -0.009792,
		10.313985, 18.605696, 26.270094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.504457, 19.447521, 26.051338>,  <9.848592, 19.128538, 26.276949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.504457, 19.447521, 26.051338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.538155, 19.058802, 25.963236>,  <10.558373, 18.825571, 25.910374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.538155, 19.058802, 25.963236>,  <10.504457, 19.447521, 26.051338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.538155, 19.058802, 25.963236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241268, 0.234358, -0.941736,
		0.966795, 0.026195, 0.254207,
		0.084244, -0.971797, -0.220256,
		10.563428, 18.767262, 25.897160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.084792, 19.480610, 25.668522>,  <10.504457, 19.447521, 26.051338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.084792, 19.480610, 25.668522> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.905368, 19.130131, 25.598015>,  <10.797713, 18.919844, 25.555710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.905368, 19.130131, 25.598015>,  <11.084792, 19.480610, 25.668522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.905368, 19.130131, 25.598015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164064, 0.113147, -0.979939,
		0.878565, -0.468481, 0.092999,
		-0.448560, -0.876199, -0.176267,
		10.770800, 18.867271, 25.545135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.563656, 19.178473, 25.213419>,  <11.084792, 19.480610, 25.668522>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.563656, 19.178473, 25.213419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.221923, 18.972275, 25.186939>,  <11.016883, 18.848557, 25.171051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.221923, 18.972275, 25.186939>,  <11.563656, 19.178473, 25.213419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.221923, 18.972275, 25.186939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071887, 0.008939, -0.997373,
		0.514730, -0.856847, 0.029420,
		-0.854333, -0.515493, -0.066197,
		10.965623, 18.817627, 25.167080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.729600, 18.752583, 24.692194>,  <11.563656, 19.178473, 25.213419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.729600, 18.752583, 24.692194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.332637, 18.703764, 24.698284>,  <11.094459, 18.674473, 24.701939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.332637, 18.703764, 24.698284>,  <11.729600, 18.752583, 24.692194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.332637, 18.703764, 24.698284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025231, -0.323167, -0.946006,
		0.120376, -0.938439, 0.323793,
		-0.992408, -0.122046, 0.015224,
		11.034914, 18.667150, 24.702850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.520888, 18.015545, 24.488855>,  <11.729600, 18.752583, 24.692194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.520888, 18.015545, 24.488855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.214257, 18.260801, 24.412527>,  <11.030278, 18.407955, 24.366730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.214257, 18.260801, 24.412527>,  <11.520888, 18.015545, 24.488855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.214257, 18.260801, 24.412527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011204, -0.309883, -0.950709,
		-0.642053, -0.726655, 0.244419,
		-0.766578, 0.613143, -0.190820,
		10.984283, 18.444744, 24.355282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.092978, 17.654823, 24.073906>,  <11.520888, 18.015545, 24.488855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.092978, 17.654823, 24.073906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.983895, 18.031435, 23.994759>,  <10.918446, 18.257402, 23.947269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.983895, 18.031435, 23.994759>,  <11.092978, 17.654823, 24.073906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.983895, 18.031435, 23.994759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067448, -0.223867, -0.972283,
		-0.959730, -0.251804, 0.124555,
		-0.272708, 0.941530, -0.197868,
		10.902082, 18.313894, 23.935398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.426577, 17.640646, 23.721655>,  <11.092978, 17.654823, 24.073906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.426577, 17.640646, 23.721655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.562006, 18.007578, 23.637875>,  <10.643264, 18.227737, 23.587606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.562006, 18.007578, 23.637875>,  <10.426577, 17.640646, 23.721655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.562006, 18.007578, 23.637875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057498, -0.202012, -0.977694,
		-0.939182, 0.343064, -0.015651,
		0.338574, 0.917332, -0.209451,
		10.663578, 18.282778, 23.575039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.174733, 17.783051, 23.028017>,  <10.426577, 17.640646, 23.721655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.174733, 17.783051, 23.028017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.472750, 18.046602, 23.069576>,  <10.651560, 18.204733, 23.094513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.472750, 18.046602, 23.069576>,  <10.174733, 17.783051, 23.028017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.472750, 18.046602, 23.069576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270889, -0.156537, -0.949797,
		-0.609536, 0.735783, -0.295109,
		0.745040, 0.658878, 0.103900,
		10.696261, 18.244265, 23.100746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.194882, 18.146313, 22.377943>,  <10.174733, 17.783051, 23.028017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.194882, 18.146313, 22.377943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.554060, 18.216349, 22.539457>,  <10.769567, 18.258369, 22.636366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.554060, 18.216349, 22.539457>,  <10.194882, 18.146313, 22.377943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.554060, 18.216349, 22.539457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435686, -0.223872, -0.871814,
		-0.062249, 0.958762, -0.277308,
		0.897944, 0.175089, 0.403784,
		10.823443, 18.268875, 22.660593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.523599, 18.547457, 21.989971>,  <10.194882, 18.146313, 22.377943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.523599, 18.547457, 21.989971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.790074, 18.331694, 22.195972>,  <10.949960, 18.202236, 22.319572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.790074, 18.331694, 22.195972>,  <10.523599, 18.547457, 21.989971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.790074, 18.331694, 22.195972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381313, -0.347105, -0.856807,
		0.640930, 0.767174, -0.025554,
		0.666190, -0.539409, 0.515003,
		10.989931, 18.169870, 22.350473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.197472, 18.688564, 21.668308>,  <10.523599, 18.547457, 21.989971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.197472, 18.688564, 21.668308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.244438, 18.330812, 21.840958>,  <11.272618, 18.116161, 21.944548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.244438, 18.330812, 21.840958>,  <11.197472, 18.688564, 21.668308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.244438, 18.330812, 21.840958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411445, -0.351759, -0.840820,
		0.903840, 0.276315, 0.326686,
		0.117416, -0.894380, 0.431622,
		11.279663, 18.062498, 21.970444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.756051, 18.432093, 21.402369>,  <11.197472, 18.688564, 21.668308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.756051, 18.432093, 21.402369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.636503, 18.082809, 21.556345>,  <11.564775, 17.873240, 21.648731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.636503, 18.082809, 21.556345>,  <11.756051, 18.432093, 21.402369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.636503, 18.082809, 21.556345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455841, -0.485016, -0.746303,
		0.838383, -0.047574, 0.543001,
		-0.298869, -0.873210, 0.384943,
		11.546843, 17.820847, 21.671827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.345075, 17.950842, 21.425449>,  <11.756051, 18.432093, 21.402369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.345075, 17.950842, 21.425449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.015523, 17.724136, 21.424704>,  <11.817792, 17.588114, 21.424255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.015523, 17.724136, 21.424704>,  <12.345075, 17.950842, 21.425449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.015523, 17.724136, 21.424704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437224, -0.633472, -0.638395,
		0.360637, -0.526776, 0.769707,
		-0.823879, -0.566763, -0.001866,
		11.768359, 17.554108, 21.424145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.119261, 17.818008, 21.426888>,  <12.345075, 17.950842, 21.425449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.119261, 17.818008, 21.426888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.273834, 18.117107, 21.210907>,  <13.366578, 18.296566, 21.081320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.273834, 18.117107, 21.210907>,  <13.119261, 17.818008, 21.426888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.273834, 18.117107, 21.210907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090044, 0.552045, 0.828938,
		0.917911, -0.368950, 0.145999,
		0.386435, 0.747745, -0.539950,
		13.389765, 18.341431, 21.048922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.865342, 17.987616, 21.654026>,  <13.119261, 17.818008, 21.426888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.865342, 17.987616, 21.654026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.693154, 18.312469, 21.496479>,  <13.589842, 18.507381, 21.401951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.693154, 18.312469, 21.496479>,  <13.865342, 17.987616, 21.654026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.693154, 18.312469, 21.496479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061273, 0.461654, 0.884942,
		0.900522, 0.356808, -0.248490,
		-0.430471, 0.812135, -0.393867,
		13.564013, 18.556110, 21.378319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.223780, 18.503494, 21.848301>,  <13.865342, 17.987616, 21.654026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.223780, 18.503494, 21.848301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.877739, 18.685799, 21.764509>,  <13.670115, 18.795181, 21.714235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.877739, 18.685799, 21.764509>,  <14.223780, 18.503494, 21.848301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.877739, 18.685799, 21.764509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083610, 0.542805, 0.835687,
		0.494579, 0.705439, -0.507688,
		-0.865102, 0.455761, -0.209478,
		13.618209, 18.822527, 21.701666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.352143, 19.139725, 22.108044>,  <14.223780, 18.503494, 21.848301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.352143, 19.139725, 22.108044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.953780, 19.128366, 22.073725>,  <13.714763, 19.121552, 22.053133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.953780, 19.128366, 22.073725>,  <14.352143, 19.139725, 22.108044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.953780, 19.128366, 22.073725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085055, 0.615444, 0.783578,
		0.030553, 0.787668, -0.615341,
		-0.995908, -0.028397, -0.085799,
		13.655008, 19.119846, 22.047985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.169749, 19.765366, 22.277966>,  <14.352143, 19.139725, 22.108044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.169749, 19.765366, 22.277966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.851062, 19.528795, 22.327686>,  <13.659849, 19.386852, 22.357519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.851062, 19.528795, 22.327686>,  <14.169749, 19.765366, 22.277966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.851062, 19.528795, 22.327686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191261, 0.441857, 0.876460,
		-0.573286, 0.674519, -0.465153,
		-0.796720, -0.591428, 0.124301,
		13.612046, 19.351366, 22.364977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.689578, 20.218384, 22.613167>,  <14.169749, 19.765366, 22.277966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.689578, 20.218384, 22.613167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.561778, 19.847027, 22.689066>,  <13.485098, 19.624212, 22.734606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.561778, 19.847027, 22.689066>,  <13.689578, 20.218384, 22.613167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.561778, 19.847027, 22.689066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238252, 0.272517, 0.932186,
		-0.917146, 0.252625, -0.308261,
		-0.319499, -0.928394, 0.189749,
		13.465928, 19.568508, 22.745991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.966127, 20.409695, 22.954966>,  <13.689578, 20.218384, 22.613167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.966127, 20.409695, 22.954966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.077258, 20.039764, 23.058899>,  <13.143936, 19.817806, 23.121260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.077258, 20.039764, 23.058899>,  <12.966127, 20.409695, 22.954966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.077258, 20.039764, 23.058899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213165, 0.204388, 0.955398,
		-0.936682, -0.320823, -0.140356,
		0.277827, -0.924823, 0.259835,
		13.160606, 19.762318, 23.136848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.459502, 20.234045, 23.510693>,  <12.966127, 20.409695, 22.954966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.459502, 20.234045, 23.510693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.762476, 19.975254, 23.545818>,  <12.944261, 19.819979, 23.566895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.762476, 19.975254, 23.545818>,  <12.459502, 20.234045, 23.510693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.762476, 19.975254, 23.545818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096407, 0.022200, 0.995094,
		-0.645754, -0.762185, -0.045558,
		0.757435, -0.646978, 0.087816,
		12.989707, 19.781160, 23.572163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.231206, 19.815956, 23.922333>,  <12.459502, 20.234045, 23.510693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.231206, 19.815956, 23.922333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.622947, 19.759470, 23.980200>,  <12.857991, 19.725578, 24.014919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.622947, 19.759470, 23.980200>,  <12.231206, 19.815956, 23.922333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.622947, 19.759470, 23.980200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157723, -0.086054, 0.983727,
		-0.126472, -0.986231, -0.106551,
		0.979351, -0.141219, 0.144668,
		12.916752, 19.717106, 24.023600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.272239, 19.318296, 24.393698>,  <12.231206, 19.815956, 23.922333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.272239, 19.318296, 24.393698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.647891, 19.452837, 24.421700>,  <12.873282, 19.533562, 24.438501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.647891, 19.452837, 24.421700>,  <12.272239, 19.318296, 24.393698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.647891, 19.452837, 24.421700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072298, -0.005721, 0.997367,
		0.335869, -0.941718, 0.018945,
		0.939130, 0.336354, 0.070006,
		12.929630, 19.553743, 24.442701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.700409, 18.852671, 24.691532>,  <12.272239, 19.318296, 24.393698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.700409, 18.852671, 24.691532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.879024, 19.202581, 24.766762>,  <12.986193, 19.412527, 24.811899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.879024, 19.202581, 24.766762>,  <12.700409, 18.852671, 24.691532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.879024, 19.202581, 24.766762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091015, -0.253511, 0.963041,
		0.890124, -0.412916, -0.192819,
		0.446537, 0.874776, 0.188075,
		13.012984, 19.465014, 24.823185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.059457, 18.704876, 25.205780>,  <12.700409, 18.852671, 24.691532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.059457, 18.704876, 25.205780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.077049, 19.104296, 25.218208>,  <13.087605, 19.343948, 25.225664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.077049, 19.104296, 25.218208>,  <13.059457, 18.704876, 25.205780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.077049, 19.104296, 25.218208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082229, -0.034612, 0.996012,
		0.995642, -0.041251, -0.083632,
		0.043981, 0.998549, 0.031069,
		13.090243, 19.403860, 25.227530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.562154, 18.825323, 25.694750>,  <13.059457, 18.704876, 25.205780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.562154, 18.825323, 25.694750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.377593, 19.180134, 25.687916>,  <13.266857, 19.393021, 25.683815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.377593, 19.180134, 25.687916>,  <13.562154, 18.825323, 25.694750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377593, 19.180134, 25.687916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080071, 0.060813, 0.994932,
		0.883571, 0.457695, -0.099085,
		-0.461401, 0.887027, -0.017085,
		13.239173, 19.446241, 25.682791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.966458, 19.257528, 26.079710>,  <13.562154, 18.825323, 25.694750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.966458, 19.257528, 26.079710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.604159, 19.427046, 26.081625>,  <13.386780, 19.528755, 26.082775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.604159, 19.427046, 26.081625>,  <13.966458, 19.257528, 26.079710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.604159, 19.427046, 26.081625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022632, -0.059647, 0.997963,
		0.423214, 0.903794, 0.063616,
		-0.905747, 0.423792, 0.004788,
		13.332436, 19.554184, 26.083061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.628860, 19.593071, 25.745340>,  <13.966458, 19.257528, 26.079710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.628860, 19.593071, 25.745340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.996156, 19.700928, 25.861361>,  <15.216534, 19.765642, 25.930973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.996156, 19.700928, 25.861361>,  <14.628860, 19.593071, 25.745340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.996156, 19.700928, 25.861361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347861, -0.199105, -0.916160,
		-0.189286, 0.942152, -0.276624,
		0.918239, 0.269643, 0.290050,
		15.271627, 19.781820, 25.948376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.811623, 20.017763, 25.308184>,  <14.628860, 19.593071, 25.745340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.811623, 20.017763, 25.308184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.173908, 19.927856, 25.451941>,  <15.391279, 19.873913, 25.538195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.173908, 19.927856, 25.451941>,  <14.811623, 20.017763, 25.308184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.173908, 19.927856, 25.451941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296160, -0.271049, -0.915872,
		0.303270, 0.935956, -0.178926,
		0.905713, -0.224766, 0.359394,
		15.445622, 19.860426, 25.559759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281376, 20.337450, 24.841324>,  <14.811623, 20.017763, 25.308184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.281376, 20.337450, 24.841324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.456434, 20.037434, 25.039679>,  <15.561469, 19.857424, 25.158691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.456434, 20.037434, 25.039679>,  <15.281376, 20.337450, 24.841324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.456434, 20.037434, 25.039679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267714, -0.417798, -0.868202,
		0.858368, 0.512720, 0.017949,
		0.437645, -0.750042, 0.495887,
		15.587728, 19.812422, 25.188444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.922471, 20.243149, 24.469458>,  <15.281376, 20.337450, 24.841324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.922471, 20.243149, 24.469458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.865811, 19.917551, 24.694794>,  <15.831816, 19.722193, 24.829994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.865811, 19.917551, 24.694794>,  <15.922471, 20.243149, 24.469458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.865811, 19.917551, 24.694794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587201, -0.527237, -0.614179,
		0.796951, 0.243795, 0.552660,
		-0.141650, -0.813993, 0.563339,
		15.823317, 19.673353, 24.863796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.487444, 19.984404, 24.442284>,  <15.922471, 20.243149, 24.469458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.487444, 19.984404, 24.442284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.224154, 19.697725, 24.534445>,  <16.066179, 19.525719, 24.589741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.224154, 19.697725, 24.534445>,  <16.487444, 19.984404, 24.442284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224154, 19.697725, 24.534445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444115, -0.616798, -0.649863,
		0.607866, -0.325431, 0.724288,
		-0.658226, -0.716697, 0.230402,
		16.026686, 19.482716, 24.603565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.816828, 19.321312, 24.265821>,  <16.487444, 19.984404, 24.442284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.816828, 19.321312, 24.265821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.428055, 19.227468, 24.272842>,  <16.194792, 19.171164, 24.277056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.428055, 19.227468, 24.272842>,  <16.816828, 19.321312, 24.265821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.428055, 19.227468, 24.272842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127567, -0.588240, -0.798562,
		0.197675, -0.773908, 0.601657,
		-0.971932, -0.234607, 0.017555,
		16.136475, 19.157087, 24.278109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847004, 18.620872, 24.070419>,  <16.816828, 19.321312, 24.265821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.847004, 18.620872, 24.070419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.471590, 18.747936, 24.016392>,  <16.246342, 18.824175, 23.983974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.471590, 18.747936, 24.016392>,  <16.847004, 18.620872, 24.070419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.471590, 18.747936, 24.016392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069594, -0.557393, -0.827327,
		-0.338096, -0.767075, 0.545241,
		-0.938535, 0.317661, -0.135068,
		16.190029, 18.843235, 23.975872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430712, 17.988426, 24.118458>,  <16.847004, 18.620872, 24.070419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.430712, 17.988426, 24.118458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.230122, 18.270350, 23.917751>,  <16.109768, 18.439505, 23.797327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.230122, 18.270350, 23.917751>,  <16.430712, 17.988426, 24.118458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.230122, 18.270350, 23.917751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159595, -0.645365, -0.747016,
		-0.850327, -0.294529, 0.436117,
		-0.501472, 0.704810, -0.501766,
		16.079679, 18.481792, 23.767221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.890047, 17.679510, 23.795361>,  <16.430712, 17.988426, 24.118458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.890047, 17.679510, 23.795361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.927953, 18.008398, 23.570871>,  <15.950696, 18.205730, 23.436178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.927953, 18.008398, 23.570871>,  <15.890047, 17.679510, 23.795361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.927953, 18.008398, 23.570871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122488, -0.549847, -0.826235,
		-0.987935, 0.147040, 0.048607,
		0.094763, 0.822221, -0.561224,
		15.956382, 18.255064, 23.402504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549493, 17.479771, 23.034000>,  <15.890047, 17.679510, 23.795361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.549493, 17.479771, 23.034000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.725410, 17.831676, 22.961781>,  <15.830961, 18.042820, 22.918449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.725410, 17.831676, 22.961781>,  <15.549493, 17.479771, 23.034000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.725410, 17.831676, 22.961781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218496, -0.299806, -0.928642,
		-0.871115, 0.368961, -0.324078,
		0.439793, 0.879764, -0.180549,
		15.857348, 18.095606, 22.907616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.233210, 17.784355, 22.428635>,  <15.549493, 17.479771, 23.034000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.233210, 17.784355, 22.428635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.604240, 17.932880, 22.445261>,  <15.826859, 18.021996, 22.455236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.604240, 17.932880, 22.445261>,  <15.233210, 17.784355, 22.428635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.604240, 17.932880, 22.445261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140693, -0.244053, -0.959502,
		-0.346130, 0.895860, -0.278619,
		0.927577, 0.371312, 0.041567,
		15.882514, 18.044273, 22.457731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.282557, 18.302036, 21.931005>,  <15.233210, 17.784355, 22.428635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.282557, 18.302036, 21.931005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.669565, 18.229389, 22.001341>,  <15.901771, 18.185801, 22.043541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.669565, 18.229389, 22.001341>,  <15.282557, 18.302036, 21.931005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.669565, 18.229389, 22.001341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173272, -0.030020, -0.984416,
		0.184064, 0.982911, 0.002424,
		0.967521, -0.181616, 0.175836,
		15.959822, 18.174904, 22.054092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.696783, 18.605850, 21.328470>,  <15.282557, 18.302036, 21.931005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.696783, 18.605850, 21.328470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.901851, 18.302397, 21.489292>,  <16.024891, 18.120325, 21.585785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.901851, 18.302397, 21.489292>,  <15.696783, 18.605850, 21.328470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.901851, 18.302397, 21.489292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231552, -0.328757, -0.915589,
		0.826773, 0.562490, 0.007119,
		0.512669, -0.758633, 0.402053,
		16.055651, 18.074806, 21.609907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.306667, 18.620766, 20.967051>,  <15.696783, 18.605850, 21.328470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.306667, 18.620766, 20.967051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.281878, 18.255398, 21.127958>,  <16.267004, 18.036177, 21.224503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.281878, 18.255398, 21.127958>,  <16.306667, 18.620766, 20.967051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.281878, 18.255398, 21.127958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325337, -0.399520, -0.857053,
		0.943565, 0.077758, 0.321930,
		-0.061974, -0.913421, 0.402271,
		16.263285, 17.981371, 21.248640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.381141, 26.818304, 16.946507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.023005, 26.789249, 16.770737>,  <8.808125, 26.771816, 16.665276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.023005, 26.789249, 16.770737>,  <9.381141, 26.818304, 16.946507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.023005, 26.789249, 16.770737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415826, -0.217122, 0.883146,
		-0.159558, 0.973438, 0.164194,
		-0.895338, -0.072637, -0.439424,
		8.754404, 26.767458, 16.638910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.993775, 27.075933, 17.452337>,  <9.381141, 26.818304, 16.946507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.993775, 27.075933, 17.452337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.738307, 26.895723, 17.202818>,  <8.585026, 26.787598, 17.053106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.738307, 26.895723, 17.202818>,  <8.993775, 27.075933, 17.452337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.738307, 26.895723, 17.202818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308094, -0.593134, 0.743821,
		-0.705108, 0.667246, 0.240013,
		-0.638672, -0.450527, -0.623798,
		8.546705, 26.760565, 17.015678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.391308, 26.875568, 17.855450>,  <8.993775, 27.075933, 17.452337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.391308, 26.875568, 17.855450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.291207, 26.635624, 17.551464>,  <8.231147, 26.491657, 17.369074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.291207, 26.635624, 17.551464>,  <8.391308, 26.875568, 17.855450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.291207, 26.635624, 17.551464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674181, -0.455394, 0.581460,
		-0.694877, 0.657863, -0.290452,
		-0.250251, -0.599860, -0.759962,
		8.216132, 26.455666, 17.323475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.684494, 26.971437, 17.580019>,  <8.391308, 26.875568, 17.855450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.684494, 26.971437, 17.580019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.800215, 26.588629, 17.571865>,  <7.869648, 26.358944, 17.566973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.800215, 26.588629, 17.571865>,  <7.684494, 26.971437, 17.580019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.800215, 26.588629, 17.571865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651048, -0.212332, 0.728733,
		-0.701741, -0.197552, -0.684494,
		0.289303, -0.957021, -0.020386,
		7.887006, 26.301523, 17.565750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.114483, 26.377373, 17.316643>,  <7.684494, 26.971437, 17.580019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.114483, 26.377373, 17.316643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.383440, 26.227356, 17.571901>,  <7.544814, 26.137346, 17.725058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.383440, 26.227356, 17.571901>,  <7.114483, 26.377373, 17.316643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.383440, 26.227356, 17.571901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733967, -0.226218, 0.640404,
		-0.095816, -0.898983, -0.427374,
		0.672392, -0.375039, 0.638149,
		7.585157, 26.114843, 17.763346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.350485, 26.357187, 17.189297>,  <7.114483, 26.377373, 17.316643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.350485, 26.357187, 17.189297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.254496, 26.576748, 17.509577>,  <6.196902, 26.708485, 17.701744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.254496, 26.576748, 17.509577>,  <6.350485, 26.357187, 17.189297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.254496, 26.576748, 17.509577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670979, 0.502289, -0.545429,
		-0.701569, -0.668142, 0.247765,
		-0.239975, 0.548901, 0.800700,
		6.182503, 26.741419, 17.749786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.452068, 25.619850, 17.410614>,  <6.350485, 26.357187, 17.189297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.452068, 25.619850, 17.410614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.463846, 25.236372, 17.297455>,  <6.470913, 25.006285, 17.229559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.463846, 25.236372, 17.297455>,  <6.452068, 25.619850, 17.410614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.463846, 25.236372, 17.297455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961052, -0.104960, 0.255660,
		-0.274794, 0.264353, -0.924449,
		0.029446, -0.958698, -0.282899,
		6.472680, 24.948763, 17.212585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.959140, 25.407177, 16.873846>,  <6.452068, 25.619850, 17.410614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.959140, 25.407177, 16.873846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.004897, 25.108637, 17.136106>,  <6.032351, 24.929512, 17.293463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.004897, 25.108637, 17.136106>,  <5.959140, 25.407177, 16.873846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.004897, 25.108637, 17.136106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992480, -0.056918, 0.108367,
		-0.043560, -0.663118, -0.747246,
		0.114392, -0.746347, 0.655652,
		6.039215, 24.884731, 17.332802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.391782, 24.828838, 16.782713>,  <5.959140, 25.407177, 16.873846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.391782, 24.828838, 16.782713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.531199, 24.837873, 17.157520>,  <5.614849, 24.843294, 17.382404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.531199, 24.837873, 17.157520>,  <5.391782, 24.828838, 16.782713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.531199, 24.837873, 17.157520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925290, -0.151182, 0.347825,
		0.149519, -0.988248, -0.031788,
		0.348543, 0.022593, 0.937021,
		5.635762, 24.844650, 17.438627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.668618, 25.023886, 17.016108>,  <5.391782, 24.828838, 16.782713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.668618, 25.023886, 17.016108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.321566, 24.858410, 17.126436>,  <4.113335, 24.759125, 17.192635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.321566, 24.858410, 17.126436>,  <4.668618, 25.023886, 17.016108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.321566, 24.858410, 17.126436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325372, -0.891869, -0.314169,
		0.375968, -0.182837, 0.908416,
		-0.867630, -0.413691, 0.275824,
		4.061277, 24.734303, 17.209183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.800627, 24.330711, 17.120588>,  <4.668618, 25.023886, 17.016108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.800627, 24.330711, 17.120588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.403190, 24.290792, 17.099369>,  <4.164727, 24.266840, 17.086637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.403190, 24.290792, 17.099369>,  <4.800627, 24.330711, 17.120588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.403190, 24.290792, 17.099369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113022, -0.878310, -0.464540,
		-0.000234, -0.467559, 0.883961,
		-0.993592, -0.099798, -0.053050,
		4.105112, 24.260853, 17.083454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.680770, 23.570425, 17.382385>,  <4.800627, 24.330711, 17.120588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.680770, 23.570425, 17.382385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.384737, 23.708214, 17.151348>,  <4.207116, 23.790888, 17.012726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.384737, 23.708214, 17.151348>,  <4.680770, 23.570425, 17.382385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.384737, 23.708214, 17.151348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003307, -0.856981, -0.515337,
		-0.672506, -0.383303, 0.633099,
		-0.740084, 0.344473, -0.577593,
		4.162711, 23.811556, 16.978071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.126907, 23.000883, 17.357357>,  <4.680770, 23.570425, 17.382385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.126907, 23.000883, 17.357357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.035769, 23.246737, 17.055281>,  <3.981086, 23.394249, 16.874035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.035769, 23.246737, 17.055281>,  <4.126907, 23.000883, 17.357357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.035769, 23.246737, 17.055281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258008, -0.785975, -0.561849,
		-0.938892, 0.066830, 0.337662,
		-0.227845, 0.614635, -0.755189,
		3.967415, 23.431128, 16.828724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.481294, 22.761585, 17.059484>,  <4.126907, 23.000883, 17.357357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.481294, 22.761585, 17.059484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.669677, 22.974514, 16.778109>,  <3.782708, 23.102272, 16.609283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.669677, 22.974514, 16.778109>,  <3.481294, 22.761585, 17.059484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.669677, 22.974514, 16.778109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229245, -0.696163, -0.680298,
		-0.851848, 0.481652, -0.205831,
		0.470959, 0.532324, -0.703441,
		3.810965, 23.134211, 16.567076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.015519, 22.819326, 16.537260>,  <3.481294, 22.761585, 17.059484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.015519, 22.819326, 16.537260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.359893, 22.883314, 16.344097>,  <3.566517, 22.921707, 16.228199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.359893, 22.883314, 16.344097>,  <3.015519, 22.819326, 16.537260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.359893, 22.883314, 16.344097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202935, -0.762469, -0.614377,
		-0.466485, 0.626937, -0.623973,
		0.860935, 0.159972, -0.482907,
		3.618174, 22.931305, 16.199224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.845600, 22.775536, 15.851395>,  <3.015519, 22.819326, 16.537260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.845600, 22.775536, 15.851395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.240816, 22.714130, 15.845625>,  <3.477946, 22.677288, 15.842163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.240816, 22.714130, 15.845625>,  <2.845600, 22.775536, 15.851395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.240816, 22.714130, 15.845625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122156, -0.722249, -0.680761,
		0.094088, 0.674382, -0.732364,
		0.988041, -0.153514, -0.014425,
		3.537229, 22.668076, 15.841297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.015503, 22.695526, 15.196388>,  <2.845600, 22.775536, 15.851395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.015503, 22.695526, 15.196388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.316938, 22.528555, 15.399508>,  <3.497799, 22.428371, 15.521379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.316938, 22.528555, 15.399508>,  <3.015503, 22.695526, 15.196388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.316938, 22.528555, 15.399508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088259, -0.829754, -0.551106,
		0.651395, 0.370489, -0.662134,
		0.753588, -0.417428, 0.507799,
		3.543015, 22.403326, 15.551847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.367615, 22.381927, 14.700142>,  <3.015503, 22.695526, 15.196388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.367615, 22.381927, 14.700142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.484685, 22.199432, 15.036283>,  <3.554927, 22.089935, 15.237967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.484685, 22.199432, 15.036283>,  <3.367615, 22.381927, 14.700142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.484685, 22.199432, 15.036283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029763, -0.882753, -0.468893,
		0.955749, 0.112222, -0.271938,
		0.292674, -0.456238, 0.840350,
		3.572487, 22.062561, 15.288387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.868337, 21.824175, 14.522324>,  <3.367615, 22.381927, 14.700142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.868337, 21.824175, 14.522324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.744003, 21.722357, 14.888621>,  <3.669403, 21.661266, 15.108400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.744003, 21.722357, 14.888621>,  <3.868337, 21.824175, 14.522324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.744003, 21.722357, 14.888621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121682, -0.966200, -0.227267,
		0.942642, 0.040787, 0.331303,
		-0.310835, -0.254545, 0.915745,
		3.650753, 21.645994, 15.163344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.348608, 21.322966, 14.753101>,  <3.868337, 21.824175, 14.522324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.348608, 21.322966, 14.753101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.052658, 21.241304, 15.009510>,  <3.875088, 21.192307, 15.163355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.052658, 21.241304, 15.009510>,  <4.348608, 21.322966, 14.753101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.052658, 21.241304, 15.009510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148078, -0.978895, -0.140849,
		0.656247, -0.009289, 0.754489,
		-0.739873, -0.204155, 0.641022,
		3.830696, 21.180058, 15.201817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.551585, 20.887775, 15.275953>,  <4.348608, 21.322966, 14.753101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.551585, 20.887775, 15.275953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.154310, 20.841208, 15.273882>,  <3.915946, 20.813267, 15.272639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.154310, 20.841208, 15.273882>,  <4.551585, 20.887775, 15.275953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.154310, 20.841208, 15.273882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115589, -0.989793, 0.083358,
		-0.014831, 0.082191, 0.996506,
		-0.993187, -0.116422, -0.005179,
		3.856354, 20.806280, 15.272328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.411789, 20.380322, 15.829728>,  <4.551585, 20.887775, 15.275953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.411789, 20.380322, 15.829728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.086633, 20.378811, 15.596766>,  <3.891539, 20.377905, 15.456989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.086633, 20.378811, 15.596766>,  <4.411789, 20.380322, 15.829728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.086633, 20.378811, 15.596766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007258, -0.999967, -0.003647,
		-0.582371, -0.007192, 0.812892,
		-0.812891, -0.003776, -0.582404,
		3.842765, 20.377678, 15.422046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.038948, 19.870781, 16.130112>,  <4.411789, 20.380322, 15.829728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.038948, 19.870781, 16.130112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.881070, 19.910618, 15.764752>,  <3.786343, 19.934519, 15.545537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.881070, 19.910618, 15.764752>,  <4.038948, 19.870781, 16.130112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.881070, 19.910618, 15.764752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172509, -0.984462, -0.032795,
		-0.902472, 0.144626, 0.405742,
		-0.394695, 0.099591, -0.913399,
		3.762662, 19.940495, 15.490732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.369597, 19.532818, 16.143208>,  <4.038948, 19.870781, 16.130112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.369597, 19.532818, 16.143208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.484895, 19.550255, 15.760581>,  <3.554073, 19.560717, 15.531006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.484895, 19.550255, 15.760581>,  <3.369597, 19.532818, 16.143208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.484895, 19.550255, 15.760581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109693, -0.990884, -0.078212,
		-0.951254, 0.127473, -0.280833,
		0.288243, 0.043594, -0.956565,
		3.571367, 19.563334, 15.473612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.879695, 19.109383, 15.833953>,  <3.369597, 19.532818, 16.143208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.879695, 19.109383, 15.833953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.173378, 19.141172, 15.564249>,  <3.349587, 19.160246, 15.402427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.173378, 19.141172, 15.564249>,  <2.879695, 19.109383, 15.833953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.173378, 19.141172, 15.564249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080036, -0.976068, -0.202201,
		-0.674193, 0.202422, -0.710274,
		0.734206, 0.079474, -0.674259,
		3.393639, 19.165014, 15.361971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.740792, 18.610611, 15.310560>,  <2.879695, 19.109383, 15.833953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.740792, 18.610611, 15.310560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.126916, 18.694168, 15.247900>,  <3.358591, 18.744303, 15.210304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.126916, 18.694168, 15.247900>,  <2.740792, 18.610611, 15.310560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.126916, 18.694168, 15.247900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172640, -0.960720, -0.217283,
		-0.195886, 0.182701, -0.963457,
		0.965311, 0.208894, -0.156650,
		3.416509, 18.756836, 15.200905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.839396, 18.300932, 14.754593>,  <2.740792, 18.610611, 15.310560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.839396, 18.300932, 14.754593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.195832, 18.314659, 14.935604>,  <3.409693, 18.322895, 15.044210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.195832, 18.314659, 14.935604>,  <2.839396, 18.300932, 14.754593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.195832, 18.314659, 14.935604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151365, -0.962514, -0.225070,
		0.427841, 0.269054, -0.862880,
		0.891090, 0.034316, 0.452528,
		3.463159, 18.324953, 15.071362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.210557, 17.970728, 14.289159>,  <2.839396, 18.300932, 14.754593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.210557, 17.970728, 14.289159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.439556, 17.999052, 14.615896>,  <3.576955, 18.016047, 14.811938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.439556, 17.999052, 14.615896>,  <3.210557, 17.970728, 14.289159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.439556, 17.999052, 14.615896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290339, -0.949217, -0.121205,
		0.766779, 0.306551, -0.563983,
		0.572497, 0.070809, 0.816843,
		3.611305, 18.020294, 14.860950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.892371, 17.738047, 14.090388>,  <3.210557, 17.970728, 14.289159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.892371, 17.738047, 14.090388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.869755, 17.674417, 14.484647>,  <3.856185, 17.636240, 14.721202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.869755, 17.674417, 14.484647>,  <3.892371, 17.738047, 14.090388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.869755, 17.674417, 14.484647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344392, -0.929741, -0.130295,
		0.937122, 0.332081, 0.107353,
		-0.056542, -0.159074, 0.985646,
		3.852792, 17.626696, 14.780341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.480941, 17.428110, 14.282850>,  <3.892371, 17.738047, 14.090388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.480941, 17.428110, 14.282850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.271909, 17.341045, 14.612586>,  <4.146490, 17.288807, 14.810428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.271909, 17.341045, 14.612586>,  <4.480941, 17.428110, 14.282850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.271909, 17.341045, 14.612586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349559, -0.936562, -0.025693,
		0.777637, 0.274728, 0.565513,
		-0.522580, -0.217660, 0.824339,
		4.115135, 17.275747, 14.859888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.940352, 17.028460, 14.712494>,  <4.480941, 17.428110, 14.282850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.940352, 17.028460, 14.712494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.570398, 16.957874, 14.847222>,  <4.348425, 16.915524, 14.928060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.570398, 16.957874, 14.847222>,  <4.940352, 17.028460, 14.712494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.570398, 16.957874, 14.847222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193005, -0.981067, 0.015993,
		0.327621, 0.079800, 0.941433,
		-0.924886, -0.176462, 0.336820,
		4.292932, 16.904936, 14.948268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.686885, 16.910471, 14.618442>,  <4.940352, 17.028460, 14.712494>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.686885, 16.910471, 14.618442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.001153, 16.803631, 14.841647>,  <6.189714, 16.739527, 14.975571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.001153, 16.803631, 14.841647>,  <5.686885, 16.910471, 14.618442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.001153, 16.803631, 14.841647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183593, 0.760689, 0.622612,
		-0.590776, -0.591615, 0.548612,
		0.785670, -0.267102, 0.558013,
		6.236854, 16.723499, 15.009051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.493861, 17.022287, 15.333377>,  <5.686885, 16.910471, 14.618442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.493861, 17.022287, 15.333377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.890016, 16.982725, 15.372057>,  <6.127708, 16.958988, 15.395265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.890016, 16.982725, 15.372057>,  <5.493861, 17.022287, 15.333377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.890016, 16.982725, 15.372057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006964, 0.733862, 0.679263,
		-0.138146, -0.672060, 0.727496,
		0.990387, -0.098903, 0.096700,
		6.187132, 16.953054, 15.401067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.580863, 17.073681, 16.011711>,  <5.493861, 17.022287, 15.333377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.580863, 17.073681, 16.011711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.935794, 17.130713, 15.836293>,  <6.148752, 17.164932, 15.731042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.935794, 17.130713, 15.836293>,  <5.580863, 17.073681, 16.011711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.935794, 17.130713, 15.836293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215742, 0.712150, 0.668055,
		0.407561, -0.687396, 0.601150,
		0.887327, 0.142579, -0.438545,
		6.201992, 17.173487, 15.704730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.983642, 17.103403, 16.673716>,  <5.580863, 17.073681, 16.011711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.983642, 17.103403, 16.673716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.161263, 17.275162, 16.359154>,  <6.267835, 17.378218, 16.170416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.161263, 17.275162, 16.359154>,  <5.983642, 17.103403, 16.673716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.161263, 17.275162, 16.359154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236185, 0.790547, 0.565024,
		0.864311, -0.436637, 0.249627,
		0.444052, 0.429399, -0.786406,
		6.294478, 17.403982, 16.123232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.684023, 17.317604, 16.906689>,  <5.983642, 17.103403, 16.673716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.684023, 17.317604, 16.906689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.556785, 17.541122, 16.600340>,  <6.480442, 17.675234, 16.416531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.556785, 17.541122, 16.600340>,  <6.684023, 17.317604, 16.906689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.556785, 17.541122, 16.600340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133883, 0.826215, 0.547215,
		0.938558, 0.071529, -0.337628,
		-0.318095, 0.558795, -0.765874,
		6.461356, 17.708761, 16.370577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.170436, 17.814156, 16.969500>,  <6.684023, 17.317604, 16.906689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.170436, 17.814156, 16.969500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.864622, 17.947721, 16.748960>,  <6.681134, 18.027861, 16.616636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.864622, 17.947721, 16.748960>,  <7.170436, 17.814156, 16.969500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.864622, 17.947721, 16.748960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042996, 0.879874, 0.473257,
		0.643146, 0.338116, -0.687052,
		-0.764536, 0.333914, -0.551350,
		6.635262, 18.047895, 16.583555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.381977, 18.465698, 16.723927>,  <7.170436, 17.814156, 16.969500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.381977, 18.465698, 16.723927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.982984, 18.474920, 16.697094>,  <6.743588, 18.480453, 16.680994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.982984, 18.474920, 16.697094>,  <7.381977, 18.465698, 16.723927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.982984, 18.474920, 16.697094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012397, 0.874483, 0.484898,
		0.069842, 0.484508, -0.871995,
		-0.997481, 0.023056, -0.067082,
		6.683740, 18.481836, 16.676970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.145910, 19.143291, 16.562986>,  <7.381977, 18.465698, 16.723927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.145910, 19.143291, 16.562986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.830348, 18.974863, 16.742018>,  <6.641011, 18.873806, 16.849436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.830348, 18.974863, 16.742018>,  <7.145910, 19.143291, 16.562986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.830348, 18.974863, 16.742018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145437, 0.835587, 0.529757,
		-0.597056, 0.352834, -0.720439,
		-0.788906, -0.421073, 0.447577,
		6.593677, 18.848541, 16.876291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.631186, 19.669750, 16.558157>,  <7.145910, 19.143291, 16.562986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.631186, 19.669750, 16.558157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.519089, 19.425278, 16.854244>,  <6.451831, 19.278595, 17.031897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.519089, 19.425278, 16.854244>,  <6.631186, 19.669750, 16.558157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.519089, 19.425278, 16.854244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392518, 0.776663, 0.492670,
		-0.876011, -0.152482, -0.457553,
		-0.280241, -0.611182, 0.740217,
		6.435017, 19.241922, 17.076309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.065039, 20.039503, 16.820581>,  <6.631186, 19.669750, 16.558157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.065039, 20.039503, 16.820581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.156127, 19.763634, 17.095535>,  <6.210780, 19.598112, 17.260508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.156127, 19.763634, 17.095535>,  <6.065039, 20.039503, 16.820581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.156127, 19.763634, 17.095535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325516, 0.611397, 0.721272,
		-0.917705, -0.388002, -0.085272,
		0.227720, -0.689673, 0.687383,
		6.224443, 19.556732, 17.301750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.501993, 20.020098, 17.256424>,  <6.065039, 20.039503, 16.820581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.501993, 20.020098, 17.256424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.769835, 19.838663, 17.491673>,  <5.930540, 19.729803, 17.632822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.769835, 19.838663, 17.491673>,  <5.501993, 20.020098, 17.256424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.769835, 19.838663, 17.491673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316442, 0.542156, 0.778416,
		-0.671933, -0.707338, 0.219497,
		0.669605, -0.453585, 0.588124,
		5.970716, 19.702587, 17.668110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.122353, 19.815466, 17.804358>,  <5.501993, 20.020098, 17.256424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.122353, 19.815466, 17.804358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.503951, 19.826746, 17.923754>,  <5.732910, 19.833515, 17.995392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.503951, 19.826746, 17.923754>,  <5.122353, 19.815466, 17.804358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.503951, 19.826746, 17.923754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262036, 0.562243, 0.784359,
		-0.145705, -0.826491, 0.543767,
		0.953995, 0.028201, 0.298492,
		5.790150, 19.835207, 18.013302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.074588, 19.904310, 18.547543>,  <5.122353, 19.815466, 17.804358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.074588, 19.904310, 18.547543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.454529, 20.008656, 18.478569>,  <5.682493, 20.071262, 18.437185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.454529, 20.008656, 18.478569>,  <5.074588, 19.904310, 18.547543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.454529, 20.008656, 18.478569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081206, 0.738288, 0.669579,
		0.301973, -0.621998, 0.722448,
		0.949852, 0.260861, -0.172433,
		5.739484, 20.086914, 18.426840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.517807, 19.804722, 19.237827>,  <5.074588, 19.904310, 18.547543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.517807, 19.804722, 19.237827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.689047, 20.064915, 18.986876>,  <5.791791, 20.221031, 18.836304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.689047, 20.064915, 18.986876>,  <5.517807, 19.804722, 19.237827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.689047, 20.064915, 18.986876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023173, 0.701882, 0.711916,
		0.903434, -0.290233, 0.315549,
		0.428100, 0.650482, -0.627379,
		5.817477, 20.260059, 18.798662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.930802, 20.053593, 19.723104>,  <5.517807, 19.804722, 19.237827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.930802, 20.053593, 19.723104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.927627, 20.307941, 19.414402>,  <5.925722, 20.460550, 19.229181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.927627, 20.307941, 19.414402>,  <5.930802, 20.053593, 19.723104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.927627, 20.307941, 19.414402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000141, 0.771778, 0.635893,
		0.999968, 0.005157, -0.006037,
		-0.007938, 0.635872, -0.771754,
		5.925246, 20.498703, 19.182877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.534009, 20.556162, 19.727457>,  <5.930802, 20.053593, 19.723104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.534009, 20.556162, 19.727457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.199936, 20.699001, 19.560148>,  <5.999492, 20.784704, 19.459763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.199936, 20.699001, 19.560148>,  <6.534009, 20.556162, 19.727457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.199936, 20.699001, 19.560148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067964, 0.821715, 0.565831,
		0.545758, 0.444145, -0.710552,
		-0.835182, 0.357099, -0.418271,
		5.949381, 20.806131, 19.434668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.726634, 21.258509, 19.862806>,  <6.534009, 20.556162, 19.727457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.726634, 21.258509, 19.862806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.369738, 21.311459, 19.690117>,  <6.155601, 21.343229, 19.586504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.369738, 21.311459, 19.690117>,  <6.726634, 21.258509, 19.862806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.369738, 21.311459, 19.690117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039798, 0.929293, 0.367193,
		0.449804, 0.344806, -0.823884,
		-0.892240, 0.132376, -0.431723,
		6.102066, 21.351171, 19.560600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.630189, 21.846762, 19.508057>,  <6.726634, 21.258509, 19.862806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.630189, 21.846762, 19.508057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.242613, 21.766735, 19.566195>,  <6.010067, 21.718719, 19.601076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.242613, 21.766735, 19.566195>,  <6.630189, 21.846762, 19.508057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.242613, 21.766735, 19.566195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129814, 0.911769, 0.389649,
		-0.210476, 0.358680, -0.909422,
		-0.968942, -0.200068, 0.145344,
		5.951930, 21.706715, 19.609798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.312308, 22.376398, 19.241066>,  <6.630189, 21.846762, 19.508057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.312308, 22.376398, 19.241066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.038522, 22.223059, 19.489115>,  <5.874250, 22.131056, 19.637943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.038522, 22.223059, 19.489115>,  <6.312308, 22.376398, 19.241066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.038522, 22.223059, 19.489115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064823, 0.815225, 0.575505,
		-0.726158, 0.434111, -0.533144,
		-0.684465, -0.383348, 0.620123,
		5.833183, 22.108055, 19.675152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.722512, 22.783844, 19.452669>,  <6.312308, 22.376398, 19.241066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.722512, 22.783844, 19.452669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.780956, 22.533312, 19.758966>,  <5.816022, 22.382994, 19.942745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.780956, 22.533312, 19.758966>,  <5.722512, 22.783844, 19.452669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.780956, 22.533312, 19.758966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129459, 0.779500, 0.612879,
		-0.980761, 0.009585, 0.194976,
		0.146109, -0.626329, 0.765744,
		5.824789, 22.345413, 19.988689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.326027, 23.027031, 20.009470>,  <5.722512, 22.783844, 19.452669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.326027, 23.027031, 20.009470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.602886, 22.782333, 20.162676>,  <5.769001, 22.635515, 20.254601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.602886, 22.782333, 20.162676>,  <5.326027, 23.027031, 20.009470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.602886, 22.782333, 20.162676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164834, 0.650627, 0.741292,
		-0.702682, -0.449949, 0.551166,
		0.692147, -0.611744, 0.383017,
		5.810530, 22.598810, 20.277580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.048548, 17.950102, 27.371244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.658798, 17.992828, 27.292059>,  <18.424950, 18.018465, 27.244547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.658798, 17.992828, 27.292059>,  <19.048548, 17.950102, 27.371244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.658798, 17.992828, 27.292059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090353, 0.620093, 0.779308,
		0.205999, 0.777223, -0.594550,
		-0.974372, 0.106818, -0.197963,
		18.366488, 18.024874, 27.232670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.835205, 18.687153, 27.259972>,  <19.048548, 17.950102, 27.371244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.835205, 18.687153, 27.259972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.517689, 18.479918, 27.387394>,  <18.327179, 18.355576, 27.463848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.517689, 18.479918, 27.387394>,  <18.835205, 18.687153, 27.259972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.517689, 18.479918, 27.387394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226047, 0.737580, 0.636301,
		-0.564623, 0.433081, -0.702597,
		-0.793791, -0.518090, 0.318558,
		18.279551, 18.324492, 27.482962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.369574, 19.186319, 27.293161>,  <18.835205, 18.687153, 27.259972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.369574, 19.186319, 27.293161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.204403, 18.876043, 27.484074>,  <18.105301, 18.689878, 27.598621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.204403, 18.876043, 27.484074>,  <18.369574, 19.186319, 27.293161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.204403, 18.876043, 27.484074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485891, 0.630861, 0.604917,
		-0.770326, 0.017881, -0.637400,
		-0.412927, -0.775690, 0.477280,
		18.080524, 18.643337, 27.627258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.704481, 19.307402, 27.303505>,  <18.369574, 19.186319, 27.293161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.704481, 19.307402, 27.303505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.770102, 19.064049, 27.614107>,  <17.809475, 18.918037, 27.800468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.770102, 19.064049, 27.614107>,  <17.704481, 19.307402, 27.303505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.770102, 19.064049, 27.614107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360008, 0.695950, 0.621327,
		-0.918412, -0.381479, -0.104850,
		0.164053, -0.608381, 0.776504,
		17.819317, 18.881535, 27.847059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.073652, 19.300447, 27.644373>,  <17.704481, 19.307402, 27.303505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.073652, 19.300447, 27.644373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.333931, 19.199408, 27.930809>,  <17.490097, 19.138784, 28.102671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.333931, 19.199408, 27.930809>,  <17.073652, 19.300447, 27.644373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.333931, 19.199408, 27.930809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490993, 0.579416, 0.650541,
		-0.579242, -0.774901, 0.252998,
		0.650696, -0.252600, 0.716093,
		17.529140, 19.123627, 28.145638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.604031, 19.148199, 28.183279>,  <17.073652, 19.300447, 27.644373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.604031, 19.148199, 28.183279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.961483, 19.199451, 28.355330>,  <17.175955, 19.230204, 28.458559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.961483, 19.199451, 28.355330>,  <16.604031, 19.148199, 28.183279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.961483, 19.199451, 28.355330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448309, 0.299830, 0.842093,
		-0.021065, -0.945349, 0.325381,
		0.893630, 0.128133, 0.430124,
		17.229572, 19.237892, 28.484367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.460983, 18.744841, 28.729296>,  <16.604031, 19.148199, 28.183279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.460983, 18.744841, 28.729296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.763025, 18.998905, 28.794268>,  <16.944250, 19.151344, 28.833252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.763025, 18.998905, 28.794268>,  <16.460983, 18.744841, 28.729296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.763025, 18.998905, 28.794268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398806, 0.248368, 0.882761,
		0.520352, -0.731358, 0.440851,
		0.755108, 0.635161, 0.162431,
		16.989557, 19.189453, 28.842997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.692497, 18.581345, 29.428608>,  <16.460983, 18.744841, 28.729296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.692497, 18.581345, 29.428608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.823124, 18.950344, 29.346296>,  <16.901501, 19.171743, 29.296909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.823124, 18.950344, 29.346296>,  <16.692497, 18.581345, 29.428608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.823124, 18.950344, 29.346296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497336, 0.352853, 0.792560,
		0.803747, -0.156484, 0.574024,
		0.326569, 0.922501, -0.205779,
		16.921095, 19.227095, 29.284563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.854021, 18.786684, 30.090677>,  <16.692497, 18.581345, 29.428608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.854021, 18.786684, 30.090677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.782276, 19.106121, 29.860867>,  <16.739229, 19.297783, 29.722980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.782276, 19.106121, 29.860867>,  <16.854021, 18.786684, 30.090677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.782276, 19.106121, 29.860867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573956, 0.389361, 0.720397,
		0.799001, 0.458966, 0.388519,
		-0.179364, 0.798591, -0.574527,
		16.728466, 19.345699, 29.688509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.737698, 19.223085, 30.513487>,  <16.854021, 18.786684, 30.090677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.737698, 19.223085, 30.513487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.592363, 19.422022, 30.198364>,  <16.505163, 19.541384, 30.009291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.592363, 19.422022, 30.198364>,  <16.737698, 19.223085, 30.513487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.592363, 19.422022, 30.198364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612062, 0.510095, 0.604304,
		0.702401, 0.701752, 0.119067,
		-0.363336, 0.497340, -0.787807,
		16.483362, 19.571224, 29.962023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.672613, 19.874477, 30.778933>,  <16.737698, 19.223085, 30.513487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.672613, 19.874477, 30.778933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.407249, 19.834709, 30.482283>,  <16.248032, 19.810848, 30.304293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.407249, 19.834709, 30.482283>,  <16.672613, 19.874477, 30.778933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.407249, 19.834709, 30.482283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695570, 0.447279, 0.562249,
		0.275812, 0.888852, -0.365883,
		-0.663408, -0.099422, -0.741624,
		16.208227, 19.804882, 30.259796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.486904, 20.559311, 30.626402>,  <16.672613, 19.874477, 30.778933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.486904, 20.559311, 30.626402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.195837, 20.320993, 30.490442>,  <16.021196, 20.178003, 30.408867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.195837, 20.320993, 30.490442>,  <16.486904, 20.559311, 30.626402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.195837, 20.320993, 30.490442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659564, 0.471692, 0.585220,
		-0.188343, 0.650030, -0.736199,
		-0.727669, -0.595792, -0.339897,
		15.977536, 20.142256, 30.388474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.966472, 20.989630, 30.391924>,  <16.486904, 20.559311, 30.626402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.966472, 20.989630, 30.391924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.820330, 20.632540, 30.497419>,  <15.732644, 20.418285, 30.560717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.820330, 20.632540, 30.497419>,  <15.966472, 20.989630, 30.391924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.820330, 20.632540, 30.497419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648224, 0.447334, 0.616197,
		-0.668073, 0.054171, -0.742122,
		-0.365356, -0.892725, 0.263737,
		15.710723, 20.364723, 30.576540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.378717, 21.070276, 30.735945>,  <15.966472, 20.989630, 30.391924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.378717, 21.070276, 30.735945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.421349, 20.692543, 30.860443>,  <15.446927, 20.465902, 30.935143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.421349, 20.692543, 30.860443>,  <15.378717, 21.070276, 30.735945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.421349, 20.692543, 30.860443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567594, 0.199233, 0.798839,
		-0.816381, -0.261799, -0.514765,
		0.106577, -0.944335, 0.311245,
		15.453321, 20.409243, 30.953817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.830620, 21.603178, 31.142595>,  <15.378717, 21.070276, 30.735945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.830620, 21.603178, 31.142595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.542975, 21.846786, 31.008747>,  <14.370389, 21.992952, 30.928438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.542975, 21.846786, 31.008747>,  <14.830620, 21.603178, 31.142595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.542975, 21.846786, 31.008747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119919, -0.365556, -0.923032,
		-0.684470, -0.703889, 0.189842,
		-0.719110, 0.609022, -0.334622,
		14.327242, 22.029493, 30.908361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.373416, 21.269867, 30.717920>,  <14.830620, 21.603178, 31.142595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.373416, 21.269867, 30.717920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.314095, 21.651531, 30.613930>,  <14.278502, 21.880529, 30.551535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.314095, 21.651531, 30.613930>,  <14.373416, 21.269867, 30.717920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.314095, 21.651531, 30.613930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033285, -0.267551, -0.962969,
		-0.988382, -0.134157, 0.071438,
		-0.148302, 0.954158, -0.259977,
		14.269604, 21.937778, 30.535936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.804295, 21.183693, 30.281147>,  <14.373416, 21.269867, 30.717920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.804295, 21.183693, 30.281147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.941704, 21.543829, 30.174278>,  <14.024149, 21.759911, 30.110157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.941704, 21.543829, 30.174278>,  <13.804295, 21.183693, 30.281147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.941704, 21.543829, 30.174278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110760, -0.321337, -0.940465,
		-0.932590, 0.293479, -0.210108,
		0.343522, 0.900340, -0.267170,
		14.044761, 21.813931, 30.094128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.616134, 21.308001, 29.620365>,  <13.804295, 21.183693, 30.281147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.616134, 21.308001, 29.620365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.908360, 21.578531, 29.658005>,  <14.083696, 21.740850, 29.680588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.908360, 21.578531, 29.658005>,  <13.616134, 21.308001, 29.620365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.908360, 21.578531, 29.658005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251130, -0.137971, -0.958070,
		-0.634986, 0.723564, -0.270643,
		0.730566, 0.676327, 0.094099,
		14.127530, 21.781429, 29.686234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.525362, 21.924898, 29.060028>,  <13.616134, 21.308001, 29.620365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.525362, 21.924898, 29.060028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.903807, 21.841043, 29.158760>,  <14.130874, 21.790730, 29.217999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.903807, 21.841043, 29.158760>,  <13.525362, 21.924898, 29.060028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.903807, 21.841043, 29.158760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206121, -0.198038, -0.958277,
		0.249772, 0.957514, -0.144155,
		0.946112, -0.209638, 0.246828,
		14.187640, 21.778152, 29.232809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.890193, 22.150566, 28.457579>,  <13.525362, 21.924898, 29.060028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.890193, 22.150566, 28.457579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.160482, 21.948265, 28.672096>,  <14.322656, 21.826885, 28.800808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.160482, 21.948265, 28.672096>,  <13.890193, 22.150566, 28.457579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.160482, 21.948265, 28.672096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351376, -0.418569, -0.837457,
		0.648022, 0.754331, -0.105128,
		0.675724, -0.505751, 0.536296,
		14.363199, 21.796539, 28.832985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.508767, 22.304777, 28.105083>,  <13.890193, 22.150566, 28.457579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.508767, 22.304777, 28.105083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.586507, 21.982882, 28.329449>,  <14.633151, 21.789743, 28.464067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.586507, 21.982882, 28.329449>,  <14.508767, 22.304777, 28.105083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.586507, 21.982882, 28.329449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441885, -0.438686, -0.782491,
		0.875766, 0.399936, 0.270344,
		0.194350, -0.804740, 0.560912,
		14.644812, 21.741459, 28.497723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.144249, 22.102842, 27.949045>,  <14.508767, 22.304777, 28.105083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.144249, 22.102842, 27.949045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.995127, 21.752747, 28.072317>,  <14.905653, 21.542690, 28.146280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.995127, 21.752747, 28.072317>,  <15.144249, 22.102842, 27.949045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.995127, 21.752747, 28.072317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404736, -0.452243, -0.794773,
		0.834988, -0.171565, 0.522839,
		-0.372806, -0.875238, 0.308179,
		14.883285, 21.490175, 28.164770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.719603, 21.510588, 27.882742>,  <15.144249, 22.102842, 27.949045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.719603, 21.510588, 27.882742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.353930, 21.349131, 27.897425>,  <15.134527, 21.252256, 27.906235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.353930, 21.349131, 27.897425>,  <15.719603, 21.510588, 27.882742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.353930, 21.349131, 27.897425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273091, -0.680351, -0.680105,
		0.299494, -0.611714, 0.732195,
		-0.914180, -0.403643, 0.036707,
		15.079677, 21.228037, 27.908438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916944, 20.853214, 27.745066>,  <15.719603, 21.510588, 27.882742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.916944, 20.853214, 27.745066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.520584, 20.856295, 27.691307>,  <15.282768, 20.858143, 27.659052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.520584, 20.856295, 27.691307>,  <15.916944, 20.853214, 27.745066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520584, 20.856295, 27.691307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088446, -0.715384, -0.693111,
		-0.101481, -0.698689, 0.708192,
		-0.990898, 0.007701, -0.134394,
		15.223314, 20.858604, 27.650990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.758038, 20.169538, 27.826777>,  <15.916944, 20.853214, 27.745066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.758038, 20.169538, 27.826777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.466696, 20.347296, 27.618156>,  <15.291891, 20.453949, 27.492985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.466696, 20.347296, 27.618156>,  <15.758038, 20.169538, 27.826777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.466696, 20.347296, 27.618156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162313, -0.627601, -0.761427,
		-0.665703, -0.639240, 0.384982,
		-0.728350, 0.444397, -0.521553,
		15.248189, 20.480614, 27.461691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.478683, 19.662479, 27.593592>,  <15.758038, 20.169538, 27.826777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.478683, 19.662479, 27.593592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.305073, 19.936399, 27.359438>,  <15.200907, 20.100752, 27.218946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.305073, 19.936399, 27.359438>,  <15.478683, 19.662479, 27.593592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.305073, 19.936399, 27.359438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145890, -0.587772, -0.795764,
		-0.889010, -0.430783, 0.155203,
		-0.434025, 0.684799, -0.585382,
		15.174866, 20.141840, 27.183823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.023232, 19.332376, 27.116423>,  <15.478683, 19.662479, 27.593592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.023232, 19.332376, 27.116423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.138383, 19.682066, 26.960035>,  <15.207474, 19.891880, 26.866203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.138383, 19.682066, 26.960035>,  <15.023232, 19.332376, 27.116423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.138383, 19.682066, 26.960035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194051, -0.453032, -0.870119,
		-0.937801, 0.174619, -0.300061,
		0.287877, 0.874225, -0.390969,
		15.224746, 19.944334, 26.842745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.770367, 19.316963, 26.461288>,  <15.023232, 19.332376, 27.116423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.770367, 19.316963, 26.461288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.040912, 19.609501, 26.426260>,  <15.203239, 19.785023, 26.405243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.040912, 19.609501, 26.426260>,  <14.770367, 19.316963, 26.461288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.040912, 19.609501, 26.426260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223801, -0.317321, -0.921531,
		-0.701744, 0.603692, -0.378300,
		0.676364, 0.731344, -0.087572,
		15.243821, 19.828903, 26.399988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.018179, 19.749166, 26.640951>,  <14.770367, 19.316963, 26.461288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.018179, 19.749166, 26.640951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.628755, 19.720942, 26.554050>,  <13.395100, 19.704006, 26.501909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.628755, 19.720942, 26.554050>,  <14.018179, 19.749166, 26.640951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.628755, 19.720942, 26.554050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227193, 0.200576, 0.952970,
		-0.023667, 0.977134, -0.211305,
		-0.973562, -0.070561, -0.217251,
		13.336686, 19.699774, 26.488874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.610309, 20.432449, 26.877569>,  <14.018179, 19.749166, 26.640951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.610309, 20.432449, 26.877569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.339774, 20.139038, 26.850723>,  <13.177453, 19.962992, 26.834616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.339774, 20.139038, 26.850723>,  <13.610309, 20.432449, 26.877569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.339774, 20.139038, 26.850723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380119, 0.269525, 0.884797,
		-0.630934, 0.623933, -0.461118,
		-0.676337, -0.733528, -0.067116,
		13.136873, 19.918980, 26.830587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.030014, 20.736113, 27.052244>,  <13.610309, 20.432449, 26.877569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.030014, 20.736113, 27.052244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.975570, 20.349562, 27.139507>,  <12.942904, 20.117632, 27.191864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.975570, 20.349562, 27.139507>,  <13.030014, 20.736113, 27.052244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.975570, 20.349562, 27.139507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330545, 0.251885, 0.909557,
		-0.933924, 0.051689, -0.353715,
		-0.136110, -0.966376, 0.218156,
		12.934737, 20.059649, 27.204954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.279633, 20.618940, 27.199051>,  <13.030014, 20.736113, 27.052244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.279633, 20.618940, 27.199051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.475269, 20.322742, 27.383421>,  <12.592651, 20.145023, 27.494043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.475269, 20.322742, 27.383421>,  <12.279633, 20.618940, 27.199051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.475269, 20.322742, 27.383421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613581, 0.083488, 0.785205,
		-0.619924, -0.666854, -0.413522,
		0.489093, -0.740497, 0.460926,
		12.621997, 20.100594, 27.521698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.736171, 20.220171, 27.462803>,  <12.279633, 20.618940, 27.199051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.736171, 20.220171, 27.462803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.045457, 20.110497, 27.691525>,  <12.231029, 20.044693, 27.828758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.045457, 20.110497, 27.691525>,  <11.736171, 20.220171, 27.462803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.045457, 20.110497, 27.691525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567343, 0.103735, 0.816921,
		-0.283305, -0.956065, -0.075349,
		0.773214, -0.274186, 0.571806,
		12.277421, 20.028240, 27.863066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.521851, 19.783718, 27.923918>,  <11.736171, 20.220171, 27.462803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.521851, 19.783718, 27.923918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.854030, 19.917345, 28.102245>,  <12.053337, 19.997520, 28.209242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.854030, 19.917345, 28.102245>,  <11.521851, 19.783718, 27.923918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.854030, 19.917345, 28.102245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515675, 0.158151, 0.842062,
		0.210803, -0.929184, 0.303609,
		0.830446, 0.334073, 0.445818,
		12.103164, 20.017565, 28.235991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.514145, 19.455112, 28.589140>,  <11.521851, 19.783718, 27.923918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.514145, 19.455112, 28.589140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.780948, 19.749302, 28.636770>,  <11.941030, 19.925816, 28.665348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.780948, 19.749302, 28.636770>,  <11.514145, 19.455112, 28.589140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.780948, 19.749302, 28.636770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437340, 0.257105, 0.861760,
		0.603188, -0.626877, 0.493143,
		0.667007, 0.735475, 0.119076,
		11.981050, 19.969944, 28.672493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.542581, 18.776535, 28.864605>,  <11.514145, 19.455112, 28.589140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.542581, 18.776535, 28.864605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.314970, 18.451885, 28.917482>,  <11.178404, 18.257095, 28.949209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.314970, 18.451885, 28.917482>,  <11.542581, 18.776535, 28.864605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.314970, 18.451885, 28.917482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102077, -0.229230, -0.968005,
		0.815960, -0.537325, 0.213286,
		-0.569025, -0.811625, 0.132194,
		11.144262, 18.208397, 28.957140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.701385, 18.544107, 28.282671>,  <11.542581, 18.776535, 28.864605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.701385, 18.544107, 28.282671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.418114, 18.294037, 28.413904>,  <11.248151, 18.143995, 28.492643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.418114, 18.294037, 28.413904>,  <11.701385, 18.544107, 28.282671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.418114, 18.294037, 28.413904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224649, -0.241008, -0.944165,
		0.669341, -0.742340, 0.030231,
		-0.708177, -0.625177, 0.328082,
		11.205660, 18.106483, 28.512329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.755836, 17.932735, 27.954567>,  <11.701385, 18.544107, 28.282671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.755836, 17.932735, 27.954567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.378361, 17.885952, 28.078356>,  <11.151875, 17.857882, 28.152628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.378361, 17.885952, 28.078356>,  <11.755836, 17.932735, 27.954567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.378361, 17.885952, 28.078356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202660, -0.535007, -0.820181,
		0.261496, -0.836713, 0.481177,
		-0.943689, -0.116959, 0.309470,
		11.095254, 17.850864, 28.171196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.512688, 17.164492, 27.838711>,  <11.755836, 17.932735, 27.954567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.512688, 17.164492, 27.838711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.191938, 17.402584, 27.859484>,  <10.999489, 17.545441, 27.871948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.191938, 17.402584, 27.859484>,  <11.512688, 17.164492, 27.838711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.191938, 17.402584, 27.859484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396577, -0.465206, -0.791397,
		-0.446893, -0.655206, 0.609091,
		-0.801881, 0.595221, 0.051942,
		10.951376, 17.581154, 27.875065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.913721, 16.805935, 27.605743>,  <11.512688, 17.164492, 27.838711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.913721, 16.805935, 27.605743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.823779, 17.190023, 27.539509>,  <10.769814, 17.420477, 27.499767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.823779, 17.190023, 27.539509>,  <10.913721, 16.805935, 27.605743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.823779, 17.190023, 27.539509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470971, -0.255872, -0.844225,
		-0.853010, -0.111842, 0.509770,
		-0.224855, 0.960219, -0.165588,
		10.756323, 17.478088, 27.489832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.411551, 16.775021, 27.052334>,  <10.913721, 16.805935, 27.605743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.411551, 16.775021, 27.052334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.517087, 17.160505, 27.036081>,  <10.580408, 17.391796, 27.026331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.517087, 17.160505, 27.036081>,  <10.411551, 16.775021, 27.052334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.517087, 17.160505, 27.036081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214219, 0.017473, -0.976630,
		-0.940478, 0.266377, 0.211055,
		0.263839, 0.963711, -0.040630,
		10.596239, 17.449619, 27.023893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.809519, 17.204086, 26.840706>,  <10.411551, 16.775021, 27.052334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.809519, 17.204086, 26.840706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.146426, 17.402420, 26.756104>,  <10.348571, 17.521420, 26.705343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.146426, 17.402420, 26.756104>,  <9.809519, 17.204086, 26.840706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.146426, 17.402420, 26.756104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225859, -0.031656, -0.973646,
		-0.489460, 0.867841, 0.085325,
		0.842268, 0.495833, -0.211504,
		10.399107, 17.551170, 26.692652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<12.944512, 17.538998, 30.411287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.908704, 17.828476, 30.685003>,  <12.887218, 18.002163, 30.849234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.908704, 17.828476, 30.685003>,  <12.944512, 17.538998, 30.411287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.908704, 17.828476, 30.685003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863826, 0.285576, -0.415031,
		-0.495772, -0.628262, 0.599580,
		-0.089522, 0.723694, 0.684290,
		12.881847, 18.045584, 30.890291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.507140, 17.785341, 30.521864>,  <12.944512, 17.538998, 30.411287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.507140, 17.785341, 30.521864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.762998, 18.089104, 30.474272>,  <13.916512, 18.271362, 30.445717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.762998, 18.089104, 30.474272>,  <13.507140, 17.785341, 30.521864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.762998, 18.089104, 30.474272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407363, -0.466159, -0.785335,
		-0.651853, 0.453867, -0.607530,
		0.639644, 0.759408, -0.118978,
		13.954890, 18.316927, 30.438578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.440832, 18.141226, 29.767506>,  <13.507140, 17.785341, 30.521864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.440832, 18.141226, 29.767506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.802408, 18.125111, 29.937809>,  <14.019354, 18.115440, 30.039991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.802408, 18.125111, 29.937809>,  <13.440832, 18.141226, 29.767506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.802408, 18.125111, 29.937809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341188, -0.532299, -0.774757,
		0.257846, 0.845597, -0.467420,
		0.903939, -0.040290, 0.425759,
		14.073590, 18.113024, 30.065536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.840171, 18.325243, 29.260941>,  <13.440832, 18.141226, 29.767506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.840171, 18.325243, 29.260941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.114229, 18.161018, 29.501610>,  <14.278665, 18.062483, 29.646011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.114229, 18.161018, 29.501610>,  <13.840171, 18.325243, 29.260941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.114229, 18.161018, 29.501610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346006, -0.543432, -0.764828,
		0.640979, 0.732202, -0.230273,
		0.685146, -0.410563, 0.601675,
		14.319773, 18.037849, 29.682112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.518577, 18.498423, 29.000669>,  <13.840171, 18.325243, 29.260941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.518577, 18.498423, 29.000669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.569870, 18.172089, 29.226223>,  <14.600646, 17.976288, 29.361555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.569870, 18.172089, 29.226223>,  <14.518577, 18.498423, 29.000669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.569870, 18.172089, 29.226223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310436, -0.506986, -0.804111,
		0.941905, 0.278165, 0.188252,
		0.128234, -0.815837, 0.563885,
		14.608340, 17.927338, 29.395388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.261852, 18.243382, 28.954529>,  <14.518577, 18.498423, 29.000669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.261852, 18.243382, 28.954529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.010284, 17.947296, 29.049646>,  <14.859344, 17.769646, 29.106716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.010284, 17.947296, 29.049646>,  <15.261852, 18.243382, 28.954529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.010284, 17.947296, 29.049646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288486, -0.506201, -0.812734,
		0.721967, -0.442545, 0.531900,
		-0.628920, -0.740213, 0.237793,
		14.821609, 17.725233, 29.120985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.548969, 17.740747, 28.590494>,  <15.261852, 18.243382, 28.954529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.548969, 17.740747, 28.590494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.208878, 17.568995, 28.712309>,  <15.004823, 17.465942, 28.785398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.208878, 17.568995, 28.712309>,  <15.548969, 17.740747, 28.590494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.208878, 17.568995, 28.712309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080543, -0.677811, -0.730812,
		0.520216, -0.596828, 0.610877,
		-0.850228, -0.429382, 0.304538,
		14.953809, 17.440180, 28.803671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.675316, 17.003101, 28.480494>,  <15.548969, 17.740747, 28.590494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.675316, 17.003101, 28.480494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.276651, 17.032427, 28.494871>,  <15.037453, 17.050022, 28.503498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.276651, 17.032427, 28.494871>,  <15.675316, 17.003101, 28.480494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.276651, 17.032427, 28.494871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072718, -0.596773, -0.799108,
		-0.037136, -0.799054, 0.600112,
		-0.996661, 0.073315, 0.035943,
		14.977654, 17.054420, 28.505653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.447716, 16.330748, 28.479656>,  <15.675316, 17.003101, 28.480494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.447716, 16.330748, 28.479656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.147613, 16.564714, 28.356377>,  <14.967551, 16.705095, 28.282410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.147613, 16.564714, 28.356377>,  <15.447716, 16.330748, 28.479656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.147613, 16.564714, 28.356377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156397, -0.609941, -0.776861,
		-0.642388, -0.534639, 0.549089,
		-0.750251, 0.584922, -0.308202,
		14.922536, 16.740191, 28.263918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981311, 15.845869, 28.276455>,  <15.447716, 16.330748, 28.479656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.981311, 15.845869, 28.276455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.859138, 16.183084, 28.099369>,  <14.785835, 16.385414, 27.993118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.859138, 16.183084, 28.099369>,  <14.981311, 15.845869, 28.276455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.859138, 16.183084, 28.099369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325212, -0.529330, -0.783611,
		-0.894958, -0.095362, 0.435840,
		-0.305430, 0.843040, -0.442715,
		14.767509, 16.435997, 27.966555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.202516, 15.794656, 27.990351>,  <14.981311, 15.845869, 28.276455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.202516, 15.794656, 27.990351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.431582, 16.057301, 27.794020>,  <14.569023, 16.214888, 27.676220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.431582, 16.057301, 27.794020>,  <14.202516, 15.794656, 27.990351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.431582, 16.057301, 27.794020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261252, -0.421338, -0.868460,
		-0.777045, 0.625569, -0.069746,
		0.572668, 0.656611, -0.490829,
		14.603383, 16.254284, 27.646770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.851785, 15.910504, 27.383768>,  <14.202516, 15.794656, 27.990351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.851785, 15.910504, 27.383768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.215925, 16.043619, 27.285370>,  <14.434409, 16.123487, 27.226332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.215925, 16.043619, 27.285370>,  <13.851785, 15.910504, 27.383768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.215925, 16.043619, 27.285370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157075, -0.272080, -0.949368,
		-0.382868, 0.902898, -0.195416,
		0.910351, 0.332788, -0.245993,
		14.489031, 16.143456, 27.211573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.570972, 15.259445, 27.576614>,  <13.851785, 15.910504, 27.383768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.570972, 15.259445, 27.576614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.467891, 14.893976, 27.702339>,  <13.406041, 14.674695, 27.777775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.467891, 14.893976, 27.702339>,  <13.570972, 15.259445, 27.576614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.467891, 14.893976, 27.702339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134958, 0.356148, 0.924632,
		-0.956752, 0.195864, -0.215088,
		-0.257705, -0.913672, 0.314312,
		13.390579, 14.619875, 27.796633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.920296, 15.342117, 27.931854>,  <13.570972, 15.259445, 27.576614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.920296, 15.342117, 27.931854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.092093, 15.001379, 28.051785>,  <13.195172, 14.796936, 28.123743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.092093, 15.001379, 28.051785>,  <12.920296, 15.342117, 27.931854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.092093, 15.001379, 28.051785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265759, 0.198080, 0.943470,
		-0.863080, -0.484897, -0.141311,
		0.429495, -0.851845, 0.299824,
		13.220942, 14.745826, 28.141731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.499811, 15.117948, 28.378063>,  <12.920296, 15.342117, 27.931854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.499811, 15.117948, 28.378063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.840748, 14.925680, 28.460499>,  <13.045310, 14.810320, 28.509960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.840748, 14.925680, 28.460499>,  <12.499811, 15.117948, 28.378063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.840748, 14.925680, 28.460499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127328, 0.191482, 0.973202,
		-0.507249, -0.855741, 0.102006,
		0.852341, -0.480668, 0.206089,
		13.096451, 14.781480, 28.522326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.311927, 14.765520, 28.926285>,  <12.499811, 15.117948, 28.378063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.311927, 14.765520, 28.926285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.711759, 14.761254, 28.937061>,  <12.951658, 14.758695, 28.943527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.711759, 14.761254, 28.937061>,  <12.311927, 14.765520, 28.926285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.711759, 14.761254, 28.937061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024744, 0.169685, 0.985188,
		-0.015078, -0.985441, 0.169350,
		0.999580, -0.010664, 0.026942,
		13.011633, 14.758056, 28.945145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.471107, 14.391823, 29.640659>,  <12.311927, 14.765520, 28.926285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.471107, 14.391823, 29.640659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.816780, 14.558209, 29.527411>,  <13.024184, 14.658042, 29.459461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.816780, 14.558209, 29.527411>,  <12.471107, 14.391823, 29.640659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.816780, 14.558209, 29.527411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210966, 0.211300, 0.954382,
		0.456816, -0.884490, 0.094847,
		0.864183, 0.415968, -0.283122,
		13.076035, 14.683000, 29.442474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.125153, 14.079906, 29.965820>,  <12.471107, 14.391823, 29.640659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.125153, 14.079906, 29.965820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.250093, 14.446679, 29.866484>,  <13.325058, 14.666742, 29.806881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.250093, 14.446679, 29.866484>,  <13.125153, 14.079906, 29.965820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.250093, 14.446679, 29.866484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022892, 0.254081, 0.966912,
		0.949691, -0.307702, 0.058372,
		0.312352, 0.916931, -0.248342,
		13.343799, 14.721759, 29.791981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.577320, 14.374209, 30.576124>,  <13.125153, 14.079906, 29.965820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.577320, 14.374209, 30.576124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.479340, 14.685719, 30.345123>,  <13.420551, 14.872625, 30.206524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.479340, 14.685719, 30.345123>,  <13.577320, 14.374209, 30.576124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.479340, 14.685719, 30.345123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012043, 0.593158, 0.804996,
		0.969460, 0.204140, -0.135917,
		-0.244952, 0.778775, -0.577501,
		13.405854, 14.919352, 30.171873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.092742, 14.926683, 30.734634>,  <13.577320, 14.374209, 30.576124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.092742, 14.926683, 30.734634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.791806, 15.138937, 30.578474>,  <13.611245, 15.266290, 30.484777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.791806, 15.138937, 30.578474>,  <14.092742, 14.926683, 30.734634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.791806, 15.138937, 30.578474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071498, 0.654884, 0.752339,
		0.654884, 0.538102, -0.530635,
		-0.752339, 0.530635, -0.390400,
		13.566104, 15.298127, 30.461353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.309244, 15.624862, 30.749268>,  <14.092742, 14.926683, 30.734634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.309244, 15.624862, 30.749268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.909337, 15.630890, 30.743099>,  <13.669393, 15.634506, 30.739397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.909337, 15.630890, 30.743099>,  <14.309244, 15.624862, 30.749268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.909337, 15.630890, 30.743099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005871, 0.497988, 0.867164,
		0.020748, 0.867053, -0.497784,
		-0.999767, 0.015069, -0.015422,
		13.609406, 15.635410, 30.738472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.278671, 16.223083, 30.943075>,  <14.309244, 15.624862, 30.749268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.278671, 16.223083, 30.943075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.913867, 16.065166, 30.987570>,  <13.694984, 15.970416, 31.014267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.913867, 16.065166, 30.987570>,  <14.278671, 16.223083, 30.943075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.913867, 16.065166, 30.987570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182648, 0.633728, 0.751684,
		-0.367254, 0.665227, -0.650075,
		-0.912011, -0.394794, 0.111237,
		13.640264, 15.946728, 31.020941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.787771, 16.847805, 31.023722>,  <14.278671, 16.223083, 30.943075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.787771, 16.847805, 31.023722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.594984, 16.527985, 31.167068>,  <13.479312, 16.336092, 31.253077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.594984, 16.527985, 31.167068>,  <13.787771, 16.847805, 31.023722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.594984, 16.527985, 31.167068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242825, 0.514874, 0.822156,
		-0.841869, 0.309232, -0.442304,
		-0.481968, -0.799550, 0.358367,
		13.450394, 16.288120, 31.274578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.142957, 17.050266, 31.346476>,  <13.787771, 16.847805, 31.023722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.142957, 17.050266, 31.346476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.240143, 16.711077, 31.534904>,  <13.298454, 16.507563, 31.647963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.240143, 16.711077, 31.534904>,  <13.142957, 17.050266, 31.346476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.240143, 16.711077, 31.534904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184163, 0.436469, 0.880669,
		-0.952393, -0.300726, -0.050118,
		0.242965, -0.847973, 0.471073,
		13.313032, 16.456684, 31.676226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.606012, 16.806870, 31.652695>,  <13.142957, 17.050266, 31.346476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.606012, 16.806870, 31.652695> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.926745, 16.670607, 31.849068>,  <13.119185, 16.588848, 31.966892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.926745, 16.670607, 31.849068>,  <12.606012, 16.806870, 31.652695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.926745, 16.670607, 31.849068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315123, 0.456983, 0.831784,
		-0.507703, -0.821656, 0.259074,
		0.801832, -0.340659, 0.490934,
		13.167295, 16.568409, 31.996347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.273253, 16.604984, 32.304790>,  <12.606012, 16.806870, 31.652695>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.273253, 16.604984, 32.304790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.665944, 16.604151, 32.380905>,  <12.901559, 16.603651, 32.426575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.665944, 16.604151, 32.380905>,  <12.273253, 16.604984, 32.304790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.665944, 16.604151, 32.380905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172354, 0.414148, 0.893743,
		-0.080669, -0.910207, 0.406221,
		0.981727, -0.002084, 0.190287,
		12.960462, 16.603525, 32.437992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.052066, 17.205057, 31.838932>,  <12.273253, 16.604984, 32.304790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.052066, 17.205057, 31.838932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.762400, 17.480898, 31.841276>,  <11.588600, 17.646402, 31.842682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.762400, 17.480898, 31.841276>,  <12.052066, 17.205057, 31.838932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.762400, 17.480898, 31.841276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104646, -0.101484, -0.989318,
		-0.681641, -0.717043, 0.145655,
		-0.724165, 0.689602, 0.005860,
		11.545150, 17.687778, 31.843035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.552018, 16.914726, 31.403172>,  <12.052066, 17.205057, 31.838932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.552018, 16.914726, 31.403172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.453684, 17.302244, 31.415850>,  <11.394683, 17.534754, 31.423456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.453684, 17.302244, 31.415850>,  <11.552018, 16.914726, 31.403172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.453684, 17.302244, 31.415850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013183, 0.036039, -0.999263,
		-0.969222, -0.245237, -0.021631,
		-0.245836, 0.968793, 0.031697,
		11.379933, 17.592882, 31.425358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.088654, 16.916815, 30.882959>,  <11.552018, 16.914726, 31.403172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.088654, 16.916815, 30.882959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.172777, 17.301138, 30.955200>,  <11.223251, 17.531733, 30.998545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.172777, 17.301138, 30.955200>,  <11.088654, 16.916815, 30.882959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.172777, 17.301138, 30.955200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202141, 0.223476, -0.953519,
		-0.956509, 0.164027, 0.241218,
		0.210309, 0.960809, 0.180600,
		11.235870, 17.589380, 31.009380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.486958, 17.413536, 30.709818>,  <11.088654, 16.916815, 30.882959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.486958, 17.413536, 30.709818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.825290, 17.619881, 30.655472>,  <11.028289, 17.743687, 30.622864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.825290, 17.619881, 30.655472>,  <10.486958, 17.413536, 30.709818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.825290, 17.619881, 30.655472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295070, 0.240246, -0.924779,
		-0.444416, 0.822295, 0.355423,
		0.845830, 0.515861, -0.135866,
		11.079039, 17.774639, 30.614712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.288922, 18.101261, 30.268776>,  <10.486958, 17.413536, 30.709818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.288922, 18.101261, 30.268776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.686571, 18.071459, 30.237360>,  <10.925160, 18.053577, 30.218512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.686571, 18.071459, 30.237360>,  <10.288922, 18.101261, 30.268776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.686571, 18.071459, 30.237360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057034, 0.256174, -0.964947,
		0.092015, 0.963755, 0.250419,
		0.994123, -0.074507, -0.078539,
		10.984808, 18.049107, 30.213799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.535047, 18.656013, 29.901779>,  <10.288922, 18.101261, 30.268776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.535047, 18.656013, 29.901779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.828206, 18.388191, 29.853523>,  <11.004102, 18.227499, 29.824570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.828206, 18.388191, 29.853523>,  <10.535047, 18.656013, 29.901779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.828206, 18.388191, 29.853523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033948, 0.213097, -0.976441,
		0.679489, 0.711538, 0.178908,
		0.732900, -0.669555, -0.120642,
		11.048076, 18.187325, 29.817331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.014144, 18.945614, 29.468100>,  <10.535047, 18.656013, 29.901779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.014144, 18.945614, 29.468100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.067861, 18.550163, 29.441021>,  <11.100091, 18.312893, 29.424774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.067861, 18.550163, 29.441021>,  <11.014144, 18.945614, 29.468100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.067861, 18.550163, 29.441021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100230, 0.081518, -0.991619,
		0.985860, 0.126381, 0.110037,
		0.134292, -0.988627, -0.067698,
		11.108148, 18.253574, 29.420712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.571242, 19.507896, 29.331766>,  <11.014144, 18.945614, 29.468100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.571242, 19.507896, 29.331766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.759477, 19.838610, 29.208494>,  <11.872417, 20.037039, 29.134531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.759477, 19.838610, 29.208494>,  <11.571242, 19.507896, 29.331766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.759477, 19.838610, 29.208494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118254, 0.405218, 0.906540,
		0.874394, -0.390160, 0.288460,
		0.470585, 0.826785, -0.308182,
		11.900652, 20.086645, 29.116039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.074744, 19.710770, 29.945972>,  <11.571242, 19.507896, 29.331766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.074744, 19.710770, 29.945972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.994171, 20.027588, 29.715464>,  <11.945827, 20.217678, 29.577158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.994171, 20.027588, 29.715464>,  <12.074744, 19.710770, 29.945972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.994171, 20.027588, 29.715464> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069505, 0.575290, 0.814991,
		0.977033, 0.204220, -0.060832,
		-0.201434, 0.792045, -0.576271,
		11.933742, 20.265202, 29.542582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.400876, 20.243010, 30.254314>,  <12.074744, 19.710770, 29.945972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.400876, 20.243010, 30.254314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.116076, 20.427067, 30.042154>,  <11.945197, 20.537502, 29.914858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.116076, 20.427067, 30.042154>,  <12.400876, 20.243010, 30.254314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.116076, 20.427067, 30.042154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190481, 0.600472, 0.776628,
		0.675852, 0.653989, -0.339886,
		-0.711998, 0.460144, -0.530402,
		11.902477, 20.565109, 29.883034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.375533, 20.914627, 30.511589>,  <12.400876, 20.243010, 30.254314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.375533, 20.914627, 30.511589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.034523, 20.932224, 30.303257>,  <11.829917, 20.942783, 30.178257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.034523, 20.932224, 30.303257>,  <12.375533, 20.914627, 30.511589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.034523, 20.932224, 30.303257> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329219, 0.728756, 0.600441,
		0.405974, 0.683359, -0.606800,
		-0.852525, 0.043994, -0.520831,
		11.778766, 20.945423, 30.147007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.312756, 21.607170, 30.393969>,  <12.375533, 20.914627, 30.511589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.312756, 21.607170, 30.393969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.949928, 21.445139, 30.348124>,  <11.732232, 21.347919, 30.320616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.949928, 21.445139, 30.348124>,  <12.312756, 21.607170, 30.393969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.949928, 21.445139, 30.348124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406461, 0.771810, 0.488977,
		-0.109614, 0.490123, -0.864734,
		-0.907069, -0.405079, -0.114615,
		11.677808, 21.323616, 30.313740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.901568, 22.135002, 30.077955>,  <12.312756, 21.607170, 30.393969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.901568, 22.135002, 30.077955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.660101, 21.898026, 30.291348>,  <11.515221, 21.755840, 30.419382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.660101, 21.898026, 30.291348>,  <11.901568, 22.135002, 30.077955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.660101, 21.898026, 30.291348> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219114, 0.766684, 0.603476,
		-0.766533, 0.247407, -0.592636,
		-0.603669, -0.592439, 0.533478,
		11.479000, 21.720293, 30.451391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.222923, 22.482420, 30.230721>,  <11.901568, 22.135002, 30.077955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.222923, 22.482420, 30.230721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.274255, 22.196011, 30.505192>,  <11.305054, 22.024164, 30.669874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.274255, 22.196011, 30.505192>,  <11.222923, 22.482420, 30.230721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.274255, 22.196011, 30.505192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011503, 0.692927, 0.720916,
		-0.991665, -0.084622, 0.097159,
		0.128329, -0.716025, 0.686178,
		11.312754, 21.981203, 30.711044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.844411, 22.734678, 30.745720>,  <11.222923, 22.482420, 30.230721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.844411, 22.734678, 30.745720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.064200, 22.462086, 30.939075>,  <11.196074, 22.298531, 31.055088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.064200, 22.462086, 30.939075>,  <10.844411, 22.734678, 30.745720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.064200, 22.462086, 30.939075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015069, 0.570377, 0.821244,
		-0.835376, -0.458536, 0.303138,
		0.549473, -0.681480, 0.483389,
		11.229042, 22.257641, 31.084091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.537745, 22.518421, 31.380571>,  <10.844411, 22.734678, 30.745720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.537745, 22.518421, 31.380571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.929361, 22.454338, 31.430870>,  <11.164331, 22.415888, 31.461048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.929361, 22.454338, 31.430870>,  <10.537745, 22.518421, 31.380571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.929361, 22.454338, 31.430870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006619, 0.642121, 0.766575,
		-0.203556, -0.749676, 0.629723,
		0.979041, -0.160209, 0.125746,
		11.223074, 22.406275, 31.468594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.047291, 16.893673, 16.452341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.392663, 16.835707, 16.645624>,  <14.599886, 16.800928, 16.761593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.392663, 16.835707, 16.645624>,  <14.047291, 16.893673, 16.452341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.392663, 16.835707, 16.645624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456203, 0.184558, 0.870527,
		-0.215333, -0.972079, 0.093242,
		0.863429, -0.144916, 0.483207,
		14.651692, 16.792233, 16.790586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.011636, 16.386492, 17.030821>,  <14.047291, 16.893673, 16.452341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.011636, 16.386492, 17.030821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.322277, 16.627975, 17.102848>,  <14.508662, 16.772865, 17.146065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.322277, 16.627975, 17.102848>,  <14.011636, 16.386492, 17.030821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.322277, 16.627975, 17.102848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384096, 0.227173, 0.894909,
		0.499359, -0.764152, 0.408305,
		0.776602, 0.603709, 0.180067,
		14.555258, 16.809088, 17.156868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.335443, 16.195038, 17.683363>,  <14.011636, 16.386492, 17.030821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.335443, 16.195038, 17.683363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.415850, 16.577593, 17.598587>,  <14.464093, 16.807125, 17.547722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.415850, 16.577593, 17.598587>,  <14.335443, 16.195038, 17.683363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.415850, 16.577593, 17.598587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424698, 0.280049, 0.860932,
		0.882737, -0.083050, 0.462470,
		0.201015, 0.956387, -0.211938,
		14.476154, 16.864510, 17.535006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.787570, 16.383205, 18.145634>,  <14.335443, 16.195038, 17.683363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.787570, 16.383205, 18.145634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600262, 16.717125, 18.029818>,  <14.487877, 16.917477, 17.960329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600262, 16.717125, 18.029818>,  <14.787570, 16.383205, 18.145634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.600262, 16.717125, 18.029818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246428, 0.191296, 0.950094,
		0.848525, 0.516252, 0.116139,
		-0.468271, 0.834799, -0.289539,
		14.459781, 16.967566, 17.942957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.965414, 16.938906, 18.626738>,  <14.787570, 16.383205, 18.145634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.965414, 16.938906, 18.626738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.634946, 17.088118, 18.457840>,  <14.436666, 17.177645, 18.356501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.634946, 17.088118, 18.457840>,  <14.965414, 16.938906, 18.626738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.634946, 17.088118, 18.457840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309733, 0.325328, 0.893436,
		0.470647, 0.868913, -0.153236,
		-0.826170, 0.373031, -0.422246,
		14.387094, 17.200027, 18.331165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.052361, 17.613756, 18.733538>,  <14.965414, 16.938906, 18.626738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.052361, 17.613756, 18.733538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.661529, 17.576839, 18.656811>,  <14.427029, 17.554689, 18.610775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.661529, 17.576839, 18.656811>,  <15.052361, 17.613756, 18.733538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.661529, 17.576839, 18.656811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212230, 0.352727, 0.911341,
		-0.016451, 0.931164, -0.364230,
		-0.977081, -0.092293, -0.191818,
		14.368404, 17.549152, 18.599266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.872016, 18.199583, 18.978230>,  <15.052361, 17.613756, 18.733538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.872016, 18.199583, 18.978230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.535467, 17.987032, 18.938772>,  <14.333538, 17.859501, 18.915098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.535467, 17.987032, 18.938772>,  <14.872016, 18.199583, 18.978230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.535467, 17.987032, 18.938772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330041, 0.360633, 0.872363,
		-0.427981, 0.766538, -0.478803,
		-0.841371, -0.531379, -0.098645,
		14.283055, 17.827618, 18.909180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.339102, 18.717190, 19.021166>,  <14.872016, 18.199583, 18.978230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.339102, 18.717190, 19.021166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.177985, 18.362186, 19.110687>,  <14.081315, 18.149185, 19.164400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.177985, 18.362186, 19.110687>,  <14.339102, 18.717190, 19.021166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.177985, 18.362186, 19.110687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478162, 0.412533, 0.775357,
		-0.780462, 0.205292, -0.590537,
		-0.402790, -0.887509, 0.223804,
		14.057148, 18.095934, 19.177828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.618920, 18.852585, 19.265738>,  <14.339102, 18.717190, 19.021166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.618920, 18.852585, 19.265738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.735648, 18.489880, 19.387470>,  <13.805685, 18.272257, 19.460510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.735648, 18.489880, 19.387470>,  <13.618920, 18.852585, 19.265738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.735648, 18.489880, 19.387470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410955, 0.168451, 0.895958,
		-0.863688, -0.386524, -0.323483,
		0.291819, -0.906765, 0.304333,
		13.823194, 18.217850, 19.478769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.972307, 18.500162, 19.435881>,  <13.618920, 18.852585, 19.265738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.972307, 18.500162, 19.435881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.269593, 18.319725, 19.633526>,  <13.447965, 18.211462, 19.752113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.269593, 18.319725, 19.633526>,  <12.972307, 18.500162, 19.435881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.269593, 18.319725, 19.633526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493145, 0.129755, 0.860216,
		-0.452151, -0.882994, -0.126019,
		0.743214, -0.451093, 0.494112,
		13.492558, 18.184397, 19.781759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.700997, 18.068451, 20.008646>,  <12.972307, 18.500162, 19.435881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.700997, 18.068451, 20.008646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.082010, 18.133017, 20.111895>,  <13.310618, 18.171755, 20.173843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.082010, 18.133017, 20.111895>,  <12.700997, 18.068451, 20.008646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.082010, 18.133017, 20.111895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290923, 0.232806, 0.927990,
		0.089696, -0.959035, 0.268714,
		0.952533, 0.161412, 0.258123,
		13.367770, 18.181440, 20.189331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.858847, 17.747154, 20.713938>,  <12.700997, 18.068451, 20.008646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.858847, 17.747154, 20.713938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.153435, 18.011539, 20.656332>,  <13.330188, 18.170170, 20.621769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.153435, 18.011539, 20.656332>,  <12.858847, 17.747154, 20.713938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.153435, 18.011539, 20.656332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120178, 0.337341, 0.933680,
		0.665709, -0.670321, 0.327874,
		0.736471, 0.660962, -0.144013,
		13.374376, 18.209827, 20.613129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.567310, 17.217495, 21.230167>,  <12.858847, 17.747154, 20.713938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.567310, 17.217495, 21.230167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.169851, 17.200943, 21.188307>,  <11.931376, 17.191011, 21.163191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.169851, 17.200943, 21.188307>,  <12.567310, 17.217495, 21.230167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.169851, 17.200943, 21.188307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111544, -0.485338, -0.867182,
		-0.014909, -0.873347, 0.486870,
		-0.993648, -0.041378, -0.104653,
		11.871757, 17.188530, 21.156912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.520067, 16.577194, 21.155279>,  <12.567310, 17.217495, 21.230167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.520067, 16.577194, 21.155279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.201191, 16.766653, 21.005535>,  <12.009865, 16.880329, 20.915689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.201191, 16.766653, 21.005535>,  <12.520067, 16.577194, 21.155279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.201191, 16.766653, 21.005535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097289, -0.511188, -0.853945,
		-0.595839, -0.717177, 0.361433,
		-0.797190, 0.473650, -0.374359,
		11.962033, 16.908747, 20.893229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.111762, 16.036373, 20.853100>,  <12.520067, 16.577194, 21.155279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.111762, 16.036373, 20.853100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.981151, 16.374754, 20.684460>,  <11.902784, 16.577782, 20.583275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.981151, 16.374754, 20.684460>,  <12.111762, 16.036373, 20.853100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.981151, 16.374754, 20.684460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109639, -0.476938, -0.872072,
		-0.938807, -0.238532, 0.248483,
		-0.326528, 0.845951, -0.421600,
		11.883192, 16.628540, 20.557980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.488098, 15.905771, 20.452242>,  <12.111762, 16.036373, 20.853100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.488098, 15.905771, 20.452242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.626911, 16.249905, 20.302898>,  <11.710198, 16.456385, 20.213293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.626911, 16.249905, 20.302898>,  <11.488098, 15.905771, 20.452242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.626911, 16.249905, 20.302898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109977, -0.432684, -0.894812,
		-0.931383, 0.269468, -0.244772,
		0.347032, 0.860332, -0.373359,
		11.731021, 16.508005, 20.190891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.993380, 16.029730, 19.974756>,  <11.488098, 15.905771, 20.452242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.993380, 16.029730, 19.974756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.335041, 16.217165, 19.884560>,  <11.540038, 16.329626, 19.830442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.335041, 16.217165, 19.884560>,  <10.993380, 16.029730, 19.974756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.335041, 16.217165, 19.884560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053660, -0.351885, -0.934504,
		-0.517245, 0.810309, -0.275419,
		0.854153, 0.468589, -0.225492,
		11.591287, 16.357742, 19.816912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.905224, 16.290550, 19.107653>,  <10.993380, 16.029730, 19.974756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.905224, 16.290550, 19.107653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.292696, 16.345758, 19.190218>,  <11.525180, 16.378883, 19.239758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.292696, 16.345758, 19.190218>,  <10.905224, 16.290550, 19.107653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.292696, 16.345758, 19.190218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226956, -0.154893, -0.961509,
		-0.100736, 0.978243, -0.181366,
		0.968681, 0.138021, 0.206414,
		11.583301, 16.387165, 19.252142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.116713, 16.723789, 18.641956>,  <10.905224, 16.290550, 19.107653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.116713, 16.723789, 18.641956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.454786, 16.539240, 18.749880>,  <11.657631, 16.428511, 18.814634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.454786, 16.539240, 18.749880>,  <11.116713, 16.723789, 18.641956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.454786, 16.539240, 18.749880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211924, -0.174145, -0.961645,
		0.490663, 0.869947, -0.049409,
		0.845185, -0.461373, 0.269809,
		11.708342, 16.400827, 18.830822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.626082, 16.838264, 18.070404>,  <11.116713, 16.723789, 18.641956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.626082, 16.838264, 18.070404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.818792, 16.554256, 18.275835>,  <11.934419, 16.383852, 18.399094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.818792, 16.554256, 18.275835>,  <11.626082, 16.838264, 18.070404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.818792, 16.554256, 18.275835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434737, -0.315210, -0.843591,
		0.760853, 0.629693, 0.156812,
		0.481775, -0.710021, 0.513579,
		11.963325, 16.341249, 18.429909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.226470, 16.812654, 17.757441>,  <11.626082, 16.838264, 18.070404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.226470, 16.812654, 17.757441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.198051, 16.451506, 17.927040>,  <12.181000, 16.234816, 18.028799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.198051, 16.451506, 17.927040>,  <12.226470, 16.812654, 17.757441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.198051, 16.451506, 17.927040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325729, -0.422769, -0.845676,
		0.942790, 0.078026, 0.324128,
		-0.071047, -0.902872, 0.423997,
		12.176738, 16.180643, 18.054239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.867262, 16.441664, 17.625668>,  <12.226470, 16.812654, 17.757441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.867262, 16.441664, 17.625668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.570771, 16.181114, 17.690533>,  <12.392877, 16.024784, 17.729452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.570771, 16.181114, 17.690533>,  <12.867262, 16.441664, 17.625668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.570771, 16.181114, 17.690533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195624, -0.440714, -0.876072,
		0.642117, -0.617645, 0.454094,
		-0.741227, -0.651372, 0.162164,
		12.348403, 15.985703, 17.739182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.111288, 15.768388, 17.317039>,  <12.867262, 16.441664, 17.625668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.111288, 15.768388, 17.317039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.730715, 15.669769, 17.390787>,  <12.502371, 15.610599, 17.435036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.730715, 15.669769, 17.390787>,  <13.111288, 15.768388, 17.317039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.730715, 15.669769, 17.390787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075134, -0.766720, -0.637569,
		0.298548, -0.592752, 0.748007,
		-0.951432, -0.246546, 0.184367,
		12.445285, 15.595805, 17.446096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.097164, 14.942306, 17.299999>,  <13.111288, 15.768388, 17.317039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.097164, 14.942306, 17.299999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.745316, 15.102374, 17.197136>,  <12.534206, 15.198415, 17.135418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.745316, 15.102374, 17.197136>,  <13.097164, 14.942306, 17.299999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.745316, 15.102374, 17.197136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013078, -0.520069, -0.854024,
		-0.475491, -0.754582, 0.452232,
		-0.879623, 0.400167, -0.257157,
		12.481429, 15.222425, 17.119987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.716775, 14.413027, 17.107220>,  <13.097164, 14.942306, 17.299999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.716775, 14.413027, 17.107220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.506704, 14.708090, 16.937490>,  <12.380662, 14.885128, 16.835653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.506704, 14.708090, 16.937490>,  <12.716775, 14.413027, 17.107220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.506704, 14.708090, 16.937490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032977, -0.515888, -0.856021,
		-0.850354, -0.435570, 0.295258,
		-0.525177, 0.737657, -0.424324,
		12.349151, 14.929387, 16.810194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.928203, 14.297414, 16.990259>,  <12.716775, 14.413027, 17.107220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.928203, 14.297414, 16.990259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.098172, 14.541238, 16.722565>,  <12.200154, 14.687532, 16.561949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.098172, 14.541238, 16.722565>,  <11.928203, 14.297414, 16.990259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.098172, 14.541238, 16.722565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250862, -0.631050, -0.734061,
		-0.869774, 0.479806, -0.115233,
		0.424924, 0.609560, -0.669236,
		12.225650, 14.724106, 16.521793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.198716, 13.755934, 17.310097>,  <11.928203, 14.297414, 16.990259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.198716, 13.755934, 17.310097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888741, 13.551294, 17.458548>,  <11.702755, 13.428511, 17.547619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.888741, 13.551294, 17.458548>,  <12.198716, 13.755934, 17.310097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.888741, 13.551294, 17.458548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540553, -0.232193, 0.808634,
		-0.327523, 0.827256, 0.456482,
		-0.774939, -0.511599, 0.371127,
		11.656259, 13.397815, 17.569885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.622407, 13.416682, 17.893970>,  <12.198716, 13.755934, 17.310097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.622407, 13.416682, 17.893970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.920828, 13.212581, 17.722834>,  <13.099880, 13.090119, 17.620152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.920828, 13.212581, 17.722834>,  <12.622407, 13.416682, 17.893970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.920828, 13.212581, 17.722834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499235, 0.003425, 0.866460,
		-0.440649, -0.860017, 0.257292,
		0.746051, -0.510254, -0.427842,
		13.144643, 13.059505, 17.594481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.742225, 12.844652, 18.209579>,  <12.622407, 13.416682, 17.893970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.742225, 12.844652, 18.209579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.041148, 13.042548, 18.032148>,  <13.220503, 13.161285, 17.925690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.041148, 13.042548, 18.032148>,  <12.742225, 12.844652, 18.209579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.041148, 13.042548, 18.032148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328369, 0.305383, 0.893821,
		0.577670, -0.813617, 0.065758,
		0.747309, 0.494741, -0.443577,
		13.265341, 13.190970, 17.899075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.462754, 12.586962, 18.456198>,  <12.742225, 12.844652, 18.209579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.462754, 12.586962, 18.456198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.380195, 12.961723, 18.343336>,  <13.330659, 13.186580, 18.275620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.380195, 12.961723, 18.343336>,  <13.462754, 12.586962, 18.456198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.380195, 12.961723, 18.343336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272276, 0.331970, 0.903140,
		0.939822, 0.109584, -0.323615,
		-0.206400, 0.936903, -0.282156,
		13.318274, 13.242794, 18.258690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.003678, 13.031706, 18.799704>,  <13.462754, 12.586962, 18.456198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.003678, 13.031706, 18.799704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.693304, 13.251733, 18.676188>,  <13.507080, 13.383749, 18.602077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.693304, 13.251733, 18.676188>,  <14.003678, 13.031706, 18.799704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.693304, 13.251733, 18.676188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018566, 0.509213, 0.860440,
		0.630539, 0.661913, -0.405329,
		-0.775935, 0.550067, -0.308790,
		13.460524, 13.416753, 18.583551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.157800, 13.679382, 19.099586>,  <14.003678, 13.031706, 18.799704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.157800, 13.679382, 19.099586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.763597, 13.686457, 19.032099>,  <13.527076, 13.690701, 18.991606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.763597, 13.686457, 19.032099>,  <14.157800, 13.679382, 19.099586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.763597, 13.686457, 19.032099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139283, 0.483420, 0.864237,
		0.096847, 0.875210, -0.473949,
		-0.985506, 0.017686, -0.168719,
		13.467946, 13.691763, 18.981483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.920194, 14.250977, 19.431908>,  <14.157800, 13.679382, 19.099586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.920194, 14.250977, 19.431908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.587379, 14.031751, 19.397642>,  <13.387690, 13.900215, 19.377083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.587379, 14.031751, 19.397642>,  <13.920194, 14.250977, 19.431908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.587379, 14.031751, 19.397642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351249, 0.401001, 0.846063,
		-0.429347, 0.734045, -0.526156,
		-0.832037, -0.548066, -0.085664,
		13.337768, 13.867331, 19.371943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.498951, 14.700951, 19.770092>,  <13.920194, 14.250977, 19.431908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.498951, 14.700951, 19.770092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.293349, 14.358807, 19.744299>,  <13.169989, 14.153521, 19.728823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.293349, 14.358807, 19.744299>,  <13.498951, 14.700951, 19.770092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.293349, 14.358807, 19.744299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317805, 0.120072, 0.940522,
		-0.796743, 0.503926, -0.333555,
		-0.514005, -0.855360, -0.064484,
		13.139148, 14.102199, 19.724953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.848294, 14.807043, 19.945820>,  <13.498951, 14.700951, 19.770092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.848294, 14.807043, 19.945820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.907782, 14.417143, 20.012444>,  <12.943474, 14.183203, 20.052418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.907782, 14.417143, 20.012444>,  <12.848294, 14.807043, 19.945820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.907782, 14.417143, 20.012444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319373, 0.112062, 0.940980,
		-0.935887, -0.193136, -0.294643,
		0.148719, -0.974752, 0.166560,
		12.952397, 14.124718, 20.062412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.279243, 14.557491, 20.419703>,  <12.848294, 14.807043, 19.945820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.279243, 14.557491, 20.419703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.586704, 14.303461, 20.450294>,  <12.771181, 14.151043, 20.468651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.586704, 14.303461, 20.450294>,  <12.279243, 14.557491, 20.419703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.586704, 14.303461, 20.450294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242647, -0.178858, 0.953484,
		-0.591856, -0.751457, -0.291580,
		0.768654, -0.635077, 0.076481,
		12.817301, 14.112938, 20.473238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.059270, 14.114773, 20.912308>,  <12.279243, 14.557491, 20.419703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.059270, 14.114773, 20.912308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.453793, 14.050151, 20.899035>,  <12.690506, 14.011377, 20.891071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.453793, 14.050151, 20.899035>,  <12.059270, 14.114773, 20.912308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.453793, 14.050151, 20.899035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004258, -0.176178, 0.984349,
		-0.164847, -0.971014, -0.173079,
		0.986310, -0.161530, -0.033177,
		12.749684, 14.001684, 20.889080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.083862, 13.560218, 21.346842>,  <12.059270, 14.114773, 20.912308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.083862, 13.560218, 21.346842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.457332, 13.703466, 21.347357>,  <12.681414, 13.789415, 21.347666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.457332, 13.703466, 21.347357>,  <12.083862, 13.560218, 21.346842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.457332, 13.703466, 21.347357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062764, -0.167169, 0.983929,
		0.352582, -0.918588, -0.178558,
		0.933674, 0.358122, 0.001287,
		12.737433, 13.810903, 21.347742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.413496, 13.116380, 21.801640>,  <12.083862, 13.560218, 21.346842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.413496, 13.116380, 21.801640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.667178, 13.423607, 21.766190>,  <12.819387, 13.607944, 21.744919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.667178, 13.423607, 21.766190>,  <12.413496, 13.116380, 21.801640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.667178, 13.423607, 21.766190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415598, -0.241997, 0.876764,
		0.651968, -0.592880, -0.472684,
		0.634205, 0.768069, -0.088625,
		12.857440, 13.654028, 21.739601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.940004, 12.905990, 22.123302>,  <12.413496, 13.116380, 21.801640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.940004, 12.905990, 22.123302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.004795, 13.300703, 22.121426>,  <13.043670, 13.537531, 22.120300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.004795, 13.300703, 22.121426>,  <12.940004, 12.905990, 22.123302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.004795, 13.300703, 22.121426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492496, -0.076720, 0.866927,
		0.855109, -0.142733, -0.498414,
		0.161977, 0.986783, -0.004691,
		13.053389, 13.596738, 22.120018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.551656, 12.925361, 22.363293>,  <12.940004, 12.905990, 22.123302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.551656, 12.925361, 22.363293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.421513, 13.293490, 22.450144>,  <13.343427, 13.514368, 22.502254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.421513, 13.293490, 22.450144>,  <13.551656, 12.925361, 22.363293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.421513, 13.293490, 22.450144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572463, 0.008950, 0.819882,
		0.752614, 0.391053, -0.529764,
		-0.325359, 0.920324, 0.217128,
		13.323905, 13.569588, 22.515282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.092301, 13.180544, 22.884743>,  <13.551656, 12.925361, 22.363293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.092301, 13.180544, 22.884743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.812041, 13.465218, 22.905109>,  <13.643885, 13.636022, 22.917330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.812041, 13.465218, 22.905109>,  <14.092301, 13.180544, 22.884743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.812041, 13.465218, 22.905109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335049, 0.265170, 0.904116,
		0.629944, 0.650530, -0.424242,
		-0.700651, 0.711685, 0.050917,
		13.601846, 13.678723, 22.920385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.347528, 13.789182, 23.250469>,  <14.092301, 13.180544, 22.884743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.347528, 13.789182, 23.250469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.953184, 13.825827, 23.306589>,  <13.716578, 13.847814, 23.340261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.953184, 13.825827, 23.306589>,  <14.347528, 13.789182, 23.250469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.953184, 13.825827, 23.306589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155257, 0.184506, 0.970491,
		0.063024, 0.978552, -0.196121,
		-0.985862, 0.091613, 0.140298,
		13.657426, 13.853311, 23.348679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.240506, 14.395947, 23.560324>,  <14.347528, 13.789182, 23.250469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.240506, 14.395947, 23.560324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.934621, 14.150858, 23.640108>,  <13.751090, 14.003804, 23.687979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.934621, 14.150858, 23.640108>,  <14.240506, 14.395947, 23.560324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.934621, 14.150858, 23.640108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097753, 0.195647, 0.975790,
		-0.636913, 0.765697, -0.089718,
		-0.764713, -0.612723, 0.199459,
		13.705207, 13.967041, 23.699945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.711511, 14.735783, 24.061964>,  <14.240506, 14.395947, 23.560324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.711511, 14.735783, 24.061964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.608266, 14.349648, 24.077473>,  <13.546319, 14.117968, 24.086777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.608266, 14.349648, 24.077473>,  <13.711511, 14.735783, 24.061964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.608266, 14.349648, 24.077473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022514, 0.046128, 0.998682,
		-0.965852, 0.256900, -0.033640,
		-0.258113, -0.965336, 0.038769,
		13.530832, 14.060047, 24.089104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.122905, 14.713114, 24.475864>,  <13.711511, 14.735783, 24.061964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.122905, 14.713114, 24.475864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.262795, 14.338743, 24.492514>,  <13.346729, 14.114120, 24.502504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.262795, 14.338743, 24.492514>,  <13.122905, 14.713114, 24.475864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.262795, 14.338743, 24.492514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115025, 0.001198, 0.993362,
		-0.929764, -0.352192, -0.107236,
		0.349726, -0.935927, 0.041624,
		13.367713, 14.057965, 24.505001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.720942, 14.345942, 24.882633>,  <13.122905, 14.713114, 24.475864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.720942, 14.345942, 24.882633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.058352, 14.131109, 24.881447>,  <13.260798, 14.002210, 24.880735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.058352, 14.131109, 24.881447>,  <12.720942, 14.345942, 24.882633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.058352, 14.131109, 24.881447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055401, -0.092502, 0.994170,
		-0.534225, -0.838443, -0.107782,
		0.843525, -0.537082, -0.002966,
		13.311410, 13.969985, 24.880556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.590336, 13.887759, 25.350937>,  <12.720942, 14.345942, 24.882633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.590336, 13.887759, 25.350937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.986557, 13.841573, 25.321342>,  <13.224290, 13.813861, 25.303585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.986557, 13.841573, 25.321342>,  <12.590336, 13.887759, 25.350937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.986557, 13.841573, 25.321342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078673, 0.036549, 0.996230,
		-0.112329, -0.992639, 0.045287,
		0.990552, -0.115468, -0.073988,
		13.283723, 13.806933, 25.299147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.767076, 13.318970, 25.809908>,  <12.590336, 13.887759, 25.350937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.767076, 13.318970, 25.809908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.100038, 13.534437, 25.757845>,  <13.299814, 13.663718, 25.726608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.100038, 13.534437, 25.757845>,  <12.767076, 13.318970, 25.809908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.100038, 13.534437, 25.757845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217526, -0.101583, 0.970754,
		0.509694, -0.836371, -0.201732,
		0.832403, 0.538670, -0.130156,
		13.349758, 13.696038, 25.718798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.157697, 13.010810, 26.324389>,  <12.767076, 13.318970, 25.809908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.157697, 13.010810, 26.324389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.358073, 13.344698, 26.232912>,  <13.478299, 13.545031, 26.178026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.358073, 13.344698, 26.232912>,  <13.157697, 13.010810, 26.324389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.358073, 13.344698, 26.232912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374063, 0.029467, 0.926935,
		0.780471, -0.549883, -0.297477,
		0.500940, 0.834721, -0.228690,
		13.508355, 13.595115, 26.164305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.834752, 12.962521, 26.516628>,  <13.157697, 13.010810, 26.324389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.834752, 12.962521, 26.516628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.822992, 13.362345, 26.518167>,  <13.815936, 13.602240, 26.519091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.822992, 13.362345, 26.518167>,  <13.834752, 12.962521, 26.516628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.822992, 13.362345, 26.518167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152225, 0.000671, 0.988346,
		0.987908, 0.029643, -0.152178,
		-0.029399, 0.999560, 0.003850,
		13.814173, 13.662212, 26.519323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.382606, 13.208768, 26.933607>,  <13.834752, 12.962521, 26.516628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.382606, 13.208768, 26.933607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.127166, 13.516210, 26.918432>,  <13.973902, 13.700674, 26.909328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.127166, 13.516210, 26.918432>,  <14.382606, 13.208768, 26.933607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.127166, 13.516210, 26.918432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044405, 0.086019, 0.995303,
		0.768257, 0.633916, -0.089062,
		-0.638600, 0.768604, -0.037936,
		13.935586, 13.746791, 26.907051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.661182, 13.785424, 27.398174>,  <14.382606, 13.208768, 26.933607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.661182, 13.785424, 27.398174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.273972, 13.870116, 27.344370>,  <14.041645, 13.920932, 27.312088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.273972, 13.870116, 27.344370>,  <14.661182, 13.785424, 27.398174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.273972, 13.870116, 27.344370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070415, 0.285309, 0.955845,
		0.240759, 0.934756, -0.261277,
		-0.968027, 0.211731, -0.134511,
		13.983563, 13.933636, 27.304016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.546979, 14.492427, 27.594889>,  <14.661182, 13.785424, 27.398174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.546979, 14.492427, 27.594889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.198217, 14.303153, 27.645298>,  <13.988960, 14.189589, 27.675543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.198217, 14.303153, 27.645298>,  <14.546979, 14.492427, 27.594889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.198217, 14.303153, 27.645298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096692, 0.418656, 0.902983,
		-0.480037, 0.775128, -0.410781,
		-0.871903, -0.473184, 0.126022,
		13.936646, 14.161198, 27.683104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
