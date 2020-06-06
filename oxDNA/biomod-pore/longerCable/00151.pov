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
	<24.636227, 35.332386, 34.960403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.455854, 34.976055, 34.938179>,  <24.347631, 34.762257, 34.924843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.455854, 34.976055, 34.938179>,  <24.636227, 35.332386, 34.960403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.455854, 34.976055, 34.938179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554799, -0.328509, 0.764382,
		-0.699185, 0.313858, 0.642365,
		-0.450930, -0.890828, -0.055560,
		24.320576, 34.708805, 34.921513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.254776, 35.193600, 35.539948>,  <24.636227, 35.332386, 34.960403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.254776, 35.193600, 35.539948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383097, 34.849682, 35.381035>,  <24.460089, 34.643330, 35.285686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383097, 34.849682, 35.381035>,  <24.254776, 35.193600, 35.539948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.383097, 34.849682, 35.381035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473913, -0.217459, 0.853298,
		-0.820056, -0.462018, 0.337708,
		0.320802, -0.859797, -0.397285,
		24.479338, 34.591743, 35.261848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.094139, 34.814445, 36.065174>,  <24.254776, 35.193600, 35.539948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.094139, 34.814445, 36.065174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397232, 34.671963, 35.846466>,  <24.579088, 34.586472, 35.715240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397232, 34.671963, 35.846466>,  <24.094139, 34.814445, 36.065174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.397232, 34.671963, 35.846466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599331, 0.048421, 0.799036,
		-0.258151, -0.933150, 0.250178,
		0.757734, -0.356212, -0.546766,
		24.624552, 34.565098, 35.682438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.439299, 34.245705, 36.360462>,  <24.094139, 34.814445, 36.065174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.439299, 34.245705, 36.360462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704308, 34.432083, 36.125870>,  <24.863314, 34.543911, 35.985115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704308, 34.432083, 36.125870>,  <24.439299, 34.245705, 36.360462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.704308, 34.432083, 36.125870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551660, 0.226117, 0.802834,
		0.506690, -0.855432, -0.107236,
		0.662522, 0.465946, -0.586479,
		24.903065, 34.571869, 35.949924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.093374, 34.189426, 36.729214>,  <24.439299, 34.245705, 36.360462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.093374, 34.189426, 36.729214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141462, 34.502419, 36.484829>,  <25.170315, 34.690212, 36.338200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141462, 34.502419, 36.484829>,  <25.093374, 34.189426, 36.729214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141462, 34.502419, 36.484829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541484, 0.464135, 0.700981,
		0.832071, -0.415096, -0.367903,
		0.120218, 0.782479, -0.610961,
		25.177528, 34.737164, 36.301540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.732428, 34.373180, 36.494213>,  <25.093374, 34.189426, 36.729214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.732428, 34.373180, 36.494213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495724, 34.690495, 36.551510>,  <25.353701, 34.880882, 36.585888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495724, 34.690495, 36.551510>,  <25.732428, 34.373180, 36.494213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495724, 34.690495, 36.551510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534870, 0.253449, 0.806026,
		0.603103, 0.553591, -0.574286,
		-0.591761, 0.793285, 0.143244,
		25.318195, 34.928478, 36.594482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028440, 34.742188, 37.073715>,  <25.732428, 34.373180, 36.494213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028440, 34.742188, 37.073715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678715, 34.935795, 37.088150>,  <25.468880, 35.051960, 37.096809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.678715, 34.935795, 37.088150>,  <26.028440, 34.742188, 37.073715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678715, 34.935795, 37.088150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264358, 0.412536, 0.871739,
		0.407052, 0.771712, -0.488640,
		-0.874313, 0.484019, 0.036084,
		25.416420, 35.081001, 37.098976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.192509, 35.373585, 37.286274>,  <26.028440, 34.742188, 37.073715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.192509, 35.373585, 37.286274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819990, 35.279194, 37.397274>,  <25.596479, 35.222561, 37.463875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.819990, 35.279194, 37.397274>,  <26.192509, 35.373585, 37.286274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.819990, 35.279194, 37.397274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221347, 0.238440, 0.945596,
		-0.289304, 0.942052, -0.169826,
		-0.931294, -0.235974, 0.277502,
		25.540602, 35.208401, 37.480526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979301, 35.893665, 37.691799>,  <26.192509, 35.373585, 37.286274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979301, 35.893665, 37.691799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725533, 35.595615, 37.774067>,  <25.573271, 35.416786, 37.823425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725533, 35.595615, 37.774067>,  <25.979301, 35.893665, 37.691799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725533, 35.595615, 37.774067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096247, 0.187849, 0.977471,
		-0.766971, 0.639924, -0.047460,
		-0.634423, -0.745124, 0.205666,
		25.535206, 35.372078, 37.835766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.478102, 36.170799, 38.168221>,  <25.979301, 35.893665, 37.691799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.478102, 36.170799, 38.168221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471075, 35.772095, 38.199631>,  <25.466860, 35.532871, 38.218479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.471075, 35.772095, 38.199631>,  <25.478102, 36.170799, 38.168221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.471075, 35.772095, 38.199631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122102, 0.075814, 0.989618,
		-0.992362, 0.026973, 0.120374,
		-0.017567, -0.996757, 0.078528,
		25.465805, 35.473068, 38.223190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.047314, 35.992203, 38.671329>,  <25.478102, 36.170799, 38.168221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.047314, 35.992203, 38.671329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322092, 35.701984, 38.654873>,  <25.486959, 35.527855, 38.645000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.322092, 35.701984, 38.654873>,  <25.047314, 35.992203, 38.671329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322092, 35.701984, 38.654873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119121, 0.056573, 0.991267,
		-0.716880, -0.685846, 0.125291,
		0.686944, -0.725544, -0.041143,
		25.528175, 35.484322, 38.642529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.905531, 35.519390, 39.198193>,  <25.047314, 35.992203, 38.671329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.905531, 35.519390, 39.198193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292540, 35.544277, 39.100189>,  <25.524746, 35.559208, 39.041389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292540, 35.544277, 39.100189>,  <24.905531, 35.519390, 39.198193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.292540, 35.544277, 39.100189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245406, 0.001225, 0.969420,
		0.060618, -0.998062, -0.014084,
		0.967523, 0.062220, -0.245004,
		25.582796, 35.562943, 39.026688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.561388, 36.031494, 39.639057>,  <24.905531, 35.519390, 39.198193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.561388, 36.031494, 39.639057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.510567, 35.655670, 39.766235>,  <24.480074, 35.430176, 39.842541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.510567, 35.655670, 39.766235>,  <24.561388, 36.031494, 39.639057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.510567, 35.655670, 39.766235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985805, 0.084143, -0.145289,
		0.109755, -0.331890, -0.936911,
		-0.127055, -0.939558, 0.317944,
		24.472450, 35.373802, 39.861618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.328276, 35.818775, 39.771526>,  <24.561388, 36.031494, 39.639057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.328276, 35.818775, 39.771526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399782, 35.429573, 39.829918>,  <25.442686, 35.196053, 39.864952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399782, 35.429573, 39.829918>,  <25.328276, 35.818775, 39.771526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399782, 35.429573, 39.829918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035716, -0.154684, -0.987318,
		0.983244, 0.171283, -0.062404,
		0.178764, -0.973003, 0.145974,
		25.453411, 35.137672, 39.873711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925922, 35.646862, 39.468624>,  <25.328276, 35.818775, 39.771526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925922, 35.646862, 39.468624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623701, 35.384834, 39.470673>,  <25.442368, 35.227619, 39.471901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623701, 35.384834, 39.470673>,  <25.925922, 35.646862, 39.468624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623701, 35.384834, 39.470673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073169, -0.092162, -0.993052,
		0.650989, -0.749928, 0.117563,
		-0.755553, -0.655068, 0.005125,
		25.397036, 35.188313, 39.472210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163712, 35.038910, 39.083935>,  <25.925922, 35.646862, 39.468624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163712, 35.038910, 39.083935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764378, 35.061737, 39.087250>,  <25.524776, 35.075432, 39.089237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764378, 35.061737, 39.087250>,  <26.163712, 35.038910, 39.083935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764378, 35.061737, 39.087250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012174, -0.068105, -0.997604,
		-0.056356, -0.996045, 0.068686,
		-0.998337, 0.057057, 0.008288,
		25.464876, 35.078857, 39.089737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.952696, 34.401051, 38.768814>,  <26.163712, 35.038910, 39.083935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.952696, 34.401051, 38.768814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674543, 34.683525, 38.715534>,  <25.507652, 34.853012, 38.683567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674543, 34.683525, 38.715534>,  <25.952696, 34.401051, 38.768814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674543, 34.683525, 38.715534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019897, -0.204198, -0.978727,
		-0.718367, -0.677938, 0.156046,
		-0.695380, 0.706190, -0.133200,
		25.465929, 34.895382, 38.675575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437342, 34.164646, 38.308613>,  <25.952696, 34.401051, 38.768814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437342, 34.164646, 38.308613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423576, 34.564053, 38.291740>,  <25.415318, 34.803696, 38.281616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423576, 34.564053, 38.291740>,  <25.437342, 34.164646, 38.308613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423576, 34.564053, 38.291740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277945, -0.050103, -0.959289,
		-0.959980, -0.021289, 0.279257,
		-0.034415, 0.998517, -0.042181,
		25.413252, 34.863609, 38.279087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707575, 34.392151, 38.123219>,  <25.437342, 34.164646, 38.308613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707575, 34.392151, 38.123219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969368, 34.680088, 38.030720>,  <25.126444, 34.852852, 37.975220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.969368, 34.680088, 38.030720>,  <24.707575, 34.392151, 38.123219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.969368, 34.680088, 38.030720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343771, 0.010905, -0.938990,
		-0.673407, 0.694048, 0.254599,
		0.654481, 0.719846, -0.231250,
		25.165712, 34.896042, 37.961346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.330624, 34.903637, 37.844418>,  <24.707575, 34.392151, 38.123219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.330624, 34.903637, 37.844418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.697794, 35.000294, 37.718548>,  <24.918097, 35.058289, 37.643028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.697794, 35.000294, 37.718548>,  <24.330624, 34.903637, 37.844418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.697794, 35.000294, 37.718548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348960, 0.114351, -0.930135,
		-0.188778, 0.963604, 0.189290,
		0.917927, 0.241643, -0.314673,
		24.973171, 35.072788, 37.624146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.296305, 35.474876, 37.329269>,  <24.330624, 34.903637, 37.844418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.296305, 35.474876, 37.329269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637936, 35.285698, 37.242664>,  <24.842915, 35.172192, 37.190701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637936, 35.285698, 37.242664>,  <24.296305, 35.474876, 37.329269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.637936, 35.285698, 37.242664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311210, -0.131104, -0.941254,
		0.416775, 0.871284, -0.259158,
		0.854076, -0.472944, -0.216512,
		24.894159, 35.143814, 37.177711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.303213, 35.574978, 36.650112>,  <24.296305, 35.474876, 37.329269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.303213, 35.574978, 36.650112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.597406, 35.310593, 36.709702>,  <24.773922, 35.151962, 36.745457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.597406, 35.310593, 36.709702>,  <24.303213, 35.574978, 36.650112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.597406, 35.310593, 36.709702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070453, -0.293287, -0.953425,
		0.673872, 0.690730, -0.262275,
		0.735481, -0.660965, 0.148974,
		24.818050, 35.112305, 36.754395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.767227, 35.601727, 36.081100>,  <24.303213, 35.574978, 36.650112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.767227, 35.601727, 36.081100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729467, 35.239830, 36.247250>,  <24.706812, 35.022694, 36.346939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.729467, 35.239830, 36.247250>,  <24.767227, 35.601727, 36.081100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.729467, 35.239830, 36.247250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183527, -0.394267, -0.900484,
		0.978472, -0.161235, -0.128827,
		-0.094398, -0.904741, 0.415370,
		24.701147, 34.968407, 36.371861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.643826, 36.067463, 35.513988>,  <24.767227, 35.601727, 36.081100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.643826, 36.067463, 35.513988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.922606, 35.985344, 35.788830>,  <25.089874, 35.936073, 35.953735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.922606, 35.985344, 35.788830>,  <24.643826, 36.067463, 35.513988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.922606, 35.985344, 35.788830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714053, 0.110150, -0.691372,
		0.066253, 0.972481, 0.223364,
		0.696950, -0.205299, 0.687105,
		25.131691, 35.923756, 35.994961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132959, 36.619160, 35.490852>,  <24.643826, 36.067463, 35.513988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132959, 36.619160, 35.490852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352627, 36.318920, 35.637829>,  <25.484426, 36.138775, 35.726013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352627, 36.318920, 35.637829>,  <25.132959, 36.619160, 35.490852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352627, 36.318920, 35.637829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735262, 0.224960, -0.639361,
		0.397245, 0.621284, 0.675428,
		0.549169, -0.750600, 0.367442,
		25.517378, 36.093739, 35.748062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.675768, 36.880341, 35.827938>,  <25.132959, 36.619160, 35.490852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.675768, 36.880341, 35.827938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782803, 36.509983, 35.721264>,  <25.847023, 36.287769, 35.657261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782803, 36.509983, 35.721264>,  <25.675768, 36.880341, 35.827938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782803, 36.509983, 35.721264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786025, 0.369844, -0.495359,
		0.557282, -0.077071, 0.826739,
		0.267587, -0.925892, -0.266687,
		25.863079, 36.232216, 35.641258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308981, 37.004932, 35.799980>,  <25.675768, 36.880341, 35.827938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308981, 37.004932, 35.799980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303785, 36.670383, 35.580776>,  <26.300667, 36.469654, 35.449253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.303785, 36.670383, 35.580776>,  <26.308981, 37.004932, 35.799980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303785, 36.670383, 35.580776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690003, 0.389155, -0.610290,
		0.723690, -0.386053, 0.572046,
		-0.012990, -0.836374, -0.548005,
		26.299889, 36.419472, 35.416374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.007423, 36.760498, 35.796276>,  <26.308981, 37.004932, 35.799980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.007423, 36.760498, 35.796276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818636, 36.665024, 35.456799>,  <26.705364, 36.607738, 35.253113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.818636, 36.665024, 35.456799>,  <27.007423, 36.760498, 35.796276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.818636, 36.665024, 35.456799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667761, 0.531754, -0.520896,
		0.575624, -0.812569, -0.091588,
		-0.471967, -0.238682, -0.848692,
		26.677046, 36.593418, 35.202190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.424990, 36.415459, 35.380028>,  <27.007423, 36.760498, 35.796276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.424990, 36.415459, 35.380028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161186, 36.620117, 35.159748>,  <27.002905, 36.742912, 35.027580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161186, 36.620117, 35.159748>,  <27.424990, 36.415459, 35.380028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161186, 36.620117, 35.159748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744135, 0.340719, -0.574607,
		-0.106364, -0.788750, -0.605442,
		-0.659507, 0.511648, -0.550697,
		26.963333, 36.773613, 34.994537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606337, 36.462261, 34.602844>,  <27.424990, 36.415459, 35.380028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606337, 36.462261, 34.602844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404470, 36.784832, 34.726120>,  <27.283352, 36.978374, 34.800087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.404470, 36.784832, 34.726120>,  <27.606337, 36.462261, 34.602844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404470, 36.784832, 34.726120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594050, 0.583414, -0.553835,
		-0.626434, -0.096418, -0.773488,
		-0.504664, 0.806432, 0.308193,
		27.253071, 37.026760, 34.818577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506241, 36.913662, 34.065304>,  <27.606337, 36.462261, 34.602844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506241, 36.913662, 34.065304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532904, 37.130024, 34.400681>,  <27.548903, 37.259842, 34.601906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.532904, 37.130024, 34.400681>,  <27.506241, 36.913662, 34.065304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532904, 37.130024, 34.400681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618129, 0.637248, -0.460251,
		-0.783245, 0.548944, -0.291869,
		0.066659, 0.540903, 0.838440,
		27.552902, 37.292294, 34.652214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310604, 37.016293, 34.139946>,  <27.506241, 36.913662, 34.065304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310604, 37.016293, 34.139946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655256, 36.813343, 34.145077>,  <28.862047, 36.691574, 34.148155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655256, 36.813343, 34.145077>,  <28.310604, 37.016293, 34.139946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655256, 36.813343, 34.145077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073317, -0.099422, 0.992341,
		-0.502214, -0.855971, -0.122864,
		0.861630, -0.507375, 0.012826,
		28.913746, 36.661129, 34.148926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879215, 37.531418, 34.094128>,  <28.310604, 37.016293, 34.139946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879215, 37.531418, 34.094128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213831, 37.435211, 34.291046>,  <28.414600, 37.377487, 34.409199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213831, 37.435211, 34.291046>,  <27.879215, 37.531418, 34.094128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213831, 37.435211, 34.291046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449425, -0.212738, -0.867617,
		0.313403, 0.947046, -0.069871,
		0.836538, -0.240512, 0.492300,
		28.464792, 37.363056, 34.438736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560680, 37.778179, 33.954742>,  <27.879215, 37.531418, 34.094128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560680, 37.778179, 33.954742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402529, 38.043514, 33.700607>,  <28.307638, 38.202717, 33.548126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.402529, 38.043514, 33.700607>,  <28.560680, 37.778179, 33.954742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.402529, 38.043514, 33.700607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735970, -0.185069, -0.651228,
		-0.549569, -0.725070, -0.415028,
		-0.395377, 0.663343, -0.635338,
		28.283916, 38.242516, 33.510006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469250, 37.496944, 33.302105>,  <28.560680, 37.778179, 33.954742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469250, 37.496944, 33.302105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530180, 37.886322, 33.233738>,  <28.566738, 38.119949, 33.192719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.530180, 37.886322, 33.233738>,  <28.469250, 37.496944, 33.302105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.530180, 37.886322, 33.233738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667273, -0.228863, -0.708779,
		-0.729070, -0.006083, -0.684412,
		0.152325, 0.973440, -0.170917,
		28.575878, 38.178352, 33.182465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699772, 37.668880, 32.625546>,  <28.469250, 37.496944, 33.302105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699772, 37.668880, 32.625546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841627, 37.942696, 32.880306>,  <28.926741, 38.106983, 33.033161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841627, 37.942696, 32.880306>,  <28.699772, 37.668880, 32.625546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841627, 37.942696, 32.880306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877555, -0.008602, -0.479398,
		-0.322686, 0.728929, -0.603769,
		0.354640, 0.684536, 0.636900,
		28.948019, 38.148056, 33.071377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941402, 38.171494, 32.239491>,  <28.699772, 37.668880, 32.625546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941402, 38.171494, 32.239491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129198, 38.129780, 32.590195>,  <29.241877, 38.104752, 32.800617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129198, 38.129780, 32.590195>,  <28.941402, 38.171494, 32.239491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129198, 38.129780, 32.590195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840401, -0.251718, -0.479963,
		0.270750, 0.962165, -0.030536,
		0.469490, -0.104288, 0.876757,
		29.270044, 38.098492, 32.853222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540060, 38.677528, 32.304264>,  <28.941402, 38.171494, 32.239491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540060, 38.677528, 32.304264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586512, 38.341595, 32.516373>,  <29.614382, 38.140034, 32.643639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.586512, 38.341595, 32.516373>,  <29.540060, 38.677528, 32.304264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586512, 38.341595, 32.516373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850046, -0.192111, -0.490424,
		0.513747, 0.507706, 0.691592,
		0.116129, -0.839838, 0.530269,
		29.621351, 38.089642, 32.675453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209082, 38.574108, 31.988312>,  <29.540060, 38.677528, 32.304264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209082, 38.574108, 31.988312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109726, 38.283470, 32.244549>,  <30.050112, 38.109085, 32.398289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.109726, 38.283470, 32.244549>,  <30.209082, 38.574108, 31.988312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109726, 38.283470, 32.244549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881367, -0.443886, -0.161731,
		0.401863, 0.524423, 0.750657,
		-0.248391, -0.726599, 0.640591,
		30.035210, 38.065491, 32.436726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758846, 38.549519, 32.469807>,  <30.209082, 38.574108, 31.988312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758846, 38.549519, 32.469807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569916, 38.197929, 32.443535>,  <30.456558, 37.986977, 32.427773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569916, 38.197929, 32.443535>,  <30.758846, 38.549519, 32.469807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569916, 38.197929, 32.443535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865995, -0.448888, -0.220345,
		0.164194, -0.160955, 0.973208,
		-0.472327, -0.878973, -0.065682,
		30.428217, 37.934238, 32.423832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953119, 37.948399, 32.927731>,  <30.758846, 38.549519, 32.469807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953119, 37.948399, 32.927731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849106, 37.864090, 32.550804>,  <30.786697, 37.813503, 32.324650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849106, 37.864090, 32.550804>,  <30.953119, 37.948399, 32.927731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849106, 37.864090, 32.550804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947558, -0.243468, -0.207022,
		-0.185790, -0.946731, 0.263027,
		-0.260033, -0.210771, -0.942316,
		30.771095, 37.800858, 32.268108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703949, 37.515305, 32.853325>,  <30.953119, 37.948399, 32.927731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703949, 37.515305, 32.853325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998419, 37.417301, 33.105679>,  <32.175102, 37.358501, 33.257092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998419, 37.417301, 33.105679>,  <31.703949, 37.515305, 32.853325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998419, 37.417301, 33.105679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226165, -0.789525, -0.570525,
		0.637882, 0.562692, -0.525818,
		0.736176, -0.245006, 0.630886,
		32.219273, 37.343800, 33.294945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457653, 37.428265, 32.718124>,  <31.703949, 37.515305, 32.853325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457653, 37.428265, 32.718124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403263, 37.135548, 32.985256>,  <32.370628, 36.959919, 33.145535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403263, 37.135548, 32.985256>,  <32.457653, 37.428265, 32.718124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403263, 37.135548, 32.985256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267781, -0.676144, -0.686383,
		0.953836, 0.085500, 0.287899,
		-0.135975, -0.731791, 0.667826,
		32.362469, 36.916012, 33.185604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118584, 37.159943, 33.089252>,  <32.457653, 37.428265, 32.718124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118584, 37.159943, 33.089252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420998, 37.409271, 33.169132>,  <33.602448, 37.558868, 33.217060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420998, 37.409271, 33.169132>,  <33.118584, 37.159943, 33.089252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420998, 37.409271, 33.169132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155875, 0.124865, -0.979853,
		-0.635701, 0.771930, -0.002759,
		0.756034, 0.623324, 0.199702,
		33.647808, 37.596268, 33.229042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095490, 37.934978, 32.741127>,  <33.118584, 37.159943, 33.089252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095490, 37.934978, 32.741127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469433, 37.808533, 32.805771>,  <33.693798, 37.732666, 32.844559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469433, 37.808533, 32.805771>,  <33.095490, 37.934978, 32.741127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469433, 37.808533, 32.805771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215895, 0.144802, -0.965620,
		0.281840, 0.937607, 0.203615,
		0.934856, -0.316110, 0.161614,
		33.749889, 37.713699, 32.854256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487743, 38.327202, 32.194992>,  <33.095490, 37.934978, 32.741127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487743, 38.327202, 32.194992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719059, 38.020069, 32.305279>,  <33.857849, 37.835789, 32.371449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719059, 38.020069, 32.305279>,  <33.487743, 38.327202, 32.194992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719059, 38.020069, 32.305279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202992, -0.191906, -0.960191,
		0.790176, 0.611234, 0.044887,
		0.578288, -0.767831, 0.275715,
		33.892544, 37.789719, 32.387993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269745, 38.385410, 32.044205>,  <33.487743, 38.327202, 32.194992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269745, 38.385410, 32.044205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168133, 37.998558, 32.039581>,  <34.107166, 37.766449, 32.036808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168133, 37.998558, 32.039581>,  <34.269745, 38.385410, 32.044205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168133, 37.998558, 32.039581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189020, -0.037927, -0.981241,
		0.948546, -0.251451, 0.192441,
		-0.254033, -0.967127, -0.011554,
		34.091923, 37.708420, 32.036114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923016, 38.146915, 31.694479>,  <34.269745, 38.385410, 32.044205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923016, 38.146915, 31.694479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580265, 37.953217, 31.623749>,  <34.374615, 37.836998, 31.581310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580265, 37.953217, 31.623749>,  <34.923016, 38.146915, 31.694479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580265, 37.953217, 31.623749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301030, -0.191551, -0.934178,
		0.418506, -0.853703, 0.309910,
		-0.856874, -0.484252, -0.176825,
		34.323204, 37.807941, 31.570702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705162, 37.946354, 32.424679>,  <34.923016, 38.146915, 31.694479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705162, 37.946354, 32.424679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470791, 38.091209, 32.714657>,  <34.330166, 38.178123, 32.888641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470791, 38.091209, 32.714657>,  <34.705162, 37.946354, 32.424679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470791, 38.091209, 32.714657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192583, -0.806735, 0.558651,
		0.787145, 0.466942, 0.402949,
		-0.585931, 0.362138, 0.724942,
		34.295013, 38.199852, 32.932140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004627, 38.559872, 32.691410>,  <34.705162, 37.946354, 32.424679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004627, 38.559872, 32.691410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787334, 38.893578, 32.729149>,  <34.656960, 39.093800, 32.751793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787334, 38.893578, 32.729149>,  <35.004627, 38.559872, 32.691410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787334, 38.893578, 32.729149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612930, 0.317276, 0.723638,
		0.573770, 0.450934, -0.683700,
		-0.543234, 0.834263, 0.094348,
		34.624363, 39.143856, 32.757454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501499, 39.056026, 32.612701>,  <35.004627, 38.559872, 32.691410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501499, 39.056026, 32.612701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183014, 39.214977, 32.795193>,  <34.991924, 39.310349, 32.904686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183014, 39.214977, 32.795193>,  <35.501499, 39.056026, 32.612701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183014, 39.214977, 32.795193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602269, 0.448776, 0.660206,
		0.057605, 0.800434, -0.596646,
		-0.796212, 0.397373, 0.456225,
		34.944149, 39.334190, 32.932060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615147, 39.819881, 32.721470>,  <35.501499, 39.056026, 32.612701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615147, 39.819881, 32.721470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350693, 39.702789, 32.997791>,  <35.192020, 39.632534, 33.163586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350693, 39.702789, 32.997791>,  <35.615147, 39.819881, 32.721470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350693, 39.702789, 32.997791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644008, 0.250953, 0.722686,
		-0.384912, 0.922676, 0.022608,
		-0.661132, -0.292730, 0.690806,
		35.152351, 39.614971, 33.205032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727932, 40.331089, 33.188755>,  <35.615147, 39.819881, 32.721470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727932, 40.331089, 33.188755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530750, 40.047176, 33.390030>,  <35.412441, 39.876827, 33.510796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530750, 40.047176, 33.390030>,  <35.727932, 40.331089, 33.188755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530750, 40.047176, 33.390030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585683, 0.156974, 0.795194,
		-0.643403, 0.686708, 0.338327,
		-0.492958, -0.709783, 0.503191,
		35.382862, 39.834240, 33.540989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342094, 40.656933, 33.851433>,  <35.727932, 40.331089, 33.188755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342094, 40.656933, 33.851433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446831, 40.272415, 33.885731>,  <35.509674, 40.041706, 33.906311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446831, 40.272415, 33.885731>,  <35.342094, 40.656933, 33.851433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446831, 40.272415, 33.885731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567501, 0.225221, 0.791971,
		-0.780629, -0.158710, 0.604508,
		0.261841, -0.961294, 0.085746,
		35.525383, 39.984028, 33.911453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227058, 40.361042, 34.547134>,  <35.342094, 40.656933, 33.851433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227058, 40.361042, 34.547134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509533, 40.148968, 34.359432>,  <35.679016, 40.021721, 34.246811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509533, 40.148968, 34.359432>,  <35.227058, 40.361042, 34.547134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509533, 40.148968, 34.359432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631405, 0.171712, 0.756203,
		-0.320355, -0.830309, 0.456026,
		0.706187, -0.530190, -0.469252,
		35.721390, 39.989910, 34.218655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553989, 40.104889, 35.063927>,  <35.227058, 40.361042, 34.547134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553989, 40.104889, 35.063927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803406, 40.077091, 34.752449>,  <35.953056, 40.060413, 34.565563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803406, 40.077091, 34.752449>,  <35.553989, 40.104889, 35.063927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803406, 40.077091, 34.752449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780771, 0.106198, 0.615726,
		0.039907, -0.991913, 0.120478,
		0.623541, -0.069494, -0.778696,
		35.990467, 40.056244, 34.518841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307549, 40.210758, 35.234234>,  <35.553989, 40.104889, 35.063927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307549, 40.210758, 35.234234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367573, 39.829288, 35.338528>,  <36.403587, 39.600407, 35.401104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367573, 39.829288, 35.338528>,  <36.307549, 40.210758, 35.234234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367573, 39.829288, 35.338528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454183, -0.300744, -0.838612,
		0.878179, 0.007425, -0.478274,
		0.150065, -0.953676, 0.260735,
		36.412594, 39.543186, 35.416748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701504, 39.918938, 34.729553>,  <36.307549, 40.210758, 35.234234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701504, 39.918938, 34.729553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424538, 39.682407, 34.894913>,  <36.258358, 39.540489, 34.994129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.424538, 39.682407, 34.894913>,  <36.701504, 39.918938, 34.729553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424538, 39.682407, 34.894913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433125, -0.117570, -0.893633,
		0.577029, -0.797818, -0.174710,
		-0.692416, -0.591324, 0.413396,
		36.216812, 39.505009, 35.018932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572685, 39.369938, 34.193962>,  <36.701504, 39.918938, 34.729553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572685, 39.369938, 34.193962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276188, 39.338001, 34.460548>,  <36.098289, 39.318840, 34.620502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276188, 39.338001, 34.460548>,  <36.572685, 39.369938, 34.193962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276188, 39.338001, 34.460548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664695, -0.050948, -0.745376,
		0.093470, -0.995504, -0.015308,
		-0.741245, -0.079845, 0.666468,
		36.053814, 39.314049, 34.660488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185642, 38.904415, 33.961288>,  <36.572685, 39.369938, 34.193962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185642, 38.904415, 33.961288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968201, 39.158871, 34.180313>,  <35.837738, 39.311543, 34.311729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.968201, 39.158871, 34.180313>,  <36.185642, 38.904415, 33.961288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968201, 39.158871, 34.180313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579411, 0.187591, -0.793154,
		-0.607274, -0.748423, 0.266611,
		-0.543601, 0.636139, 0.547563,
		35.805119, 39.349712, 34.344582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437386, 38.700737, 33.929882>,  <36.185642, 38.904415, 33.961288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437386, 38.700737, 33.929882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459553, 39.092911, 34.005432>,  <35.472855, 39.328217, 34.050762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459553, 39.092911, 34.005432>,  <35.437386, 38.700737, 33.929882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459553, 39.092911, 34.005432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700726, 0.172944, -0.692152,
		-0.711275, -0.093988, 0.696602,
		0.055419, 0.980437, 0.188871,
		35.476177, 39.387043, 34.062092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783825, 38.916561, 34.300728>,  <35.437386, 38.700737, 33.929882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783825, 38.916561, 34.300728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944363, 39.199047, 34.067429>,  <35.040688, 39.368538, 33.927448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.944363, 39.199047, 34.067429>,  <34.783825, 38.916561, 34.300728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944363, 39.199047, 34.067429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786337, -0.060863, -0.614793,
		-0.469676, 0.705373, 0.530898,
		0.401347, 0.706218, -0.583247,
		35.064766, 39.410912, 33.892456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290195, 39.337116, 34.102467>,  <34.783825, 38.916561, 34.300728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290195, 39.337116, 34.102467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558769, 39.453159, 33.829700>,  <34.719913, 39.522785, 33.666042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558769, 39.453159, 33.829700>,  <34.290195, 39.337116, 34.102467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558769, 39.453159, 33.829700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705479, -0.031473, -0.708031,
		-0.226868, 0.956476, 0.183533,
		0.671439, 0.290109, -0.681914,
		34.760201, 39.540192, 33.625126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004757, 39.861301, 33.783356>,  <34.290195, 39.337116, 34.102467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004757, 39.861301, 33.783356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262695, 39.700012, 33.523636>,  <34.417458, 39.603237, 33.367805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.262695, 39.700012, 33.523636>,  <34.004757, 39.861301, 33.783356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262695, 39.700012, 33.523636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701288, 0.025665, -0.712416,
		0.303927, 0.914741, -0.266227,
		0.644843, -0.403224, -0.649298,
		34.456150, 39.579044, 33.328846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992687, 40.263252, 33.138649>,  <34.004757, 39.861301, 33.783356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992687, 40.263252, 33.138649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163773, 39.920967, 33.022160>,  <34.266422, 39.715595, 32.952267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163773, 39.920967, 33.022160>,  <33.992687, 40.263252, 33.138649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163773, 39.920967, 33.022160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459566, 0.071573, -0.885255,
		0.778371, 0.512473, -0.362645,
		0.427713, -0.855716, -0.291225,
		34.292088, 39.664253, 32.934792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203663, 40.300694, 32.348545>,  <33.992687, 40.263252, 33.138649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203663, 40.300694, 32.348545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121593, 39.932953, 32.482830>,  <34.072353, 39.712311, 32.563400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121593, 39.932953, 32.482830>,  <34.203663, 40.300694, 32.348545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121593, 39.932953, 32.482830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703436, -0.099973, -0.703692,
		0.680501, -0.380530, -0.626191,
		-0.205174, -0.919349, 0.335710,
		34.060040, 39.657146, 32.583542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163548, 39.680023, 31.816681>,  <34.203663, 40.300694, 32.348545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163548, 39.680023, 31.816681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932365, 39.582031, 32.128052>,  <33.793655, 39.523235, 32.314877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932365, 39.582031, 32.128052>,  <34.163548, 39.680023, 31.816681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932365, 39.582031, 32.128052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729693, -0.271967, -0.627362,
		0.365401, -0.930600, -0.021580,
		-0.577954, -0.244985, 0.778429,
		33.758980, 39.508537, 32.361580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449314, 39.638027, 31.622166>,  <34.163548, 39.680023, 31.816681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449314, 39.638027, 31.622166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759117, 39.883041, 31.558998>,  <33.945000, 40.030052, 31.521097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759117, 39.883041, 31.558998>,  <33.449314, 39.638027, 31.622166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759117, 39.883041, 31.558998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267087, -0.542965, -0.796149,
		-0.573415, 0.574445, -0.584131,
		0.774506, 0.612537, -0.157918,
		33.991470, 40.066803, 31.511623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435833, 39.762642, 30.961697>,  <33.449314, 39.638027, 31.622166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435833, 39.762642, 30.961697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807690, 39.876034, 31.055847>,  <34.030804, 39.944069, 31.112337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807690, 39.876034, 31.055847>,  <33.435833, 39.762642, 30.961697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807690, 39.876034, 31.055847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330065, -0.356759, -0.873946,
		-0.163773, 0.890148, -0.425225,
		0.929643, 0.283480, 0.235379,
		34.086582, 39.961079, 31.126461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660568, 40.088737, 30.417616>,  <33.435833, 39.762642, 30.961697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660568, 40.088737, 30.417616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005966, 40.007778, 30.602404>,  <34.213203, 39.959202, 30.713276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005966, 40.007778, 30.602404>,  <33.660568, 40.088737, 30.417616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005966, 40.007778, 30.602404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394078, -0.300898, -0.868426,
		0.314777, 0.931930, -0.180060,
		0.863492, -0.202403, 0.461968,
		34.265015, 39.947056, 30.740993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283318, 40.449272, 30.085255>,  <33.660568, 40.088737, 30.417616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283318, 40.449272, 30.085255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426861, 40.123997, 30.268534>,  <34.512985, 39.928833, 30.378502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426861, 40.123997, 30.268534>,  <34.283318, 40.449272, 30.085255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426861, 40.123997, 30.268534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337801, -0.344471, -0.875917,
		0.870122, 0.469109, 0.151080,
		0.358858, -0.813189, 0.458197,
		34.534519, 39.880039, 30.405993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997643, 40.454456, 29.913527>,  <34.283318, 40.449272, 30.085255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997643, 40.454456, 29.913527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879189, 40.081223, 29.995171>,  <34.808117, 39.857285, 30.044157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879189, 40.081223, 29.995171>,  <34.997643, 40.454456, 29.913527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879189, 40.081223, 29.995171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178157, -0.263906, -0.947952,
		0.938384, -0.244359, 0.244387,
		-0.296136, -0.933082, 0.204111,
		34.790348, 39.801296, 30.056404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450344, 40.146198, 29.570789>,  <34.997643, 40.454456, 29.913527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450344, 40.146198, 29.570789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185089, 39.852570, 29.629284>,  <35.025936, 39.676392, 29.664381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185089, 39.852570, 29.629284>,  <35.450344, 40.146198, 29.570789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185089, 39.852570, 29.629284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218483, -0.376701, -0.900201,
		0.715899, -0.565008, 0.410188,
		-0.663139, -0.734072, 0.146235,
		34.986149, 39.632347, 29.673155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752438, 39.512932, 29.288862>,  <35.450344, 40.146198, 29.570789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752438, 39.512932, 29.288862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361546, 39.428070, 29.290422>,  <35.127010, 39.377151, 29.291359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361546, 39.428070, 29.290422>,  <35.752438, 39.512932, 29.288862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361546, 39.428070, 29.290422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025847, -0.137252, -0.990199,
		0.210612, -0.967549, 0.139610,
		-0.977228, -0.212156, 0.003899,
		35.068378, 39.364422, 29.291592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680687, 39.031681, 28.765078>,  <35.752438, 39.512932, 29.288862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680687, 39.031681, 28.765078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294720, 39.121307, 28.819815>,  <35.063141, 39.175083, 28.852657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294720, 39.121307, 28.819815>,  <35.680687, 39.031681, 28.765078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294720, 39.121307, 28.819815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172848, -0.149820, -0.973487,
		-0.197619, -0.962991, 0.183293,
		-0.964920, 0.224061, 0.136844,
		35.005245, 39.188526, 28.860868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314480, 38.570538, 28.350815>,  <35.680687, 39.031681, 28.765078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314480, 38.570538, 28.350815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090546, 38.898376, 28.399549>,  <34.956184, 39.095081, 28.428791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090546, 38.898376, 28.399549>,  <35.314480, 38.570538, 28.350815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090546, 38.898376, 28.399549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186145, 0.018882, -0.982341,
		-0.807428, -0.572624, 0.141994,
		-0.559831, 0.819601, 0.121838,
		34.922596, 39.144257, 28.436100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670513, 38.441364, 27.943655>,  <35.314480, 38.570538, 28.350815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670513, 38.441364, 27.943655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720337, 38.833858, 28.002522>,  <34.750233, 39.069355, 28.037842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720337, 38.833858, 28.002522>,  <34.670513, 38.441364, 27.943655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720337, 38.833858, 28.002522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111102, 0.161180, -0.980651,
		-0.985972, 0.105799, 0.129094,
		0.124559, 0.981238, 0.147165,
		34.757706, 39.128231, 28.046671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266018, 38.715446, 27.411732>,  <34.670513, 38.441364, 27.943655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266018, 38.715446, 27.411732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486076, 39.030701, 27.522135>,  <34.618111, 39.219852, 27.588377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486076, 39.030701, 27.522135>,  <34.266018, 38.715446, 27.411732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486076, 39.030701, 27.522135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099459, 0.266325, -0.958738,
		-0.829121, 0.554901, 0.068132,
		0.550150, 0.788134, 0.276006,
		34.651123, 39.267139, 27.604937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945957, 39.362034, 26.992935>,  <34.266018, 38.715446, 27.411732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945957, 39.362034, 26.992935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306694, 39.487862, 27.111414>,  <34.523136, 39.563358, 27.182501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.306694, 39.487862, 27.111414>,  <33.945957, 39.362034, 26.992935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306694, 39.487862, 27.111414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141986, 0.431696, -0.890774,
		-0.408076, 0.845391, 0.344656,
		0.901839, 0.314567, 0.296199,
		34.577248, 39.582233, 27.200274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953045, 40.021706, 26.723047>,  <33.945957, 39.362034, 26.992935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953045, 40.021706, 26.723047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337780, 39.932091, 26.785877>,  <34.568623, 39.878323, 26.823576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337780, 39.932091, 26.785877>,  <33.953045, 40.021706, 26.723047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337780, 39.932091, 26.785877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214289, 0.259831, -0.941578,
		0.170134, 0.939306, 0.297924,
		0.961839, -0.224036, 0.157077,
		34.626331, 39.864880, 26.833000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306072, 40.566086, 26.552704>,  <33.953045, 40.021706, 26.723047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306072, 40.566086, 26.552704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579113, 40.277290, 26.507471>,  <34.742939, 40.104012, 26.480331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579113, 40.277290, 26.507471>,  <34.306072, 40.566086, 26.552704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579113, 40.277290, 26.507471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118335, 0.261898, -0.957813,
		0.721145, 0.640425, 0.264209,
		0.682603, -0.721987, -0.113081,
		34.783894, 40.060696, 26.473547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819279, 40.921917, 26.244932>,  <34.306072, 40.566086, 26.552704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819279, 40.921917, 26.244932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880947, 40.532253, 26.178909>,  <34.917950, 40.298454, 26.139296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880947, 40.532253, 26.178909>,  <34.819279, 40.921917, 26.244932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880947, 40.532253, 26.178909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315063, 0.206803, -0.926265,
		0.936464, 0.090804, 0.338806,
		0.154175, -0.974160, -0.165055,
		34.927200, 40.240005, 26.129393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549976, 40.901737, 26.028250>,  <34.819279, 40.921917, 26.244932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549976, 40.901737, 26.028250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370930, 40.569904, 25.894730>,  <35.263500, 40.370804, 25.814617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370930, 40.569904, 25.894730>,  <35.549976, 40.901737, 26.028250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370930, 40.569904, 25.894730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384564, 0.158418, -0.909403,
		0.807308, -0.535435, 0.248118,
		-0.447621, -0.829586, -0.333801,
		35.236645, 40.321030, 25.794590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071468, 40.572201, 25.625212>,  <35.549976, 40.901737, 26.028250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071468, 40.572201, 25.625212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723511, 40.424068, 25.494900>,  <35.514736, 40.335190, 25.416712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723511, 40.424068, 25.494900>,  <36.071468, 40.572201, 25.625212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723511, 40.424068, 25.494900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196093, 0.346389, -0.917367,
		0.452578, -0.861898, -0.228703,
		-0.869897, -0.370333, -0.325780,
		35.462540, 40.312969, 25.397165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185127, 40.141109, 25.078875>,  <36.071468, 40.572201, 25.625212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185127, 40.141109, 25.078875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799999, 40.231682, 25.019932>,  <35.568924, 40.286026, 24.984566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799999, 40.231682, 25.019932>,  <36.185127, 40.141109, 25.078875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799999, 40.231682, 25.019932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151962, 0.002951, -0.988382,
		-0.223368, -0.974022, -0.037251,
		-0.962816, 0.226433, -0.147355,
		35.511154, 40.299610, 24.975725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053986, 40.070461, 24.428310>,  <36.185127, 40.141109, 25.078875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053986, 40.070461, 24.428310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684349, 40.217773, 24.469139>,  <35.462566, 40.306160, 24.493635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684349, 40.217773, 24.469139>,  <36.053986, 40.070461, 24.428310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684349, 40.217773, 24.469139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091493, 0.046117, -0.994737,
		-0.371051, -0.928569, -0.008922,
		-0.924094, 0.368282, 0.102070,
		35.407120, 40.328259, 24.499760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531570, 39.642330, 24.139452>,  <36.053986, 40.070461, 24.428310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531570, 39.642330, 24.139452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340961, 39.993713, 24.153481>,  <35.226597, 40.204544, 24.161898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340961, 39.993713, 24.153481>,  <35.531570, 39.642330, 24.139452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340961, 39.993713, 24.153481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196782, -0.067696, -0.978108,
		-0.856856, -0.472992, 0.205124,
		-0.476523, 0.878462, 0.035071,
		35.198006, 40.257252, 24.164001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843548, 39.567295, 23.829546>,  <35.531570, 39.642330, 24.139452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843548, 39.567295, 23.829546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888393, 39.964363, 23.811514>,  <34.915298, 40.202606, 23.800695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.888393, 39.964363, 23.811514>,  <34.843548, 39.567295, 23.829546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888393, 39.964363, 23.811514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294145, -0.010179, -0.955707,
		-0.949163, 0.120404, 0.290849,
		0.112111, 0.992673, -0.045078,
		34.922028, 40.262165, 23.797991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173855, 39.829464, 23.720383>,  <34.843548, 39.567295, 23.829546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173855, 39.829464, 23.720383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446640, 40.098373, 23.605165>,  <34.610310, 40.259720, 23.536036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446640, 40.098373, 23.605165>,  <34.173855, 39.829464, 23.720383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446640, 40.098373, 23.605165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484146, 0.119753, -0.866754,
		-0.548204, 0.730550, 0.407147,
		0.681964, 0.672277, -0.288044,
		34.651230, 40.300056, 23.518753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803337, 40.326984, 23.383877>,  <34.173855, 39.829464, 23.720383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803337, 40.326984, 23.383877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156105, 40.454533, 23.245005>,  <34.367767, 40.531063, 23.161682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156105, 40.454533, 23.245005>,  <33.803337, 40.326984, 23.383877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156105, 40.454533, 23.245005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387580, 0.071284, -0.919076,
		-0.268317, 0.945114, 0.186454,
		0.881923, 0.318869, -0.347181,
		34.420681, 40.550194, 23.140850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636662, 40.904003, 23.011620>,  <33.803337, 40.326984, 23.383877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636662, 40.904003, 23.011620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985931, 40.754929, 22.885973>,  <34.195496, 40.665485, 22.810585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985931, 40.754929, 22.885973>,  <33.636662, 40.904003, 23.011620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985931, 40.754929, 22.885973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314405, 0.061773, -0.947277,
		0.372437, 0.925901, -0.063235,
		0.873178, -0.372682, -0.314115,
		34.247887, 40.643124, 22.791739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827011, 41.355541, 22.465578>,  <33.636662, 40.904003, 23.011620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827011, 41.355541, 22.465578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060905, 41.035408, 22.412586>,  <34.201244, 40.843330, 22.380791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060905, 41.035408, 22.412586>,  <33.827011, 41.355541, 22.465578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060905, 41.035408, 22.412586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172639, 0.036800, -0.984298,
		0.792639, 0.598428, -0.116650,
		0.584738, -0.800331, -0.132481,
		34.236328, 40.795307, 22.372843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345356, 41.569027, 21.976971>,  <33.827011, 41.355541, 22.465578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345356, 41.569027, 21.976971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336601, 41.169838, 21.953043>,  <34.331348, 40.930325, 21.938686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336601, 41.169838, 21.953043>,  <34.345356, 41.569027, 21.976971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336601, 41.169838, 21.953043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198512, 0.062980, -0.978073,
		0.979854, -0.009528, -0.199487,
		-0.021883, -0.997969, -0.059820,
		34.330036, 40.870445, 21.935097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761295, 41.404488, 21.395092>,  <34.345356, 41.569027, 21.976971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761295, 41.404488, 21.395092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545204, 41.073494, 21.456297>,  <34.415550, 40.874897, 21.493021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545204, 41.073494, 21.456297>,  <34.761295, 41.404488, 21.395092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545204, 41.073494, 21.456297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065399, -0.139996, -0.987990,
		0.838971, -0.543751, 0.021514,
		-0.540232, -0.827488, 0.153014,
		34.383133, 40.825249, 21.502201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996876, 40.990696, 20.907860>,  <34.761295, 41.404488, 21.395092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996876, 40.990696, 20.907860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633251, 40.852493, 21.001011>,  <34.415077, 40.769573, 21.056902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633251, 40.852493, 21.001011>,  <34.996876, 40.990696, 20.907860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633251, 40.852493, 21.001011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062469, -0.439580, -0.896029,
		0.411949, -0.829094, 0.378022,
		-0.909063, -0.345504, 0.232877,
		34.360531, 40.748840, 21.070873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003494, 40.359196, 20.622036>,  <34.996876, 40.990696, 20.907860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003494, 40.359196, 20.622036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614754, 40.431808, 20.682100>,  <34.381508, 40.475376, 20.718140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614754, 40.431808, 20.682100>,  <35.003494, 40.359196, 20.622036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614754, 40.431808, 20.682100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210195, -0.380266, -0.900675,
		-0.106402, -0.906886, 0.407720,
		-0.971852, 0.181535, 0.150162,
		34.323196, 40.486271, 20.727148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606194, 39.745811, 20.473085>,  <35.003494, 40.359196, 20.622036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606194, 39.745811, 20.473085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351921, 40.053558, 20.447832>,  <34.199356, 40.238205, 20.432680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351921, 40.053558, 20.447832>,  <34.606194, 39.745811, 20.473085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351921, 40.053558, 20.447832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142956, -0.197693, -0.969784,
		-0.758601, -0.607447, 0.235655,
		-0.635680, 0.769367, -0.063132,
		34.161217, 40.284367, 20.428892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994125, 39.456303, 20.088898>,  <34.606194, 39.745811, 20.473085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994125, 39.456303, 20.088898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973927, 39.854393, 20.055477>,  <33.961807, 40.093246, 20.035425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973927, 39.854393, 20.055477>,  <33.994125, 39.456303, 20.088898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973927, 39.854393, 20.055477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245619, -0.093464, -0.964850,
		-0.968050, -0.028200, 0.249165,
		-0.050497, 0.995223, -0.083551,
		33.958778, 40.152962, 20.030413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388996, 39.534214, 19.734249>,  <33.994125, 39.456303, 20.088898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388996, 39.534214, 19.734249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568321, 39.890034, 19.699087>,  <33.675915, 40.103523, 19.677990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568321, 39.890034, 19.699087>,  <33.388996, 39.534214, 19.734249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568321, 39.890034, 19.699087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224800, 0.017020, -0.974256,
		-0.865149, 0.456530, 0.207600,
		0.448310, 0.889545, -0.087903,
		33.702816, 40.156898, 19.672716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968903, 39.880173, 19.308815>,  <33.388996, 39.534214, 19.734249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968903, 39.880173, 19.308815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308823, 40.089218, 19.281384>,  <33.512775, 40.214645, 19.264925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308823, 40.089218, 19.281384>,  <32.968903, 39.880173, 19.308815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308823, 40.089218, 19.281384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179226, 0.164148, -0.970017,
		-0.495692, 0.836616, 0.233161,
		0.849805, 0.522618, -0.068576,
		33.563763, 40.246002, 19.260811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779297, 40.481632, 18.800337>,  <32.968903, 39.880173, 19.308815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779297, 40.481632, 18.800337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174263, 40.420334, 18.815943>,  <33.411243, 40.383556, 18.825306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174263, 40.420334, 18.815943>,  <32.779297, 40.481632, 18.800337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174263, 40.420334, 18.815943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068681, 0.193369, -0.978719,
		0.142440, 0.969084, 0.201461,
		0.987418, -0.153245, 0.039014,
		33.470490, 40.374359, 18.827646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108940, 41.058907, 18.478300>,  <32.779297, 40.481632, 18.800337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108940, 41.058907, 18.478300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404732, 40.790401, 18.457996>,  <33.582207, 40.629299, 18.445814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404732, 40.790401, 18.457996>,  <33.108940, 41.058907, 18.478300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404732, 40.790401, 18.457996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244406, 0.337965, -0.908870,
		0.627247, 0.659684, 0.413979,
		0.739477, -0.671265, -0.050757,
		33.626575, 40.589024, 18.442770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758533, 41.413078, 18.438679>,  <33.108940, 41.058907, 18.478300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758533, 41.413078, 18.438679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784298, 41.047626, 18.278112>,  <33.799759, 40.828358, 18.181772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784298, 41.047626, 18.278112>,  <33.758533, 41.413078, 18.438679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784298, 41.047626, 18.278112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131247, 0.406515, -0.904168,
		0.989255, 0.005557, 0.146097,
		0.064415, -0.913627, -0.401418,
		33.803623, 40.773537, 18.157686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237206, 41.559315, 18.021429>,  <33.758533, 41.413078, 18.438679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237206, 41.559315, 18.021429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083542, 41.219532, 17.876736>,  <33.991344, 41.015663, 17.789921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083542, 41.219532, 17.876736>,  <34.237206, 41.559315, 18.021429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083542, 41.219532, 17.876736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099972, 0.351221, -0.930940,
		0.917838, -0.393794, -0.050004,
		-0.384161, -0.849453, -0.361732,
		33.968292, 40.964695, 17.768215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576435, 41.542221, 17.416269>,  <34.237206, 41.559315, 18.021429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576435, 41.542221, 17.416269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257690, 41.305351, 17.368370>,  <34.066444, 41.163231, 17.339630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257690, 41.305351, 17.368370>,  <34.576435, 41.542221, 17.416269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257690, 41.305351, 17.368370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066160, 0.282545, -0.956970,
		0.600527, -0.754651, -0.264328,
		-0.796863, -0.592174, -0.119748,
		34.018631, 41.127701, 17.332445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661469, 41.190693, 16.811348>,  <34.576435, 41.542221, 17.416269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661469, 41.190693, 16.811348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265480, 41.174259, 16.865404>,  <34.027885, 41.164398, 16.897839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265480, 41.174259, 16.865404>,  <34.661469, 41.190693, 16.811348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265480, 41.174259, 16.865404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141177, 0.318618, -0.937311,
		-0.004548, -0.946992, -0.321224,
		-0.989974, -0.041087, 0.135143,
		33.968487, 41.161934, 16.905947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328613, 40.988178, 16.158131>,  <34.661469, 41.190693, 16.811348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328613, 40.988178, 16.158131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017384, 41.143520, 16.355629>,  <33.830647, 41.236725, 16.474127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017384, 41.143520, 16.355629>,  <34.328613, 40.988178, 16.158131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017384, 41.143520, 16.355629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248420, 0.531695, -0.809684,
		-0.576968, -0.752648, -0.317221,
		-0.778071, 0.388358, 0.493744,
		33.783962, 41.260029, 16.503752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726250, 41.006039, 15.679889>,  <34.328613, 40.988178, 16.158131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726250, 41.006039, 15.679889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634239, 41.265419, 15.970159>,  <33.579033, 41.421047, 16.144321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634239, 41.265419, 15.970159>,  <33.726250, 41.006039, 15.679889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634239, 41.265419, 15.970159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249860, 0.681324, -0.688017,
		-0.940562, -0.339580, 0.005298,
		-0.230027, 0.648447, 0.725675,
		33.565231, 41.459953, 16.187860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108448, 41.296921, 15.443287>,  <33.726250, 41.006039, 15.679889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108448, 41.296921, 15.443287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260677, 41.564224, 15.698973>,  <33.352016, 41.724606, 15.852385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260677, 41.564224, 15.698973>,  <33.108448, 41.296921, 15.443287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260677, 41.564224, 15.698973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013398, 0.687173, -0.726370,
		-0.924653, 0.285003, 0.252567,
		0.380575, 0.668256, 0.639215,
		33.374851, 41.764702, 15.890738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838203, 41.994843, 15.220161>,  <33.108448, 41.296921, 15.443287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838203, 41.994843, 15.220161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157906, 42.084873, 15.443062>,  <33.349728, 42.138893, 15.576802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157906, 42.084873, 15.443062>,  <32.838203, 41.994843, 15.220161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157906, 42.084873, 15.443062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066860, 0.888165, -0.454635,
		-0.597258, 0.400628, 0.694824,
		0.799257, 0.225078, 0.557250,
		33.397682, 42.152397, 15.610237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773319, 42.732742, 15.380097>,  <32.838203, 41.994843, 15.220161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773319, 42.732742, 15.380097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161812, 42.659370, 15.440835>,  <33.394909, 42.615349, 15.477278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.161812, 42.659370, 15.440835>,  <32.773319, 42.732742, 15.380097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.161812, 42.659370, 15.440835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232426, 0.868905, -0.437015,
		-0.051776, 0.459737, 0.886545,
		0.971235, -0.183430, 0.151843,
		33.453182, 42.604343, 15.486388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127388, 43.315018, 15.773578>,  <32.773319, 42.732742, 15.380097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127388, 43.315018, 15.773578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353615, 43.103672, 15.520288>,  <33.489349, 42.976864, 15.368315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353615, 43.103672, 15.520288>,  <33.127388, 43.315018, 15.773578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353615, 43.103672, 15.520288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267642, 0.843850, -0.465065,
		0.780067, 0.093548, 0.618664,
		0.565565, -0.528362, -0.633222,
		33.523285, 42.945164, 15.330322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893547, 43.417065, 15.857876>,  <33.127388, 43.315018, 15.773578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893547, 43.417065, 15.857876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751965, 43.338684, 15.492074>,  <33.667015, 43.291656, 15.272593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751965, 43.338684, 15.492074>,  <33.893547, 43.417065, 15.857876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751965, 43.338684, 15.492074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344316, 0.881828, -0.322219,
		0.869576, -0.428930, -0.244658,
		-0.353956, -0.195954, -0.914503,
		33.645779, 43.279896, 15.217723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326874, 43.664082, 15.350002>,  <33.893547, 43.417065, 15.857876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326874, 43.664082, 15.350002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994892, 43.635910, 15.128655>,  <33.795704, 43.619007, 14.995848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994892, 43.635910, 15.128655>,  <34.326874, 43.664082, 15.350002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994892, 43.635910, 15.128655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146766, 0.929477, -0.338427,
		0.538179, -0.362094, -0.761086,
		-0.829954, -0.070433, -0.553367,
		33.745907, 43.614780, 14.962646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458336, 44.119225, 14.733494>,  <34.326874, 43.664082, 15.350002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458336, 44.119225, 14.733494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058868, 44.103676, 14.747026>,  <33.819187, 44.094349, 14.755146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058868, 44.103676, 14.747026>,  <34.458336, 44.119225, 14.733494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058868, 44.103676, 14.747026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047645, 0.946570, -0.318958,
		-0.019626, -0.320146, -0.947165,
		-0.998672, -0.038868, 0.033831,
		33.759266, 44.092014, 14.757175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813053, 44.467682, 14.299381>,  <34.458336, 44.119225, 14.733494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813053, 44.467682, 14.299381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209850, 44.475246, 14.349324>,  <35.447929, 44.479786, 14.379291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209850, 44.475246, 14.349324>,  <34.813053, 44.467682, 14.299381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209850, 44.475246, 14.349324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064470, -0.774340, 0.629477,
		0.108585, -0.632487, -0.766922,
		0.991994, 0.018908, 0.124858,
		35.507450, 44.480919, 14.386782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070698, 43.735641, 14.382557>,  <34.813053, 44.467682, 14.299381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070698, 43.735641, 14.382557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312714, 44.001198, 14.558363>,  <35.457924, 44.160534, 14.663847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312714, 44.001198, 14.558363>,  <35.070698, 43.735641, 14.382557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312714, 44.001198, 14.558363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040161, -0.525868, 0.849617,
		0.795183, -0.531702, -0.291507,
		0.605038, 0.663894, 0.439516,
		35.494225, 44.200367, 14.690218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693672, 43.282009, 14.652089>,  <35.070698, 43.735641, 14.382557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693672, 43.282009, 14.652089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654579, 43.639759, 14.826697>,  <35.631123, 43.854408, 14.931462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654579, 43.639759, 14.826697>,  <35.693672, 43.282009, 14.652089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654579, 43.639759, 14.826697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103532, -0.427103, 0.898256,
		0.989813, 0.132979, -0.050856,
		-0.097728, 0.894371, 0.436519,
		35.625259, 43.908070, 14.957653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279163, 43.369888, 15.126842>,  <35.693672, 43.282009, 14.652089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279163, 43.369888, 15.126842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994129, 43.603455, 15.282413>,  <35.823109, 43.743595, 15.375756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994129, 43.603455, 15.282413>,  <36.279163, 43.369888, 15.126842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994129, 43.603455, 15.282413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104525, -0.459811, 0.881844,
		0.693755, 0.669042, 0.266621,
		-0.712586, 0.583915, 0.388927,
		35.780354, 43.778629, 15.399092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585720, 43.736309, 15.588656>,  <36.279163, 43.369888, 15.126842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585720, 43.736309, 15.588656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195427, 43.700001, 15.668358>,  <35.961250, 43.678215, 15.716179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195427, 43.700001, 15.668358>,  <36.585720, 43.736309, 15.588656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195427, 43.700001, 15.668358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216051, -0.546879, 0.808854,
		0.035546, 0.832276, 0.553221,
		-0.975735, -0.090773, 0.199254,
		35.902706, 43.672768, 15.728134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459099, 43.978432, 16.294790>,  <36.585720, 43.736309, 15.588656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459099, 43.978432, 16.294790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178574, 43.720627, 16.172958>,  <36.010258, 43.565945, 16.099859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178574, 43.720627, 16.172958>,  <36.459099, 43.978432, 16.294790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178574, 43.720627, 16.172958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128810, -0.534808, 0.835098,
		-0.701118, 0.546433, 0.458087,
		-0.701314, -0.644508, -0.304578,
		35.968178, 43.527275, 16.081585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914120, 43.920330, 16.794172>,  <36.459099, 43.978432, 16.294790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914120, 43.920330, 16.794172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931808, 43.561787, 16.617729>,  <35.942421, 43.346661, 16.511864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931808, 43.561787, 16.617729>,  <35.914120, 43.920330, 16.794172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931808, 43.561787, 16.617729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004044, -0.441698, 0.897154,
		-0.999013, -0.037893, -0.023159,
		0.044225, -0.896363, -0.441109,
		35.945076, 43.292877, 16.485397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538692, 43.543865, 17.213381>,  <35.914120, 43.920330, 16.794172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538692, 43.543865, 17.213381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755203, 43.268040, 17.020914>,  <35.885109, 43.102547, 16.905434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755203, 43.268040, 17.020914>,  <35.538692, 43.543865, 17.213381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755203, 43.268040, 17.020914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180277, -0.463766, 0.867422,
		-0.821290, -0.556261, -0.126715,
		0.541280, -0.689561, -0.481167,
		35.917587, 43.061172, 16.876564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411198, 42.968094, 17.596886>,  <35.538692, 43.543865, 17.213381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411198, 42.968094, 17.596886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758698, 42.880596, 17.419153>,  <35.967197, 42.828098, 17.312513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758698, 42.880596, 17.419153>,  <35.411198, 42.968094, 17.596886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758698, 42.880596, 17.419153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354873, -0.350859, 0.866581,
		-0.345428, -0.910528, -0.227196,
		0.868760, -0.218716, -0.444319,
		36.019321, 42.814972, 17.285854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641212, 42.408642, 17.958212>,  <35.411198, 42.968094, 17.596886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641212, 42.408642, 17.958212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978714, 42.528927, 17.780382>,  <36.181217, 42.601097, 17.673685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978714, 42.528927, 17.780382>,  <35.641212, 42.408642, 17.958212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978714, 42.528927, 17.780382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518202, -0.240678, 0.820696,
		0.139798, -0.922845, -0.358905,
		0.843756, 0.300717, -0.444574,
		36.231842, 42.619141, 17.647011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146584, 41.818130, 18.040306>,  <35.641212, 42.408642, 17.958212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146584, 41.818130, 18.040306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352272, 42.152584, 17.963930>,  <36.475685, 42.353256, 17.918104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352272, 42.152584, 17.963930>,  <36.146584, 41.818130, 18.040306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352272, 42.152584, 17.963930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623124, -0.211255, 0.753052,
		0.589315, -0.506214, -0.629647,
		0.514222, 0.836133, -0.190939,
		36.506538, 42.403423, 17.906649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886940, 41.649513, 18.004801>,  <36.146584, 41.818130, 18.040306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886940, 41.649513, 18.004801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876110, 42.035137, 18.110518>,  <36.869610, 42.266514, 18.173948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876110, 42.035137, 18.110518>,  <36.886940, 41.649513, 18.004801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876110, 42.035137, 18.110518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730381, -0.161431, 0.663690,
		0.682503, 0.211005, -0.699761,
		-0.027079, 0.964063, 0.264291,
		36.867985, 42.324356, 18.189804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502422, 41.775436, 18.487017>,  <36.886940, 41.649513, 18.004801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502422, 41.775436, 18.487017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306793, 42.115097, 18.566759>,  <37.189415, 42.318893, 18.614605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306793, 42.115097, 18.566759>,  <37.502422, 41.775436, 18.487017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306793, 42.115097, 18.566759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388876, 0.007692, 0.921258,
		0.780755, 0.528091, -0.333977,
		-0.489077, 0.849153, 0.199357,
		37.160069, 42.369843, 18.626566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010574, 42.148777, 18.823214>,  <37.502422, 41.775436, 18.487017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010574, 42.148777, 18.823214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653397, 42.311794, 18.899691>,  <37.439091, 42.409603, 18.945576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653397, 42.311794, 18.899691>,  <38.010574, 42.148777, 18.823214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653397, 42.311794, 18.899691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236977, 0.064467, 0.969374,
		0.382733, 0.910909, -0.154144,
		-0.892949, 0.407540, 0.191191,
		37.385513, 42.434055, 18.957048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082695, 42.730904, 19.169558>,  <38.010574, 42.148777, 18.823214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082695, 42.730904, 19.169558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729355, 42.578773, 19.279135>,  <37.517349, 42.487495, 19.344881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729355, 42.578773, 19.279135>,  <38.082695, 42.730904, 19.169558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729355, 42.578773, 19.279135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331288, -0.093165, 0.938919,
		-0.331574, 0.920148, 0.208295,
		-0.883350, -0.380326, 0.273943,
		37.464352, 42.464676, 19.361317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967785, 43.072773, 19.817600>,  <38.082695, 42.730904, 19.169558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967785, 43.072773, 19.817600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720131, 42.758900, 19.805334>,  <37.571537, 42.570576, 19.797976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720131, 42.758900, 19.805334>,  <37.967785, 43.072773, 19.817600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720131, 42.758900, 19.805334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146073, -0.153445, 0.977301,
		-0.771579, 0.600603, 0.209624,
		-0.619135, -0.784685, -0.030663,
		37.534389, 42.523495, 19.796135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538406, 43.116119, 20.302187>,  <37.967785, 43.072773, 19.817600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538406, 43.116119, 20.302187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522472, 42.721928, 20.236158>,  <37.512913, 42.485413, 20.196541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522472, 42.721928, 20.236158>,  <37.538406, 43.116119, 20.302187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522472, 42.721928, 20.236158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062693, -0.162411, 0.984730,
		-0.997238, 0.049577, -0.055313,
		-0.039836, -0.985477, -0.165070,
		37.510521, 42.426285, 20.186638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057381, 42.838696, 20.815660>,  <37.538406, 43.116119, 20.302187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057381, 42.838696, 20.815660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236713, 42.503189, 20.692066>,  <37.344311, 42.301884, 20.617910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.236713, 42.503189, 20.692066>,  <37.057381, 42.838696, 20.815660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236713, 42.503189, 20.692066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094343, -0.299341, 0.949471,
		-0.888876, -0.454826, -0.055072,
		0.448330, -0.838766, -0.308986,
		37.371212, 42.251560, 20.599371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642990, 42.192181, 20.977100>,  <37.057381, 42.838696, 20.815660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642990, 42.192181, 20.977100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025558, 42.080757, 20.942074>,  <37.255100, 42.013905, 20.921059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025558, 42.080757, 20.942074>,  <36.642990, 42.192181, 20.977100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025558, 42.080757, 20.942074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030943, -0.394886, 0.918209,
		-0.290354, -0.875483, -0.386296,
		0.956419, -0.278558, -0.087566,
		37.312485, 41.997189, 20.915804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621632, 41.741314, 21.441496>,  <36.642990, 42.192181, 20.977100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621632, 41.741314, 21.441496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009251, 41.822769, 21.385654>,  <37.241821, 41.871643, 21.352150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009251, 41.822769, 21.385654>,  <36.621632, 41.741314, 21.441496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009251, 41.822769, 21.385654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158763, -0.080933, 0.983994,
		0.189077, -0.975696, -0.110758,
		0.969043, 0.203635, -0.139602,
		37.299965, 41.883858, 21.343773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917969, 41.314934, 21.830542>,  <36.621632, 41.741314, 21.441496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917969, 41.314934, 21.830542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218861, 41.572170, 21.773148>,  <37.399395, 41.726513, 21.738710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.218861, 41.572170, 21.773148>,  <36.917969, 41.314934, 21.830542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218861, 41.572170, 21.773148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207132, -0.024071, 0.978017,
		0.625499, -0.765413, -0.151311,
		0.752229, 0.643089, -0.143485,
		37.444530, 41.765099, 21.730103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466198, 41.051105, 22.255812>,  <36.917969, 41.314934, 21.830542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466198, 41.051105, 22.255812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528099, 41.441036, 22.191599>,  <37.565239, 41.674995, 22.153070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528099, 41.441036, 22.191599>,  <37.466198, 41.051105, 22.255812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528099, 41.441036, 22.191599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246419, 0.119268, 0.961797,
		0.956729, -0.188397, -0.221759,
		0.154751, 0.974824, -0.160532,
		37.574524, 41.733482, 22.143440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035053, 41.316772, 22.678898>,  <37.466198, 41.051105, 22.255812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035053, 41.316772, 22.678898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817436, 41.637691, 22.580652>,  <37.686867, 41.830242, 22.521706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817436, 41.637691, 22.580652>,  <38.035053, 41.316772, 22.678898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817436, 41.637691, 22.580652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075376, 0.244809, 0.966637,
		0.835663, 0.544409, -0.072713,
		-0.544046, 0.802301, -0.245613,
		37.654221, 41.878384, 22.506968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372383, 41.655552, 23.155821>,  <38.035053, 41.316772, 22.678898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372383, 41.655552, 23.155821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062523, 41.883224, 23.045589>,  <37.876606, 42.019829, 22.979450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062523, 41.883224, 23.045589>,  <38.372383, 41.655552, 23.155821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062523, 41.883224, 23.045589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123150, 0.291656, 0.948562,
		0.620282, 0.768742, -0.155837,
		-0.774651, 0.569185, -0.275580,
		37.830128, 42.053982, 22.962915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513817, 42.363251, 23.347847>,  <38.372383, 41.655552, 23.155821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513817, 42.363251, 23.347847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117676, 42.315758, 23.319260>,  <37.879990, 42.287262, 23.302107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117676, 42.315758, 23.319260>,  <38.513817, 42.363251, 23.347847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117676, 42.315758, 23.319260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112856, 0.391705, 0.913143,
		-0.080421, 0.912398, -0.401325,
		-0.990351, -0.118728, -0.071468,
		37.820572, 42.280140, 23.297819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324612, 42.969593, 23.628231>,  <38.513817, 42.363251, 23.347847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324612, 42.969593, 23.628231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004669, 42.729813, 23.640190>,  <37.812706, 42.585945, 23.647366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004669, 42.729813, 23.640190>,  <38.324612, 42.969593, 23.628231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004669, 42.729813, 23.640190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244082, 0.370383, 0.896237,
		-0.548323, 0.709561, -0.442567,
		-0.799854, -0.599450, 0.029899,
		37.764713, 42.549976, 23.649160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682755, 43.364967, 23.875748>,  <38.324612, 42.969593, 23.628231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682755, 43.364967, 23.875748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621674, 42.974430, 23.936983>,  <37.585026, 42.740108, 23.973724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.621674, 42.974430, 23.936983>,  <37.682755, 43.364967, 23.875748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621674, 42.974430, 23.936983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451208, 0.206696, 0.868152,
		-0.879257, 0.063497, -0.472097,
		-0.152706, -0.976343, 0.153088,
		37.575863, 42.681526, 23.982910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033684, 43.295036, 24.384748>,  <37.682755, 43.364967, 23.875748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033684, 43.295036, 24.384748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220306, 42.941261, 24.388456>,  <37.332279, 42.728996, 24.390680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220306, 42.941261, 24.388456>,  <37.033684, 43.295036, 24.384748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220306, 42.941261, 24.388456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345293, -0.172482, 0.922509,
		-0.814306, -0.433607, -0.385864,
		0.466561, -0.884441, 0.009268,
		37.360275, 42.675930, 24.391237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462353, 42.846210, 24.727972>,  <37.033684, 43.295036, 24.384748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462353, 42.846210, 24.727972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824551, 42.681820, 24.770256>,  <37.041870, 42.583183, 24.795626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824551, 42.681820, 24.770256>,  <36.462353, 42.846210, 24.727972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824551, 42.681820, 24.770256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292228, -0.423270, 0.857581,
		-0.307702, -0.807427, -0.503369,
		0.905495, -0.410978, 0.105712,
		37.096199, 42.558525, 24.801970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318527, 42.286472, 25.070095>,  <36.462353, 42.846210, 24.727972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318527, 42.286472, 25.070095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717587, 42.290550, 25.097179>,  <36.957024, 42.292995, 25.113430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.717587, 42.290550, 25.097179>,  <36.318527, 42.286472, 25.070095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717587, 42.290550, 25.097179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058840, -0.378123, 0.923883,
		0.035023, -0.925699, -0.376636,
		0.997653, 0.010196, 0.067711,
		37.016884, 42.293610, 25.117493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553371, 41.524498, 25.209091>,  <36.318527, 42.286472, 25.070095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553371, 41.524498, 25.209091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829647, 41.775486, 25.352886>,  <36.995415, 41.926079, 25.439163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829647, 41.775486, 25.352886>,  <36.553371, 41.524498, 25.209091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829647, 41.775486, 25.352886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122464, -0.388440, 0.913300,
		0.712703, -0.674834, -0.191451,
		0.690693, 0.627466, 0.359486,
		37.036854, 41.963726, 25.460732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926800, 41.083836, 25.689486>,  <36.553371, 41.524498, 25.209091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926800, 41.083836, 25.689486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064705, 41.444931, 25.792412>,  <37.147449, 41.661587, 25.854168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064705, 41.444931, 25.792412>,  <36.926800, 41.083836, 25.689486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064705, 41.444931, 25.792412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027201, -0.264398, 0.964030,
		0.938296, -0.339359, -0.066599,
		0.344761, 0.902734, 0.257315,
		37.168133, 41.715752, 25.869606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483330, 40.946129, 26.165434>,  <36.926800, 41.083836, 25.689486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483330, 40.946129, 26.165434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317154, 41.304150, 26.230288>,  <37.217449, 41.518963, 26.269199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317154, 41.304150, 26.230288>,  <37.483330, 40.946129, 26.165434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317154, 41.304150, 26.230288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144258, -0.240815, 0.959790,
		0.898110, 0.375344, 0.229162,
		-0.415437, 0.895056, 0.162132,
		37.192524, 41.572666, 26.278927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882923, 41.157959, 26.772913>,  <37.483330, 40.946129, 26.165434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882923, 41.157959, 26.772913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566433, 41.402149, 26.758591>,  <37.376537, 41.548664, 26.749996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566433, 41.402149, 26.758591>,  <37.882923, 41.157959, 26.772913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566433, 41.402149, 26.758591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093859, -0.063371, 0.993567,
		0.604278, 0.789497, 0.107440,
		-0.791226, 0.610474, -0.035808,
		37.329063, 41.585293, 26.747849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019371, 41.754848, 27.194613>,  <37.882923, 41.157959, 26.772913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019371, 41.754848, 27.194613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622017, 41.741920, 27.150547>,  <37.383602, 41.734165, 27.124107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622017, 41.741920, 27.150547>,  <38.019371, 41.754848, 27.194613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622017, 41.741920, 27.150547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112771, 0.094723, 0.989096,
		-0.021532, 0.994979, -0.097741,
		-0.993388, -0.032319, -0.110165,
		37.324001, 41.732224, 27.117498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778488, 42.135910, 27.670691>,  <38.019371, 41.754848, 27.194613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778488, 42.135910, 27.670691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454041, 41.922874, 27.573999>,  <37.259373, 41.795055, 27.515985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454041, 41.922874, 27.573999>,  <37.778488, 42.135910, 27.670691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454041, 41.922874, 27.573999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281078, -0.007486, 0.959656,
		-0.512908, 0.846343, -0.143626,
		-0.811123, -0.532585, -0.241729,
		37.210705, 41.763100, 27.501480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309513, 42.407799, 28.007713>,  <37.778488, 42.135910, 27.670691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309513, 42.407799, 28.007713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186024, 42.035770, 27.928053>,  <37.111931, 41.812553, 27.880257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.186024, 42.035770, 27.928053>,  <37.309513, 42.407799, 28.007713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186024, 42.035770, 27.928053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279228, -0.111532, 0.953725,
		-0.909242, 0.350048, -0.225269,
		-0.308725, -0.930069, -0.199153,
		37.093407, 41.756748, 27.868307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884720, 42.341522, 28.561949>,  <37.309513, 42.407799, 28.007713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884720, 42.341522, 28.561949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906311, 41.969143, 28.417498>,  <36.919266, 41.745716, 28.330828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906311, 41.969143, 28.417498>,  <36.884720, 42.341522, 28.561949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906311, 41.969143, 28.417498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464454, -0.343560, 0.816241,
		-0.883950, 0.123667, -0.450930,
		0.053980, -0.930953, -0.361128,
		36.922504, 41.689857, 28.309160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241680, 42.004349, 28.706345>,  <36.884720, 42.341522, 28.561949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241680, 42.004349, 28.706345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534367, 41.734398, 28.668140>,  <36.709980, 41.572426, 28.645218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534367, 41.734398, 28.668140>,  <36.241680, 42.004349, 28.706345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534367, 41.734398, 28.668140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114396, -0.259731, 0.958881,
		-0.671938, -0.690706, -0.267254,
		0.731719, -0.674881, -0.095509,
		36.753883, 41.531933, 28.639488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026005, 41.434807, 29.152220>,  <36.241680, 42.004349, 28.706345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026005, 41.434807, 29.152220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413647, 41.353195, 29.096792>,  <36.646233, 41.304230, 29.063536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413647, 41.353195, 29.096792>,  <36.026005, 41.434807, 29.152220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413647, 41.353195, 29.096792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052094, -0.379825, 0.923590,
		-0.241071, -0.902278, -0.357463,
		0.969109, -0.204029, -0.138568,
		36.704380, 41.291985, 29.055222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140301, 40.789490, 29.361837>,  <36.026005, 41.434807, 29.152220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140301, 40.789490, 29.361837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505188, 40.953175, 29.369913>,  <36.724121, 41.051384, 29.374758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505188, 40.953175, 29.369913>,  <36.140301, 40.789490, 29.361837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505188, 40.953175, 29.369913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132804, -0.341942, 0.930290,
		0.387588, -0.845944, -0.366270,
		0.912216, 0.409211, 0.020188,
		36.778854, 41.075939, 29.375969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634148, 40.257370, 29.588730>,  <36.140301, 40.789490, 29.361837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634148, 40.257370, 29.588730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834217, 40.594860, 29.666655>,  <36.954258, 40.797356, 29.713409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834217, 40.594860, 29.666655>,  <36.634148, 40.257370, 29.588730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834217, 40.594860, 29.666655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262512, -0.362132, 0.894398,
		0.825173, -0.396217, -0.402617,
		0.500176, 0.843725, 0.194810,
		36.984268, 40.847977, 29.725098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330177, 40.117046, 29.938570>,  <36.634148, 40.257370, 29.588730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330177, 40.117046, 29.938570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279003, 40.501606, 30.036016>,  <37.248299, 40.732342, 30.094484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279003, 40.501606, 30.036016>,  <37.330177, 40.117046, 29.938570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279003, 40.501606, 30.036016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074815, -0.235581, 0.968971,
		0.988956, 0.142195, -0.041787,
		-0.127939, 0.961396, 0.243617,
		37.240623, 40.790024, 30.109102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900913, 40.300640, 30.385075>,  <37.330177, 40.117046, 29.938570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900913, 40.300640, 30.385075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592434, 40.550159, 30.435888>,  <37.407349, 40.699871, 30.466377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.592434, 40.550159, 30.435888>,  <37.900913, 40.300640, 30.385075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592434, 40.550159, 30.435888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046064, -0.144350, 0.988454,
		0.634929, 0.768144, 0.082588,
		-0.771196, 0.623794, 0.127035,
		37.361076, 40.737297, 30.473999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157078, 40.646328, 29.785469>,  <37.900913, 40.300640, 30.385075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157078, 40.646328, 29.785469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489388, 40.494598, 29.948404>,  <38.688774, 40.403561, 30.046165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489388, 40.494598, 29.948404>,  <38.157078, 40.646328, 29.785469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489388, 40.494598, 29.948404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419784, -0.053566, -0.906042,
		0.365506, 0.923710, 0.114734,
		0.830774, -0.379328, 0.407338,
		38.738621, 40.380798, 30.070606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690613, 41.075268, 29.448189>,  <38.157078, 40.646328, 29.785469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690613, 41.075268, 29.448189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857117, 40.737328, 29.582624>,  <38.957020, 40.534565, 29.663286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.857117, 40.737328, 29.582624>,  <38.690613, 41.075268, 29.448189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857117, 40.737328, 29.582624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472531, -0.114791, -0.873806,
		0.776815, 0.522543, 0.351435,
		0.416260, -0.844850, 0.336089,
		38.981995, 40.483871, 29.683451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386524, 41.185200, 29.341635>,  <38.690613, 41.075268, 29.448189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386524, 41.185200, 29.341635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340733, 40.787830, 29.341196>,  <39.313259, 40.549408, 29.340933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340733, 40.787830, 29.341196>,  <39.386524, 41.185200, 29.341635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340733, 40.787830, 29.341196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750291, -0.085734, -0.655525,
		0.651121, -0.075866, 0.755173,
		-0.114476, -0.993425, -0.001098,
		39.306389, 40.489803, 29.340866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033745, 40.945557, 29.269979>,  <39.386524, 41.185200, 29.341635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033745, 40.945557, 29.269979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802887, 40.642040, 29.149221>,  <39.664371, 40.459930, 29.076767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.802887, 40.642040, 29.149221>,  <40.033745, 40.945557, 29.269979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802887, 40.642040, 29.149221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626712, -0.174521, -0.759456,
		0.523584, -0.627514, 0.576269,
		-0.577141, -0.758794, -0.301894,
		39.629745, 40.414402, 29.058653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490845, 40.423347, 29.191401>,  <40.033745, 40.945557, 29.269979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490845, 40.423347, 29.191401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166798, 40.291218, 28.997663>,  <39.972370, 40.211941, 28.881420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.166798, 40.291218, 28.997663>,  <40.490845, 40.423347, 29.191401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166798, 40.291218, 28.997663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582249, -0.356820, -0.730524,
		0.068488, -0.873821, 0.481400,
		-0.810121, -0.330326, -0.484344,
		39.923759, 40.192120, 28.852360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697330, 39.725128, 28.864107>,  <40.490845, 40.423347, 29.191401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697330, 39.725128, 28.864107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395443, 39.875179, 28.648819>,  <40.214310, 39.965210, 28.519646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395443, 39.875179, 28.648819>,  <40.697330, 39.725128, 28.864107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395443, 39.875179, 28.648819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520430, -0.157166, -0.839316,
		-0.399438, -0.913553, -0.076610,
		-0.754720, 0.375125, -0.538218,
		40.169025, 39.987717, 28.487354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689659, 39.223854, 28.248596>,  <40.697330, 39.725128, 28.864107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689659, 39.223854, 28.248596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492428, 39.559147, 28.155436>,  <40.374088, 39.760323, 28.099539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492428, 39.559147, 28.155436>,  <40.689659, 39.223854, 28.248596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492428, 39.559147, 28.155436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324820, -0.070971, -0.943110,
		-0.807074, -0.540675, -0.237280,
		-0.493076, 0.838232, -0.232900,
		40.344505, 39.810616, 28.085566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340485, 39.038845, 27.638218>,  <40.689659, 39.223854, 28.248596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340485, 39.038845, 27.638218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345921, 39.438808, 27.638157>,  <40.349182, 39.678787, 27.638121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345921, 39.438808, 27.638157>,  <40.340485, 39.038845, 27.638218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345921, 39.438808, 27.638157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076223, -0.001186, -0.997090,
		-0.996998, 0.013542, -0.076232,
		0.013593, 0.999908, -0.000150,
		40.349998, 39.738781, 27.638111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947224, 39.198349, 27.126827>,  <40.340485, 39.038845, 27.638218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947224, 39.198349, 27.126827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136757, 39.545345, 27.187407>,  <40.250477, 39.753544, 27.223755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.136757, 39.545345, 27.187407>,  <39.947224, 39.198349, 27.126827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136757, 39.545345, 27.187407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038835, 0.192399, -0.980548,
		-0.879757, 0.458736, 0.124855,
		0.473835, 0.867493, 0.151449,
		40.278908, 39.805592, 27.232841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543213, 39.731777, 26.674976>,  <39.947224, 39.198349, 27.126827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543213, 39.731777, 26.674976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902042, 39.881939, 26.768213>,  <40.117340, 39.972034, 26.824156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902042, 39.881939, 26.768213>,  <39.543213, 39.731777, 26.674976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902042, 39.881939, 26.768213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112947, 0.315179, -0.942287,
		-0.427204, 0.871627, 0.240338,
		0.897073, 0.375404, 0.233094,
		40.171165, 39.994560, 26.838140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574371, 40.462132, 26.420595>,  <39.543213, 39.731777, 26.674976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574371, 40.462132, 26.420595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964386, 40.383732, 26.462341>,  <40.198395, 40.336693, 26.487389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964386, 40.383732, 26.462341>,  <39.574371, 40.462132, 26.420595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964386, 40.383732, 26.462341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177058, 0.402592, -0.898093,
		0.134009, 0.894150, 0.427244,
		0.975034, -0.195999, 0.104366,
		40.256897, 40.324932, 26.493650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874599, 41.013824, 26.226940>,  <39.574371, 40.462132, 26.420595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874599, 41.013824, 26.226940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162579, 40.738636, 26.190357>,  <40.335365, 40.573524, 26.168407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162579, 40.738636, 26.190357>,  <39.874599, 41.013824, 26.226940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162579, 40.738636, 26.190357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193364, 0.325396, -0.925596,
		0.666543, 0.648700, 0.367298,
		0.719952, -0.687972, -0.091455,
		40.378563, 40.532246, 26.162920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334332, 41.466167, 26.010351>,  <39.874599, 41.013824, 26.226940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334332, 41.466167, 26.010351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445690, 41.092079, 25.922848>,  <40.512505, 40.867626, 25.870346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445690, 41.092079, 25.922848>,  <40.334332, 41.466167, 26.010351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445690, 41.092079, 25.922848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147129, 0.266599, -0.952512,
		0.949130, 0.232992, 0.211818,
		0.278398, -0.935222, -0.218758,
		40.529209, 40.811512, 25.857220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911423, 41.563885, 25.487591>,  <40.334332, 41.466167, 26.010351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911423, 41.563885, 25.487591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740650, 41.204697, 25.444921>,  <40.638187, 40.989185, 25.419319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.740650, 41.204697, 25.444921>,  <40.911423, 41.563885, 25.487591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740650, 41.204697, 25.444921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017741, 0.126261, -0.991838,
		0.904108, -0.421558, -0.069836,
		-0.426935, -0.897968, -0.106675,
		40.612568, 40.935307, 25.412920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288334, 41.230026, 24.975979>,  <40.911423, 41.563885, 25.487591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288334, 41.230026, 24.975979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925125, 41.062576, 24.982193>,  <40.707199, 40.962105, 24.985922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.925125, 41.062576, 24.982193>,  <41.288334, 41.230026, 24.975979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.925125, 41.062576, 24.982193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078855, 0.134384, -0.987787,
		0.411428, -0.898160, -0.155035,
		-0.908024, -0.418629, 0.015536,
		40.652718, 40.936989, 24.986855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263794, 40.787045, 24.394537>,  <41.288334, 41.230026, 24.975979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263794, 40.787045, 24.394537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877712, 40.821308, 24.493372>,  <40.646065, 40.841866, 24.552673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877712, 40.821308, 24.493372>,  <41.263794, 40.787045, 24.394537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877712, 40.821308, 24.493372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254194, -0.085332, -0.963382,
		-0.061436, -0.992664, 0.104136,
		-0.965200, 0.085658, 0.247086,
		40.588154, 40.847004, 24.567497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013432, 40.452126, 23.820915>,  <41.263794, 40.787045, 24.394537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013432, 40.452126, 23.820915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710114, 40.642891, 23.998695>,  <40.528122, 40.757351, 24.105364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710114, 40.642891, 23.998695>,  <41.013432, 40.452126, 23.820915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710114, 40.642891, 23.998695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514465, -0.019060, -0.857299,
		-0.400388, -0.878743, 0.259809,
		-0.758298, 0.476915, 0.444451,
		40.482624, 40.785965, 24.132030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357971, 40.096924, 23.637049>,  <41.013432, 40.452126, 23.820915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357971, 40.096924, 23.637049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273323, 40.475441, 23.734823>,  <40.222534, 40.702549, 23.793488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273323, 40.475441, 23.734823>,  <40.357971, 40.096924, 23.637049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273323, 40.475441, 23.734823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479096, 0.117548, -0.869856,
		-0.851870, -0.301190, 0.428489,
		-0.211624, 0.946291, 0.244434,
		40.209835, 40.759327, 23.808153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679249, 40.136589, 23.418745>,  <40.357971, 40.096924, 23.637049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679249, 40.136589, 23.418745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829533, 40.506794, 23.437782>,  <39.919704, 40.728916, 23.449203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829533, 40.506794, 23.437782>,  <39.679249, 40.136589, 23.418745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829533, 40.506794, 23.437782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364499, 0.194791, -0.910602,
		-0.852046, 0.324775, 0.410534,
		0.375709, 0.925515, 0.047591,
		39.942245, 40.784447, 23.452059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205635, 40.517239, 23.080605>,  <39.679249, 40.136589, 23.418745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205635, 40.517239, 23.080605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517834, 40.767269, 23.084494>,  <39.705154, 40.917290, 23.086828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517834, 40.767269, 23.084494>,  <39.205635, 40.517239, 23.080605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517834, 40.767269, 23.084494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156803, 0.210801, -0.964871,
		-0.605171, 0.751557, 0.262544,
		0.780500, 0.625080, 0.009725,
		39.751984, 40.954792, 23.087412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.088493, 41.247417, 22.736574>,  <39.205635, 40.517239, 23.080605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.088493, 41.247417, 22.736574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484695, 41.197189, 22.714218>,  <39.722416, 41.167053, 22.700804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484695, 41.197189, 22.714218>,  <39.088493, 41.247417, 22.736574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484695, 41.197189, 22.714218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033271, 0.175498, -0.983917,
		0.133355, 0.976439, 0.169655,
		0.990510, -0.125566, -0.055891,
		39.781849, 41.159519, 22.697451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252758, 41.668331, 22.232504>,  <39.088493, 41.247417, 22.736574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252758, 41.668331, 22.232504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575520, 41.432991, 22.253454>,  <39.769176, 41.291786, 22.266026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575520, 41.432991, 22.253454>,  <39.252758, 41.668331, 22.232504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575520, 41.432991, 22.253454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101680, 0.051005, -0.993509,
		0.581861, 0.806995, 0.100980,
		0.806907, -0.588352, 0.052377,
		39.817593, 41.256485, 22.269167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695717, 42.023235, 21.848804>,  <39.252758, 41.668331, 22.232504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695717, 42.023235, 21.848804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806541, 41.638973, 21.856607>,  <39.873035, 41.408417, 21.861290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806541, 41.638973, 21.856607>,  <39.695717, 42.023235, 21.848804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806541, 41.638973, 21.856607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067537, -0.000783, -0.997716,
		0.958476, 0.277746, 0.064663,
		0.277061, -0.960654, 0.019509,
		39.889660, 41.350777, 21.862461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268074, 42.013744, 21.486294>,  <39.695717, 42.023235, 21.848804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268074, 42.013744, 21.486294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186306, 41.622295, 21.495378>,  <40.137245, 41.387428, 21.500830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186306, 41.622295, 21.495378>,  <40.268074, 42.013744, 21.486294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186306, 41.622295, 21.495378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252901, -0.075213, -0.964564,
		0.945650, -0.191432, 0.262869,
		-0.204420, -0.978620, 0.022711,
		40.124981, 41.328709, 21.502192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710995, 41.678448, 20.988176>,  <40.268074, 42.013744, 21.486294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.710995, 41.678448, 20.988176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407764, 41.425243, 21.050932>,  <40.225826, 41.273319, 21.088585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407764, 41.425243, 21.050932>,  <40.710995, 41.678448, 20.988176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407764, 41.425243, 21.050932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124392, -0.376495, -0.918029,
		0.640194, -0.676419, 0.364154,
		-0.758075, -0.633015, 0.156889,
		40.180344, 41.235340, 21.098000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809860, 41.177654, 20.460651>,  <40.710995, 41.678448, 20.988176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809860, 41.177654, 20.460651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446972, 41.069920, 20.589901>,  <40.229240, 41.005280, 20.667450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446972, 41.069920, 20.589901>,  <40.809860, 41.177654, 20.460651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446972, 41.069920, 20.589901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112933, -0.583993, -0.803865,
		0.405215, -0.765773, 0.499392,
		-0.907219, -0.269340, 0.323123,
		40.174805, 40.989117, 20.686838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770790, 40.446110, 20.569021>,  <40.809860, 41.177654, 20.460651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770790, 40.446110, 20.569021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413708, 40.596611, 20.469824>,  <40.199459, 40.686913, 20.410305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413708, 40.596611, 20.469824>,  <40.770790, 40.446110, 20.569021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413708, 40.596611, 20.469824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064869, -0.651891, -0.755533,
		-0.445939, -0.658385, 0.606357,
		-0.892710, 0.376256, -0.247994,
		40.145893, 40.709488, 20.395426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421906, 39.901226, 20.334806>,  <40.770790, 40.446110, 20.569021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421906, 39.901226, 20.334806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182133, 40.198826, 20.216719>,  <40.038269, 40.377384, 20.145866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182133, 40.198826, 20.216719>,  <40.421906, 39.901226, 20.334806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182133, 40.198826, 20.216719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451423, -0.618805, -0.642883,
		-0.660986, -0.252093, 0.706786,
		-0.599429, 0.743996, -0.295221,
		40.002304, 40.422024, 20.128153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747608, 39.680061, 20.424253>,  <40.421906, 39.901226, 20.334806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747608, 39.680061, 20.424253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740185, 39.956741, 20.135475>,  <39.735729, 40.122749, 19.962208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740185, 39.956741, 20.135475>,  <39.747608, 39.680061, 20.424253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740185, 39.956741, 20.135475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346866, -0.681680, -0.644202,
		-0.937731, 0.238464, 0.252578,
		-0.018558, 0.691699, -0.721947,
		39.734619, 40.164249, 19.918892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139130, 39.535400, 20.053768>,  <39.747608, 39.680061, 20.424253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139130, 39.535400, 20.053768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303837, 39.797298, 19.800230>,  <39.402660, 39.954437, 19.648108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303837, 39.797298, 19.800230>,  <39.139130, 39.535400, 20.053768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303837, 39.797298, 19.800230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442561, -0.464342, -0.767154,
		-0.796608, 0.596407, 0.098560,
		0.411771, 0.654740, -0.633845,
		39.427368, 39.993721, 19.610077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656300, 39.641304, 19.500385>,  <39.139130, 39.535400, 20.053768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656300, 39.641304, 19.500385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005836, 39.752647, 19.340925>,  <39.215557, 39.819454, 19.245249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005836, 39.752647, 19.340925>,  <38.656300, 39.641304, 19.500385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005836, 39.752647, 19.340925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247294, -0.451489, -0.857323,
		-0.418631, 0.847746, -0.325692,
		0.873839, 0.278361, -0.398649,
		39.267986, 39.836155, 19.221331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462643, 39.988888, 18.952436>,  <38.656300, 39.641304, 19.500385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462643, 39.988888, 18.952436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830578, 39.867859, 18.852566>,  <39.051338, 39.795242, 18.792643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.830578, 39.867859, 18.852566>,  <38.462643, 39.988888, 18.952436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830578, 39.867859, 18.852566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371691, -0.468706, -0.801349,
		0.125444, 0.829917, -0.543600,
		0.919842, -0.302576, -0.249677,
		39.106529, 39.777084, 18.777662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684937, 40.239246, 18.282791>,  <38.462643, 39.988888, 18.952436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684937, 40.239246, 18.282791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866470, 39.889515, 18.351597>,  <38.975391, 39.679676, 18.392879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866470, 39.889515, 18.351597>,  <38.684937, 40.239246, 18.282791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866470, 39.889515, 18.351597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226425, -0.299855, -0.926725,
		0.861837, 0.381633, -0.334055,
		0.453837, -0.874324, 0.172015,
		39.002621, 39.627216, 18.403202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943577, 40.191261, 17.677637>,  <38.684937, 40.239246, 18.282791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943577, 40.191261, 17.677637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997128, 39.837997, 17.857466>,  <39.029259, 39.626041, 17.965363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.997128, 39.837997, 17.857466>,  <38.943577, 40.191261, 17.677637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997128, 39.837997, 17.857466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226902, -0.468921, -0.853598,
		0.964673, 0.012266, -0.263166,
		0.133875, -0.883155, 0.449572,
		39.037289, 39.573051, 17.992336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480915, 39.898403, 17.218838>,  <38.943577, 40.191261, 17.677637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480915, 39.898403, 17.218838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302948, 39.595371, 17.409885>,  <39.196167, 39.413551, 17.524515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302948, 39.595371, 17.409885>,  <39.480915, 39.898403, 17.218838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302948, 39.595371, 17.409885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361860, -0.335770, -0.869664,
		0.819211, -0.559760, -0.124748,
		-0.444916, -0.757580, 0.477621,
		39.169472, 39.368095, 17.553171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648659, 39.189178, 16.863581>,  <39.480915, 39.898403, 17.218838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648659, 39.189178, 16.863581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319206, 39.098938, 17.071712>,  <39.121536, 39.044796, 17.196592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319206, 39.098938, 17.071712>,  <39.648659, 39.189178, 16.863581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319206, 39.098938, 17.071712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427668, -0.355511, -0.831091,
		0.372477, -0.907037, 0.196327,
		-0.823627, -0.225600, 0.520330,
		39.072117, 39.031258, 17.227812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417408, 38.518520, 16.552151>,  <39.648659, 39.189178, 16.863581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417408, 38.518520, 16.552151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095100, 38.657803, 16.743769>,  <38.901714, 38.741371, 16.858740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095100, 38.657803, 16.743769>,  <39.417408, 38.518520, 16.552151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095100, 38.657803, 16.743769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577484, -0.282610, -0.765927,
		-0.131318, -0.893803, 0.428803,
		-0.805772, 0.348206, 0.479045,
		38.853371, 38.762264, 16.887482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871220, 38.557053, 16.018362>,  <39.417408, 38.518520, 16.552151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871220, 38.557053, 16.018362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735676, 38.189644, 15.936878>,  <38.654350, 37.969200, 15.887988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735676, 38.189644, 15.936878>,  <38.871220, 38.557053, 16.018362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735676, 38.189644, 15.936878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341198, -0.321751, 0.883210,
		-0.876789, 0.229778, 0.422425,
		-0.338858, -0.918519, -0.203708,
		38.634018, 37.914089, 15.875766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347252, 38.332283, 16.565622>,  <38.871220, 38.557053, 16.018362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347252, 38.332283, 16.565622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493786, 37.996891, 16.404253>,  <38.581707, 37.795654, 16.307432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493786, 37.996891, 16.404253>,  <38.347252, 38.332283, 16.565622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493786, 37.996891, 16.404253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264208, -0.321983, 0.909132,
		-0.892184, -0.439635, 0.103579,
		0.366336, -0.838480, -0.403423,
		38.603687, 37.745346, 16.283226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018898, 37.802296, 16.857475>,  <38.347252, 38.332283, 16.565622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018898, 37.802296, 16.857475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339310, 37.617073, 16.705725>,  <38.531559, 37.505939, 16.614674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.339310, 37.617073, 16.705725>,  <38.018898, 37.802296, 16.857475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.339310, 37.617073, 16.705725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272991, -0.281444, 0.919927,
		-0.532750, -0.840458, -0.099036,
		0.801033, -0.463056, -0.379377,
		38.579620, 37.478157, 16.591911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036922, 37.127644, 17.096655>,  <38.018898, 37.802296, 16.857475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036922, 37.127644, 17.096655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418858, 37.181576, 16.990747>,  <38.648018, 37.213936, 16.927202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418858, 37.181576, 16.990747>,  <38.036922, 37.127644, 17.096655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418858, 37.181576, 16.990747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289447, -0.220847, 0.931369,
		0.067106, -0.965944, -0.249900,
		0.954839, 0.134833, -0.264769,
		38.705311, 37.222027, 16.911316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328461, 36.479485, 17.238333>,  <38.036922, 37.127644, 17.096655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328461, 36.479485, 17.238333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625732, 36.746555, 17.220955>,  <38.804096, 36.906799, 17.210527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625732, 36.746555, 17.220955>,  <38.328461, 36.479485, 17.238333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625732, 36.746555, 17.220955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345789, -0.327679, 0.879236,
		0.572812, -0.668454, -0.474400,
		0.743180, 0.667679, -0.043446,
		38.848686, 36.946857, 17.207922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972256, 36.059811, 17.310585>,  <38.328461, 36.479485, 17.238333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972256, 36.059811, 17.310585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051422, 36.441109, 17.401937>,  <39.098923, 36.669888, 17.456749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051422, 36.441109, 17.401937>,  <38.972256, 36.059811, 17.310585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051422, 36.441109, 17.401937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364781, -0.287883, 0.885471,
		0.909815, -0.091939, -0.404702,
		0.197916, 0.953242, 0.228382,
		39.110798, 36.727081, 17.470451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559132, 36.040470, 17.658842>,  <38.972256, 36.059811, 17.310585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559132, 36.040470, 17.658842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413807, 36.402180, 17.748554>,  <39.326614, 36.619205, 17.802382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.413807, 36.402180, 17.748554>,  <39.559132, 36.040470, 17.658842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413807, 36.402180, 17.748554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346584, -0.092277, 0.933469,
		0.864804, 0.416871, -0.279880,
		-0.363310, 0.904270, 0.224282,
		39.304813, 36.673462, 17.815838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052994, 36.422585, 18.032141>,  <39.559132, 36.040470, 17.658842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052994, 36.422585, 18.032141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741680, 36.657726, 18.120409>,  <39.554890, 36.798813, 18.173370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.741680, 36.657726, 18.120409>,  <40.052994, 36.422585, 18.032141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741680, 36.657726, 18.120409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355288, 0.122514, 0.926693,
		0.517724, 0.799637, -0.304208,
		-0.778288, 0.587853, 0.220673,
		39.508194, 36.834084, 18.186611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323776, 37.086998, 18.332537>,  <40.052994, 36.422585, 18.032141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323776, 37.086998, 18.332537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947891, 37.021698, 18.452728>,  <39.722359, 36.982517, 18.524843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.947891, 37.021698, 18.452728>,  <40.323776, 37.086998, 18.332537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947891, 37.021698, 18.452728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256445, 0.244867, 0.935028,
		-0.226218, 0.955715, -0.188241,
		-0.939714, -0.163247, 0.300481,
		39.665977, 36.972725, 18.542873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157631, 37.735710, 18.742315>,  <40.323776, 37.086998, 18.332537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157631, 37.735710, 18.742315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876438, 37.481537, 18.870094>,  <39.707722, 37.329033, 18.946762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.876438, 37.481537, 18.870094>,  <40.157631, 37.735710, 18.742315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876438, 37.481537, 18.870094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250754, 0.198871, 0.947403,
		-0.665536, 0.746110, 0.019534,
		-0.702982, -0.635429, 0.319446,
		39.665543, 37.290909, 18.965927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658272, 38.057735, 19.140762>,  <40.157631, 37.735710, 18.742315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658272, 38.057735, 19.140762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642811, 37.680992, 19.274279>,  <39.633533, 37.454948, 19.354389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642811, 37.680992, 19.274279>,  <39.658272, 38.057735, 19.140762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642811, 37.680992, 19.274279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012815, 0.334481, 0.942315,
		-0.999170, 0.032145, -0.024998,
		-0.038652, -0.941854, 0.333792,
		39.631214, 37.398438, 19.374416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186939, 38.046177, 19.707991>,  <39.658272, 38.057735, 19.140762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186939, 38.046177, 19.707991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367645, 37.694050, 19.765881>,  <39.476070, 37.482773, 19.800613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367645, 37.694050, 19.765881>,  <39.186939, 38.046177, 19.707991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367645, 37.694050, 19.765881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099084, 0.210727, 0.972510,
		-0.886617, -0.425008, 0.182425,
		0.451767, -0.880319, 0.144723,
		39.503174, 37.429955, 19.809298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884148, 37.630615, 20.271217>,  <39.186939, 38.046177, 19.707991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884148, 37.630615, 20.271217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258392, 37.490032, 20.257950>,  <39.482941, 37.405682, 20.249989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.258392, 37.490032, 20.257950>,  <38.884148, 37.630615, 20.271217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258392, 37.490032, 20.257950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055622, 0.053974, 0.996992,
		-0.348614, -0.934645, 0.070048,
		0.935615, -0.351461, -0.033171,
		39.539078, 37.384594, 20.247999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906754, 37.077419, 20.898706>,  <38.884148, 37.630615, 20.271217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906754, 37.077419, 20.898706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283569, 37.157097, 20.790714>,  <39.509659, 37.204903, 20.725918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283569, 37.157097, 20.790714>,  <38.906754, 37.077419, 20.898706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283569, 37.157097, 20.790714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282148, -0.034900, 0.958736,
		0.181552, -0.979338, -0.089079,
		0.942036, 0.199194, -0.269983,
		39.566181, 37.216854, 20.709719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368988, 36.628407, 21.280720>,  <38.906754, 37.077419, 20.898706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368988, 36.628407, 21.280720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597652, 36.931297, 21.154350>,  <39.734852, 37.113033, 21.078527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597652, 36.931297, 21.154350>,  <39.368988, 36.628407, 21.280720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597652, 36.931297, 21.154350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488447, -0.004694, 0.872581,
		0.659263, -0.653130, -0.372551,
		0.571658, 0.757231, -0.315925,
		39.769150, 37.158466, 21.059572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094479, 36.521389, 21.533699>,  <39.368988, 36.628407, 21.280720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094479, 36.521389, 21.533699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056843, 36.912258, 21.457508>,  <40.034260, 37.146778, 21.411795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056843, 36.912258, 21.457508>,  <40.094479, 36.521389, 21.533699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056843, 36.912258, 21.457508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422824, 0.212436, 0.880960,
		0.901314, 0.002355, -0.433161,
		-0.094094, 0.977172, -0.190475,
		40.028614, 37.205410, 21.400366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728394, 36.722870, 21.702669>,  <40.094479, 36.521389, 21.533699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728394, 36.722870, 21.702669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519791, 37.064163, 21.704866>,  <40.394630, 37.268940, 21.706184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519791, 37.064163, 21.704866>,  <40.728394, 36.722870, 21.702669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519791, 37.064163, 21.704866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533445, 0.321010, 0.782553,
		0.665934, 0.411037, -0.622560,
		-0.521506, 0.853230, 0.005494,
		40.363338, 37.320133, 21.706514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149960, 37.339855, 21.748964>,  <40.728394, 36.722870, 21.702669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149960, 37.339855, 21.748964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798035, 37.474480, 21.883221>,  <40.586880, 37.555256, 21.963774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798035, 37.474480, 21.883221>,  <41.149960, 37.339855, 21.748964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798035, 37.474480, 21.883221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439388, 0.306558, 0.844370,
		0.181289, 0.890365, -0.417595,
		-0.879814, 0.336561, 0.335640,
		40.534092, 37.575447, 21.983913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218151, 38.035728, 21.804108>,  <41.149960, 37.339855, 21.748964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218151, 38.035728, 21.804108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922535, 37.934727, 22.053928>,  <40.745167, 37.874126, 22.203821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.922535, 37.934727, 22.053928>,  <41.218151, 38.035728, 21.804108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922535, 37.934727, 22.053928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519017, 0.377619, 0.766828,
		-0.429466, 0.890869, -0.148024,
		-0.739040, -0.252500, 0.624551,
		40.700825, 37.858978, 22.241293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307037, 38.477631, 22.304638>,  <41.218151, 38.035728, 21.804108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307037, 38.477631, 22.304638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061390, 38.204681, 22.463243>,  <40.914001, 38.040913, 22.558407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061390, 38.204681, 22.463243>,  <41.307037, 38.477631, 22.304638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061390, 38.204681, 22.463243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360109, 0.204782, 0.910157,
		-0.702264, 0.701735, 0.119968,
		-0.614122, -0.682372, 0.396513,
		40.877151, 37.999969, 22.582197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956783, 38.730232, 22.831089>,  <41.307037, 38.477631, 22.304638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956783, 38.730232, 22.831089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936378, 38.346642, 22.942629>,  <40.924133, 38.116486, 23.009554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.936378, 38.346642, 22.942629>,  <40.956783, 38.730232, 22.831089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936378, 38.346642, 22.942629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006372, 0.279521, 0.960118,
		-0.998677, 0.047205, -0.020371,
		-0.051016, -0.958978, 0.278851,
		40.921074, 38.058949, 23.026283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410828, 38.669422, 23.449154>,  <40.956783, 38.730232, 22.831089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410828, 38.669422, 23.449154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595890, 38.318439, 23.499779>,  <40.706928, 38.107849, 23.530153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595890, 38.318439, 23.499779>,  <40.410828, 38.669422, 23.449154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595890, 38.318439, 23.499779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123253, 0.205036, 0.970963,
		-0.877930, -0.433620, 0.203010,
		0.462653, -0.877459, 0.126562,
		40.734688, 38.055202, 23.537746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222008, 38.449196, 24.076452>,  <40.410828, 38.669422, 23.449154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222008, 38.449196, 24.076452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567024, 38.252773, 24.027666>,  <40.774036, 38.134918, 23.998394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567024, 38.252773, 24.027666>,  <40.222008, 38.449196, 24.076452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567024, 38.252773, 24.027666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193063, 0.096600, 0.976420,
		-0.467699, -0.865753, 0.178128,
		0.862545, -0.491061, -0.121965,
		40.825787, 38.105453, 23.991076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185375, 37.798565, 24.418800>,  <40.222008, 38.449196, 24.076452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185375, 37.798565, 24.418800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567261, 37.910568, 24.378574>,  <40.796391, 37.977772, 24.354439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567261, 37.910568, 24.378574>,  <40.185375, 37.798565, 24.418800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567261, 37.910568, 24.378574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104112, 0.002225, 0.994563,
		0.278714, -0.959994, -0.027028,
		0.954714, 0.280013, -0.100567,
		40.853676, 37.994572, 24.348404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514961, 37.535648, 25.019859>,  <40.185375, 37.798565, 24.418800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514961, 37.535648, 25.019859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808090, 37.773369, 24.887331>,  <40.983967, 37.916000, 24.807814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.808090, 37.773369, 24.887331>,  <40.514961, 37.535648, 25.019859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808090, 37.773369, 24.887331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406582, 0.007965, 0.913579,
		0.545578, -0.804204, -0.235795,
		0.732826, 0.594299, -0.331321,
		41.027939, 37.951660, 24.787935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200493, 37.267979, 25.234119>,  <40.514961, 37.535648, 25.019859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200493, 37.267979, 25.234119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272404, 37.650085, 25.140186>,  <41.315552, 37.879349, 25.083826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.272404, 37.650085, 25.140186>,  <41.200493, 37.267979, 25.234119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272404, 37.650085, 25.140186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542986, 0.102695, 0.833438,
		0.820272, -0.277344, -0.500234,
		0.179778, 0.955266, -0.234833,
		41.326336, 37.936665, 25.069736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978294, 37.341389, 25.263083>,  <41.200493, 37.267979, 25.234119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978294, 37.341389, 25.263083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863792, 37.724354, 25.278181>,  <41.795090, 37.954132, 25.287241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.863792, 37.724354, 25.278181>,  <41.978294, 37.341389, 25.263083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.863792, 37.724354, 25.278181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578598, 0.141328, 0.803275,
		0.763728, 0.251784, -0.594411,
		-0.286259, 0.957409, 0.037746,
		41.777916, 38.011578, 25.289505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564327, 37.690857, 25.369520>,  <41.978294, 37.341389, 25.263083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564327, 37.690857, 25.369520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239799, 37.882816, 25.503063>,  <42.045082, 37.997993, 25.583189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.239799, 37.882816, 25.503063>,  <42.564327, 37.690857, 25.369520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239799, 37.882816, 25.503063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429638, 0.102179, 0.897202,
		0.396451, 0.871354, -0.289082,
		-0.811319, 0.479897, 0.333858,
		41.996403, 38.026787, 25.603220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836445, 38.122986, 25.894363>,  <42.564327, 37.690857, 25.369520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836445, 38.122986, 25.894363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446732, 38.149658, 25.980453>,  <42.212902, 38.165661, 26.032108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446732, 38.149658, 25.980453>,  <42.836445, 38.122986, 25.894363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446732, 38.149658, 25.980453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206954, -0.112895, 0.971815,
		0.089095, 0.991367, 0.096193,
		-0.974285, 0.066676, 0.215226,
		42.154446, 38.169662, 26.045021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781937, 38.583344, 26.482746>,  <42.836445, 38.122986, 25.894363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781937, 38.583344, 26.482746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422077, 38.408825, 26.476084>,  <42.206161, 38.304115, 26.472086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422077, 38.408825, 26.476084>,  <42.781937, 38.583344, 26.482746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422077, 38.408825, 26.476084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049813, -0.140460, 0.988833,
		-0.433763, 0.888773, 0.148098,
		-0.899649, -0.436296, -0.016654,
		42.152184, 38.277935, 26.471088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298954, 39.015533, 26.873156>,  <42.781937, 38.583344, 26.482746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298954, 39.015533, 26.873156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133312, 38.651985, 26.893023>,  <42.033928, 38.433857, 26.904943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133312, 38.651985, 26.893023>,  <42.298954, 39.015533, 26.873156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133312, 38.651985, 26.893023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159399, -0.018684, 0.987038,
		-0.896165, 0.416651, 0.152611,
		-0.414101, -0.908875, 0.049669,
		42.009083, 38.379322, 26.907923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792416, 39.051029, 27.425961>,  <42.298954, 39.015533, 26.873156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.792416, 39.051029, 27.425961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871536, 38.661194, 27.383902>,  <41.919010, 38.427292, 27.358665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871536, 38.661194, 27.383902>,  <41.792416, 39.051029, 27.425961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871536, 38.661194, 27.383902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024117, -0.112073, 0.993407,
		-0.979944, -0.193966, -0.045673,
		0.197806, -0.974585, -0.105148,
		41.930878, 38.368816, 27.352358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288002, 38.773708, 27.661451>,  <41.792416, 39.051029, 27.425961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288002, 38.773708, 27.661451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570232, 38.492878, 27.699940>,  <41.739571, 38.324379, 27.723032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.570232, 38.492878, 27.699940>,  <41.288002, 38.773708, 27.661451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570232, 38.492878, 27.699940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225914, -0.094158, 0.969586,
		-0.671659, -0.705854, -0.225043,
		0.705576, -0.702071, 0.096220,
		41.781906, 38.282257, 27.728806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028435, 38.276131, 28.190615>,  <41.288002, 38.773708, 27.661451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028435, 38.276131, 28.190615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415516, 38.182411, 28.153391>,  <41.647762, 38.126179, 28.131056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415516, 38.182411, 28.153391>,  <41.028435, 38.276131, 28.190615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415516, 38.182411, 28.153391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062076, -0.136323, 0.988718,
		-0.244341, -0.962559, -0.117376,
		0.967701, -0.234298, -0.093061,
		41.705826, 38.112122, 28.125473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157192, 37.683693, 28.646708>,  <41.028435, 38.276131, 28.190615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157192, 37.683693, 28.646708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513321, 37.846764, 28.565582>,  <41.726997, 37.944607, 28.516907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513321, 37.846764, 28.565582>,  <41.157192, 37.683693, 28.646708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513321, 37.846764, 28.565582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317519, -0.236600, 0.918261,
		0.326365, -0.881942, -0.340094,
		0.890319, 0.407674, -0.202815,
		41.780418, 37.969067, 28.504738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679676, 37.243729, 28.872103>,  <41.157192, 37.683693, 28.646708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679676, 37.243729, 28.872103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898884, 37.577656, 28.851082>,  <42.030407, 37.778011, 28.838469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.898884, 37.577656, 28.851082>,  <41.679676, 37.243729, 28.872103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898884, 37.577656, 28.851082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348947, -0.171063, 0.921398,
		0.760207, -0.523280, -0.385051,
		0.548017, 0.834815, -0.052553,
		42.063290, 37.828102, 28.835316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376049, 37.036983, 29.183027>,  <41.679676, 37.243729, 28.872103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376049, 37.036983, 29.183027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318058, 37.432331, 29.201399>,  <42.283264, 37.669540, 29.212421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318058, 37.432331, 29.201399>,  <42.376049, 37.036983, 29.183027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318058, 37.432331, 29.201399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362697, 0.009895, 0.931854,
		0.920562, 0.151753, -0.359913,
		-0.144973, 0.988369, 0.045931,
		42.274567, 37.728844, 29.215178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069630, 37.428596, 29.367147>,  <42.376049, 37.036983, 29.183027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069630, 37.428596, 29.367147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739960, 37.616711, 29.493364>,  <42.542160, 37.729580, 29.569096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.739960, 37.616711, 29.493364>,  <43.069630, 37.428596, 29.367147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739960, 37.616711, 29.493364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338889, -0.036873, 0.940103,
		0.453754, 0.881743, -0.128986,
		-0.824173, 0.470287, 0.315544,
		42.492706, 37.757797, 29.588028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.268158, 37.637344, 29.970041>,  <43.069630, 37.428596, 29.367147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.268158, 37.637344, 29.970041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.879494, 37.730869, 29.983892>,  <42.646294, 37.786983, 29.992203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.879494, 37.730869, 29.983892>,  <43.268158, 37.637344, 29.970041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879494, 37.730869, 29.983892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039903, 0.017857, 0.999044,
		0.232975, 0.972117, -0.026681,
		-0.971664, 0.233817, 0.034630,
		42.587994, 37.801014, 29.994282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.191513, 38.257477, 30.442392>,  <43.268158, 37.637344, 29.970041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.191513, 38.257477, 30.442392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834118, 38.078110, 30.432583>,  <42.619682, 37.970490, 30.426697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834118, 38.078110, 30.432583>,  <43.191513, 38.257477, 30.442392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834118, 38.078110, 30.432583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024434, -0.005984, 0.999683,
		-0.448422, 0.893804, -0.005610,
		-0.893488, -0.448418, -0.024523,
		42.566071, 37.943584, 30.425226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793846, 38.643124, 30.910713>,  <43.191513, 38.257477, 30.442392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793846, 38.643124, 30.910713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632854, 38.277138, 30.899061>,  <42.536259, 38.057545, 30.892069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.632854, 38.277138, 30.899061>,  <42.793846, 38.643124, 30.910713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632854, 38.277138, 30.899061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016380, -0.024619, 0.999563,
		-0.915281, 0.402784, -0.005079,
		-0.402483, -0.914964, -0.029131,
		42.512108, 38.002647, 30.890322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047703, 38.594589, 31.245750>,  <42.793846, 38.643124, 30.910713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047703, 38.594589, 31.245750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285652, 38.274433, 31.275429>,  <42.428421, 38.082340, 31.293236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285652, 38.274433, 31.275429>,  <42.047703, 38.594589, 31.245750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285652, 38.274433, 31.275429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028044, 0.071583, 0.997040,
		-0.803332, -0.595191, 0.020137,
		0.594871, -0.800389, 0.074196,
		42.464115, 38.034317, 31.297688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532055, 38.045887, 31.385859>,  <42.047703, 38.594589, 31.245750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532055, 38.045887, 31.385859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908058, 37.971992, 31.500574>,  <42.133659, 37.927654, 31.569405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908058, 37.971992, 31.500574>,  <41.532055, 38.045887, 31.385859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908058, 37.971992, 31.500574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317756, -0.168245, 0.933126,
		-0.124138, -0.968279, -0.216855,
		0.940011, -0.184744, 0.286790,
		42.190063, 37.916569, 31.586611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398376, 37.456459, 31.870445>,  <41.532055, 38.045887, 31.385859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398376, 37.456459, 31.870445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759796, 37.619114, 31.924469>,  <41.976650, 37.716705, 31.956884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.759796, 37.619114, 31.924469>,  <41.398376, 37.456459, 31.870445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759796, 37.619114, 31.924469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169579, 0.049897, 0.984253,
		0.393496, -0.912226, 0.114042,
		0.903551, 0.406639, 0.135061,
		42.030861, 37.741104, 31.964987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.740166, 37.018059, 32.308319>,  <41.398376, 37.456459, 31.870445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.740166, 37.018059, 32.308319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969799, 37.341949, 32.356926>,  <42.107578, 37.536285, 32.386089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969799, 37.341949, 32.356926>,  <41.740166, 37.018059, 32.308319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969799, 37.341949, 32.356926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147766, -0.043516, 0.988065,
		0.805354, -0.585186, 0.094669,
		0.574082, 0.809731, 0.121517,
		42.142025, 37.584869, 32.393379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195103, 36.807545, 32.898224>,  <41.740166, 37.018059, 32.308319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195103, 36.807545, 32.898224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146713, 37.202713, 32.859493>,  <42.117680, 37.439816, 32.836254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146713, 37.202713, 32.859493>,  <42.195103, 36.807545, 32.898224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146713, 37.202713, 32.859493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117975, 0.082540, 0.989580,
		0.985620, 0.131137, 0.106565,
		-0.120975, 0.987922, -0.096824,
		42.110420, 37.499088, 32.830444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639469, 37.092461, 33.441395>,  <42.195103, 36.807545, 32.898224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639469, 37.092461, 33.441395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400600, 37.400242, 33.350777>,  <42.257278, 37.584911, 33.296406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400600, 37.400242, 33.350777>,  <42.639469, 37.092461, 33.441395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400600, 37.400242, 33.350777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143570, 0.175342, 0.973983,
		0.789161, 0.614159, 0.005762,
		-0.597170, 0.769457, -0.226548,
		42.221451, 37.631081, 33.282814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716221, 37.623322, 33.950287>,  <42.639469, 37.092461, 33.441395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716221, 37.623322, 33.950287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360039, 37.710648, 33.790573>,  <42.146332, 37.763042, 33.694744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360039, 37.710648, 33.790573>,  <42.716221, 37.623322, 33.950287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360039, 37.710648, 33.790573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343597, 0.252771, 0.904460,
		0.298387, 0.942573, -0.150068,
		-0.890453, 0.218317, -0.399289,
		42.092903, 37.776142, 33.670788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517914, 38.186447, 34.341156>,  <42.716221, 37.623322, 33.950287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517914, 38.186447, 34.341156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184917, 38.038425, 34.176224>,  <41.985119, 37.949612, 34.077263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184917, 38.038425, 34.176224>,  <42.517914, 38.186447, 34.341156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184917, 38.038425, 34.176224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440362, -0.009670, 0.897768,
		-0.336210, 0.928960, -0.154908,
		-0.832493, -0.370054, -0.412330,
		41.935169, 37.927410, 34.052525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.987381, 38.621746, 34.581635>,  <42.517914, 38.186447, 34.341156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.987381, 38.621746, 34.581635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915302, 38.232071, 34.527248>,  <41.872055, 37.998264, 34.494617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915302, 38.232071, 34.527248>,  <41.987381, 38.621746, 34.581635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915302, 38.232071, 34.527248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197763, -0.099526, 0.975184,
		-0.963545, 0.202617, -0.174724,
		-0.180199, -0.974188, -0.135968,
		41.861244, 37.939816, 34.486458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395950, 38.565960, 34.913448>,  <41.987381, 38.621746, 34.581635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395950, 38.565960, 34.913448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549435, 38.199100, 34.870346>,  <41.641525, 37.978985, 34.844486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549435, 38.199100, 34.870346>,  <41.395950, 38.565960, 34.913448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549435, 38.199100, 34.870346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089784, -0.153185, 0.984110,
		-0.919079, -0.367937, -0.141123,
		0.383709, -0.917146, -0.107755,
		41.664547, 37.923958, 34.838020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066589, 38.092739, 35.466507>,  <41.395950, 38.565960, 34.913448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066589, 38.092739, 35.466507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411045, 37.931824, 35.342186>,  <41.617718, 37.835274, 35.267593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411045, 37.931824, 35.342186>,  <41.066589, 38.092739, 35.466507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411045, 37.931824, 35.342186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287381, -0.119078, 0.950386,
		-0.419339, -0.907736, 0.013067,
		0.861143, -0.402289, -0.310800,
		41.669388, 37.811138, 35.248947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092373, 37.485081, 35.809994>,  <41.066589, 38.092739, 35.466507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092373, 37.485081, 35.809994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466957, 37.595909, 35.723946>,  <41.691708, 37.662407, 35.672318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466957, 37.595909, 35.723946>,  <41.092373, 37.485081, 35.809994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466957, 37.595909, 35.723946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288126, -0.257777, 0.922244,
		0.200070, -0.925626, -0.321228,
		0.936459, 0.277068, -0.215123,
		41.747894, 37.679028, 35.659409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398624, 36.988403, 36.231228>,  <41.092373, 37.485081, 35.809994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398624, 36.988403, 36.231228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672894, 37.241158, 36.086689>,  <41.837456, 37.392811, 35.999966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672894, 37.241158, 36.086689>,  <41.398624, 36.988403, 36.231228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672894, 37.241158, 36.086689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652234, -0.312940, 0.690406,
		0.323177, -0.709076, -0.626712,
		0.685673, 0.631886, -0.361348,
		41.878597, 37.430725, 35.978283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287388, 36.227829, 36.092144>,  <41.398624, 36.988403, 36.231228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287388, 36.227829, 36.092144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657955, 36.190369, 36.238014>,  <41.880295, 36.167892, 36.325535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657955, 36.190369, 36.238014>,  <41.287388, 36.227829, 36.092144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657955, 36.190369, 36.238014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079452, -0.898136, -0.432480,
		0.368025, 0.429630, -0.824606,
		0.926415, -0.093647, 0.364672,
		41.935879, 36.162273, 36.347416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721493, 36.006031, 35.566517>,  <41.287388, 36.227829, 36.092144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721493, 36.006031, 35.566517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884731, 35.894295, 35.914177>,  <41.982674, 35.827255, 36.122772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.884731, 35.894295, 35.914177>,  <41.721493, 36.006031, 35.566517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884731, 35.894295, 35.914177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100245, -0.932571, -0.346787,
		0.907417, 0.228651, -0.352579,
		0.408099, -0.279336, 0.869153,
		42.007160, 35.810493, 36.174923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052971, 35.409512, 35.294907>,  <41.721493, 36.006031, 35.566517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052971, 35.409512, 35.294907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.078545, 35.392818, 35.693741>,  <42.093887, 35.382801, 35.933041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.078545, 35.392818, 35.693741>,  <42.052971, 35.409512, 35.294907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078545, 35.392818, 35.693741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098934, -0.993938, -0.047945,
		0.993038, 0.101710, -0.059414,
		0.063930, -0.041733, 0.997081,
		42.097725, 35.380299, 35.992867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575924, 34.856770, 35.326485>,  <42.052971, 35.409512, 35.294907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575924, 34.856770, 35.326485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395287, 34.908077, 35.679668>,  <42.286903, 34.938862, 35.891579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.395287, 34.908077, 35.679668>,  <42.575924, 34.856770, 35.326485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395287, 34.908077, 35.679668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247914, -0.968682, 0.013923,
		0.857090, -0.212610, 0.469248,
		-0.451592, 0.128266, 0.882957,
		42.259808, 34.946556, 35.944557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.061523, 34.563717, 35.740463>,  <42.575924, 34.856770, 35.326485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.061523, 34.563717, 35.740463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690121, 34.567833, 35.888935>,  <42.467281, 34.570301, 35.978020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690121, 34.567833, 35.888935>,  <43.061523, 34.563717, 35.740463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690121, 34.567833, 35.888935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035683, -0.997462, -0.061613,
		0.369602, -0.070453, 0.926515,
		-0.928505, 0.010289, 0.371178,
		42.411568, 34.570919, 36.000290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099602, 34.101944, 36.305717>,  <43.061523, 34.563717, 35.740463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099602, 34.101944, 36.305717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715107, 34.143673, 36.203636>,  <42.484409, 34.168713, 36.142387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715107, 34.143673, 36.203636>,  <43.099602, 34.101944, 36.305717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715107, 34.143673, 36.203636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138344, -0.983190, 0.119158,
		-0.238486, 0.149845, 0.959516,
		-0.961242, 0.104326, -0.255207,
		42.426735, 34.174973, 36.127075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678822, 33.745872, 36.869431>,  <43.099602, 34.101944, 36.305717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678822, 33.745872, 36.869431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493484, 33.767761, 36.515636>,  <42.382282, 33.780895, 36.303360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493484, 33.767761, 36.515636>,  <42.678822, 33.745872, 36.869431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493484, 33.767761, 36.515636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166872, -0.985624, 0.026437,
		-0.870327, 0.159846, 0.465811,
		-0.463340, 0.054722, -0.884489,
		42.354481, 33.784176, 36.250290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075665, 33.348484, 36.949333>,  <42.678822, 33.745872, 36.869431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075665, 33.348484, 36.949333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222240, 33.348240, 36.577156>,  <42.310184, 33.348091, 36.353851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222240, 33.348240, 36.577156>,  <42.075665, 33.348484, 36.949333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222240, 33.348240, 36.577156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204399, -0.975519, 0.081144,
		-0.907714, -0.219915, -0.357343,
		0.366439, -0.000615, -0.930442,
		42.332172, 33.348057, 36.298023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834167, 32.710777, 36.500942>,  <42.075665, 33.348484, 36.949333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834167, 32.710777, 36.500942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172791, 32.852108, 36.341694>,  <42.375965, 32.936905, 36.246147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.172791, 32.852108, 36.341694>,  <41.834167, 32.710777, 36.500942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172791, 32.852108, 36.341694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419147, -0.903504, 0.089426,
		-0.328105, -0.242574, -0.912965,
		0.846560, 0.353325, -0.398118,
		42.426758, 32.958107, 36.222260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205276, 32.397297, 35.878910>,  <41.834167, 32.710777, 36.500942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205276, 32.397297, 35.878910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482525, 32.557808, 36.118431>,  <42.648872, 32.654114, 36.262142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482525, 32.557808, 36.118431>,  <42.205276, 32.397297, 35.878910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482525, 32.557808, 36.118431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458649, -0.886374, 0.063101,
		0.556082, 0.230903, -0.798409,
		0.693119, 0.401279, 0.598800,
		42.690460, 32.678192, 36.298073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565624, 32.991379, 35.600266>,  <42.205276, 32.397297, 35.878910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565624, 32.991379, 35.600266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182323, 32.997578, 35.714462>,  <41.952343, 33.001297, 35.782982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182323, 32.997578, 35.714462>,  <42.565624, 32.991379, 35.600266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182323, 32.997578, 35.714462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060857, 0.964589, -0.256640,
		-0.279360, -0.263301, -0.923380,
		-0.958256, 0.015501, 0.285491,
		41.894848, 33.002228, 35.800110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125664, 33.337479, 35.126343>,  <42.565624, 32.991379, 35.600266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125664, 33.337479, 35.126343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975864, 33.376850, 35.495140>,  <41.885986, 33.400475, 35.716419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975864, 33.376850, 35.495140>,  <42.125664, 33.337479, 35.126343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975864, 33.376850, 35.495140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178430, 0.968115, -0.175831,
		-0.909898, -0.230359, -0.344993,
		-0.374497, 0.098431, 0.921989,
		41.863514, 33.406380, 35.771736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533794, 33.850174, 35.144642>,  <42.125664, 33.337479, 35.126343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533794, 33.850174, 35.144642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669273, 33.815819, 35.519428>,  <41.750561, 33.795204, 35.744301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.669273, 33.815819, 35.519428>,  <41.533794, 33.850174, 35.144642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669273, 33.815819, 35.519428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020360, 0.996261, 0.083964,
		-0.940675, -0.009362, 0.339180,
		0.338698, -0.085889, 0.936967,
		41.770882, 33.790051, 35.800518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148472, 34.160202, 35.783993>,  <41.533794, 33.850174, 35.144642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148472, 34.160202, 35.783993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530518, 34.164265, 35.902420>,  <41.759743, 34.166702, 35.973476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530518, 34.164265, 35.902420>,  <41.148472, 34.160202, 35.783993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530518, 34.164265, 35.902420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065323, 0.982034, 0.177040,
		-0.288955, -0.188433, 0.938615,
		0.955112, 0.010157, 0.296073,
		41.817051, 34.167313, 35.991241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252720, 34.551018, 36.488918>,  <41.148472, 34.160202, 35.783993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252720, 34.551018, 36.488918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613571, 34.573891, 36.317856>,  <41.830082, 34.587612, 36.215218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613571, 34.573891, 36.317856>,  <41.252720, 34.551018, 36.488918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613571, 34.573891, 36.317856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014266, 0.986685, 0.162015,
		0.431226, -0.152260, 0.889304,
		0.902131, 0.057178, -0.427656,
		41.884209, 34.591045, 36.189560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528946, 34.973610, 36.996319>,  <41.252720, 34.551018, 36.488918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528946, 34.973610, 36.996319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770290, 34.964600, 36.677460>,  <41.915096, 34.959194, 36.486145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770290, 34.964600, 36.677460>,  <41.528946, 34.973610, 36.996319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770290, 34.964600, 36.677460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419043, 0.859429, 0.292890,
		0.678497, -0.510758, 0.527985,
		0.603361, -0.022524, -0.797150,
		41.951298, 34.957844, 36.438316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130592, 35.064190, 37.247471>,  <41.528946, 34.973610, 36.996319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130592, 35.064190, 37.247471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158775, 35.182354, 36.866364>,  <42.175686, 35.253250, 36.637699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158775, 35.182354, 36.866364>,  <42.130592, 35.064190, 37.247471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158775, 35.182354, 36.866364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267422, 0.914586, 0.303343,
		0.961000, -0.276165, -0.014559,
		0.070457, 0.295406, -0.952770,
		42.179913, 35.270977, 36.580532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655678, 35.502087, 37.240932>,  <42.130592, 35.064190, 37.247471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655678, 35.502087, 37.240932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475986, 35.592812, 36.895275>,  <42.368172, 35.647247, 36.687881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.475986, 35.592812, 36.895275>,  <42.655678, 35.502087, 37.240932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475986, 35.592812, 36.895275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191041, 0.969252, 0.155091,
		0.872752, -0.095416, -0.478747,
		-0.449229, 0.226817, -0.864146,
		42.341217, 35.660858, 36.636032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081600, 35.994778, 36.909557>,  <42.655678, 35.502087, 37.240932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081600, 35.994778, 36.909557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714050, 36.043377, 36.759407>,  <42.493519, 36.072536, 36.669319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714050, 36.043377, 36.759407>,  <43.081600, 35.994778, 36.909557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714050, 36.043377, 36.759407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026169, 0.968079, 0.249273,
		0.393674, 0.219228, -0.892726,
		-0.918877, 0.121495, -0.375371,
		42.438389, 36.079826, 36.646797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.067360, 36.438808, 36.398102>,  <43.081600, 35.994778, 36.909557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.067360, 36.438808, 36.398102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696522, 36.488720, 36.539478>,  <42.474018, 36.518665, 36.624306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696522, 36.488720, 36.539478>,  <43.067360, 36.438808, 36.398102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696522, 36.488720, 36.539478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133377, 0.991065, -0.000024,
		-0.350289, 0.047119, -0.935456,
		-0.927097, 0.124777, 0.353443,
		42.418392, 36.526154, 36.645512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800697, 36.814434, 35.903000>,  <43.067360, 36.438808, 36.398102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800697, 36.814434, 35.903000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617340, 36.858669, 36.255737>,  <42.507328, 36.885208, 36.467381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617340, 36.858669, 36.255737>,  <42.800697, 36.814434, 35.903000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617340, 36.858669, 36.255737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292536, 0.955712, 0.032216,
		-0.839227, 0.272739, -0.470437,
		-0.458389, 0.110583, 0.881845,
		42.479824, 36.891846, 36.520290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705814, 37.101250, 35.154690>,  <42.800697, 36.814434, 35.903000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705814, 37.101250, 35.154690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336533, 37.254204, 35.170078>,  <42.114964, 37.345978, 35.179314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336533, 37.254204, 35.170078>,  <42.705814, 37.101250, 35.154690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336533, 37.254204, 35.170078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020428, 0.051144, -0.998482,
		-0.383777, -0.922585, -0.039405,
		-0.923200, 0.382390, 0.038474,
		42.059574, 37.368919, 35.181622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254181, 36.708839, 34.812588>,  <42.705814, 37.101250, 35.154690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254181, 36.708839, 34.812588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051865, 37.053886, 34.809307>,  <41.930477, 37.260914, 34.807339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051865, 37.053886, 34.809307>,  <42.254181, 36.708839, 34.812588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051865, 37.053886, 34.809307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094719, -0.064977, -0.993381,
		-0.857443, -0.501663, 0.114571,
		-0.505787, 0.862620, -0.008197,
		41.900127, 37.312672, 34.806847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723095, 36.679104, 34.282654>,  <42.254181, 36.708839, 34.812588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723095, 36.679104, 34.282654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768230, 37.071110, 34.348194>,  <41.795311, 37.306313, 34.387520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.768230, 37.071110, 34.348194>,  <41.723095, 36.679104, 34.282654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.768230, 37.071110, 34.348194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099503, 0.152929, -0.983215,
		-0.988618, 0.127252, -0.080257,
		0.112842, 0.980010, 0.163850,
		41.802082, 37.365112, 34.397350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038940, 37.125774, 34.065048>,  <41.723095, 36.679104, 34.282654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038940, 37.125774, 34.065048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229782, 37.470314, 34.134853>,  <41.344288, 37.677036, 34.176735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229782, 37.470314, 34.134853>,  <41.038940, 37.125774, 34.065048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229782, 37.470314, 34.134853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333142, 0.006497, -0.942854,
		-0.813259, 0.507974, -0.283851,
		0.477101, 0.861348, 0.174511,
		41.372913, 37.728718, 34.187206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724209, 37.594841, 33.552441>,  <41.038940, 37.125774, 34.065048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724209, 37.594841, 33.552441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084332, 37.673710, 33.707653>,  <41.300407, 37.721031, 33.800781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.084332, 37.673710, 33.707653>,  <40.724209, 37.594841, 33.552441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084332, 37.673710, 33.707653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346317, 0.215494, -0.913032,
		-0.263642, 0.956392, 0.125727,
		0.900310, 0.197172, 0.388028,
		41.354424, 37.732861, 33.824062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003685, 38.178261, 33.131737>,  <40.724209, 37.594841, 33.552441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003685, 38.178261, 33.131737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335804, 38.032124, 33.300083>,  <41.535076, 37.944439, 33.401093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335804, 38.032124, 33.300083>,  <41.003685, 38.178261, 33.131737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335804, 38.032124, 33.300083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481916, 0.091334, -0.871444,
		0.279938, 0.926380, 0.251901,
		0.830296, -0.365346, 0.420870,
		41.584892, 37.922520, 33.426346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463257, 38.489830, 32.705338>,  <41.003685, 38.178261, 33.131737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463257, 38.489830, 32.705338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676422, 38.229828, 32.922039>,  <41.804321, 38.073826, 33.052059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.676422, 38.229828, 32.922039>,  <41.463257, 38.489830, 32.705338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676422, 38.229828, 32.922039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615097, -0.142092, -0.775542,
		0.581085, 0.746528, 0.324093,
		0.532913, -0.650005, 0.541754,
		41.836296, 38.034828, 33.084564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130775, 38.839432, 32.818848>,  <41.463257, 38.489830, 32.705338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130775, 38.839432, 32.818848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134972, 38.439564, 32.809540>,  <42.137489, 38.199642, 32.803955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.134972, 38.439564, 32.809540>,  <42.130775, 38.839432, 32.818848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134972, 38.439564, 32.809540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464986, 0.025478, -0.884951,
		0.885256, -0.001535, 0.465102,
		0.010491, -0.999674, -0.023269,
		42.138119, 38.139660, 32.802559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794415, 38.628437, 32.728344>,  <42.130775, 38.839432, 32.818848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794415, 38.628437, 32.728344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575771, 38.321487, 32.594269>,  <42.444584, 38.137318, 32.513824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.575771, 38.321487, 32.594269>,  <42.794415, 38.628437, 32.728344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.575771, 38.321487, 32.594269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474459, 0.046017, -0.879074,
		0.690004, -0.639545, 0.338934,
		-0.546611, -0.767375, -0.335190,
		42.411789, 38.091274, 32.493713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204422, 38.336586, 32.231922>,  <42.794415, 38.628437, 32.728344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204422, 38.336586, 32.231922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853306, 38.163475, 32.149757>,  <42.642635, 38.059608, 32.100460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853306, 38.163475, 32.149757>,  <43.204422, 38.336586, 32.231922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853306, 38.163475, 32.149757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317355, -0.204145, -0.926073,
		0.358847, -0.878084, 0.316539,
		-0.877790, -0.432774, -0.205408,
		42.589970, 38.033642, 32.088135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447239, 37.728558, 31.941622>,  <43.204422, 38.336586, 32.231922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447239, 37.728558, 31.941622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064625, 37.773716, 31.834076>,  <42.835056, 37.800812, 31.769548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064625, 37.773716, 31.834076>,  <43.447239, 37.728558, 31.941622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064625, 37.773716, 31.834076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229118, -0.279379, -0.932444,
		-0.180384, -0.953521, 0.241370,
		-0.956538, 0.112896, -0.268865,
		42.777664, 37.807587, 31.753416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206413, 37.056263, 31.606266>,  <43.447239, 37.728558, 31.941622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206413, 37.056263, 31.606266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015350, 37.391785, 31.501760>,  <42.900711, 37.593098, 31.439058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015350, 37.391785, 31.501760>,  <43.206413, 37.056263, 31.606266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015350, 37.391785, 31.501760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295120, -0.126904, -0.946995,
		-0.827495, -0.529443, -0.186930,
		-0.477657, 0.838800, -0.261262,
		42.872051, 37.643425, 31.423382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690239, 36.594002, 31.327293>,  <43.206413, 37.056263, 31.606266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690239, 36.594002, 31.327293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811031, 36.271214, 31.124277>,  <43.883507, 36.077541, 31.002466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811031, 36.271214, 31.124277>,  <43.690239, 36.594002, 31.327293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811031, 36.271214, 31.124277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832686, 0.482498, -0.271715,
		0.464155, -0.340570, 0.817663,
		0.301982, -0.806975, -0.507542,
		43.901627, 36.029121, 30.972015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309460, 36.283039, 31.596142>,  <43.690239, 36.594002, 31.327293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309460, 36.283039, 31.596142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291588, 36.228649, 31.200260>,  <44.280865, 36.196014, 30.962730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.291588, 36.228649, 31.200260>,  <44.309460, 36.283039, 31.596142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291588, 36.228649, 31.200260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849353, 0.516387, -0.109287,
		0.525931, -0.845491, 0.092422,
		-0.044676, -0.135977, -0.989704,
		44.278187, 36.187855, 30.903349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928955, 35.879780, 31.252272>,  <44.309460, 36.283039, 31.596142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928955, 35.879780, 31.252272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754219, 36.145519, 31.009680>,  <44.649380, 36.304962, 30.864124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754219, 36.145519, 31.009680>,  <44.928955, 35.879780, 31.252272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754219, 36.145519, 31.009680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817097, 0.575016, 0.041341,
		0.376200, -0.477494, -0.794023,
		-0.436836, 0.664346, -0.606480,
		44.623169, 36.344822, 30.827736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.525192, 36.122673, 30.859642>,  <44.928955, 35.879780, 31.252272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.525192, 36.122673, 30.859642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219696, 36.380535, 30.872993>,  <45.036396, 36.535252, 30.881004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219696, 36.380535, 30.872993>,  <45.525192, 36.122673, 30.859642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219696, 36.380535, 30.872993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633089, 0.737940, 0.233758,
		0.126062, 0.199664, -0.971722,
		-0.763745, 0.644655, 0.033379,
		44.990574, 36.573933, 30.883007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.513844, 36.619980, 30.234856>,  <45.525192, 36.122673, 30.859642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.513844, 36.619980, 30.234856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329391, 36.770439, 30.556320>,  <45.218719, 36.860714, 30.749199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.329391, 36.770439, 30.556320>,  <45.513844, 36.619980, 30.234856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329391, 36.770439, 30.556320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489476, 0.863271, -0.123197,
		-0.740117, 0.336563, -0.582196,
		-0.461129, 0.376151, 0.803661,
		45.191051, 36.883286, 30.797419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238598, 37.361725, 30.101309>,  <45.513844, 36.619980, 30.234856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238598, 37.361725, 30.101309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306664, 37.261871, 30.482618>,  <45.347504, 37.201962, 30.711405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306664, 37.261871, 30.482618>,  <45.238598, 37.361725, 30.101309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306664, 37.261871, 30.482618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615799, 0.782167, 0.094903,
		-0.769310, 0.570876, 0.286816,
		0.170161, -0.249630, 0.953273,
		45.357712, 37.186981, 30.768600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172215, 37.977562, 30.511776>,  <45.238598, 37.361725, 30.101309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172215, 37.977562, 30.511776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416309, 37.708397, 30.679012>,  <45.562767, 37.546898, 30.779354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416309, 37.708397, 30.679012>,  <45.172215, 37.977562, 30.511776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416309, 37.708397, 30.679012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733530, 0.679280, 0.022636,
		-0.299231, 0.292867, 0.908124,
		0.610241, -0.672910, 0.418089,
		45.599380, 37.506523, 30.804440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582016, 38.379162, 31.104168>,  <45.172215, 37.977562, 30.511776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582016, 38.379162, 31.104168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769730, 38.051552, 30.972130>,  <45.882359, 37.854984, 30.892906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769730, 38.051552, 30.972130>,  <45.582016, 38.379162, 31.104168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769730, 38.051552, 30.972130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871643, 0.489525, 0.024589,
		0.141452, -0.299266, 0.943627,
		0.469287, -0.819027, -0.330097,
		45.910515, 37.805843, 30.873100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.117943, 38.145485, 31.619511>,  <45.582016, 38.379162, 31.104168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.117943, 38.145485, 31.619511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172192, 38.087246, 31.227509>,  <46.204742, 38.052303, 30.992308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172192, 38.087246, 31.227509>,  <46.117943, 38.145485, 31.619511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.172192, 38.087246, 31.227509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899583, 0.432578, 0.060224,
		0.415160, -0.889763, 0.189645,
		0.135621, -0.145599, -0.980004,
		46.212879, 38.043568, 30.933508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106651, 38.256004, 32.371368>,  <46.117943, 38.145485, 31.619511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106651, 38.256004, 32.371368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.922997, 38.393101, 32.699203>,  <45.812805, 38.475357, 32.895905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.922997, 38.393101, 32.699203>,  <46.106651, 38.256004, 32.371368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922997, 38.393101, 32.699203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680059, -0.458001, 0.572499,
		0.571590, 0.820223, -0.022797,
		-0.459135, 0.342738, 0.819589,
		45.785255, 38.495922, 32.945080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570744, 38.622307, 32.814880>,  <46.106651, 38.256004, 32.371368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570744, 38.622307, 32.814880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.266716, 38.446377, 33.006229>,  <46.084297, 38.340816, 33.121040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.266716, 38.446377, 33.006229>,  <46.570744, 38.622307, 32.814880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.266716, 38.446377, 33.006229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647367, -0.576625, 0.498418,
		0.056625, 0.688517, 0.723006,
		-0.760072, -0.439827, 0.478375,
		46.038692, 38.314430, 33.149742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.968960, 38.355621, 33.362530>,  <46.570744, 38.622307, 32.814880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.968960, 38.355621, 33.362530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598061, 38.223263, 33.432644>,  <46.375523, 38.143848, 33.474712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598061, 38.223263, 33.432644>,  <46.968960, 38.355621, 33.362530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.598061, 38.223263, 33.432644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367330, -0.712945, 0.597309,
		-0.072680, 0.618239, 0.782623,
		-0.927247, -0.330893, 0.175281,
		46.319885, 38.123997, 33.485229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.938473, 38.294411, 34.051571>,  <46.968960, 38.355621, 33.362530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.938473, 38.294411, 34.051571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678310, 38.048199, 33.873539>,  <46.522213, 37.900471, 33.766720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678310, 38.048199, 33.873539>,  <46.938473, 38.294411, 34.051571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.678310, 38.048199, 33.873539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371373, -0.768831, 0.520559,
		-0.662612, 0.173282, 0.728642,
		-0.650406, -0.615526, -0.445084,
		46.483189, 37.863541, 33.740013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570599, 37.951454, 34.614037>,  <46.938473, 38.294411, 34.051571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570599, 37.951454, 34.614037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.614235, 37.756931, 34.267258>,  <46.640419, 37.640217, 34.059189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.614235, 37.756931, 34.267258>,  <46.570599, 37.951454, 34.614037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.614235, 37.756931, 34.267258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427953, -0.764211, 0.482532,
		-0.897193, -0.423655, 0.124748,
		0.109093, -0.486311, -0.866949,
		46.646961, 37.611038, 34.007172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.316582, 37.243633, 34.559593>,  <46.570599, 37.951454, 34.614037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.316582, 37.243633, 34.559593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.611164, 37.247822, 34.289028>,  <46.787914, 37.250336, 34.126690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.611164, 37.247822, 34.289028>,  <46.316582, 37.243633, 34.559593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.611164, 37.247822, 34.289028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431709, -0.777088, 0.457997,
		-0.520832, -0.629305, -0.576810,
		0.736452, 0.010474, -0.676409,
		46.832100, 37.250965, 34.086105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420269, 36.535568, 34.396343>,  <46.316582, 37.243633, 34.559593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420269, 36.535568, 34.396343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764648, 36.721256, 34.313137>,  <46.971275, 36.832668, 34.263214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.764648, 36.721256, 34.313137>,  <46.420269, 36.535568, 34.396343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.764648, 36.721256, 34.313137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503300, -0.836749, 0.215733,
		-0.073906, -0.290427, -0.954039,
		0.860946, 0.464223, -0.208013,
		47.022934, 36.860523, 34.250732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.861053, 36.231407, 33.757286>,  <46.420269, 36.535568, 34.396343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.861053, 36.231407, 33.757286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039829, 36.368584, 34.087772>,  <47.147095, 36.450890, 34.286064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039829, 36.368584, 34.087772>,  <46.861053, 36.231407, 33.757286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.039829, 36.368584, 34.087772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384927, -0.907449, 0.168428,
		0.807510, 0.242756, -0.537584,
		0.446943, 0.342938, 0.826218,
		47.173912, 36.471466, 34.335636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.555351, 36.253506, 33.737309>,  <46.861053, 36.231407, 33.757286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.555351, 36.253506, 33.737309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.370075, 36.172722, 34.082485>,  <47.258911, 36.124252, 34.289593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.370075, 36.172722, 34.082485>,  <47.555351, 36.253506, 33.737309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.370075, 36.172722, 34.082485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489162, -0.870202, 0.058904,
		0.739038, 0.449402, 0.501857,
		-0.463188, -0.201957, 0.862943,
		47.231117, 36.112133, 34.341370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.039097, 36.065090, 34.355576>,  <47.555351, 36.253506, 33.737309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.039097, 36.065090, 34.355576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.704254, 35.846512, 34.345387>,  <47.503349, 35.715363, 34.339272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.704254, 35.846512, 34.345387>,  <48.039097, 36.065090, 34.355576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.704254, 35.846512, 34.345387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525384, -0.816066, 0.240848,
		-0.152400, 0.188231, 0.970228,
		-0.837106, -0.546448, -0.025475,
		47.453121, 35.682579, 34.337746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.883453, 35.721157, 35.035507>,  <48.039097, 36.065090, 34.355576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.883453, 35.721157, 35.035507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.759735, 35.534557, 34.704037>,  <47.685505, 35.422596, 34.505154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.759735, 35.534557, 34.704037>,  <47.883453, 35.721157, 35.035507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.759735, 35.534557, 34.704037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692078, -0.708060, 0.140285,
		-0.652199, -0.530121, 0.541856,
		-0.309298, -0.466500, -0.828681,
		47.666946, 35.394608, 34.455433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.707085, 34.973209, 35.156971>,  <47.883453, 35.721157, 35.035507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.707085, 34.973209, 35.156971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.821526, 35.055416, 34.782612>,  <47.890190, 35.104740, 34.557995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.821526, 35.055416, 34.782612>,  <47.707085, 34.973209, 35.156971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.821526, 35.055416, 34.782612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803900, -0.582996, 0.117731,
		-0.521430, -0.786053, -0.332010,
		0.286103, 0.205515, -0.935900,
		47.907356, 35.117069, 34.501842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.902790, 36.710892, 22.123295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628525, 36.953918, 22.283659>,  <35.463966, 37.099735, 22.379877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628525, 36.953918, 22.283659>,  <35.902790, 36.710892, 22.123295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628525, 36.953918, 22.283659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420277, -0.119259, 0.899525,
		0.594331, 0.785266, -0.173573,
		-0.685666, 0.607564, 0.400909,
		35.422825, 37.136189, 22.403931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223835, 37.033806, 22.578167>,  <35.902790, 36.710892, 22.123295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223835, 37.033806, 22.578167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.852852, 37.107555, 22.708296>,  <35.630264, 37.151806, 22.786373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.852852, 37.107555, 22.708296>,  <36.223835, 37.033806, 22.578167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852852, 37.107555, 22.708296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336067, 0.029500, 0.941376,
		0.163966, 0.982414, -0.089321,
		-0.927456, 0.184372, 0.325320,
		35.574615, 37.162868, 22.805891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259521, 37.555134, 23.153324>,  <36.223835, 37.033806, 22.578167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259521, 37.555134, 23.153324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.905098, 37.375702, 23.200102>,  <35.692444, 37.268044, 23.228168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.905098, 37.375702, 23.200102>,  <36.259521, 37.555134, 23.153324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905098, 37.375702, 23.200102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086176, 0.088483, 0.992343,
		-0.455495, 0.889351, -0.039744,
		-0.886058, -0.448582, 0.116944,
		35.639282, 37.241127, 23.235186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980907, 37.978951, 23.540421>,  <36.259521, 37.555134, 23.153324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980907, 37.978951, 23.540421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786835, 37.632118, 23.585623>,  <35.670391, 37.424019, 23.612743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.786835, 37.632118, 23.585623>,  <35.980907, 37.978951, 23.540421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786835, 37.632118, 23.585623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004048, 0.131459, 0.991313,
		-0.874404, 0.480510, -0.067291,
		-0.485182, -0.867081, 0.113004,
		35.641281, 37.371994, 23.619524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490097, 38.148933, 23.946110>,  <35.980907, 37.978951, 23.540421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490097, 38.148933, 23.946110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512989, 37.753540, 24.002151>,  <35.526726, 37.516304, 24.035776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512989, 37.753540, 24.002151>,  <35.490097, 38.148933, 23.946110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512989, 37.753540, 24.002151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022748, 0.141589, 0.989664,
		-0.998102, -0.053450, 0.030589,
		0.057229, -0.988481, 0.140105,
		35.530159, 37.456997, 24.044184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001625, 38.005035, 24.476376>,  <35.490097, 38.148933, 23.946110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001625, 38.005035, 24.476376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225193, 37.673367, 24.480021>,  <35.359333, 37.474365, 24.482208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.225193, 37.673367, 24.480021>,  <35.001625, 38.005035, 24.476376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225193, 37.673367, 24.480021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063880, -0.032098, 0.997441,
		-0.826759, -0.558069, -0.070908,
		0.558918, -0.829173, 0.009112,
		35.392868, 37.424614, 24.482754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692711, 37.543491, 24.831236>,  <35.001625, 38.005035, 24.476376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692711, 37.543491, 24.831236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.071857, 37.419197, 24.859472>,  <35.299347, 37.344620, 24.876415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.071857, 37.419197, 24.859472>,  <34.692711, 37.543491, 24.831236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071857, 37.419197, 24.859472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029912, 0.133790, 0.990558,
		-0.317248, -0.941033, 0.117521,
		0.947871, -0.310738, 0.070593,
		35.356220, 37.325977, 24.880650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640850, 37.251858, 25.537558>,  <34.692711, 37.543491, 24.831236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640850, 37.251858, 25.537558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.023472, 37.278313, 25.423975>,  <35.253044, 37.294186, 25.355825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.023472, 37.278313, 25.423975>,  <34.640850, 37.251858, 25.537558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023472, 37.278313, 25.423975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264233, 0.214998, 0.940190,
		0.123225, -0.974373, 0.188183,
		0.956555, 0.066131, -0.283954,
		35.310440, 37.298153, 25.338789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116737, 36.729065, 25.925936>,  <34.640850, 37.251858, 25.537558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116737, 36.729065, 25.925936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346085, 37.040359, 25.823486>,  <35.483692, 37.227135, 25.762016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346085, 37.040359, 25.823486>,  <35.116737, 36.729065, 25.925936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346085, 37.040359, 25.823486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473110, -0.059272, 0.879008,
		0.668896, -0.625167, -0.402176,
		0.573364, 0.778238, -0.256126,
		35.518093, 37.273830, 25.746649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807262, 36.540226, 25.981167>,  <35.116737, 36.729065, 25.925936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807262, 36.540226, 25.981167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.845646, 36.937885, 26.000998>,  <35.868675, 37.176479, 26.012896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.845646, 36.937885, 26.000998>,  <35.807262, 36.540226, 25.981167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845646, 36.937885, 26.000998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654995, -0.100572, 0.748911,
		0.749515, -0.039394, -0.660814,
		0.095961, 0.994150, 0.049578,
		35.874435, 37.236130, 26.015871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493431, 36.627899, 26.148317>,  <35.807262, 36.540226, 25.981167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493431, 36.627899, 26.148317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350426, 36.996788, 26.207239>,  <36.264622, 37.218121, 26.242592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350426, 36.996788, 26.207239>,  <36.493431, 36.627899, 26.148317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350426, 36.996788, 26.207239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635694, 0.124754, 0.761794,
		0.684164, 0.365989, -0.630850,
		-0.357509, 0.922219, 0.147305,
		36.243172, 37.273453, 26.251431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163242, 37.024986, 26.242117>,  <36.493431, 36.627899, 26.148317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163242, 37.024986, 26.242117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856571, 37.238903, 26.384216>,  <36.672569, 37.367252, 26.469477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856571, 37.238903, 26.384216>,  <37.163242, 37.024986, 26.242117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856571, 37.238903, 26.384216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529474, 0.213705, 0.820967,
		0.363127, 0.817514, -0.447001,
		-0.766679, 0.534791, 0.355250,
		36.626568, 37.399342, 26.490791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431267, 37.644482, 26.370279>,  <37.163242, 37.024986, 26.242117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431267, 37.644482, 26.370279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.113819, 37.562840, 26.599545>,  <36.923351, 37.513855, 26.737104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.113819, 37.562840, 26.599545>,  <37.431267, 37.644482, 26.370279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113819, 37.562840, 26.599545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520609, 0.259716, 0.813335,
		-0.314863, 0.943869, -0.099857,
		-0.793616, -0.204103, 0.573162,
		36.875732, 37.501610, 26.771494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465778, 38.131481, 26.836378>,  <37.431267, 37.644482, 26.370279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465778, 38.131481, 26.836378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213638, 37.885845, 27.026350>,  <37.062355, 37.738464, 27.140333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.213638, 37.885845, 27.026350>,  <37.465778, 38.131481, 26.836378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213638, 37.885845, 27.026350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383208, 0.285915, 0.878296,
		-0.675141, 0.735628, 0.055098,
		-0.630346, -0.614088, 0.474932,
		37.024536, 37.701618, 27.168829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145786, 38.499454, 27.511593>,  <37.465778, 38.131481, 26.836378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145786, 38.499454, 27.511593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100727, 38.105076, 27.560936>,  <37.073692, 37.868450, 27.590542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.100727, 38.105076, 27.560936>,  <37.145786, 38.499454, 27.511593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100727, 38.105076, 27.560936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209534, 0.097786, 0.972899,
		-0.971291, 0.135442, 0.195575,
		-0.112647, -0.985948, 0.123359,
		37.066933, 37.809292, 27.597944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823448, 38.376053, 28.149275>,  <37.145786, 38.499454, 27.511593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823448, 38.376053, 28.149275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.981869, 38.014339, 28.085514>,  <37.076923, 37.797310, 28.047258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.981869, 38.014339, 28.085514>,  <36.823448, 38.376053, 28.149275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981869, 38.014339, 28.085514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240193, -0.065524, 0.968511,
		-0.886255, -0.421871, 0.191252,
		0.396056, -0.904285, -0.159401,
		37.100685, 37.743053, 28.037693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677124, 38.005821, 28.740080>,  <36.823448, 38.376053, 28.149275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677124, 38.005821, 28.740080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983501, 37.789688, 28.600721>,  <37.167328, 37.660007, 28.517107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.983501, 37.789688, 28.600721>,  <36.677124, 38.005821, 28.740080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983501, 37.789688, 28.600721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323705, -0.144087, 0.935122,
		-0.555475, -0.829024, 0.064547,
		0.765939, -0.540332, -0.348396,
		37.213284, 37.627590, 28.496202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656910, 37.285706, 29.061134>,  <36.677124, 38.005821, 28.740080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656910, 37.285706, 29.061134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032898, 37.378231, 28.960775>,  <37.258492, 37.433746, 28.900560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.032898, 37.378231, 28.960775>,  <36.656910, 37.285706, 29.061134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032898, 37.378231, 28.960775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269061, -0.050124, 0.961818,
		0.209903, -0.971588, -0.109352,
		0.939972, 0.231311, -0.250895,
		37.314888, 37.447624, 28.885508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053146, 36.935905, 29.593447>,  <36.656910, 37.285706, 29.061134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053146, 36.935905, 29.593447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.317055, 37.164978, 29.398823>,  <37.475399, 37.302422, 29.282049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.317055, 37.164978, 29.398823>,  <37.053146, 36.935905, 29.593447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317055, 37.164978, 29.398823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594254, -0.001299, 0.804276,
		0.459959, -0.819780, -0.341173,
		0.659773, 0.572677, -0.486560,
		37.514988, 37.336781, 29.252855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714230, 36.544022, 29.738258>,  <37.053146, 36.935905, 29.593447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714230, 36.544022, 29.738258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788937, 36.930756, 29.668585>,  <37.833763, 37.162796, 29.626781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.788937, 36.930756, 29.668585>,  <37.714230, 36.544022, 29.738258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788937, 36.930756, 29.668585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678995, 0.001095, 0.734142,
		0.709988, -0.255384, -0.656275,
		0.186769, 0.966839, -0.174182,
		37.844967, 37.220806, 29.616329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409615, 36.635048, 29.893738>,  <37.714230, 36.544022, 29.738258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409615, 36.635048, 29.893738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.273586, 37.010963, 29.880140>,  <38.191971, 37.236511, 29.871983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.273586, 37.010963, 29.880140>,  <38.409615, 36.635048, 29.893738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273586, 37.010963, 29.880140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534379, 0.222861, 0.815336,
		0.773817, 0.259105, -0.577990,
		-0.340069, 0.939786, -0.033994,
		38.171566, 37.292900, 29.869942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987095, 37.149078, 29.998074>,  <38.409615, 36.635048, 29.893738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987095, 37.149078, 29.998074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623775, 37.270607, 30.113094>,  <38.405785, 37.343525, 30.182108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.623775, 37.270607, 30.113094>,  <38.987095, 37.149078, 29.998074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623775, 37.270607, 30.113094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344077, 0.151647, 0.926614,
		0.237920, 0.940582, -0.242279,
		-0.908298, 0.303822, 0.287553,
		38.351288, 37.361755, 30.199360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670059, 36.672012, 30.051067>,  <38.987095, 37.149078, 29.998074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670059, 36.672012, 30.051067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.021160, 36.486435, 30.003227>,  <40.231823, 36.375088, 29.974524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.021160, 36.486435, 30.003227>,  <39.670059, 36.672012, 30.051067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021160, 36.486435, 30.003227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154300, -0.037409, -0.987316,
		0.453583, 0.885075, -0.104422,
		0.877755, -0.463942, -0.119599,
		40.284485, 36.347252, 29.967348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934914, 37.162567, 29.531607>,  <39.670059, 36.672012, 30.051067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934914, 37.162567, 29.531607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.132271, 36.815140, 29.513042>,  <40.250687, 36.606686, 29.501904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.132271, 36.815140, 29.513042>,  <39.934914, 37.162567, 29.531607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132271, 36.815140, 29.513042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065239, 0.090163, -0.993788,
		0.867354, 0.487304, 0.101150,
		0.493397, -0.868565, -0.046412,
		40.280289, 36.554569, 29.499119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472317, 37.183674, 29.008875>,  <39.934914, 37.162567, 29.531607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472317, 37.183674, 29.008875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.436329, 36.785362, 29.016230>,  <40.414738, 36.546375, 29.020643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.436329, 36.785362, 29.016230>,  <40.472317, 37.183674, 29.008875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436329, 36.785362, 29.016230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007637, -0.019153, -0.999787,
		0.995916, -0.089807, 0.009328,
		-0.089966, -0.995775, 0.018389,
		40.409340, 36.486629, 29.021746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986538, 36.801834, 28.596693>,  <40.472317, 37.183674, 29.008875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986538, 36.801834, 28.596693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.706512, 36.516251, 28.602003>,  <40.538498, 36.344902, 28.605188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.706512, 36.516251, 28.602003>,  <40.986538, 36.801834, 28.596693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706512, 36.516251, 28.602003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158982, -0.173956, -0.971835,
		0.696157, -0.678237, 0.235286,
		-0.700064, -0.713956, 0.013273,
		40.496494, 36.302063, 28.605986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151230, 36.480003, 28.011736>,  <40.986538, 36.801834, 28.596693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151230, 36.480003, 28.011736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.818253, 36.279510, 28.106230>,  <40.618465, 36.159214, 28.162926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.818253, 36.279510, 28.106230>,  <41.151230, 36.480003, 28.011736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818253, 36.279510, 28.106230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177446, -0.162743, -0.970581,
		0.524935, -0.849869, 0.046531,
		-0.832440, -0.501235, 0.236235,
		40.568520, 36.129139, 28.177101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178341, 35.891171, 27.580643>,  <41.151230, 36.480003, 28.011736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178341, 35.891171, 27.580643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.797379, 35.941063, 27.691906>,  <40.568802, 35.970997, 27.758663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.797379, 35.941063, 27.691906>,  <41.178341, 35.891171, 27.580643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797379, 35.941063, 27.691906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269814, 0.079753, -0.959604,
		-0.141874, -0.988980, -0.042304,
		-0.952403, 0.124728, 0.278156,
		40.511658, 35.978481, 27.775352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850639, 35.444637, 27.149696>,  <41.178341, 35.891171, 27.580643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850639, 35.444637, 27.149696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.563679, 35.690025, 27.281750>,  <40.391502, 35.837257, 27.360981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.563679, 35.690025, 27.281750>,  <40.850639, 35.444637, 27.149696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563679, 35.690025, 27.281750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416803, 0.001747, -0.908995,
		-0.558216, -0.789718, 0.254442,
		-0.717405, 0.613468, 0.330132,
		40.348457, 35.874065, 27.380789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209629, 35.195625, 26.871422>,  <40.850639, 35.444637, 27.149696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209629, 35.195625, 26.871422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.163097, 35.582073, 26.963573>,  <40.135178, 35.813942, 27.018866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.163097, 35.582073, 26.963573>,  <40.209629, 35.195625, 26.871422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163097, 35.582073, 26.963573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515762, 0.139470, -0.845303,
		-0.848798, -0.217153, 0.482065,
		-0.116327, 0.966123, 0.230381,
		40.128201, 35.871910, 27.032688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631702, 35.350620, 26.681732>,  <40.209629, 35.195625, 26.871422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631702, 35.350620, 26.681732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.779690, 35.721874, 26.698154>,  <39.868481, 35.944626, 26.708008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.779690, 35.721874, 26.698154>,  <39.631702, 35.350620, 26.681732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779690, 35.721874, 26.698154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533382, 0.248376, -0.808587,
		-0.760678, 0.277251, 0.586942,
		0.369964, 0.928139, 0.041054,
		39.890678, 36.000317, 26.710470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038952, 35.732296, 26.480242>,  <39.631702, 35.350620, 26.681732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038952, 35.732296, 26.480242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.386108, 35.922508, 26.422785>,  <39.594402, 36.036636, 26.388311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.386108, 35.922508, 26.422785>,  <39.038952, 35.732296, 26.480242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386108, 35.922508, 26.422785> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323700, 0.322051, -0.889664,
		-0.376801, 0.818630, 0.433435,
		0.867893, 0.475529, -0.143641,
		39.646477, 36.065166, 26.379692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797836, 36.265682, 26.025940>,  <39.038952, 35.732296, 26.480242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797836, 36.265682, 26.025940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.197666, 36.277142, 26.028311>,  <39.437565, 36.284016, 26.029734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.197666, 36.277142, 26.028311>,  <38.797836, 36.265682, 26.025940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197666, 36.277142, 26.028311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001047, 0.167500, -0.985872,
		-0.029235, 0.985456, 0.167398,
		0.999572, 0.028647, 0.005929,
		39.497540, 36.285736, 26.030090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954014, 36.874722, 25.650953>,  <38.797836, 36.265682, 26.025940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954014, 36.874722, 25.650953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.252781, 36.609459, 25.631609>,  <39.432041, 36.450302, 25.620003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.252781, 36.609459, 25.631609>,  <38.954014, 36.874722, 25.650953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252781, 36.609459, 25.631609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026598, 0.102472, -0.994380,
		0.664384, 0.741435, 0.094177,
		0.746918, -0.663155, -0.048360,
		39.476856, 36.410511, 25.617102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.532532, 37.159412, 25.230261>,  <38.954014, 36.874722, 25.650953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.532532, 37.159412, 25.230261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.513058, 36.759937, 25.223988>,  <39.501373, 36.520252, 25.220222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.513058, 36.759937, 25.223988>,  <39.532532, 37.159412, 25.230261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513058, 36.759937, 25.223988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048522, 0.018050, -0.998659,
		0.997635, -0.047859, -0.049337,
		-0.048686, -0.998691, -0.015685,
		39.498451, 36.460331, 25.219282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753925, 37.026730, 24.533066>,  <39.532532, 37.159412, 25.230261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753925, 37.026730, 24.533066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.617134, 36.669937, 24.651331>,  <39.535061, 36.455860, 24.722290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.617134, 36.669937, 24.651331>,  <39.753925, 37.026730, 24.533066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617134, 36.669937, 24.651331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414744, -0.139062, -0.899249,
		0.843231, -0.430147, -0.322389,
		-0.341978, -0.891984, 0.295662,
		39.514542, 36.402344, 24.740030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960110, 36.642410, 23.993223>,  <39.753925, 37.026730, 24.533066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960110, 36.642410, 23.993223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.673923, 36.426811, 24.171032>,  <39.502213, 36.297451, 24.277718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.673923, 36.426811, 24.171032>,  <39.960110, 36.642410, 23.993223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673923, 36.426811, 24.171032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449706, -0.131642, -0.883422,
		0.534677, -0.831959, -0.148204,
		-0.715461, -0.538994, 0.444523,
		39.459286, 36.265114, 24.304390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794178, 36.030563, 23.500933>,  <39.960110, 36.642410, 23.993223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794178, 36.030563, 23.500933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.478481, 36.053616, 23.745481>,  <39.289062, 36.067448, 23.892210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.478481, 36.053616, 23.745481>,  <39.794178, 36.030563, 23.500933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478481, 36.053616, 23.745481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614078, -0.070207, -0.786117,
		-0.002378, -0.995867, 0.090797,
		-0.789242, 0.057626, 0.611373,
		39.241707, 36.070904, 23.928894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278034, 35.510975, 23.354694>,  <39.794178, 36.030563, 23.500933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278034, 35.510975, 23.354694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.083420, 35.805637, 23.542576>,  <38.966652, 35.982433, 23.655306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.083420, 35.805637, 23.542576>,  <39.278034, 35.510975, 23.354694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083420, 35.805637, 23.542576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727782, -0.044308, -0.684376,
		-0.483335, -0.674819, 0.557679,
		-0.486540, 0.736652, 0.469706,
		38.937458, 36.026634, 23.683487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563866, 35.435261, 23.100744>,  <39.278034, 35.510975, 23.354694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563866, 35.435261, 23.100744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.569077, 35.798271, 23.268658>,  <38.572205, 36.016079, 23.369406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.569077, 35.798271, 23.268658>,  <38.563866, 35.435261, 23.100744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569077, 35.798271, 23.268658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649215, 0.326978, -0.686735,
		-0.760493, -0.263582, 0.593443,
		0.013031, 0.907529, 0.419786,
		38.572987, 36.070530, 23.394594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.546631, 35.722221, 23.457855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779022, 36.042622, 23.400068>,  <37.918457, 36.234859, 23.365396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.779022, 36.042622, 23.400068>,  <37.546631, 35.722221, 23.457855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779022, 36.042622, 23.400068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529655, 0.237293, -0.814345,
		-0.618008, 0.549631, 0.562114,
		0.580975, 0.800998, -0.144466,
		37.953316, 36.282921, 23.356728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047516, 36.341297, 23.374720>,  <37.546631, 35.722221, 23.457855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047516, 36.341297, 23.374720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407032, 36.435257, 23.226664>,  <37.622742, 36.491634, 23.137831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407032, 36.435257, 23.226664>,  <37.047516, 36.341297, 23.374720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407032, 36.435257, 23.226664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434184, 0.360387, -0.825594,
		-0.060539, 0.902742, 0.425901,
		0.898788, 0.234900, -0.370139,
		37.676670, 36.505726, 23.115622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847477, 36.894283, 22.884083>,  <37.047516, 36.341297, 23.374720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847477, 36.894283, 22.884083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.218655, 36.780533, 22.787708>,  <37.441360, 36.712284, 22.729883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.218655, 36.780533, 22.787708>,  <36.847477, 36.894283, 22.884083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218655, 36.780533, 22.787708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219615, 0.105124, -0.969906,
		0.301145, 0.952932, 0.035096,
		0.927944, -0.284375, -0.240936,
		37.497040, 36.695221, 22.715427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178066, 37.470013, 22.434683>,  <36.847477, 36.894283, 22.884083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178066, 37.470013, 22.434683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.387764, 37.137901, 22.358997>,  <37.513584, 36.938633, 22.313585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.387764, 37.137901, 22.358997>,  <37.178066, 37.470013, 22.434683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387764, 37.137901, 22.358997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042951, 0.196133, -0.979636,
		0.850483, 0.521697, 0.067160,
		0.524246, -0.830280, -0.189215,
		37.545036, 36.888817, 22.302233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421783, 37.682388, 21.826273>,  <37.178066, 37.470013, 22.434683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421783, 37.682388, 21.826273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.461544, 37.284374, 21.828083>,  <37.485401, 37.045567, 21.829168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.461544, 37.284374, 21.828083>,  <37.421783, 37.682388, 21.826273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461544, 37.284374, 21.828083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250659, -0.029441, -0.967628,
		0.962959, 0.095050, -0.252341,
		0.099402, -0.995037, 0.004525,
		37.491364, 36.985863, 21.829441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927063, 37.376385, 21.222176>,  <37.421783, 37.682388, 21.826273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927063, 37.376385, 21.222176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.690437, 37.073284, 21.332352>,  <37.548462, 36.891426, 21.398457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.690437, 37.073284, 21.332352>,  <37.927063, 37.376385, 21.222176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690437, 37.073284, 21.332352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309035, -0.102433, -0.945518,
		0.744680, -0.644456, -0.173575,
		-0.591565, -0.757750, 0.275439,
		37.512966, 36.845959, 21.414984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023514, 36.768452, 20.785172>,  <37.927063, 37.376385, 21.222176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023514, 36.768452, 20.785172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652569, 36.742306, 20.932539>,  <37.430004, 36.726620, 21.020960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652569, 36.742306, 20.932539>,  <38.023514, 36.768452, 20.785172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652569, 36.742306, 20.932539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353386, -0.170595, -0.919791,
		0.122971, -0.983171, 0.135104,
		-0.927360, -0.065364, 0.368418,
		37.374359, 36.722698, 21.043064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814362, 36.062607, 20.664541>,  <38.023514, 36.768452, 20.785172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814362, 36.062607, 20.664541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494946, 36.298927, 20.710638>,  <37.303295, 36.440720, 20.738297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.494946, 36.298927, 20.710638>,  <37.814362, 36.062607, 20.664541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494946, 36.298927, 20.710638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371697, -0.333391, -0.866425,
		-0.473468, -0.734711, 0.485827,
		-0.798542, 0.590805, 0.115239,
		37.255383, 36.476170, 20.745211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295158, 35.593990, 20.605572>,  <37.814362, 36.062607, 20.664541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295158, 35.593990, 20.605572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128231, 35.952488, 20.545454>,  <37.028072, 36.167587, 20.509382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128231, 35.952488, 20.545454>,  <37.295158, 35.593990, 20.605572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128231, 35.952488, 20.545454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428712, -0.339989, -0.837026,
		-0.801279, -0.284876, 0.526116,
		-0.417323, 0.896244, -0.150297,
		37.003033, 36.221359, 20.500364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633560, 35.485107, 20.277697>,  <37.295158, 35.593990, 20.605572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633560, 35.485107, 20.277697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.693428, 35.874626, 20.209209>,  <36.729351, 36.108337, 20.168118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.693428, 35.874626, 20.209209>,  <36.633560, 35.485107, 20.277697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693428, 35.874626, 20.209209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237631, -0.132662, -0.962254,
		-0.959755, 0.184710, 0.211549,
		0.149673, 0.973798, -0.171216,
		36.738331, 36.166767, 20.157845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079418, 35.654530, 19.863173>,  <36.633560, 35.485107, 20.277697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079418, 35.654530, 19.863173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.352356, 35.943523, 19.818583>,  <36.516117, 36.116920, 19.791828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.352356, 35.943523, 19.818583>,  <36.079418, 35.654530, 19.863173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352356, 35.943523, 19.818583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231627, 0.069035, -0.970352,
		-0.693369, 0.687932, 0.214453,
		0.682341, 0.722485, -0.111477,
		36.557056, 36.160271, 19.785139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801247, 36.134804, 19.413719>,  <36.079418, 35.654530, 19.863173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801247, 36.134804, 19.413719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.198666, 36.176830, 19.396637>,  <36.437119, 36.202045, 19.386389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.198666, 36.176830, 19.396637>,  <35.801247, 36.134804, 19.413719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198666, 36.176830, 19.396637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054309, 0.110206, -0.992424,
		-0.099565, 0.988340, 0.115201,
		0.993548, 0.105067, -0.042703,
		36.496731, 36.208351, 19.383825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893559, 36.740463, 18.961794>,  <35.801247, 36.134804, 19.413719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893559, 36.740463, 18.961794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.249077, 36.557201, 18.957058>,  <36.462387, 36.447243, 18.954216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.249077, 36.557201, 18.957058>,  <35.893559, 36.740463, 18.961794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249077, 36.557201, 18.957058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055510, 0.133258, -0.989526,
		0.454934, 0.878826, 0.143871,
		0.888793, -0.458155, -0.011840,
		36.515717, 36.419754, 18.953506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192959, 37.153248, 18.453220>,  <35.893559, 36.740463, 18.961794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192959, 37.153248, 18.453220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406586, 36.818745, 18.502937>,  <36.534760, 36.618042, 18.532766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.406586, 36.818745, 18.502937>,  <36.192959, 37.153248, 18.453220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406586, 36.818745, 18.502937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124240, -0.067787, -0.989934,
		0.836265, 0.544131, 0.067694,
		0.534065, -0.836257, 0.124291,
		36.566807, 36.567867, 18.540224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853497, 37.164143, 18.029930>,  <36.192959, 37.153248, 18.453220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853497, 37.164143, 18.029930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.781544, 36.772335, 18.066124>,  <36.738373, 36.537251, 18.087841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.781544, 36.772335, 18.066124>,  <36.853497, 37.164143, 18.029930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781544, 36.772335, 18.066124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063720, -0.103395, -0.992597,
		0.981623, -0.172782, 0.081013,
		-0.179879, -0.979518, 0.090485,
		36.727581, 36.478481, 18.093269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304722, 36.827965, 17.691690>,  <36.853497, 37.164143, 18.029930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304722, 36.827965, 17.691690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012657, 36.554821, 17.701263>,  <36.837418, 36.390934, 17.707006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012657, 36.554821, 17.701263>,  <37.304722, 36.827965, 17.691690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012657, 36.554821, 17.701263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170000, -0.215476, -0.961598,
		0.661790, -0.698052, 0.273418,
		-0.730160, -0.682857, 0.023931,
		36.793610, 36.349964, 17.708443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348854, 36.452877, 17.047184>,  <37.304722, 36.827965, 17.691690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348854, 36.452877, 17.047184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000534, 36.303181, 17.174717>,  <36.791542, 36.213364, 17.251236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.000534, 36.303181, 17.174717>,  <37.348854, 36.452877, 17.047184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000534, 36.303181, 17.174717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197076, -0.328412, -0.923746,
		0.450410, -0.867232, 0.212228,
		-0.870800, -0.374239, 0.318831,
		36.739296, 36.190910, 17.270367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291660, 35.694294, 16.806616>,  <37.348854, 36.452877, 17.047184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291660, 35.694294, 16.806616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.911087, 35.801426, 16.867342>,  <36.682743, 35.865707, 16.903778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.911087, 35.801426, 16.867342>,  <37.291660, 35.694294, 16.806616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911087, 35.801426, 16.867342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218119, -0.238417, -0.946351,
		-0.217266, -0.933501, 0.285256,
		-0.951430, 0.267830, 0.151814,
		36.625660, 35.881775, 16.912886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980003, 35.220078, 16.444317>,  <37.291660, 35.694294, 16.806616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980003, 35.220078, 16.444317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.730663, 35.526142, 16.508770>,  <36.581059, 35.709782, 16.547441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.730663, 35.526142, 16.508770>,  <36.980003, 35.220078, 16.444317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730663, 35.526142, 16.508770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147466, 0.087338, -0.985203,
		-0.767913, -0.637887, 0.058394,
		-0.623348, 0.765162, 0.161134,
		36.543659, 35.755692, 16.557110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452789, 35.000568, 16.121494>,  <36.980003, 35.220078, 16.444317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452789, 35.000568, 16.121494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.431068, 35.397884, 16.162336>,  <36.418037, 35.636272, 16.186842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.431068, 35.397884, 16.162336>,  <36.452789, 35.000568, 16.121494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431068, 35.397884, 16.162336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099351, 0.096376, -0.990374,
		-0.993570, -0.063925, 0.093450,
		-0.054304, 0.993290, 0.102107,
		36.414776, 35.695873, 16.192968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757236, 35.307446, 15.844691>,  <36.452789, 35.000568, 16.121494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757236, 35.307446, 15.844691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.035721, 35.593822, 15.823821>,  <36.202812, 35.765648, 15.811299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.035721, 35.593822, 15.823821>,  <35.757236, 35.307446, 15.844691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035721, 35.593822, 15.823821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185743, 0.109461, -0.976483,
		-0.693391, 0.689528, 0.209189,
		0.696210, 0.715940, -0.052176,
		36.244583, 35.808605, 15.808168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596283, 35.542557, 15.245148>,  <35.757236, 35.307446, 15.844691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596283, 35.542557, 15.245148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.896660, 35.796242, 15.318741>,  <36.076885, 35.948452, 15.362897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.896660, 35.796242, 15.318741>,  <35.596283, 35.542557, 15.245148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896660, 35.796242, 15.318741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051241, 0.333731, -0.941275,
		-0.658373, 0.697419, 0.283112,
		0.750946, 0.634217, 0.183983,
		36.121944, 35.986507, 15.373936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369495, 36.364994, 15.245146>,  <35.596283, 35.542557, 15.245148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369495, 36.364994, 15.245146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734070, 36.242794, 15.134906>,  <35.952816, 36.169476, 15.068762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734070, 36.242794, 15.134906>,  <35.369495, 36.364994, 15.245146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734070, 36.242794, 15.134906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207236, 0.237802, -0.948949,
		0.355439, 0.922021, 0.153432,
		0.911437, -0.305496, -0.275599,
		36.007500, 36.151146, 15.052226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773354, 36.887241, 14.988404>,  <35.369495, 36.364994, 15.245146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773354, 36.887241, 14.988404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.935570, 36.571449, 14.804117>,  <36.032898, 36.381973, 14.693545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.935570, 36.571449, 14.804117>,  <35.773354, 36.887241, 14.988404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935570, 36.571449, 14.804117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030034, 0.492243, -0.869939,
		0.913583, 0.366633, 0.175913,
		0.405540, -0.789479, -0.460717,
		36.057232, 36.334606, 14.665902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482430, 37.605450, 14.856038>,  <35.773354, 36.887241, 14.988404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482430, 37.605450, 14.856038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.197884, 37.853027, 14.722851>,  <35.027157, 38.001572, 14.642939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.197884, 37.853027, 14.722851>,  <35.482430, 37.605450, 14.856038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197884, 37.853027, 14.722851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208634, 0.266437, 0.941001,
		0.671139, 0.738867, -0.060403,
		-0.711368, 0.618940, -0.332969,
		34.984474, 38.038708, 14.622960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630489, 38.302879, 15.162702>,  <35.482430, 37.605450, 14.856038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630489, 38.302879, 15.162702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239868, 38.260189, 15.087912>,  <35.005497, 38.234573, 15.043037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239868, 38.260189, 15.087912>,  <35.630489, 38.302879, 15.162702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239868, 38.260189, 15.087912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207230, 0.230541, 0.950740,
		-0.058364, 0.967192, -0.247252,
		-0.976550, -0.106727, -0.186976,
		34.946903, 38.228172, 15.031819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227425, 38.831612, 15.461350>,  <35.630489, 38.302879, 15.162702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227425, 38.831612, 15.461350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.973080, 38.523922, 15.436136>,  <34.820473, 38.339310, 15.421007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.973080, 38.523922, 15.436136>,  <35.227425, 38.831612, 15.461350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973080, 38.523922, 15.436136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274570, 0.149123, 0.949934,
		-0.721311, 0.621335, -0.306027,
		-0.635862, -0.769224, -0.063036,
		34.782322, 38.293156, 15.417226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616135, 39.124832, 15.729823>,  <35.227425, 38.831612, 15.461350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616135, 39.124832, 15.729823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.571823, 38.729046, 15.767094>,  <34.545238, 38.491573, 15.789456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.571823, 38.729046, 15.767094>,  <34.616135, 39.124832, 15.729823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571823, 38.729046, 15.767094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319670, 0.124246, 0.939348,
		-0.941031, 0.074272, -0.330066,
		-0.110777, -0.989468, 0.093177,
		34.538589, 38.432205, 15.795047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951183, 39.020245, 15.960024>,  <34.616135, 39.124832, 15.729823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951183, 39.020245, 15.960024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.141788, 38.682732, 16.058796>,  <34.256149, 38.480225, 16.118059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.141788, 38.682732, 16.058796>,  <33.951183, 39.020245, 15.960024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141788, 38.682732, 16.058796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333534, 0.086371, 0.938773,
		-0.813445, -0.529695, -0.240272,
		0.476510, -0.843779, 0.246929,
		34.284740, 38.429596, 16.132875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451046, 38.653194, 16.564775>,  <33.951183, 39.020245, 15.960024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451046, 38.653194, 16.564775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.798557, 38.455193, 16.570278>,  <34.007065, 38.336391, 16.573580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.798557, 38.455193, 16.570278>,  <33.451046, 38.653194, 16.564775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798557, 38.455193, 16.570278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092666, -0.135225, 0.986472,
		-0.486448, -0.858303, -0.163351,
		0.868782, -0.495005, 0.013756,
		34.059193, 38.306690, 16.574406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311527, 38.020180, 16.899086>,  <33.451046, 38.653194, 16.564775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311527, 38.020180, 16.899086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.703388, 38.094830, 16.928614>,  <33.938507, 38.139618, 16.946331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.703388, 38.094830, 16.928614>,  <33.311527, 38.020180, 16.899086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703388, 38.094830, 16.928614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054550, -0.106363, 0.992830,
		0.193138, -0.976657, -0.094019,
		0.979654, 0.186625, 0.073819,
		33.997284, 38.150818, 16.950760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578411, 37.540867, 17.463257>,  <33.311527, 38.020180, 16.899086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578411, 37.540867, 17.463257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900940, 37.776615, 17.443298>,  <34.094456, 37.918064, 17.431324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900940, 37.776615, 17.443298>,  <33.578411, 37.540867, 17.463257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900940, 37.776615, 17.443298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047373, 0.019735, 0.998682,
		0.589580, -0.807621, -0.012007,
		0.806320, 0.589372, -0.049895,
		34.142838, 37.953426, 17.428329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232807, 37.206310, 17.861935>,  <33.578411, 37.540867, 17.463257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232807, 37.206310, 17.861935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292351, 37.600746, 17.832342>,  <34.328079, 37.837406, 17.814587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292351, 37.600746, 17.832342>,  <34.232807, 37.206310, 17.861935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292351, 37.600746, 17.832342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254830, 0.034035, 0.966387,
		0.955459, -0.162713, -0.246218,
		0.148863, 0.986086, -0.073983,
		34.337009, 37.896572, 17.810146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763180, 37.284893, 18.173916>,  <34.232807, 37.206310, 17.861935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763180, 37.284893, 18.173916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.608139, 37.653130, 18.193029>,  <34.515114, 37.874069, 18.204496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.608139, 37.653130, 18.193029>,  <34.763180, 37.284893, 18.173916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608139, 37.653130, 18.193029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294581, 0.074580, 0.952712,
		0.873492, 0.383346, -0.300095,
		-0.387599, 0.920589, 0.047782,
		34.491859, 37.929306, 18.207363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315643, 37.759304, 18.387684>,  <34.763180, 37.284893, 18.173916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315643, 37.759304, 18.387684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968838, 37.931713, 18.487682>,  <34.760754, 38.035160, 18.547682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968838, 37.931713, 18.487682>,  <35.315643, 37.759304, 18.387684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968838, 37.931713, 18.487682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326937, 0.113476, 0.938208,
		0.376025, 0.895175, -0.239305,
		-0.867016, 0.431027, 0.249996,
		34.708733, 38.061020, 18.562681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499687, 38.317593, 18.843714>,  <35.315643, 37.759304, 18.387684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499687, 38.317593, 18.843714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112549, 38.247437, 18.915831>,  <34.880264, 38.205341, 18.959101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.112549, 38.247437, 18.915831>,  <35.499687, 38.317593, 18.843714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112549, 38.247437, 18.915831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181173, 0.011117, 0.983388,
		-0.174481, 0.984436, 0.021016,
		-0.967849, -0.175390, 0.180293,
		34.822193, 38.194820, 18.969919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327953, 38.825851, 19.381529>,  <35.499687, 38.317593, 18.843714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327953, 38.825851, 19.381529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.044773, 38.543365, 19.384804>,  <34.874863, 38.373875, 19.386768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.044773, 38.543365, 19.384804>,  <35.327953, 38.825851, 19.381529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044773, 38.543365, 19.384804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137754, -0.126707, 0.982328,
		-0.692694, 0.696571, 0.186986,
		-0.707954, -0.706211, 0.008186,
		34.832386, 38.331501, 19.387260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996735, 38.962368, 19.971230>,  <35.327953, 38.825851, 19.381529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996735, 38.962368, 19.971230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.849743, 38.598682, 19.892962>,  <34.761547, 38.380470, 19.846001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.849743, 38.598682, 19.892962>,  <34.996735, 38.962368, 19.971230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849743, 38.598682, 19.892962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012844, -0.215333, 0.976456,
		-0.929942, 0.356317, 0.090809,
		-0.367483, -0.909214, -0.195671,
		34.739498, 38.325920, 19.834261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388535, 38.883366, 20.323900>,  <34.996735, 38.962368, 19.971230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388535, 38.883366, 20.323900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.514378, 38.512466, 20.242682>,  <34.589886, 38.289925, 20.193951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.514378, 38.512466, 20.242682>,  <34.388535, 38.883366, 20.323900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514378, 38.512466, 20.242682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137361, -0.167183, 0.976310,
		-0.939230, -0.335047, 0.074770,
		0.314609, -0.927250, -0.203046,
		34.608761, 38.234291, 20.181768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037571, 38.467480, 20.827415>,  <34.388535, 38.883366, 20.323900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037571, 38.467480, 20.827415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327862, 38.210155, 20.729872>,  <34.502037, 38.055759, 20.671345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327862, 38.210155, 20.729872>,  <34.037571, 38.467480, 20.827415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327862, 38.210155, 20.729872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164038, -0.182433, 0.969438,
		-0.668137, -0.743553, -0.026870,
		0.725730, -0.643310, -0.243861,
		34.545582, 38.017162, 20.656713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895252, 37.782654, 21.156321>,  <34.037571, 38.467480, 20.827415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895252, 37.782654, 21.156321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289845, 37.800652, 21.093294>,  <34.526600, 37.811451, 21.055479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.289845, 37.800652, 21.093294>,  <33.895252, 37.782654, 21.156321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289845, 37.800652, 21.093294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163684, -0.225700, 0.960347,
		0.007645, -0.973157, -0.230013,
		0.986483, 0.044991, -0.157565,
		34.585789, 37.814148, 21.046024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094727, 37.186977, 21.407095>,  <33.895252, 37.782654, 21.156321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094727, 37.186977, 21.407095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439793, 37.389252, 21.410877>,  <34.646832, 37.510616, 21.413147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439793, 37.389252, 21.410877>,  <34.094727, 37.186977, 21.407095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439793, 37.389252, 21.410877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305320, -0.535583, 0.787356,
		0.403216, -0.676340, -0.616426,
		0.862668, 0.505682, 0.009456,
		34.698593, 37.540955, 21.413713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570133, 36.616032, 21.533554>,  <34.094727, 37.186977, 21.407095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570133, 36.616032, 21.533554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.722015, 36.970467, 21.639896>,  <34.813145, 37.183128, 21.703701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.722015, 36.970467, 21.639896>,  <34.570133, 36.616032, 21.533554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722015, 36.970467, 21.639896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207973, -0.361782, 0.908769,
		0.901426, -0.289776, -0.321653,
		0.379708, 0.886083, 0.265854,
		34.835926, 37.236290, 21.719652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219627, 36.473732, 21.947281>,  <34.570133, 36.616032, 21.533554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219627, 36.473732, 21.947281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.151451, 36.861931, 22.015497>,  <35.110546, 37.094849, 22.056427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.151451, 36.861931, 22.015497>,  <35.219627, 36.473732, 21.947281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151451, 36.861931, 22.015497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226592, -0.129831, 0.965298,
		0.958961, 0.203171, -0.197779,
		-0.170443, 0.970498, 0.170539,
		35.100319, 37.153080, 22.066660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.452923, 35.623791, 25.449400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146576, 35.869026, 25.526936>,  <39.962769, 36.016167, 25.573458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146576, 35.869026, 25.526936>,  <40.452923, 35.623791, 25.449400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146576, 35.869026, 25.526936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377642, 0.184885, 0.907306,
		0.520423, 0.768074, -0.373125,
		-0.765863, 0.613090, 0.193839,
		39.916817, 36.052952, 25.585087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769024, 36.148224, 25.855509>,  <40.452923, 35.623791, 25.449400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769024, 36.148224, 25.855509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.379940, 36.213768, 25.921209>,  <40.146488, 36.253094, 25.960630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.379940, 36.213768, 25.921209>,  <40.769024, 36.148224, 25.855509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379940, 36.213768, 25.921209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176152, 0.060844, 0.982481,
		0.150994, 0.984606, -0.088047,
		-0.972713, 0.163858, 0.164253,
		40.088127, 36.262924, 25.970486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733284, 36.738708, 26.266390>,  <40.769024, 36.148224, 25.855509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733284, 36.738708, 26.266390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.395454, 36.530193, 26.315310>,  <40.192757, 36.405083, 26.344662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.395454, 36.530193, 26.315310>,  <40.733284, 36.738708, 26.266390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395454, 36.530193, 26.315310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097122, 0.075479, 0.992406,
		-0.526560, 0.850037, -0.013119,
		-0.844572, -0.521287, 0.122302,
		40.142082, 36.373806, 26.351999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312706, 37.238850, 26.736158>,  <40.733284, 36.738708, 26.266390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312706, 37.238850, 26.736158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.180122, 36.861462, 26.735552>,  <40.100571, 36.635029, 26.735188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.180122, 36.861462, 26.735552>,  <40.312706, 37.238850, 26.736158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180122, 36.861462, 26.735552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010624, 0.002125, 0.999941,
		-0.943410, 0.331455, -0.010728,
		-0.331458, -0.943469, -0.001517,
		40.080685, 36.578423, 26.735096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908623, 37.097019, 27.291771>,  <40.312706, 37.238850, 26.736158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908623, 37.097019, 27.291771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.974697, 36.710194, 27.214308>,  <40.014343, 36.478100, 27.167830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.974697, 36.710194, 27.214308>,  <39.908623, 37.097019, 27.291771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974697, 36.710194, 27.214308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038897, -0.189815, 0.981049,
		-0.985495, -0.169588, 0.006261,
		0.165186, -0.967063, -0.193658,
		40.024254, 36.420074, 27.156210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488110, 36.811523, 27.673466>,  <39.908623, 37.097019, 27.291771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488110, 36.811523, 27.673466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.759529, 36.529167, 27.592197>,  <39.922382, 36.359753, 27.543436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.759529, 36.529167, 27.592197>,  <39.488110, 36.811523, 27.673466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759529, 36.529167, 27.592197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177663, -0.110667, 0.977849,
		-0.712743, -0.699618, 0.050318,
		0.678553, -0.705895, -0.203173,
		39.963097, 36.317398, 27.531246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312984, 36.232449, 28.118111>,  <39.488110, 36.811523, 27.673466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312984, 36.232449, 28.118111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.690891, 36.166370, 28.004887>,  <39.917637, 36.126724, 27.936953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.690891, 36.166370, 28.004887>,  <39.312984, 36.232449, 28.118111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690891, 36.166370, 28.004887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271038, -0.091740, 0.958187,
		-0.184256, -0.981985, -0.041899,
		0.944769, -0.165195, -0.283059,
		39.974323, 36.116814, 27.919970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407547, 35.673744, 28.360004>,  <39.312984, 36.232449, 28.118111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407547, 35.673744, 28.360004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.767693, 35.841209, 28.312569>,  <39.983780, 35.941689, 28.284107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.767693, 35.841209, 28.312569>,  <39.407547, 35.673744, 28.360004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767693, 35.841209, 28.312569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228381, -0.222685, 0.947762,
		0.370386, -0.880415, -0.296113,
		0.900365, 0.418665, -0.118590,
		40.037804, 35.966808, 28.276991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768387, 35.262897, 28.730896>,  <39.407547, 35.673744, 28.360004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768387, 35.262897, 28.730896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.999821, 35.584900, 28.678440>,  <40.138680, 35.778103, 28.646967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.999821, 35.584900, 28.678440>,  <39.768387, 35.262897, 28.730896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999821, 35.584900, 28.678440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191207, 0.022431, 0.981293,
		0.792893, -0.592837, -0.140945,
		0.578585, 0.805010, -0.131140,
		40.173397, 35.826405, 28.639097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371887, 35.165024, 29.155161>,  <39.768387, 35.262897, 28.730896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371887, 35.165024, 29.155161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.401966, 35.560688, 29.104723>,  <40.420013, 35.798088, 29.074459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.401966, 35.560688, 29.104723>,  <40.371887, 35.165024, 29.155161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401966, 35.560688, 29.104723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284851, 0.099877, 0.953354,
		0.955618, -0.107610, -0.274254,
		0.075199, 0.989164, -0.126097,
		40.424526, 35.857437, 29.066895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025887, 35.413521, 29.455425>,  <40.371887, 35.165024, 29.155161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025887, 35.413521, 29.455425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.826218, 35.760048, 29.448214>,  <40.706417, 35.967964, 29.443886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.826218, 35.760048, 29.448214>,  <41.025887, 35.413521, 29.455425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826218, 35.760048, 29.448214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293942, 0.188869, 0.936978,
		0.815125, 0.462410, -0.348924,
		-0.499168, 0.866317, -0.018030,
		40.676468, 36.019943, 29.442804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529247, 35.970669, 29.703585>,  <41.025887, 35.413521, 29.455425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529247, 35.970669, 29.703585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.141525, 36.045536, 29.767361>,  <40.908894, 36.090458, 29.805626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.141525, 36.045536, 29.767361>,  <41.529247, 35.970669, 29.703585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141525, 36.045536, 29.767361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183011, 0.116169, 0.976223,
		0.164197, 0.975434, -0.146857,
		-0.969302, 0.187169, 0.159441,
		40.850735, 36.101688, 29.815193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474636, 36.328594, 30.257839>,  <41.529247, 35.970669, 29.703585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474636, 36.328594, 30.257839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.109859, 36.164646, 30.250185>,  <40.890991, 36.066277, 30.245592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.109859, 36.164646, 30.250185>,  <41.474636, 36.328594, 30.257839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109859, 36.164646, 30.250185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093056, -0.252019, 0.963238,
		-0.399625, 0.876637, 0.267968,
		-0.911943, -0.409870, -0.019137,
		40.836277, 36.041687, 30.244444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124763, 36.637730, 30.786114>,  <41.474636, 36.328594, 30.257839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124763, 36.637730, 30.786114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.005112, 36.266224, 30.698559>,  <40.933319, 36.043320, 30.646027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.005112, 36.266224, 30.698559>,  <41.124763, 36.637730, 30.786114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005112, 36.266224, 30.698559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222645, -0.290991, 0.930459,
		-0.927874, 0.229595, 0.293830,
		-0.299131, -0.928768, -0.218885,
		40.915371, 35.987595, 30.632893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918686, 36.911091, 30.778687>,  <41.124763, 36.637730, 30.786114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918686, 36.911091, 30.778687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.055595, 37.285465, 30.811831>,  <42.137741, 37.510090, 30.831717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.055595, 37.285465, 30.811831>,  <41.918686, 36.911091, 30.778687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055595, 37.285465, 30.811831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180703, 0.152107, -0.971705,
		-0.922061, 0.317615, 0.221189,
		0.342272, 0.935940, 0.082858,
		42.158276, 37.566246, 30.836687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.425602, 37.362637, 30.400690>,  <41.918686, 36.911091, 30.778687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.425602, 37.362637, 30.400690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.771629, 37.562943, 30.412655>,  <41.979244, 37.683128, 30.419834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.771629, 37.562943, 30.412655>,  <41.425602, 37.362637, 30.400690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771629, 37.562943, 30.412655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133475, 0.287230, -0.948516,
		-0.483580, 0.816535, 0.315312,
		0.865064, 0.500769, 0.029912,
		42.031147, 37.713173, 30.421629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.309082, 38.085163, 30.099035>,  <41.425602, 37.362637, 30.400690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.309082, 38.085163, 30.099035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.694073, 37.980801, 30.069176>,  <41.925068, 37.918182, 30.051260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.694073, 37.980801, 30.069176>,  <41.309082, 38.085163, 30.099035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694073, 37.980801, 30.069176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014107, 0.322808, -0.946359,
		0.271005, 0.909793, 0.314375,
		0.962474, -0.260903, -0.074649,
		41.982815, 37.902531, 30.046782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728233, 38.759773, 29.988934>,  <41.309082, 38.085163, 30.099035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728233, 38.759773, 29.988934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.926514, 38.433228, 29.870394>,  <42.045483, 38.237301, 29.799271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.926514, 38.433228, 29.870394>,  <41.728233, 38.759773, 29.988934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926514, 38.433228, 29.870394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031890, 0.358101, -0.933138,
		0.867905, 0.453111, 0.203546,
		0.495706, -0.816366, -0.296348,
		42.075226, 38.188316, 29.781490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105305, 38.974438, 29.366386>,  <41.728233, 38.759773, 29.988934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105305, 38.974438, 29.366386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.203583, 38.589310, 29.321482>,  <42.262550, 38.358231, 29.294538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.203583, 38.589310, 29.321482>,  <42.105305, 38.974438, 29.366386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203583, 38.589310, 29.321482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081538, 0.135927, -0.987358,
		0.965912, 0.233436, 0.111903,
		0.245696, -0.962825, -0.112260,
		42.277290, 38.300461, 29.287804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746479, 38.919559, 28.937803>,  <42.105305, 38.974438, 29.366386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746479, 38.919559, 28.937803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521488, 38.591061, 28.899488>,  <42.386494, 38.393963, 28.876499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521488, 38.591061, 28.899488>,  <42.746479, 38.919559, 28.937803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521488, 38.591061, 28.899488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048133, 0.083132, -0.995375,
		0.825410, -0.564487, -0.007231,
		-0.562477, -0.821245, -0.095788,
		42.352745, 38.344688, 28.870752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966347, 38.478924, 28.438627>,  <42.746479, 38.919559, 28.937803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966347, 38.478924, 28.438627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.588970, 38.346504, 28.445766>,  <42.362545, 38.267052, 28.450050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.588970, 38.346504, 28.445766>,  <42.966347, 38.478924, 28.438627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588970, 38.346504, 28.445766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033500, -0.148748, -0.988308,
		0.329830, -0.931817, 0.151426,
		-0.943446, -0.331046, 0.017846,
		42.305935, 38.247192, 28.451120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942032, 37.824051, 28.171089>,  <42.966347, 38.478924, 28.438627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942032, 37.824051, 28.171089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554653, 37.918800, 28.140118>,  <42.322224, 37.975651, 28.121534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.554653, 37.918800, 28.140118>,  <42.942032, 37.824051, 28.171089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554653, 37.918800, 28.140118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047797, -0.128386, -0.990572,
		-0.244581, -0.963020, 0.113014,
		-0.968450, 0.236874, -0.077430,
		42.264118, 37.989864, 28.116888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663906, 37.338688, 27.691084>,  <42.942032, 37.824051, 28.171089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663906, 37.338688, 27.691084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.404091, 37.642040, 27.712881>,  <42.248203, 37.824051, 27.725960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.404091, 37.642040, 27.712881>,  <42.663906, 37.338688, 27.691084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.404091, 37.642040, 27.712881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094126, -0.009082, -0.995519,
		-0.754483, -0.651753, 0.077282,
		-0.649535, 0.758377, 0.054495,
		42.209229, 37.869553, 27.729229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072067, 37.070038, 27.299911>,  <42.663906, 37.338688, 27.691084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072067, 37.070038, 27.299911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031109, 37.467621, 27.315725>,  <42.006535, 37.706169, 27.325214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031109, 37.467621, 27.315725>,  <42.072067, 37.070038, 27.299911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031109, 37.467621, 27.315725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241386, 0.013728, -0.970332,
		-0.965012, -0.108900, 0.238522,
		-0.102395, 0.993958, 0.039534,
		42.000389, 37.765808, 27.327585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514915, 37.201290, 26.836264>,  <42.072067, 37.070038, 27.299911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514915, 37.201290, 26.836264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.681599, 37.561562, 26.885462>,  <41.781609, 37.777725, 26.914980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.681599, 37.561562, 26.885462>,  <41.514915, 37.201290, 26.836264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681599, 37.561562, 26.885462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149825, 0.201500, -0.967962,
		-0.896609, 0.384929, 0.218911,
		0.416708, 0.900681, 0.122995,
		41.806610, 37.831764, 26.922359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005669, 37.691280, 26.526150>,  <41.514915, 37.201290, 26.836264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005669, 37.691280, 26.526150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.369091, 37.855999, 26.498003>,  <41.587143, 37.954830, 26.481115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.369091, 37.855999, 26.498003>,  <41.005669, 37.691280, 26.526150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369091, 37.855999, 26.498003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196768, 0.273240, -0.941606,
		-0.368521, 0.869348, 0.329281,
		0.908557, 0.411793, -0.070365,
		41.641659, 37.979538, 26.476894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882996, 38.284916, 26.205503>,  <41.005669, 37.691280, 26.526150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882996, 38.284916, 26.205503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.278286, 38.260719, 26.149284>,  <41.515461, 38.246201, 26.115553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.278286, 38.260719, 26.149284>,  <40.882996, 38.284916, 26.205503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278286, 38.260719, 26.149284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127155, 0.186259, -0.974238,
		0.085115, 0.980636, 0.176374,
		0.988224, -0.060496, -0.140546,
		41.574753, 38.242569, 26.107121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109306, 38.922550, 25.957043>,  <40.882996, 38.284916, 26.205503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109306, 38.922550, 25.957043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.352859, 38.628017, 25.839008>,  <41.498989, 38.451298, 25.768187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.352859, 38.628017, 25.839008>,  <41.109306, 38.922550, 25.957043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352859, 38.628017, 25.839008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139348, 0.266924, -0.953590,
		0.780928, 0.621741, 0.059918,
		0.608879, -0.736335, -0.295087,
		41.535522, 38.407116, 25.750483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332565, 39.684635, 25.968201>,  <41.109306, 38.922550, 25.957043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332565, 39.684635, 25.968201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033062, 39.939793, 26.040257>,  <40.853359, 40.092888, 26.083490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.033062, 39.939793, 26.040257>,  <41.332565, 39.684635, 25.968201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033062, 39.939793, 26.040257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183988, -0.061074, 0.981029,
		0.636795, 0.767698, -0.071635,
		-0.748759, 0.637894, 0.180139,
		40.808434, 40.131161, 26.094297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502674, 40.051544, 26.580675>,  <41.332565, 39.684635, 25.968201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502674, 40.051544, 26.580675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.109112, 40.117825, 26.553911>,  <40.872974, 40.157593, 26.537853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.109112, 40.117825, 26.553911>,  <41.502674, 40.051544, 26.580675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109112, 40.117825, 26.553911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094001, -0.161477, 0.982389,
		0.151977, 0.972866, 0.174454,
		-0.983904, 0.165699, -0.066910,
		40.813942, 40.167534, 26.533838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.349251, 40.408005, 27.181499>,  <41.502674, 40.051544, 26.580675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.349251, 40.408005, 27.181499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.998447, 40.248043, 27.074968>,  <40.787964, 40.152065, 27.011049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.998447, 40.248043, 27.074968>,  <41.349251, 40.408005, 27.181499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998447, 40.248043, 27.074968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303230, 0.030711, 0.952422,
		-0.372699, 0.916042, -0.148197,
		-0.877010, -0.399904, -0.266326,
		40.735344, 40.128071, 26.995071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857044, 40.937878, 27.292830>,  <41.349251, 40.408005, 27.181499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857044, 40.937878, 27.292830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.683834, 40.577332, 27.294930>,  <40.579906, 40.361004, 27.296190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.683834, 40.577332, 27.294930>,  <40.857044, 40.937878, 27.292830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683834, 40.577332, 27.294930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307190, 0.153048, 0.939261,
		-0.847422, 0.405110, -0.343165,
		-0.433024, -0.901367, 0.005250,
		40.553928, 40.306923, 27.296505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269611, 41.041847, 27.636322>,  <40.857044, 40.937878, 27.292830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269611, 41.041847, 27.636322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.282948, 40.642132, 27.629265>,  <40.290951, 40.402302, 27.625031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.282948, 40.642132, 27.629265>,  <40.269611, 41.041847, 27.636322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282948, 40.642132, 27.629265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475441, -0.031383, 0.879188,
		-0.879116, -0.020924, -0.476149,
		0.033339, -0.999288, -0.017641,
		40.292950, 40.342346, 27.623972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554237, 40.857655, 27.785759>,  <40.269611, 41.041847, 27.636322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554237, 40.857655, 27.785759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.799553, 40.554729, 27.875507>,  <39.946743, 40.372974, 27.929356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.799553, 40.554729, 27.875507>,  <39.554237, 40.857655, 27.785759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799553, 40.554729, 27.875507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552189, -0.207979, 0.807361,
		-0.564765, -0.619044, -0.545734,
		0.613293, -0.757317, 0.224370,
		39.983540, 40.327534, 27.942818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090931, 40.194447, 27.742647>,  <39.554237, 40.857655, 27.785759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090931, 40.194447, 27.742647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.419338, 40.142998, 27.965137>,  <39.616383, 40.112129, 28.098631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.419338, 40.142998, 27.965137>,  <39.090931, 40.194447, 27.742647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419338, 40.142998, 27.965137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562187, -0.012567, 0.826915,
		-0.099367, -0.991614, -0.082625,
		0.821019, -0.128619, 0.556224,
		39.665646, 40.104412, 28.132004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881550, 39.733078, 28.152851>,  <39.090931, 40.194447, 27.742647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881550, 39.733078, 28.152851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.206360, 39.878216, 28.335699>,  <39.401245, 39.965298, 28.445408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.206360, 39.878216, 28.335699>,  <38.881550, 39.733078, 28.152851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206360, 39.878216, 28.335699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412498, -0.197273, 0.889342,
		0.412874, -0.910727, -0.010516,
		0.812023, 0.362848, 0.457122,
		39.449966, 39.987072, 28.472836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874359, 39.401829, 28.720249>,  <38.881550, 39.733078, 28.152851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874359, 39.401829, 28.720249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.117283, 39.696335, 28.839643>,  <39.263039, 39.873039, 28.911280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.117283, 39.696335, 28.839643>,  <38.874359, 39.401829, 28.720249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117283, 39.696335, 28.839643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393824, -0.047300, 0.917968,
		0.689983, -0.675042, 0.261231,
		0.607311, 0.736261, 0.298484,
		39.299477, 39.917213, 28.929188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254440, 39.220875, 29.360537>,  <38.874359, 39.401829, 28.720249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254440, 39.220875, 29.360537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.239880, 39.620575, 29.355236>,  <39.231144, 39.860394, 29.352055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.239880, 39.620575, 29.355236>,  <39.254440, 39.220875, 29.360537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239880, 39.620575, 29.355236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175696, 0.006656, 0.984422,
		0.983771, 0.038165, 0.175322,
		-0.036404, 0.999249, -0.013253,
		39.228958, 39.920349, 29.351259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531647, 39.334930, 29.997244>,  <39.254440, 39.220875, 29.360537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531647, 39.334930, 29.997244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.371059, 39.690304, 29.908239>,  <39.274708, 39.903526, 29.854837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.371059, 39.690304, 29.908239>,  <39.531647, 39.334930, 29.997244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371059, 39.690304, 29.908239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331937, 0.085289, 0.939438,
		0.853605, 0.451015, 0.260662,
		-0.401469, 0.888432, -0.222511,
		39.250618, 39.956833, 29.841486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848835, 39.866325, 30.579615>,  <39.531647, 39.334930, 29.997244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848835, 39.866325, 30.579615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.500957, 39.997696, 30.432230>,  <39.292229, 40.076519, 30.343800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.500957, 39.997696, 30.432230>,  <39.848835, 39.866325, 30.579615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500957, 39.997696, 30.432230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283846, 0.277929, 0.917707,
		0.403803, 0.902714, -0.148492,
		-0.869698, 0.328424, -0.368461,
		39.240047, 40.096222, 30.321692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.063183, 41.219822, 22.831060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670010, 41.175140, 22.772585>,  <40.434105, 41.148331, 22.737499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670010, 41.175140, 22.772585>,  <41.063183, 41.219822, 22.831060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670010, 41.175140, 22.772585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168055, 0.221743, 0.960514,
		-0.074875, 0.968686, -0.236730,
		-0.982930, -0.111702, -0.146190,
		40.375130, 41.141628, 22.728727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815899, 41.735630, 23.161936>,  <41.063183, 41.219822, 22.831060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815899, 41.735630, 23.161936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505573, 41.485363, 23.129299>,  <40.319378, 41.335205, 23.109716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505573, 41.485363, 23.129299>,  <40.815899, 41.735630, 23.161936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505573, 41.485363, 23.129299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159264, 0.069057, 0.984818,
		-0.610531, 0.777030, -0.153222,
		-0.775814, -0.625664, -0.081592,
		40.272831, 41.297665, 23.104822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401684, 42.076370, 23.594692>,  <40.815899, 41.735630, 23.161936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401684, 42.076370, 23.594692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275902, 41.699001, 23.552605>,  <40.200432, 41.472580, 23.527353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275902, 41.699001, 23.552605>,  <40.401684, 42.076370, 23.594692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275902, 41.699001, 23.552605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043793, -0.096305, 0.994388,
		-0.948261, 0.317301, -0.011031,
		-0.314458, -0.943422, -0.105217,
		40.181564, 41.415974, 23.521040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863922, 41.978455, 24.129471>,  <40.401684, 42.076370, 23.594692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863922, 41.978455, 24.129471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983452, 41.610409, 24.028202>,  <40.055172, 41.389584, 23.967442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983452, 41.610409, 24.028202>,  <39.863922, 41.978455, 24.129471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983452, 41.610409, 24.028202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209305, -0.195641, 0.958079,
		-0.931071, -0.339291, 0.134121,
		0.298829, -0.920112, -0.253171,
		40.073101, 41.334373, 23.952251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545383, 41.548847, 24.561605>,  <39.863922, 41.978455, 24.129471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545383, 41.548847, 24.561605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818386, 41.294785, 24.416958>,  <39.982185, 41.142349, 24.330170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818386, 41.294785, 24.416958>,  <39.545383, 41.548847, 24.561605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818386, 41.294785, 24.416958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160519, -0.352429, 0.921969,
		-0.713037, -0.687295, -0.138580,
		0.682504, -0.635154, -0.361619,
		40.023136, 41.104237, 24.308472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386421, 40.992317, 24.962524>,  <39.545383, 41.548847, 24.561605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386421, 40.992317, 24.962524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755493, 40.948421, 24.814674>,  <39.976936, 40.922085, 24.725964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755493, 40.948421, 24.814674>,  <39.386421, 40.992317, 24.962524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755493, 40.948421, 24.814674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319521, -0.318935, 0.892293,
		-0.215810, -0.941401, -0.259208,
		0.922677, -0.109743, -0.369627,
		40.032295, 40.915497, 24.703787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477009, 40.369045, 25.125687>,  <39.386421, 40.992317, 24.962524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477009, 40.369045, 25.125687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841480, 40.527035, 25.078785>,  <40.060162, 40.621826, 25.050644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841480, 40.527035, 25.078785>,  <39.477009, 40.369045, 25.125687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.841480, 40.527035, 25.078785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230401, -0.252542, 0.939754,
		0.341565, -0.883300, -0.321113,
		0.911180, 0.394972, -0.117254,
		40.114834, 40.645527, 25.043610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999107, 39.800838, 25.268671>,  <39.477009, 40.369045, 25.125687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999107, 39.800838, 25.268671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159691, 40.163712, 25.319029>,  <40.256042, 40.381435, 25.349243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159691, 40.163712, 25.319029>,  <39.999107, 39.800838, 25.268671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159691, 40.163712, 25.319029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324135, -0.269292, 0.906873,
		0.856601, -0.323268, -0.402160,
		0.401461, 0.907182, 0.125893,
		40.280128, 40.435867, 25.356796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714928, 39.560715, 25.490992>,  <39.999107, 39.800838, 25.268671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714928, 39.560715, 25.490992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646759, 39.935371, 25.613409>,  <40.605858, 40.160164, 25.686859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646759, 39.935371, 25.613409>,  <40.714928, 39.560715, 25.490992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646759, 39.935371, 25.613409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372815, -0.226211, 0.899909,
		0.912122, 0.267461, -0.310643,
		-0.170420, 0.936639, 0.306046,
		40.595634, 40.216362, 25.705223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399242, 39.225750, 25.360817>,  <40.714928, 39.560715, 25.490992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399242, 39.225750, 25.360817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516888, 38.844311, 25.335079>,  <41.587475, 38.615448, 25.319635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516888, 38.844311, 25.335079>,  <41.399242, 39.225750, 25.360817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.516888, 38.844311, 25.335079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129246, 0.027023, -0.991244,
		0.946990, 0.299858, -0.115302,
		0.294117, -0.953601, -0.064346,
		41.605122, 38.558231, 25.315775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765373, 39.108345, 24.773542>,  <41.399242, 39.225750, 25.360817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765373, 39.108345, 24.773542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616421, 38.749737, 24.869534>,  <41.527050, 38.534573, 24.927128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616421, 38.749737, 24.869534>,  <41.765373, 39.108345, 24.773542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.616421, 38.749737, 24.869534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349205, -0.104221, -0.931233,
		0.859876, -0.430575, -0.274258,
		-0.372383, -0.896517, 0.239976,
		41.504707, 38.480782, 24.941526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009476, 38.729588, 24.351273>,  <41.765373, 39.108345, 24.773542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009476, 38.729588, 24.351273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685799, 38.531284, 24.477400>,  <41.491592, 38.412300, 24.553076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685799, 38.531284, 24.477400>,  <42.009476, 38.729588, 24.351273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685799, 38.531284, 24.477400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214685, -0.250074, -0.944126,
		0.546913, -0.831676, 0.095927,
		-0.809195, -0.495760, 0.315317,
		41.443039, 38.382557, 24.571995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.160706, 38.060898, 24.082039>,  <42.009476, 38.729588, 24.351273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.160706, 38.060898, 24.082039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766392, 38.074902, 24.147766>,  <41.529804, 38.083305, 24.187202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766392, 38.074902, 24.147766>,  <42.160706, 38.060898, 24.082039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766392, 38.074902, 24.147766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164991, -0.386203, -0.907538,
		0.031686, -0.921749, 0.386491,
		-0.985786, 0.035012, 0.164318,
		41.470657, 38.085403, 24.197062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917805, 37.429012, 23.857765>,  <42.160706, 38.060898, 24.082039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917805, 37.429012, 23.857765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581947, 37.643867, 23.889967>,  <41.380432, 37.772781, 23.909288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581947, 37.643867, 23.889967>,  <41.917805, 37.429012, 23.857765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581947, 37.643867, 23.889967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261098, -0.269205, -0.927015,
		-0.476265, -0.799380, 0.366283,
		-0.839642, 0.537141, 0.080503,
		41.330055, 37.805008, 23.914118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501888, 37.015759, 23.483343>,  <41.917805, 37.429012, 23.857765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501888, 37.015759, 23.483343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256390, 37.329502, 23.519352>,  <41.109093, 37.517746, 23.540958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.256390, 37.329502, 23.519352>,  <41.501888, 37.015759, 23.483343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256390, 37.329502, 23.519352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372332, -0.187007, -0.909064,
		-0.696194, -0.591451, 0.406815,
		-0.613744, 0.784356, 0.090023,
		41.072266, 37.564808, 23.546358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776917, 36.832832, 23.343676>,  <41.501888, 37.015759, 23.483343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776917, 36.832832, 23.343676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818466, 37.217457, 23.242008>,  <40.843395, 37.448231, 23.181007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818466, 37.217457, 23.242008>,  <40.776917, 36.832832, 23.343676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818466, 37.217457, 23.242008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508638, -0.168245, -0.844382,
		-0.854691, 0.216990, 0.471613,
		0.103876, 0.961566, -0.254167,
		40.849628, 37.505928, 23.165758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183067, 36.958065, 23.075125>,  <40.776917, 36.832832, 23.343676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183067, 36.958065, 23.075125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388023, 37.277435, 22.948652>,  <40.510998, 37.469059, 22.872768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388023, 37.277435, 22.948652>,  <40.183067, 36.958065, 23.075125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388023, 37.277435, 22.948652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601690, 0.071088, -0.795560,
		-0.612723, 0.597876, 0.516832,
		0.512387, 0.798430, -0.316179,
		40.541740, 37.516964, 22.853798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686588, 37.538151, 22.966103>,  <40.183067, 36.958065, 23.075125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686588, 37.538151, 22.966103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008511, 37.627739, 22.746239>,  <40.201664, 37.681492, 22.614321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008511, 37.627739, 22.746239>,  <39.686588, 37.538151, 22.966103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008511, 37.627739, 22.746239> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560861, -0.016075, -0.827754,
		-0.194230, 0.974463, 0.112680,
		0.804804, 0.223973, -0.549661,
		40.249950, 37.694931, 22.581341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405972, 37.945545, 22.476147>,  <39.686588, 37.538151, 22.966103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405972, 37.945545, 22.476147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755089, 37.827091, 22.320951>,  <39.964561, 37.756020, 22.227835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755089, 37.827091, 22.320951>,  <39.405972, 37.945545, 22.476147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755089, 37.827091, 22.320951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443122, -0.147500, -0.884244,
		0.204626, 0.943689, -0.259960,
		0.872795, -0.296133, -0.387987,
		40.016926, 37.738251, 22.204556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500931, 38.335838, 21.803703>,  <39.405972, 37.945545, 22.476147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500931, 38.335838, 21.803703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751068, 38.024326, 21.783911>,  <39.901150, 37.837421, 21.772036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751068, 38.024326, 21.783911>,  <39.500931, 38.335838, 21.803703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751068, 38.024326, 21.783911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217270, -0.112862, -0.969565,
		0.749491, 0.617063, -0.239783,
		0.625345, -0.778778, -0.049480,
		39.938671, 37.790691, 21.769066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945778, 38.500088, 21.151518>,  <39.500931, 38.335838, 21.803703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945778, 38.500088, 21.151518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972973, 38.110966, 21.240088>,  <39.989292, 37.877491, 21.293230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.972973, 38.110966, 21.240088>,  <39.945778, 38.500088, 21.151518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972973, 38.110966, 21.240088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240676, -0.231377, -0.942624,
		0.968221, 0.010796, -0.249862,
		0.067989, -0.972804, 0.221426,
		39.993370, 37.819126, 21.306515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504406, 38.179222, 20.726257>,  <39.945778, 38.500088, 21.151518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504406, 38.179222, 20.726257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256149, 37.881290, 20.824263>,  <40.107193, 37.702530, 20.883066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256149, 37.881290, 20.824263>,  <40.504406, 38.179222, 20.726257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.256149, 37.881290, 20.824263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200796, -0.151082, -0.967913,
		0.757946, -0.649927, -0.055790,
		-0.620644, -0.744829, 0.245014,
		40.069958, 37.657841, 20.897766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801697, 37.543392, 20.357086>,  <40.504406, 38.179222, 20.726257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801697, 37.543392, 20.357086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416866, 37.496708, 20.455706>,  <40.185966, 37.468697, 20.514877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416866, 37.496708, 20.455706>,  <40.801697, 37.543392, 20.357086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416866, 37.496708, 20.455706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227410, -0.155983, -0.961225,
		0.150640, -0.980841, 0.123527,
		-0.962077, -0.116708, 0.246550,
		40.128242, 37.461697, 20.529671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.173092, 40.246544, 21.338701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.544399, 40.371441, 21.257887>,  <33.767185, 40.446381, 21.209398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.544399, 40.371441, 21.257887>,  <33.173092, 40.246544, 21.338701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544399, 40.371441, 21.257887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301996, -0.315792, 0.899485,
		0.217059, -0.895979, -0.387437,
		0.928269, 0.312246, -0.202037,
		33.822880, 40.465115, 21.197275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695969, 39.747150, 21.624052>,  <33.173092, 40.246544, 21.338701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695969, 39.747150, 21.624052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.929203, 40.069832, 21.585600>,  <34.069145, 40.263439, 21.562529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.929203, 40.069832, 21.585600>,  <33.695969, 39.747150, 21.624052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929203, 40.069832, 21.585600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466214, -0.235356, 0.852790,
		0.665324, -0.542067, -0.513329,
		0.583085, 0.806703, -0.096132,
		34.104130, 40.311844, 21.556761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398743, 39.554798, 21.858679>,  <33.695969, 39.747150, 21.624052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398743, 39.554798, 21.858679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.375751, 39.951866, 21.901218>,  <34.361958, 40.190105, 21.926743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.375751, 39.951866, 21.901218>,  <34.398743, 39.554798, 21.858679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375751, 39.951866, 21.901218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540277, -0.058649, 0.839441,
		0.839522, 0.105710, -0.532943,
		-0.057481, 0.992666, 0.106350,
		34.358505, 40.249664, 21.933123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063862, 39.779480, 22.172613>,  <34.398743, 39.554798, 21.858679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063862, 39.779480, 22.172613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.802132, 40.076164, 22.231569>,  <34.645096, 40.254173, 22.266943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.802132, 40.076164, 22.231569>,  <35.063862, 39.779480, 22.172613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802132, 40.076164, 22.231569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526857, 0.307307, 0.792454,
		0.542478, 0.596176, -0.591854,
		-0.654323, 0.741712, 0.147392,
		34.605835, 40.298679, 22.275787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411148, 40.179653, 22.610065>,  <35.063862, 39.779480, 22.172613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411148, 40.179653, 22.610065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.053055, 40.354057, 22.646851>,  <34.838200, 40.458698, 22.668921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.053055, 40.354057, 22.646851>,  <35.411148, 40.179653, 22.610065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053055, 40.354057, 22.646851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292559, 0.419441, 0.859348,
		0.336112, 0.796219, -0.503055,
		-0.895231, 0.436011, 0.091962,
		34.784485, 40.484859, 22.674438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629108, 40.769787, 22.762131>,  <35.411148, 40.179653, 22.610065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629108, 40.769787, 22.762131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.252460, 40.724796, 22.889069>,  <35.026474, 40.697800, 22.965231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.252460, 40.724796, 22.889069>,  <35.629108, 40.769787, 22.762131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252460, 40.724796, 22.889069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319525, -0.001436, 0.947577,
		-0.106126, 0.993653, 0.037292,
		-0.941616, -0.112478, 0.317345,
		34.969975, 40.691051, 22.984272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422749, 41.299259, 23.213823>,  <35.629108, 40.769787, 22.762131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422749, 41.299259, 23.213823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.171124, 41.001640, 23.303867>,  <35.020149, 40.823071, 23.357893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.171124, 41.001640, 23.303867>,  <35.422749, 41.299259, 23.213823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171124, 41.001640, 23.303867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088661, 0.219023, 0.971683,
		-0.772279, 0.631212, -0.071813,
		-0.629067, -0.744043, 0.225110,
		34.982403, 40.778427, 23.371401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898434, 41.541935, 23.672626>,  <35.422749, 41.299259, 23.213823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898434, 41.541935, 23.672626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.937080, 41.145916, 23.713543>,  <34.960266, 40.908302, 23.738092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.937080, 41.145916, 23.713543>,  <34.898434, 41.541935, 23.672626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937080, 41.145916, 23.713543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076829, 0.109882, 0.990971,
		-0.992352, -0.087882, 0.086681,
		0.096613, -0.990052, 0.102289,
		34.966064, 40.848900, 23.744230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690567, 41.416832, 24.389093>,  <34.898434, 41.541935, 23.672626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690567, 41.416832, 24.389093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.850082, 41.061638, 24.297482>,  <34.945793, 40.848522, 24.242516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.850082, 41.061638, 24.297482>,  <34.690567, 41.416832, 24.389093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850082, 41.061638, 24.297482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074927, -0.217360, 0.973211,
		-0.913976, -0.405268, -0.020147,
		0.398791, -0.887982, -0.229028,
		34.969719, 40.795242, 24.228773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313026, 40.960300, 24.736412>,  <34.690567, 41.416832, 24.389093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313026, 40.960300, 24.736412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.656010, 40.772533, 24.652117>,  <34.861801, 40.659874, 24.601540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.656010, 40.772533, 24.652117>,  <34.313026, 40.960300, 24.736412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656010, 40.772533, 24.652117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016581, -0.434548, 0.900496,
		-0.514284, -0.768645, -0.380391,
		0.857460, -0.469417, -0.210736,
		34.913246, 40.631710, 24.588896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206482, 40.282112, 24.921034>,  <34.313026, 40.960300, 24.736412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206482, 40.282112, 24.921034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.605976, 40.263142, 24.914301>,  <34.845673, 40.251759, 24.910261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.605976, 40.263142, 24.914301>,  <34.206482, 40.282112, 24.921034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605976, 40.263142, 24.914301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017877, -0.646979, 0.762299,
		-0.047042, -0.761032, -0.647007,
		0.998733, -0.047427, -0.016830,
		34.905598, 40.248913, 24.909252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440727, 39.640526, 25.047804>,  <34.206482, 40.282112, 24.921034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440727, 39.640526, 25.047804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.768200, 39.843853, 25.154669>,  <34.964684, 39.965851, 25.218788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.768200, 39.843853, 25.154669>,  <34.440727, 39.640526, 25.047804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768200, 39.843853, 25.154669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095212, -0.578947, 0.809787,
		0.566304, -0.637519, -0.522370,
		0.818679, 0.508321, 0.267161,
		35.013805, 39.996349, 25.234818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846283, 39.178528, 25.305050>,  <34.440727, 39.640526, 25.047804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846283, 39.178528, 25.305050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.966141, 39.532379, 25.447958>,  <35.038055, 39.744690, 25.533703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.966141, 39.532379, 25.447958>,  <34.846283, 39.178528, 25.305050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966141, 39.532379, 25.447958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023351, -0.367565, 0.929705,
		0.953765, -0.286924, -0.089482,
		0.299645, 0.884630, 0.357270,
		35.056034, 39.797768, 25.555140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235474, 39.029140, 25.845972>,  <34.846283, 39.178528, 25.305050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235474, 39.029140, 25.845972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126087, 39.401367, 25.943348>,  <35.060455, 39.624702, 26.001774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.126087, 39.401367, 25.943348>,  <35.235474, 39.029140, 25.845972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126087, 39.401367, 25.943348> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077209, -0.231034, 0.969877,
		0.958778, 0.284026, -0.008667,
		-0.273468, 0.930566, 0.243439,
		35.044048, 39.680538, 26.016380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854828, 38.534157, 25.854389>,  <35.235474, 39.029140, 25.845972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854828, 38.534157, 25.854389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.876995, 38.138474, 25.908646>,  <35.890293, 37.901062, 25.941200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.876995, 38.138474, 25.908646>,  <35.854828, 38.534157, 25.854389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876995, 38.138474, 25.908646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387874, -0.146508, -0.909994,
		0.920045, -0.002186, -0.391806,
		0.055414, -0.989207, 0.135642,
		35.893620, 37.841713, 25.949339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266560, 38.167969, 25.257761>,  <35.854828, 38.534157, 25.854389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266560, 38.167969, 25.257761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.026798, 37.902130, 25.436209>,  <35.882942, 37.742626, 25.543278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.026798, 37.902130, 25.436209>,  <36.266560, 38.167969, 25.257761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026798, 37.902130, 25.436209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175193, -0.434898, -0.883273,
		0.781037, -0.607597, 0.144248,
		-0.599407, -0.664598, 0.446118,
		35.846977, 37.702751, 25.570044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634941, 37.493607, 25.055805>,  <36.266560, 38.167969, 25.257761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634941, 37.493607, 25.055805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.249645, 37.432499, 25.144190>,  <36.018467, 37.395836, 25.197220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.249645, 37.432499, 25.144190>,  <36.634941, 37.493607, 25.055805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249645, 37.432499, 25.144190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130385, -0.453275, -0.881783,
		0.234865, -0.878182, 0.416696,
		-0.963244, -0.152769, 0.220961,
		35.960670, 37.386669, 25.210478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484100, 36.708279, 24.947018>,  <36.634941, 37.493607, 25.055805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484100, 36.708279, 24.947018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.153694, 36.931900, 24.918291>,  <35.955452, 37.066074, 24.901056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.153694, 36.931900, 24.918291>,  <36.484100, 36.708279, 24.947018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153694, 36.931900, 24.918291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108868, -0.283256, -0.952845,
		-0.553032, -0.779248, 0.294837,
		-0.826017, 0.559052, -0.071814,
		35.905888, 37.099617, 24.896748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190521, 36.369804, 24.430866>,  <36.484100, 36.708279, 24.947018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190521, 36.369804, 24.430866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.966084, 36.700279, 24.451233>,  <35.831421, 36.898563, 24.463453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.966084, 36.700279, 24.451233>,  <36.190521, 36.369804, 24.430866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966084, 36.700279, 24.451233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198065, -0.074280, -0.977370,
		-0.803709, -0.558477, 0.205317,
		-0.561090, 0.826187, 0.050915,
		35.797756, 36.948135, 24.466507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619682, 36.142326, 24.108276>,  <36.190521, 36.369804, 24.430866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619682, 36.142326, 24.108276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.597607, 36.541561, 24.097178>,  <35.584362, 36.781101, 24.090519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.597607, 36.541561, 24.097178>,  <35.619682, 36.142326, 24.108276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597607, 36.541561, 24.097178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253638, -0.040892, -0.966435,
		-0.965724, -0.046297, 0.255410,
		-0.055188, 0.998090, -0.027748,
		35.581051, 36.840988, 24.088854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850857, 36.383072, 23.874493>,  <35.619682, 36.142326, 24.108276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850857, 36.383072, 23.874493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.116196, 36.667671, 23.781765>,  <35.275398, 36.838428, 23.726128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.116196, 36.667671, 23.781765>,  <34.850857, 36.383072, 23.874493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116196, 36.667671, 23.781765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406659, 0.082702, -0.909829,
		-0.628168, 0.697806, 0.344197,
		0.663350, 0.711497, -0.231819,
		35.315201, 36.881119, 23.712219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492168, 36.748421, 23.380108>,  <34.850857, 36.383072, 23.874493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492168, 36.748421, 23.380108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.859543, 36.904175, 23.352243>,  <35.079967, 36.997627, 23.335524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.859543, 36.904175, 23.352243>,  <34.492168, 36.748421, 23.380108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859543, 36.904175, 23.352243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220449, 0.357615, -0.907477,
		-0.328446, 0.848817, 0.414286,
		0.918437, 0.389386, -0.069663,
		35.135075, 37.020992, 23.331345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365078, 37.450581, 23.112795>,  <34.492168, 36.748421, 23.380108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365078, 37.450581, 23.112795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.746960, 37.362022, 23.033268>,  <34.976089, 37.308887, 22.985552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.746960, 37.362022, 23.033268>,  <34.365078, 37.450581, 23.112795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746960, 37.362022, 23.033268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096620, 0.401306, -0.910834,
		0.281438, 0.888785, 0.361737,
		0.954703, -0.221392, -0.198817,
		35.033371, 37.295605, 22.973623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765923, 38.069981, 22.980255>,  <34.365078, 37.450581, 23.112795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765923, 38.069981, 22.980255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.940372, 37.773010, 22.776844>,  <35.045044, 37.594830, 22.654799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.940372, 37.773010, 22.776844>,  <34.765923, 38.069981, 22.980255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940372, 37.773010, 22.776844> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164793, 0.489654, -0.856202,
		0.884667, 0.457214, 0.091206,
		0.436127, -0.742424, -0.508526,
		35.071209, 37.550282, 22.624287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996967, 38.409145, 22.411596>,  <34.765923, 38.069981, 22.980255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996967, 38.409145, 22.411596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.019871, 38.024765, 22.303305>,  <35.033611, 37.794136, 22.238329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.019871, 38.024765, 22.303305>,  <34.996967, 38.409145, 22.411596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019871, 38.024765, 22.303305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120746, 0.262518, -0.957342,
		0.991031, 0.087504, -0.101000,
		0.057257, -0.960951, -0.270729,
		35.037048, 37.736481, 22.222086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518116, 38.379623, 21.960913>,  <34.996967, 38.409145, 22.411596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518116, 38.379623, 21.960913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.315598, 38.043018, 21.885529>,  <35.194084, 37.841057, 21.840298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.315598, 38.043018, 21.885529>,  <35.518116, 38.379623, 21.960913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315598, 38.043018, 21.885529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048926, 0.190161, -0.980533,
		0.860969, -0.505663, -0.055106,
		-0.506299, -0.841513, -0.188463,
		35.163708, 37.790565, 21.828989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778175, 38.251480, 21.275599>,  <35.518116, 38.379623, 21.960913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778175, 38.251480, 21.275599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.441746, 38.042843, 21.332912>,  <35.239887, 37.917660, 21.367302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.441746, 38.042843, 21.332912>,  <35.778175, 38.251480, 21.275599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441746, 38.042843, 21.332912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101975, -0.107248, -0.988989,
		0.531214, -0.846429, 0.037014,
		-0.841078, -0.521591, 0.143286,
		35.189423, 37.886364, 21.375898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853405, 37.662544, 20.922853>,  <35.778175, 38.251480, 21.275599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853405, 37.662544, 20.922853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.456886, 37.714378, 20.932215>,  <35.218975, 37.745480, 20.937832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.456886, 37.714378, 20.932215>,  <35.853405, 37.662544, 20.922853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456886, 37.714378, 20.932215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041088, -0.135544, -0.989919,
		-0.125085, -0.982263, 0.139687,
		-0.991295, 0.129564, 0.023405,
		35.159500, 37.753254, 20.939236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136963, 37.048580, 21.058922>,  <35.853405, 37.662544, 20.922853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136963, 37.048580, 21.058922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.473045, 36.859474, 20.952675>,  <36.674694, 36.746010, 20.888927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.473045, 36.859474, 20.952675>,  <36.136963, 37.048580, 21.058922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473045, 36.859474, 20.952675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258837, -0.080780, 0.962537,
		-0.476512, -0.877477, 0.054498,
		0.840202, -0.472767, -0.265617,
		36.725105, 36.717644, 20.872990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242004, 36.491787, 21.528847>,  <36.136963, 37.048580, 21.058922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242004, 36.491787, 21.528847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.603096, 36.550205, 21.366982>,  <36.819752, 36.585255, 21.269861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.603096, 36.550205, 21.366982>,  <36.242004, 36.491787, 21.528847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603096, 36.550205, 21.366982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417074, -0.066411, 0.906443,
		0.105509, -0.987046, -0.120864,
		0.902728, 0.146047, -0.404665,
		36.873913, 36.594017, 21.245583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624332, 35.964939, 21.791117>,  <36.242004, 36.491787, 21.528847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624332, 35.964939, 21.791117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890873, 36.243130, 21.683565>,  <37.050797, 36.410042, 21.619034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.890873, 36.243130, 21.683565>,  <36.624332, 35.964939, 21.791117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890873, 36.243130, 21.683565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529773, -0.187825, 0.827080,
		0.524711, -0.693568, -0.493600,
		0.666347, 0.695475, -0.268880,
		37.090778, 36.451771, 21.602901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366768, 35.698162, 21.909491>,  <36.624332, 35.964939, 21.791117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366768, 35.698162, 21.909491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.371555, 36.098007, 21.919554>,  <37.374428, 36.337914, 21.925592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.371555, 36.098007, 21.919554>,  <37.366768, 35.698162, 21.909491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371555, 36.098007, 21.919554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491433, -0.027792, 0.870472,
		0.870833, 0.001945, -0.491575,
		0.011968, 0.999612, 0.025158,
		37.375145, 36.397892, 21.927101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063282, 35.726997, 22.189465>,  <37.366768, 35.698162, 21.909491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063282, 35.726997, 22.189465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925198, 36.102043, 22.206005>,  <37.842346, 36.327072, 22.215929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925198, 36.102043, 22.206005>,  <38.063282, 35.726997, 22.189465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925198, 36.102043, 22.206005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460086, 0.130663, 0.878207,
		0.818016, 0.322193, -0.476489,
		-0.345212, 0.937613, 0.041352,
		37.821632, 36.383327, 22.218410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619724, 36.133366, 22.375235>,  <38.063282, 35.726997, 22.189465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619724, 36.133366, 22.375235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.284554, 36.316818, 22.493572>,  <38.083450, 36.426891, 22.564575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.284554, 36.316818, 22.493572>,  <38.619724, 36.133366, 22.375235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284554, 36.316818, 22.493572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417355, 0.189160, 0.888838,
		0.351690, 0.868258, -0.349917,
		-0.837931, 0.458635, 0.295846,
		38.033173, 36.454411, 22.582327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815266, 36.810261, 22.625717>,  <38.619724, 36.133366, 22.375235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815266, 36.810261, 22.625717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458660, 36.705360, 22.773457>,  <38.244698, 36.642418, 22.862101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.458660, 36.705360, 22.773457>,  <38.815266, 36.810261, 22.625717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458660, 36.705360, 22.773457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357589, 0.093094, 0.929228,
		-0.278077, 0.960498, 0.010784,
		-0.891518, -0.262253, 0.369351,
		38.191204, 36.626686, 22.884262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679585, 37.330124, 23.150061>,  <38.815266, 36.810261, 22.625717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679585, 37.330124, 23.150061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.467842, 36.995975, 23.209297>,  <38.340797, 36.795486, 23.244839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.467842, 36.995975, 23.209297>,  <38.679585, 37.330124, 23.150061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467842, 36.995975, 23.209297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427289, -0.111710, 0.897187,
		-0.732945, 0.538209, 0.416081,
		-0.529355, -0.835375, 0.148093,
		38.309036, 36.745361, 23.253725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455029, 37.258266, 23.767843>,  <38.679585, 37.330124, 23.150061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455029, 37.258266, 23.767843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.474228, 36.866982, 23.687050>,  <38.485748, 36.632210, 23.638573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.474228, 36.866982, 23.687050>,  <38.455029, 37.258266, 23.767843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474228, 36.866982, 23.687050> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477010, -0.155218, 0.865083,
		-0.877586, -0.137874, 0.459166,
		0.048002, -0.978211, -0.201985,
		38.488628, 36.573517, 23.626455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253494, 36.878544, 24.381733>,  <38.455029, 37.258266, 23.767843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253494, 36.878544, 24.381733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.455231, 36.612495, 24.161461>,  <38.576271, 36.452866, 24.029299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.455231, 36.612495, 24.161461>,  <38.253494, 36.878544, 24.381733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455231, 36.612495, 24.161461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432512, -0.357383, 0.827775,
		-0.747377, -0.655657, 0.107431,
		0.504342, -0.665125, -0.550679,
		38.606533, 36.412956, 23.996258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167034, 36.162022, 24.625111>,  <38.253494, 36.878544, 24.381733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167034, 36.162022, 24.625111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503304, 36.128117, 24.411163>,  <38.705067, 36.107773, 24.282795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503304, 36.128117, 24.411163>,  <38.167034, 36.162022, 24.625111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503304, 36.128117, 24.411163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460100, -0.409123, 0.787989,
		-0.285617, -0.908534, -0.304941,
		0.840673, -0.084760, -0.534869,
		38.755505, 36.102688, 24.250702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489578, 35.579433, 24.829544>,  <38.167034, 36.162022, 24.625111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489578, 35.579433, 24.829544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.792522, 35.790024, 24.675026>,  <38.974289, 35.916378, 24.582315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.792522, 35.790024, 24.675026>,  <38.489578, 35.579433, 24.829544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792522, 35.790024, 24.675026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535314, -0.161802, 0.829011,
		0.373950, -0.834653, -0.404372,
		0.757364, 0.526474, -0.386295,
		39.019733, 35.947968, 24.559137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023449, 35.217812, 25.052603>,  <38.489578, 35.579433, 24.829544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023449, 35.217812, 25.052603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.190350, 35.570335, 24.963881>,  <39.290489, 35.781849, 24.910648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.190350, 35.570335, 24.963881>,  <39.023449, 35.217812, 25.052603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190350, 35.570335, 24.963881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384769, 0.049796, 0.921669,
		0.823320, -0.469909, -0.318323,
		0.417249, 0.881309, -0.221804,
		39.315525, 35.834728, 24.897339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704781, 35.167179, 25.246580>,  <39.023449, 35.217812, 25.052603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704781, 35.167179, 25.246580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.647850, 35.562668, 25.227919>,  <39.613693, 35.799961, 25.216722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.647850, 35.562668, 25.227919>,  <39.704781, 35.167179, 25.246580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647850, 35.562668, 25.227919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452473, 0.106905, 0.885347,
		0.880348, 0.104896, -0.462584,
		-0.142322, 0.988720, -0.046651,
		39.605152, 35.859283, 25.213923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.693970, 36.816818, 20.221777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.324020, 36.967823, 20.240053>,  <40.102051, 37.058426, 20.251019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.324020, 36.967823, 20.240053>,  <40.693970, 36.816818, 20.221777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324020, 36.967823, 20.240053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163998, -0.287579, -0.943612,
		-0.343089, -0.880216, 0.327886,
		-0.924876, 0.377516, 0.045688,
		40.046558, 37.081078, 20.253759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157299, 36.341759, 20.052305>,  <40.693970, 36.816818, 20.221777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157299, 36.341759, 20.052305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.945644, 36.672787, 19.977322>,  <39.818653, 36.871403, 19.932331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.945644, 36.672787, 19.977322>,  <40.157299, 36.341759, 20.052305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945644, 36.672787, 19.977322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267959, -0.372583, -0.888471,
		-0.805117, -0.419891, 0.418902,
		-0.529136, 0.827571, -0.187459,
		39.786903, 36.921059, 19.921083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544987, 36.154972, 19.560656>,  <40.157299, 36.341759, 20.052305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544987, 36.154972, 19.560656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.560108, 36.553246, 19.526733>,  <39.569180, 36.792210, 19.506380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.560108, 36.553246, 19.526733>,  <39.544987, 36.154972, 19.560656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560108, 36.553246, 19.526733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384932, -0.063810, -0.920737,
		-0.922171, 0.067450, 0.380857,
		0.037801, 0.995680, -0.084807,
		39.571449, 36.851948, 19.501291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805164, 36.416023, 19.362823>,  <39.544987, 36.154972, 19.560656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805164, 36.416023, 19.362823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.079960, 36.674885, 19.230616>,  <39.244839, 36.830200, 19.151291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.079960, 36.674885, 19.230616>,  <38.805164, 36.416023, 19.362823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079960, 36.674885, 19.230616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437972, 0.005801, -0.898970,
		-0.579850, 0.762341, 0.287419,
		0.686989, 0.647150, -0.330520,
		39.286057, 36.869030, 19.131460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412617, 36.855953, 18.885347>,  <38.805164, 36.416023, 19.362823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412617, 36.855953, 18.885347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.798756, 36.902233, 18.791777>,  <39.030437, 36.930000, 18.735634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.798756, 36.902233, 18.791777>,  <38.412617, 36.855953, 18.885347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798756, 36.902233, 18.791777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255430, 0.235082, -0.937812,
		-0.053516, 0.965064, 0.256489,
		0.965345, 0.115703, -0.233926,
		39.088360, 36.936943, 18.721600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489250, 37.558388, 18.596622>,  <38.412617, 36.855953, 18.885347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489250, 37.558388, 18.596622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.780212, 37.315105, 18.469522>,  <38.954788, 37.169136, 18.393263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.780212, 37.315105, 18.469522>,  <38.489250, 37.558388, 18.596622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780212, 37.315105, 18.469522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222448, 0.229044, -0.947658,
		0.649154, 0.760012, 0.031312,
		0.727404, -0.608210, -0.317748,
		38.998432, 37.132641, 18.374197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856861, 37.869686, 18.094807>,  <38.489250, 37.558388, 18.596622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856861, 37.869686, 18.094807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.005600, 37.506577, 18.017160>,  <39.094845, 37.288712, 17.970572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.005600, 37.506577, 18.017160>,  <38.856861, 37.869686, 18.094807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005600, 37.506577, 18.017160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105482, 0.166438, -0.980394,
		0.922281, 0.385034, -0.033864,
		0.371849, -0.907770, -0.194117,
		39.117153, 37.234245, 17.958925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309383, 37.977776, 17.669868>,  <38.856861, 37.869686, 18.094807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309383, 37.977776, 17.669868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.290470, 37.583538, 17.604919>,  <39.279121, 37.346996, 17.565950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.290470, 37.583538, 17.604919>,  <39.309383, 37.977776, 17.669868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.290470, 37.583538, 17.604919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061146, 0.159394, -0.985320,
		0.997008, -0.056515, 0.052729,
		-0.047281, -0.985596, -0.162373,
		39.276287, 37.287861, 17.556208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777569, 37.782894, 17.142115>,  <39.309383, 37.977776, 17.669868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777569, 37.782894, 17.142115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.501175, 37.493885, 17.151089>,  <39.335339, 37.320480, 17.156473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.501175, 37.493885, 17.151089>,  <39.777569, 37.782894, 17.142115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501175, 37.493885, 17.151089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155377, 0.118140, -0.980766,
		0.705974, -0.681179, -0.193896,
		-0.690984, -0.722522, 0.022436,
		39.293880, 37.277130, 17.157820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879555, 37.492561, 16.495846>,  <39.777569, 37.782894, 17.142115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879555, 37.492561, 16.495846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.511288, 37.400188, 16.621733>,  <39.290329, 37.344765, 16.697264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.511288, 37.400188, 16.621733>,  <39.879555, 37.492561, 16.495846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511288, 37.400188, 16.621733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350738, 0.135489, -0.926621,
		0.171358, -0.963487, -0.205740,
		-0.920663, -0.230944, 0.314714,
		39.235088, 37.330910, 16.716148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643730, 37.010639, 16.003971>,  <39.879555, 37.492561, 16.495846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643730, 37.010639, 16.003971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.318516, 37.145535, 16.193810>,  <39.123386, 37.226471, 16.307713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.318516, 37.145535, 16.193810>,  <39.643730, 37.010639, 16.003971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318516, 37.145535, 16.193810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449949, 0.153357, -0.879789,
		-0.369484, -0.928843, 0.027057,
		-0.813036, 0.337242, 0.474594,
		39.074604, 37.246708, 16.336187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077164, 36.633492, 15.692669>,  <39.643730, 37.010639, 16.003971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077164, 36.633492, 15.692669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.955402, 36.973446, 15.864732>,  <38.882347, 37.177418, 15.967970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.955402, 36.973446, 15.864732>,  <39.077164, 36.633492, 15.692669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955402, 36.973446, 15.864732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408783, 0.291336, -0.864882,
		-0.860371, -0.439111, 0.258736,
		-0.304400, 0.849885, 0.430158,
		38.864082, 37.228413, 15.993779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386539, 36.714111, 15.526825>,  <39.077164, 36.633492, 15.692669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386539, 36.714111, 15.526825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.494312, 37.086456, 15.625533>,  <38.558975, 37.309864, 15.684758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.494312, 37.086456, 15.625533>,  <38.386539, 36.714111, 15.526825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494312, 37.086456, 15.625533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285835, 0.321997, -0.902561,
		-0.919623, 0.172639, 0.352830,
		0.269428, 0.930867, 0.246770,
		38.575142, 37.365715, 15.699564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877926, 37.104469, 15.323710>,  <38.386539, 36.714111, 15.526825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877926, 37.104469, 15.323710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.189953, 37.354744, 15.322460>,  <38.377167, 37.504910, 15.321710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.189953, 37.354744, 15.322460>,  <37.877926, 37.104469, 15.323710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189953, 37.354744, 15.322460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357856, 0.442038, -0.822521,
		-0.513263, 0.642738, 0.568726,
		0.780065, 0.625691, -0.003126,
		38.423973, 37.542450, 15.321523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238239, 36.631413, 15.420357>,  <37.877926, 37.104469, 15.323710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238239, 36.631413, 15.420357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.879650, 36.455154, 15.438976>,  <36.664497, 36.349400, 15.450148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.879650, 36.455154, 15.438976>,  <37.238239, 36.631413, 15.420357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879650, 36.455154, 15.438976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015290, 0.074226, 0.997124,
		-0.442838, 0.894605, -0.059804,
		-0.896471, -0.440650, 0.046548,
		36.610710, 36.322960, 15.452941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856983, 36.928066, 15.936773>,  <37.238239, 36.631413, 15.420357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856983, 36.928066, 15.936773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.676571, 36.575306, 15.881907>,  <36.568321, 36.363647, 15.848988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.676571, 36.575306, 15.881907>,  <36.856983, 36.928066, 15.936773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676571, 36.575306, 15.881907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130718, -0.086754, 0.987617,
		-0.882882, 0.463379, -0.076152,
		-0.451034, -0.881903, -0.137166,
		36.541260, 36.310734, 15.840757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217781, 36.997051, 16.236704>,  <36.856983, 36.928066, 15.936773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217781, 36.997051, 16.236704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269356, 36.601040, 16.214020>,  <36.300301, 36.363434, 16.200409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269356, 36.601040, 16.214020>,  <36.217781, 36.997051, 16.236704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269356, 36.601040, 16.214020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201973, -0.082208, 0.975935,
		-0.970866, -0.114383, -0.210559,
		0.128940, -0.990029, -0.056710,
		36.308037, 36.304031, 16.197006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591454, 36.658745, 16.594162>,  <36.217781, 36.997051, 16.236704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591454, 36.658745, 16.594162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.882771, 36.384678, 16.598867>,  <36.057560, 36.220238, 16.601690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.882771, 36.384678, 16.598867>,  <35.591454, 36.658745, 16.594162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882771, 36.384678, 16.598867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033535, -0.018487, 0.999267,
		-0.684449, -0.728150, -0.036441,
		0.728289, -0.685169, 0.011766,
		36.101257, 36.179127, 16.602398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411240, 36.225327, 17.113497>,  <35.591454, 36.658745, 16.594162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411240, 36.225327, 17.113497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793797, 36.125050, 17.053549>,  <36.023331, 36.064884, 17.017580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793797, 36.125050, 17.053549>,  <35.411240, 36.225327, 17.113497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793797, 36.125050, 17.053549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114843, -0.149022, 0.982142,
		-0.268548, -0.956528, -0.113734,
		0.956396, -0.250691, -0.149870,
		36.080715, 36.049843, 17.008587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636742, 35.567062, 17.550097>,  <35.411240, 36.225327, 17.113497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636742, 35.567062, 17.550097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.967525, 35.785561, 17.496784>,  <36.165997, 35.916660, 17.464798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.967525, 35.785561, 17.496784>,  <35.636742, 35.567062, 17.550097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967525, 35.785561, 17.496784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214753, -0.087779, 0.972716,
		0.519641, -0.833014, -0.189896,
		0.826955, 0.546244, -0.133278,
		36.215611, 35.949432, 17.456800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134472, 35.259460, 17.899820>,  <35.636742, 35.567062, 17.550097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134472, 35.259460, 17.899820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.323940, 35.607430, 17.844873>,  <36.437622, 35.816212, 17.811905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.323940, 35.607430, 17.844873>,  <36.134472, 35.259460, 17.899820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323940, 35.607430, 17.844873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267103, 0.006731, 0.963645,
		0.839221, -0.493142, -0.229171,
		0.473671, 0.869923, -0.137368,
		36.466042, 35.868408, 17.803663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569073, 35.175774, 18.328341>,  <36.134472, 35.259460, 17.899820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569073, 35.175774, 18.328341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.647236, 35.554562, 18.226307>,  <36.694134, 35.781834, 18.165087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.647236, 35.554562, 18.226307>,  <36.569073, 35.175774, 18.328341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.647236, 35.554562, 18.226307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237648, 0.206627, 0.949120,
		0.951493, -0.246085, -0.184669,
		0.195407, 0.946967, -0.255086,
		36.705856, 35.838654, 18.149780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156963, 35.446877, 18.476797>,  <36.569073, 35.175774, 18.328341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156963, 35.446877, 18.476797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.953987, 35.790283, 18.506330>,  <36.832203, 35.996326, 18.524052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.953987, 35.790283, 18.506330>,  <37.156963, 35.446877, 18.476797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.953987, 35.790283, 18.506330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334789, 0.117473, 0.934942,
		0.793992, 0.499144, -0.347033,
		-0.507438, 0.858519, 0.073836,
		36.801754, 36.047840, 18.528481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677418, 35.864071, 18.953861>,  <37.156963, 35.446877, 18.476797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677418, 35.864071, 18.953861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.317280, 36.038063, 18.958952>,  <37.101196, 36.142460, 18.962006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.317280, 36.038063, 18.958952>,  <37.677418, 35.864071, 18.953861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317280, 36.038063, 18.958952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088728, 0.154867, 0.983943,
		0.426029, 0.887020, -0.178029,
		-0.900348, 0.434985, 0.012726,
		37.047176, 36.168560, 18.962770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772125, 36.549122, 19.228809>,  <37.677418, 35.864071, 18.953861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772125, 36.549122, 19.228809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.390232, 36.438015, 19.271400>,  <37.161098, 36.371353, 19.296955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.390232, 36.438015, 19.271400>,  <37.772125, 36.549122, 19.228809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390232, 36.438015, 19.271400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029153, 0.443587, 0.895757,
		-0.296041, 0.852102, -0.431604,
		-0.954730, -0.277763, 0.106479,
		37.103813, 36.354687, 19.303345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435307, 37.078957, 19.526609>,  <37.772125, 36.549122, 19.228809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435307, 37.078957, 19.526609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.175423, 36.785980, 19.608006>,  <37.019493, 36.610195, 19.656843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.175423, 36.785980, 19.608006>,  <37.435307, 37.078957, 19.526609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175423, 36.785980, 19.608006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129221, 0.370200, 0.919920,
		-0.749120, 0.571385, -0.335169,
		-0.649708, -0.732442, 0.203490,
		36.980511, 36.566246, 19.669052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009308, 37.426914, 19.941088>,  <37.435307, 37.078957, 19.526609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009308, 37.426914, 19.941088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.935471, 37.039494, 20.007814>,  <36.891171, 36.807041, 20.047850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.935471, 37.039494, 20.007814>,  <37.009308, 37.426914, 19.941088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935471, 37.039494, 20.007814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057040, 0.180004, 0.982010,
		-0.981159, 0.171753, -0.088473,
		-0.184589, -0.968555, 0.166816,
		36.880093, 36.748928, 20.057859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362160, 37.380680, 20.481134>,  <37.009308, 37.426914, 19.941088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362160, 37.380680, 20.481134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.565430, 37.036182, 20.479446>,  <36.687393, 36.829483, 20.478434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.565430, 37.036182, 20.479446>,  <36.362160, 37.380680, 20.481134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565430, 37.036182, 20.479446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038165, 0.017625, 0.999116,
		-0.860407, -0.507889, 0.041826,
		0.508177, -0.861242, -0.004219,
		36.717884, 36.777809, 20.478180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604191, 37.264893, 20.379917>,  <36.362160, 37.380680, 20.481134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604191, 37.264893, 20.379917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.276775, 37.477226, 20.467752>,  <35.080326, 37.604626, 20.520452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.276775, 37.477226, 20.467752>,  <35.604191, 37.264893, 20.379917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276775, 37.477226, 20.467752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254218, 0.008060, -0.967113,
		-0.515145, -0.847439, 0.128350,
		-0.818535, 0.530832, 0.219586,
		35.031216, 37.636475, 20.533628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131214, 37.143562, 19.825001>,  <35.604191, 37.264893, 20.379917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131214, 37.143562, 19.825001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944389, 37.460503, 19.981987>,  <34.832294, 37.650669, 20.076180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944389, 37.460503, 19.981987>,  <35.131214, 37.143562, 19.825001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944389, 37.460503, 19.981987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468295, 0.154833, -0.869901,
		-0.750035, -0.590087, 0.298738,
		-0.467062, 0.792354, 0.392465,
		34.804272, 37.698208, 20.099726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444828, 37.073399, 19.492544>,  <35.131214, 37.143562, 19.825001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444828, 37.073399, 19.492544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493011, 37.450188, 19.617872>,  <34.521923, 37.676262, 19.693069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.493011, 37.450188, 19.617872>,  <34.444828, 37.073399, 19.492544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493011, 37.450188, 19.617872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237755, 0.333807, -0.912165,
		-0.963827, 0.035384, 0.264170,
		0.120458, 0.941977, 0.313320,
		34.529148, 37.732780, 19.711868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753025, 37.557140, 19.511805>,  <34.444828, 37.073399, 19.492544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753025, 37.557140, 19.511805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091995, 37.762760, 19.458708>,  <34.295376, 37.886131, 19.426849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091995, 37.762760, 19.458708>,  <33.753025, 37.557140, 19.511805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091995, 37.762760, 19.458708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313516, 0.282756, -0.906508,
		-0.428458, 0.809815, 0.400778,
		0.847426, 0.514051, -0.132741,
		34.346222, 37.916977, 19.418886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523422, 38.192646, 19.206326>,  <33.753025, 37.557140, 19.511805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523422, 38.192646, 19.206326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.915627, 38.180729, 19.128645>,  <34.150948, 38.173580, 19.082037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.915627, 38.180729, 19.128645>,  <33.523422, 38.192646, 19.206326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915627, 38.180729, 19.128645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170065, 0.366277, -0.914833,
		0.098384, 0.930029, 0.354072,
		0.980509, -0.029790, -0.194201,
		34.209778, 38.171791, 19.070385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632843, 38.721722, 18.827250>,  <33.523422, 38.192646, 19.206326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632843, 38.721722, 18.827250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.955959, 38.498466, 18.751410>,  <34.149830, 38.364513, 18.705906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.955959, 38.498466, 18.751410>,  <33.632843, 38.721722, 18.827250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955959, 38.498466, 18.751410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092250, 0.197983, -0.975855,
		0.582201, 0.805780, 0.108441,
		0.807794, -0.558140, -0.189599,
		34.198299, 38.331024, 18.694530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998825, 39.160343, 18.370657>,  <33.632843, 38.721722, 18.827250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998825, 39.160343, 18.370657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.124432, 38.785671, 18.308649>,  <34.199795, 38.560867, 18.271444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.124432, 38.785671, 18.308649>,  <33.998825, 39.160343, 18.370657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124432, 38.785671, 18.308649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041150, 0.149700, -0.987875,
		0.948527, 0.316584, 0.008463,
		0.314012, -0.936677, -0.155022,
		34.218636, 38.504669, 18.262142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530418, 39.700859, 18.388500>,  <33.998825, 39.160343, 18.370657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530418, 39.700859, 18.388500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.251648, 39.986946, 18.409506>,  <34.084385, 40.158596, 18.422110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.251648, 39.986946, 18.409506>,  <34.530418, 39.700859, 18.388500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251648, 39.986946, 18.409506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092255, 0.016792, 0.995594,
		0.711182, 0.698702, -0.077685,
		-0.696928, 0.715215, 0.052516,
		34.042568, 40.201511, 18.425261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766033, 40.231838, 18.856411>,  <34.530418, 39.700859, 18.388500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766033, 40.231838, 18.856411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.367416, 40.263264, 18.845537>,  <34.128246, 40.282120, 18.839012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.367416, 40.263264, 18.845537>,  <34.766033, 40.231838, 18.856411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367416, 40.263264, 18.845537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013234, 0.172936, 0.984844,
		0.082074, 0.981795, -0.171297,
		-0.996538, 0.078563, -0.027187,
		34.068455, 40.286831, 18.837381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713573, 40.863857, 19.160717>,  <34.766033, 40.231838, 18.856411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713573, 40.863857, 19.160717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.364582, 40.671871, 19.197392>,  <34.155186, 40.556679, 19.219397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.364582, 40.671871, 19.197392>,  <34.713573, 40.863857, 19.160717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364582, 40.671871, 19.197392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032944, 0.244986, 0.968967,
		-0.487534, 0.842386, -0.229558,
		-0.872482, -0.479967, 0.091688,
		34.102837, 40.527882, 19.224897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239243, 41.312626, 19.463825>,  <34.713573, 40.863857, 19.160717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239243, 41.312626, 19.463825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.081940, 40.951431, 19.533064>,  <33.987560, 40.734715, 19.574608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.081940, 40.951431, 19.533064>,  <34.239243, 41.312626, 19.463825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081940, 40.951431, 19.533064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119708, 0.236950, 0.964119,
		-0.911604, 0.358421, -0.201276,
		-0.393253, -0.902989, 0.173099,
		33.963963, 40.680534, 19.584993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779579, 41.452782, 19.890488>,  <34.239243, 41.312626, 19.463825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779579, 41.452782, 19.890488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.841515, 41.061325, 19.944571>,  <33.878674, 40.826450, 19.977020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.841515, 41.061325, 19.944571>,  <33.779579, 41.452782, 19.890488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841515, 41.061325, 19.944571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237720, 0.095928, 0.966585,
		-0.958914, -0.181802, -0.217790,
		0.154835, -0.978645, 0.135205,
		33.887966, 40.767731, 19.985132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215805, 41.182072, 20.302813>,  <33.779579, 41.452782, 19.890488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215805, 41.182072, 20.302813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.503883, 40.908470, 20.349220>,  <33.676731, 40.744308, 20.377066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.503883, 40.908470, 20.349220>,  <33.215805, 41.182072, 20.302813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503883, 40.908470, 20.349220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013192, 0.153700, 0.988029,
		-0.693649, -0.713102, 0.101670,
		0.720193, -0.684004, 0.116022,
		33.719940, 40.703270, 20.384027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087791, 40.830116, 20.933430>,  <33.215805, 41.182072, 20.302813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087791, 40.830116, 20.933430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467453, 40.726818, 20.861420>,  <33.695251, 40.664841, 20.818214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467453, 40.726818, 20.861420>,  <33.087791, 40.830116, 20.933430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467453, 40.726818, 20.861420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187472, 0.004290, 0.982261,
		-0.252891, -0.966070, 0.052485,
		0.949158, -0.258244, -0.180026,
		33.752201, 40.649345, 20.807411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.951729, 39.606728, 16.641125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.108585, 39.240204, 16.673651>,  <38.202698, 39.020290, 16.693167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.108585, 39.240204, 16.673651>,  <37.951729, 39.606728, 16.641125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108585, 39.240204, 16.673651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397928, 0.248661, 0.883074,
		-0.829385, -0.313931, 0.462133,
		0.392139, -0.916305, 0.081314,
		38.226227, 38.965313, 16.698046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823425, 39.350155, 17.369593>,  <37.951729, 39.606728, 16.641125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823425, 39.350155, 17.369593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.139336, 39.155525, 17.220198>,  <38.328884, 39.038746, 17.130562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.139336, 39.155525, 17.220198>,  <37.823425, 39.350155, 17.369593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139336, 39.155525, 17.220198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513161, 0.190563, 0.836870,
		-0.336031, -0.852600, 0.400196,
		0.789778, -0.486579, -0.373487,
		38.376270, 39.009552, 17.108152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951004, 38.863091, 17.878605>,  <37.823425, 39.350155, 17.369593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951004, 38.863091, 17.878605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.290215, 38.916199, 17.673382>,  <38.493740, 38.948063, 17.550249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.290215, 38.916199, 17.673382>,  <37.951004, 38.863091, 17.878605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290215, 38.916199, 17.673382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513601, 0.032766, 0.857403,
		0.130651, -0.990605, -0.040406,
		0.848024, 0.132773, -0.513057,
		38.544621, 38.956032, 17.519464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511768, 38.482872, 18.341747>,  <37.951004, 38.863091, 17.878605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511768, 38.482872, 18.341747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.710796, 38.738533, 18.107174>,  <38.830212, 38.891930, 17.966429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.710796, 38.738533, 18.107174>,  <38.511768, 38.482872, 18.341747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710796, 38.738533, 18.107174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533212, 0.307879, 0.787969,
		0.684185, -0.704764, -0.187613,
		0.497570, 0.639154, -0.586435,
		38.860069, 38.930279, 17.931244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305077, 38.418919, 18.446207>,  <38.511768, 38.482872, 18.341747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305077, 38.418919, 18.446207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.211750, 38.780666, 18.303280>,  <39.155754, 38.997715, 18.217524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.211750, 38.780666, 18.303280>,  <39.305077, 38.418919, 18.446207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211750, 38.780666, 18.303280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659766, 0.417166, 0.625045,
		0.714334, -0.089916, -0.694004,
		-0.233313, 0.904371, -0.357320,
		39.141758, 39.051979, 18.196083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966377, 38.757053, 18.439470>,  <39.305077, 38.418919, 18.446207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966377, 38.757053, 18.439470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.685379, 39.041088, 18.420341>,  <39.516781, 39.211510, 18.408863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.685379, 39.041088, 18.420341>,  <39.966377, 38.757053, 18.439470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685379, 39.041088, 18.420341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512978, 0.551780, 0.657566,
		0.493314, 0.437402, -0.751878,
		-0.702491, 0.710084, -0.047823,
		39.474632, 39.254112, 18.405994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288906, 39.341843, 18.379633>,  <39.966377, 38.757053, 18.439470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288906, 39.341843, 18.379633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.937771, 39.459923, 18.530497>,  <39.727089, 39.530773, 18.621014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.937771, 39.459923, 18.530497>,  <40.288906, 39.341843, 18.379633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937771, 39.459923, 18.530497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478511, 0.506864, 0.717019,
		0.020499, 0.809904, -0.586205,
		-0.877842, 0.295203, 0.377158,
		39.674419, 39.548485, 18.643644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475208, 39.970158, 18.780781>,  <40.288906, 39.341843, 18.379633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475208, 39.970158, 18.780781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.092068, 39.943214, 18.892487>,  <39.862183, 39.927048, 18.959509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.092068, 39.943214, 18.892487>,  <40.475208, 39.970158, 18.780781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092068, 39.943214, 18.892487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176241, 0.629891, 0.756423,
		-0.226858, 0.773757, -0.591469,
		-0.957849, -0.067359, 0.279263,
		39.804714, 39.923008, 18.976265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190834, 40.669182, 18.823805>,  <40.475208, 39.970158, 18.780781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190834, 40.669182, 18.823805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.973045, 40.448521, 19.076542>,  <39.842373, 40.316124, 19.228184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.973045, 40.448521, 19.076542>,  <40.190834, 40.669182, 18.823805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973045, 40.448521, 19.076542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014557, 0.746961, 0.664708,
		-0.838653, 0.371112, -0.398668,
		-0.544471, -0.551656, 0.631843,
		39.809704, 40.283024, 19.266094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747894, 41.143833, 19.008984>,  <40.190834, 40.669182, 18.823805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747894, 41.143833, 19.008984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.732540, 40.857529, 19.287901>,  <39.723328, 40.685745, 19.455252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.732540, 40.857529, 19.287901>,  <39.747894, 41.143833, 19.008984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732540, 40.857529, 19.287901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118984, 0.696118, 0.707999,
		-0.992154, -0.055790, -0.111884,
		-0.038385, -0.715756, 0.697294,
		39.721024, 40.642803, 19.497089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367966, 41.390568, 19.587204>,  <39.747894, 41.143833, 19.008984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367966, 41.390568, 19.587204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.551117, 41.087261, 19.772839>,  <39.661007, 40.905277, 19.884218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.551117, 41.087261, 19.772839>,  <39.367966, 41.390568, 19.587204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551117, 41.087261, 19.772839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197163, 0.595635, 0.778682,
		-0.866875, -0.265042, 0.422232,
		0.457880, -0.758269, 0.464085,
		39.688480, 40.859779, 19.912064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984566, 41.317131, 20.248940>,  <39.367966, 41.390568, 19.587204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984566, 41.317131, 20.248940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.336098, 41.128139, 20.275574>,  <39.547016, 41.014744, 20.291553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.336098, 41.128139, 20.275574>,  <38.984566, 41.317131, 20.248940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336098, 41.128139, 20.275574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177808, 0.453788, 0.873190,
		-0.442776, -0.755542, 0.482810,
		0.878825, -0.472475, 0.066585,
		39.599747, 40.986397, 20.295549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161156, 41.213676, 20.289373>,  <38.984566, 41.317131, 20.248940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161156, 41.213676, 20.289373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.909954, 41.510384, 20.383511>,  <37.759232, 41.688408, 20.439993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.909954, 41.510384, 20.383511>,  <38.161156, 41.213676, 20.289373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909954, 41.510384, 20.383511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407594, -0.055903, -0.911451,
		-0.662930, -0.668320, 0.337448,
		-0.628005, 0.741770, 0.235344,
		37.721554, 41.732914, 20.454113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401310, 41.155140, 20.088409>,  <38.161156, 41.213676, 20.289373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401310, 41.155140, 20.088409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.422176, 41.554520, 20.096258>,  <37.434696, 41.794147, 20.100967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.422176, 41.554520, 20.096258>,  <37.401310, 41.155140, 20.088409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422176, 41.554520, 20.096258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434831, 0.040395, -0.899606,
		-0.899000, 0.038395, 0.436262,
		0.052163, 0.998446, 0.019620,
		37.437824, 41.854053, 20.102144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737740, 41.538651, 19.829044>,  <37.401310, 41.155140, 20.088409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737740, 41.538651, 19.829044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.970924, 41.862164, 19.797985>,  <37.110836, 42.056271, 19.779350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.970924, 41.862164, 19.797985>,  <36.737740, 41.538651, 19.829044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970924, 41.862164, 19.797985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546196, 0.319347, -0.774395,
		-0.601518, 0.493855, 0.627920,
		0.582963, 0.808779, -0.077648,
		37.145813, 42.104797, 19.774691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245872, 42.192352, 19.714043>,  <36.737740, 41.538651, 19.829044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245872, 42.192352, 19.714043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.620598, 42.281765, 19.606398>,  <36.845432, 42.335411, 19.541811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.620598, 42.281765, 19.606398>,  <36.245872, 42.192352, 19.714043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620598, 42.281765, 19.606398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338106, 0.380974, -0.860548,
		-0.089832, 0.897159, 0.432476,
		0.936811, 0.223527, -0.269111,
		36.901642, 42.348824, 19.525663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198372, 42.740097, 19.322309>,  <36.245872, 42.192352, 19.714043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198372, 42.740097, 19.322309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.571285, 42.642807, 19.215214>,  <36.795033, 42.584435, 19.150957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.571285, 42.642807, 19.215214>,  <36.198372, 42.740097, 19.322309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571285, 42.642807, 19.215214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235467, 0.153798, -0.959636,
		0.274583, 0.957700, 0.086113,
		0.932287, -0.243223, -0.267737,
		36.850971, 42.569839, 19.134893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397762, 43.327309, 18.922318>,  <36.198372, 42.740097, 19.322309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397762, 43.327309, 18.922318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.616356, 43.008038, 18.820913>,  <36.747513, 42.816475, 18.760071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.616356, 43.008038, 18.820913>,  <36.397762, 43.327309, 18.922318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616356, 43.008038, 18.820913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237287, 0.142732, -0.960897,
		0.803150, 0.585270, -0.111396,
		0.546484, -0.798177, -0.253512,
		36.780300, 42.768585, 18.744860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942913, 43.612751, 18.427055>,  <36.397762, 43.327309, 18.922318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942913, 43.612751, 18.427055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.917538, 43.218555, 18.364082>,  <36.902313, 42.982037, 18.326298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.917538, 43.218555, 18.364082>,  <36.942913, 43.612751, 18.427055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917538, 43.218555, 18.364082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279157, 0.168976, -0.945261,
		0.958148, -0.016017, -0.285826,
		-0.063438, -0.985490, -0.157433,
		36.898506, 42.922909, 18.316853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094555, 43.554085, 17.724794>,  <36.942913, 43.612751, 18.427055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094555, 43.554085, 17.724794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.945686, 43.185783, 17.771603>,  <36.856365, 42.964802, 17.799688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.945686, 43.185783, 17.771603>,  <37.094555, 43.554085, 17.724794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945686, 43.185783, 17.771603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355962, 0.025155, -0.934162,
		0.857192, -0.389326, -0.337117,
		-0.372174, -0.920756, 0.117023,
		36.834034, 42.909557, 17.806709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218861, 43.213615, 17.047737>,  <37.094555, 43.554085, 17.724794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218861, 43.213615, 17.047737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.929478, 43.007111, 17.231073>,  <36.755848, 42.883209, 17.341076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.929478, 43.007111, 17.231073>,  <37.218861, 43.213615, 17.047737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929478, 43.007111, 17.231073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465038, -0.126256, -0.876242,
		0.510240, -0.847072, -0.148741,
		-0.723460, -0.516264, 0.458341,
		36.712440, 42.852230, 17.368576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082550, 42.765938, 16.524710>,  <37.218861, 43.213615, 17.047737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082550, 42.765938, 16.524710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.760071, 42.755833, 16.761152>,  <36.566582, 42.749771, 16.903019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.760071, 42.755833, 16.761152>,  <37.082550, 42.765938, 16.524710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760071, 42.755833, 16.761152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591183, -0.005202, -0.806521,
		0.023454, -0.999667, -0.010744,
		-0.806197, -0.025268, 0.591108,
		36.518211, 42.748253, 16.938484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724594, 42.210075, 16.354280>,  <37.082550, 42.765938, 16.524710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724594, 42.210075, 16.354280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.464069, 42.475460, 16.501583>,  <36.307755, 42.634689, 16.589964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.464069, 42.475460, 16.501583>,  <36.724594, 42.210075, 16.354280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464069, 42.475460, 16.501583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423349, 0.085043, -0.901966,
		-0.629736, -0.743364, 0.225485,
		-0.651313, 0.663459, 0.368256,
		36.268677, 42.674500, 16.612061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001171, 42.042034, 16.139887>,  <36.724594, 42.210075, 16.354280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001171, 42.042034, 16.139887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.997238, 42.433918, 16.219963>,  <35.994877, 42.669048, 16.268009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.997238, 42.433918, 16.219963>,  <36.001171, 42.042034, 16.139887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997238, 42.433918, 16.219963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437212, 0.175838, -0.882002,
		-0.899305, -0.096199, 0.426611,
		-0.009833, 0.979708, 0.200191,
		35.994289, 42.727829, 16.280020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260498, 42.363720, 16.090525>,  <36.001171, 42.042034, 16.139887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260498, 42.363720, 16.090525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.557568, 42.619633, 16.011421>,  <35.735809, 42.773182, 15.963959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.557568, 42.619633, 16.011421>,  <35.260498, 42.363720, 16.090525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557568, 42.619633, 16.011421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468064, 0.284757, -0.836558,
		-0.478903, 0.713856, 0.510942,
		0.742677, 0.639783, -0.197759,
		35.780369, 42.811569, 15.952093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474155, 42.346176, 16.295118>,  <35.260498, 42.363720, 16.090525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474155, 42.346176, 16.295118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.127827, 42.303989, 16.099476>,  <33.920029, 42.278675, 15.982090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.127827, 42.303989, 16.099476>,  <34.474155, 42.346176, 16.295118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127827, 42.303989, 16.099476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322965, -0.628809, 0.707313,
		-0.382155, 0.770373, 0.510375,
		-0.865824, -0.105470, -0.489107,
		33.868080, 42.272346, 15.952744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924259, 42.587524, 16.715317>,  <34.474155, 42.346176, 16.295118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924259, 42.587524, 16.715317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.779385, 42.309772, 16.466587>,  <33.692459, 42.143124, 16.317350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.779385, 42.309772, 16.466587>,  <33.924259, 42.587524, 16.715317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779385, 42.309772, 16.466587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170634, -0.606450, 0.776597,
		-0.916354, 0.387377, 0.101163,
		-0.362186, -0.694376, -0.621823,
		33.670731, 42.101460, 16.280041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189255, 42.356163, 16.964315>,  <33.924259, 42.587524, 16.715317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189255, 42.356163, 16.964315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.334248, 42.059509, 16.738544>,  <33.421242, 41.881516, 16.603083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.334248, 42.059509, 16.738544>,  <33.189255, 42.356163, 16.964315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334248, 42.059509, 16.738544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087111, -0.629925, 0.771755,
		-0.927910, -0.230581, -0.292942,
		0.362483, -0.741638, -0.564428,
		33.442993, 41.837017, 16.569216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789345, 41.750877, 17.147160>,  <33.189255, 42.356163, 16.964315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789345, 41.750877, 17.147160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.101192, 41.589527, 16.955545>,  <33.288303, 41.492718, 16.840576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.101192, 41.589527, 16.955545>,  <32.789345, 41.750877, 17.147160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101192, 41.589527, 16.955545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019252, -0.780007, 0.625475,
		-0.625952, -0.478413, -0.615877,
		0.779624, -0.403375, -0.479036,
		33.335079, 41.468513, 16.811834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688168, 40.999718, 17.078335>,  <32.789345, 41.750877, 17.147160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688168, 40.999718, 17.078335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.082165, 41.053261, 17.034763>,  <33.318565, 41.085388, 17.008621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.082165, 41.053261, 17.034763>,  <32.688168, 40.999718, 17.078335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082165, 41.053261, 17.034763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170248, -0.650265, 0.740386,
		0.028275, -0.747821, -0.663298,
		0.984996, 0.133859, -0.108929,
		33.377663, 41.093418, 17.002085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996857, 40.357910, 17.092369>,  <32.688168, 40.999718, 17.078335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996857, 40.357910, 17.092369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.304981, 40.598759, 17.176338>,  <33.489857, 40.743267, 17.226719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.304981, 40.598759, 17.176338>,  <32.996857, 40.357910, 17.092369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304981, 40.598759, 17.176338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266391, -0.602971, 0.751972,
		0.579355, -0.523333, -0.624876,
		0.770314, 0.602120, 0.209923,
		33.536076, 40.779396, 17.239315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347122, 39.846455, 17.454174>,  <32.996857, 40.357910, 17.092369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347122, 39.846455, 17.454174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.543690, 40.188320, 17.521173>,  <33.661629, 40.393440, 17.561373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.543690, 40.188320, 17.521173>,  <33.347122, 39.846455, 17.454174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543690, 40.188320, 17.521173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220102, -0.307956, 0.925591,
		0.842652, -0.417985, -0.339448,
		0.491419, 0.854664, 0.167500,
		33.691116, 40.444721, 17.571424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953594, 39.587730, 17.688330>,  <33.347122, 39.846455, 17.454174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953594, 39.587730, 17.688330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.903145, 39.956406, 17.835070>,  <33.872875, 40.177612, 17.923113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.903145, 39.956406, 17.835070>,  <33.953594, 39.587730, 17.688330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903145, 39.956406, 17.835070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256501, -0.326927, 0.909575,
		0.958280, 0.208813, -0.195183,
		-0.126121, 0.921692, 0.366848,
		33.865307, 40.232914, 17.945124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562687, 39.218952, 17.770910>,  <33.953594, 39.587730, 17.688330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562687, 39.218952, 17.770910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.490833, 38.825638, 17.782726>,  <34.447723, 38.589649, 17.789816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.490833, 38.825638, 17.782726>,  <34.562687, 39.218952, 17.770910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490833, 38.825638, 17.782726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147302, -0.056574, -0.987472,
		0.972643, -0.173029, 0.155003,
		-0.179631, -0.983290, 0.029539,
		34.436943, 38.530651, 17.791588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032135, 38.945702, 17.392498>,  <34.562687, 39.218952, 17.770910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032135, 38.945702, 17.392498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.747799, 38.664433, 17.398842>,  <34.577198, 38.495670, 17.402649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.747799, 38.664433, 17.398842>,  <35.032135, 38.945702, 17.392498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747799, 38.664433, 17.398842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093110, -0.116427, -0.988825,
		0.697165, -0.701418, 0.148234,
		-0.710838, -0.703177, 0.015860,
		34.534546, 38.453480, 17.403601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300541, 38.347919, 17.056831>,  <35.032135, 38.945702, 17.392498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300541, 38.347919, 17.056831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.903381, 38.311855, 17.025778>,  <34.665085, 38.290218, 17.007145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.903381, 38.311855, 17.025778>,  <35.300541, 38.347919, 17.056831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903381, 38.311855, 17.025778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086776, -0.102330, -0.990958,
		0.081402, -0.990656, 0.109427,
		-0.992897, -0.090161, -0.077635,
		34.605511, 38.284809, 17.002487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211262, 37.757938, 16.664152>,  <35.300541, 38.347919, 17.056831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211262, 37.757938, 16.664152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.865086, 37.956387, 16.636192>,  <34.657379, 38.075455, 16.619417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.865086, 37.956387, 16.636192>,  <35.211262, 37.757938, 16.664152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865086, 37.956387, 16.636192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027210, -0.092767, -0.995316,
		-0.500279, -0.863285, 0.066785,
		-0.865437, 0.496118, -0.069899,
		34.605453, 38.105221, 16.615223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792679, 37.264809, 16.409420>,  <35.211262, 37.757938, 16.664152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792679, 37.264809, 16.409420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.657120, 37.628258, 16.311810>,  <34.575783, 37.846329, 16.253244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.657120, 37.628258, 16.311810>,  <34.792679, 37.264809, 16.409420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657120, 37.628258, 16.311810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072442, -0.283805, -0.956142,
		-0.938030, -0.306357, 0.162004,
		-0.338898, 0.908625, -0.244025,
		34.555450, 37.900845, 16.238602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388515, 37.160370, 15.750665>,  <34.792679, 37.264809, 16.409420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388515, 37.160370, 15.750665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.414040, 37.557987, 15.786026>,  <34.429352, 37.796558, 15.807242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.414040, 37.557987, 15.786026>,  <34.388515, 37.160370, 15.750665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414040, 37.557987, 15.786026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013480, 0.087716, -0.996054,
		-0.997871, 0.064748, -0.007802,
		0.063808, 0.994039, 0.088402,
		34.433182, 37.856197, 15.812547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789249, 37.463371, 15.425806>,  <34.388515, 37.160370, 15.750665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789249, 37.463371, 15.425806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.092258, 37.723637, 15.404643>,  <34.274063, 37.879795, 15.391945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.092258, 37.723637, 15.404643>,  <33.789249, 37.463371, 15.425806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092258, 37.723637, 15.404643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093531, 0.027965, -0.995223,
		-0.646076, 0.758851, 0.082041,
		0.757521, 0.650663, -0.052908,
		34.319515, 37.918835, 15.388770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708763, 37.945534, 14.790160>,  <33.789249, 37.463371, 15.425806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708763, 37.945534, 14.790160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.086636, 38.067051, 14.839607>,  <34.313358, 38.139961, 14.869275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.086636, 38.067051, 14.839607>,  <33.708763, 37.945534, 14.790160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086636, 38.067051, 14.839607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077390, 0.159791, -0.984112,
		-0.318718, 0.939243, 0.127442,
		0.944685, 0.303792, 0.123617,
		34.370041, 38.158188, 14.876692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785366, 38.559235, 14.420109>,  <33.708763, 37.945534, 14.790160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785366, 38.559235, 14.420109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.151680, 38.401585, 14.451106>,  <34.371468, 38.306995, 14.469705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.151680, 38.401585, 14.451106>,  <33.785366, 38.559235, 14.420109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151680, 38.401585, 14.451106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156453, 0.172309, -0.972539,
		0.369954, 0.902758, 0.219460,
		0.915782, -0.394129, 0.077493,
		34.426414, 38.283344, 14.474354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.862663, 38.393948, 30.549738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.047554, 38.073704, 30.397228>,  <38.158489, 37.881557, 30.305723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.047554, 38.073704, 30.397228>,  <37.862663, 38.393948, 30.549738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047554, 38.073704, 30.397228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466819, 0.145872, -0.872239,
		0.753941, 0.581157, -0.306315,
		0.462225, -0.800611, -0.381274,
		38.186222, 37.833519, 30.282846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721951, 38.552750, 29.867966>,  <37.862663, 38.393948, 30.549738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721951, 38.552750, 29.867966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.868637, 38.180706, 29.859722>,  <37.956650, 37.957481, 29.854776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.868637, 38.180706, 29.859722>,  <37.721951, 38.552750, 29.867966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868637, 38.180706, 29.859722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219847, -0.065114, -0.973359,
		0.903983, 0.361478, -0.228359,
		0.366717, -0.930104, -0.020609,
		37.978653, 37.901676, 29.853540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098724, 38.411629, 29.282234>,  <37.721951, 38.552750, 29.867966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098724, 38.411629, 29.282234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.025200, 38.032654, 29.386988>,  <37.981083, 37.805271, 29.449841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.025200, 38.032654, 29.386988>,  <38.098724, 38.411629, 29.282234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025200, 38.032654, 29.386988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336803, -0.189591, -0.922290,
		0.923459, -0.257732, -0.284249,
		-0.183813, -0.947433, 0.261885,
		37.970055, 37.748425, 29.465553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453476, 38.148361, 28.787849>,  <38.098724, 38.411629, 29.282234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453476, 38.148361, 28.787849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.178024, 37.895683, 28.930260>,  <38.012753, 37.744076, 29.015705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.178024, 37.895683, 28.930260>,  <38.453476, 38.148361, 28.787849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178024, 37.895683, 28.930260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186184, -0.320495, -0.928773,
		0.700807, -0.705863, 0.103089,
		-0.688626, -0.631697, 0.356026,
		37.971436, 37.706173, 29.037067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509750, 37.572319, 28.402065>,  <38.453476, 38.148361, 28.787849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509750, 37.572319, 28.402065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.139927, 37.549778, 28.552805>,  <37.918034, 37.536251, 28.643250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.139927, 37.549778, 28.552805>,  <38.509750, 37.572319, 28.402065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139927, 37.549778, 28.552805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344196, -0.300759, -0.889423,
		0.163466, -0.952034, 0.258671,
		-0.924558, -0.056356, 0.376850,
		37.862560, 37.532871, 28.665859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240543, 37.006271, 28.027845>,  <38.509750, 37.572319, 28.402065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240543, 37.006271, 28.027845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.920837, 37.184822, 28.188807>,  <37.729015, 37.291950, 28.285383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.920837, 37.184822, 28.188807>,  <38.240543, 37.006271, 28.027845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920837, 37.184822, 28.188807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509317, -0.147670, -0.847815,
		-0.319021, -0.882577, 0.345373,
		-0.799263, 0.446375, 0.402402,
		37.681057, 37.318733, 28.309526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621746, 36.564621, 27.834797>,  <38.240543, 37.006271, 28.027845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621746, 36.564621, 27.834797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.466343, 36.929337, 27.888027>,  <37.373100, 37.148167, 27.919966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.466343, 36.929337, 27.888027>,  <37.621746, 36.564621, 27.834797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466343, 36.929337, 27.888027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552162, -0.114744, -0.825803,
		-0.737687, -0.394308, 0.548032,
		-0.388504, 0.911787, 0.133077,
		37.349792, 37.202873, 27.927950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853355, 36.605366, 27.890800>,  <37.621746, 36.564621, 27.834797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853355, 36.605366, 27.890800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947632, 36.978626, 27.782223>,  <37.004196, 37.202583, 27.717075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947632, 36.978626, 27.782223>,  <36.853355, 36.605366, 27.890800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947632, 36.978626, 27.782223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557413, -0.098995, -0.824313,
		-0.796078, 0.345589, 0.496817,
		0.235691, 0.933150, -0.271444,
		37.018341, 37.258572, 27.700790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230755, 36.863396, 27.706427>,  <36.853355, 36.605366, 27.890800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230755, 36.863396, 27.706427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.464272, 37.145420, 27.545391>,  <36.604382, 37.314636, 27.448769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.464272, 37.145420, 27.545391>,  <36.230755, 36.863396, 27.706427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464272, 37.145420, 27.545391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616507, 0.062299, -0.784881,
		-0.528308, 0.706404, 0.471045,
		0.583789, 0.705062, -0.402590,
		36.639408, 37.356937, 27.424614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759003, 37.377991, 27.510654>,  <36.230755, 36.863396, 27.706427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759003, 37.377991, 27.510654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098957, 37.425785, 27.305357>,  <36.302929, 37.454464, 27.182178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098957, 37.425785, 27.305357>,  <35.759003, 37.377991, 27.510654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098957, 37.425785, 27.305357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526938, 0.203199, -0.825255,
		0.005681, 0.971819, 0.235659,
		0.849885, 0.119489, -0.513243,
		36.353924, 37.461632, 27.151384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687511, 38.026260, 27.196922>,  <35.759003, 37.377991, 27.510654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687511, 38.026260, 27.196922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.958584, 37.820732, 26.986498>,  <36.121227, 37.697414, 26.860243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.958584, 37.820732, 26.986498>,  <35.687511, 38.026260, 27.196922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958584, 37.820732, 26.986498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424259, 0.311117, -0.850418,
		0.600626, 0.799498, -0.007153,
		0.677682, -0.513818, -0.526060,
		36.161888, 37.666588, 26.828680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766880, 38.457890, 26.557598>,  <35.687511, 38.026260, 27.196922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766880, 38.457890, 26.557598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.936329, 38.112576, 26.447849>,  <36.037998, 37.905388, 26.382000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.936329, 38.112576, 26.447849>,  <35.766880, 38.457890, 26.557598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936329, 38.112576, 26.447849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504800, 0.026518, -0.862829,
		0.752144, 0.504019, -0.424553,
		0.423624, -0.863285, -0.274374,
		36.063416, 37.853588, 26.365538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813789, 39.219067, 26.404011>,  <35.766880, 38.457890, 26.557598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813789, 39.219067, 26.404011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.516087, 39.483536, 26.441824>,  <35.337467, 39.642220, 26.464512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.516087, 39.483536, 26.441824>,  <35.813789, 39.219067, 26.404011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516087, 39.483536, 26.441824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119229, -0.007741, 0.992837,
		0.657170, 0.750192, -0.073070,
		-0.744252, 0.661175, 0.094532,
		35.292812, 39.681889, 26.470184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858597, 39.610893, 27.001041>,  <35.813789, 39.219067, 26.404011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858597, 39.610893, 27.001041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466103, 39.670860, 26.952539>,  <35.230606, 39.706841, 26.923439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466103, 39.670860, 26.952539>,  <35.858597, 39.610893, 27.001041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466103, 39.670860, 26.952539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132239, -0.065571, 0.989047,
		0.140324, 0.986522, 0.084165,
		-0.981235, 0.149917, -0.121255,
		35.171734, 39.715836, 26.916162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730640, 40.069893, 27.533737>,  <35.858597, 39.610893, 27.001041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730640, 40.069893, 27.533737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377274, 39.912167, 27.432482>,  <35.165253, 39.817532, 27.371729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377274, 39.912167, 27.432482>,  <35.730640, 40.069893, 27.533737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377274, 39.912167, 27.432482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198236, -0.174991, 0.964407,
		-0.424580, 0.902159, 0.076422,
		-0.883422, -0.394318, -0.253138,
		35.112247, 39.793873, 27.356541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257130, 40.374550, 28.006420>,  <35.730640, 40.069893, 27.533737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257130, 40.374550, 28.006420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092594, 40.034248, 27.875563>,  <34.993874, 39.830067, 27.797049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092594, 40.034248, 27.875563>,  <35.257130, 40.374550, 28.006420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092594, 40.034248, 27.875563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369751, -0.172309, 0.913014,
		-0.833118, 0.496519, -0.243689,
		-0.411339, -0.850752, -0.327142,
		34.969193, 39.779022, 27.777420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604733, 40.412754, 28.317955>,  <35.257130, 40.374550, 28.006420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604733, 40.412754, 28.317955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638622, 40.026039, 28.221506>,  <34.658955, 39.794010, 28.163637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638622, 40.026039, 28.221506>,  <34.604733, 40.412754, 28.317955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638622, 40.026039, 28.221506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322746, -0.255574, 0.911327,
		-0.942686, 0.000612, -0.333680,
		0.084722, -0.966789, -0.241124,
		34.664040, 39.736004, 28.149168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120468, 40.106575, 28.646069>,  <34.604733, 40.412754, 28.317955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120468, 40.106575, 28.646069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362957, 39.794373, 28.585018>,  <34.508450, 39.607052, 28.548388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362957, 39.794373, 28.585018>,  <34.120468, 40.106575, 28.646069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362957, 39.794373, 28.585018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222691, -0.350832, 0.909575,
		-0.763479, -0.517419, -0.386495,
		0.606225, -0.780510, -0.152628,
		34.544827, 39.560219, 28.539230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749123, 39.542049, 28.871887>,  <34.120468, 40.106575, 28.646069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749123, 39.542049, 28.871887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138336, 39.450317, 28.881737>,  <34.371864, 39.395279, 28.887646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.138336, 39.450317, 28.881737>,  <33.749123, 39.542049, 28.871887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138336, 39.450317, 28.881737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092812, -0.291574, 0.952035,
		-0.211152, -0.928650, -0.304997,
		0.973036, -0.229331, 0.024624,
		34.430248, 39.381519, 28.889124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844673, 38.910038, 29.288589>,  <33.749123, 39.542049, 28.871887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844673, 38.910038, 29.288589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.202545, 39.088711, 29.286455>,  <34.417267, 39.195915, 29.285173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.202545, 39.088711, 29.286455>,  <33.844673, 38.910038, 29.288589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202545, 39.088711, 29.286455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001703, 0.008537, 0.999962,
		0.446711, -0.894652, 0.006877,
		0.894676, 0.446683, -0.005337,
		34.470947, 39.222717, 29.284855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039688, 38.764606, 29.996613>,  <33.844673, 38.910038, 29.288589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039688, 38.764606, 29.996613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335644, 39.006302, 29.878311>,  <34.513218, 39.151318, 29.807329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335644, 39.006302, 29.878311>,  <34.039688, 38.764606, 29.996613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335644, 39.006302, 29.878311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188396, 0.235937, 0.953331,
		0.645815, -0.761075, 0.060731,
		0.739885, 0.604234, -0.295755,
		34.557610, 39.187572, 29.789585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547188, 38.598152, 30.421700>,  <34.039688, 38.764606, 29.996613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547188, 38.598152, 30.421700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640705, 38.966766, 30.297693>,  <34.696815, 39.187935, 30.223289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.640705, 38.966766, 30.297693>,  <34.547188, 38.598152, 30.421700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640705, 38.966766, 30.297693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002893, 0.319511, 0.947578,
		0.972282, -0.220642, 0.077367,
		0.233795, 0.921536, -0.310016,
		34.710842, 39.243229, 30.204689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120552, 38.874538, 30.926981>,  <34.547188, 38.598152, 30.421700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120552, 38.874538, 30.926981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932842, 39.183189, 30.755228>,  <34.820217, 39.368382, 30.652176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.932842, 39.183189, 30.755228>,  <35.120552, 38.874538, 30.926981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932842, 39.183189, 30.755228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108691, 0.432078, 0.895262,
		0.876336, 0.466796, -0.118895,
		-0.469277, 0.771628, -0.429382,
		34.792061, 39.414677, 30.626413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397606, 39.501850, 31.274614>,  <35.120552, 38.874538, 30.926981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397606, 39.501850, 31.274614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060665, 39.649273, 31.117334>,  <34.858501, 39.737724, 31.022966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.060665, 39.649273, 31.117334>,  <35.397606, 39.501850, 31.274614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060665, 39.649273, 31.117334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119251, 0.584046, 0.802913,
		0.525562, 0.723228, -0.448025,
		-0.842356, 0.368553, -0.393198,
		34.807957, 39.759838, 30.999374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309250, 40.149231, 31.428011>,  <35.397606, 39.501850, 31.274614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309250, 40.149231, 31.428011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922409, 40.098278, 31.339935>,  <34.690304, 40.067707, 31.287090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922409, 40.098278, 31.339935>,  <35.309250, 40.149231, 31.428011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922409, 40.098278, 31.339935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243487, 0.714127, 0.656306,
		0.073640, 0.688329, -0.721651,
		-0.967105, -0.127382, -0.220187,
		34.632278, 40.060062, 31.273880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065830, 40.763245, 31.386824>,  <35.309250, 40.149231, 31.428011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065830, 40.763245, 31.386824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.723873, 40.556793, 31.407890>,  <34.518700, 40.432922, 31.420530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.723873, 40.556793, 31.407890>,  <35.065830, 40.763245, 31.386824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723873, 40.556793, 31.407890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336291, 0.628579, 0.701282,
		-0.395057, 0.581807, -0.710936,
		-0.854890, -0.516128, 0.052668,
		34.467407, 40.401955, 31.423691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509800, 41.101955, 31.004179>,  <35.065830, 40.763245, 31.386824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509800, 41.101955, 31.004179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.714199, 41.433014, 31.097023>,  <35.836838, 41.631649, 31.152729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.714199, 41.433014, 31.097023>,  <35.509800, 41.101955, 31.004179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714199, 41.433014, 31.097023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379038, 0.459318, -0.803341,
		-0.771497, 0.322530, 0.548422,
		0.511002, 0.827648, 0.232111,
		35.867500, 41.681309, 31.166656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256851, 41.110455, 31.076126>,  <35.509800, 41.101955, 31.004179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256851, 41.110455, 31.076126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.641865, 41.035698, 30.997536>,  <36.872871, 40.990845, 30.950380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.641865, 41.035698, 30.997536>,  <36.256851, 41.110455, 31.076126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641865, 41.035698, 30.997536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050755, 0.587587, -0.807568,
		0.266376, 0.787282, 0.556085,
		0.962532, -0.186893, -0.196478,
		36.930626, 40.979630, 30.938593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458290, 41.716026, 30.587042>,  <36.256851, 41.110455, 31.076126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458290, 41.716026, 30.587042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739391, 41.431767, 30.573662>,  <36.908051, 41.261211, 30.565634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739391, 41.431767, 30.573662>,  <36.458290, 41.716026, 30.587042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739391, 41.431767, 30.573662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221824, 0.263548, -0.938795,
		0.675972, 0.652317, 0.342847,
		0.702749, -0.710651, -0.033452,
		36.950214, 41.218571, 30.563625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976955, 42.026165, 30.347038>,  <36.458290, 41.716026, 30.587042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976955, 42.026165, 30.347038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054852, 41.640640, 30.274227>,  <37.101589, 41.409325, 30.230539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054852, 41.640640, 30.274227>,  <36.976955, 42.026165, 30.347038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054852, 41.640640, 30.274227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207096, 0.221801, -0.952846,
		0.958743, 0.147858, 0.242796,
		0.194739, -0.963816, -0.182030,
		37.113274, 41.351494, 30.219618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623524, 41.936676, 29.863819>,  <36.976955, 42.026165, 30.347038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623524, 41.936676, 29.863819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417969, 41.594048, 29.845037>,  <37.294636, 41.388470, 29.833769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.417969, 41.594048, 29.845037>,  <37.623524, 41.936676, 29.863819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417969, 41.594048, 29.845037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024076, 0.040314, -0.998897,
		0.857519, -0.514452, -0.000094,
		-0.513889, -0.856571, -0.046956,
		37.263802, 41.337078, 29.830952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868435, 41.737259, 29.284313>,  <37.623524, 41.936676, 29.863819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868435, 41.737259, 29.284313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.526772, 41.536121, 29.337318>,  <37.321774, 41.415440, 29.369122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.526772, 41.536121, 29.337318>,  <37.868435, 41.737259, 29.284313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526772, 41.536121, 29.337318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092596, -0.103679, -0.990291,
		0.511697, -0.858139, 0.041998,
		-0.854162, -0.502840, 0.132513,
		37.270523, 41.385269, 29.377071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955791, 41.130550, 28.967791>,  <37.868435, 41.737259, 29.284313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955791, 41.130550, 28.967791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.558167, 41.170387, 28.985312>,  <37.319592, 41.194290, 28.995823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.558167, 41.170387, 28.985312>,  <37.955791, 41.130550, 28.967791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558167, 41.170387, 28.985312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043796, 0.002234, -0.999038,
		-0.099601, -0.995025, 0.002141,
		-0.994063, 0.099599, 0.043801,
		37.259949, 41.200268, 28.998451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639828, 40.600967, 28.481541>,  <37.955791, 41.130550, 28.967791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639828, 40.600967, 28.481541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.376396, 40.897942, 28.530621>,  <37.218338, 41.076126, 28.560068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.376396, 40.897942, 28.530621>,  <37.639828, 40.600967, 28.481541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376396, 40.897942, 28.530621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080901, 0.092256, -0.992443,
		-0.748148, -0.663531, -0.000694,
		-0.658581, 0.742438, 0.122701,
		37.178822, 41.120674, 28.567430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246128, 40.528133, 27.896635>,  <37.639828, 40.600967, 28.481541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246128, 40.528133, 27.896635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.140045, 40.888908, 28.032976>,  <37.076397, 41.105373, 28.114780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.140045, 40.888908, 28.032976>,  <37.246128, 40.528133, 27.896635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140045, 40.888908, 28.032976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129322, 0.317045, -0.939552,
		-0.955480, -0.293253, 0.032558,
		-0.265204, 0.901934, 0.340854,
		37.060486, 41.159489, 28.135233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537544, 40.592766, 27.715422>,  <37.246128, 40.528133, 27.896635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537544, 40.592766, 27.715422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699444, 40.956345, 27.755415>,  <36.796585, 41.174492, 27.779411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.699444, 40.956345, 27.755415>,  <36.537544, 40.592766, 27.715422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699444, 40.956345, 27.755415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328591, 0.246609, -0.911708,
		-0.853350, 0.336159, 0.398486,
		0.404749, 0.908945, 0.099985,
		36.820869, 41.229027, 27.785410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166721, 41.052868, 27.206322>,  <36.537544, 40.592766, 27.715422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166721, 41.052868, 27.206322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491753, 41.272614, 27.284210>,  <36.686771, 41.404461, 27.330942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491753, 41.272614, 27.284210>,  <36.166721, 41.052868, 27.206322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491753, 41.272614, 27.284210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048391, 0.396516, -0.916752,
		-0.580839, 0.735510, 0.348784,
		0.812579, 0.549363, 0.194720,
		36.735527, 41.437424, 27.342627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017002, 41.638954, 26.956999>,  <36.166721, 41.052868, 27.206322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017002, 41.638954, 26.956999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412346, 41.658283, 27.014696>,  <36.649551, 41.669880, 27.049314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.412346, 41.658283, 27.014696>,  <36.017002, 41.638954, 26.956999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412346, 41.658283, 27.014696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103831, 0.478672, -0.871833,
		-0.111175, 0.876663, 0.468084,
		0.988362, 0.048324, 0.144241,
		36.708855, 41.672779, 27.057968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188873, 42.279373, 26.735241>,  <36.017002, 41.638954, 26.956999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188873, 42.279373, 26.735241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522614, 42.058903, 26.732172>,  <36.722858, 41.926620, 26.730330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522614, 42.058903, 26.732172>,  <36.188873, 42.279373, 26.735241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522614, 42.058903, 26.732172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245675, 0.384284, -0.889927,
		0.493458, 0.740627, 0.456039,
		0.834352, -0.551179, -0.007675,
		36.772919, 41.893551, 26.729870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768478, 42.768799, 26.569754>,  <36.188873, 42.279373, 26.735241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768478, 42.768799, 26.569754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.911781, 42.401581, 26.501822>,  <36.997765, 42.181252, 26.461061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.911781, 42.401581, 26.501822>,  <36.768478, 42.768799, 26.569754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911781, 42.401581, 26.501822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373896, 0.307763, -0.874920,
		0.855483, 0.249950, 0.453513,
		0.358261, -0.918045, -0.169830,
		37.019260, 42.126167, 26.450872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448460, 42.915146, 26.235678>,  <36.768478, 42.768799, 26.569754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448460, 42.915146, 26.235678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.340523, 42.547565, 26.120638>,  <37.275761, 42.327015, 26.051615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.340523, 42.547565, 26.120638>,  <37.448460, 42.915146, 26.235678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340523, 42.547565, 26.120638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276437, 0.212174, -0.937318,
		0.922372, -0.332427, 0.196780,
		-0.269838, -0.918953, -0.287599,
		37.259571, 42.271881, 26.034359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036694, 42.705093, 25.966663>,  <37.448460, 42.915146, 26.235678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036694, 42.705093, 25.966663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.750057, 42.469013, 25.817986>,  <37.578075, 42.327366, 25.728779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.750057, 42.469013, 25.817986>,  <38.036694, 42.705093, 25.966663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750057, 42.469013, 25.817986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379868, 0.116699, -0.917650,
		0.584974, -0.798777, 0.140572,
		-0.716593, -0.590200, -0.371696,
		37.535080, 42.291954, 25.706476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317104, 42.483742, 25.359423>,  <38.036694, 42.705093, 25.966663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317104, 42.483742, 25.359423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.934204, 42.402988, 25.276554>,  <37.704464, 42.354534, 25.226833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.934204, 42.402988, 25.276554>,  <38.317104, 42.483742, 25.359423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934204, 42.402988, 25.276554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190627, 0.098423, -0.976716,
		0.217578, -0.974451, -0.055729,
		-0.957246, -0.201888, -0.207172,
		37.647030, 42.342422, 25.214403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321625, 42.066322, 24.817190>,  <38.317104, 42.483742, 25.359423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321625, 42.066322, 24.817190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.954136, 42.223904, 24.806179>,  <37.733643, 42.318451, 24.799572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.954136, 42.223904, 24.806179>,  <38.321625, 42.066322, 24.817190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954136, 42.223904, 24.806179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151246, 0.286612, -0.946033,
		-0.364805, -0.873300, -0.322900,
		-0.918718, 0.393954, -0.027525,
		37.678520, 42.342091, 24.797922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965584, 41.579094, 24.373013>,  <38.321625, 42.066322, 24.817190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965584, 41.579094, 24.373013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.784031, 41.935162, 24.388931>,  <37.675098, 42.148804, 24.398481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.784031, 41.935162, 24.388931>,  <37.965584, 41.579094, 24.373013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784031, 41.935162, 24.388931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078370, 0.004607, -0.996914,
		-0.887608, -0.455602, 0.067671,
		-0.453884, 0.890172, 0.039795,
		37.647865, 42.202213, 24.400869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426476, 41.390499, 24.097042>,  <37.965584, 41.579094, 24.373013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426476, 41.390499, 24.097042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.455444, 41.788837, 24.074972>,  <37.472824, 42.027840, 24.061729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.455444, 41.788837, 24.074972>,  <37.426476, 41.390499, 24.097042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455444, 41.788837, 24.074972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042389, -0.058343, -0.997396,
		-0.996473, 0.069894, -0.046438,
		0.072421, 0.995847, -0.055174,
		37.477169, 42.087593, 24.058420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863777, 41.689590, 23.704905>,  <37.426476, 41.390499, 24.097042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863777, 41.689590, 23.704905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.130177, 41.987789, 23.694500>,  <37.290016, 42.166710, 23.688257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.130177, 41.987789, 23.694500>,  <36.863777, 41.689590, 23.704905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.130177, 41.987789, 23.694500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046107, 0.006338, -0.998916,
		-0.744525, 0.666478, 0.038594,
		0.666000, 0.745498, -0.026010,
		37.329975, 42.211437, 23.686697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531013, 42.175415, 23.271864>,  <36.863777, 41.689590, 23.704905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531013, 42.175415, 23.271864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.929035, 42.214748, 23.277470>,  <37.167847, 42.238350, 23.280834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.929035, 42.214748, 23.277470>,  <36.531013, 42.175415, 23.271864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929035, 42.214748, 23.277470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015822, -0.017617, -0.999720,
		-0.098061, 0.994997, -0.019086,
		0.995055, 0.098336, 0.014016,
		37.227551, 42.244247, 23.281673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659580, 42.674942, 22.713787>,  <36.531013, 42.175415, 23.271864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659580, 42.674942, 22.713787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.002434, 42.486965, 22.798140>,  <37.208145, 42.374180, 22.848751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.002434, 42.486965, 22.798140>,  <36.659580, 42.674942, 22.713787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002434, 42.486965, 22.798140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232321, -0.012694, -0.972556,
		0.459721, 0.882607, 0.098296,
		0.857137, -0.469941, 0.210884,
		37.259575, 42.345982, 22.861404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072498, 43.025459, 22.277296>,  <36.659580, 42.674942, 22.713787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072498, 43.025459, 22.277296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.284248, 42.695309, 22.355806>,  <37.411297, 42.497219, 22.402912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.284248, 42.695309, 22.355806>,  <37.072498, 43.025459, 22.277296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284248, 42.695309, 22.355806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177101, -0.118743, -0.977003,
		0.829698, 0.551960, 0.083315,
		0.529374, -0.825373, 0.196273,
		37.443062, 42.447697, 22.414688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739910, 43.035572, 21.927271>,  <37.072498, 43.025459, 22.277296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739910, 43.035572, 21.927271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.686954, 42.641445, 21.970398>,  <37.655182, 42.404968, 21.996273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.686954, 42.641445, 21.970398>,  <37.739910, 43.035572, 21.927271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686954, 42.641445, 21.970398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305607, -0.144050, -0.941198,
		0.942909, -0.091655, 0.320190,
		-0.132389, -0.985317, 0.107816,
		37.647240, 42.345852, 22.002743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281029, 42.745277, 21.465948>,  <37.739910, 43.035572, 21.927271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281029, 42.745277, 21.465948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.023144, 42.452232, 21.553249>,  <37.868412, 42.276405, 21.605631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.023144, 42.452232, 21.553249>,  <38.281029, 42.745277, 21.465948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023144, 42.452232, 21.553249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033933, -0.312657, -0.949260,
		0.763675, -0.604590, 0.226432,
		-0.644709, -0.732609, 0.218253,
		37.829731, 42.232449, 21.618725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539711, 42.084312, 21.266287>,  <38.281029, 42.745277, 21.465948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539711, 42.084312, 21.266287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140324, 42.062538, 21.262230>,  <37.900692, 42.049473, 21.259796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.140324, 42.062538, 21.262230>,  <38.539711, 42.084312, 21.266287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140324, 42.062538, 21.262230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034457, -0.467444, -0.883351,
		0.043346, -0.882345, 0.468602,
		-0.998466, -0.054436, -0.010141,
		37.840782, 42.046207, 21.259188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495838, 41.485031, 20.887838>,  <38.539711, 42.084312, 21.266287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495838, 41.485031, 20.887838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.149872, 41.685089, 20.870955>,  <37.942291, 41.805122, 20.860825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.149872, 41.685089, 20.870955>,  <38.495838, 41.485031, 20.887838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149872, 41.685089, 20.870955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100907, -0.255649, -0.961489,
		-0.491672, -0.827346, 0.271582,
		-0.864914, 0.500142, -0.042211,
		37.890396, 41.835133, 20.858292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910355, 40.924965, 20.974035>,  <38.495838, 41.485031, 20.887838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910355, 40.924965, 20.974035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.299820, 40.912430, 20.883713>,  <39.533501, 40.904907, 20.829519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.299820, 40.912430, 20.883713>,  <38.910355, 40.924965, 20.974035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299820, 40.912430, 20.883713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227872, 0.104484, 0.968069,
		-0.006748, -0.994033, 0.108874,
		0.973668, -0.031342, -0.225807,
		39.591919, 40.903027, 20.815971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219040, 40.389046, 21.367973>,  <38.910355, 40.924965, 20.974035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219040, 40.389046, 21.367973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.498837, 40.657291, 21.269186>,  <39.666714, 40.818237, 21.209913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.498837, 40.657291, 21.269186>,  <39.219040, 40.389046, 21.367973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498837, 40.657291, 21.269186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344933, -0.014158, 0.938520,
		0.625886, -0.741674, -0.241219,
		0.699491, 0.670611, -0.246967,
		39.708683, 40.858475, 21.195095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880852, 40.068508, 21.574533>,  <39.219040, 40.389046, 21.367973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880852, 40.068508, 21.574533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.972530, 40.456696, 21.544439>,  <40.027538, 40.689610, 21.526382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.972530, 40.456696, 21.544439>,  <39.880852, 40.068508, 21.574533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972530, 40.456696, 21.544439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182475, 0.033085, 0.982654,
		0.956124, -0.238949, -0.169503,
		0.229196, 0.970468, -0.075235,
		40.041290, 40.747837, 21.521870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489590, 40.185638, 22.002230>,  <39.880852, 40.068508, 21.574533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489590, 40.185638, 22.002230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.298443, 40.534130, 21.957336>,  <40.183754, 40.743225, 21.930401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.298443, 40.534130, 21.957336>,  <40.489590, 40.185638, 22.002230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298443, 40.534130, 21.957336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065042, 0.162509, 0.984561,
		0.876020, 0.463192, -0.134325,
		-0.477869, 0.871231, -0.112234,
		40.155083, 40.795498, 21.923666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.966408, 40.640617, 22.308949>,  <40.489590, 40.185638, 22.002230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.966408, 40.640617, 22.308949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.607246, 40.816277, 22.321070>,  <40.391750, 40.921673, 22.328342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.607246, 40.816277, 22.321070>,  <40.966408, 40.640617, 22.308949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607246, 40.816277, 22.321070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176178, 0.295423, 0.938982,
		0.403402, 0.848453, -0.342629,
		-0.897902, 0.439151, 0.030304,
		40.337875, 40.948021, 22.330160>
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
