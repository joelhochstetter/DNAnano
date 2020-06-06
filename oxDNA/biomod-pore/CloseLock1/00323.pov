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
	<24.126318, 35.023724, 35.424496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304142, 34.999722, 35.067001>,  <24.410835, 34.985321, 34.852505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.304142, 34.999722, 35.067001>,  <24.126318, 35.023724, 35.424496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.304142, 34.999722, 35.067001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012661, -0.998075, 0.060708,
		-0.895660, -0.015673, -0.444463,
		0.444559, -0.060001, -0.893737,
		24.437510, 34.981720, 34.798882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.342237, 34.362648, 35.277481>,  <24.126318, 35.023724, 35.424496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.342237, 34.362648, 35.277481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497250, 34.471706, 34.925236>,  <24.590256, 34.537140, 34.713886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497250, 34.471706, 34.925236>,  <24.342237, 34.362648, 35.277481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.497250, 34.471706, 34.925236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039452, -0.959294, -0.279640,
		-0.921013, 0.073626, -0.382510,
		0.387529, 0.272643, -0.880618,
		24.613508, 34.553501, 34.661049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.506212, 33.708004, 35.033615>,  <24.342237, 34.362648, 35.277481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.506212, 33.708004, 35.033615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641764, 33.960648, 34.754696>,  <24.723095, 34.112236, 34.587345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.641764, 33.960648, 34.754696>,  <24.506212, 33.708004, 35.033615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.641764, 33.960648, 34.754696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316685, -0.774482, -0.547620,
		-0.885929, -0.035246, -0.462479,
		0.338881, 0.631613, -0.697298,
		24.743427, 34.150131, 34.545506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.360683, 33.440014, 35.720997>,  <24.506212, 33.708004, 35.033615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.360683, 33.440014, 35.720997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699802, 33.331039, 35.902996>,  <24.903273, 33.265656, 36.012196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699802, 33.331039, 35.902996>,  <24.360683, 33.440014, 35.720997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.699802, 33.331039, 35.902996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242376, 0.564058, 0.789362,
		-0.471695, -0.779497, 0.412174,
		0.847796, -0.272437, 0.454995,
		24.954142, 33.249310, 36.039494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.150709, 33.238739, 36.454926>,  <24.360683, 33.440014, 35.720997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.150709, 33.238739, 36.454926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.509525, 33.403385, 36.390564>,  <24.724815, 33.502174, 36.351948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.509525, 33.403385, 36.390564>,  <24.150709, 33.238739, 36.454926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.509525, 33.403385, 36.390564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181202, 0.674628, 0.715572,
		0.403092, -0.612741, 0.679755,
		0.897041, 0.411614, -0.160907,
		24.778637, 33.526871, 36.342293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.406382, 33.423481, 37.139816>,  <24.150709, 33.238739, 36.454926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.406382, 33.423481, 37.139816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.678696, 33.621765, 36.924110>,  <24.842085, 33.740734, 36.794685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.678696, 33.621765, 36.924110>,  <24.406382, 33.423481, 37.139816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.678696, 33.621765, 36.924110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050965, 0.766487, 0.640235,
		0.730707, -0.408380, 0.547077,
		0.680786, 0.495706, -0.539264,
		24.882931, 33.770477, 36.762333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837086, 33.794403, 37.611202>,  <24.406382, 33.423481, 37.139816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.837086, 33.794403, 37.611202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865969, 33.973965, 37.254940>,  <24.883299, 34.081703, 37.041183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.865969, 33.973965, 37.254940>,  <24.837086, 33.794403, 37.611202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.865969, 33.973965, 37.254940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145135, 0.878755, 0.454671,
		0.986774, -0.162096, -0.001699,
		0.072208, 0.448904, -0.890658,
		24.887630, 34.108635, 36.987743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.469591, 34.175697, 37.613197>,  <24.837086, 33.794403, 37.611202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.469591, 34.175697, 37.613197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213799, 34.359509, 37.366653>,  <25.060324, 34.469795, 37.218727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213799, 34.359509, 37.366653>,  <25.469591, 34.175697, 37.613197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213799, 34.359509, 37.366653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179698, 0.868839, 0.461332,
		0.747511, 0.184255, -0.638183,
		-0.639481, 0.459530, -0.616356,
		25.021954, 34.497368, 37.181747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.824909, 34.741573, 37.565556>,  <25.469591, 34.175697, 37.613197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.824909, 34.741573, 37.565556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462372, 34.813992, 37.412842>,  <25.244848, 34.857445, 37.321213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462372, 34.813992, 37.412842>,  <25.824909, 34.741573, 37.565556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462372, 34.813992, 37.412842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007881, 0.910638, 0.413131,
		0.422466, 0.371430, -0.826779,
		-0.906345, 0.181049, -0.381786,
		25.190468, 34.868305, 37.298306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973621, 35.304153, 37.134335>,  <25.824909, 34.741573, 37.565556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973621, 35.304153, 37.134335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578001, 35.300308, 37.193237>,  <25.340630, 35.298000, 37.228580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578001, 35.300308, 37.193237>,  <25.973621, 35.304153, 37.134335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578001, 35.300308, 37.193237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040289, 0.942383, 0.332103,
		-0.141966, 0.334400, -0.931677,
		-0.989051, -0.009611, 0.147259,
		25.281286, 35.297424, 37.237415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671154, 35.765938, 36.677387>,  <25.973621, 35.304153, 37.134335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671154, 35.765938, 36.677387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408693, 35.724209, 36.976341>,  <25.251217, 35.699169, 37.155712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408693, 35.724209, 36.976341>,  <25.671154, 35.765938, 36.677387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408693, 35.724209, 36.976341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002663, 0.990712, 0.135954,
		-0.754624, 0.087217, -0.650335,
		-0.656152, -0.104326, 0.747382,
		25.211847, 35.692909, 37.200558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.373531, 36.357704, 36.624912>,  <25.671154, 35.765938, 36.677387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.373531, 36.357704, 36.624912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214348, 36.218117, 36.964287>,  <25.118837, 36.134365, 37.167912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214348, 36.218117, 36.964287>,  <25.373531, 36.357704, 36.624912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.214348, 36.218117, 36.964287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102893, 0.935969, 0.336711,
		-0.911616, 0.046699, -0.408382,
		-0.397957, -0.348971, 0.848439,
		25.094961, 36.113426, 37.218819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678337, 36.643002, 36.726879>,  <25.373531, 36.357704, 36.624912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678337, 36.643002, 36.726879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830862, 36.536102, 37.080868>,  <24.922377, 36.471962, 37.293262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830862, 36.536102, 37.080868>,  <24.678337, 36.643002, 36.726879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.830862, 36.536102, 37.080868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145435, 0.928039, 0.342918,
		-0.912934, -0.259465, 0.315006,
		0.381313, -0.267249, 0.884974,
		24.945255, 36.455929, 37.346359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.220951, 36.909878, 37.183479>,  <24.678337, 36.643002, 36.726879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.220951, 36.909878, 37.183479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.569462, 36.857658, 37.372723>,  <24.778568, 36.826328, 37.486267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.569462, 36.857658, 37.372723>,  <24.220951, 36.909878, 37.183479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.569462, 36.857658, 37.372723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041135, 0.941156, 0.335459,
		-0.489061, -0.311739, 0.814640,
		0.871279, -0.130550, 0.473107,
		24.830845, 36.818493, 37.514656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.179714, 37.219391, 37.831421>,  <24.220951, 36.909878, 37.183479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.179714, 37.219391, 37.831421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.576498, 37.184620, 37.794632>,  <24.814568, 37.163757, 37.772560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.576498, 37.184620, 37.794632>,  <24.179714, 37.219391, 37.831421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.576498, 37.184620, 37.794632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117894, 0.898953, 0.421881,
		0.046006, -0.429332, 0.901974,
		0.991960, -0.086929, -0.091973,
		24.874086, 37.158543, 37.767040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.435738, 37.484657, 38.494328>,  <24.179714, 37.219391, 37.831421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.435738, 37.484657, 38.494328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730829, 37.509735, 38.225456>,  <24.907885, 37.524780, 38.064133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.730829, 37.509735, 38.225456>,  <24.435738, 37.484657, 38.494328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.730829, 37.509735, 38.225456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229399, 0.913155, 0.336933,
		0.634929, -0.402763, 0.659278,
		0.737727, 0.062691, -0.672182,
		24.952147, 37.528542, 38.023800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040117, 37.644852, 38.882580>,  <24.435738, 37.484657, 38.494328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040117, 37.644852, 38.882580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.131708, 37.733082, 38.503334>,  <25.186663, 37.786018, 38.275787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.131708, 37.733082, 38.503334>,  <25.040117, 37.644852, 38.882580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.131708, 37.733082, 38.503334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498711, 0.809874, 0.308856,
		0.835977, -0.543554, 0.075438,
		0.228975, 0.220575, -0.948112,
		25.200401, 37.799255, 38.218899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808575, 37.528214, 38.745750>,  <25.040117, 37.644852, 38.882580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808575, 37.528214, 38.745750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683321, 37.794849, 38.475163>,  <25.608170, 37.954830, 38.312809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683321, 37.794849, 38.475163>,  <25.808575, 37.528214, 38.745750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683321, 37.794849, 38.475163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755851, 0.606183, 0.247451,
		0.575010, -0.433822, -0.693659,
		-0.313135, 0.666589, -0.676465,
		25.589380, 37.994827, 38.272224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450401, 37.665833, 38.396858>,  <25.808575, 37.528214, 38.745750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450401, 37.665833, 38.396858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198080, 37.961193, 38.301483>,  <26.046688, 38.138409, 38.244259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198080, 37.961193, 38.301483>,  <26.450401, 37.665833, 38.396858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198080, 37.961193, 38.301483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697619, 0.674227, 0.242375,
		0.339730, -0.013448, -0.940427,
		-0.630802, 0.738402, -0.238436,
		26.008839, 38.182713, 38.229954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.863409, 38.132526, 37.962303>,  <26.450401, 37.665833, 38.396858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.863409, 38.132526, 37.962303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555840, 38.326015, 38.129524>,  <26.371298, 38.442108, 38.229855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555840, 38.326015, 38.129524>,  <26.863409, 38.132526, 37.962303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555840, 38.326015, 38.129524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638650, 0.611508, 0.467101,
		-0.029693, 0.626153, -0.779134,
		-0.768924, 0.483725, 0.418050,
		26.325163, 38.471134, 38.254940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005577, 38.784805, 37.744656>,  <26.863409, 38.132526, 37.962303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005577, 38.784805, 37.744656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739494, 38.841309, 38.037926>,  <26.579845, 38.875210, 38.213886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739494, 38.841309, 38.037926>,  <27.005577, 38.784805, 37.744656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739494, 38.841309, 38.037926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552337, 0.753832, 0.355895,
		-0.502417, 0.641704, -0.579477,
		-0.665208, 0.141259, 0.733175,
		26.539932, 38.883686, 38.257877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786285, 39.546295, 37.638214>,  <27.005577, 38.784805, 37.744656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786285, 39.546295, 37.638214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711246, 39.442169, 38.017063>,  <26.666224, 39.379692, 38.244373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711246, 39.442169, 38.017063>,  <26.786285, 39.546295, 37.638214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711246, 39.442169, 38.017063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344590, 0.885517, 0.311636,
		-0.919818, 0.384831, -0.076417,
		-0.187596, -0.260316, 0.947124,
		26.654968, 39.364075, 38.301201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491297, 40.139679, 37.946644>,  <26.786285, 39.546295, 37.638214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491297, 40.139679, 37.946644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601969, 39.920212, 38.262215>,  <26.668371, 39.788532, 38.451557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.601969, 39.920212, 38.262215>,  <26.491297, 40.139679, 37.946644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.601969, 39.920212, 38.262215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485162, 0.788420, 0.378170,
		-0.829498, 0.278126, 0.484334,
		0.276679, -0.548671, 0.788929,
		26.684973, 39.755611, 38.498894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471731, 40.600243, 38.431858>,  <26.491297, 40.139679, 37.946644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471731, 40.600243, 38.431858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701677, 40.308399, 38.580017>,  <26.839645, 40.133293, 38.668911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701677, 40.308399, 38.580017>,  <26.471731, 40.600243, 38.431858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701677, 40.308399, 38.580017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700257, 0.672848, 0.238568,
		-0.423284, 0.122229, 0.897714,
		0.574866, -0.729613, 0.370397,
		26.874138, 40.089516, 38.691135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597437, 40.796886, 39.063248>,  <26.471731, 40.600243, 38.431858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597437, 40.796886, 39.063248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901295, 40.552490, 38.974133>,  <27.083609, 40.405853, 38.920662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901295, 40.552490, 38.974133>,  <26.597437, 40.796886, 39.063248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901295, 40.552490, 38.974133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647946, 0.740408, 0.178777,
		0.055726, -0.280164, 0.958333,
		0.759645, -0.610986, -0.222791,
		27.129189, 40.369194, 38.907295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107908, 40.890213, 39.588837>,  <26.597437, 40.796886, 39.063248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107908, 40.890213, 39.588837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277775, 40.760418, 39.250755>,  <27.379696, 40.682541, 39.047909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277775, 40.760418, 39.250755>,  <27.107908, 40.890213, 39.588837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277775, 40.760418, 39.250755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577270, 0.816221, -0.023317,
		0.697436, -0.478007, 0.533940,
		0.424667, -0.324489, -0.845201,
		27.405174, 40.663071, 38.997196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791090, 40.851929, 39.642975>,  <27.107908, 40.890213, 39.588837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791090, 40.851929, 39.642975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639395, 40.930489, 39.281288>,  <27.548378, 40.977623, 39.064278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639395, 40.930489, 39.281288>,  <27.791090, 40.851929, 39.642975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639395, 40.930489, 39.281288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519625, 0.853776, -0.032493,
		0.765616, -0.482175, -0.425839,
		-0.379239, 0.196400, -0.904215,
		27.525623, 40.989410, 39.010025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299665, 40.985111, 39.044373>,  <27.791090, 40.851929, 39.642975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299665, 40.985111, 39.044373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970694, 41.212162, 39.029373>,  <27.773310, 41.348392, 39.020374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.970694, 41.212162, 39.029373>,  <28.299665, 40.985111, 39.044373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970694, 41.212162, 39.029373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568734, 0.821877, -0.032564,
		0.012332, -0.048106, -0.998766,
		-0.822429, 0.567631, -0.037495,
		27.723965, 41.382450, 39.018124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878075, 41.260239, 39.499641>,  <28.299665, 40.985111, 39.044373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878075, 41.260239, 39.499641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871502, 41.466454, 39.842323>,  <28.867558, 41.590183, 40.047932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871502, 41.466454, 39.842323>,  <28.878075, 41.260239, 39.499641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871502, 41.466454, 39.842323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512041, 0.740282, -0.435657,
		-0.858804, 0.431510, -0.276143,
		-0.016433, 0.515541, 0.856708,
		28.866571, 41.621117, 40.099335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875711, 41.927704, 39.354935>,  <28.878075, 41.260239, 39.499641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875711, 41.927704, 39.354935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976135, 41.975552, 39.739155>,  <29.036390, 42.004261, 39.969688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976135, 41.975552, 39.739155>,  <28.875711, 41.927704, 39.354935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976135, 41.975552, 39.739155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514864, 0.823814, -0.237161,
		-0.819686, 0.554095, 0.145239,
		0.251059, 0.119619, 0.960552,
		29.051453, 42.011436, 40.027321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212257, 42.359447, 39.279015>,  <28.875711, 41.927704, 39.354935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212257, 42.359447, 39.279015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213257, 42.613865, 38.970356>,  <28.213856, 42.766514, 38.785160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.213257, 42.613865, 38.970356>,  <28.212257, 42.359447, 39.279015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213257, 42.613865, 38.970356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439800, -0.693716, -0.570381,
		-0.898092, -0.337948, -0.281463,
		0.002497, 0.636042, -0.771650,
		28.214006, 42.804676, 38.738861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905380, 42.077145, 38.682079>,  <28.212257, 42.359447, 39.279015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905380, 42.077145, 38.682079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178572, 42.336040, 38.546661>,  <28.342487, 42.491379, 38.465408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178572, 42.336040, 38.546661>,  <27.905380, 42.077145, 38.682079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178572, 42.336040, 38.546661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313284, -0.678260, -0.664693,
		-0.659841, 0.347910, -0.666009,
		0.682981, 0.647241, -0.338549,
		28.383467, 42.530212, 38.445095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862507, 42.250965, 37.980492>,  <27.905380, 42.077145, 38.682079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862507, 42.250965, 37.980492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252096, 42.272221, 38.068626>,  <28.485849, 42.284973, 38.121506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.252096, 42.272221, 38.068626>,  <27.862507, 42.250965, 37.980492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252096, 42.272221, 38.068626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174726, -0.795242, -0.580570,
		0.144371, 0.603959, -0.783831,
		0.973975, 0.053138, 0.220337,
		28.544289, 42.288162, 38.134727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089811, 42.073536, 37.385639>,  <27.862507, 42.250965, 37.980492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089811, 42.073536, 37.385639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392645, 42.007214, 37.638409>,  <28.574345, 41.967419, 37.790070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.392645, 42.007214, 37.638409>,  <28.089811, 42.073536, 37.385639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392645, 42.007214, 37.638409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191717, -0.868286, -0.457519,
		0.624553, 0.467531, -0.625579,
		0.757086, -0.165811, 0.631924,
		28.619770, 41.957470, 37.827988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719168, 41.779766, 36.967964>,  <28.089811, 42.073536, 37.385639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719168, 41.779766, 36.967964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726748, 41.673626, 37.353550>,  <28.731297, 41.609940, 37.584900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726748, 41.673626, 37.353550>,  <28.719168, 41.779766, 36.967964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726748, 41.673626, 37.353550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073009, -0.961196, -0.266028,
		0.997151, 0.075420, 0.001158,
		0.018950, -0.265355, 0.963964,
		28.732433, 41.594021, 37.642738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.256109, 41.278015, 37.092537>,  <28.719168, 41.779766, 36.967964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.256109, 41.278015, 37.092537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962383, 41.207977, 37.354870>,  <28.786148, 41.165955, 37.512272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962383, 41.207977, 37.354870>,  <29.256109, 41.278015, 37.092537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962383, 41.207977, 37.354870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000874, -0.966402, -0.257035,
		0.678808, -0.188172, 0.709797,
		-0.734315, -0.175097, 0.655837,
		28.742088, 41.155449, 37.551620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390888, 40.606178, 37.507496>,  <29.256109, 41.278015, 37.092537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390888, 40.606178, 37.507496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999067, 40.679920, 37.539719>,  <28.763975, 40.724163, 37.559052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.999067, 40.679920, 37.539719>,  <29.390888, 40.606178, 37.507496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999067, 40.679920, 37.539719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200398, -0.929410, -0.309899,
		0.017738, -0.319706, 0.947351,
		-0.979554, 0.184351, 0.080554,
		28.705200, 40.735226, 37.563885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157043, 39.924694, 37.813805>,  <29.390888, 40.606178, 37.507496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157043, 39.924694, 37.813805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846529, 40.123508, 37.658714>,  <28.660219, 40.242798, 37.565662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846529, 40.123508, 37.658714>,  <29.157043, 39.924694, 37.813805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846529, 40.123508, 37.658714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268671, -0.817278, -0.509777,
		-0.570256, -0.291564, 0.767983,
		-0.776288, 0.497038, -0.387723,
		28.613642, 40.272621, 37.542397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.590845, 39.476879, 37.936863>,  <29.157043, 39.924694, 37.813805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.590845, 39.476879, 37.936863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492273, 39.717236, 37.632706>,  <28.433130, 39.861450, 37.450211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492273, 39.717236, 37.632706>,  <28.590845, 39.476879, 37.936863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492273, 39.717236, 37.632706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442950, -0.767681, -0.463099,
		-0.862013, 0.222694, 0.455347,
		-0.246432, 0.600894, -0.760393,
		28.418344, 39.897503, 37.404587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894135, 39.286449, 37.689453>,  <28.590845, 39.476879, 37.936863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894135, 39.286449, 37.689453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067537, 39.472061, 37.380455>,  <28.171579, 39.583427, 37.195057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067537, 39.472061, 37.380455>,  <27.894135, 39.286449, 37.689453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067537, 39.472061, 37.380455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375849, -0.686009, -0.623001,
		-0.819028, 0.560417, -0.122985,
		0.433509, 0.464031, -0.772493,
		28.197590, 39.611271, 37.148708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511822, 39.077164, 37.050335>,  <27.894135, 39.286449, 37.689453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511822, 39.077164, 37.050335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842020, 39.217922, 36.873821>,  <28.040138, 39.302376, 36.767914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.842020, 39.217922, 36.873821>,  <27.511822, 39.077164, 37.050335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842020, 39.217922, 36.873821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050025, -0.733157, -0.678217,
		-0.562190, 0.581939, -0.587613,
		0.825494, 0.351892, -0.441285,
		28.089668, 39.323490, 36.741436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384760, 39.221462, 36.350113>,  <27.511822, 39.077164, 37.050335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384760, 39.221462, 36.350113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781872, 39.179909, 36.374096>,  <28.020140, 39.154976, 36.388485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781872, 39.179909, 36.374096>,  <27.384760, 39.221462, 36.350113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781872, 39.179909, 36.374096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060594, -0.865786, -0.496733,
		0.103509, 0.489514, -0.865830,
		0.992781, -0.103880, 0.059955,
		28.079706, 39.148746, 36.392082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387917, 38.876667, 35.783722>,  <27.384760, 39.221462, 36.350113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387917, 38.876667, 35.783722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729105, 38.821026, 35.984955>,  <27.933819, 38.787640, 36.105694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.729105, 38.821026, 35.984955>,  <27.387917, 38.876667, 35.783722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729105, 38.821026, 35.984955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013386, -0.969345, -0.245338,
		0.521787, 0.202532, -0.828685,
		0.852971, -0.139107, 0.503081,
		27.984997, 38.779293, 36.135880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933075, 38.637001, 35.298874>,  <27.387917, 38.876667, 35.783722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933075, 38.637001, 35.298874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070736, 38.508030, 35.651600>,  <28.153332, 38.430645, 35.863235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.070736, 38.508030, 35.651600>,  <27.933075, 38.637001, 35.298874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070736, 38.508030, 35.651600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056708, -0.930333, -0.362303,
		0.937200, 0.174694, -0.301892,
		0.344153, -0.322431, 0.881815,
		28.173983, 38.411301, 35.916145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224564, 38.054367, 35.075081>,  <27.933075, 38.637001, 35.298874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224564, 38.054367, 35.075081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210440, 37.997055, 35.470703>,  <28.201965, 37.962669, 35.708076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210440, 37.997055, 35.470703>,  <28.224564, 38.054367, 35.075081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210440, 37.997055, 35.470703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072432, -0.986700, -0.145520,
		0.996748, -0.076777, 0.024463,
		-0.035310, -0.143275, 0.989053,
		28.199846, 37.954071, 35.767418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823269, 37.664761, 35.334084>,  <28.224564, 38.054367, 35.075081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823269, 37.664761, 35.334084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548634, 37.612019, 35.620079>,  <28.383852, 37.580376, 35.791676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.548634, 37.612019, 35.620079>,  <28.823269, 37.664761, 35.334084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548634, 37.612019, 35.620079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125782, -0.947048, -0.295431,
		0.716082, -0.292773, 0.633649,
		-0.686590, -0.131851, 0.714990,
		28.342657, 37.572464, 35.834576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072546, 37.043579, 35.764484>,  <28.823269, 37.664761, 35.334084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072546, 37.043579, 35.764484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679657, 37.076008, 35.832211>,  <28.443924, 37.095467, 35.872845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.679657, 37.076008, 35.832211>,  <29.072546, 37.043579, 35.764484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679657, 37.076008, 35.832211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104595, -0.985312, -0.134984,
		0.155882, -0.150294, 0.976275,
		-0.982222, 0.081071, 0.169313,
		28.384991, 37.100330, 35.883003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905544, 36.394436, 36.022270>,  <29.072546, 37.043579, 35.764484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905544, 36.394436, 36.022270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546597, 36.548481, 35.936092>,  <28.331228, 36.640907, 35.884384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546597, 36.548481, 35.936092>,  <28.905544, 36.394436, 36.022270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546597, 36.548481, 35.936092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320036, -0.904118, -0.283103,
		-0.303816, -0.185098, 0.934577,
		-0.897370, 0.385110, -0.215447,
		28.277386, 36.664013, 35.871460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424316, 35.892082, 36.452633>,  <28.905544, 36.394436, 36.022270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424316, 35.892082, 36.452633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201481, 36.090565, 36.186272>,  <28.067780, 36.209652, 36.026455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.201481, 36.090565, 36.186272>,  <28.424316, 35.892082, 36.452633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201481, 36.090565, 36.186272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446718, -0.855021, -0.263403,
		-0.700066, 0.150733, 0.697988,
		-0.557091, 0.496204, -0.665906,
		28.034353, 36.239426, 35.986500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773087, 35.627777, 36.693634>,  <28.424316, 35.892082, 36.452633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773087, 35.627777, 36.693634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745647, 35.742126, 36.311310>,  <27.729183, 35.810738, 36.081917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745647, 35.742126, 36.311310>,  <27.773087, 35.627777, 36.693634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745647, 35.742126, 36.311310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300097, -0.919606, -0.253507,
		-0.951439, 0.269446, 0.148872,
		-0.068597, 0.285873, -0.955809,
		27.725069, 35.827888, 36.024567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088152, 35.477459, 36.482731>,  <27.773087, 35.627777, 36.693634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088152, 35.477459, 36.482731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299110, 35.490597, 36.143139>,  <27.425686, 35.498478, 35.939384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299110, 35.490597, 36.143139>,  <27.088152, 35.477459, 36.482731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299110, 35.490597, 36.143139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488573, -0.805785, -0.334676,
		-0.695088, 0.591298, -0.408924,
		0.527397, 0.032840, -0.848984,
		27.457329, 35.500450, 35.888443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594103, 35.285507, 35.882462>,  <27.088152, 35.477459, 36.482731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594103, 35.285507, 35.882462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965843, 35.252033, 35.738628>,  <27.188889, 35.231949, 35.652328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965843, 35.252033, 35.738628>,  <26.594103, 35.285507, 35.882462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965843, 35.252033, 35.738628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246759, -0.865268, -0.436373,
		-0.274616, 0.494274, -0.824790,
		0.929353, -0.083689, -0.359583,
		27.244650, 35.226925, 35.630753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535681, 35.046764, 35.238800>,  <26.594103, 35.285507, 35.882462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535681, 35.046764, 35.238800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927101, 34.984123, 35.292332>,  <27.161953, 34.946537, 35.324451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927101, 34.984123, 35.292332>,  <26.535681, 35.046764, 35.238800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927101, 34.984123, 35.292332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093411, -0.916368, -0.389287,
		0.183599, 0.368437, -0.911343,
		0.978553, -0.156602, 0.133828,
		27.220667, 34.937141, 35.332481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698278, 34.817463, 34.648029>,  <26.535681, 35.046764, 35.238800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698278, 34.817463, 34.648029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972298, 34.690365, 34.910248>,  <27.136709, 34.614105, 35.067581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.972298, 34.690365, 34.910248>,  <26.698278, 34.817463, 34.648029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972298, 34.690365, 34.910248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178208, -0.945618, -0.272117,
		0.706364, 0.069590, -0.704420,
		0.685049, -0.317747, 0.655549,
		27.177813, 34.595039, 35.106911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951893, 34.231300, 34.334846>,  <26.698278, 34.817463, 34.648029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951893, 34.231300, 34.334846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090916, 34.166748, 34.704311>,  <27.174330, 34.128017, 34.925991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090916, 34.166748, 34.704311>,  <26.951893, 34.231300, 34.334846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090916, 34.166748, 34.704311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047009, -0.986838, -0.154728,
		0.936479, 0.010357, -0.350571,
		0.347559, -0.161379, 0.923666,
		27.195183, 34.118336, 34.981411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452744, 33.585052, 34.219231>,  <26.951893, 34.231300, 34.334846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452744, 33.585052, 34.219231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351501, 33.610626, 34.605358>,  <27.290756, 33.625969, 34.837036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.351501, 33.610626, 34.605358>,  <27.452744, 33.585052, 34.219231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351501, 33.610626, 34.605358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049946, -0.995620, 0.079037,
		0.966148, 0.068219, 0.248805,
		-0.253107, 0.063935, 0.965323,
		27.275570, 33.629807, 34.894955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566393, 32.870293, 34.580353>,  <27.452744, 33.585052, 34.219231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566393, 32.870293, 34.580353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417923, 33.103867, 34.869141>,  <27.328840, 33.244011, 35.042416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.417923, 33.103867, 34.869141>,  <27.566393, 32.870293, 34.580353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417923, 33.103867, 34.869141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109537, -0.799622, 0.590429,
		0.922079, 0.140071, 0.360763,
		-0.371176, 0.583939, 0.721972,
		27.306570, 33.279049, 35.085732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.942722, 32.745453, 35.283447>,  <27.566393, 32.870293, 34.580353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.942722, 32.745453, 35.283447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565916, 32.876350, 35.313168>,  <27.339832, 32.954891, 35.330997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.565916, 32.876350, 35.313168>,  <27.942722, 32.745453, 35.283447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565916, 32.876350, 35.313168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251655, -0.835371, 0.488696,
		0.221990, 0.441661, 0.869285,
		-0.942014, 0.327246, 0.074298,
		27.283312, 32.974525, 35.335457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133396, 32.417618, 35.988888>,  <27.942722, 32.745453, 35.283447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133396, 32.417618, 35.988888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523094, 32.406631, 35.899364>,  <28.756912, 32.400040, 35.845650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.523094, 32.406631, 35.899364>,  <28.133396, 32.417618, 35.988888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523094, 32.406631, 35.899364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156395, 0.797331, 0.582927,
		0.162441, -0.602917, 0.781092,
		0.974245, -0.027468, -0.223813,
		28.815369, 32.398392, 35.832222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511988, 32.617249, 36.619446>,  <28.133396, 32.417618, 35.988888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511988, 32.617249, 36.619446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767511, 32.656193, 36.314175>,  <28.920826, 32.679558, 36.131012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.767511, 32.656193, 36.314175>,  <28.511988, 32.617249, 36.619446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767511, 32.656193, 36.314175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477893, 0.727179, 0.492777,
		0.602945, -0.679508, 0.418002,
		0.638808, 0.097357, -0.763181,
		28.959154, 32.685402, 36.085220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.134176, 32.593399, 36.797031>,  <28.511988, 32.617249, 36.619446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.134176, 32.593399, 36.797031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168324, 32.794140, 36.452740>,  <29.188812, 32.914585, 36.246166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168324, 32.794140, 36.452740>,  <29.134176, 32.593399, 36.797031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168324, 32.794140, 36.452740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572695, 0.682199, 0.454561,
		0.815312, -0.531741, -0.229170,
		0.085369, 0.501853, -0.860730,
		29.193933, 32.944695, 36.194519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813587, 32.607773, 36.503609>,  <29.134176, 32.593399, 36.797031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813587, 32.607773, 36.503609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575951, 32.925869, 36.455196>,  <29.433369, 33.116726, 36.426147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575951, 32.925869, 36.455196>,  <29.813587, 32.607773, 36.503609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575951, 32.925869, 36.455196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497142, 0.481275, 0.721958,
		0.632382, 0.368736, -0.681268,
		-0.594090, 0.795241, -0.121035,
		29.397724, 33.164440, 36.418884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091040, 33.309925, 36.417336>,  <29.813587, 32.607773, 36.503609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091040, 33.309925, 36.417336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734995, 33.340355, 36.597076>,  <29.521368, 33.358612, 36.704922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734995, 33.340355, 36.597076>,  <30.091040, 33.309925, 36.417336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734995, 33.340355, 36.597076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423206, 0.503844, 0.753019,
		-0.169115, 0.860438, -0.480673,
		-0.890111, 0.076077, 0.449350,
		29.467962, 33.363178, 36.731880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674778, 33.942966, 36.479252>,  <30.091040, 33.309925, 36.417336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674778, 33.942966, 36.479252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675821, 33.728371, 36.816811>,  <29.676447, 33.599613, 37.019348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675821, 33.728371, 36.816811>,  <29.674778, 33.942966, 36.479252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675821, 33.728371, 36.816811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445405, 0.756195, 0.479358,
		-0.895326, 0.374627, 0.240929,
		0.002609, -0.536492, 0.843902,
		29.676603, 33.567425, 37.069981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373190, 34.305611, 37.115822>,  <29.674778, 33.942966, 36.479252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373190, 34.305611, 37.115822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646126, 34.025608, 37.200111>,  <29.809887, 33.857609, 37.250687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646126, 34.025608, 37.200111>,  <29.373190, 34.305611, 37.115822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646126, 34.025608, 37.200111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534125, 0.674196, 0.510069,
		-0.499120, -0.235488, 0.833921,
		0.682342, -0.700004, 0.210725,
		29.850828, 33.815605, 37.263329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501034, 34.317970, 37.906349>,  <29.373190, 34.305611, 37.115822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501034, 34.317970, 37.906349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815880, 34.156944, 37.719421>,  <30.004787, 34.060329, 37.607265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.815880, 34.156944, 37.719421>,  <29.501034, 34.317970, 37.906349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815880, 34.156944, 37.719421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615603, 0.559970, 0.554496,
		0.038468, -0.724139, 0.688580,
		0.787117, -0.402562, -0.467323,
		30.052015, 34.036175, 37.579224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930183, 34.381893, 38.348316>,  <29.501034, 34.317970, 37.906349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930183, 34.381893, 38.348316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164864, 34.312824, 38.031845>,  <30.305672, 34.271381, 37.841961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164864, 34.312824, 38.031845>,  <29.930183, 34.381893, 38.348316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164864, 34.312824, 38.031845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719493, 0.559516, 0.411426,
		0.371635, -0.810632, 0.452508,
		0.586701, -0.172676, -0.791180,
		30.340874, 34.261021, 37.794491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528933, 34.231621, 38.606441>,  <29.930183, 34.381893, 38.348316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528933, 34.231621, 38.606441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617481, 34.318008, 38.226051>,  <30.670610, 34.369843, 37.997818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617481, 34.318008, 38.226051>,  <30.528933, 34.231621, 38.606441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617481, 34.318008, 38.226051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639968, 0.703634, 0.308773,
		0.735822, -0.676947, 0.017554,
		0.221374, 0.215968, -0.950974,
		30.683893, 34.382797, 37.940758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211330, 34.388489, 38.598019>,  <30.528933, 34.231621, 38.606441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211330, 34.388489, 38.598019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063564, 34.555412, 38.265903>,  <30.974905, 34.655567, 38.066635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063564, 34.555412, 38.265903>,  <31.211330, 34.388489, 38.598019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063564, 34.555412, 38.265903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560501, 0.812727, 0.159102,
		0.741195, -0.406605, -0.534136,
		-0.369415, 0.417310, -0.830292,
		30.952740, 34.680607, 38.016815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809614, 34.765907, 38.401882>,  <31.211330, 34.388489, 38.598019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809614, 34.765907, 38.401882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512629, 34.921318, 38.183598>,  <31.334436, 35.014565, 38.052628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512629, 34.921318, 38.183598>,  <31.809614, 34.765907, 38.401882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512629, 34.921318, 38.183598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278610, 0.919925, 0.275887,
		0.609200, 0.052796, -0.791257,
		-0.742464, 0.388522, -0.545709,
		31.289890, 35.037876, 38.019886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032303, 35.295025, 37.851875>,  <31.809614, 34.765907, 38.401882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032303, 35.295025, 37.851875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654791, 35.384312, 37.949398>,  <31.428282, 35.437885, 38.007912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654791, 35.384312, 37.949398>,  <32.032303, 35.295025, 37.851875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654791, 35.384312, 37.949398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260419, 0.956364, 0.132478,
		-0.203599, 0.188524, -0.960732,
		-0.943784, 0.223221, 0.243810,
		31.371656, 35.451279, 38.022541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949348, 36.081680, 37.658173>,  <32.032303, 35.295025, 37.851875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949348, 36.081680, 37.658173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625694, 35.990780, 37.874931>,  <31.431501, 35.936241, 38.004986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625694, 35.990780, 37.874931>,  <31.949348, 36.081680, 37.658173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625694, 35.990780, 37.874931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089339, 0.863899, 0.495679,
		-0.580791, 0.449484, -0.678709,
		-0.809136, -0.227250, 0.541901,
		31.382954, 35.922604, 38.037502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596495, 36.752182, 37.776691>,  <31.949348, 36.081680, 37.658173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596495, 36.752182, 37.776691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430546, 36.521065, 38.057842>,  <31.330976, 36.382393, 38.226532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430546, 36.521065, 38.057842>,  <31.596495, 36.752182, 37.776691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430546, 36.521065, 38.057842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004516, 0.773792, 0.633423,
		-0.909869, 0.259614, -0.323633,
		-0.414870, -0.577794, 0.702878,
		31.306086, 36.347725, 38.268707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099821, 37.131775, 38.010071>,  <31.596495, 36.752182, 37.776691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099821, 37.131775, 38.010071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150375, 36.869583, 38.307896>,  <31.180708, 36.712269, 38.486591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.150375, 36.869583, 38.307896>,  <31.099821, 37.131775, 38.010071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.150375, 36.869583, 38.307896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063237, 0.743727, 0.665486,
		-0.989963, -0.131192, 0.052547,
		0.126387, -0.655484, 0.744559,
		31.188292, 36.672939, 38.531261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486801, 37.054905, 38.465611>,  <31.099821, 37.131775, 38.010071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486801, 37.054905, 38.465611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807114, 36.956562, 38.684078>,  <30.999302, 36.897556, 38.815159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.807114, 36.956562, 38.684078>,  <30.486801, 37.054905, 38.465611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807114, 36.956562, 38.684078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068780, 0.868097, 0.491607,
		-0.594995, -0.431235, 0.678245,
		0.800781, -0.245854, 0.546174,
		31.047348, 36.882805, 38.847931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366186, 37.408470, 39.015579>,  <30.486801, 37.054905, 38.465611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366186, 37.408470, 39.015579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743484, 37.306931, 39.101227>,  <30.969864, 37.246006, 39.152615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743484, 37.306931, 39.101227>,  <30.366186, 37.408470, 39.015579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743484, 37.306931, 39.101227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029233, 0.705720, 0.707887,
		-0.330805, -0.661453, 0.673089,
		0.943246, -0.253849, 0.214120,
		31.026459, 37.230778, 39.165462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321821, 37.359779, 39.689556>,  <30.366186, 37.408470, 39.015579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321821, 37.359779, 39.689556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707851, 37.417534, 39.602123>,  <30.939470, 37.452187, 39.549664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.707851, 37.417534, 39.602123>,  <30.321821, 37.359779, 39.689556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707851, 37.417534, 39.602123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008581, 0.816530, 0.577239,
		0.261825, -0.558955, 0.786776,
		0.965077, 0.144384, -0.218585,
		30.997375, 37.460850, 39.536549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650187, 37.396542, 40.344391>,  <30.321821, 37.359779, 39.689556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650187, 37.396542, 40.344391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841663, 37.602863, 40.060192>,  <30.956551, 37.726654, 39.889675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841663, 37.602863, 40.060192>,  <30.650187, 37.396542, 40.344391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841663, 37.602863, 40.060192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000914, 0.809528, 0.587080,
		0.877983, -0.280381, 0.387986,
		0.478692, 0.515801, -0.710495,
		30.985271, 37.757603, 39.847042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704897, 37.137463, 41.010609>,  <30.650187, 37.396542, 40.344391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704897, 37.137463, 41.010609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954712, 37.449860, 41.011517>,  <31.104601, 37.637299, 41.012062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954712, 37.449860, 41.011517>,  <30.704897, 37.137463, 41.010609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954712, 37.449860, 41.011517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214279, 0.168558, 0.962119,
		0.751023, -0.601367, 0.272621,
		0.624539, 0.780991, 0.002269,
		31.142073, 37.684158, 41.012196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290100, 37.105045, 41.471775>,  <30.704897, 37.137463, 41.010609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290100, 37.105045, 41.471775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285589, 37.503582, 41.437893>,  <31.282883, 37.742702, 41.417564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285589, 37.503582, 41.437893>,  <31.290100, 37.105045, 41.471775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285589, 37.503582, 41.437893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068674, 0.085282, 0.993987,
		0.997576, 0.005393, -0.069385,
		-0.011278, 0.996342, -0.084705,
		31.282206, 37.802486, 41.412483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766329, 37.318882, 42.030651>,  <31.290100, 37.105045, 41.471775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766329, 37.318882, 42.030651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543974, 37.634399, 41.925735>,  <31.410561, 37.823711, 41.862785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.543974, 37.634399, 41.925735>,  <31.766329, 37.318882, 42.030651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543974, 37.634399, 41.925735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040822, 0.341058, 0.939156,
		0.830256, 0.511356, -0.221789,
		-0.555885, 0.788794, -0.262291,
		31.377209, 37.871037, 41.847050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080750, 37.927753, 42.419472>,  <31.766329, 37.318882, 42.030651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080750, 37.927753, 42.419472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716234, 38.066273, 42.330360>,  <31.497524, 38.149384, 42.276894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716234, 38.066273, 42.330360>,  <32.080750, 37.927753, 42.419472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716234, 38.066273, 42.330360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086205, 0.368600, 0.925583,
		0.402644, 0.862677, -0.306048,
		-0.911288, 0.346298, -0.222781,
		31.442848, 38.170162, 42.263527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985023, 38.564194, 42.670010>,  <32.080750, 37.927753, 42.419472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985023, 38.564194, 42.670010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599051, 38.472664, 42.618565>,  <31.367466, 38.417747, 42.587700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599051, 38.472664, 42.618565>,  <31.985023, 38.564194, 42.670010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599051, 38.472664, 42.618565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179987, 0.220142, 0.958719,
		-0.191065, 0.948249, -0.253607,
		-0.964935, -0.228824, -0.128611,
		31.309570, 38.404018, 42.579983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582460, 39.199539, 42.897625>,  <31.985023, 38.564194, 42.670010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582460, 39.199539, 42.897625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378407, 38.856003, 42.916187>,  <31.255974, 38.649879, 42.927326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378407, 38.856003, 42.916187>,  <31.582460, 39.199539, 42.897625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378407, 38.856003, 42.916187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053642, 0.085621, 0.994883,
		-0.858421, 0.505033, -0.089748,
		-0.510133, -0.858843, 0.046407,
		31.225367, 38.598351, 42.930111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923979, 39.339169, 43.328178>,  <31.582460, 39.199539, 42.897625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923979, 39.339169, 43.328178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010704, 38.949444, 43.352547>,  <31.062740, 38.715611, 43.367168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010704, 38.949444, 43.352547>,  <30.923979, 39.339169, 43.328178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010704, 38.949444, 43.352547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035761, 0.070292, 0.996885,
		-0.975558, -0.213960, 0.050083,
		0.216814, -0.974310, 0.060922,
		31.075748, 38.657150, 43.370823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433079, 39.092224, 43.850407>,  <30.923979, 39.339169, 43.328178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433079, 39.092224, 43.850407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719904, 38.813446, 43.846729>,  <30.891998, 38.646179, 43.844521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719904, 38.813446, 43.846729>,  <30.433079, 39.092224, 43.850407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719904, 38.813446, 43.846729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084071, -0.099581, 0.991471,
		-0.691921, -0.710173, -0.129999,
		0.717062, -0.696949, -0.009197,
		30.935022, 38.604362, 43.843971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.160210, 38.669804, 44.297756>,  <30.433079, 39.092224, 43.850407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.160210, 38.669804, 44.297756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546707, 38.568245, 44.315243>,  <30.778606, 38.507309, 44.325733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546707, 38.568245, 44.315243>,  <30.160210, 38.669804, 44.297756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546707, 38.568245, 44.315243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067317, -0.085021, 0.994103,
		-0.248683, -0.963487, -0.099242,
		0.966243, -0.253897, 0.043716,
		30.836580, 38.492077, 44.328358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295610, 38.040668, 44.776131>,  <30.160210, 38.669804, 44.297756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295610, 38.040668, 44.776131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654100, 38.217373, 44.760021>,  <30.869194, 38.323395, 44.750355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.654100, 38.217373, 44.760021>,  <30.295610, 38.040668, 44.776131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654100, 38.217373, 44.760021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170901, -0.260067, 0.950346,
		0.409354, -0.858609, -0.308577,
		0.896227, 0.441764, -0.040278,
		30.922968, 38.349903, 44.747936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671524, 37.566681, 45.229359>,  <30.295610, 38.040668, 44.776131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671524, 37.566681, 45.229359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885073, 37.903580, 45.199421>,  <31.013203, 38.105717, 45.181458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885073, 37.903580, 45.199421>,  <30.671524, 37.566681, 45.229359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885073, 37.903580, 45.199421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292541, -0.100930, 0.950912,
		0.793347, -0.529562, -0.300275,
		0.533874, 0.842245, -0.074846,
		31.045235, 38.156254, 45.176968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302256, 37.419170, 45.562534>,  <30.671524, 37.566681, 45.229359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302256, 37.419170, 45.562534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311235, 37.818863, 45.549667>,  <31.316624, 38.058678, 45.541946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.311235, 37.818863, 45.549667>,  <31.302256, 37.419170, 45.562534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311235, 37.818863, 45.549667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270142, 0.024912, 0.962498,
		0.962559, -0.030297, -0.269375,
		0.022450, 0.999230, -0.032164,
		31.317970, 38.118633, 45.540020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971472, 37.605442, 45.737843>,  <31.302256, 37.419170, 45.562534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971472, 37.605442, 45.737843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737267, 37.912663, 45.841583>,  <31.596743, 38.096996, 45.903828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737267, 37.912663, 45.841583>,  <31.971472, 37.605442, 45.737843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737267, 37.912663, 45.841583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474779, 0.065580, 0.877658,
		0.657082, 0.637017, -0.403055,
		-0.585515, 0.768055, 0.259351,
		31.561611, 38.143078, 45.919388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380478, 37.969719, 46.062904>,  <31.971472, 37.605442, 45.737843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380478, 37.969719, 46.062904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019741, 38.103100, 46.172802>,  <31.803299, 38.183128, 46.238739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.019741, 38.103100, 46.172802>,  <32.380478, 37.969719, 46.062904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019741, 38.103100, 46.172802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316078, 0.075651, 0.945712,
		0.294565, 0.939727, -0.173622,
		-0.901846, 0.333452, 0.274743,
		31.749187, 38.203136, 46.255226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507416, 38.425068, 46.641647>,  <32.380478, 37.969719, 46.062904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507416, 38.425068, 46.641647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123199, 38.348129, 46.722012>,  <31.892670, 38.301964, 46.770229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123199, 38.348129, 46.722012>,  <32.507416, 38.425068, 46.641647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123199, 38.348129, 46.722012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215678, -0.058974, 0.974682,
		-0.175630, 0.979553, 0.098132,
		-0.960540, -0.192348, 0.200910,
		31.835037, 38.290424, 46.782284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203094, 38.822319, 47.128632>,  <32.507416, 38.425068, 46.641647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203094, 38.822319, 47.128632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980127, 38.491554, 47.158295>,  <31.846348, 38.293095, 47.176094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980127, 38.491554, 47.158295>,  <32.203094, 38.822319, 47.128632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980127, 38.491554, 47.158295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026806, 0.107204, 0.993876,
		-0.829801, 0.552014, -0.081924,
		-0.557415, -0.826915, 0.074160,
		31.812902, 38.243481, 47.180542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721766, 38.967236, 47.655289>,  <32.203094, 38.822319, 47.128632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721766, 38.967236, 47.655289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664494, 38.571365, 47.652569>,  <31.630131, 38.333843, 47.650936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664494, 38.571365, 47.652569>,  <31.721766, 38.967236, 47.655289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664494, 38.571365, 47.652569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067130, 0.002854, 0.997740,
		-0.987417, 0.143314, -0.066845,
		-0.143181, -0.989673, -0.006802,
		31.621540, 38.274464, 47.650528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192081, 38.874512, 48.067329>,  <31.721766, 38.967236, 47.655289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192081, 38.874512, 48.067329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382925, 38.523430, 48.049461>,  <31.497431, 38.312778, 48.038742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382925, 38.523430, 48.049461>,  <31.192081, 38.874512, 48.067329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382925, 38.523430, 48.049461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066943, -0.086972, 0.993959,
		-0.876292, -0.471235, -0.100251,
		0.477107, -0.877709, -0.044667,
		31.526058, 38.260117, 48.036060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883427, 38.593575, 48.636719>,  <31.192081, 38.874512, 48.067329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883427, 38.593575, 48.636719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177128, 38.342197, 48.534008>,  <31.353348, 38.191372, 48.472382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177128, 38.342197, 48.534008>,  <30.883427, 38.593575, 48.636719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177128, 38.342197, 48.534008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225912, -0.130491, 0.965368,
		-0.640185, -0.766832, 0.046160,
		0.734252, -0.628443, -0.256775,
		31.397404, 38.153664, 48.456974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780905, 37.895370, 49.031258>,  <30.883427, 38.593575, 48.636719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780905, 37.895370, 49.031258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167307, 37.919529, 48.930706>,  <31.399147, 37.934025, 48.870377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167307, 37.919529, 48.930706>,  <30.780905, 37.895370, 49.031258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167307, 37.919529, 48.930706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256241, -0.094586, 0.961974,
		0.034328, -0.993683, -0.106847,
		0.966003, 0.060402, -0.251376,
		31.457108, 37.937649, 48.855293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140139, 37.410511, 49.442661>,  <30.780905, 37.895370, 49.031258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140139, 37.410511, 49.442661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430504, 37.665138, 49.338482>,  <31.604723, 37.817913, 49.275974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430504, 37.665138, 49.338482>,  <31.140139, 37.410511, 49.442661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430504, 37.665138, 49.338482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251886, 0.106319, 0.961899,
		0.640002, -0.763859, -0.083164,
		0.725914, 0.636565, -0.260450,
		31.648277, 37.856110, 49.260345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676554, 37.224697, 49.866398>,  <31.140139, 37.410511, 49.442661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676554, 37.224697, 49.866398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786024, 37.589214, 49.743340>,  <31.851706, 37.807926, 49.669506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786024, 37.589214, 49.743340>,  <31.676554, 37.224697, 49.866398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786024, 37.589214, 49.743340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526735, 0.125628, 0.840695,
		0.804769, -0.392124, -0.445630,
		0.273674, 0.911294, -0.307647,
		31.868126, 37.862602, 49.651047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350403, 37.215378, 49.943565>,  <31.676554, 37.224697, 49.866398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350403, 37.215378, 49.943565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209915, 37.589649, 49.957142>,  <32.125622, 37.814213, 49.965286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209915, 37.589649, 49.957142>,  <32.350403, 37.215378, 49.943565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209915, 37.589649, 49.957142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495740, 0.155087, 0.854512,
		0.794283, 0.316949, -0.518322,
		-0.351222, 0.935677, 0.033941,
		32.104549, 37.870354, 49.967323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891685, 37.537888, 50.298191>,  <32.350403, 37.215378, 49.943565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891685, 37.537888, 50.298191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551674, 37.747730, 50.317150>,  <32.347668, 37.873634, 50.328526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551674, 37.747730, 50.317150>,  <32.891685, 37.537888, 50.298191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551674, 37.747730, 50.317150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283951, 0.380573, 0.880077,
		0.443653, 0.761548, -0.472459,
		-0.850026, 0.524604, 0.047399,
		32.296665, 37.905113, 50.331371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017975, 38.234158, 50.519581>,  <32.891685, 37.537888, 50.298191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017975, 38.234158, 50.519581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637203, 38.200943, 50.637520>,  <32.408741, 38.181015, 50.708282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637203, 38.200943, 50.637520>,  <33.017975, 38.234158, 50.519581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637203, 38.200943, 50.637520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216864, 0.497099, 0.840156,
		-0.216330, 0.863711, -0.455196,
		-0.951930, -0.083035, 0.294845,
		32.351624, 38.176033, 50.725975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976299, 38.795868, 50.826649>,  <33.017975, 38.234158, 50.519581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976299, 38.795868, 50.826649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661125, 38.596497, 50.971268>,  <32.472019, 38.476875, 51.058041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661125, 38.596497, 50.971268>,  <32.976299, 38.795868, 50.826649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661125, 38.596497, 50.971268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121607, 0.449643, 0.884892,
		-0.603625, 0.741209, -0.293679,
		-0.787940, -0.498429, 0.361552,
		32.424744, 38.446968, 51.079735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702854, 39.215656, 51.244434>,  <32.976299, 38.795868, 50.826649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702854, 39.215656, 51.244434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543629, 38.880901, 51.394718>,  <32.448093, 38.680046, 51.484890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543629, 38.880901, 51.394718>,  <32.702854, 39.215656, 51.244434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543629, 38.880901, 51.394718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020045, 0.417397, 0.908503,
		-0.917138, 0.354113, -0.182928,
		-0.398067, -0.836889, 0.375712,
		32.424210, 38.629833, 51.507431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152897, 39.470268, 51.495518>,  <32.702854, 39.215656, 51.244434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152897, 39.470268, 51.495518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251068, 39.126083, 51.674118>,  <32.309971, 38.919571, 51.781281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251068, 39.126083, 51.674118>,  <32.152897, 39.470268, 51.495518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251068, 39.126083, 51.674118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235517, 0.393865, 0.888483,
		-0.940370, -0.323218, -0.105989,
		0.245428, -0.860465, 0.446503,
		32.324696, 38.867943, 51.808067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419834, 39.612877, 52.216934>,  <32.152897, 39.470268, 51.495518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419834, 39.612877, 52.216934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405895, 39.215240, 52.258049>,  <32.397533, 38.976658, 52.282719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405895, 39.215240, 52.258049>,  <32.419834, 39.612877, 52.216934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405895, 39.215240, 52.258049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128557, 0.097540, 0.986894,
		-0.991090, 0.047605, 0.124398,
		-0.034847, -0.994092, 0.102791,
		32.395443, 38.917011, 52.288887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544212, 39.432430, 52.961395>,  <32.419834, 39.612877, 52.216934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544212, 39.432430, 52.961395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428734, 39.076523, 52.819996>,  <32.359447, 38.862976, 52.735157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428734, 39.076523, 52.819996>,  <32.544212, 39.432430, 52.961395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428734, 39.076523, 52.819996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040234, -0.357616, 0.933001,
		-0.956574, 0.283580, 0.067445,
		-0.288699, -0.889771, -0.353496,
		32.342125, 38.809593, 52.713947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019653, 39.168144, 53.357559>,  <32.544212, 39.432430, 52.961395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019653, 39.168144, 53.357559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182423, 38.850407, 53.177143>,  <32.280083, 38.659763, 53.068893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182423, 38.850407, 53.177143>,  <32.019653, 39.168144, 53.357559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182423, 38.850407, 53.177143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151652, -0.545665, 0.824167,
		-0.900788, -0.266968, -0.342505,
		0.406919, -0.794341, -0.451042,
		32.304497, 38.612103, 53.041832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659609, 38.602009, 53.479050>,  <32.019653, 39.168144, 53.357559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659609, 38.602009, 53.479050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999830, 38.423656, 53.367512>,  <32.203964, 38.316647, 53.300591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.999830, 38.423656, 53.367512>,  <31.659609, 38.602009, 53.479050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999830, 38.423656, 53.367512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079128, -0.632701, 0.770343,
		-0.519900, -0.633155, -0.573427,
		0.850554, -0.445875, -0.278841,
		32.254997, 38.289894, 53.283859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523108, 37.788406, 53.337387>,  <31.659609, 38.602009, 53.479050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523108, 37.788406, 53.337387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893126, 37.897369, 53.443283>,  <32.115135, 37.962746, 53.506821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893126, 37.897369, 53.443283>,  <31.523108, 37.788406, 53.337387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893126, 37.897369, 53.443283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020546, -0.660036, 0.750953,
		0.379299, -0.700105, -0.604967,
		0.925046, 0.272406, 0.264736,
		32.170639, 37.979092, 53.522705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052685, 37.231274, 53.433754>,  <31.523108, 37.788406, 53.337387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052685, 37.231274, 53.433754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101147, 37.535221, 53.689228>,  <32.130226, 37.717590, 53.842510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101147, 37.535221, 53.689228>,  <32.052685, 37.231274, 53.433754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101147, 37.535221, 53.689228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173686, -0.617266, 0.767343,
		0.977320, -0.203901, 0.057191,
		0.121159, 0.759873, 0.638681,
		32.137493, 37.763184, 53.880833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626560, 37.156387, 53.937408>,  <32.052685, 37.231274, 53.433754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626560, 37.156387, 53.937408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293442, 37.354687, 54.035934>,  <32.093571, 37.473667, 54.095051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293442, 37.354687, 54.035934>,  <32.626560, 37.156387, 53.937408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293442, 37.354687, 54.035934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212109, -0.696772, 0.685215,
		0.511325, 0.518401, 0.685425,
		-0.832801, 0.495752, 0.246319,
		32.043602, 37.503414, 54.109829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873734, 36.620857, 53.587605>,  <32.626560, 37.156387, 53.937408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873734, 36.620857, 53.587605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571198, 36.716938, 53.344212>,  <32.389675, 36.774586, 53.198177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571198, 36.716938, 53.344212>,  <32.873734, 36.620857, 53.587605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571198, 36.716938, 53.344212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435155, 0.509775, 0.742138,
		0.488450, 0.826095, -0.281041,
		-0.756344, 0.240201, -0.608479,
		32.344296, 36.788998, 53.161667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760056, 35.921169, 53.597805>,  <32.873734, 36.620857, 53.587605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760056, 35.921169, 53.597805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368423, 35.928455, 53.516747>,  <32.133442, 35.932827, 53.468113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368423, 35.928455, 53.516747>,  <32.760056, 35.921169, 53.597805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368423, 35.928455, 53.516747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189549, -0.280336, -0.941001,
		-0.073945, -0.959729, 0.271021,
		-0.979083, 0.018210, -0.202645,
		32.074699, 35.933918, 53.455952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539818, 35.254951, 53.424168>,  <32.760056, 35.921169, 53.597805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539818, 35.254951, 53.424168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359539, 35.555603, 53.231529>,  <32.251373, 35.735992, 53.115948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359539, 35.555603, 53.231529>,  <32.539818, 35.254951, 53.424168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359539, 35.555603, 53.231529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431572, -0.288791, -0.854602,
		-0.781422, -0.593006, -0.194225,
		-0.450694, 0.751627, -0.481593,
		32.224331, 35.781090, 53.087051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132492, 34.970612, 52.768150>,  <32.539818, 35.254951, 53.424168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132492, 34.970612, 52.768150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202724, 35.359909, 52.708855>,  <32.244865, 35.593487, 52.673275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202724, 35.359909, 52.708855>,  <32.132492, 34.970612, 52.768150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202724, 35.359909, 52.708855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208467, -0.183922, -0.960580,
		-0.962140, 0.137755, -0.235181,
		0.175580, 0.973240, -0.148242,
		32.255398, 35.651882, 52.664383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929976, 35.052315, 52.171993>,  <32.132492, 34.970612, 52.768150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929976, 35.052315, 52.171993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138424, 35.389790, 52.223564>,  <32.263493, 35.592274, 52.254505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138424, 35.389790, 52.223564>,  <31.929976, 35.052315, 52.171993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138424, 35.389790, 52.223564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198645, 0.027013, -0.979699,
		-0.830044, 0.536152, -0.153517,
		0.521121, 0.843689, 0.128926,
		32.294762, 35.642895, 52.262241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755642, 35.496117, 51.660824>,  <31.929976, 35.052315, 52.171993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755642, 35.496117, 51.660824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115398, 35.618774, 51.785442>,  <32.331253, 35.692371, 51.860214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115398, 35.618774, 51.785442>,  <31.755642, 35.496117, 51.660824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115398, 35.618774, 51.785442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317968, 0.030156, -0.947622,
		-0.299982, 0.951345, -0.070382,
		0.899393, 0.306648, 0.311544,
		32.385216, 35.710770, 51.878906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832697, 36.042435, 51.311996>,  <31.755642, 35.496117, 51.660824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832697, 36.042435, 51.311996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204834, 35.936020, 51.412937>,  <32.428116, 35.872169, 51.473503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204834, 35.936020, 51.412937>,  <31.832697, 36.042435, 51.311996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204834, 35.936020, 51.412937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288368, 0.105708, -0.951667,
		0.226507, 0.958148, 0.175062,
		0.930343, -0.266041, 0.252356,
		32.483936, 35.856209, 51.488644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284943, 36.510605, 50.895550>,  <31.832697, 36.042435, 51.311996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284943, 36.510605, 50.895550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505695, 36.203278, 51.025234>,  <32.638145, 36.018883, 51.103043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505695, 36.203278, 51.025234>,  <32.284943, 36.510605, 50.895550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505695, 36.203278, 51.025234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416564, -0.082805, -0.905327,
		0.722426, 0.634688, 0.274355,
		0.551883, -0.768319, 0.324210,
		32.671261, 35.972782, 51.122498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956211, 36.599655, 50.641655>,  <32.284943, 36.510605, 50.895550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956211, 36.599655, 50.641655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939384, 36.207737, 50.719875>,  <32.929287, 35.972588, 50.766808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939384, 36.207737, 50.719875>,  <32.956211, 36.599655, 50.641655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939384, 36.207737, 50.719875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434712, -0.194177, -0.879386,
		0.899586, 0.048012, 0.434096,
		-0.042071, -0.979791, 0.195551,
		32.926762, 35.913799, 50.778542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595646, 36.390347, 50.438828>,  <32.956211, 36.599655, 50.641655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595646, 36.390347, 50.438828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360920, 36.066608, 50.448704>,  <33.220085, 35.872364, 50.454632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360920, 36.066608, 50.448704>,  <33.595646, 36.390347, 50.438828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360920, 36.066608, 50.448704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377659, -0.300541, -0.875813,
		0.716259, -0.504610, 0.482018,
		-0.586810, -0.809348, 0.024695,
		33.184875, 35.823803, 50.456112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007458, 35.816063, 50.232536>,  <33.595646, 36.390347, 50.438828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007458, 35.816063, 50.232536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640450, 35.665413, 50.181438>,  <33.420246, 35.575024, 50.150780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.640450, 35.665413, 50.181438>,  <34.007458, 35.816063, 50.232536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640450, 35.665413, 50.181438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324005, -0.521638, -0.789249,
		0.230612, -0.765539, 0.600639,
		-0.917517, -0.376621, -0.127743,
		33.365192, 35.552425, 50.143116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080109, 35.175003, 49.888016>,  <34.007458, 35.816063, 50.232536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080109, 35.175003, 49.888016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689247, 35.220612, 49.816269>,  <33.454731, 35.247978, 49.773220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689247, 35.220612, 49.816269>,  <34.080109, 35.175003, 49.888016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689247, 35.220612, 49.816269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122459, -0.387746, -0.913596,
		-0.173721, -0.914687, 0.364923,
		-0.977151, 0.114022, -0.179371,
		33.396103, 35.254818, 49.762459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902683, 34.533215, 49.576500>,  <34.080109, 35.175003, 49.888016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902683, 34.533215, 49.576500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655628, 34.827927, 49.466457>,  <33.507397, 35.004753, 49.400433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655628, 34.827927, 49.466457>,  <33.902683, 34.533215, 49.576500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655628, 34.827927, 49.466457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052478, -0.387637, -0.920317,
		-0.784710, -0.553985, 0.278083,
		-0.617637, 0.736776, -0.275111,
		33.470337, 35.048958, 49.383923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539646, 34.241058, 49.073570>,  <33.902683, 34.533215, 49.576500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539646, 34.241058, 49.073570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423347, 34.617714, 49.005707>,  <33.353569, 34.843708, 48.964989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423347, 34.617714, 49.005707>,  <33.539646, 34.241058, 49.073570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423347, 34.617714, 49.005707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279426, -0.253150, -0.926195,
		-0.915090, -0.221877, 0.336720,
		-0.290742, 0.941640, -0.169657,
		33.336124, 34.900208, 48.954811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893734, 34.188232, 48.787724>,  <33.539646, 34.241058, 49.073570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893734, 34.188232, 48.787724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005470, 34.556835, 48.679794>,  <33.072514, 34.777996, 48.615036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005470, 34.556835, 48.679794>,  <32.893734, 34.188232, 48.787724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005470, 34.556835, 48.679794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426914, -0.132510, -0.894531,
		-0.860066, 0.365068, 0.356387,
		0.279339, 0.921502, -0.269820,
		33.089272, 34.833286, 48.598850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249485, 34.702995, 48.502552>,  <32.893734, 34.188232, 48.787724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249485, 34.702995, 48.502552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606331, 34.801102, 48.350777>,  <32.820438, 34.859966, 48.259712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606331, 34.801102, 48.350777>,  <32.249485, 34.702995, 48.502552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606331, 34.801102, 48.350777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389690, -0.007271, -0.920917,
		-0.228631, 0.969428, 0.089092,
		0.892115, 0.245268, -0.379439,
		32.873966, 34.874683, 48.236946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063282, 35.169716, 47.970669>,  <32.249485, 34.702995, 48.502552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063282, 35.169716, 47.970669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449211, 35.087399, 47.905228>,  <32.680767, 35.038006, 47.865963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449211, 35.087399, 47.905228>,  <32.063282, 35.169716, 47.970669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449211, 35.087399, 47.905228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174448, -0.035597, -0.984023,
		0.196685, 0.977947, -0.070246,
		0.964823, -0.205797, -0.163600,
		32.738659, 35.025658, 47.856148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279758, 35.583870, 47.513119>,  <32.063282, 35.169716, 47.970669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279758, 35.583870, 47.513119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571472, 35.312321, 47.478996>,  <32.746502, 35.149391, 47.458523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571472, 35.312321, 47.478996>,  <32.279758, 35.583870, 47.513119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571472, 35.312321, 47.478996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100072, 0.017501, -0.994826,
		0.676852, 0.734049, -0.055173,
		0.729285, -0.678871, -0.085303,
		32.790257, 35.108658, 47.453407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561222, 35.755608, 46.816635>,  <32.279758, 35.583870, 47.513119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561222, 35.755608, 46.816635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696896, 35.392239, 46.914394>,  <32.778301, 35.174217, 46.973049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696896, 35.392239, 46.914394>,  <32.561222, 35.755608, 46.816635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696896, 35.392239, 46.914394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060749, -0.280405, -0.957958,
		0.938756, 0.310078, -0.150295,
		0.339185, -0.908419, 0.244395,
		32.798653, 35.119713, 46.987713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185638, 35.581944, 46.408379>,  <32.561222, 35.755608, 46.816635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185638, 35.581944, 46.408379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014805, 35.239861, 46.525833>,  <32.912304, 35.034611, 46.596306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014805, 35.239861, 46.525833>,  <33.185638, 35.581944, 46.408379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014805, 35.239861, 46.525833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280226, -0.183564, -0.942220,
		0.859691, -0.484694, -0.161253,
		-0.427088, -0.855205, 0.293632,
		32.886677, 34.983299, 46.613922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483974, 35.022846, 46.035553>,  <33.185638, 35.581944, 46.408379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483974, 35.022846, 46.035553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128769, 34.870464, 46.138550>,  <32.915646, 34.779037, 46.200348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128769, 34.870464, 46.138550>,  <33.483974, 35.022846, 46.035553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128769, 34.870464, 46.138550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217254, -0.145919, -0.965147,
		0.405245, -0.913008, 0.046815,
		-0.888019, -0.380951, 0.257488,
		32.862362, 34.756180, 46.215797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447590, 34.351986, 45.759396>,  <33.483974, 35.022846, 46.035553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447590, 34.351986, 45.759396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062286, 34.451214, 45.800568>,  <32.831104, 34.510750, 45.825272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062286, 34.451214, 45.800568>,  <33.447590, 34.351986, 45.759396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062286, 34.451214, 45.800568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149807, -0.178165, -0.972530,
		-0.222915, -0.952218, 0.208781,
		-0.963259, 0.248069, 0.102933,
		32.773308, 34.525635, 45.831448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024605, 33.755367, 45.510620>,  <33.447590, 34.351986, 45.759396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024605, 33.755367, 45.510620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794189, 34.081596, 45.488598>,  <32.655941, 34.277332, 45.475384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794189, 34.081596, 45.488598>,  <33.024605, 33.755367, 45.510620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794189, 34.081596, 45.488598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424526, -0.356044, -0.832472,
		-0.698542, -0.456159, 0.551324,
		-0.576035, 0.815569, -0.055060,
		32.621380, 34.326267, 45.472080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301891, 33.491547, 45.280952>,  <33.024605, 33.755367, 45.510620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301891, 33.491547, 45.280952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269993, 33.888329, 45.241608>,  <32.250854, 34.126396, 45.218002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.269993, 33.888329, 45.241608>,  <32.301891, 33.491547, 45.280952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269993, 33.888329, 45.241608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552975, -0.126122, -0.823597,
		-0.829373, -0.011288, 0.558581,
		-0.079747, 0.991951, -0.098360,
		32.246067, 34.185913, 45.212101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660799, 33.520828, 45.187363>,  <32.301891, 33.491547, 45.280952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660799, 33.520828, 45.187363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824579, 33.861912, 45.057602>,  <31.922848, 34.066563, 44.979744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824579, 33.861912, 45.057602>,  <31.660799, 33.520828, 45.187363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824579, 33.861912, 45.057602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532576, -0.065307, -0.843859,
		-0.740752, 0.518288, 0.427392,
		0.409450, 0.852709, -0.324404,
		31.947414, 34.117725, 44.960281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136551, 33.940472, 44.960365>,  <31.660799, 33.520828, 45.187363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136551, 33.940472, 44.960365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460838, 34.076855, 44.770004>,  <31.655411, 34.158684, 44.655788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460838, 34.076855, 44.770004>,  <31.136551, 33.940472, 44.960365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460838, 34.076855, 44.770004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430805, -0.202980, -0.879322,
		-0.396412, 0.917903, -0.017672,
		0.810719, 0.340960, -0.475900,
		31.704054, 34.179142, 44.627235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861881, 34.428581, 44.408760>,  <31.136551, 33.940472, 44.960365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861881, 34.428581, 44.408760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236050, 34.344639, 44.294956>,  <31.460550, 34.294273, 44.226673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236050, 34.344639, 44.294956>,  <30.861881, 34.428581, 44.408760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236050, 34.344639, 44.294956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286598, 0.021071, -0.957819,
		0.207002, 0.977505, -0.040435,
		0.935421, -0.209859, -0.284513,
		31.516676, 34.281681, 44.209602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898943, 34.786045, 43.789135>,  <30.861881, 34.428581, 44.408760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898943, 34.786045, 43.789135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184340, 34.505905, 43.780674>,  <31.355577, 34.337822, 43.775597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.184340, 34.505905, 43.780674>,  <30.898943, 34.786045, 43.789135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184340, 34.505905, 43.780674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191120, -0.165489, -0.967515,
		0.674096, 0.694354, -0.251925,
		0.713489, -0.700347, -0.021150,
		31.398386, 34.295799, 43.774330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307611, 34.936920, 43.160336>,  <30.898943, 34.786045, 43.789135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307611, 34.936920, 43.160336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415476, 34.566811, 43.267029>,  <31.480194, 34.344746, 43.331043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415476, 34.566811, 43.267029>,  <31.307611, 34.936920, 43.160336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415476, 34.566811, 43.267029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089748, -0.299933, -0.949729,
		0.958763, 0.232168, -0.163923,
		0.269663, -0.925277, 0.266729,
		31.496374, 34.289227, 43.347046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706797, 34.607437, 42.646606>,  <31.307611, 34.936920, 43.160336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706797, 34.607437, 42.646606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574165, 34.278339, 42.831280>,  <31.494587, 34.080883, 42.942085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.574165, 34.278339, 42.831280>,  <31.706797, 34.607437, 42.646606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574165, 34.278339, 42.831280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013712, -0.493518, -0.869627,
		0.943328, -0.282019, 0.174922,
		-0.331579, -0.822742, 0.461682,
		31.474691, 34.031517, 42.969784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946486, 34.048267, 42.322510>,  <31.706797, 34.607437, 42.646606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946486, 34.048267, 42.322510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627075, 33.891445, 42.505219>,  <31.435429, 33.797352, 42.614845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627075, 33.891445, 42.505219>,  <31.946486, 34.048267, 42.322510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627075, 33.891445, 42.505219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229361, -0.503411, -0.833050,
		0.556550, -0.769979, 0.312064,
		-0.798527, -0.392059, 0.456776,
		31.387518, 33.773827, 42.642250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015411, 33.300495, 42.170647>,  <31.946486, 34.048267, 42.322510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015411, 33.300495, 42.170647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627375, 33.368179, 42.240269>,  <31.394552, 33.408791, 42.282043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627375, 33.368179, 42.240269>,  <32.015411, 33.300495, 42.170647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627375, 33.368179, 42.240269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239074, -0.541688, -0.805865,
		-0.042072, -0.823373, 0.565939,
		-0.970090, 0.169205, 0.174057,
		31.336348, 33.418941, 42.292484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692749, 32.693642, 42.120972>,  <32.015411, 33.300495, 42.170647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692749, 32.693642, 42.120972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407228, 32.962643, 42.042759>,  <31.235916, 33.124043, 41.995831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407228, 32.962643, 42.042759>,  <31.692749, 32.693642, 42.120972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407228, 32.962643, 42.042759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324581, -0.565061, -0.758521,
		-0.620593, -0.477966, 0.621621,
		-0.713801, 0.672499, -0.195534,
		31.193089, 33.164391, 41.984100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975349, 32.303078, 42.037067>,  <31.692749, 32.693642, 42.120972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975349, 32.303078, 42.037067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943798, 32.658894, 41.857067>,  <30.924868, 32.872383, 41.749065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943798, 32.658894, 41.857067>,  <30.975349, 32.303078, 42.037067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943798, 32.658894, 41.857067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202674, -0.456290, -0.866443,
		-0.976064, 0.022860, 0.216278,
		-0.078878, 0.889538, -0.450001,
		30.920135, 32.925755, 41.722065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704622, 32.084621, 41.431511>,  <30.975349, 32.303078, 42.037067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704622, 32.084621, 41.431511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784782, 32.466702, 41.344398>,  <30.832878, 32.695950, 41.292133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.784782, 32.466702, 41.344398>,  <30.704622, 32.084621, 41.431511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.784782, 32.466702, 41.344398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062833, -0.209298, -0.975831,
		-0.977697, 0.209242, 0.018074,
		0.200402, 0.955203, -0.217777,
		30.844904, 32.753262, 41.279064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192621, 32.272987, 40.958347>,  <30.704622, 32.084621, 41.431511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192621, 32.272987, 40.958347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501894, 32.522991, 40.915352>,  <30.687458, 32.672993, 40.889553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.501894, 32.522991, 40.915352>,  <30.192621, 32.272987, 40.958347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501894, 32.522991, 40.915352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016946, -0.189793, -0.981678,
		-0.633956, 0.757196, -0.157336,
		0.773184, 0.625006, -0.107489,
		30.733849, 32.710495, 40.883106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006912, 32.715107, 40.377499>,  <30.192621, 32.272987, 40.958347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006912, 32.715107, 40.377499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404943, 32.722591, 40.416428>,  <30.643763, 32.727081, 40.439785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404943, 32.722591, 40.416428>,  <30.006912, 32.715107, 40.377499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404943, 32.722591, 40.416428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098161, -0.321539, -0.941795,
		0.013670, 0.946711, -0.321792,
		0.995077, 0.018713, 0.097326,
		30.703466, 32.728207, 40.445625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222795, 33.097240, 39.772327>,  <30.006912, 32.715107, 40.377499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222795, 33.097240, 39.772327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557762, 32.923477, 39.905010>,  <30.758741, 32.819218, 39.984619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557762, 32.923477, 39.905010>,  <30.222795, 33.097240, 39.772327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557762, 32.923477, 39.905010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308272, -0.125754, -0.942950,
		0.451338, 0.891895, 0.028608,
		0.837414, -0.434408, 0.331703,
		30.808987, 32.793156, 40.004520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816822, 33.421177, 39.442600>,  <30.222795, 33.097240, 39.772327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816822, 33.421177, 39.442600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949856, 33.062458, 39.559322>,  <31.029676, 32.847229, 39.629356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949856, 33.062458, 39.559322>,  <30.816822, 33.421177, 39.442600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949856, 33.062458, 39.559322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208791, -0.231723, -0.950111,
		0.919671, 0.376918, 0.110174,
		0.332584, -0.896793, 0.291806,
		31.049631, 32.793419, 39.646866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488651, 33.307587, 39.196915>,  <30.816822, 33.421177, 39.442600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488651, 33.307587, 39.196915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358484, 32.940929, 39.289757>,  <31.280384, 32.720936, 39.345463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358484, 32.940929, 39.289757>,  <31.488651, 33.307587, 39.196915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358484, 32.940929, 39.289757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285830, -0.329343, -0.899908,
		0.901334, -0.226504, 0.369178,
		-0.325419, -0.916640, 0.232106,
		31.260859, 32.665936, 39.359390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026054, 32.854145, 38.847019>,  <31.488651, 33.307587, 39.196915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026054, 32.854145, 38.847019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676481, 32.666958, 38.899567>,  <31.466738, 32.554646, 38.931095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676481, 32.666958, 38.899567>,  <32.026054, 32.854145, 38.847019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676481, 32.666958, 38.899567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069357, -0.147446, -0.986635,
		0.481081, -0.871360, 0.096400,
		-0.873928, -0.467966, 0.131368,
		31.414303, 32.526569, 38.938976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651150, 33.140030, 39.006897>,  <32.026054, 32.854145, 38.847019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651150, 33.140030, 39.006897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895645, 32.940075, 38.761456>,  <33.042343, 32.820103, 38.614193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895645, 32.940075, 38.761456>,  <32.651150, 33.140030, 39.006897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895645, 32.940075, 38.761456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775056, 0.221088, 0.591953,
		-0.160250, -0.837397, 0.522577,
		0.611235, -0.499886, -0.613600,
		33.079014, 32.790108, 38.577377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948292, 32.619808, 39.431190>,  <32.651150, 33.140030, 39.006897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948292, 32.619808, 39.431190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194962, 32.730629, 39.136448>,  <33.342964, 32.797119, 38.959602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.194962, 32.730629, 39.136448>,  <32.948292, 32.619808, 39.431190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194962, 32.730629, 39.136448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726065, 0.161553, 0.668379,
		0.304216, -0.947177, -0.101531,
		0.616670, 0.277049, -0.736859,
		33.379963, 32.813744, 38.915390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620491, 32.299294, 39.459068>,  <32.948292, 32.619808, 39.431190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620491, 32.299294, 39.459068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723854, 32.610840, 39.230476>,  <33.785873, 32.797768, 39.093323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723854, 32.610840, 39.230476>,  <33.620491, 32.299294, 39.459068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723854, 32.610840, 39.230476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752358, 0.208809, 0.624785,
		0.605955, -0.591408, -0.532030,
		0.258410, 0.778868, -0.571479,
		33.801376, 32.844501, 39.059032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313492, 32.254833, 39.456642>,  <33.620491, 32.299294, 39.459068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313492, 32.254833, 39.456642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203079, 32.636665, 39.411770>,  <34.136833, 32.865765, 39.384846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203079, 32.636665, 39.411770>,  <34.313492, 32.254833, 39.456642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203079, 32.636665, 39.411770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606904, 0.263608, 0.749786,
		0.745301, 0.138884, -0.652103,
		-0.276033, 0.954579, -0.112177,
		34.120270, 32.923038, 39.378117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973309, 32.504021, 39.384743>,  <34.313492, 32.254833, 39.456642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973309, 32.504021, 39.384743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752781, 32.818356, 39.496815>,  <34.620464, 33.006958, 39.564060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752781, 32.818356, 39.496815>,  <34.973309, 32.504021, 39.384743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752781, 32.818356, 39.496815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573885, 0.113448, 0.811040,
		0.605561, 0.607935, -0.513528,
		-0.551318, 0.785840, 0.280185,
		34.587387, 33.054108, 39.580872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429344, 32.843567, 39.608719>,  <34.973309, 32.504021, 39.384743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429344, 32.843567, 39.608719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106991, 33.019779, 39.766956>,  <34.913578, 33.125507, 39.861897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106991, 33.019779, 39.766956>,  <35.429344, 32.843567, 39.608719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106991, 33.019779, 39.766956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529687, 0.237882, 0.814152,
		0.264552, 0.865649, -0.425046,
		-0.805880, 0.440527, 0.395591,
		34.865227, 33.151936, 39.885635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612892, 33.620144, 39.789734>,  <35.429344, 32.843567, 39.608719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612892, 33.620144, 39.789734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300003, 33.532902, 40.023163>,  <35.112270, 33.480556, 40.163219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300003, 33.532902, 40.023163>,  <35.612892, 33.620144, 39.789734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300003, 33.532902, 40.023163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533915, 0.247995, 0.808352,
		-0.321027, 0.943890, -0.077539,
		-0.782225, -0.218104, 0.583571,
		35.065334, 33.467472, 40.198235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499607, 34.204906, 40.186539>,  <35.612892, 33.620144, 39.789734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499607, 34.204906, 40.186539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309509, 33.928062, 40.403839>,  <35.195450, 33.761955, 40.534218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.309509, 33.928062, 40.403839>,  <35.499607, 34.204906, 40.186539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309509, 33.928062, 40.403839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482153, 0.311613, 0.818795,
		-0.735984, 0.651057, 0.185613,
		-0.475243, -0.692115, 0.543251,
		35.166935, 33.720428, 40.566814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545990, 34.403656, 40.808750>,  <35.499607, 34.204906, 40.186539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545990, 34.403656, 40.808750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398388, 34.043457, 40.900776>,  <35.309826, 33.827335, 40.955990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398388, 34.043457, 40.900776>,  <35.545990, 34.403656, 40.808750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398388, 34.043457, 40.900776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371443, 0.084022, 0.924646,
		-0.851976, 0.426658, 0.303481,
		-0.369008, -0.900502, 0.230064,
		35.287685, 33.773308, 40.969795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069088, 34.448555, 41.438675>,  <35.545990, 34.403656, 40.808750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069088, 34.448555, 41.438675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228699, 34.083344, 41.404808>,  <35.324463, 33.864216, 41.384487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228699, 34.083344, 41.404808>,  <35.069088, 34.448555, 41.438675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228699, 34.083344, 41.404808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367316, 0.074560, 0.927103,
		-0.840155, -0.401033, 0.365120,
		0.399022, -0.913024, -0.084664,
		35.348404, 33.809437, 41.379410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972466, 34.112137, 42.129101>,  <35.069088, 34.448555, 41.438675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972466, 34.112137, 42.129101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221939, 33.840771, 41.973785>,  <35.371624, 33.677952, 41.880596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221939, 33.840771, 41.973785>,  <34.972466, 34.112137, 42.129101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221939, 33.840771, 41.973785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518873, -0.012213, 0.854765,
		-0.584627, -0.734577, 0.344394,
		0.623685, -0.678415, -0.388292,
		35.409046, 33.637245, 41.857296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019909, 33.621098, 42.606346>,  <34.972466, 34.112137, 42.129101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019909, 33.621098, 42.606346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348774, 33.617756, 42.378670>,  <35.546093, 33.615753, 42.242062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348774, 33.617756, 42.378670>,  <35.019909, 33.621098, 42.606346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348774, 33.617756, 42.378670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566391, 0.112207, 0.816463,
		0.057047, -0.993649, 0.096984,
		0.822160, -0.008354, -0.569195,
		35.595421, 33.615250, 42.207912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482182, 32.995182, 42.706894>,  <35.019909, 33.621098, 42.606346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482182, 32.995182, 42.706894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719826, 33.278576, 42.554535>,  <35.862411, 33.448612, 42.463120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.719826, 33.278576, 42.554535>,  <35.482182, 32.995182, 42.706894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719826, 33.278576, 42.554535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365245, 0.184292, 0.912487,
		0.716681, -0.681236, -0.149282,
		0.594108, 0.708487, -0.380896,
		35.898060, 33.491123, 42.440266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199329, 32.854492, 42.903320>,  <35.482182, 32.995182, 42.706894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199329, 32.854492, 42.903320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100418, 33.235985, 42.834904>,  <36.041073, 33.464878, 42.793854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100418, 33.235985, 42.834904>,  <36.199329, 32.854492, 42.903320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100418, 33.235985, 42.834904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149124, 0.211881, 0.965851,
		0.957401, 0.213324, -0.194617,
		-0.247275, 0.953729, -0.171043,
		36.026234, 33.522102, 42.783592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691406, 33.265541, 43.332150>,  <36.199329, 32.854492, 42.903320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691406, 33.265541, 43.332150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413616, 33.540588, 43.247406>,  <36.246941, 33.705616, 43.196560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.413616, 33.540588, 43.247406>,  <36.691406, 33.265541, 43.332150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413616, 33.540588, 43.247406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032167, 0.323823, 0.945571,
		0.718796, 0.649862, -0.247006,
		-0.694476, 0.687618, -0.211858,
		36.205273, 33.746876, 43.183849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027214, 33.851345, 43.563141>,  <36.691406, 33.265541, 43.332150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027214, 33.851345, 43.563141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634880, 33.929176, 43.567276>,  <36.399479, 33.975876, 43.569759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634880, 33.929176, 43.567276>,  <37.027214, 33.851345, 43.563141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634880, 33.929176, 43.567276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089987, 0.405265, 0.909760,
		0.172829, 0.893253, -0.415006,
		-0.980833, 0.194578, 0.010340,
		36.340630, 33.987549, 43.570377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036854, 34.468052, 43.729809>,  <37.027214, 33.851345, 43.563141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036854, 34.468052, 43.729809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661198, 34.365017, 43.820724>,  <36.435802, 34.303196, 43.875275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661198, 34.365017, 43.820724>,  <37.036854, 34.468052, 43.729809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661198, 34.365017, 43.820724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092602, 0.447332, 0.889561,
		-0.330812, 0.856473, -0.396256,
		-0.939142, -0.257583, 0.227294,
		36.379456, 34.287743, 43.888912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848942, 34.950039, 44.221264>,  <37.036854, 34.468052, 43.729809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848942, 34.950039, 44.221264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560402, 34.674801, 44.252693>,  <36.387276, 34.509659, 44.271549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560402, 34.674801, 44.252693>,  <36.848942, 34.950039, 44.221264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560402, 34.674801, 44.252693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280603, 0.394103, 0.875183,
		-0.633176, 0.609267, -0.477369,
		-0.721353, -0.688096, 0.078574,
		36.343994, 34.468372, 44.276264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328751, 35.317699, 44.506546>,  <36.848942, 34.950039, 44.221264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328751, 35.317699, 44.506546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241306, 34.934536, 44.580963>,  <36.188839, 34.704636, 44.625614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241306, 34.934536, 44.580963>,  <36.328751, 35.317699, 44.506546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241306, 34.934536, 44.580963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441030, 0.267063, 0.856837,
		-0.870461, 0.105260, -0.480851,
		-0.218608, -0.957913, 0.186045,
		36.175724, 34.647163, 44.636776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634022, 35.375103, 44.649677>,  <36.328751, 35.317699, 44.506546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634022, 35.375103, 44.649677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769264, 35.029774, 44.799538>,  <35.850410, 34.822578, 44.889454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769264, 35.029774, 44.799538>,  <35.634022, 35.375103, 44.649677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769264, 35.029774, 44.799538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526043, 0.156728, 0.835892,
		-0.780361, -0.479701, -0.401153,
		0.338106, -0.863321, 0.374647,
		35.870697, 34.770779, 44.911930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051842, 34.860500, 44.907673>,  <35.634022, 35.375103, 44.649677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051842, 34.860500, 44.907673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397869, 34.804379, 45.100327>,  <35.605484, 34.770706, 45.215919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397869, 34.804379, 45.100327>,  <35.051842, 34.860500, 44.907673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397869, 34.804379, 45.100327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473991, 0.085833, 0.876337,
		-0.164295, -0.986381, 0.007748,
		0.865066, -0.140305, 0.481637,
		35.657391, 34.762287, 45.244816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813568, 34.514366, 45.496426>,  <35.051842, 34.860500, 44.907673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813568, 34.514366, 45.496426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191914, 34.599247, 45.594662>,  <35.418919, 34.650177, 45.653603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191914, 34.599247, 45.594662>,  <34.813568, 34.514366, 45.496426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191914, 34.599247, 45.594662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277492, 0.136209, 0.951023,
		0.168357, -0.967687, 0.187719,
		0.945861, 0.212202, 0.245594,
		35.475674, 34.662907, 45.668339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976620, 34.213291, 46.113235>,  <34.813568, 34.514366, 45.496426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976620, 34.213291, 46.113235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267090, 34.485497, 46.074100>,  <35.441372, 34.648819, 46.050621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267090, 34.485497, 46.074100>,  <34.976620, 34.213291, 46.113235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267090, 34.485497, 46.074100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046063, 0.190147, 0.980675,
		0.685965, -0.707635, 0.169426,
		0.726175, 0.680513, -0.097838,
		35.484943, 34.689651, 46.044750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494534, 33.977093, 46.635658>,  <34.976620, 34.213291, 46.113235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494534, 33.977093, 46.635658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543163, 34.363167, 46.543015>,  <35.572342, 34.594810, 46.487431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543163, 34.363167, 46.543015>,  <35.494534, 33.977093, 46.635658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543163, 34.363167, 46.543015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187993, 0.251505, 0.949423,
		0.974617, -0.071886, 0.212024,
		0.121576, 0.965183, -0.231607,
		35.579636, 34.652721, 46.473534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138016, 34.310318, 47.021980>,  <35.494534, 33.977093, 46.635658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138016, 34.310318, 47.021980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875469, 34.594486, 46.920399>,  <35.717941, 34.764988, 46.859451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875469, 34.594486, 46.920399>,  <36.138016, 34.310318, 47.021980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875469, 34.594486, 46.920399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003285, 0.333914, 0.942598,
		0.754437, 0.619522, -0.216836,
		-0.656364, 0.710418, -0.253953,
		35.678558, 34.807613, 46.844212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449760, 34.861294, 47.283257>,  <36.138016, 34.310318, 47.021980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449760, 34.861294, 47.283257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070904, 34.981426, 47.238132>,  <35.843590, 35.053505, 47.211056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070904, 34.981426, 47.238132>,  <36.449760, 34.861294, 47.283257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070904, 34.981426, 47.238132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054701, 0.497673, 0.865638,
		0.316122, 0.813709, -0.487795,
		-0.947140, 0.300330, -0.112815,
		35.786762, 35.071526, 47.204288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481651, 35.423191, 47.622570>,  <36.449760, 34.861294, 47.283257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481651, 35.423191, 47.622570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088295, 35.369461, 47.573750>,  <35.852280, 35.337223, 47.544456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088295, 35.369461, 47.573750>,  <36.481651, 35.423191, 47.622570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088295, 35.369461, 47.573750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181492, 0.723757, 0.665760,
		-0.001093, 0.676855, -0.736116,
		-0.983392, -0.134327, -0.122052,
		35.793278, 35.329163, 47.537132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226067, 36.074238, 47.537560>,  <36.481651, 35.423191, 47.622570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226067, 36.074238, 47.537560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907841, 35.857403, 47.645794>,  <35.716904, 35.727303, 47.710735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907841, 35.857403, 47.645794>,  <36.226067, 36.074238, 47.537560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907841, 35.857403, 47.645794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079437, 0.536088, 0.840417,
		-0.600639, 0.647111, -0.469554,
		-0.795565, -0.542087, 0.270590,
		35.669170, 35.694778, 47.726971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638477, 36.683220, 47.696617>,  <36.226067, 36.074238, 47.537560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638477, 36.683220, 47.696617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555775, 36.330662, 47.866508>,  <35.506153, 36.119125, 47.968441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555775, 36.330662, 47.866508>,  <35.638477, 36.683220, 47.696617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555775, 36.330662, 47.866508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046353, 0.442441, 0.895599,
		-0.977294, 0.165483, -0.132332,
		-0.206756, -0.881398, 0.424724,
		35.493748, 36.066242, 47.993927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002350, 36.848808, 48.247761>,  <35.638477, 36.683220, 47.696617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002350, 36.848808, 48.247761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144520, 36.494141, 48.366074>,  <35.229824, 36.281338, 48.437061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144520, 36.494141, 48.366074>,  <35.002350, 36.848808, 48.247761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144520, 36.494141, 48.366074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115078, 0.272522, 0.955243,
		-0.927593, -0.373557, -0.005175,
		0.355427, -0.886672, 0.295778,
		35.251148, 36.228138, 48.454807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667328, 36.686043, 48.820263>,  <35.002350, 36.848808, 48.247761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667328, 36.686043, 48.820263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985172, 36.446617, 48.860901>,  <35.175877, 36.302963, 48.885284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.985172, 36.446617, 48.860901>,  <34.667328, 36.686043, 48.820263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985172, 36.446617, 48.860901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002746, 0.163788, 0.986492,
		-0.607117, -0.784153, 0.128503,
		0.794608, -0.598563, 0.101592,
		35.223557, 36.267048, 48.891376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590736, 36.403488, 49.383686>,  <34.667328, 36.686043, 48.820263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590736, 36.403488, 49.383686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982788, 36.339554, 49.336712>,  <35.218021, 36.301193, 49.308525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.982788, 36.339554, 49.336712>,  <34.590736, 36.403488, 49.383686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982788, 36.339554, 49.336712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132666, 0.088160, 0.987232,
		-0.147439, -0.983200, 0.107613,
		0.980133, -0.159833, -0.117439,
		35.276829, 36.291603, 49.301479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859451, 35.819958, 49.909100>,  <34.590736, 36.403488, 49.383686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859451, 35.819958, 49.909100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202278, 36.012375, 49.835316>,  <35.407974, 36.127827, 49.791046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202278, 36.012375, 49.835316>,  <34.859451, 35.819958, 49.909100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202278, 36.012375, 49.835316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206902, 0.006517, 0.978340,
		0.471828, -0.876671, -0.093944,
		0.857070, 0.481045, -0.184460,
		35.459400, 36.156689, 49.779976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227207, 35.623508, 50.452888>,  <34.859451, 35.819958, 49.909100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227207, 35.623508, 50.452888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385620, 35.960453, 50.306690>,  <35.480667, 36.162621, 50.218971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385620, 35.960453, 50.306690>,  <35.227207, 35.623508, 50.452888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385620, 35.960453, 50.306690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231283, 0.293702, 0.927495,
		0.888632, -0.451852, -0.078508,
		0.396033, 0.842359, -0.365498,
		35.504429, 36.213161, 50.197041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946815, 35.661469, 50.824196>,  <35.227207, 35.623508, 50.452888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946815, 35.661469, 50.824196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835339, 36.027004, 50.706055>,  <35.768452, 36.246326, 50.635170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835339, 36.027004, 50.706055>,  <35.946815, 35.661469, 50.824196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835339, 36.027004, 50.706055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199141, 0.355839, 0.913083,
		0.939506, 0.195656, -0.281153,
		-0.278695, 0.913837, -0.295349,
		35.751732, 36.301155, 50.617451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424644, 36.132435, 51.115795>,  <35.946815, 35.661469, 50.824196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424644, 36.132435, 51.115795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115376, 36.370163, 51.027252>,  <35.929813, 36.512798, 50.974129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.115376, 36.370163, 51.027252>,  <36.424644, 36.132435, 51.115795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115376, 36.370163, 51.027252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185270, 0.545466, 0.817399,
		0.606536, 0.590976, -0.531847,
		-0.773168, 0.594317, -0.221355,
		35.883427, 36.548458, 50.960846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717270, 36.793201, 51.176609>,  <36.424644, 36.132435, 51.115795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717270, 36.793201, 51.176609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319813, 36.809711, 51.218513>,  <36.081341, 36.819618, 51.243656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.319813, 36.809711, 51.218513>,  <36.717270, 36.793201, 51.176609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.319813, 36.809711, 51.218513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112319, 0.297901, 0.947966,
		0.007917, 0.953704, -0.300642,
		-0.993641, 0.041272, 0.104760,
		36.021721, 36.822094, 51.249943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633163, 37.416512, 51.579746>,  <36.717270, 36.793201, 51.176609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633163, 37.416512, 51.579746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308182, 37.188488, 51.628639>,  <36.113194, 37.051674, 51.657974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308182, 37.188488, 51.628639>,  <36.633163, 37.416512, 51.579746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308182, 37.188488, 51.628639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096612, 0.338388, 0.936034,
		-0.574959, 0.748680, -0.330001,
		-0.812458, -0.570064, 0.122228,
		36.064445, 37.017467, 51.665306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314663, 37.804497, 51.112263>,  <36.633163, 37.416512, 51.579746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314663, 37.804497, 51.112263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454720, 38.179092, 51.104282>,  <36.538754, 38.403851, 51.099495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454720, 38.179092, 51.104282>,  <36.314663, 37.804497, 51.112263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454720, 38.179092, 51.104282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665248, -0.263612, -0.698537,
		-0.659430, 0.231310, -0.715296,
		0.350139, 0.936485, -0.019955,
		36.559761, 38.460037, 51.098297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225903, 38.250042, 50.448898>,  <36.314663, 37.804497, 51.112263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225903, 38.250042, 50.448898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560848, 38.315231, 50.657612>,  <36.761814, 38.354343, 50.782841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560848, 38.315231, 50.657612>,  <36.225903, 38.250042, 50.448898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560848, 38.315231, 50.657612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543585, -0.349116, -0.763304,
		0.057768, 0.922799, -0.380926,
		0.837364, 0.162971, 0.521787,
		36.812057, 38.364124, 50.814148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638012, 38.584286, 49.977844>,  <36.225903, 38.250042, 50.448898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638012, 38.584286, 49.977844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905075, 38.435947, 50.236057>,  <37.065311, 38.346943, 50.390984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.905075, 38.435947, 50.236057>,  <36.638012, 38.584286, 49.977844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905075, 38.435947, 50.236057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543930, -0.349044, -0.763092,
		0.508310, 0.860605, -0.031325,
		0.667654, -0.370848, 0.645531,
		37.105370, 38.324692, 50.429718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275524, 38.659126, 49.697063>,  <36.638012, 38.584286, 49.977844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275524, 38.659126, 49.697063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377190, 38.387177, 49.972214>,  <37.438190, 38.224007, 50.137306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377190, 38.387177, 49.972214>,  <37.275524, 38.659126, 49.697063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377190, 38.387177, 49.972214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750855, -0.309582, -0.583417,
		0.609602, 0.664783, 0.431798,
		0.254169, -0.679870, 0.687878,
		37.453442, 38.183216, 50.178577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961384, 38.790283, 49.876591>,  <37.275524, 38.659126, 49.697063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961384, 38.790283, 49.876591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867348, 38.409031, 49.952782>,  <37.810925, 38.180279, 49.998497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867348, 38.409031, 49.952782>,  <37.961384, 38.790283, 49.876591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867348, 38.409031, 49.952782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848209, -0.296873, -0.438644,
		0.474631, 0.058444, 0.878243,
		-0.235091, -0.953127, 0.190478,
		37.796822, 38.123093, 50.009926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638657, 38.396549, 49.969933>,  <37.961384, 38.790283, 49.876591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638657, 38.396549, 49.969933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375317, 38.097824, 49.932339>,  <38.217312, 37.918587, 49.909782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375317, 38.097824, 49.932339>,  <38.638657, 38.396549, 49.969933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375317, 38.097824, 49.932339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577199, -0.420749, -0.699865,
		0.483126, -0.515009, 0.708064,
		-0.658354, -0.746817, -0.093987,
		38.177811, 37.873779, 49.904144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058533, 37.900417, 49.719219>,  <38.638657, 38.396549, 49.969933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058533, 37.900417, 49.719219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704792, 37.751217, 49.606945>,  <38.492546, 37.661697, 49.539581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704792, 37.751217, 49.606945>,  <39.058533, 37.900417, 49.719219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704792, 37.751217, 49.606945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427392, -0.405110, -0.808222,
		0.187759, -0.834718, 0.517679,
		-0.884355, -0.373003, -0.280688,
		38.439487, 37.639317, 49.522739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162430, 37.124027, 49.573875>,  <39.058533, 37.900417, 49.719219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162430, 37.124027, 49.573875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831951, 37.253288, 49.389278>,  <38.633663, 37.330845, 49.278519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831951, 37.253288, 49.389278>,  <39.162430, 37.124027, 49.573875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831951, 37.253288, 49.389278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302827, -0.436024, -0.847455,
		-0.475085, -0.839912, 0.262378,
		-0.826191, 0.323158, -0.461496,
		38.584091, 37.350235, 49.250832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816154, 36.561062, 49.185741>,  <39.162430, 37.124027, 49.573875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816154, 36.561062, 49.185741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660393, 36.888557, 49.016964>,  <38.566936, 37.085052, 48.915695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660393, 36.888557, 49.016964>,  <38.816154, 36.561062, 49.185741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660393, 36.888557, 49.016964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113042, -0.497123, -0.860285,
		-0.914105, -0.287299, 0.286132,
		-0.389402, 0.818736, -0.421946,
		38.543571, 37.134178, 48.890381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327808, 36.255215, 48.787762>,  <38.816154, 36.561062, 49.185741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327808, 36.255215, 48.787762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403931, 36.619675, 48.641567>,  <38.449604, 36.838352, 48.553848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403931, 36.619675, 48.641567>,  <38.327808, 36.255215, 48.787762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403931, 36.619675, 48.641567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004805, -0.371426, -0.928450,
		-0.981713, 0.178448, -0.066307,
		0.190308, 0.911153, -0.365491,
		38.461021, 36.893021, 48.531921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960896, 36.290241, 48.128834>,  <38.327808, 36.255215, 48.787762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960896, 36.290241, 48.128834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193779, 36.613441, 48.092697>,  <38.333511, 36.807362, 48.071014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193779, 36.613441, 48.092697>,  <37.960896, 36.290241, 48.128834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193779, 36.613441, 48.092697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120069, -0.195351, -0.973356,
		-0.804123, 0.555850, -0.210752,
		0.582211, 0.808003, -0.090346,
		38.368443, 36.855843, 48.065594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564468, 36.785587, 47.743641>,  <37.960896, 36.290241, 48.128834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564468, 36.785587, 47.743641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944668, 36.904358, 47.707005>,  <38.172787, 36.975620, 47.685020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944668, 36.904358, 47.707005>,  <37.564468, 36.785587, 47.743641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944668, 36.904358, 47.707005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045133, -0.159720, -0.986130,
		-0.307434, 0.941449, -0.138413,
		0.950498, 0.296923, -0.091594,
		38.229816, 36.993435, 47.679527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629826, 37.301277, 47.215881>,  <37.564468, 36.785587, 47.743641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629826, 37.301277, 47.215881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962154, 37.085716, 47.271477>,  <38.161552, 36.956379, 47.304832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962154, 37.085716, 47.271477>,  <37.629826, 37.301277, 47.215881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962154, 37.085716, 47.271477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011764, -0.232675, -0.972483,
		0.556413, 0.809596, -0.186972,
		0.830822, -0.538903, 0.138988,
		38.211403, 36.924046, 47.313171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028385, 37.567570, 46.682419>,  <37.629826, 37.301277, 47.215881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028385, 37.567570, 46.682419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224934, 37.239239, 46.798897>,  <38.342865, 37.042240, 46.868786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224934, 37.239239, 46.798897>,  <38.028385, 37.567570, 46.682419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224934, 37.239239, 46.798897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094633, -0.282049, -0.954721,
		0.865792, 0.496683, -0.060915,
		0.491375, -0.820825, 0.291199,
		38.372345, 36.992992, 46.886257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653576, 37.490299, 46.272198>,  <38.028385, 37.567570, 46.682419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653576, 37.490299, 46.272198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584003, 37.123821, 46.416603>,  <38.542259, 36.903934, 46.503246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584003, 37.123821, 46.416603>,  <38.653576, 37.490299, 46.272198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584003, 37.123821, 46.416603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057920, -0.375482, -0.925018,
		0.983054, -0.139976, 0.118373,
		-0.173927, -0.916199, 0.361012,
		38.531826, 36.848961, 46.524906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188824, 37.046963, 46.026779>,  <38.653576, 37.490299, 46.272198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188824, 37.046963, 46.026779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893845, 36.795422, 46.125336>,  <38.716858, 36.644497, 46.184471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893845, 36.795422, 46.125336>,  <39.188824, 37.046963, 46.026779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893845, 36.795422, 46.125336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093235, -0.456105, -0.885029,
		0.668933, -0.629694, 0.394986,
		-0.737452, -0.628851, 0.246394,
		38.672607, 36.606766, 46.199253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273838, 36.619064, 45.606091>,  <39.188824, 37.046963, 46.026779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273838, 36.619064, 45.606091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921585, 36.462925, 45.713512>,  <38.710236, 36.369244, 45.777966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.921585, 36.462925, 45.713512>,  <39.273838, 36.619064, 45.606091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921585, 36.462925, 45.713512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096056, -0.407956, -0.907934,
		0.463969, -0.825349, 0.321763,
		-0.880628, -0.390347, 0.268559,
		38.657398, 36.345821, 45.794079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263634, 35.848701, 45.513672>,  <39.273838, 36.619064, 45.606091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263634, 35.848701, 45.513672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882526, 35.969521, 45.501026>,  <38.653862, 36.042011, 45.493439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882526, 35.969521, 45.501026>,  <39.263634, 35.848701, 45.513672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882526, 35.969521, 45.501026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099704, -0.409417, -0.906883,
		-0.286861, -0.860899, 0.420195,
		-0.952770, 0.302045, -0.031611,
		38.596695, 36.060135, 45.491543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859390, 35.350533, 45.153534>,  <39.263634, 35.848701, 45.513672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859390, 35.350533, 45.153534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617374, 35.666821, 45.116257>,  <38.472164, 35.856594, 45.093891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617374, 35.666821, 45.116257>,  <38.859390, 35.350533, 45.153534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617374, 35.666821, 45.116257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249773, -0.299641, -0.920776,
		-0.756004, -0.533827, 0.378796,
		-0.605038, 0.790724, -0.093194,
		38.435863, 35.904037, 45.088299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341164, 35.068321, 44.781544>,  <38.859390, 35.350533, 45.153534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341164, 35.068321, 44.781544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257305, 35.457573, 44.743469>,  <38.206989, 35.691124, 44.720627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257305, 35.457573, 44.743469>,  <38.341164, 35.068321, 44.781544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257305, 35.457573, 44.743469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171909, -0.132515, -0.976160,
		-0.962546, -0.188286, 0.195072,
		-0.209647, 0.973133, -0.095184,
		38.194412, 35.749512, 44.714912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611546, 35.077065, 44.474480>,  <38.341164, 35.068321, 44.781544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611546, 35.077065, 44.474480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802723, 35.421383, 44.404510>,  <37.917431, 35.627975, 44.362530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802723, 35.421383, 44.404510>,  <37.611546, 35.077065, 44.474480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802723, 35.421383, 44.404510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320786, -0.014337, -0.947043,
		-0.817718, 0.508749, 0.269279,
		0.477947, 0.860795, -0.174924,
		37.946106, 35.679623, 44.352032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109726, 35.632149, 44.272381>,  <37.611546, 35.077065, 44.474480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109726, 35.632149, 44.272381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472534, 35.707413, 44.121700>,  <37.690220, 35.752571, 44.031292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472534, 35.707413, 44.121700>,  <37.109726, 35.632149, 44.272381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472534, 35.707413, 44.121700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412944, 0.222414, -0.883181,
		-0.082394, 0.956623, 0.279434,
		0.907022, 0.188160, -0.376706,
		37.744640, 35.763859, 44.008690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005901, 36.253468, 43.858650>,  <37.109726, 35.632149, 44.272381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005901, 36.253468, 43.858650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353107, 36.094578, 43.739479>,  <37.561432, 35.999245, 43.667976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353107, 36.094578, 43.739479>,  <37.005901, 36.253468, 43.858650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353107, 36.094578, 43.739479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294297, 0.071683, -0.953022,
		0.399918, 0.914918, -0.054679,
		0.868018, -0.397223, -0.297925,
		37.613514, 35.975410, 43.650101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251301, 36.712276, 43.330799>,  <37.005901, 36.253468, 43.858650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251301, 36.712276, 43.330799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429615, 36.355862, 43.296577>,  <37.536606, 36.142014, 43.276043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429615, 36.355862, 43.296577>,  <37.251301, 36.712276, 43.330799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429615, 36.355862, 43.296577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092347, 0.049286, -0.994507,
		0.890361, 0.451242, -0.060313,
		0.445790, -0.891040, -0.085553,
		37.563351, 36.088551, 43.270912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284763, 36.725075, 42.584866>,  <37.251301, 36.712276, 43.330799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284763, 36.725075, 42.584866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410309, 36.359768, 42.688732>,  <37.485638, 36.140583, 42.751053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410309, 36.359768, 42.688732>,  <37.284763, 36.725075, 42.584866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410309, 36.359768, 42.688732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159397, -0.320288, -0.933814,
		0.935991, 0.251704, -0.246101,
		0.313868, -0.913269, 0.259666,
		37.504471, 36.085789, 42.766632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538639, 36.474167, 42.057194>,  <37.284763, 36.725075, 42.584866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538639, 36.474167, 42.057194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493923, 36.125874, 42.248741>,  <37.467094, 35.916897, 42.363670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493923, 36.125874, 42.248741>,  <37.538639, 36.474167, 42.057194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493923, 36.125874, 42.248741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151209, -0.461375, -0.874225,
		0.982160, -0.170142, -0.080085,
		-0.111793, -0.870738, 0.478871,
		37.460384, 35.864651, 42.392403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071430, 36.034737, 41.747547>,  <37.538639, 36.474167, 42.057194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071430, 36.034737, 41.747547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772583, 35.816219, 41.899010>,  <37.593273, 35.685108, 41.989887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772583, 35.816219, 41.899010>,  <38.071430, 36.034737, 41.747547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772583, 35.816219, 41.899010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143084, -0.424130, -0.894226,
		0.649109, -0.722271, 0.238709,
		-0.747117, -0.546295, 0.378652,
		37.548447, 35.652332, 42.012604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238651, 35.372166, 41.633804>,  <38.071430, 36.034737, 41.747547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238651, 35.372166, 41.633804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839260, 35.374252, 41.655777>,  <37.599625, 35.375504, 41.668961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839260, 35.374252, 41.655777>,  <38.238651, 35.372166, 41.633804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839260, 35.374252, 41.655777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046983, -0.602516, -0.796723,
		0.028941, -0.798090, 0.601843,
		-0.998476, 0.005219, 0.054934,
		37.539719, 35.375816, 41.672256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023663, 34.652016, 41.462242>,  <38.238651, 35.372166, 41.633804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023663, 34.652016, 41.462242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701340, 34.884979, 41.419399>,  <37.507946, 35.024757, 41.393692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701340, 34.884979, 41.419399>,  <38.023663, 34.652016, 41.462242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701340, 34.884979, 41.419399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160283, -0.388632, -0.907344,
		-0.570073, -0.713977, 0.406513,
		-0.805807, 0.582410, -0.107110,
		37.459599, 35.059704, 41.387268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493614, 34.175800, 41.220226>,  <38.023663, 34.652016, 41.462242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493614, 34.175800, 41.220226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370480, 34.541725, 41.115643>,  <37.296600, 34.761280, 41.052891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370480, 34.541725, 41.115643>,  <37.493614, 34.175800, 41.220226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370480, 34.541725, 41.115643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036274, -0.285888, -0.957576,
		-0.950748, -0.285290, 0.121190,
		-0.307834, 0.914810, -0.261459,
		37.278130, 34.816170, 41.037205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185650, 34.049252, 40.559074>,  <37.493614, 34.175800, 41.220226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185650, 34.049252, 40.559074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156174, 34.447269, 40.532402>,  <37.138489, 34.686081, 40.516399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156174, 34.447269, 40.532402>,  <37.185650, 34.049252, 40.559074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156174, 34.447269, 40.532402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128087, -0.075754, -0.988865,
		-0.989021, -0.064326, 0.133035,
		-0.073688, 0.995049, -0.066683,
		37.134068, 34.745785, 40.512398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599762, 34.168430, 40.134014>,  <37.185650, 34.049252, 40.559074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599762, 34.168430, 40.134014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820107, 34.499569, 40.091637>,  <36.952312, 34.698254, 40.066212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820107, 34.499569, 40.091637>,  <36.599762, 34.168430, 40.134014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820107, 34.499569, 40.091637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083955, -0.071333, -0.993913,
		-0.830366, 0.556399, 0.030208,
		0.550857, 0.827848, -0.105945,
		36.985363, 34.747925, 40.059853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305862, 34.528149, 39.581123>,  <36.599762, 34.168430, 40.134014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305862, 34.528149, 39.581123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679897, 34.668102, 39.603748>,  <36.904316, 34.752075, 39.617321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679897, 34.668102, 39.603748>,  <36.305862, 34.528149, 39.581123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679897, 34.668102, 39.603748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056508, 0.010366, -0.998348,
		-0.349890, 0.936737, -0.010078,
		0.935085, 0.349881, 0.056560,
		36.960423, 34.773067, 39.620716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347561, 35.080589, 38.992847>,  <36.305862, 34.528149, 39.581123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347561, 35.080589, 38.992847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706982, 34.949917, 39.110073>,  <36.922634, 34.871513, 39.180408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706982, 34.949917, 39.110073>,  <36.347561, 35.080589, 38.992847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706982, 34.949917, 39.110073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257971, -0.147070, -0.954893,
		0.355044, 0.933623, -0.047877,
		0.898552, -0.326678, 0.293064,
		36.976547, 34.851913, 39.197994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819069, 35.497753, 38.531601>,  <36.347561, 35.080589, 38.992847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819069, 35.497753, 38.531601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048328, 35.187355, 38.636929>,  <37.185883, 35.001118, 38.700127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048328, 35.187355, 38.636929>,  <36.819069, 35.497753, 38.531601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048328, 35.187355, 38.636929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370172, -0.041508, -0.928036,
		0.731080, 0.629374, 0.263460,
		0.573145, -0.775993, 0.263322,
		37.220272, 34.954556, 38.715927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596134, 35.687801, 38.486031>,  <36.819069, 35.497753, 38.531601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596134, 35.687801, 38.486031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595127, 35.288506, 38.462330>,  <37.594524, 35.048927, 38.448109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595127, 35.288506, 38.462330>,  <37.596134, 35.687801, 38.486031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595127, 35.288506, 38.462330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606121, 0.045604, -0.794064,
		0.795369, -0.037912, 0.604939,
		-0.002517, -0.998240, -0.059252,
		37.594372, 34.989033, 38.444553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266602, 35.507980, 38.333382>,  <37.596134, 35.687801, 38.486031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266602, 35.507980, 38.333382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086136, 35.159210, 38.257275>,  <37.977856, 34.949947, 38.211609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086136, 35.159210, 38.257275>,  <38.266602, 35.507980, 38.333382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086136, 35.159210, 38.257275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587591, -0.129758, -0.798686,
		0.671703, -0.472140, 0.570875,
		-0.451168, -0.871921, -0.190267,
		37.950787, 34.897633, 38.200195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754227, 35.058201, 38.355721>,  <38.266602, 35.507980, 38.333382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754227, 35.058201, 38.355721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474468, 34.898666, 38.118481>,  <38.306614, 34.802944, 37.976135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474468, 34.898666, 38.118481>,  <38.754227, 35.058201, 38.355721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474468, 34.898666, 38.118481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705985, -0.256093, -0.660304,
		0.111464, -0.880538, 0.460683,
		-0.699401, -0.398835, -0.593102,
		38.264648, 34.779015, 37.940552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152077, 34.552692, 38.173359>,  <38.754227, 35.058201, 38.355721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152077, 34.552692, 38.173359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837273, 34.576538, 37.927734>,  <38.648392, 34.590847, 37.780361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837273, 34.576538, 37.927734>,  <39.152077, 34.552692, 38.173359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837273, 34.576538, 37.927734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561462, -0.343307, -0.752928,
		-0.255698, -0.937329, 0.236712,
		-0.787006, 0.059617, -0.614058,
		38.601170, 34.594425, 37.743519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214878, 33.936623, 37.682072>,  <39.152077, 34.552692, 38.173359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214878, 33.936623, 37.682072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983727, 34.224003, 37.527210>,  <38.845036, 34.396431, 37.434296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983727, 34.224003, 37.527210>,  <39.214878, 33.936623, 37.682072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983727, 34.224003, 37.527210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511733, -0.050559, -0.857656,
		-0.635758, -0.693737, -0.338438,
		-0.577877, 0.718451, -0.387152,
		38.810364, 34.439537, 37.411064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845581, 33.673527, 37.094616>,  <39.214878, 33.936623, 37.682072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845581, 33.673527, 37.094616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912670, 34.067245, 37.072617>,  <38.952923, 34.303478, 37.059418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912670, 34.067245, 37.072617>,  <38.845581, 33.673527, 37.094616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912670, 34.067245, 37.072617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496960, -0.132597, -0.857583,
		-0.851410, 0.116504, -0.511397,
		0.167722, 0.984299, -0.054997,
		38.962986, 34.362534, 37.056118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537601, 33.927826, 36.431408>,  <38.845581, 33.673527, 37.094616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537601, 33.927826, 36.431408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834625, 34.148342, 36.583553>,  <39.012840, 34.280651, 36.674839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834625, 34.148342, 36.583553>,  <38.537601, 33.927826, 36.431408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834625, 34.148342, 36.583553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456845, -0.001608, -0.889545,
		-0.489788, 0.834311, -0.253049,
		0.742564, 0.551292, 0.380363,
		39.057396, 34.313728, 36.697662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780712, 34.126793, 35.847218>,  <38.537601, 33.927826, 36.431408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780712, 34.126793, 35.847218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055515, 34.246544, 36.112064>,  <39.220398, 34.318394, 36.270973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055515, 34.246544, 36.112064>,  <38.780712, 34.126793, 35.847218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055515, 34.246544, 36.112064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622100, 0.228559, -0.748834,
		-0.375518, 0.926354, -0.029223,
		0.687006, 0.299381, 0.662113,
		39.261616, 34.336357, 36.310699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098541, 34.659698, 35.491592>,  <38.780712, 34.126793, 35.847218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098541, 34.659698, 35.491592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372375, 34.543262, 35.758907>,  <39.536674, 34.473400, 35.919296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372375, 34.543262, 35.758907>,  <39.098541, 34.659698, 35.491592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372375, 34.543262, 35.758907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728741, 0.252282, -0.636624,
		0.016718, 0.922833, 0.384838,
		0.684585, -0.291090, 0.668289,
		39.577751, 34.455936, 35.959393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542435, 35.244160, 35.625500>,  <39.098541, 34.659698, 35.491592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542435, 35.244160, 35.625500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718914, 34.885502, 35.640282>,  <39.824802, 34.670307, 35.649151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718914, 34.885502, 35.640282>,  <39.542435, 35.244160, 35.625500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718914, 34.885502, 35.640282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722800, 0.330650, -0.606820,
		0.531886, 0.294438, 0.793980,
		0.441200, -0.896648, 0.036951,
		39.851273, 34.616508, 35.651367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140518, 35.447216, 35.601387>,  <39.542435, 35.244160, 35.625500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140518, 35.447216, 35.601387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171524, 35.062653, 35.495792>,  <40.190128, 34.831917, 35.432434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171524, 35.062653, 35.495792>,  <40.140518, 35.447216, 35.601387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171524, 35.062653, 35.495792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776094, 0.224403, -0.589340,
		0.625835, -0.159197, 0.763536,
		0.077518, -0.961405, -0.263991,
		40.194778, 34.774231, 35.416595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787998, 35.177647, 35.375340>,  <40.140518, 35.447216, 35.601387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787998, 35.177647, 35.375340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030209, 35.233006, 35.688820>,  <41.175533, 35.266220, 35.876907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030209, 35.233006, 35.688820>,  <40.787998, 35.177647, 35.375340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030209, 35.233006, 35.688820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758781, 0.196560, -0.620980,
		-0.239988, 0.970675, 0.014007,
		0.605523, 0.138399, 0.783701,
		41.211864, 35.274525, 35.923931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236458, 35.794079, 35.410198>,  <40.787998, 35.177647, 35.375340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236458, 35.794079, 35.410198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427555, 35.521793, 35.632328>,  <41.542213, 35.358421, 35.765606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427555, 35.521793, 35.632328>,  <41.236458, 35.794079, 35.410198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427555, 35.521793, 35.632328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874852, 0.311085, -0.371296,
		0.079993, 0.663213, 0.744143,
		0.477740, -0.680716, 0.555329,
		41.570877, 35.317577, 35.798927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880379, 36.170330, 35.270035>,  <41.236458, 35.794079, 35.410198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880379, 36.170330, 35.270035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271591, 36.089310, 35.289772>,  <42.506317, 36.040699, 35.301613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271591, 36.089310, 35.289772>,  <41.880379, 36.170330, 35.270035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271591, 36.089310, 35.289772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208354, 0.941791, -0.263852,
		0.006975, 0.268335, 0.963300,
		0.978029, -0.202548, 0.049339,
		42.564999, 36.028545, 35.304573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.132549, 36.778984, 35.625999>,  <41.880379, 36.170330, 35.270035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.132549, 36.778984, 35.625999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466007, 36.623478, 35.469082>,  <42.666084, 36.530174, 35.374931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466007, 36.623478, 35.469082>,  <42.132549, 36.778984, 35.625999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466007, 36.623478, 35.469082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402618, 0.913992, -0.050179,
		0.378063, -0.116114, 0.918470,
		0.833647, -0.388763, -0.392295,
		42.716103, 36.506847, 35.351395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747005, 37.134388, 35.973732>,  <42.132549, 36.778984, 35.625999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747005, 37.134388, 35.973732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858955, 36.981705, 35.621376>,  <42.926125, 36.890095, 35.409962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858955, 36.981705, 35.621376>,  <42.747005, 37.134388, 35.973732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858955, 36.981705, 35.621376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475617, 0.852173, -0.218150,
		0.833943, -0.357914, 0.420044,
		0.279871, -0.381705, -0.880894,
		42.942917, 36.867195, 35.357109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.541698, 37.135525, 35.841255>,  <42.747005, 37.134388, 35.973732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.541698, 37.135525, 35.841255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385834, 37.134922, 35.472874>,  <43.292313, 37.134560, 35.251842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385834, 37.134922, 35.472874>,  <43.541698, 37.135525, 35.841255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385834, 37.134922, 35.472874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434582, 0.881361, -0.185313,
		0.811973, -0.472441, -0.342782,
		-0.389664, -0.001502, -0.920956,
		43.268936, 37.134472, 35.196587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.125355, 37.334778, 35.480045>,  <43.541698, 37.135525, 35.841255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.125355, 37.334778, 35.480045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815796, 37.388893, 35.232571>,  <43.630058, 37.421364, 35.084087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815796, 37.388893, 35.232571>,  <44.125355, 37.334778, 35.480045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815796, 37.388893, 35.232571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489419, 0.747764, -0.448684,
		0.401929, -0.650034, -0.644909,
		-0.773900, 0.135291, -0.618687,
		43.583626, 37.429482, 35.046963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372490, 37.443138, 34.797745>,  <44.125355, 37.334778, 35.480045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372490, 37.443138, 34.797745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003193, 37.596668, 34.790833>,  <43.781612, 37.688786, 34.786686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003193, 37.596668, 34.790833>,  <44.372490, 37.443138, 34.797745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003193, 37.596668, 34.790833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332859, 0.776570, -0.534924,
		-0.191896, -0.499618, -0.844723,
		-0.923245, 0.383824, -0.017282,
		43.726219, 37.711815, 34.785648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.303017, 37.685444, 34.116505>,  <44.372490, 37.443138, 34.797745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.303017, 37.685444, 34.116505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018505, 37.888592, 34.310886>,  <43.847797, 38.010479, 34.427517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018505, 37.888592, 34.310886>,  <44.303017, 37.685444, 34.116505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018505, 37.888592, 34.310886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439061, 0.860895, -0.257071,
		-0.548914, 0.030514, -0.835322,
		-0.711280, 0.507867, 0.485954,
		43.805122, 38.040951, 34.456673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268402, 38.391663, 33.767330>,  <44.303017, 37.685444, 34.116505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268402, 38.391663, 33.767330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.083519, 38.425915, 34.120380>,  <43.972588, 38.446465, 34.332211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.083519, 38.425915, 34.120380>,  <44.268402, 38.391663, 33.767330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.083519, 38.425915, 34.120380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227071, 0.973571, 0.024456,
		-0.857206, 0.211723, -0.469438,
		-0.462209, 0.085632, 0.882627,
		43.944855, 38.451603, 34.385170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712414, 38.991081, 33.754063>,  <44.268402, 38.391663, 33.767330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712414, 38.991081, 33.754063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816391, 38.914310, 34.132607>,  <43.878777, 38.868248, 34.359734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816391, 38.914310, 34.132607>,  <43.712414, 38.991081, 33.754063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816391, 38.914310, 34.132607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183329, 0.972032, 0.146782,
		-0.948062, 0.135340, 0.287858,
		0.259941, -0.191931, 0.946358,
		43.894375, 38.856731, 34.416515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288464, 39.469570, 34.159687>,  <43.712414, 38.991081, 33.754063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288464, 39.469570, 34.159687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633282, 39.366783, 34.334435>,  <43.840172, 39.305111, 34.439281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633282, 39.366783, 34.334435>,  <43.288464, 39.469570, 34.159687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633282, 39.366783, 34.334435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223452, 0.966341, 0.127491,
		-0.454922, -0.012284, 0.890446,
		0.862041, -0.256971, 0.436865,
		43.891895, 39.289692, 34.465492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404316, 39.956039, 34.563847>,  <43.288464, 39.469570, 34.159687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404316, 39.956039, 34.563847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772678, 39.802151, 34.588886>,  <43.993698, 39.709820, 34.603909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772678, 39.802151, 34.588886>,  <43.404316, 39.956039, 34.563847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772678, 39.802151, 34.588886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355782, 0.895273, 0.268153,
		-0.159208, -0.224673, 0.961340,
		0.920908, -0.384720, 0.062600,
		44.048950, 39.686733, 34.607666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653885, 40.324883, 35.011284>,  <43.404316, 39.956039, 34.563847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653885, 40.324883, 35.011284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985554, 40.184212, 34.837479>,  <44.184555, 40.099808, 34.733196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985554, 40.184212, 34.837479>,  <43.653885, 40.324883, 35.011284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985554, 40.184212, 34.837479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430690, 0.897430, 0.095528,
		0.356349, -0.266349, 0.895585,
		0.829169, -0.351678, -0.434512,
		44.234306, 40.078709, 34.707127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174732, 40.762142, 35.293167>,  <43.653885, 40.324883, 35.011284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174732, 40.762142, 35.293167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383747, 40.590267, 34.998596>,  <44.509155, 40.487141, 34.821854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383747, 40.590267, 34.998596>,  <44.174732, 40.762142, 35.293167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383747, 40.590267, 34.998596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557283, 0.825813, -0.086418,
		0.645281, -0.365239, 0.670979,
		0.522540, -0.429689, -0.736423,
		44.540508, 40.461361, 34.777668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888977, 40.792183, 35.499203>,  <44.174732, 40.762142, 35.293167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888977, 40.792183, 35.499203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855148, 40.770443, 35.101231>,  <44.834850, 40.757401, 34.862446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.855148, 40.770443, 35.101231>,  <44.888977, 40.792183, 35.499203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.855148, 40.770443, 35.101231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475295, 0.875392, -0.088220,
		0.875753, -0.480348, -0.048194,
		-0.084565, -0.054352, -0.994935,
		44.829777, 40.754139, 34.802750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.534718, 41.007938, 35.319397>,  <44.888977, 40.792183, 35.499203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.534718, 41.007938, 35.319397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306835, 41.031693, 34.991516>,  <45.170105, 41.045944, 34.794788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.306835, 41.031693, 34.991516>,  <45.534718, 41.007938, 35.319397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306835, 41.031693, 34.991516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522053, 0.796464, -0.305132,
		0.634742, -0.601763, -0.484752,
		-0.569705, 0.059386, -0.819701,
		45.135925, 41.049507, 34.745605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.053696, 41.126141, 34.823544>,  <45.534718, 41.007938, 35.319397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.053696, 41.126141, 34.823544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707855, 41.282925, 34.697788>,  <45.500351, 41.376995, 34.622334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707855, 41.282925, 34.697788>,  <46.053696, 41.126141, 34.823544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707855, 41.282925, 34.697788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492329, 0.785886, -0.374158,
		0.100423, -0.478281, -0.872446,
		-0.864596, 0.391957, -0.314393,
		45.448475, 41.400513, 34.603470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.072670, 41.363659, 34.090366>,  <46.053696, 41.126141, 34.823544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.072670, 41.363659, 34.090366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769440, 41.580704, 34.235085>,  <45.587502, 41.710930, 34.321915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.769440, 41.580704, 34.235085>,  <46.072670, 41.363659, 34.090366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769440, 41.580704, 34.235085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462681, 0.838439, -0.288003,
		-0.459618, -0.050931, -0.886655,
		-0.758075, 0.542610, 0.361797,
		45.542019, 41.743488, 34.343624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.914772, 41.929035, 33.598999>,  <46.072670, 41.363659, 34.090366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.914772, 41.929035, 33.598999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759853, 42.056183, 33.945168>,  <45.666901, 42.132469, 34.152870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759853, 42.056183, 33.945168>,  <45.914772, 41.929035, 33.598999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759853, 42.056183, 33.945168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405144, 0.901873, -0.149942,
		-0.828166, 0.292550, -0.478075,
		-0.387297, 0.317866, 0.865426,
		45.643665, 42.151543, 34.204796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922321, 42.593849, 33.519035>,  <45.914772, 41.929035, 33.598999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.922321, 42.593849, 33.519035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.842167, 42.566383, 33.909958>,  <45.794075, 42.549904, 34.144512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.842167, 42.566383, 33.909958>,  <45.922321, 42.593849, 33.519035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.842167, 42.566383, 33.909958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474585, 0.865886, 0.158145,
		-0.857097, 0.495505, -0.140920,
		-0.200382, -0.068667, 0.977309,
		45.782051, 42.545784, 34.203152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671608, 43.294159, 33.711044>,  <45.922321, 42.593849, 33.519035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.671608, 43.294159, 33.711044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.772709, 43.117504, 34.055386>,  <45.833370, 43.011509, 34.261990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.772709, 43.117504, 34.055386>,  <45.671608, 43.294159, 33.711044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.772709, 43.117504, 34.055386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609783, 0.763504, 0.212664,
		-0.751187, 0.471185, 0.462280,
		0.252748, -0.441641, 0.860855,
		45.848534, 42.985012, 34.313641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.608551, 43.775703, 34.148670>,  <45.671608, 43.294159, 33.711044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.608551, 43.775703, 34.148670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876797, 43.534149, 34.320999>,  <46.037743, 43.389217, 34.424397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876797, 43.534149, 34.320999>,  <45.608551, 43.775703, 34.148670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876797, 43.534149, 34.320999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623981, 0.773280, 0.112635,
		-0.401161, 0.193288, 0.895382,
		0.670610, -0.603886, 0.430818,
		46.077980, 43.352982, 34.450245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963543, 44.123726, 34.848312>,  <45.608551, 43.775703, 34.148670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963543, 44.123726, 34.848312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209171, 43.846802, 34.696720>,  <46.356548, 43.680649, 34.605766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209171, 43.846802, 34.696720>,  <45.963543, 44.123726, 34.848312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209171, 43.846802, 34.696720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766898, 0.636860, 0.079230,
		0.186503, -0.339289, 0.922009,
		0.614072, -0.692310, -0.378976,
		46.393394, 43.639111, 34.583027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.399883, 44.247562, 35.349499>,  <45.963543, 44.123726, 34.848312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.399883, 44.247562, 35.349499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.526134, 44.113525, 34.994400>,  <46.601883, 44.033104, 34.781342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.526134, 44.113525, 34.994400>,  <46.399883, 44.247562, 35.349499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.526134, 44.113525, 34.994400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656428, 0.752681, -0.050724,
		0.685188, -0.566733, 0.457527,
		0.315625, -0.335089, -0.887748,
		46.620823, 44.013000, 34.728077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.993530, 44.615730, 35.872322>,  <46.399883, 44.247562, 35.349499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.993530, 44.615730, 35.872322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760670, 44.932339, 35.797924>,  <45.620953, 45.122303, 35.753284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.760670, 44.932339, 35.797924>,  <45.993530, 44.615730, 35.872322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.760670, 44.932339, 35.797924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576287, 0.240300, -0.781120,
		-0.573582, -0.561912, -0.596036,
		-0.582148, 0.791525, -0.185991,
		45.586025, 45.169796, 35.742126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383354, 44.179749, 36.076832>,  <45.993530, 44.615730, 35.872322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383354, 44.179749, 36.076832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066502, 44.143658, 36.318291>,  <44.876392, 44.122002, 36.463165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.066502, 44.143658, 36.318291>,  <45.383354, 44.179749, 36.076832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066502, 44.143658, 36.318291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458322, -0.565213, -0.685912,
		0.403081, -0.819995, 0.406366,
		-0.792128, -0.090232, 0.603648,
		44.828865, 44.116589, 36.499386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.010250, 43.831821, 36.362141>,  <45.383354, 44.179749, 36.076832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.010250, 43.831821, 36.362141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363388, 43.873131, 36.545406>,  <46.575272, 43.897919, 36.655365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363388, 43.873131, 36.545406>,  <46.010250, 43.831821, 36.362141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363388, 43.873131, 36.545406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417981, -0.272113, 0.866745,
		0.214188, -0.956707, -0.197066,
		0.882845, 0.103277, 0.458169,
		46.628242, 43.904114, 36.682858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328705, 43.189655, 36.715294>,  <46.010250, 43.831821, 36.362141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328705, 43.189655, 36.715294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382179, 43.549175, 36.882282>,  <46.414265, 43.764889, 36.982475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382179, 43.549175, 36.882282>,  <46.328705, 43.189655, 36.715294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.382179, 43.549175, 36.882282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480921, -0.309490, 0.820324,
		0.866512, -0.310436, 0.390878,
		0.133686, 0.898802, 0.417472,
		46.422283, 43.818817, 37.007523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.724167, 43.248997, 37.398529>,  <46.328705, 43.189655, 36.715294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.724167, 43.248997, 37.398529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.434395, 43.524494, 37.386971>,  <46.260532, 43.689793, 37.380035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.434395, 43.524494, 37.386971>,  <46.724167, 43.248997, 37.398529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.434395, 43.524494, 37.386971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417283, -0.404764, 0.813659,
		0.548704, 0.601498, 0.580624,
		-0.724430, 0.688743, -0.028899,
		46.217068, 43.731117, 37.378300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.680138, 43.459042, 38.054852>,  <46.724167, 43.248997, 37.398529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.680138, 43.459042, 38.054852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322502, 43.519062, 37.886047>,  <46.107922, 43.555073, 37.784763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322502, 43.519062, 37.886047>,  <46.680138, 43.459042, 38.054852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322502, 43.519062, 37.886047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443790, -0.424033, 0.789459,
		-0.060491, 0.893130, 0.445711,
		-0.894087, 0.150047, -0.422013,
		46.054276, 43.564075, 37.759445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165035, 43.678921, 38.576717>,  <46.680138, 43.459042, 38.054852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165035, 43.678921, 38.576717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895374, 43.532082, 38.320354>,  <45.733578, 43.443977, 38.166538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.895374, 43.532082, 38.320354>,  <46.165035, 43.678921, 38.576717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.895374, 43.532082, 38.320354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441486, -0.495371, 0.748129,
		-0.592125, 0.787302, 0.171884,
		-0.674150, -0.367101, -0.640905,
		45.693130, 43.421951, 38.128082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447788, 43.756470, 38.866360>,  <46.165035, 43.678921, 38.576717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447788, 43.756470, 38.866360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082832, 43.695133, 39.018166>,  <44.863857, 43.658333, 39.109249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082832, 43.695133, 39.018166>,  <45.447788, 43.756470, 38.866360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082832, 43.695133, 39.018166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103754, -0.983537, -0.147954,
		0.395951, -0.095616, 0.913280,
		-0.912391, -0.153339, 0.379512,
		44.809116, 43.649132, 39.132019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471020, 43.282207, 39.453373>,  <45.447788, 43.756470, 38.866360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471020, 43.282207, 39.453373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123878, 43.239578, 39.259270>,  <44.915596, 43.214001, 39.142807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123878, 43.239578, 39.259270>,  <45.471020, 43.282207, 39.453373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123878, 43.239578, 39.259270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213575, -0.961895, -0.170716,
		-0.448575, -0.251796, 0.857542,
		-0.867851, -0.106571, -0.485259,
		44.863522, 43.207607, 39.113693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116096, 42.655792, 39.724518>,  <45.471020, 43.282207, 39.453373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.116096, 42.655792, 39.724518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.972317, 42.708160, 39.354946>,  <44.886047, 42.739582, 39.133202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.972317, 42.708160, 39.354946>,  <45.116096, 42.655792, 39.724518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.972317, 42.708160, 39.354946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013430, -0.989281, -0.145407,
		-0.933067, -0.064675, 0.353841,
		-0.359453, 0.130922, -0.923934,
		44.864483, 42.747437, 39.077766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647045, 42.095490, 39.662926>,  <45.116096, 42.655792, 39.724518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647045, 42.095490, 39.662926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716927, 42.211430, 39.286530>,  <44.758854, 42.280994, 39.060692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716927, 42.211430, 39.286530>,  <44.647045, 42.095490, 39.662926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716927, 42.211430, 39.286530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009473, -0.956140, -0.292758,
		-0.984575, 0.042232, -0.169788,
		0.174705, 0.289851, -0.940991,
		44.769337, 42.298386, 39.004230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034035, 41.821129, 39.170040>,  <44.647045, 42.095490, 39.662926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034035, 41.821129, 39.170040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.362907, 41.901039, 38.956837>,  <44.560230, 41.948986, 38.828915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.362907, 41.901039, 38.956837>,  <44.034035, 41.821129, 39.170040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362907, 41.901039, 38.956837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092006, -0.877435, -0.470790,
		-0.561737, 0.436116, -0.703032,
		0.822184, 0.199777, -0.533013,
		44.609562, 41.960972, 38.796932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847626, 41.571720, 38.433540>,  <44.034035, 41.821129, 39.170040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847626, 41.571720, 38.433540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246166, 41.586033, 38.464516>,  <44.485291, 41.594620, 38.483101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246166, 41.586033, 38.464516>,  <43.847626, 41.571720, 38.433540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246166, 41.586033, 38.464516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075970, -0.785167, -0.614607,
		0.038811, 0.618249, -0.785023,
		0.996354, 0.035784, 0.077441,
		44.545074, 41.596767, 38.487747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.068974, 41.405697, 37.784851>,  <43.847626, 41.571720, 38.433540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.068974, 41.405697, 37.784851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402084, 41.347759, 37.998581>,  <44.601952, 41.312996, 38.126820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.402084, 41.347759, 37.998581>,  <44.068974, 41.405697, 37.784851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402084, 41.347759, 37.998581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254832, -0.756543, -0.602248,
		0.491473, 0.637702, -0.593120,
		0.832775, -0.144843, 0.534327,
		44.651917, 41.304306, 38.158878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525951, 41.290482, 37.281292>,  <44.068974, 41.405697, 37.784851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525951, 41.290482, 37.281292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725735, 41.158741, 37.601810>,  <44.845604, 41.079697, 37.794121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.725735, 41.158741, 37.601810>,  <44.525951, 41.290482, 37.281292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.725735, 41.158741, 37.601810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330557, -0.782497, -0.527665,
		0.800796, 0.528419, -0.281956,
		0.499458, -0.329350, 0.801293,
		44.875572, 41.059937, 37.842197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.294472, 41.170929, 37.116848>,  <44.525951, 41.290482, 37.281292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.294472, 41.170929, 37.116848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192898, 40.936768, 37.424828>,  <45.131954, 40.796272, 37.609615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.192898, 40.936768, 37.424828>,  <45.294472, 41.170929, 37.116848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192898, 40.936768, 37.424828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276950, -0.806720, -0.522017,
		0.926722, 0.080677, 0.366984,
		-0.253939, -0.585401, 0.769948,
		45.116714, 40.761147, 37.655811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.863434, 40.662544, 37.200718>,  <45.294472, 41.170929, 37.116848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.863434, 40.662544, 37.200718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560886, 40.504364, 37.409149>,  <45.379356, 40.409454, 37.534206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.560886, 40.504364, 37.409149>,  <45.863434, 40.662544, 37.200718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560886, 40.504364, 37.409149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197957, -0.897603, -0.393855,
		0.623471, -0.194750, 0.757203,
		-0.756371, -0.395451, 0.521077,
		45.333977, 40.385731, 37.565472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.150322, 40.076065, 37.630119>,  <45.863434, 40.662544, 37.200718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.150322, 40.076065, 37.630119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.757580, 40.012768, 37.588333>,  <45.521935, 39.974789, 37.563263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.757580, 40.012768, 37.588333>,  <46.150322, 40.076065, 37.630119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.757580, 40.012768, 37.588333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185680, -0.914032, -0.360649,
		-0.038411, -0.373503, 0.926834,
		-0.981859, -0.158242, -0.104461,
		45.463020, 39.965294, 37.556995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.055115, 39.454567, 37.942097>,  <46.150322, 40.076065, 37.630119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.055115, 39.454567, 37.942097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747860, 39.504211, 37.690838>,  <45.563507, 39.533997, 37.540081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747860, 39.504211, 37.690838>,  <46.055115, 39.454567, 37.942097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747860, 39.504211, 37.690838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111518, -0.940108, -0.322120,
		-0.630505, -0.317481, 0.708287,
		-0.768133, 0.124111, -0.628147,
		45.517422, 39.541443, 37.502392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699970, 38.881744, 37.993320>,  <46.055115, 39.454567, 37.942097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.699970, 38.881744, 37.993320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563473, 39.040367, 37.652428>,  <45.481575, 39.135540, 37.447891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563473, 39.040367, 37.652428>,  <45.699970, 38.881744, 37.993320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563473, 39.040367, 37.652428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085422, -0.915984, -0.392015,
		-0.936085, -0.060974, 0.346450,
		-0.341246, 0.396554, -0.852230,
		45.461098, 39.159332, 37.396759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077599, 38.558449, 37.871166>,  <45.699970, 38.881744, 37.993320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077599, 38.558449, 37.871166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.221600, 38.701340, 37.526428>,  <45.307999, 38.787075, 37.319584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.221600, 38.701340, 37.526428>,  <45.077599, 38.558449, 37.871166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.221600, 38.701340, 37.526428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185506, -0.877934, -0.441384,
		-0.914323, 0.318778, -0.249790,
		0.360003, 0.357230, -0.861850,
		45.329601, 38.808510, 37.267872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505764, 38.408260, 37.330517>,  <45.077599, 38.558449, 37.871166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.505764, 38.408260, 37.330517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830891, 38.478550, 37.108368>,  <45.025967, 38.520725, 36.975079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830891, 38.478550, 37.108368>,  <44.505764, 38.408260, 37.330517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830891, 38.478550, 37.108368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106180, -0.892745, -0.437872,
		-0.572755, 0.414881, -0.706983,
		0.812821, 0.175726, -0.555376,
		45.074738, 38.531269, 36.941753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352757, 38.393505, 36.576843>,  <44.505764, 38.408260, 37.330517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352757, 38.393505, 36.576843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747581, 38.329636, 36.570896>,  <44.984474, 38.291313, 36.567329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.747581, 38.329636, 36.570896>,  <44.352757, 38.393505, 36.576843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.747581, 38.329636, 36.570896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145201, -0.850541, -0.505467,
		0.068063, 0.501084, -0.862718,
		0.987058, -0.159672, -0.014867,
		45.043697, 38.281734, 36.566437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471691, 38.154812, 35.931793>,  <44.352757, 38.393505, 36.576843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471691, 38.154812, 35.931793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782490, 38.015018, 36.141224>,  <44.968967, 37.931145, 36.266884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.782490, 38.015018, 36.141224>,  <44.471691, 38.154812, 35.931793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.782490, 38.015018, 36.141224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091411, -0.885560, -0.455442,
		0.622831, 0.306016, -0.720025,
		0.776998, -0.349481, 0.523581,
		45.015591, 37.910175, 36.298298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961109, 37.843910, 35.414463>,  <44.471691, 38.154812, 35.931793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961109, 37.843910, 35.414463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.070480, 37.685822, 35.765240>,  <45.136105, 37.590969, 35.975708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.070480, 37.685822, 35.765240>,  <44.961109, 37.843910, 35.414463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.070480, 37.685822, 35.765240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244658, -0.853130, -0.460773,
		0.930257, 0.340542, -0.136577,
		0.273430, -0.395223, 0.876946,
		45.152508, 37.567253, 36.028324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585133, 37.539501, 35.311573>,  <44.961109, 37.843910, 35.414463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585133, 37.539501, 35.311573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451290, 37.375534, 35.650986>,  <45.370987, 37.277153, 35.854633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451290, 37.375534, 35.650986>,  <45.585133, 37.539501, 35.311573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451290, 37.375534, 35.650986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310381, -0.898133, -0.311481,
		0.889777, 0.159147, 0.427749,
		-0.334604, -0.409914, 0.848535,
		45.350910, 37.252560, 35.905544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.033630, 36.965443, 35.509254>,  <45.585133, 37.539501, 35.311573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.033630, 36.965443, 35.509254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691849, 36.890289, 35.702999>,  <45.486778, 36.845200, 35.819248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.691849, 36.890289, 35.702999>,  <46.033630, 36.965443, 35.509254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.691849, 36.890289, 35.702999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174522, -0.981942, -0.073015,
		0.489335, 0.022144, 0.871815,
		-0.854455, -0.187880, 0.484363,
		45.435513, 36.833927, 35.848309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.260380, 36.375828, 35.988831>,  <46.033630, 36.965443, 35.509254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.260380, 36.375828, 35.988831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870052, 36.396267, 35.903816>,  <45.635857, 36.408531, 35.852806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870052, 36.396267, 35.903816>,  <46.260380, 36.375828, 35.988831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870052, 36.396267, 35.903816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034931, -0.996252, -0.079130,
		-0.215783, -0.069792, 0.973944,
		-0.975816, 0.051096, -0.212537,
		45.577309, 36.411594, 35.840054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189209, 35.752216, 36.087196>,  <46.260380, 36.375828, 35.988831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.189209, 35.752216, 36.087196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.802303, 35.833183, 36.025974>,  <45.570160, 35.881763, 35.989239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.802303, 35.833183, 36.025974>,  <46.189209, 35.752216, 36.087196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.802303, 35.833183, 36.025974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191971, -0.978103, -0.080380,
		-0.165976, -0.048366, 0.984943,
		-0.967264, 0.202422, -0.153057,
		45.512123, 35.893909, 35.980057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.274403, 35.197506, 35.672680>,  <46.189209, 35.752216, 36.087196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.274403, 35.197506, 35.672680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.490669, 35.304638, 35.353695>,  <46.620430, 35.368916, 35.162304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.490669, 35.304638, 35.353695>,  <46.274403, 35.197506, 35.672680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.490669, 35.304638, 35.353695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838690, -0.245345, 0.486215,
		-0.065431, -0.931704, -0.357276,
		0.540664, 0.267830, -0.797464,
		46.652870, 35.384987, 35.114456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.703720, 34.613937, 35.373631>,  <46.274403, 35.197506, 35.672680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.703720, 34.613937, 35.373631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.878086, 34.956245, 35.262180>,  <46.982704, 35.161633, 35.195312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.878086, 34.956245, 35.262180>,  <46.703720, 34.613937, 35.373631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.878086, 34.956245, 35.262180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883133, -0.347096, 0.315595,
		0.173369, -0.383633, -0.907066,
		0.435912, 0.855774, -0.278624,
		47.008862, 35.212978, 35.178593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.198898, 34.558052, 34.839001>,  <46.703720, 34.613937, 35.373631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.198898, 34.558052, 34.839001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.318436, 34.837532, 35.099007>,  <47.390156, 35.005219, 35.255009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.318436, 34.837532, 35.099007>,  <47.198898, 34.558052, 34.839001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.318436, 34.837532, 35.099007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831218, -0.525185, 0.182367,
		0.468797, 0.485804, -0.737715,
		0.298842, 0.698695, 0.650014,
		47.408089, 35.047142, 35.294010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.695652, 35.145538, 34.706795>,  <47.198898, 34.558052, 34.839001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.695652, 35.145538, 34.706795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.750443, 35.032207, 35.086472>,  <47.783318, 34.964211, 35.314278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.750443, 35.032207, 35.086472>,  <47.695652, 35.145538, 34.706795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.750443, 35.032207, 35.086472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918666, -0.322090, -0.228717,
		0.370526, 0.903318, 0.216163,
		0.136981, -0.283327, 0.949190,
		47.791538, 34.947208, 35.371227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.802792, 39.490154, 43.544155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.424534, 39.376003, 43.606518>,  <34.197578, 39.307510, 43.643936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.424534, 39.376003, 43.606518>,  <34.802792, 39.490154, 43.544155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424534, 39.376003, 43.606518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016766, -0.521573, -0.853042,
		0.324758, -0.804064, 0.498009,
		-0.945649, -0.285382, 0.155904,
		34.140839, 39.290390, 43.653290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721535, 38.726891, 43.235302>,  <34.802792, 39.490154, 43.544155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721535, 38.726891, 43.235302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355408, 38.885296, 43.264629>,  <34.135731, 38.980339, 43.282227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.355408, 38.885296, 43.264629>,  <34.721535, 38.726891, 43.235302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355408, 38.885296, 43.264629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262232, -0.447852, -0.854788,
		-0.305672, -0.801625, 0.513773,
		-0.915314, 0.396013, 0.073316,
		34.080814, 39.004101, 43.286625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258430, 38.185707, 43.015911>,  <34.721535, 38.726891, 43.235302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258430, 38.185707, 43.015911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.035408, 38.516537, 42.987411>,  <33.901596, 38.715034, 42.970314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.035408, 38.516537, 42.987411>,  <34.258430, 38.185707, 43.015911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035408, 38.516537, 42.987411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350815, -0.312536, -0.882752,
		-0.752370, -0.467189, 0.464407,
		-0.557556, 0.827076, -0.071246,
		33.868141, 38.764660, 42.966038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647213, 37.946522, 42.695377>,  <34.258430, 38.185707, 43.015911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647213, 37.946522, 42.695377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.620602, 38.341015, 42.634827>,  <33.604637, 38.577713, 42.598495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.620602, 38.341015, 42.634827>,  <33.647213, 37.946522, 42.695377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620602, 38.341015, 42.634827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434423, -0.165207, -0.885428,
		-0.898249, 0.006859, 0.439433,
		-0.066524, 0.986235, -0.151377,
		33.600643, 38.636887, 42.589413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017555, 38.016071, 42.302143>,  <33.647213, 37.946522, 42.695377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017555, 38.016071, 42.302143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.216339, 38.355991, 42.231861>,  <33.335609, 38.559944, 42.189693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.216339, 38.355991, 42.231861>,  <33.017555, 38.016071, 42.302143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216339, 38.355991, 42.231861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342862, 0.006286, -0.939365,
		-0.797167, 0.527070, 0.294487,
		0.496962, 0.849799, -0.175701,
		33.365429, 38.610931, 42.179150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501812, 38.594059, 42.121407>,  <33.017555, 38.016071, 42.302143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501812, 38.594059, 42.121407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.861061, 38.665852, 41.960823>,  <33.076611, 38.708927, 41.864475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.861061, 38.665852, 41.960823>,  <32.501812, 38.594059, 42.121407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861061, 38.665852, 41.960823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420053, 0.079974, -0.903969,
		-0.130141, 0.980505, 0.147219,
		0.898120, 0.179483, -0.401456,
		33.130497, 38.719696, 41.840385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381069, 39.023479, 41.531143>,  <32.501812, 38.594059, 42.121407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381069, 39.023479, 41.531143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.755463, 38.897797, 41.467644>,  <32.980099, 38.822388, 41.429546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.755463, 38.897797, 41.467644>,  <32.381069, 39.023479, 41.531143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755463, 38.897797, 41.467644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175993, -0.027109, -0.984018,
		0.304884, 0.948967, -0.080672,
		0.935987, -0.314209, -0.158747,
		33.036259, 38.803535, 41.420021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588879, 39.457592, 40.845116>,  <32.381069, 39.023479, 41.531143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588879, 39.457592, 40.845116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.844982, 39.152596, 40.882374>,  <32.998642, 38.969597, 40.904728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.844982, 39.152596, 40.882374>,  <32.588879, 39.457592, 40.845116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844982, 39.152596, 40.882374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113758, -0.025809, -0.993173,
		0.759693, 0.646480, 0.070216,
		0.640254, -0.762495, 0.093149,
		33.037060, 38.923847, 40.910320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035118, 39.646492, 40.297775>,  <32.588879, 39.457592, 40.845116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035118, 39.646492, 40.297775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.116577, 39.267056, 40.394691>,  <33.165451, 39.039394, 40.452843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.116577, 39.267056, 40.394691>,  <33.035118, 39.646492, 40.297775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116577, 39.267056, 40.394691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158861, -0.212183, -0.964231,
		0.966070, 0.234855, 0.107484,
		0.203648, -0.948589, 0.242292,
		33.177673, 38.982479, 40.467381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768700, 39.477722, 40.022476>,  <33.035118, 39.646492, 40.297775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768700, 39.477722, 40.022476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.592514, 39.125782, 40.093864>,  <33.486801, 38.914619, 40.136696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.592514, 39.125782, 40.093864>,  <33.768700, 39.477722, 40.022476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592514, 39.125782, 40.093864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248101, -0.310342, -0.917678,
		0.862806, -0.359930, 0.354987,
		-0.440468, -0.879851, 0.178466,
		33.460373, 38.861828, 40.147404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323650, 38.976326, 39.873711>,  <33.768700, 39.477722, 40.022476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323650, 38.976326, 39.873711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.960007, 38.816349, 39.827129>,  <33.741821, 38.720364, 39.799179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.960007, 38.816349, 39.827129>,  <34.323650, 38.976326, 39.873711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960007, 38.816349, 39.827129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224596, -0.235175, -0.945648,
		0.350822, -0.885853, 0.303626,
		-0.909110, -0.399947, -0.116454,
		33.687275, 38.696365, 39.792194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400967, 38.333672, 39.611343>,  <34.323650, 38.976326, 39.873711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400967, 38.333672, 39.611343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.023682, 38.434540, 39.524857>,  <33.797310, 38.495060, 39.472965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.023682, 38.434540, 39.524857>,  <34.400967, 38.333672, 39.611343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023682, 38.434540, 39.524857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130778, -0.316441, -0.939554,
		-0.305331, -0.914485, 0.265499,
		-0.943223, 0.252153, -0.216214,
		33.740715, 38.510193, 39.459991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050797, 37.689686, 39.524040>,  <34.400967, 38.333672, 39.611343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050797, 37.689686, 39.524040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.826092, 37.952560, 39.323032>,  <33.691269, 38.110287, 39.202427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.826092, 37.952560, 39.323032>,  <34.050797, 37.689686, 39.524040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826092, 37.952560, 39.323032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158908, -0.510401, -0.845127,
		-0.811894, -0.554615, 0.182291,
		-0.561762, 0.657186, -0.502524,
		33.657562, 38.149715, 39.172276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714520, 37.257347, 39.041187>,  <34.050797, 37.689686, 39.524040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714520, 37.257347, 39.041187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.705036, 37.627228, 38.889206>,  <33.699345, 37.849155, 38.798016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.705036, 37.627228, 38.889206>,  <33.714520, 37.257347, 39.041187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705036, 37.627228, 38.889206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252626, -0.362184, -0.897220,
		-0.967274, -0.117258, -0.225016,
		-0.023709, 0.924702, -0.379953,
		33.697922, 37.904640, 38.775219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396358, 37.107395, 38.504181>,  <33.714520, 37.257347, 39.041187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396358, 37.107395, 38.504181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.558403, 37.462135, 38.415287>,  <33.655628, 37.674980, 38.361950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.558403, 37.462135, 38.415287>,  <33.396358, 37.107395, 38.504181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558403, 37.462135, 38.415287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126636, -0.295159, -0.947019,
		-0.905456, 0.355501, -0.231878,
		0.405107, 0.886848, -0.222234,
		33.679935, 37.728191, 38.348618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090729, 37.423569, 37.846008>,  <33.396358, 37.107395, 38.504181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090729, 37.423569, 37.846008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.452282, 37.591839, 37.877048>,  <33.669212, 37.692802, 37.895672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.452282, 37.591839, 37.877048>,  <33.090729, 37.423569, 37.846008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452282, 37.591839, 37.877048> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126178, -0.088850, -0.988021,
		-0.408744, 0.902848, -0.133391,
		0.903885, 0.420679, 0.077603,
		33.723446, 37.718044, 37.900330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155930, 37.734661, 37.264370>,  <33.090729, 37.423569, 37.846008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155930, 37.734661, 37.264370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.534157, 37.749657, 37.393669>,  <33.761093, 37.758656, 37.471249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.534157, 37.749657, 37.393669>,  <33.155930, 37.734661, 37.264370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534157, 37.749657, 37.393669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325408, -0.114455, -0.938621,
		0.001805, 0.992721, -0.120426,
		0.945572, 0.037494, 0.323246,
		33.817829, 37.760906, 37.490643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535645, 38.247814, 36.862392>,  <33.155930, 37.734661, 37.264370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535645, 38.247814, 36.862392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.802334, 37.984554, 37.002285>,  <33.962349, 37.826599, 37.086220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.802334, 37.984554, 37.002285>,  <33.535645, 38.247814, 36.862392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802334, 37.984554, 37.002285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396385, -0.084250, -0.914211,
		0.631153, 0.748158, 0.204709,
		0.666727, -0.658150, 0.349733,
		34.002354, 37.787109, 37.107204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113407, 38.443130, 36.457314>,  <33.535645, 38.247814, 36.862392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113407, 38.443130, 36.457314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.228580, 38.083447, 36.589081>,  <34.297684, 37.867638, 36.668140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.228580, 38.083447, 36.589081>,  <34.113407, 38.443130, 36.457314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228580, 38.083447, 36.589081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399684, -0.199759, -0.894622,
		0.870255, 0.389261, 0.301880,
		0.287938, -0.899207, 0.329423,
		34.314960, 37.813686, 36.687908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778179, 38.363914, 36.283787>,  <34.113407, 38.443130, 36.457314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778179, 38.363914, 36.283787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661152, 37.988209, 36.355556>,  <34.590935, 37.762787, 36.398621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661152, 37.988209, 36.355556>,  <34.778179, 38.363914, 36.283787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661152, 37.988209, 36.355556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415302, -0.293824, -0.860925,
		0.861354, -0.177359, 0.476039,
		-0.292565, -0.939261, 0.179429,
		34.573383, 37.706432, 36.409386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292850, 37.966888, 36.146786>,  <34.778179, 38.363914, 36.283787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292850, 37.966888, 36.146786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.009804, 37.686192, 36.113716>,  <34.839977, 37.517773, 36.093872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.009804, 37.686192, 36.113716>,  <35.292850, 37.966888, 36.146786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009804, 37.686192, 36.113716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452763, -0.360469, -0.815517,
		0.542481, -0.614506, 0.572797,
		-0.707616, -0.701744, -0.082679,
		34.797520, 37.475670, 36.088913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637730, 37.420662, 35.862049>,  <35.292850, 37.966888, 36.146786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637730, 37.420662, 35.862049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252384, 37.332607, 35.800777>,  <35.021175, 37.279774, 35.764015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252384, 37.332607, 35.800777>,  <35.637730, 37.420662, 35.862049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252384, 37.332607, 35.800777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237915, -0.437859, -0.866992,
		0.123787, -0.871675, 0.474193,
		-0.963366, -0.220140, -0.153183,
		34.963375, 37.266563, 35.754822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233688, 37.053097, 36.119385>,  <35.637730, 37.420662, 35.862049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233688, 37.053097, 36.119385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.628574, 37.014618, 36.068558>,  <36.865505, 36.991531, 36.038063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.628574, 37.014618, 36.068558>,  <36.233688, 37.053097, 36.119385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628574, 37.014618, 36.068558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139659, 0.138113, 0.980520,
		-0.076774, -0.985734, 0.149783,
		0.987219, -0.096197, -0.127063,
		36.924740, 36.985760, 36.030437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368729, 36.600044, 36.613747>,  <36.233688, 37.053097, 36.119385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368729, 36.600044, 36.613747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.733089, 36.741554, 36.528797>,  <36.951706, 36.826462, 36.477829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.733089, 36.741554, 36.528797>,  <36.368729, 36.600044, 36.613747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733089, 36.741554, 36.528797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269172, -0.119375, 0.955665,
		0.312737, -0.927682, -0.203965,
		0.910902, 0.353774, -0.212373,
		37.006359, 36.847687, 36.465084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872074, 36.277843, 36.964050>,  <36.368729, 36.600044, 36.613747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872074, 36.277843, 36.964050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.049053, 36.621479, 36.861122>,  <37.155239, 36.827660, 36.799366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.049053, 36.621479, 36.861122>,  <36.872074, 36.277843, 36.964050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049053, 36.621479, 36.861122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332441, 0.109368, 0.936761,
		0.832902, -0.500008, -0.237206,
		0.442446, 0.859087, -0.257316,
		37.181786, 36.879204, 36.783928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.545803, 36.260059, 37.267155>,  <36.872074, 36.277843, 36.964050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.545803, 36.260059, 37.267155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.438560, 36.633400, 37.171684>,  <37.374214, 36.857407, 37.114403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.438560, 36.633400, 37.171684>,  <37.545803, 36.260059, 37.267155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438560, 36.633400, 37.171684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261271, 0.308908, 0.914502,
		0.927285, 0.182822, -0.326679,
		-0.268105, 0.933355, -0.238680,
		37.358128, 36.913406, 37.100079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071548, 36.595524, 37.406685>,  <37.545803, 36.260059, 37.267155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071548, 36.595524, 37.406685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.782078, 36.871105, 37.422855>,  <37.608395, 37.036453, 37.432560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.782078, 36.871105, 37.422855>,  <38.071548, 36.595524, 37.406685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782078, 36.871105, 37.422855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410142, 0.382226, 0.828062,
		0.555041, 0.615833, -0.559177,
		-0.723680, 0.688950, 0.040428,
		37.564972, 37.077789, 37.434982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335537, 37.210472, 37.710991>,  <38.071548, 36.595524, 37.406685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335537, 37.210472, 37.710991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941216, 37.256241, 37.760136>,  <37.704620, 37.283703, 37.789623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.941216, 37.256241, 37.760136>,  <38.335537, 37.210472, 37.710991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941216, 37.256241, 37.760136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163801, 0.495044, 0.853288,
		0.036813, 0.861301, -0.506760,
		-0.985806, 0.114419, 0.122858,
		37.645473, 37.290565, 37.796993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202736, 37.912815, 37.934639>,  <38.335537, 37.210472, 37.710991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202736, 37.912815, 37.934639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882053, 37.708946, 38.059540>,  <37.689644, 37.586624, 38.134480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.882053, 37.708946, 38.059540>,  <38.202736, 37.912815, 37.934639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882053, 37.708946, 38.059540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020093, 0.499133, 0.866292,
		-0.597379, 0.700787, -0.389918,
		-0.801707, -0.509670, 0.312252,
		37.641541, 37.556046, 38.153217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790329, 38.413334, 38.416695>,  <38.202736, 37.912815, 37.934639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790329, 38.413334, 38.416695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.612091, 38.065277, 38.500877>,  <37.505150, 37.856441, 38.551388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.612091, 38.065277, 38.500877>,  <37.790329, 38.413334, 38.416695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612091, 38.065277, 38.500877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016858, 0.243204, 0.969829,
		-0.895077, 0.428600, -0.123039,
		-0.445592, -0.870146, 0.210461,
		37.478413, 37.804234, 38.564014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346542, 38.610054, 38.929131>,  <37.790329, 38.413334, 38.416695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346542, 38.610054, 38.929131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.415241, 38.217735, 38.966084>,  <37.456463, 37.982342, 38.988255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.415241, 38.217735, 38.966084>,  <37.346542, 38.610054, 38.929131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415241, 38.217735, 38.966084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039158, 0.086909, 0.995447,
		-0.984362, -0.174586, -0.023479,
		0.171751, -0.980799, 0.092386,
		37.466766, 37.923496, 38.993801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928162, 38.470119, 39.483231>,  <37.346542, 38.610054, 38.929131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928162, 38.470119, 39.483231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181835, 38.161957, 39.457043>,  <37.334038, 37.977058, 39.441330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181835, 38.161957, 39.457043>,  <36.928162, 38.470119, 39.483231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181835, 38.161957, 39.457043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131824, 0.024305, 0.990975,
		-0.761863, -0.637090, 0.116972,
		0.634183, -0.770407, -0.065466,
		37.372089, 37.930836, 39.437405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752968, 37.898445, 40.027981>,  <36.928162, 38.470119, 39.483231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752968, 37.898445, 40.027981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138557, 37.855930, 39.930443>,  <37.369911, 37.830421, 39.871918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.138557, 37.855930, 39.930443>,  <36.752968, 37.898445, 40.027981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138557, 37.855930, 39.930443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249949, 0.048254, 0.967056,
		-0.091023, -0.993163, 0.073083,
		0.963971, -0.106291, -0.243848,
		37.427750, 37.824043, 39.857288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982189, 37.561134, 40.551014>,  <36.752968, 37.898445, 40.027981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982189, 37.561134, 40.551014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.335258, 37.684048, 40.408772>,  <37.547100, 37.757793, 40.323425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.335258, 37.684048, 40.408772>,  <36.982189, 37.561134, 40.551014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335258, 37.684048, 40.408772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324725, 0.148250, 0.934118,
		0.339757, -0.940000, 0.031075,
		0.882677, 0.307282, -0.355610,
		37.600063, 37.776234, 40.302090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476410, 37.260136, 40.901775>,  <36.982189, 37.561134, 40.551014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476410, 37.260136, 40.901775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675911, 37.582016, 40.772964>,  <37.795612, 37.775143, 40.695679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675911, 37.582016, 40.772964>,  <37.476410, 37.260136, 40.901775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675911, 37.582016, 40.772964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340086, 0.160057, 0.926673,
		0.797236, -0.571701, -0.193837,
		0.498755, 0.804698, -0.322031,
		37.825539, 37.823425, 40.676353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076363, 37.313572, 41.218002>,  <37.476410, 37.260136, 40.901775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076363, 37.313572, 41.218002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028927, 37.697487, 41.116226>,  <38.000465, 37.927837, 41.055161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.028927, 37.697487, 41.116226>,  <38.076363, 37.313572, 41.218002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028927, 37.697487, 41.116226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137881, 0.269686, 0.953026,
		0.983324, 0.077934, -0.164318,
		-0.118587, 0.959789, -0.254443,
		37.993351, 37.985424, 41.039894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650951, 37.609497, 41.557751>,  <38.076363, 37.313572, 41.218002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650951, 37.609497, 41.557751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356339, 37.864998, 41.468750>,  <38.179569, 38.018299, 41.415348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356339, 37.864998, 41.468750>,  <38.650951, 37.609497, 41.557751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356339, 37.864998, 41.468750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017352, 0.310998, 0.950252,
		0.676175, 0.703757, -0.217977,
		-0.736537, 0.638754, -0.222501,
		38.135376, 38.056625, 41.402000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818920, 38.155960, 42.059258>,  <38.650951, 37.609497, 41.557751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818920, 38.155960, 42.059258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.450562, 38.224949, 41.919426>,  <38.229546, 38.266342, 41.835526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.450562, 38.224949, 41.919426>,  <38.818920, 38.155960, 42.059258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450562, 38.224949, 41.919426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288364, 0.302016, 0.908643,
		0.262292, 0.937571, -0.228391,
		-0.920896, 0.172470, -0.349578,
		38.174294, 38.276691, 41.814552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594128, 38.704330, 42.482861>,  <38.818920, 38.155960, 42.059258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594128, 38.704330, 42.482861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.241169, 38.604855, 42.323093>,  <38.029396, 38.545170, 42.227234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.241169, 38.604855, 42.323093>,  <38.594128, 38.704330, 42.482861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241169, 38.604855, 42.323093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460926, 0.286394, 0.839956,
		-0.094501, 0.925273, -0.367341,
		-0.882393, -0.248694, -0.399418,
		37.976452, 38.530247, 42.203270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117554, 39.270588, 42.638432>,  <38.594128, 38.704330, 42.482861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117554, 39.270588, 42.638432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.911728, 38.932621, 42.579998>,  <37.788231, 38.729843, 42.544937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.911728, 38.932621, 42.579998>,  <38.117554, 39.270588, 42.638432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911728, 38.932621, 42.579998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476848, 0.140387, 0.867702,
		-0.712626, 0.516150, -0.475134,
		-0.514568, -0.844914, -0.146081,
		37.757359, 38.679146, 42.536175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.374180, 39.419098, 42.677536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378311, 39.022041, 42.725800>,  <37.380791, 38.783806, 42.754757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.378311, 39.022041, 42.725800>,  <37.374180, 39.419098, 42.677536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378311, 39.022041, 42.725800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622508, 0.088047, 0.777645,
		-0.782545, -0.083144, -0.617017,
		0.010330, -0.992641, 0.120658,
		37.381409, 38.724251, 42.761997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700512, 39.205387, 42.921875>,  <37.374180, 39.419098, 42.677536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700512, 39.205387, 42.921875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928528, 38.889542, 43.012707>,  <37.065338, 38.700035, 43.067204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.928528, 38.889542, 43.012707>,  <36.700512, 39.205387, 42.921875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928528, 38.889542, 43.012707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495315, -0.109755, 0.861752,
		-0.655532, -0.603704, -0.453673,
		0.570036, -0.789617, 0.227075,
		37.099537, 38.652657, 43.080830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283756, 38.641644, 43.086712>,  <36.700512, 39.205387, 42.921875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283756, 38.641644, 43.086712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.630028, 38.584435, 43.278606>,  <36.837791, 38.550110, 43.393745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.630028, 38.584435, 43.278606>,  <36.283756, 38.641644, 43.086712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630028, 38.584435, 43.278606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493564, -0.083673, 0.865675,
		-0.083673, -0.986176, -0.143027,
		-0.865675, 0.143027, -0.479739,
		36.889729, 38.541527, 43.422527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084576, 38.314579, 43.768147>,  <36.283756, 38.641644, 43.086712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084576, 38.314579, 43.768147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.462479, 38.436123, 43.817295>,  <36.689220, 38.509048, 43.846786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.462479, 38.436123, 43.817295>,  <36.084576, 38.314579, 43.768147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462479, 38.436123, 43.817295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194300, 0.217296, 0.956572,
		0.263964, -0.927605, 0.264332,
		0.944759, 0.303860, 0.122875,
		36.745907, 38.527279, 43.854156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282192, 38.013588, 44.401424>,  <36.084576, 38.314579, 43.768147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282192, 38.013588, 44.401424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509735, 38.338821, 44.351940>,  <36.646259, 38.533962, 44.322250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.509735, 38.338821, 44.351940>,  <36.282192, 38.013588, 44.401424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509735, 38.338821, 44.351940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050107, 0.184402, 0.981573,
		0.820911, -0.552173, 0.145639,
		0.568854, 0.813081, -0.123709,
		36.680389, 38.582745, 44.314827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898720, 37.969128, 44.970600>,  <36.282192, 38.013588, 44.401424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898720, 37.969128, 44.970600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.867123, 38.344776, 44.836849>,  <36.848164, 38.570164, 44.756599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.867123, 38.344776, 44.836849>,  <36.898720, 37.969128, 44.970600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867123, 38.344776, 44.836849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041453, 0.338231, 0.940150,
		0.996013, 0.060403, -0.065647,
		-0.078992, 0.939123, -0.334378,
		36.843426, 38.626514, 44.736534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332760, 38.371723, 45.416893>,  <36.898720, 37.969128, 44.970600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332760, 38.371723, 45.416893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088345, 38.645596, 45.257973>,  <36.941696, 38.809917, 45.162621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.088345, 38.645596, 45.257973>,  <37.332760, 38.371723, 45.416893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088345, 38.645596, 45.257973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020457, 0.515389, 0.856712,
		0.791337, 0.515355, -0.328928,
		-0.611037, 0.684677, -0.397304,
		36.905033, 38.850998, 45.138783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633156, 39.032104, 45.667603>,  <37.332760, 38.371723, 45.416893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633156, 39.032104, 45.667603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246815, 39.085510, 45.578781>,  <37.015011, 39.117554, 45.525486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246815, 39.085510, 45.578781>,  <37.633156, 39.032104, 45.667603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246815, 39.085510, 45.578781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112946, 0.554349, 0.824585,
		0.233194, 0.821505, -0.520337,
		-0.965849, 0.133519, -0.222057,
		36.957062, 39.125565, 45.512165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493145, 39.684917, 45.685963>,  <37.633156, 39.032104, 45.667603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493145, 39.684917, 45.685963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132175, 39.524628, 45.749268>,  <36.915592, 39.428455, 45.787251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.132175, 39.524628, 45.749268>,  <37.493145, 39.684917, 45.685963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132175, 39.524628, 45.749268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141327, 0.622332, 0.769890,
		-0.407009, 0.672400, -0.618241,
		-0.902425, -0.400726, 0.158266,
		36.861446, 39.404411, 45.796749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169090, 40.149635, 46.107067>,  <37.493145, 39.684917, 45.685963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169090, 40.149635, 46.107067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921650, 39.838341, 46.150307>,  <36.773186, 39.651566, 46.176250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.921650, 39.838341, 46.150307>,  <37.169090, 40.149635, 46.107067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921650, 39.838341, 46.150307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252047, 0.326862, 0.910842,
		-0.744183, 0.536200, -0.398348,
		-0.618598, -0.778236, 0.108098,
		36.736069, 39.604870, 46.182735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516800, 40.432182, 46.240276>,  <37.169090, 40.149635, 46.107067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516800, 40.432182, 46.240276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535046, 40.061325, 46.389042>,  <36.545994, 39.838810, 46.478302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535046, 40.061325, 46.389042>,  <36.516800, 40.432182, 46.240276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535046, 40.061325, 46.389042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132561, 0.363394, 0.922156,
		-0.990125, -0.091367, -0.106327,
		0.045616, -0.927145, 0.371917,
		36.548729, 39.783180, 46.500618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239437, 40.457703, 46.844852>,  <36.516800, 40.432182, 46.240276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239437, 40.457703, 46.844852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.358273, 40.078918, 46.893841>,  <36.429573, 39.851646, 46.923233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.358273, 40.078918, 46.893841>,  <36.239437, 40.457703, 46.844852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358273, 40.078918, 46.893841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034062, 0.138688, 0.989750,
		-0.954242, -0.289870, 0.073458,
		0.297087, -0.946964, 0.122469,
		36.447399, 39.794830, 46.930580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729801, 40.083454, 47.244343>,  <36.239437, 40.457703, 46.844852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729801, 40.083454, 47.244343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.078556, 39.895168, 47.298359>,  <36.287811, 39.782196, 47.330769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.078556, 39.895168, 47.298359>,  <35.729801, 40.083454, 47.244343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078556, 39.895168, 47.298359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066456, 0.159474, 0.984963,
		-0.485174, -0.867752, 0.107762,
		0.871889, -0.470717, 0.135040,
		36.340122, 39.753952, 47.338871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626938, 39.826973, 47.890228>,  <35.729801, 40.083454, 47.244343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626938, 39.826973, 47.890228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.015446, 39.773216, 47.811672>,  <36.248550, 39.740963, 47.764538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.015446, 39.773216, 47.811672>,  <35.626938, 39.826973, 47.890228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015446, 39.773216, 47.811672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181355, -0.116291, 0.976518,
		-0.154080, -0.984080, -0.088576,
		0.971272, -0.134398, -0.196386,
		36.306828, 39.732899, 47.752758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819500, 39.353184, 48.347794>,  <35.626938, 39.826973, 47.890228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819500, 39.353184, 48.347794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.171093, 39.525288, 48.265553>,  <36.382050, 39.628551, 48.216209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.171093, 39.525288, 48.265553>,  <35.819500, 39.353184, 48.347794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171093, 39.525288, 48.265553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152880, 0.154140, 0.976150,
		0.451690, -0.889448, 0.069707,
		0.878979, 0.430261, -0.205602,
		36.434788, 39.654366, 48.203873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412743, 38.986137, 48.713615>,  <35.819500, 39.353184, 48.347794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412743, 38.986137, 48.713615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.503918, 39.372150, 48.661839>,  <36.558624, 39.603760, 48.630772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.503918, 39.372150, 48.661839>,  <36.412743, 38.986137, 48.713615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503918, 39.372150, 48.661839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071050, 0.149077, 0.986270,
		0.971080, -0.215610, 0.102546,
		0.227937, 0.965033, -0.129446,
		36.572300, 39.661659, 48.623005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838757, 39.148415, 49.330261>,  <36.412743, 38.986137, 48.713615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838757, 39.148415, 49.330261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754131, 39.501743, 49.162941>,  <36.703358, 39.713741, 49.062550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.754131, 39.501743, 49.162941>,  <36.838757, 39.148415, 49.330261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754131, 39.501743, 49.162941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028258, 0.433342, 0.900787,
		0.976956, 0.178752, -0.116639,
		-0.211562, 0.883325, -0.418305,
		36.690662, 39.766739, 49.037449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322979, 39.629845, 49.611362>,  <36.838757, 39.148415, 49.330261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322979, 39.629845, 49.611362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995533, 39.839035, 49.516392>,  <36.799065, 39.964550, 49.459408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.995533, 39.839035, 49.516392>,  <37.322979, 39.629845, 49.611362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995533, 39.839035, 49.516392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041376, 0.358613, 0.932569,
		0.572856, 0.773235, -0.271925,
		-0.818611, 0.522976, -0.237427,
		36.749950, 39.995930, 49.445164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490978, 40.286930, 49.916733>,  <37.322979, 39.629845, 49.611362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490978, 40.286930, 49.916733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.097721, 40.271389, 49.845268>,  <36.861767, 40.262066, 49.802391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.097721, 40.271389, 49.845268>,  <37.490978, 40.286930, 49.916733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097721, 40.271389, 49.845268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174546, 0.490352, 0.853867,
		0.054430, 0.870658, -0.488868,
		-0.983144, -0.038854, -0.178659,
		36.802776, 40.259731, 49.791672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188663, 40.955982, 50.127399>,  <37.490978, 40.286930, 49.916733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188663, 40.955982, 50.127399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863350, 40.727085, 50.085239>,  <36.668163, 40.589748, 50.059944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863350, 40.727085, 50.085239>,  <37.188663, 40.955982, 50.127399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863350, 40.727085, 50.085239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371775, 0.371697, 0.850662,
		-0.447606, 0.731015, -0.515040,
		-0.813285, -0.572240, -0.105399,
		36.619366, 40.555412, 50.053619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554157, 41.329674, 50.243580>,  <37.188663, 40.955982, 50.127399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554157, 41.329674, 50.243580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.452034, 40.953762, 50.334473>,  <36.390759, 40.728214, 50.389008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.452034, 40.953762, 50.334473>,  <36.554157, 41.329674, 50.243580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452034, 40.953762, 50.334473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161782, 0.273231, 0.948246,
		-0.953228, 0.205336, -0.221798,
		-0.255311, -0.939778, 0.227232,
		36.375443, 40.671829, 50.402641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846146, 41.211910, 50.520290>,  <36.554157, 41.329674, 50.243580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846146, 41.211910, 50.520290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094223, 40.931763, 50.661625>,  <36.243069, 40.763676, 50.746426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.094223, 40.931763, 50.661625>,  <35.846146, 41.211910, 50.520290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094223, 40.931763, 50.661625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320675, 0.184712, 0.929004,
		-0.715908, -0.689470, -0.110032,
		0.620196, -0.700366, 0.353333,
		36.280281, 40.721653, 50.767624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439980, 40.704411, 50.870205>,  <35.846146, 41.211910, 50.520290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439980, 40.704411, 50.870205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816174, 40.684551, 51.004677>,  <36.041889, 40.672638, 51.085361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816174, 40.684551, 51.004677>,  <35.439980, 40.704411, 50.870205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816174, 40.684551, 51.004677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333229, 0.059247, 0.940983,
		-0.066636, -0.997008, 0.039177,
		0.940488, -0.049649, 0.336180,
		36.098320, 40.669659, 51.105530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411678, 40.190788, 51.431759>,  <35.439980, 40.704411, 50.870205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411678, 40.190788, 51.431759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699322, 40.464371, 51.480907>,  <35.871906, 40.628521, 51.510395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699322, 40.464371, 51.480907>,  <35.411678, 40.190788, 51.431759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699322, 40.464371, 51.480907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393699, 0.255288, 0.883079,
		0.572616, -0.683402, 0.452850,
		0.719105, 0.683952, 0.122872,
		35.915054, 40.669556, 51.517769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664658, 40.439335, 51.686882>,  <35.411678, 40.190788, 51.431759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664658, 40.439335, 51.686882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.290459, 40.540932, 51.588638>,  <34.065937, 40.601891, 51.529694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.290459, 40.540932, 51.588638>,  <34.664658, 40.439335, 51.686882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290459, 40.540932, 51.588638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056307, -0.579080, -0.813324,
		-0.348807, -0.774696, 0.527428,
		-0.935502, 0.253995, -0.245608,
		34.009808, 40.617130, 51.514957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305614, 39.829956, 51.596024>,  <34.664658, 40.439335, 51.686882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305614, 39.829956, 51.596024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.090954, 40.095840, 51.388115>,  <33.962158, 40.255371, 51.263371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.090954, 40.095840, 51.388115>,  <34.305614, 39.829956, 51.596024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090954, 40.095840, 51.388115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119888, -0.669806, -0.732794,
		-0.835243, -0.330940, 0.439144,
		-0.536652, 0.664709, -0.519775,
		33.929958, 40.295254, 51.232182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865166, 39.432316, 51.246593>,  <34.305614, 39.829956, 51.596024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865166, 39.432316, 51.246593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796154, 39.785831, 51.072628>,  <33.754745, 39.997940, 50.968246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.796154, 39.785831, 51.072628>,  <33.865166, 39.432316, 51.246593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796154, 39.785831, 51.072628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196062, -0.463516, -0.864126,
		-0.965295, -0.063815, 0.253246,
		-0.172528, 0.883788, -0.434918,
		33.744396, 40.050968, 50.942154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276611, 39.430801, 50.832928>,  <33.865166, 39.432316, 51.246593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276611, 39.430801, 50.832928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524864, 39.704918, 50.680508>,  <33.673817, 39.869389, 50.589054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.524864, 39.704918, 50.680508>,  <33.276611, 39.430801, 50.832928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524864, 39.704918, 50.680508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223079, -0.311567, -0.923667,
		-0.751699, 0.658261, -0.040495,
		0.620632, 0.685287, -0.381049,
		33.711052, 39.910503, 50.566193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931599, 39.757030, 50.255589>,  <33.276611, 39.430801, 50.832928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931599, 39.757030, 50.255589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.309395, 39.872929, 50.193638>,  <33.536072, 39.942467, 50.156467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.309395, 39.872929, 50.193638>,  <32.931599, 39.757030, 50.255589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309395, 39.872929, 50.193638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064300, -0.299262, -0.952002,
		-0.322191, 0.909114, -0.264018,
		0.944488, 0.289750, -0.154875,
		33.592743, 39.959854, 50.147175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941936, 40.041035, 49.616814>,  <32.931599, 39.757030, 50.255589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941936, 40.041035, 49.616814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.338200, 39.993374, 49.643333>,  <33.575958, 39.964779, 49.659245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.338200, 39.993374, 49.643333>,  <32.941936, 40.041035, 49.616814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338200, 39.993374, 49.643333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023935, -0.326728, -0.944815,
		0.134236, 0.937578, -0.320824,
		0.990660, -0.119149, 0.066300,
		33.635399, 39.957630, 49.663223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232502, 40.412361, 49.150661>,  <32.941936, 40.041035, 49.616814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232502, 40.412361, 49.150661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.468494, 40.100292, 49.233860>,  <33.610088, 39.913052, 49.283779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.468494, 40.100292, 49.233860>,  <33.232502, 40.412361, 49.150661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468494, 40.100292, 49.233860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019659, -0.271409, -0.962263,
		0.807179, 0.563627, -0.175463,
		0.589980, -0.780168, 0.207995,
		33.645489, 39.866241, 49.296257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919456, 40.549732, 48.792137>,  <33.232502, 40.412361, 49.150661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919456, 40.549732, 48.792137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.823563, 40.163166, 48.829174>,  <33.766026, 39.931229, 48.851395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.823563, 40.163166, 48.829174>,  <33.919456, 40.549732, 48.792137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823563, 40.163166, 48.829174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141805, -0.129207, -0.981426,
		0.960425, -0.222155, 0.168018,
		-0.239738, -0.966412, 0.092591,
		33.751640, 39.873241, 48.856953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117207, 40.309559, 48.182968>,  <33.919456, 40.549732, 48.792137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117207, 40.309559, 48.182968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.982597, 39.959938, 48.323132>,  <33.901833, 39.750164, 48.407230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.982597, 39.959938, 48.323132>,  <34.117207, 40.309559, 48.182968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982597, 39.959938, 48.323132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100938, -0.403450, -0.909417,
		0.936251, -0.270668, 0.223995,
		-0.336521, -0.874052, 0.350410,
		33.881641, 39.697723, 48.428253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667564, 39.764046, 48.065655>,  <34.117207, 40.309559, 48.182968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667564, 39.764046, 48.065655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.312042, 39.581421, 48.081512>,  <34.098728, 39.471848, 48.091026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.312042, 39.581421, 48.081512>,  <34.667564, 39.764046, 48.065655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312042, 39.581421, 48.081512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156271, -0.383270, -0.910321,
		0.430812, -0.802905, 0.412001,
		-0.888809, -0.456561, 0.039646,
		34.045399, 39.444454, 48.093407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792667, 39.199852, 47.717438>,  <34.667564, 39.764046, 48.065655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792667, 39.199852, 47.717438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.393059, 39.182323, 47.715126>,  <34.153294, 39.171806, 47.713737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.393059, 39.182323, 47.715126>,  <34.792667, 39.199852, 47.717438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393059, 39.182323, 47.715126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021039, -0.356377, -0.934105,
		0.038873, -0.933314, 0.356951,
		-0.999022, -0.043821, -0.005783,
		34.093353, 39.169178, 47.713390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694794, 38.549984, 47.447594>,  <34.792667, 39.199852, 47.717438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694794, 38.549984, 47.447594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.378059, 38.787079, 47.388741>,  <34.188019, 38.929337, 47.353428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.378059, 38.787079, 47.388741>,  <34.694794, 38.549984, 47.447594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378059, 38.787079, 47.388741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065971, -0.156483, -0.985475,
		-0.607155, -0.790045, 0.084806,
		-0.791840, 0.592741, -0.147130,
		34.140507, 38.964901, 47.344601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323711, 38.164978, 46.957970>,  <34.694794, 38.549984, 47.447594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323711, 38.164978, 46.957970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195084, 38.543659, 46.950478>,  <34.117908, 38.770866, 46.945980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195084, 38.543659, 46.950478>,  <34.323711, 38.164978, 46.957970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195084, 38.543659, 46.950478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040927, -0.033663, -0.998595,
		-0.946003, -0.320346, 0.049571,
		-0.321565, 0.946702, -0.018735,
		34.098614, 38.827671, 46.944859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948956, 38.161373, 46.364525>,  <34.323711, 38.164978, 46.957970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948956, 38.161373, 46.364525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991074, 38.551579, 46.441761>,  <34.016342, 38.785702, 46.488102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.991074, 38.551579, 46.441761>,  <33.948956, 38.161373, 46.364525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991074, 38.551579, 46.441761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085462, 0.202327, -0.975582,
		-0.990762, 0.086221, 0.104674,
		0.105294, 0.975515, 0.193089,
		34.022663, 38.844234, 46.499687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481880, 38.421333, 45.862885>,  <33.948956, 38.161373, 46.364525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481880, 38.421333, 45.862885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726177, 38.718815, 45.971622>,  <33.872753, 38.897305, 46.036865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726177, 38.718815, 45.971622>,  <33.481880, 38.421333, 45.862885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726177, 38.718815, 45.971622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024676, 0.325270, -0.945299,
		-0.791446, 0.584040, 0.180304,
		0.610740, 0.743704, 0.271846,
		33.909401, 38.941925, 46.053177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230469, 38.982403, 45.630653>,  <33.481880, 38.421333, 45.862885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230469, 38.982403, 45.630653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604755, 39.111431, 45.687767>,  <33.829327, 39.188847, 45.722034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.604755, 39.111431, 45.687767>,  <33.230469, 38.982403, 45.630653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604755, 39.111431, 45.687767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026474, 0.339404, -0.940268,
		-0.351761, 0.883603, 0.309045,
		0.935715, 0.322568, 0.142782,
		33.885471, 39.208202, 45.730602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281414, 39.668518, 45.468246>,  <33.230469, 38.982403, 45.630653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281414, 39.668518, 45.468246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.642025, 39.509548, 45.399776>,  <33.858391, 39.414165, 45.358696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.642025, 39.509548, 45.399776>,  <33.281414, 39.668518, 45.468246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642025, 39.509548, 45.399776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036024, 0.325272, -0.944934,
		0.431223, 0.858049, 0.278925,
		0.901526, -0.397429, -0.171175,
		33.912483, 39.390320, 45.348423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465080, 40.129799, 44.997730>,  <33.281414, 39.668518, 45.468246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465080, 40.129799, 44.997730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.694302, 39.803223, 44.969349>,  <33.831833, 39.607277, 44.952320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.694302, 39.803223, 44.969349>,  <33.465080, 40.129799, 44.997730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694302, 39.803223, 44.969349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061427, 0.129127, -0.989724,
		0.817215, 0.562803, 0.124148,
		0.573050, -0.816443, -0.070954,
		33.866215, 39.558289, 44.948063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928146, 40.278980, 44.446232>,  <33.465080, 40.129799, 44.997730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928146, 40.278980, 44.446232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990158, 39.886261, 44.490135>,  <34.027363, 39.650631, 44.516476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.990158, 39.886261, 44.490135>,  <33.928146, 40.278980, 44.446232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990158, 39.886261, 44.490135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127713, -0.090251, -0.987696,
		0.979620, 0.167138, 0.111397,
		0.155028, -0.981794, 0.109758,
		34.036667, 39.591724, 44.523064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522274, 40.127617, 44.010696>,  <33.928146, 40.278980, 44.446232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522274, 40.127617, 44.010696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316132, 39.787037, 44.049576>,  <34.192448, 39.582691, 44.072903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316132, 39.787037, 44.049576>,  <34.522274, 40.127617, 44.010696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316132, 39.787037, 44.049576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017663, -0.123948, -0.992132,
		0.856795, -0.509583, 0.078916,
		-0.515355, -0.851447, 0.097198,
		34.161526, 39.531601, 44.078735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.992680, 42.564697, 34.829048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.699234, 42.824390, 34.748753>,  <46.523167, 42.980206, 34.700577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.699234, 42.824390, 34.748753>,  <46.992680, 42.564697, 34.829048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.699234, 42.824390, 34.748753> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669641, -0.740940, 0.050887,
		-0.115697, 0.171754, 0.978322,
		-0.733618, 0.649237, -0.200738,
		46.479149, 43.019161, 34.688530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.467163, 42.373051, 35.281338>,  <46.992680, 42.564697, 34.829048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.467163, 42.373051, 35.281338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280807, 42.552277, 34.976135>,  <46.168995, 42.659813, 34.793015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280807, 42.552277, 34.976135>,  <46.467163, 42.373051, 35.281338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280807, 42.552277, 34.976135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723041, -0.689847, 0.036385,
		-0.510056, 0.568638, 0.645363,
		-0.465891, 0.448066, -0.763009,
		46.141041, 42.686695, 34.747234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.747066, 42.405785, 35.486526>,  <46.467163, 42.373051, 35.281338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.747066, 42.405785, 35.486526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.736885, 42.465763, 35.091179>,  <45.730774, 42.501751, 34.853970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.736885, 42.465763, 35.091179>,  <45.747066, 42.405785, 35.486526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736885, 42.465763, 35.091179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751176, -0.655229, -0.080057,
		-0.659611, 0.740399, 0.129314,
		-0.025456, 0.149944, -0.988367,
		45.729248, 42.510746, 34.794670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006657, 42.438324, 35.350346>,  <45.747066, 42.405785, 35.486526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006657, 42.438324, 35.350346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193764, 42.359505, 35.005703>,  <45.306026, 42.312214, 34.798916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.193764, 42.359505, 35.005703>,  <45.006657, 42.438324, 35.350346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193764, 42.359505, 35.005703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734991, -0.628153, -0.255368,
		-0.490900, 0.752725, -0.438659,
		0.467767, -0.197050, -0.861606,
		45.334095, 42.300388, 34.747223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497242, 42.348072, 34.767490>,  <45.006657, 42.438324, 35.350346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497242, 42.348072, 34.767490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812943, 42.150578, 34.621445>,  <45.002361, 42.032082, 34.533817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.812943, 42.150578, 34.621445>,  <44.497242, 42.348072, 34.767490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.812943, 42.150578, 34.621445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591549, -0.770860, -0.236315,
		-0.164773, 0.402494, -0.900471,
		0.789252, -0.493734, -0.365112,
		45.049717, 42.002457, 34.511909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298576, 41.900204, 34.337933>,  <44.497242, 42.348072, 34.767490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298576, 41.900204, 34.337933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659664, 41.737602, 34.394299>,  <44.876316, 41.640041, 34.428120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659664, 41.737602, 34.394299>,  <44.298576, 41.900204, 34.337933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659664, 41.737602, 34.394299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406592, -0.913133, -0.029501,
		0.140667, -0.030664, -0.989582,
		0.902716, -0.406506, 0.140916,
		44.930477, 41.615650, 34.436573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.437775, 41.384800, 33.788990>,  <44.298576, 41.900204, 34.337933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.437775, 41.384800, 33.788990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.673054, 41.287479, 34.097492>,  <44.814220, 41.229088, 34.282593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.673054, 41.287479, 34.097492>,  <44.437775, 41.384800, 33.788990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.673054, 41.287479, 34.097492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341688, -0.939136, -0.035678,
		0.732991, -0.242542, -0.635530,
		0.588196, -0.243304, 0.771252,
		44.849514, 41.214489, 34.328869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756863, 40.717525, 33.522110>,  <44.437775, 41.384800, 33.788990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.756863, 40.717525, 33.522110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.785027, 40.714104, 33.921104>,  <44.801926, 40.712051, 34.160500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.785027, 40.714104, 33.921104>,  <44.756863, 40.717525, 33.522110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785027, 40.714104, 33.921104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236438, -0.971611, 0.008353,
		0.969092, -0.236431, -0.070430,
		0.070405, -0.008558, 0.997482,
		44.806149, 40.711536, 34.220348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151001, 40.144783, 33.697948>,  <44.756863, 40.717525, 33.522110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151001, 40.144783, 33.697948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.955902, 40.221909, 34.038521>,  <44.838844, 40.268185, 34.242863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.955902, 40.221909, 34.038521>,  <45.151001, 40.144783, 33.697948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.955902, 40.221909, 34.038521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126921, -0.980604, 0.149357,
		0.863710, -0.035215, 0.502757,
		-0.487746, 0.192811, 0.851427,
		44.809578, 40.279751, 34.293949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.325760, 39.683952, 34.184242>,  <45.151001, 40.144783, 33.697948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.325760, 39.683952, 34.184242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.971718, 39.788467, 34.338284>,  <44.759293, 39.851177, 34.430710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.971718, 39.788467, 34.338284>,  <45.325760, 39.683952, 34.184242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971718, 39.788467, 34.338284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208251, -0.962410, 0.174349,
		0.416188, 0.074119, 0.906253,
		-0.885110, 0.261290, 0.385108,
		44.706184, 39.866856, 34.453815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.205730, 39.092846, 34.705463>,  <45.325760, 39.683952, 34.184242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.205730, 39.092846, 34.705463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.856171, 39.283295, 34.666248>,  <44.646435, 39.397564, 34.642719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.856171, 39.283295, 34.666248>,  <45.205730, 39.092846, 34.705463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.856171, 39.283295, 34.666248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484947, -0.839930, 0.243608,
		0.033639, 0.260433, 0.964906,
		-0.873896, 0.476123, -0.098042,
		44.594002, 39.426132, 34.636837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840164, 39.020344, 35.363060>,  <45.205730, 39.092846, 34.705463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840164, 39.020344, 35.363060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.582413, 39.087505, 35.064640>,  <44.427761, 39.127800, 34.885590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.582413, 39.087505, 35.064640>,  <44.840164, 39.020344, 35.363060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582413, 39.087505, 35.064640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552722, -0.776466, 0.302653,
		-0.528464, 0.607379, 0.593141,
		-0.644379, 0.167901, -0.746046,
		44.389099, 39.137875, 34.840828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211613, 38.798119, 35.692478>,  <44.840164, 39.020344, 35.363060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211613, 38.798119, 35.692478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116035, 38.795364, 35.304073>,  <44.058689, 38.793713, 35.071030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.116035, 38.795364, 35.304073>,  <44.211613, 38.798119, 35.692478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116035, 38.795364, 35.304073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621647, -0.767112, 0.158411,
		-0.745963, 0.641476, 0.179017,
		-0.238943, -0.006883, -0.971009,
		44.044353, 38.793301, 35.012772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527496, 38.605522, 35.635933>,  <44.211613, 38.798119, 35.692478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527496, 38.605522, 35.635933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.639828, 38.552677, 35.255684>,  <43.707226, 38.520969, 35.027534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.639828, 38.552677, 35.255684>,  <43.527496, 38.605522, 35.635933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639828, 38.552677, 35.255684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559180, -0.827526, -0.050189,
		-0.780033, 0.545663, -0.306268,
		0.280831, -0.132110, -0.950621,
		43.724075, 38.513042, 34.970497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.866467, 38.472328, 35.279831>,  <43.527496, 38.605522, 35.635933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.866467, 38.472328, 35.279831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.173622, 38.336636, 35.062473>,  <43.357914, 38.255219, 34.932060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.173622, 38.336636, 35.062473>,  <42.866467, 38.472328, 35.279831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.173622, 38.336636, 35.062473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421705, -0.906231, -0.030179,
		-0.482199, 0.252324, -0.838938,
		0.767886, -0.339232, -0.543390,
		43.403988, 38.234867, 34.899456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505558, 38.090733, 34.784340>,  <42.866467, 38.472328, 35.279831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505558, 38.090733, 34.784340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.889423, 37.978817, 34.773277>,  <43.119743, 37.911667, 34.766640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.889423, 37.978817, 34.773277>,  <42.505558, 38.090733, 34.784340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.889423, 37.978817, 34.773277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281117, -0.956529, -0.077621,
		-0.004739, 0.082265, -0.996599,
		0.959662, -0.279794, -0.027659,
		43.177322, 37.894878, 34.764980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570885, 37.586147, 34.248871>,  <42.505558, 38.090733, 34.784340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570885, 37.586147, 34.248871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.882874, 37.549934, 34.496563>,  <43.070068, 37.528206, 34.645176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.882874, 37.549934, 34.496563>,  <42.570885, 37.586147, 34.248871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882874, 37.549934, 34.496563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194128, -0.975672, 0.101873,
		0.594940, -0.199668, -0.778575,
		0.779975, -0.090535, 0.619227,
		43.116867, 37.522774, 34.682331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891541, 36.927670, 34.000088>,  <42.570885, 37.586147, 34.248871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891541, 36.927670, 34.000088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.009594, 37.007961, 34.373741>,  <43.080425, 37.056137, 34.597931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.009594, 37.007961, 34.373741>,  <42.891541, 36.927670, 34.000088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009594, 37.007961, 34.373741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224471, -0.935750, 0.272002,
		0.928713, -0.289963, -0.231115,
		0.295137, 0.200733, 0.934131,
		43.098133, 37.068180, 34.653980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250275, 36.404572, 34.199741>,  <42.891541, 36.927670, 34.000088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250275, 36.404572, 34.199741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157761, 36.554947, 34.558670>,  <43.102253, 36.645172, 34.774025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157761, 36.554947, 34.558670>,  <43.250275, 36.404572, 34.199741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157761, 36.554947, 34.558670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157949, -0.924599, 0.346653,
		0.959979, -0.061555, 0.273223,
		-0.231284, 0.375935, 0.897318,
		43.088375, 36.667728, 34.827866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799671, 36.110222, 34.638638>,  <43.250275, 36.404572, 34.199741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799671, 36.110222, 34.638638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.493877, 36.225605, 34.869240>,  <43.310402, 36.294834, 35.007603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.493877, 36.225605, 34.869240>,  <43.799671, 36.110222, 34.638638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493877, 36.225605, 34.869240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143717, -0.948057, 0.283784,
		0.628423, 0.134093, 0.766227,
		-0.764480, 0.288457, 0.576510,
		43.264534, 36.312141, 35.042194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814640, 35.722023, 35.296055>,  <43.799671, 36.110222, 34.638638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814640, 35.722023, 35.296055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.430859, 35.825188, 35.250580>,  <43.200588, 35.887085, 35.223293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.430859, 35.825188, 35.250580>,  <43.814640, 35.722023, 35.296055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.430859, 35.825188, 35.250580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280339, -0.915032, 0.290045,
		-0.029224, 0.310157, 0.950236,
		-0.959456, 0.257912, -0.113690,
		43.143021, 35.902561, 35.216473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324398, 36.168098, 35.470554>,  <43.814640, 35.722023, 35.296055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324398, 36.168098, 35.470554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.671162, 36.076344, 35.647575>,  <44.879219, 36.021290, 35.753788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.671162, 36.076344, 35.647575>,  <44.324398, 36.168098, 35.470554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671162, 36.076344, 35.647575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143299, 0.965031, 0.219502,
		-0.477426, -0.126872, 0.869464,
		0.866908, -0.229389, 0.442550,
		44.931232, 36.007526, 35.780342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171631, 36.551788, 36.035408>,  <44.324398, 36.168098, 35.470554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171631, 36.551788, 36.035408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.558998, 36.455223, 36.010452>,  <44.791416, 36.397282, 35.995480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.558998, 36.455223, 36.010452>,  <44.171631, 36.551788, 36.035408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.558998, 36.455223, 36.010452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248212, 0.909485, 0.333508,
		-0.023770, -0.338460, 0.940680,
		0.968414, -0.241416, -0.062392,
		44.849522, 36.382797, 35.991734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451759, 36.604050, 36.617619>,  <44.171631, 36.551788, 36.035408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.451759, 36.604050, 36.617619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.755066, 36.647686, 36.360516>,  <44.937050, 36.673866, 36.206253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.755066, 36.647686, 36.360516>,  <44.451759, 36.604050, 36.617619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755066, 36.647686, 36.360516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190788, 0.905610, 0.378775,
		0.623403, -0.409842, 0.665882,
		0.758267, 0.109087, -0.642753,
		44.982544, 36.680412, 36.167690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.077778, 36.681614, 37.021526>,  <44.451759, 36.604050, 36.617619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.077778, 36.681614, 37.021526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.148735, 36.854050, 36.667645>,  <45.191311, 36.957512, 36.455315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.148735, 36.854050, 36.667645>,  <45.077778, 36.681614, 37.021526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148735, 36.854050, 36.667645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041666, 0.894862, 0.444393,
		0.983257, -0.115695, 0.140782,
		0.177395, 0.431087, -0.884701,
		45.201954, 36.983376, 36.402233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626381, 37.135540, 37.172928>,  <45.077778, 36.681614, 37.021526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.626381, 37.135540, 37.172928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.486000, 37.257900, 36.818920>,  <45.401772, 37.331318, 36.606514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.486000, 37.257900, 36.818920>,  <45.626381, 37.135540, 37.172928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.486000, 37.257900, 36.818920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233061, 0.943927, 0.233845,
		0.906927, -0.124195, -0.402565,
		-0.350950, 0.305903, -0.885018,
		45.380714, 37.349670, 36.553413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.085907, 37.547287, 36.928253>,  <45.626381, 37.135540, 37.172928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.085907, 37.547287, 36.928253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.751038, 37.659077, 36.740196>,  <45.550114, 37.726151, 36.627361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.751038, 37.659077, 36.740196>,  <46.085907, 37.547287, 36.928253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.751038, 37.659077, 36.740196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202164, 0.956837, 0.208790,
		0.508195, 0.079749, -0.857542,
		-0.837178, 0.279470, -0.470138,
		45.499886, 37.742916, 36.599155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.342442, 38.197876, 36.634922>,  <46.085907, 37.547287, 36.928253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.342442, 38.197876, 36.634922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.943527, 38.224972, 36.646416>,  <45.704178, 38.241230, 36.653313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.943527, 38.224972, 36.646416>,  <46.342442, 38.197876, 36.634922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943527, 38.224972, 36.646416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072646, 0.968591, 0.237811,
		-0.011724, 0.239254, -0.970886,
		-0.997289, 0.067743, 0.028736,
		45.644341, 38.245296, 36.655037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196247, 38.804085, 36.325172>,  <46.342442, 38.197876, 36.634922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196247, 38.804085, 36.325172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.862652, 38.714428, 36.526855>,  <45.662495, 38.660633, 36.647865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.862652, 38.714428, 36.526855>,  <46.196247, 38.804085, 36.325172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.862652, 38.714428, 36.526855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021624, 0.926353, 0.376035,
		-0.551364, 0.302704, -0.777411,
		-0.833985, -0.224142, 0.504212,
		45.612457, 38.647186, 36.678120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.575684, 39.313667, 36.103954>,  <46.196247, 38.804085, 36.325172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.575684, 39.313667, 36.103954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.495750, 39.160763, 36.464828>,  <45.447788, 39.069019, 36.681355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.495750, 39.160763, 36.464828>,  <45.575684, 39.313667, 36.103954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495750, 39.160763, 36.464828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210377, 0.916024, 0.341527,
		-0.956978, -0.121550, -0.263474,
		-0.199836, -0.382263, 0.902186,
		45.435799, 39.046085, 36.735485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034775, 39.664284, 36.282207>,  <45.575684, 39.313667, 36.103954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034775, 39.664284, 36.282207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.150902, 39.503139, 36.629406>,  <45.220577, 39.406452, 36.837727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.150902, 39.503139, 36.629406>,  <45.034775, 39.664284, 36.282207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150902, 39.503139, 36.629406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310113, 0.818502, 0.483615,
		-0.905286, -0.409581, 0.112697,
		0.290322, -0.402862, 0.867995,
		45.237999, 39.382282, 36.889805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.439766, 39.597767, 36.793491>,  <45.034775, 39.664284, 36.282207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.439766, 39.597767, 36.793491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.772171, 39.594734, 37.015972>,  <44.971615, 39.592915, 37.149460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.772171, 39.594734, 37.015972>,  <44.439766, 39.597767, 36.793491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772171, 39.594734, 37.015972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392396, 0.700731, 0.595820,
		-0.394263, -0.713385, 0.579343,
		0.831012, -0.007578, 0.556202,
		45.021473, 39.592461, 37.182831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171989, 39.666157, 37.501972>,  <44.439766, 39.597767, 36.793491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171989, 39.666157, 37.501972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.559917, 39.763355, 37.509983>,  <44.792675, 39.821674, 37.514790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.559917, 39.763355, 37.509983>,  <44.171989, 39.666157, 37.501972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.559917, 39.763355, 37.509983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190083, 0.702079, 0.686261,
		0.152699, -0.669356, 0.727080,
		0.969820, 0.242997, 0.020027,
		44.850864, 39.836254, 37.515991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268894, 39.961960, 38.201462>,  <44.171989, 39.666157, 37.501972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268894, 39.961960, 38.201462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.604359, 40.072029, 38.013454>,  <44.805637, 40.138073, 37.900650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.604359, 40.072029, 38.013454>,  <44.268894, 39.961960, 38.201462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604359, 40.072029, 38.013454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034882, 0.834072, 0.550552,
		0.543529, -0.478124, 0.689909,
		0.838665, 0.275175, -0.470021,
		44.855957, 40.154583, 37.872448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751030, 40.129337, 38.785225>,  <44.268894, 39.961960, 38.201462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.751030, 40.129337, 38.785225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.827812, 40.311626, 38.437553>,  <44.873882, 40.421001, 38.228951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.827812, 40.311626, 38.437553>,  <44.751030, 40.129337, 38.785225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.827812, 40.311626, 38.437553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101587, 0.890117, 0.444266,
		0.976131, 0.003016, 0.217162,
		0.191960, 0.455723, -0.869177,
		44.885399, 40.448341, 38.176800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.347256, 40.507149, 38.942055>,  <44.751030, 40.129337, 38.785225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.347256, 40.507149, 38.942055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172070, 40.652306, 38.613056>,  <45.066959, 40.739399, 38.415657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172070, 40.652306, 38.613056>,  <45.347256, 40.507149, 38.942055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172070, 40.652306, 38.613056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183143, 0.859706, 0.476827,
		0.880139, 0.359468, -0.310062,
		-0.437966, 0.362889, -0.822495,
		45.040680, 40.761173, 38.366306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702152, 41.121773, 38.856136>,  <45.347256, 40.507149, 38.942055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.702152, 41.121773, 38.856136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.354763, 41.155594, 38.660748>,  <45.146328, 41.175888, 38.543514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.354763, 41.155594, 38.660748>,  <45.702152, 41.121773, 38.856136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.354763, 41.155594, 38.660748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064649, 0.957615, 0.280703,
		0.491504, 0.275362, -0.826196,
		-0.868472, 0.084554, -0.488474,
		45.094223, 41.180962, 38.514206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837753, 41.664337, 38.421486>,  <45.702152, 41.121773, 38.856136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.837753, 41.664337, 38.421486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.443897, 41.632298, 38.483543>,  <45.207584, 41.613071, 38.520779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.443897, 41.632298, 38.483543>,  <45.837753, 41.664337, 38.421486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443897, 41.632298, 38.483543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051326, 0.982086, 0.181311,
		-0.166885, 0.170563, -0.971112,
		-0.984640, -0.080102, 0.155141,
		45.148506, 41.608269, 38.530087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657646, 42.211605, 38.041096>,  <45.837753, 41.664337, 38.421486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657646, 42.211605, 38.041096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339169, 42.133141, 38.270042>,  <45.148083, 42.086060, 38.407410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339169, 42.133141, 38.270042>,  <45.657646, 42.211605, 38.041096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339169, 42.133141, 38.270042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125292, 0.978934, 0.161216,
		-0.591933, 0.056645, -0.803994,
		-0.796189, -0.196163, 0.572366,
		45.100311, 42.074291, 38.441753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.023937, 42.689510, 37.818153>,  <45.657646, 42.211605, 38.041096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.023937, 42.689510, 37.818153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.921623, 42.556007, 38.181072>,  <44.860233, 42.475906, 38.398823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.921623, 42.556007, 38.181072>,  <45.023937, 42.689510, 37.818153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921623, 42.556007, 38.181072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321206, 0.914537, 0.245863,
		-0.911811, -0.228539, -0.341132,
		-0.255788, -0.333754, 0.907293,
		44.844887, 42.455883, 38.453259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221767, 42.821777, 38.007900>,  <45.023937, 42.689510, 37.818153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221767, 42.821777, 38.007900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.416988, 42.802448, 38.356491>,  <44.534122, 42.790852, 38.565643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.416988, 42.802448, 38.356491>,  <44.221767, 42.821777, 38.007900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.416988, 42.802448, 38.356491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281929, 0.936216, 0.209801,
		-0.826026, -0.348088, 0.443301,
		0.488054, -0.048322, 0.871475,
		44.563404, 42.787952, 38.617935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715061, 43.016605, 38.609360>,  <44.221767, 42.821777, 38.007900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715061, 43.016605, 38.609360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.087822, 43.079433, 38.740139>,  <44.311478, 43.117130, 38.818607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.087822, 43.079433, 38.740139>,  <43.715061, 43.016605, 38.609360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087822, 43.079433, 38.740139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252298, 0.928292, 0.273167,
		-0.260599, -0.337053, 0.904701,
		0.931898, 0.157067, 0.326949,
		44.367390, 43.126553, 38.838223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.701118, 38.289330, 39.884525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377914, 38.104359, 40.030556>,  <38.183994, 37.993374, 40.118176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377914, 38.104359, 40.030556>,  <38.701118, 38.289330, 39.884525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377914, 38.104359, 40.030556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231102, -0.321230, -0.918370,
		0.541956, -0.826420, 0.152688,
		-0.808007, -0.462429, 0.365080,
		38.135513, 37.965630, 40.140079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644341, 37.549641, 39.645531>,  <38.701118, 38.289330, 39.884525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644341, 37.549641, 39.645531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259953, 37.644554, 39.702431>,  <38.029320, 37.701500, 39.736572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259953, 37.644554, 39.702431>,  <38.644341, 37.549641, 39.645531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259953, 37.644554, 39.702431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220706, -0.347477, -0.911344,
		-0.166813, -0.907171, 0.386284,
		-0.960970, 0.237279, 0.142254,
		37.971661, 37.715740, 39.745106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248688, 36.995270, 39.422459>,  <38.644341, 37.549641, 39.645531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248688, 36.995270, 39.422459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963112, 37.275352, 39.423107>,  <37.791767, 37.443401, 39.423496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963112, 37.275352, 39.423107>,  <38.248688, 36.995270, 39.422459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963112, 37.275352, 39.423107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339873, -0.344520, -0.875095,
		-0.612188, -0.625316, 0.483948,
		-0.713940, 0.700204, 0.001617,
		37.748928, 37.485413, 39.423592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605656, 36.653877, 39.107555>,  <38.248688, 36.995270, 39.422459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605656, 36.653877, 39.107555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581745, 37.052082, 39.078236>,  <37.567398, 37.291008, 39.060642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581745, 37.052082, 39.078236>,  <37.605656, 36.653877, 39.107555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581745, 37.052082, 39.078236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446732, -0.092349, -0.889889,
		-0.892669, -0.020447, 0.450250,
		-0.059776, 0.995517, -0.073303,
		37.563812, 37.350739, 39.056244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935326, 36.704067, 38.962948>,  <37.605656, 36.653877, 39.107555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935326, 36.704067, 38.962948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082829, 37.049526, 38.825470>,  <37.171329, 37.256802, 38.742981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082829, 37.049526, 38.825470>,  <36.935326, 36.704067, 38.962948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082829, 37.049526, 38.825470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346699, -0.215281, -0.912937,
		-0.862450, 0.455810, 0.220041,
		0.368755, 0.863650, -0.343698,
		37.193455, 37.308620, 38.722359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589172, 36.800980, 38.409317>,  <36.935326, 36.704067, 38.962948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589172, 36.800980, 38.409317> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879700, 37.071018, 38.357620>,  <37.054016, 37.233040, 38.326603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879700, 37.071018, 38.357620>,  <36.589172, 36.800980, 38.409317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879700, 37.071018, 38.357620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084477, -0.098931, -0.991502,
		-0.682146, 0.731065, -0.014825,
		0.726319, 0.675097, -0.129244,
		37.097595, 37.273548, 38.318848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396290, 37.472973, 38.036148>,  <36.589172, 36.800980, 38.409317>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396290, 37.472973, 38.036148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773380, 37.359459, 37.966030>,  <36.999634, 37.291351, 37.923958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773380, 37.359459, 37.966030>,  <36.396290, 37.472973, 38.036148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773380, 37.359459, 37.966030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202062, -0.067733, -0.977028,
		0.265391, 0.956493, -0.121196,
		0.942729, -0.283783, -0.175296,
		37.056198, 37.274323, 37.913441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683830, 38.005856, 37.548996>,  <36.396290, 37.472973, 38.036148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683830, 38.005856, 37.548996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916515, 37.681313, 37.526012>,  <37.056126, 37.486588, 37.512222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916515, 37.681313, 37.526012>,  <36.683830, 38.005856, 37.548996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916515, 37.681313, 37.526012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131166, 0.163294, -0.977819,
		0.802746, 0.561276, 0.201414,
		0.581716, -0.811360, -0.057463,
		37.091030, 37.437904, 37.508774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283550, 38.180798, 37.032845>,  <36.683830, 38.005856, 37.548996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283550, 38.180798, 37.032845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245079, 37.783173, 37.053188>,  <37.221996, 37.544598, 37.065395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245079, 37.783173, 37.053188>,  <37.283550, 38.180798, 37.032845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245079, 37.783173, 37.053188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073453, -0.058049, -0.995608,
		0.992650, -0.092022, 0.078600,
		-0.096180, -0.994064, 0.050863,
		37.216225, 37.484955, 37.068447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526623, 38.041843, 36.473263>,  <37.283550, 38.180798, 37.032845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526623, 38.041843, 36.473263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400848, 37.675430, 36.572872>,  <37.325382, 37.455582, 36.632637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400848, 37.675430, 36.572872>,  <37.526623, 38.041843, 36.473263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400848, 37.675430, 36.572872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131312, -0.301778, -0.944292,
		0.940151, -0.264224, 0.215178,
		-0.314440, -0.916032, 0.249021,
		37.306515, 37.400620, 36.647579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031338, 37.577148, 36.272560>,  <37.526623, 38.041843, 36.473263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031338, 37.577148, 36.272560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699028, 37.358730, 36.315731>,  <37.499641, 37.227680, 36.341633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699028, 37.358730, 36.315731>,  <38.031338, 37.577148, 36.272560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699028, 37.358730, 36.315731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122430, -0.368419, -0.921563,
		0.542980, -0.752396, 0.372925,
		-0.830773, -0.546047, 0.107928,
		37.449795, 37.194916, 36.348110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233746, 36.887863, 36.035717>,  <38.031338, 37.577148, 36.272560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233746, 36.887863, 36.035717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837444, 36.938122, 36.015224>,  <37.599663, 36.968277, 36.002930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837444, 36.938122, 36.015224>,  <38.233746, 36.887863, 36.035717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837444, 36.938122, 36.015224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005500, -0.340057, -0.940389,
		-0.135576, -0.931974, 0.336221,
		-0.990752, 0.125645, -0.051230,
		37.540218, 36.975815, 35.999855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934673, 36.261719, 35.867294>,  <38.233746, 36.887863, 36.035717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934673, 36.261719, 35.867294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719967, 36.578857, 35.751862>,  <37.591145, 36.769142, 35.682602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719967, 36.578857, 35.751862>,  <37.934673, 36.261719, 35.867294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719967, 36.578857, 35.751862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078025, -0.387206, -0.918686,
		-0.840117, -0.470601, 0.269700,
		-0.536764, 0.792847, -0.288579,
		37.558937, 36.816711, 35.665287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656780, 35.874035, 36.084812>,  <37.934673, 36.261719, 35.867294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656780, 35.874035, 36.084812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362999, 36.060055, 36.282524>,  <38.186729, 36.171665, 36.401150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362999, 36.060055, 36.282524>,  <38.656780, 35.874035, 36.084812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362999, 36.060055, 36.282524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316237, 0.409899, -0.855557,
		-0.600478, -0.784675, -0.153986,
		-0.734452, 0.465047, 0.494278,
		38.142662, 36.199570, 36.430809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698639, 35.650368, 36.877510>,  <38.656780, 35.874035, 36.084812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698639, 35.650368, 36.877510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768219, 35.256992, 36.897896>,  <38.809967, 35.020969, 36.910126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768219, 35.256992, 36.897896>,  <38.698639, 35.650368, 36.877510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768219, 35.256992, 36.897896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835996, -0.120121, 0.535427,
		-0.520436, -0.135743, -0.843042,
		0.173948, -0.983435, 0.050965,
		38.820404, 34.961964, 36.913185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079788, 35.258770, 36.659515>,  <38.698639, 35.650368, 36.877510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079788, 35.258770, 36.659515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293278, 35.024128, 36.903164>,  <38.421371, 34.883343, 37.049355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293278, 35.024128, 36.903164>,  <38.079788, 35.258770, 36.659515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293278, 35.024128, 36.903164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812850, -0.157187, 0.560863,
		-0.233259, -0.794473, -0.560716,
		0.533728, -0.586604, 0.609122,
		38.453396, 34.848145, 37.085899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731693, 34.650471, 36.743801>,  <38.079788, 35.258770, 36.659515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731693, 34.650471, 36.743801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969952, 34.671757, 37.064392>,  <38.112907, 34.684528, 37.256748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969952, 34.671757, 37.064392>,  <37.731693, 34.650471, 36.743801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969952, 34.671757, 37.064392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776603, -0.216694, 0.591551,
		0.205157, -0.974788, -0.087743,
		0.595650, 0.053219, 0.801479,
		38.148647, 34.687721, 37.304836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293510, 34.253330, 37.262108>,  <37.731693, 34.650471, 36.743801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293510, 34.253330, 37.262108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600071, 34.391796, 37.478550>,  <37.784008, 34.474876, 37.608414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600071, 34.391796, 37.478550>,  <37.293510, 34.253330, 37.262108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600071, 34.391796, 37.478550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582548, 0.019603, 0.812560,
		0.270673, -0.937969, 0.216681,
		0.766404, 0.346165, 0.541106,
		37.829990, 34.495644, 37.640881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320522, 33.839195, 37.963139>,  <37.293510, 34.253330, 37.262108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320522, 33.839195, 37.963139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493294, 34.196117, 38.015644>,  <37.596958, 34.410271, 38.047146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493294, 34.196117, 38.015644>,  <37.320522, 33.839195, 37.963139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493294, 34.196117, 38.015644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475766, 0.101782, 0.873663,
		0.766214, -0.439809, 0.468491,
		0.431929, 0.892305, 0.131259,
		37.622871, 34.463810, 38.055023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876770, 33.807766, 38.490582>,  <37.320522, 33.839195, 37.963139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876770, 33.807766, 38.490582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722137, 34.175835, 38.465809>,  <37.629356, 34.396675, 38.450943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722137, 34.175835, 38.465809>,  <37.876770, 33.807766, 38.490582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722137, 34.175835, 38.465809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252240, -0.040899, 0.966800,
		0.887090, 0.389371, 0.247915,
		-0.386583, 0.920173, -0.061934,
		37.606163, 34.451885, 38.447227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888176, 34.020885, 39.192986>,  <37.876770, 33.807766, 38.490582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888176, 34.020885, 39.192986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693211, 34.340855, 39.052956>,  <37.576233, 34.532837, 38.968937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693211, 34.340855, 39.052956>,  <37.888176, 34.020885, 39.192986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693211, 34.340855, 39.052956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228373, 0.270186, 0.935332,
		0.842778, 0.535841, 0.050988,
		-0.487413, 0.799921, -0.350078,
		37.546986, 34.580830, 38.947933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212166, 34.571060, 39.495876>,  <37.888176, 34.020885, 39.192986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212166, 34.571060, 39.495876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840591, 34.671349, 39.386909>,  <37.617645, 34.731522, 39.321529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840591, 34.671349, 39.386909>,  <38.212166, 34.571060, 39.495876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840591, 34.671349, 39.386909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160162, 0.391265, 0.906234,
		0.333797, 0.885468, -0.323306,
		-0.928939, 0.250717, -0.272422,
		37.561909, 34.746563, 39.305183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180264, 35.238468, 39.746288>,  <38.212166, 34.571060, 39.495876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180264, 35.238468, 39.746288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808273, 35.094940, 39.714329>,  <37.585079, 35.008823, 39.695152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808273, 35.094940, 39.714329>,  <38.180264, 35.238468, 39.746288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808273, 35.094940, 39.714329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146406, 0.162153, 0.975844,
		-0.337200, 0.919213, -0.203333,
		-0.929979, -0.358824, -0.079901,
		37.529278, 34.987293, 39.690357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712830, 35.845985, 39.926643>,  <38.180264, 35.238468, 39.746288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712830, 35.845985, 39.926643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510292, 35.504292, 39.973793>,  <37.388771, 35.299274, 40.002083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510292, 35.504292, 39.973793>,  <37.712830, 35.845985, 39.926643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510292, 35.504292, 39.973793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003903, 0.138966, 0.990290,
		-0.862323, 0.500968, -0.073699,
		-0.506345, -0.854237, 0.117878,
		37.358387, 35.248020, 40.009155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236572, 36.061817, 40.370159>,  <37.712830, 35.845985, 39.926643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236572, 36.061817, 40.370159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194843, 35.664883, 40.396637>,  <37.169804, 35.426720, 40.412521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194843, 35.664883, 40.396637>,  <37.236572, 36.061817, 40.370159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194843, 35.664883, 40.396637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106504, 0.077320, 0.991301,
		-0.988824, 0.096370, -0.113755,
		-0.104327, -0.992338, 0.066192,
		37.163544, 35.367180, 40.416496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622410, 36.001068, 40.809296>,  <37.236572, 36.061817, 40.370159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622410, 36.001068, 40.809296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810829, 35.651653, 40.858356>,  <36.923882, 35.442005, 40.887794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810829, 35.651653, 40.858356>,  <36.622410, 36.001068, 40.809296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810829, 35.651653, 40.858356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066406, 0.103536, 0.992406,
		-0.879605, -0.475615, -0.009238,
		0.471046, -0.873539, 0.122655,
		36.952145, 35.389591, 40.895153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294674, 35.630013, 41.318413>,  <36.622410, 36.001068, 40.809296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294674, 35.630013, 41.318413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657887, 35.462914, 41.330803>,  <36.875816, 35.362656, 41.338238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657887, 35.462914, 41.330803>,  <36.294674, 35.630013, 41.318413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657887, 35.462914, 41.330803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056552, 0.195531, 0.979066,
		-0.415057, -0.887275, 0.201173,
		0.908036, -0.417745, 0.030979,
		36.930298, 35.337589, 41.340096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301167, 35.115143, 41.846771>,  <36.294674, 35.630013, 41.318413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301167, 35.115143, 41.846771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681892, 35.228683, 41.800320>,  <36.910328, 35.296806, 41.772449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681892, 35.228683, 41.800320>,  <36.301167, 35.115143, 41.846771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681892, 35.228683, 41.800320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064288, 0.185570, 0.980526,
		0.299874, -0.940740, 0.158379,
		0.951810, 0.283853, -0.116126,
		36.967434, 35.313839, 41.765484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564941, 34.431911, 41.899220>,  <36.301167, 35.115143, 41.846771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564941, 34.431911, 41.899220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370968, 34.122875, 42.063137>,  <36.254581, 33.937454, 42.161488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370968, 34.122875, 42.063137>,  <36.564941, 34.431911, 41.899220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370968, 34.122875, 42.063137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177443, -0.371914, -0.911150,
		0.856358, -0.514567, 0.043264,
		-0.484938, -0.772593, 0.409797,
		36.225487, 33.891098, 42.186077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665157, 33.715569, 41.417583>,  <36.564941, 34.431911, 41.899220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665157, 33.715569, 41.417583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336201, 33.681164, 41.642540>,  <36.138828, 33.660522, 41.777512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336201, 33.681164, 41.642540>,  <36.665157, 33.715569, 41.417583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336201, 33.681164, 41.642540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483544, -0.415186, -0.770588,
		0.299774, -0.905662, 0.299854,
		-0.822387, -0.086010, 0.562389,
		36.089485, 33.655361, 41.811256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430180, 33.018185, 41.429958>,  <36.665157, 33.715569, 41.417583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430180, 33.018185, 41.429958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106865, 33.227802, 41.537323>,  <35.912876, 33.353573, 41.601742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106865, 33.227802, 41.537323>,  <36.430180, 33.018185, 41.429958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106865, 33.227802, 41.537323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505952, -0.385042, -0.771852,
		-0.301132, -0.759685, 0.576366,
		-0.808290, 0.524042, 0.268416,
		35.864380, 33.385017, 41.617847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875961, 32.617546, 41.185799>,  <36.430180, 33.018185, 41.429958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875961, 32.617546, 41.185799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691368, 32.965843, 41.253727>,  <35.580612, 33.174820, 41.294483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691368, 32.965843, 41.253727>,  <35.875961, 32.617546, 41.185799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691368, 32.965843, 41.253727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632746, -0.188884, -0.750969,
		-0.621824, -0.454017, 0.638126,
		-0.461484, 0.870742, 0.169825,
		35.552921, 33.227066, 41.304676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093578, 32.536095, 41.232677>,  <35.875961, 32.617546, 41.185799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093578, 32.536095, 41.232677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142075, 32.922169, 41.139969>,  <35.171173, 33.153812, 41.084343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142075, 32.922169, 41.139969>,  <35.093578, 32.536095, 41.232677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142075, 32.922169, 41.139969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526214, -0.135487, -0.839489,
		-0.841665, 0.223742, 0.491467,
		0.121242, 0.965185, -0.231771,
		35.178448, 33.211723, 41.070438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443932, 32.739822, 40.971573>,  <35.093578, 32.536095, 41.232677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443932, 32.739822, 40.971573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688400, 33.037842, 40.864708>,  <34.835083, 33.216652, 40.800591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688400, 33.037842, 40.864708>,  <34.443932, 32.739822, 40.971573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688400, 33.037842, 40.864708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405862, 0.005220, -0.913920,
		-0.679517, 0.666993, 0.305576,
		0.611174, 0.745045, -0.267160,
		34.871754, 33.261356, 40.784561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011204, 33.296078, 40.915905>,  <34.443932, 32.739822, 40.971573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011204, 33.296078, 40.915905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337807, 33.353043, 40.692108>,  <34.533768, 33.387222, 40.557831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337807, 33.353043, 40.692108>,  <34.011204, 33.296078, 40.915905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337807, 33.353043, 40.692108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568558, 0.030053, -0.822094,
		-0.100264, 0.989351, 0.105509,
		0.816511, 0.142414, -0.559490,
		34.582760, 33.395767, 40.524261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842564, 33.810314, 40.450409>,  <34.011204, 33.296078, 40.915905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842564, 33.810314, 40.450409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147350, 33.626259, 40.268124>,  <34.330223, 33.515823, 40.158752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147350, 33.626259, 40.268124>,  <33.842564, 33.810314, 40.450409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147350, 33.626259, 40.268124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498083, 0.033343, -0.866488,
		0.413902, 0.887219, -0.203783,
		0.761970, -0.460142, -0.455710,
		34.375942, 33.488216, 40.131413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791397, 34.019169, 39.742584>,  <33.842564, 33.810314, 40.450409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791397, 34.019169, 39.742584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026379, 33.697235, 39.708790>,  <34.167366, 33.504074, 39.688515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026379, 33.697235, 39.708790>,  <33.791397, 34.019169, 39.742584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026379, 33.697235, 39.708790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351038, -0.159369, -0.922700,
		0.729158, 0.571699, -0.376150,
		0.587453, -0.804837, -0.084483,
		34.202614, 33.455784, 39.683445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134151, 34.188244, 39.057182>,  <33.791397, 34.019169, 39.742584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134151, 34.188244, 39.057182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128696, 33.801224, 39.158112>,  <34.125423, 33.569012, 39.218670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128696, 33.801224, 39.158112>,  <34.134151, 34.188244, 39.057182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128696, 33.801224, 39.158112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323366, -0.234520, -0.916752,
		0.946175, -0.094097, -0.309674,
		-0.013639, -0.967546, 0.252325,
		34.124603, 33.510960, 39.233810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209480, 33.810341, 38.396019>,  <34.134151, 34.188244, 39.057182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209480, 33.810341, 38.396019> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046921, 33.522766, 38.621574>,  <33.949383, 33.350220, 38.756908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046921, 33.522766, 38.621574>,  <34.209480, 33.810341, 38.396019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046921, 33.522766, 38.621574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481895, -0.355682, -0.800792,
		0.776282, -0.597178, -0.201902,
		-0.406403, -0.718936, 0.563887,
		33.924999, 33.307087, 38.790741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461651, 33.175888, 38.100048>,  <34.209480, 33.810341, 38.396019>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461651, 33.175888, 38.100048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100037, 33.177212, 38.271030>,  <33.883068, 33.178005, 38.373619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100037, 33.177212, 38.271030>,  <34.461651, 33.175888, 38.100048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100037, 33.177212, 38.271030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418903, -0.206011, -0.884353,
		0.085136, -0.978544, 0.187625,
		-0.904031, 0.003306, 0.427454,
		33.828827, 33.178204, 38.399265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.775421, 34.945095, 45.897102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.388378, 34.879910, 45.819984>,  <36.156151, 34.840797, 45.773712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.388378, 34.879910, 45.819984>,  <36.775421, 34.945095, 45.897102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388378, 34.879910, 45.819984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250908, -0.705051, -0.663286,
		-0.027840, -0.690177, 0.723105,
		-0.967611, -0.162967, -0.192799,
		36.098095, 34.831020, 45.762146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680046, 34.211227, 45.873337>,  <36.775421, 34.945095, 45.897102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680046, 34.211227, 45.873337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.383945, 34.391106, 45.673416>,  <36.206284, 34.499031, 45.553463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.383945, 34.391106, 45.673416>,  <36.680046, 34.211227, 45.873337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383945, 34.391106, 45.673416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175738, -0.588126, -0.789446,
		-0.648959, -0.672221, 0.356330,
		-0.740249, 0.449697, -0.499804,
		36.161869, 34.526012, 45.523476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373768, 33.693909, 45.425983>,  <36.680046, 34.211227, 45.873337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373768, 33.693909, 45.425983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.227295, 34.034458, 45.275742>,  <36.139412, 34.238789, 45.185596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.227295, 34.034458, 45.275742>,  <36.373768, 33.693909, 45.425983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227295, 34.034458, 45.275742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051701, -0.421631, -0.905292,
		-0.929107, -0.312081, 0.198410,
		-0.366180, 0.851371, -0.375606,
		36.117439, 34.289871, 45.163059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022320, 33.321152, 44.939472>,  <36.373768, 33.693909, 45.425983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022320, 33.321152, 44.939472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.034939, 33.712364, 44.857048>,  <36.042511, 33.947090, 44.807594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.034939, 33.712364, 44.857048>,  <36.022320, 33.321152, 44.939472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034939, 33.712364, 44.857048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077822, -0.203138, -0.976053,
		-0.996468, 0.046829, 0.069703,
		0.031548, 0.978030, -0.206065,
		36.044403, 34.005772, 44.795227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633633, 33.354546, 44.332561>,  <36.022320, 33.321152, 44.939472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633633, 33.354546, 44.332561> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.803143, 33.716782, 44.325466>,  <35.904850, 33.934124, 44.321209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.803143, 33.716782, 44.325466>,  <35.633633, 33.354546, 44.332561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803143, 33.716782, 44.325466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225440, 0.086490, -0.970410,
		-0.877262, 0.415238, 0.240810,
		0.423779, 0.905592, -0.017737,
		35.930275, 33.988461, 44.320145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117317, 33.970615, 44.021748>,  <35.633633, 33.354546, 44.332561>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117317, 33.970615, 44.021748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.503353, 34.069580, 43.987377>,  <35.734974, 34.128960, 43.966755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.503353, 34.069580, 43.987377>,  <35.117317, 33.970615, 44.021748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503353, 34.069580, 43.987377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122647, 0.137059, -0.982941,
		-0.231414, 0.959168, 0.162619,
		0.965093, 0.247411, -0.085922,
		35.792881, 34.143803, 43.961601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031452, 34.081299, 43.392658>,  <35.117317, 33.970615, 44.021748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031452, 34.081299, 43.392658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424953, 34.107712, 43.459423>,  <35.661057, 34.123558, 43.499481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.424953, 34.107712, 43.459423>,  <35.031452, 34.081299, 43.392658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424953, 34.107712, 43.459423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166667, 0.009301, -0.985969,
		-0.066658, 0.997774, -0.001856,
		0.983757, 0.066032, 0.166916,
		35.720081, 34.127522, 43.509499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370495, 34.654106, 42.948505>,  <35.031452, 34.081299, 43.392658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370495, 34.654106, 42.948505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.665749, 34.392590, 43.015095>,  <35.842899, 34.235680, 43.055050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.665749, 34.392590, 43.015095>,  <35.370495, 34.654106, 42.948505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665749, 34.392590, 43.015095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061816, -0.180180, -0.981689,
		0.671820, 0.734906, -0.092581,
		0.738131, -0.653795, 0.166477,
		35.887188, 34.196449, 43.065037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934425, 34.748470, 42.478828>,  <35.370495, 34.654106, 42.948505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934425, 34.748470, 42.478828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.963112, 34.362549, 42.580021>,  <35.980324, 34.130997, 42.640736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.963112, 34.362549, 42.580021>,  <35.934425, 34.748470, 42.478828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963112, 34.362549, 42.580021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111236, -0.244321, -0.963293,
		0.991203, 0.097223, 0.089800,
		0.071714, -0.964808, 0.252986,
		35.984627, 34.073105, 42.655918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631882, 35.016357, 42.657284>,  <35.934425, 34.748470, 42.478828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631882, 35.016357, 42.657284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.908310, 35.214092, 42.446362>,  <37.074165, 35.332733, 42.319809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.908310, 35.214092, 42.446362>,  <36.631882, 35.016357, 42.657284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908310, 35.214092, 42.446362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462012, 0.258925, 0.848235,
		0.555847, -0.829812, -0.049455,
		0.691071, 0.494337, -0.527306,
		37.115631, 35.362392, 42.288170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150368, 34.792633, 43.003246>,  <36.631882, 35.016357, 42.657284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150368, 34.792633, 43.003246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.259739, 35.121937, 42.804256>,  <37.325363, 35.319519, 42.684860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.259739, 35.121937, 42.804256>,  <37.150368, 34.792633, 43.003246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259739, 35.121937, 42.804256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455904, 0.344487, 0.820659,
		0.846987, -0.451196, -0.281132,
		0.273432, 0.823256, -0.497478,
		37.341770, 35.368912, 42.655014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858746, 34.749546, 42.912464>,  <37.150368, 34.792633, 43.003246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858746, 34.749546, 42.912464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738297, 35.130955, 42.916912>,  <37.666027, 35.359798, 42.919579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.738297, 35.130955, 42.916912>,  <37.858746, 34.749546, 42.912464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738297, 35.130955, 42.916912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685986, 0.208510, 0.697099,
		0.662379, 0.217541, -0.716889,
		-0.301126, 0.953520, 0.011117,
		37.647961, 35.417011, 42.920246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400818, 35.083023, 43.055553>,  <37.858746, 34.749546, 42.912464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400818, 35.083023, 43.055553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.137009, 35.374203, 43.130516>,  <37.978722, 35.548912, 43.175491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.137009, 35.374203, 43.130516>,  <38.400818, 35.083023, 43.055553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137009, 35.374203, 43.130516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544667, 0.290977, 0.786556,
		0.518042, 0.620825, -0.588396,
		-0.659523, 0.727949, 0.187404,
		37.939152, 35.592587, 43.186737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817360, 35.599277, 43.306957>,  <38.400818, 35.083023, 43.055553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817360, 35.599277, 43.306957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.449482, 35.705830, 43.422340>,  <38.228756, 35.769760, 43.491570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.449482, 35.705830, 43.422340>,  <38.817360, 35.599277, 43.306957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449482, 35.705830, 43.422340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330344, 0.127877, 0.935158,
		0.212223, 0.955347, -0.205605,
		-0.919693, 0.266382, 0.288454,
		38.173573, 35.785744, 43.508877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873161, 36.261780, 43.633297>,  <38.817360, 35.599277, 43.306957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873161, 36.261780, 43.633297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.524296, 36.120926, 43.769135>,  <38.314976, 36.036411, 43.850636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.524296, 36.120926, 43.769135>,  <38.873161, 36.261780, 43.633297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524296, 36.120926, 43.769135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297463, 0.169359, 0.939592,
		-0.388380, 0.920497, -0.042962,
		-0.872168, -0.352139, 0.339590,
		38.262646, 36.015285, 43.871010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671482, 36.738033, 44.159168>,  <38.873161, 36.261780, 43.633297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671482, 36.738033, 44.159168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.447948, 36.410847, 44.213760>,  <38.313828, 36.214535, 44.246517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.447948, 36.410847, 44.213760>,  <38.671482, 36.738033, 44.159168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447948, 36.410847, 44.213760> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106441, 0.092466, 0.990010,
		-0.822419, 0.567780, 0.035392,
		-0.558836, -0.817970, 0.136481,
		38.280296, 36.165455, 44.254704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182850, 37.009567, 44.657967>,  <38.671482, 36.738033, 44.159168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182850, 37.009567, 44.657967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.149712, 36.611580, 44.680527>,  <38.129829, 36.372787, 44.694061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.149712, 36.611580, 44.680527>,  <38.182850, 37.009567, 44.657967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149712, 36.611580, 44.680527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094135, 0.064154, 0.993490,
		-0.992106, 0.076998, -0.098976,
		-0.082847, -0.994965, 0.056399,
		38.124859, 36.313091, 44.697445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605480, 36.824795, 45.181053>,  <38.182850, 37.009567, 44.657967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605480, 36.824795, 45.181053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.857857, 36.518280, 45.132538>,  <38.009281, 36.334370, 45.103428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.857857, 36.518280, 45.132538>,  <37.605480, 36.824795, 45.181053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857857, 36.518280, 45.132538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169129, -0.016721, 0.985452,
		-0.757171, -0.642276, 0.119052,
		0.630942, -0.766291, -0.121289,
		38.047138, 36.288391, 45.096149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346272, 36.365234, 45.662109>,  <37.605480, 36.824795, 45.181053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346272, 36.365234, 45.662109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.724354, 36.253155, 45.595093>,  <37.951202, 36.185905, 45.554882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.724354, 36.253155, 45.595093>,  <37.346272, 36.365234, 45.662109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724354, 36.253155, 45.595093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194413, 0.070831, 0.978359,
		-0.262271, -0.957324, 0.121425,
		0.945208, -0.280201, -0.167539,
		38.007915, 36.169094, 45.544830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500999, 35.897053, 46.184013>,  <37.346272, 36.365234, 45.662109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500999, 35.897053, 46.184013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.854160, 36.023716, 46.045326>,  <38.066055, 36.099712, 45.962112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.854160, 36.023716, 46.045326>,  <37.500999, 35.897053, 46.184013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854160, 36.023716, 46.045326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325275, 0.120082, 0.937964,
		0.338647, -0.940909, 0.003021,
		0.882902, 0.316656, -0.346719,
		38.119030, 36.118713, 45.941311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879169, 35.730286, 46.669262>,  <37.500999, 35.897053, 46.184013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879169, 35.730286, 46.669262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.151943, 35.983627, 46.522930>,  <38.315605, 36.135632, 46.435131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.151943, 35.983627, 46.522930>,  <37.879169, 35.730286, 46.669262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151943, 35.983627, 46.522930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101353, 0.413517, 0.904837,
		0.724359, -0.654116, 0.217798,
		0.681932, 0.633353, -0.365832,
		38.356522, 36.173634, 46.413181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324162, 35.704124, 47.206245>,  <37.879169, 35.730286, 46.669262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324162, 35.704124, 47.206245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430698, 36.020451, 46.985821>,  <38.494621, 36.210247, 46.853565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.430698, 36.020451, 46.985821>,  <38.324162, 35.704124, 47.206245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430698, 36.020451, 46.985821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291278, 0.478944, 0.828112,
		0.918813, -0.381076, -0.102783,
		0.266346, 0.790818, -0.551059,
		38.510601, 36.257694, 46.820503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035999, 35.894165, 47.214184>,  <38.324162, 35.704124, 47.206245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035999, 35.894165, 47.214184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830448, 36.223888, 47.119148>,  <38.707115, 36.421722, 47.062126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830448, 36.223888, 47.119148>,  <39.035999, 35.894165, 47.214184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830448, 36.223888, 47.119148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268221, 0.417458, 0.868209,
		0.814852, 0.382430, -0.435620,
		-0.513882, 0.824304, -0.237590,
		38.676285, 36.471180, 47.047871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.097830, 39.335316, 46.196411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.244989, 38.978428, 46.091644>,  <31.333284, 38.764297, 46.028782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.244989, 38.978428, 46.091644>,  <31.097830, 39.335316, 46.196411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244989, 38.978428, 46.091644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025521, 0.291257, -0.956304,
		0.929516, 0.345138, 0.129923,
		0.367898, -0.892216, -0.261920,
		31.355358, 38.710762, 46.013069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457342, 39.381279, 45.577579>,  <31.097830, 39.335316, 46.196411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457342, 39.381279, 45.577579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.403307, 38.985088, 45.566917>,  <31.370886, 38.747375, 45.560520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.403307, 38.985088, 45.566917>,  <31.457342, 39.381279, 45.577579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403307, 38.985088, 45.566917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189991, 0.052293, -0.980392,
		0.972448, -0.127374, -0.195246,
		-0.135086, -0.990475, -0.026653,
		31.362782, 38.687946, 45.558922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848572, 39.152382, 45.075413>,  <31.457342, 39.381279, 45.577579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848572, 39.152382, 45.075413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.573431, 38.862232, 45.085926>,  <31.408346, 38.688141, 45.092236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.573431, 38.862232, 45.085926>,  <31.848572, 39.152382, 45.075413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573431, 38.862232, 45.085926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066452, 0.026872, -0.997428,
		0.722801, -0.687832, -0.066687,
		-0.687854, -0.725373, 0.026285,
		31.367075, 38.644619, 45.093811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055138, 38.845558, 44.556473>,  <31.848572, 39.152382, 45.075413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055138, 38.845558, 44.556473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.695217, 38.685917, 44.626976>,  <31.479263, 38.590134, 44.669277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.695217, 38.685917, 44.626976>,  <32.055138, 38.845558, 44.556473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695217, 38.685917, 44.626976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078484, -0.249333, -0.965232,
		0.429176, -0.882354, 0.193028,
		-0.899804, -0.399105, 0.176258,
		31.425276, 38.566185, 44.679852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106384, 38.146011, 44.322441>,  <32.055138, 38.845558, 44.556473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106384, 38.146011, 44.322441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.721443, 38.254688, 44.325756>,  <31.490480, 38.319893, 44.327744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.721443, 38.254688, 44.325756>,  <32.106384, 38.146011, 44.322441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721443, 38.254688, 44.325756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045884, -0.132319, -0.990145,
		-0.267921, -0.953244, 0.139803,
		-0.962348, 0.271696, 0.008288,
		31.432739, 38.336197, 44.328243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747257, 37.580029, 43.935959>,  <32.106384, 38.146011, 44.322441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747257, 37.580029, 43.935959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.532291, 37.915581, 43.901409>,  <31.403311, 38.116913, 43.880680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.532291, 37.915581, 43.901409>,  <31.747257, 37.580029, 43.935959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532291, 37.915581, 43.901409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042488, -0.075353, -0.996251,
		-0.842246, -0.539071, 0.004854,
		-0.537416, 0.838883, -0.086370,
		31.371067, 38.167244, 43.875500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315163, 37.389954, 43.375229>,  <31.747257, 37.580029, 43.935959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315163, 37.389954, 43.375229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.227585, 37.780247, 43.374977>,  <31.175037, 38.014423, 43.374825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.227585, 37.780247, 43.374977>,  <31.315163, 37.389954, 43.375229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227585, 37.780247, 43.374977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252565, -0.057300, -0.965882,
		-0.942483, -0.211316, 0.258983,
		-0.218946, 0.975737, -0.000633,
		31.161901, 38.072968, 43.374786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678871, 37.361988, 43.026386>,  <31.315163, 37.389954, 43.375229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678871, 37.361988, 43.026386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.831446, 37.730953, 43.002205>,  <30.922991, 37.952332, 42.987698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.831446, 37.730953, 43.002205>,  <30.678871, 37.361988, 43.026386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.831446, 37.730953, 43.002205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099513, -0.024040, -0.994746,
		-0.919023, 0.385449, 0.082623,
		0.381437, 0.922416, -0.060451,
		30.945877, 38.007679, 42.984070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201012, 37.778431, 42.512508>,  <30.678871, 37.361988, 43.026386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201012, 37.778431, 42.512508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.545618, 37.981468, 42.517277>,  <30.752382, 38.103291, 42.520138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.545618, 37.981468, 42.517277>,  <30.201012, 37.778431, 42.512508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545618, 37.981468, 42.517277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030239, 0.074729, -0.996745,
		-0.506829, 0.858351, 0.079729,
		0.861516, 0.507591, 0.011920,
		30.804073, 38.133747, 42.520851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196928, 38.347645, 41.976322>,  <30.201012, 37.778431, 42.512508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196928, 38.347645, 41.976322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.584429, 38.289627, 42.056801>,  <30.816929, 38.254818, 42.105087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.584429, 38.289627, 42.056801>,  <30.196928, 38.347645, 41.976322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584429, 38.289627, 42.056801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217893, 0.110163, -0.969735,
		0.118489, 0.983273, 0.138325,
		0.968753, -0.145043, 0.201195,
		30.875055, 38.246113, 42.117161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641708, 38.978748, 41.716240>,  <30.196928, 38.347645, 41.976322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641708, 38.978748, 41.716240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856707, 38.642071, 41.736851>,  <30.985706, 38.440063, 41.749218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.856707, 38.642071, 41.736851>,  <30.641708, 38.978748, 41.716240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856707, 38.642071, 41.736851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162595, 0.043490, -0.985734,
		0.827442, 0.538206, 0.160230,
		0.537496, -0.841691, 0.051525,
		31.017956, 38.389565, 41.752308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185743, 39.031464, 41.228870>,  <30.641708, 38.978748, 41.716240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185743, 39.031464, 41.228870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.182352, 38.637402, 41.297451>,  <31.180317, 38.400963, 41.338600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.182352, 38.637402, 41.297451>,  <31.185743, 39.031464, 41.228870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182352, 38.637402, 41.297451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272144, -0.167257, -0.947609,
		0.962219, 0.038623, 0.269523,
		-0.008480, -0.985156, 0.171448,
		31.179808, 38.341854, 41.348885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866064, 38.760178, 40.916748>,  <31.185743, 39.031464, 41.228870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866064, 38.760178, 40.916748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.658529, 38.420971, 40.959988>,  <31.534008, 38.217449, 40.985931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.658529, 38.420971, 40.959988>,  <31.866064, 38.760178, 40.916748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658529, 38.420971, 40.959988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295561, -0.296593, -0.908117,
		0.802155, -0.439213, 0.404522,
		-0.518835, -0.848012, 0.108099,
		31.502878, 38.166569, 40.992416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248444, 38.157265, 40.874126>,  <31.866064, 38.760178, 40.916748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248444, 38.157265, 40.874126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875687, 38.098282, 40.741562>,  <31.652033, 38.062893, 40.662025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875687, 38.098282, 40.741562>,  <32.248444, 38.157265, 40.874126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875687, 38.098282, 40.741562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361610, -0.449547, -0.816790,
		-0.028541, -0.881001, 0.472252,
		-0.931893, -0.147459, -0.331410,
		31.596119, 38.054043, 40.642139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701458, 37.838757, 40.325180>,  <32.248444, 38.157265, 40.874126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701458, 37.838757, 40.325180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.979462, 38.121777, 40.274071>,  <33.146263, 38.291588, 40.243404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.979462, 38.121777, 40.274071>,  <32.701458, 37.838757, 40.325180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979462, 38.121777, 40.274071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042003, 0.137448, 0.989618,
		0.717769, -0.693165, 0.065809,
		0.695014, 0.707552, -0.127771,
		33.187965, 38.334042, 40.235741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360462, 37.683781, 40.769367>,  <32.701458, 37.838757, 40.325180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360462, 37.683781, 40.769367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.321217, 38.072861, 40.685238>,  <33.297668, 38.306309, 40.634762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.321217, 38.072861, 40.685238>,  <33.360462, 37.683781, 40.769367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321217, 38.072861, 40.685238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239200, 0.228194, 0.943775,
		0.966000, 0.042290, -0.255059,
		-0.098115, 0.972697, -0.210319,
		33.291782, 38.364670, 40.622143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918900, 37.952137, 41.139080>,  <33.360462, 37.683781, 40.769367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918900, 37.952137, 41.139080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.671288, 38.257359, 41.064728>,  <33.522720, 38.440491, 41.020119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.671288, 38.257359, 41.064728>,  <33.918900, 37.952137, 41.139080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671288, 38.257359, 41.064728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184350, 0.371240, 0.910053,
		0.763425, 0.529083, -0.370477,
		-0.619030, 0.763054, -0.185877,
		33.485580, 38.486275, 41.008965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336708, 38.618946, 41.189224>,  <33.918900, 37.952137, 41.139080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336708, 38.618946, 41.189224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.943771, 38.648529, 41.257965>,  <33.708008, 38.666279, 41.299210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.943771, 38.648529, 41.257965>,  <34.336708, 38.618946, 41.189224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943771, 38.648529, 41.257965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186399, 0.308010, 0.932944,
		0.016070, 0.948504, -0.316358,
		-0.982343, 0.073962, 0.171851,
		33.649067, 38.670719, 41.309521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216511, 39.252888, 41.307644>,  <34.336708, 38.618946, 41.189224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216511, 39.252888, 41.307644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.907265, 39.077736, 41.491192>,  <33.721718, 38.972645, 41.601322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.907265, 39.077736, 41.491192>,  <34.216511, 39.252888, 41.307644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907265, 39.077736, 41.491192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304604, 0.378254, 0.874152,
		-0.556342, 0.815589, -0.159052,
		-0.773111, -0.437879, 0.458870,
		33.675331, 38.946373, 41.628853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925381, 39.685886, 41.831093>,  <34.216511, 39.252888, 41.307644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925381, 39.685886, 41.831093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788853, 39.321457, 41.923565>,  <33.706936, 39.102798, 41.979046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788853, 39.321457, 41.923565>,  <33.925381, 39.685886, 41.831093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788853, 39.321457, 41.923565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273977, 0.138835, 0.951663,
		-0.899132, 0.388157, 0.202227,
		-0.341318, -0.911076, 0.231177,
		33.686459, 39.048134, 41.992920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546021, 39.964649, 42.383083>,  <33.925381, 39.685886, 41.831093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546021, 39.964649, 42.383083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.575489, 39.572121, 42.454159>,  <33.593170, 39.336601, 42.496803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.575489, 39.572121, 42.454159>,  <33.546021, 39.964649, 42.383083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575489, 39.572121, 42.454159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257939, 0.190859, 0.947122,
		-0.963348, -0.023946, 0.267184,
		0.073674, -0.981325, 0.177687,
		33.597591, 39.277721, 42.507465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128056, 39.828529, 42.886433>,  <33.546021, 39.964649, 42.383083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128056, 39.828529, 42.886433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.359211, 39.502846, 42.908726>,  <33.497906, 39.307434, 42.922100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.359211, 39.502846, 42.908726>,  <33.128056, 39.828529, 42.886433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359211, 39.502846, 42.908726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090164, 0.131568, 0.987198,
		-0.811121, -0.565464, 0.149444,
		0.577887, -0.814211, 0.055733,
		33.532578, 39.258583, 42.925446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861958, 39.259758, 43.366306>,  <33.128056, 39.828529, 42.886433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861958, 39.259758, 43.366306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.259327, 39.213966, 43.365231>,  <33.497749, 39.186489, 43.364586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.259327, 39.213966, 43.365231>,  <32.861958, 39.259758, 43.366306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259327, 39.213966, 43.365231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024187, 0.186819, 0.982097,
		-0.111932, -0.975701, 0.188359,
		0.993421, -0.114484, -0.002689,
		33.557354, 39.179623, 43.364426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051643, 38.792435, 43.999702>,  <32.861958, 39.259758, 43.366306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051643, 38.792435, 43.999702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.389664, 38.971455, 43.882679>,  <33.592476, 39.078865, 43.812466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.389664, 38.971455, 43.882679>,  <33.051643, 38.792435, 43.999702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389664, 38.971455, 43.882679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269107, 0.116815, 0.956000,
		0.462034, -0.886596, -0.021725,
		0.845048, 0.447550, -0.292562,
		33.643177, 39.105721, 43.794910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555382, 38.394855, 44.124550>,  <33.051643, 38.792435, 43.999702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555382, 38.394855, 44.124550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.729847, 38.754719, 44.116810>,  <33.834526, 38.970638, 44.112167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.729847, 38.754719, 44.116810>,  <33.555382, 38.394855, 44.124550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729847, 38.754719, 44.116810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210271, -0.080990, 0.974283,
		0.874957, -0.429012, -0.224497,
		0.436161, 0.899661, -0.019346,
		33.860695, 39.024616, 44.111008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222874, 38.261688, 44.555405>,  <33.555382, 38.394855, 44.124550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222874, 38.261688, 44.555405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.145473, 38.653862, 44.540970>,  <34.099033, 38.889168, 44.532310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.145473, 38.653862, 44.540970>,  <34.222874, 38.261688, 44.555405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145473, 38.653862, 44.540970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217729, 0.078774, 0.972825,
		0.956636, 0.180385, -0.228712,
		-0.193499, 0.980437, -0.036084,
		34.087425, 38.947994, 44.530144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748695, 38.600300, 44.843948>,  <34.222874, 38.261688, 44.555405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748695, 38.600300, 44.843948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.450790, 38.864738, 44.880360>,  <34.272049, 39.023399, 44.902206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.450790, 38.864738, 44.880360>,  <34.748695, 38.600300, 44.843948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450790, 38.864738, 44.880360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192772, 0.082543, 0.977766,
		0.638881, 0.745749, -0.188915,
		-0.744762, 0.661094, 0.091025,
		34.227364, 39.063068, 44.907665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143528, 39.003544, 45.342697>,  <34.748695, 38.600300, 44.843948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143528, 39.003544, 45.342697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.759735, 39.116142, 45.337688>,  <34.529461, 39.183701, 45.334682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.759735, 39.116142, 45.337688>,  <35.143528, 39.003544, 45.342697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759735, 39.116142, 45.337688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008019, 0.017132, 0.999821,
		0.281661, 0.959409, -0.014180,
		-0.959480, 0.281497, -0.012519,
		34.471889, 39.200592, 45.333935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754314, 39.257957, 45.035625>,  <35.143528, 39.003544, 45.342697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754314, 39.257957, 45.035625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.124447, 39.226994, 45.184093>,  <36.346527, 39.208416, 45.273174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.124447, 39.226994, 45.184093>,  <35.754314, 39.257957, 45.035625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124447, 39.226994, 45.184093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355243, -0.165129, -0.920073,
		0.132510, 0.983230, -0.125301,
		0.925335, -0.077406, 0.371166,
		36.402046, 39.203773, 45.295444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077583, 39.673576, 44.579510>,  <35.754314, 39.257957, 45.035625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077583, 39.673576, 44.579510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.337242, 39.422569, 44.751480>,  <36.493038, 39.271965, 44.854660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.337242, 39.422569, 44.751480>,  <36.077583, 39.673576, 44.579510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337242, 39.422569, 44.751480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305648, -0.302381, -0.902854,
		0.696558, 0.717487, -0.004489,
		0.649143, -0.627518, 0.429924,
		36.531986, 39.234314, 44.880459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816349, 39.833878, 44.279987>,  <36.077583, 39.673576, 44.579510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816349, 39.833878, 44.279987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.765339, 39.463917, 44.423256>,  <36.734734, 39.241940, 44.509216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.765339, 39.463917, 44.423256>,  <36.816349, 39.833878, 44.279987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765339, 39.463917, 44.423256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383659, -0.379010, -0.842115,
		0.914627, 0.030024, 0.403182,
		-0.127527, -0.924905, 0.358172,
		36.727081, 39.186443, 44.530708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406467, 39.626720, 44.026035>,  <36.816349, 39.833878, 44.279987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406467, 39.626720, 44.026035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.197018, 39.301105, 44.126564>,  <37.071346, 39.105736, 44.186882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.197018, 39.301105, 44.126564>,  <37.406467, 39.626720, 44.026035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197018, 39.301105, 44.126564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323516, -0.462888, -0.825271,
		0.788134, -0.350827, 0.505733,
		-0.523625, -0.814036, 0.251319,
		37.039928, 39.056896, 44.201962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918190, 38.982002, 44.196007>,  <37.406467, 39.626720, 44.026035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918190, 38.982002, 44.196007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.558235, 38.864025, 44.067497>,  <37.342262, 38.793240, 43.990391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.558235, 38.864025, 44.067497>,  <37.918190, 38.982002, 44.196007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558235, 38.864025, 44.067497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434644, -0.545746, -0.716411,
		0.035969, -0.784326, 0.619305,
		-0.899884, -0.294946, -0.321273,
		37.288269, 38.775543, 43.971115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020256, 38.195637, 43.953583>,  <37.918190, 38.982002, 44.196007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020256, 38.195637, 43.953583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.679203, 38.337322, 43.799931>,  <37.474571, 38.422333, 43.707741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.679203, 38.337322, 43.799931>,  <38.020256, 38.195637, 43.953583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679203, 38.337322, 43.799931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197451, -0.462222, -0.864502,
		-0.483778, -0.812944, 0.324161,
		-0.852626, 0.354221, -0.384129,
		37.423412, 38.443588, 43.684692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817356, 37.610687, 43.421276>,  <38.020256, 38.195637, 43.953583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817356, 37.610687, 43.421276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.583481, 37.914745, 43.307919>,  <37.443153, 38.097179, 43.239902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.583481, 37.914745, 43.307919>,  <37.817356, 37.610687, 43.421276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583481, 37.914745, 43.307919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135548, -0.252877, -0.957956,
		-0.799851, -0.598523, 0.044819,
		-0.584692, 0.760147, -0.283393,
		37.408073, 38.142788, 43.222900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459156, 37.419579, 42.873978>,  <37.817356, 37.610687, 43.421276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459156, 37.419579, 42.873978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.428200, 37.816113, 42.831532>,  <37.409626, 38.054035, 42.806065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.428200, 37.816113, 42.831532>,  <37.459156, 37.419579, 42.873978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428200, 37.816113, 42.831532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249267, -0.083816, -0.964801,
		-0.965337, -0.101122, -0.240620,
		-0.077394, 0.991337, -0.106117,
		37.404980, 38.113514, 42.799698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175812, 37.466663, 42.236202>,  <37.459156, 37.419579, 42.873978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175812, 37.466663, 42.236202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.333267, 37.825687, 42.315628>,  <37.427742, 38.041103, 42.363281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.333267, 37.825687, 42.315628>,  <37.175812, 37.466663, 42.236202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333267, 37.825687, 42.315628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322576, 0.067395, -0.944141,
		-0.860808, 0.435704, -0.263003,
		0.393641, 0.897563, 0.198562,
		37.451359, 38.094955, 42.375198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904308, 37.991016, 41.789433>,  <37.175812, 37.466663, 42.236202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904308, 37.991016, 41.789433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.240215, 38.159817, 41.926075>,  <37.441761, 38.261097, 42.008060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.240215, 38.159817, 41.926075>,  <36.904308, 37.991016, 41.789433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240215, 38.159817, 41.926075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353227, 0.053174, -0.934025,
		-0.412328, 0.905033, -0.104409,
		0.839772, 0.422005, 0.341607,
		37.492146, 38.286419, 42.028557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948193, 38.599167, 41.519558>,  <36.904308, 37.991016, 41.789433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948193, 38.599167, 41.519558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.324837, 38.487442, 41.594765>,  <37.550823, 38.420406, 41.639889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.324837, 38.487442, 41.594765>,  <36.948193, 38.599167, 41.519558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324837, 38.487442, 41.594765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210563, 0.052753, -0.976156,
		0.262730, 0.958751, 0.108485,
		0.941614, -0.279308, 0.188018,
		37.607323, 38.403648, 41.651169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369400, 39.044292, 41.176353>,  <36.948193, 38.599167, 41.519558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369400, 39.044292, 41.176353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.611076, 38.729809, 41.228252>,  <37.756081, 38.541119, 41.259392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.611076, 38.729809, 41.228252>,  <37.369400, 39.044292, 41.176353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611076, 38.729809, 41.228252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083773, -0.099249, -0.991530,
		0.792426, 0.609939, 0.005898,
		0.604188, -0.786209, 0.129744,
		37.792332, 38.493946, 41.267178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902737, 39.231438, 40.715595>,  <37.369400, 39.044292, 41.176353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902737, 39.231438, 40.715595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.935589, 38.843906, 40.809078>,  <37.955299, 38.611385, 40.865170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.935589, 38.843906, 40.809078>,  <37.902737, 39.231438, 40.715595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935589, 38.843906, 40.809078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123795, -0.242604, -0.962195,
		0.988903, 0.050091, -0.139861,
		0.082128, -0.968831, 0.233711,
		37.960228, 38.553257, 40.879192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489132, 38.866852, 40.319736>,  <37.902737, 39.231438, 40.715595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489132, 38.866852, 40.319736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240276, 38.569305, 40.417389>,  <38.090961, 38.390778, 40.475983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.240276, 38.569305, 40.417389>,  <38.489132, 38.866852, 40.319736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240276, 38.569305, 40.417389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098536, -0.383750, -0.918165,
		0.776680, -0.547172, 0.312044,
		-0.622141, -0.743867, 0.244135,
		38.053635, 38.346146, 40.490631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.171392, 39.683468, 38.749897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.836351, 39.887417, 38.828339>,  <27.635326, 40.009785, 38.875404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.836351, 39.887417, 38.828339>,  <28.171392, 39.683468, 38.749897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.836351, 39.887417, 38.828339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504443, -0.859678, 0.080568,
		0.209666, -0.031439, 0.977268,
		-0.837602, 0.509868, 0.196104,
		27.585072, 40.040379, 38.887169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.728739, 39.154713, 39.155903>,  <28.171392, 39.683468, 38.749897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.728739, 39.154713, 39.155903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.474569, 39.442699, 39.044266>,  <27.322067, 39.615490, 38.977283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.474569, 39.442699, 39.044266>,  <27.728739, 39.154713, 39.155903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474569, 39.442699, 39.044266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747321, -0.664348, -0.012337,
		-0.194294, 0.200729, 0.960186,
		-0.635422, 0.719965, -0.279088,
		27.283943, 39.658688, 38.960541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155577, 39.052818, 39.570538>,  <27.728739, 39.154713, 39.155903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155577, 39.052818, 39.570538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027233, 39.267109, 39.258118>,  <26.950228, 39.395683, 39.070663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027233, 39.267109, 39.258118>,  <27.155577, 39.052818, 39.570538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027233, 39.267109, 39.258118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786402, -0.610282, -0.095541,
		-0.527846, 0.583566, 0.617114,
		-0.320859, 0.535730, -0.781052,
		26.930975, 39.427830, 39.023804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.439112, 38.936756, 39.567318>,  <27.155577, 39.052818, 39.570538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.439112, 38.936756, 39.567318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.484882, 39.098125, 39.204185>,  <26.512344, 39.194946, 38.986305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.484882, 39.098125, 39.204185>,  <26.439112, 38.936756, 39.567318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484882, 39.098125, 39.204185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697841, -0.617757, -0.362483,
		-0.707053, 0.674998, 0.210838,
		0.114428, 0.403426, -0.907829,
		26.519211, 39.219154, 38.931835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.790045, 38.793541, 39.256947>,  <26.439112, 38.936756, 39.567318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.790045, 38.793541, 39.256947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.010603, 38.876442, 38.933712>,  <26.142939, 38.926182, 38.739769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.010603, 38.876442, 38.933712>,  <25.790045, 38.793541, 39.256947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010603, 38.876442, 38.933712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686896, -0.436913, -0.580758,
		-0.473431, 0.875301, -0.098548,
		0.551395, 0.207257, -0.808089,
		26.176022, 38.938618, 38.691284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.365244, 39.210522, 38.731152>,  <25.790045, 38.793541, 39.256947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.365244, 39.210522, 38.731152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.660946, 39.000195, 38.562859>,  <25.838367, 38.873997, 38.461884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.660946, 39.000195, 38.562859>,  <25.365244, 39.210522, 38.731152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.660946, 39.000195, 38.562859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672727, -0.605038, -0.425873,
		-0.030626, 0.597867, -0.801010,
		0.739257, -0.525819, -0.420731,
		25.882723, 38.842449, 38.436638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.246399, 39.223541, 37.973091>,  <25.365244, 39.210522, 38.731152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.246399, 39.223541, 37.973091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.475986, 38.901539, 38.033131>,  <25.613739, 38.708340, 38.069153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.475986, 38.901539, 38.033131>,  <25.246399, 39.223541, 37.973091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.475986, 38.901539, 38.033131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647516, -0.558377, -0.518592,
		0.501279, 0.200467, -0.841744,
		0.573970, -0.805002, 0.150097,
		25.648178, 38.660038, 38.078159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308060, 38.800804, 37.299118>,  <25.246399, 39.223541, 37.973091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308060, 38.800804, 37.299118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.390179, 38.555683, 37.604359>,  <25.439451, 38.408611, 37.787502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.390179, 38.555683, 37.604359>,  <25.308060, 38.800804, 37.299118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.390179, 38.555683, 37.604359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535144, -0.723116, -0.436720,
		0.819435, -0.318712, -0.476392,
		0.205299, -0.612802, 0.763103,
		25.451769, 38.371841, 37.833290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.466406, 38.126411, 36.926697>,  <25.308060, 38.800804, 37.299118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.466406, 38.126411, 36.926697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.408621, 38.027378, 37.309910>,  <25.373949, 37.967960, 37.539837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.408621, 38.027378, 37.309910>,  <25.466406, 38.126411, 36.926697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408621, 38.027378, 37.309910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325324, -0.902487, -0.282279,
		0.934502, -0.352451, 0.049831,
		-0.144462, -0.247579, 0.958037,
		25.365282, 37.953106, 37.597321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957542, 37.599289, 37.206062>,  <25.466406, 38.126411, 36.926697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957542, 37.599289, 37.206062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.652058, 37.566143, 37.462147>,  <25.468767, 37.546257, 37.615799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.652058, 37.566143, 37.462147>,  <25.957542, 37.599289, 37.206062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.652058, 37.566143, 37.462147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007850, -0.990463, -0.137556,
		0.645507, -0.110079, 0.755780,
		-0.763714, -0.082861, 0.640215,
		25.422943, 37.541286, 37.654213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.130234, 36.998531, 37.614555>,  <25.957542, 37.599289, 37.206062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.130234, 36.998531, 37.614555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.740223, 37.072449, 37.663834>,  <25.506216, 37.116798, 37.693401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.740223, 37.072449, 37.663834>,  <26.130234, 36.998531, 37.614555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740223, 37.072449, 37.663834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185480, -0.982630, 0.005975,
		0.122162, -0.017025, 0.992364,
		-0.975025, 0.184794, 0.123198,
		25.447716, 37.127888, 37.700794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906530, 36.644932, 38.232517>,  <26.130234, 36.998531, 37.614555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906530, 36.644932, 38.232517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.597208, 36.687759, 37.982548>,  <25.411615, 36.713455, 37.832565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.597208, 36.687759, 37.982548>,  <25.906530, 36.644932, 38.232517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597208, 36.687759, 37.982548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184574, -0.980965, 0.060334,
		-0.606573, 0.162002, 0.778348,
		-0.773306, 0.107065, -0.624928,
		25.365215, 36.719879, 37.795071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552841, 36.092857, 38.440144>,  <25.906530, 36.644932, 38.232517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552841, 36.092857, 38.440144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.364817, 36.229324, 38.114532>,  <25.252001, 36.311203, 37.919167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.364817, 36.229324, 38.114532>,  <25.552841, 36.092857, 38.440144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364817, 36.229324, 38.114532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261564, -0.934692, -0.240697,
		-0.842985, 0.099778, 0.528602,
		-0.470064, 0.341167, -0.814030,
		25.223797, 36.331673, 37.870323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927362, 35.722111, 38.461079>,  <25.552841, 36.092857, 38.440144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.927362, 35.722111, 38.461079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.971342, 35.845463, 38.083122>,  <24.997730, 35.919476, 37.856350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.971342, 35.845463, 38.083122>,  <24.927362, 35.722111, 38.461079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.971342, 35.845463, 38.083122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382706, -0.864220, -0.326588,
		-0.917304, 0.397522, 0.023000,
		0.109949, 0.308383, -0.944887,
		25.004326, 35.937977, 37.799656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.336672, 35.518047, 38.097519>,  <24.927362, 35.722111, 38.461079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.336672, 35.518047, 38.097519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.631765, 35.578526, 37.834343>,  <24.808821, 35.614815, 37.676437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.631765, 35.578526, 37.834343>,  <24.336672, 35.518047, 38.097519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.631765, 35.578526, 37.834343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234512, -0.856508, -0.459781,
		-0.633050, 0.493491, -0.596417,
		0.737734, 0.151198, -0.657942,
		24.853086, 35.623886, 37.636959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.038363, 35.298405, 37.450775>,  <24.336672, 35.518047, 38.097519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.038363, 35.298405, 37.450775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.426298, 35.313152, 37.354401>,  <24.659060, 35.322002, 37.296577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.426298, 35.313152, 37.354401>,  <24.038363, 35.298405, 37.450775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.426298, 35.313152, 37.354401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146959, -0.700148, -0.698710,
		-0.194450, 0.713045, -0.673614,
		0.969841, 0.036871, -0.240932,
		24.717251, 35.324215, 37.282120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.028704, 35.217838, 36.783554>,  <24.038363, 35.298405, 37.450775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.028704, 35.217838, 36.783554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.389910, 35.101952, 36.910442>,  <24.606632, 35.032421, 36.986576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.389910, 35.101952, 36.910442>,  <24.028704, 35.217838, 36.783554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.389910, 35.101952, 36.910442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047502, -0.801205, -0.596502,
		0.426977, 0.523581, -0.737261,
		0.903014, -0.289713, 0.317225,
		24.660814, 35.015038, 37.005611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.358118, 35.011993, 36.199329>,  <24.028704, 35.217838, 36.783554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.358118, 35.011993, 36.199329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.579042, 34.857388, 36.494778>,  <24.711597, 34.764626, 36.672047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.579042, 34.857388, 36.494778>,  <24.358118, 35.011993, 36.199329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.579042, 34.857388, 36.494778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123471, -0.838320, -0.531013,
		0.824444, 0.384482, -0.415290,
		0.552311, -0.386514, 0.738620,
		24.744736, 34.741432, 36.716362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075352, 34.899662, 36.025597>,  <24.358118, 35.011993, 36.199329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075352, 34.899662, 36.025597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.024664, 34.640713, 36.326225>,  <24.994251, 34.485344, 36.506603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.024664, 34.640713, 36.326225>,  <25.075352, 34.899662, 36.025597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024664, 34.640713, 36.326225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148481, -0.761520, -0.630905,
		0.980763, 0.031645, 0.192622,
		-0.126721, -0.647369, 0.751569,
		24.986649, 34.446503, 36.551697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.665680, 34.503933, 35.948658>,  <25.075352, 34.899662, 36.025597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.665680, 34.503933, 35.948658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.440231, 34.271763, 36.183754>,  <25.304962, 34.132462, 36.324810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.440231, 34.271763, 36.183754>,  <25.665680, 34.503933, 35.948658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440231, 34.271763, 36.183754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205186, -0.787592, -0.581031,
		0.800145, -0.206884, 0.562998,
		-0.563619, -0.580428, 0.587738,
		25.271145, 34.097633, 36.360077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.058977, 33.954704, 36.233429>,  <25.665680, 34.503933, 35.948658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.058977, 33.954704, 36.233429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.673594, 33.847622, 36.236893>,  <25.442364, 33.783371, 36.238972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.673594, 33.847622, 36.236893>,  <26.058977, 33.954704, 36.233429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673594, 33.847622, 36.236893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228528, -0.838452, -0.494746,
		0.139706, -0.474690, 0.868995,
		-0.963461, -0.267708, 0.008657,
		25.384556, 33.767311, 36.239491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819847, 33.764858, 36.124340>,  <26.058977, 33.954704, 36.233429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819847, 33.764858, 36.124340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996115, 33.714542, 35.768814>,  <27.101875, 33.684353, 35.555500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.996115, 33.714542, 35.768814>,  <26.819847, 33.764858, 36.124340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.996115, 33.714542, 35.768814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259256, 0.965774, -0.008147,
		0.859417, -0.226840, 0.458198,
		0.440668, -0.125792, -0.888813,
		27.128315, 33.676804, 35.502171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550322, 33.981972, 36.237103>,  <26.819847, 33.764858, 36.124340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550322, 33.981972, 36.237103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451248, 34.025597, 35.852028>,  <27.391804, 34.051773, 35.620983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.451248, 34.025597, 35.852028>,  <27.550322, 33.981972, 36.237103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451248, 34.025597, 35.852028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475555, 0.879392, -0.022727,
		0.844097, -0.463438, -0.269677,
		-0.247684, 0.109063, -0.962683,
		27.376944, 34.058315, 35.563225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100563, 34.311657, 35.968346>,  <27.550322, 33.981972, 36.237103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100563, 34.311657, 35.968346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819559, 34.388012, 35.694107>,  <27.650957, 34.433826, 35.529564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.819559, 34.388012, 35.694107>,  <28.100563, 34.311657, 35.968346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819559, 34.388012, 35.694107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344690, 0.934087, -0.093114,
		0.622632, -0.301732, -0.722002,
		-0.702508, 0.190892, -0.685596,
		27.608807, 34.445278, 35.488430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448898, 34.767757, 35.629196>,  <28.100563, 34.311657, 35.968346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448898, 34.767757, 35.629196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.070560, 34.814125, 35.507912>,  <27.843557, 34.841946, 35.435139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.070560, 34.814125, 35.507912>,  <28.448898, 34.767757, 35.629196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070560, 34.814125, 35.507912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129174, 0.991333, -0.023947,
		0.297811, -0.061818, -0.952621,
		-0.945845, 0.115922, -0.303215,
		27.786806, 34.848900, 35.416946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431353, 35.320335, 35.023857>,  <28.448898, 34.767757, 35.629196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431353, 35.320335, 35.023857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.063932, 35.288597, 35.178761>,  <27.843481, 35.269554, 35.271702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.063932, 35.288597, 35.178761>,  <28.431353, 35.320335, 35.023857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063932, 35.288597, 35.178761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001726, 0.980443, 0.196798,
		-0.395305, 0.180100, -0.900721,
		-0.918548, -0.079350, 0.387263,
		27.788368, 35.264793, 35.294941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089979, 35.837593, 34.769657>,  <28.431353, 35.320335, 35.023857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089979, 35.837593, 34.769657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.889114, 35.745991, 35.103218>,  <27.768595, 35.691029, 35.303352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.889114, 35.745991, 35.103218>,  <28.089979, 35.837593, 34.769657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889114, 35.745991, 35.103218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093211, 0.973013, 0.211085,
		-0.859734, 0.028271, -0.509958,
		-0.502164, -0.229010, 0.833898,
		27.738464, 35.677288, 35.353386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.576921, 36.251904, 34.769741>,  <28.089979, 35.837593, 34.769657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.576921, 36.251904, 34.769741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.618483, 36.135998, 35.150318>,  <27.643419, 36.066452, 35.378662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.618483, 36.135998, 35.150318>,  <27.576921, 36.251904, 34.769741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618483, 36.135998, 35.150318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010598, 0.956241, 0.292387,
		-0.994531, -0.040463, 0.096284,
		0.103902, -0.289768, 0.951440,
		27.649652, 36.049068, 35.435749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311033, 36.787415, 35.037098>,  <27.576921, 36.251904, 34.769741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311033, 36.787415, 35.037098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.523062, 36.618713, 35.331348>,  <27.650278, 36.517494, 35.507900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.523062, 36.618713, 35.331348>,  <27.311033, 36.787415, 35.037098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523062, 36.618713, 35.331348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144004, 0.899706, 0.412059,
		-0.835637, -0.112486, 0.537641,
		0.530070, -0.421754, 0.735628,
		27.682083, 36.492188, 35.552036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045069, 36.985703, 35.675240>,  <27.311033, 36.787415, 35.037098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045069, 36.985703, 35.675240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427761, 36.901695, 35.755791>,  <27.657377, 36.851292, 35.804123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.427761, 36.901695, 35.755791>,  <27.045069, 36.985703, 35.675240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427761, 36.901695, 35.755791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088823, 0.869876, 0.485208,
		-0.277078, -0.446328, 0.850893,
		0.956733, -0.210019, 0.201379,
		27.714781, 36.838688, 35.816204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188885, 37.120674, 36.312988>,  <27.045069, 36.985703, 35.675240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188885, 37.120674, 36.312988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.558569, 37.123299, 36.160259>,  <27.780380, 37.124874, 36.068623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.558569, 37.123299, 36.160259>,  <27.188885, 37.120674, 36.312988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558569, 37.123299, 36.160259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150200, 0.913024, 0.379245,
		0.351105, -0.407853, 0.842841,
		0.924211, 0.006560, -0.381827,
		27.835833, 37.125267, 36.045712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415812, 37.490852, 36.739117>,  <27.188885, 37.120674, 36.312988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415812, 37.490852, 36.739117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703543, 37.494678, 36.461277>,  <27.876183, 37.496975, 36.294571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.703543, 37.494678, 36.461277>,  <27.415812, 37.490852, 36.739117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.703543, 37.494678, 36.461277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140515, 0.977233, 0.158968,
		0.680309, -0.211952, 0.701609,
		0.719329, 0.009561, -0.694603,
		27.919342, 37.497547, 36.252895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012688, 37.713840, 37.062252>,  <27.415812, 37.490852, 36.739117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012688, 37.713840, 37.062252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.085375, 37.799736, 36.678406>,  <28.128988, 37.851273, 36.448097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.085375, 37.799736, 36.678406>,  <28.012688, 37.713840, 37.062252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085375, 37.799736, 36.678406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405387, 0.872723, 0.272058,
		0.895901, -0.438455, 0.071539,
		0.181719, 0.214736, -0.959618,
		28.139891, 37.864159, 36.390522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.612328, 38.073982, 37.068497>,  <28.012688, 37.713840, 37.062252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.612328, 38.073982, 37.068497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.455416, 38.165443, 36.712105>,  <28.361269, 38.220318, 36.498272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.455416, 38.165443, 36.712105>,  <28.612328, 38.073982, 37.068497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455416, 38.165443, 36.712105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311401, 0.944431, 0.105264,
		0.865533, -0.236157, -0.441682,
		-0.392279, 0.228649, -0.890975,
		28.337732, 38.234039, 36.444813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040127, 38.499706, 36.786808>,  <28.612328, 38.073982, 37.068497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040127, 38.499706, 36.786808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731312, 38.613796, 36.559616>,  <28.546022, 38.682251, 36.423302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.731312, 38.613796, 36.559616>,  <29.040127, 38.499706, 36.786808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731312, 38.613796, 36.559616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144112, 0.948932, 0.280641,
		0.619023, 0.134812, -0.773716,
		-0.772038, 0.285225, -0.567983,
		28.499701, 38.699364, 36.389221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.331577, 39.036911, 36.577881>,  <29.040127, 38.499706, 36.786808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.331577, 39.036911, 36.577881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951752, 39.101360, 36.470276>,  <28.723856, 39.140030, 36.405712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.951752, 39.101360, 36.470276>,  <29.331577, 39.036911, 36.577881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.951752, 39.101360, 36.470276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024171, 0.892950, 0.449507,
		0.312636, 0.420333, -0.851809,
		-0.949565, 0.161121, -0.269009,
		28.666882, 39.149696, 36.389572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176506, 39.673363, 36.078705>,  <29.331577, 39.036911, 36.577881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176506, 39.673363, 36.078705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.861103, 39.598392, 36.313011>,  <28.671862, 39.553410, 36.453594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.861103, 39.598392, 36.313011>,  <29.176506, 39.673363, 36.078705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861103, 39.598392, 36.313011> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008283, 0.949110, 0.314835,
		-0.614969, 0.253102, -0.746828,
		-0.788508, -0.187428, 0.585770,
		28.624550, 39.542164, 36.488743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825085, 40.253616, 36.172913>,  <29.176506, 39.673363, 36.078705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825085, 40.253616, 36.172913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656885, 40.059521, 36.479565>,  <28.555965, 39.943066, 36.663555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.656885, 40.059521, 36.479565>,  <28.825085, 40.253616, 36.172913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656885, 40.059521, 36.479565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040909, 0.854249, 0.518252,
		-0.906371, 0.186561, -0.379060,
		-0.420497, -0.485235, 0.766635,
		28.530737, 39.913952, 36.709557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.228052, 40.653381, 36.404884>,  <28.825085, 40.253616, 36.172913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.228052, 40.653381, 36.404884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.272421, 40.408737, 36.718220>,  <28.299042, 40.261951, 36.906223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.272421, 40.408737, 36.718220>,  <28.228052, 40.653381, 36.404884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272421, 40.408737, 36.718220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046869, 0.790548, 0.610605,
		-0.992723, -0.031014, 0.116354,
		0.110921, -0.611615, 0.783341,
		28.305696, 40.225254, 36.953220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669859, 40.812702, 36.888329>,  <28.228052, 40.653381, 36.404884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669859, 40.812702, 36.888329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.928728, 40.634319, 37.135647>,  <28.084049, 40.527290, 37.284039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.928728, 40.634319, 37.135647>,  <27.669859, 40.812702, 36.888329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928728, 40.634319, 37.135647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108872, 0.748662, 0.653951,
		-0.754527, -0.490536, 0.435963,
		0.647175, -0.445959, 0.618292,
		28.122881, 40.500530, 37.321133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415468, 40.857853, 37.562607>,  <27.669859, 40.812702, 36.888329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415468, 40.857853, 37.562607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.814671, 40.833378, 37.556355>,  <28.054192, 40.818695, 37.552605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.814671, 40.833378, 37.556355>,  <27.415468, 40.857853, 37.562607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.814671, 40.833378, 37.556355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059579, 0.830262, 0.554180,
		-0.020933, -0.554004, 0.832251,
		0.998004, -0.061186, -0.015627,
		28.114071, 40.815022, 37.551666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.671600, 40.889713, 38.264271>,  <27.415468, 40.857853, 37.562607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.671600, 40.889713, 38.264271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.982914, 41.004128, 38.040680>,  <28.169703, 41.072777, 37.906525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.982914, 41.004128, 38.040680>,  <27.671600, 40.889713, 38.264271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982914, 41.004128, 38.040680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143790, 0.785371, 0.602093,
		0.611227, -0.548975, 0.570112,
		0.778284, 0.286039, -0.558977,
		28.216398, 41.089939, 37.872986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.446144, 36.472229, 47.496296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.077374, 36.610424, 47.426224>,  <38.856110, 36.693340, 47.384182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.077374, 36.610424, 47.426224>,  <39.446144, 36.472229, 47.496296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077374, 36.610424, 47.426224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094235, 0.638682, 0.763679,
		0.375723, 0.687549, -0.621376,
		-0.921928, 0.345487, -0.175176,
		38.800797, 36.714069, 47.373672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502846, 37.188587, 47.637859>,  <39.446144, 36.472229, 47.496296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502846, 37.188587, 47.637859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.109665, 37.115112, 47.641235>,  <38.873756, 37.071030, 47.643261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.109665, 37.115112, 47.641235>,  <39.502846, 37.188587, 47.637859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109665, 37.115112, 47.641235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085007, 0.494650, 0.864925,
		-0.163048, 0.849460, -0.501831,
		-0.982949, -0.183684, 0.008442,
		38.814781, 37.060009, 47.643768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215744, 37.805386, 47.950115>,  <39.502846, 37.188587, 47.637859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215744, 37.805386, 47.950115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.944004, 37.513988, 47.985401>,  <38.780960, 37.339149, 48.006573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.944004, 37.513988, 47.985401>,  <39.215744, 37.805386, 47.950115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944004, 37.513988, 47.985401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235169, 0.330018, 0.914212,
		-0.695107, 0.600328, -0.395517,
		-0.679355, -0.728488, 0.088219,
		38.740196, 37.295441, 48.011868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708382, 38.135292, 48.176655>,  <39.215744, 37.805386, 47.950115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708382, 38.135292, 48.176655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.623089, 37.756287, 48.271942>,  <38.571915, 37.528881, 48.329113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.623089, 37.756287, 48.271942>,  <38.708382, 38.135292, 48.176655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623089, 37.756287, 48.271942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353647, 0.302144, 0.885236,
		-0.910751, 0.104513, -0.399512,
		-0.213229, -0.947516, 0.238217,
		38.559120, 37.472031, 48.343407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004864, 38.194199, 48.378044>,  <38.708382, 38.135292, 48.176655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004864, 38.194199, 48.378044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.163647, 37.856617, 48.522366>,  <38.258915, 37.654068, 48.608959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.163647, 37.856617, 48.522366>,  <38.004864, 38.194199, 48.378044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163647, 37.856617, 48.522366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275294, 0.265524, 0.923964,
		-0.875581, -0.466097, -0.126934,
		0.396953, -0.843950, 0.360801,
		38.282734, 37.603432, 48.630608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513592, 37.832214, 48.655800>,  <38.004864, 38.194199, 48.378044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513592, 37.832214, 48.655800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.840874, 37.701565, 48.845055>,  <38.037243, 37.623177, 48.958607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.840874, 37.701565, 48.845055>,  <37.513592, 37.832214, 48.655800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840874, 37.701565, 48.845055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432664, 0.192118, 0.880847,
		-0.378600, -0.925424, 0.015876,
		0.818208, -0.326620, 0.473134,
		38.086334, 37.603580, 48.986996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275600, 37.238979, 49.134224>,  <37.513592, 37.832214, 48.655800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275600, 37.238979, 49.134224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.627804, 37.360184, 49.280041>,  <37.839127, 37.432907, 49.367531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.627804, 37.360184, 49.280041>,  <37.275600, 37.238979, 49.134224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627804, 37.360184, 49.280041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427556, 0.175552, 0.886779,
		0.204720, -0.936674, 0.284134,
		0.880503, 0.303024, 0.364542,
		37.891956, 37.451088, 49.389404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422596, 36.857578, 49.725800>,  <37.275600, 37.238979, 49.134224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422596, 36.857578, 49.725800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.628906, 37.198685, 49.758694>,  <37.752693, 37.403351, 49.778431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.628906, 37.198685, 49.758694>,  <37.422596, 36.857578, 49.725800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628906, 37.198685, 49.758694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384942, 0.144928, 0.911491,
		0.765372, -0.501779, 0.403017,
		0.515776, 0.852768, 0.082232,
		37.783638, 37.454514, 49.783363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408176, 36.929619, 50.378162>,  <37.422596, 36.857578, 49.725800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408176, 36.929619, 50.378162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.524529, 37.288490, 50.245220>,  <37.594337, 37.503815, 50.165455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.524529, 37.288490, 50.245220>,  <37.408176, 36.929619, 50.378162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524529, 37.288490, 50.245220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383553, 0.427591, 0.818568,
		0.876515, -0.110625, 0.468491,
		0.290877, 0.897178, -0.332359,
		37.611794, 37.557644, 50.145512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657059, 37.298943, 51.004089>,  <37.408176, 36.929619, 50.378162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657059, 37.298943, 51.004089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.647499, 37.600357, 50.741299>,  <37.641762, 37.781204, 50.583626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.647499, 37.600357, 50.741299>,  <37.657059, 37.298943, 51.004089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647499, 37.600357, 50.741299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402453, 0.594305, 0.696300,
		0.915129, 0.281044, 0.289057,
		-0.023903, 0.753536, -0.656972,
		37.640327, 37.826416, 50.544209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924553, 37.847584, 51.334297>,  <37.657059, 37.298943, 51.004089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924553, 37.847584, 51.334297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.680794, 37.997227, 51.054676>,  <37.534538, 38.087013, 50.886902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.680794, 37.997227, 51.054676>,  <37.924553, 37.847584, 51.334297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680794, 37.997227, 51.054676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496837, 0.506919, 0.704404,
		0.617888, 0.776579, -0.123044,
		-0.609399, 0.374110, -0.699053,
		37.497974, 38.109459, 50.844959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933586, 38.529652, 51.444328>,  <37.924553, 37.847584, 51.334297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933586, 38.529652, 51.444328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.596764, 38.486050, 51.233021>,  <37.394672, 38.459888, 51.106236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.596764, 38.486050, 51.233021>,  <37.933586, 38.529652, 51.444328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596764, 38.486050, 51.233021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478363, 0.603437, 0.637991,
		0.249231, 0.789925, -0.560269,
		-0.842053, -0.109005, -0.528266,
		37.344147, 38.453350, 51.074539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659966, 39.265182, 51.263691>,  <37.933586, 38.529652, 51.444328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659966, 39.265182, 51.263691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393505, 38.969963, 51.306622>,  <37.233627, 38.792831, 51.332382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393505, 38.969963, 51.306622>,  <37.659966, 39.265182, 51.263691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393505, 38.969963, 51.306622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497310, 0.546811, 0.673558,
		-0.555810, 0.395317, -0.731301,
		-0.666152, -0.738053, 0.107328,
		37.193661, 38.748547, 51.338821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903980, 39.469131, 51.400814>,  <37.659966, 39.265182, 51.263691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903980, 39.469131, 51.400814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900845, 39.123703, 51.602482>,  <36.898964, 38.916447, 51.723480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900845, 39.123703, 51.602482>,  <36.903980, 39.469131, 51.400814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900845, 39.123703, 51.602482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753051, 0.336815, 0.565216,
		-0.657915, -0.375234, -0.652953,
		-0.007836, -0.863571, 0.504166,
		36.898495, 38.864632, 51.753731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184174, 39.494736, 51.134518>,  <36.903980, 39.469131, 51.400814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184174, 39.494736, 51.134518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102375, 39.862461, 51.000031>,  <36.053295, 40.083096, 50.919338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102375, 39.862461, 51.000031>,  <36.184174, 39.494736, 51.134518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102375, 39.862461, 51.000031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279507, -0.274336, -0.920117,
		-0.938113, -0.282137, -0.200854,
		-0.204498, 0.919314, -0.336217,
		36.041027, 40.138256, 50.899166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841335, 39.533958, 50.583210>,  <36.184174, 39.494736, 51.134518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841335, 39.533958, 50.583210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.021145, 39.887486, 50.531384>,  <36.129032, 40.099602, 50.500286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.021145, 39.887486, 50.531384>,  <35.841335, 39.533958, 50.583210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021145, 39.887486, 50.531384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331420, -0.299716, -0.894612,
		-0.829509, 0.359211, -0.427646,
		0.449527, 0.883820, -0.129567,
		36.156002, 40.152630, 50.492512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592468, 39.758888, 50.038208>,  <35.841335, 39.533958, 50.583210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592468, 39.758888, 50.038208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919117, 39.989750, 50.039867>,  <36.115105, 40.128269, 50.040863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919117, 39.989750, 50.039867>,  <35.592468, 39.758888, 50.038208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919117, 39.989750, 50.039867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129135, -0.175702, -0.975937,
		-0.562540, 0.797508, -0.218013,
		0.816623, 0.577157, 0.004147,
		36.164104, 40.162895, 50.041111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568844, 40.142391, 49.495609>,  <35.592468, 39.758888, 50.038208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568844, 40.142391, 49.495609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950062, 40.221481, 49.587357>,  <36.178791, 40.268936, 49.642406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.950062, 40.221481, 49.587357>,  <35.568844, 40.142391, 49.495609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950062, 40.221481, 49.587357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231757, 0.011294, -0.972708,
		-0.194924, 0.980192, -0.035062,
		0.953044, 0.197730, 0.229367,
		36.235973, 40.280800, 49.656166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795315, 40.661247, 48.975010>,  <35.568844, 40.142391, 49.495609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795315, 40.661247, 48.975010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102440, 40.458595, 49.131878>,  <36.286713, 40.337006, 49.225998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.102440, 40.458595, 49.131878>,  <35.795315, 40.661247, 48.975010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102440, 40.458595, 49.131878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346013, -0.187254, -0.919354,
		0.539206, 0.841583, 0.031524,
		0.767810, -0.506629, 0.392167,
		36.332783, 40.306606, 49.249527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337021, 40.922600, 48.568138>,  <35.795315, 40.661247, 48.975010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337021, 40.922600, 48.568138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.452759, 40.572453, 48.723061>,  <36.522202, 40.362362, 48.816013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.452759, 40.572453, 48.723061>,  <36.337021, 40.922600, 48.568138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452759, 40.572453, 48.723061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360697, -0.275085, -0.891194,
		0.886668, 0.397560, 0.236151,
		0.289341, -0.875371, 0.387308,
		36.539562, 40.309841, 48.839252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061939, 40.812607, 48.507847>,  <36.337021, 40.922600, 48.568138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061939, 40.812607, 48.507847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880093, 40.457123, 48.531578>,  <36.770985, 40.243832, 48.545815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880093, 40.457123, 48.531578>,  <37.061939, 40.812607, 48.507847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880093, 40.457123, 48.531578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483715, -0.302272, -0.821372,
		0.747893, -0.344712, 0.567300,
		-0.454616, -0.888710, 0.059325,
		36.743710, 40.190510, 48.549374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389797, 40.474354, 47.925026>,  <37.061939, 40.812607, 48.507847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389797, 40.474354, 47.925026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.111259, 40.200207, 48.010235>,  <36.944138, 40.035717, 48.061359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.111259, 40.200207, 48.010235>,  <37.389797, 40.474354, 47.925026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111259, 40.200207, 48.010235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179268, -0.453491, -0.873046,
		0.694958, -0.569754, 0.438650,
		-0.696345, -0.685366, 0.213019,
		36.902355, 39.994598, 48.074139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600044, 39.805061, 47.710781>,  <37.389797, 40.474354, 47.925026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600044, 39.805061, 47.710781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.207458, 39.728836, 47.718903>,  <36.971909, 39.683102, 47.723774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.207458, 39.728836, 47.718903>,  <37.600044, 39.805061, 47.710781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207458, 39.728836, 47.718903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018240, -0.198329, -0.979966,
		0.190772, -0.961432, 0.198129,
		-0.981465, -0.190564, 0.020300,
		36.913017, 39.671665, 47.724991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454853, 39.168800, 47.426090>,  <37.600044, 39.805061, 47.710781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454853, 39.168800, 47.426090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096149, 39.344418, 47.403954>,  <36.880928, 39.449787, 47.390671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096149, 39.344418, 47.403954>,  <37.454853, 39.168800, 47.426090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096149, 39.344418, 47.403954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145460, -0.410563, -0.900155,
		-0.417954, -0.799161, 0.432038,
		-0.896747, 0.439068, -0.055350,
		36.827122, 39.476131, 47.387352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006062, 38.690968, 47.195965>,  <37.454853, 39.168800, 47.426090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006062, 38.690968, 47.195965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.857464, 39.049435, 47.098900>,  <36.768307, 39.264515, 47.040661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.857464, 39.049435, 47.098900>,  <37.006062, 38.690968, 47.195965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857464, 39.049435, 47.098900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151483, -0.316366, -0.936465,
		-0.915995, -0.311129, 0.253281,
		-0.371491, 0.896165, -0.242659,
		36.746017, 39.318283, 47.026104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469448, 38.438381, 46.706223>,  <37.006062, 38.690968, 47.195965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469448, 38.438381, 46.706223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.492210, 38.835789, 46.666870>,  <36.505867, 39.074234, 46.643257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.492210, 38.835789, 46.666870>,  <36.469448, 38.438381, 46.706223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492210, 38.835789, 46.666870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240731, -0.081978, -0.967123,
		-0.968922, 0.078719, 0.234506,
		0.056906, 0.993520, -0.098381,
		36.509281, 39.133846, 46.637356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937256, 38.625988, 46.347008>,  <36.469448, 38.438381, 46.706223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937256, 38.625988, 46.347008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194431, 38.925739, 46.283691>,  <36.348736, 39.105591, 46.245701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.194431, 38.925739, 46.283691>,  <35.937256, 38.625988, 46.347008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194431, 38.925739, 46.283691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027145, -0.228839, -0.973086,
		-0.765435, 0.621339, -0.167472,
		0.642941, 0.749380, -0.158295,
		36.387314, 39.150555, 46.236202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706482, 38.985722, 45.797829>,  <35.937256, 38.625988, 46.347008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706482, 38.985722, 45.797829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101227, 39.046112, 45.820835>,  <36.338074, 39.082348, 45.834637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.101227, 39.046112, 45.820835>,  <35.706482, 38.985722, 45.797829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101227, 39.046112, 45.820835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088869, -0.209980, -0.973658,
		-0.134923, 0.965979, -0.220638,
		0.986863, 0.150977, 0.057514,
		36.397285, 39.091404, 45.838089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161263, 39.486561, 45.974697>,  <35.706482, 38.985722, 45.797829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161263, 39.486561, 45.974697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.780640, 39.402008, 45.885391>,  <34.552265, 39.351276, 45.831806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.780640, 39.402008, 45.885391>,  <35.161263, 39.486561, 45.974697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780640, 39.402008, 45.885391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200453, -0.124092, 0.971812,
		-0.233134, 0.969493, 0.075708,
		-0.951560, -0.211387, -0.223268,
		34.495171, 39.338593, 45.818409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846909, 39.793419, 46.363766>,  <35.161263, 39.486561, 45.974697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846909, 39.793419, 46.363766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.555489, 39.533951, 46.275723>,  <34.380638, 39.378269, 46.222897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.555489, 39.533951, 46.275723>,  <34.846909, 39.793419, 46.363766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555489, 39.533951, 46.275723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155439, -0.156384, 0.975389,
		-0.667125, 0.744830, 0.013105,
		-0.728548, -0.648669, -0.220103,
		34.336926, 39.339352, 46.209690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321850, 40.069485, 46.711258>,  <34.846909, 39.793419, 46.363766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321850, 40.069485, 46.711258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213596, 39.691143, 46.639580>,  <34.148643, 39.464138, 46.596573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213596, 39.691143, 46.639580>,  <34.321850, 40.069485, 46.711258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213596, 39.691143, 46.639580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319348, -0.087397, 0.943599,
		-0.908172, 0.312594, -0.278406,
		-0.270631, -0.945858, -0.179197,
		34.132408, 39.407387, 46.585819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633545, 40.040112, 46.863628>,  <34.321850, 40.069485, 46.711258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633545, 40.040112, 46.863628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751141, 39.660213, 46.906628>,  <33.821697, 39.432274, 46.932426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751141, 39.660213, 46.906628>,  <33.633545, 40.040112, 46.863628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751141, 39.660213, 46.906628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363354, -0.007032, 0.931625,
		-0.884049, -0.312947, -0.347161,
		0.293991, -0.949744, 0.107494,
		33.839336, 39.375290, 46.938877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069691, 39.606323, 47.190163>,  <33.633545, 40.040112, 46.863628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069691, 39.606323, 47.190163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417366, 39.424107, 47.267097>,  <33.625973, 39.314777, 47.313259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417366, 39.424107, 47.267097>,  <33.069691, 39.606323, 47.190163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417366, 39.424107, 47.267097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260052, -0.090282, 0.961365,
		-0.420577, -0.885625, -0.196937,
		0.869188, -0.455541, 0.192338,
		33.678123, 39.287445, 47.324799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837070, 39.253471, 47.666069>,  <33.069691, 39.606323, 47.190163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837070, 39.253471, 47.666069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.234741, 39.218796, 47.691650>,  <33.473343, 39.197990, 47.707001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.234741, 39.218796, 47.691650>,  <32.837070, 39.253471, 47.666069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234741, 39.218796, 47.691650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055846, 0.092925, 0.994106,
		-0.092120, -0.991892, 0.087543,
		0.994181, -0.086688, 0.063953,
		33.532997, 39.192791, 47.710835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988026, 38.731937, 48.200962>,  <32.837070, 39.253471, 47.666069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988026, 38.731937, 48.200962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306023, 38.974365, 48.190632>,  <33.496822, 39.119820, 48.184433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306023, 38.974365, 48.190632>,  <32.988026, 38.731937, 48.200962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306023, 38.974365, 48.190632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096321, 0.168156, 0.981043,
		0.598920, -0.777436, 0.192060,
		0.794995, 0.606066, -0.025829,
		33.544521, 39.156185, 48.182884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715370, 38.091579, 48.531002>,  <32.988026, 38.731937, 48.200962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715370, 38.091579, 48.531002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.330181, 38.038605, 48.624928>,  <32.099068, 38.006821, 48.681282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.330181, 38.038605, 48.624928>,  <32.715370, 38.091579, 48.531002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330181, 38.038605, 48.624928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214498, -0.151222, -0.964947,
		0.163305, -0.979588, 0.117215,
		-0.962975, -0.132438, 0.234815,
		32.041290, 37.998875, 48.695374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503853, 37.566700, 48.187218>,  <32.715370, 38.091579, 48.531002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503853, 37.566700, 48.187218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.152752, 37.735947, 48.277122>,  <31.942091, 37.837494, 48.331066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.152752, 37.735947, 48.277122>,  <32.503853, 37.566700, 48.187218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152752, 37.735947, 48.277122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286952, -0.088600, -0.953839,
		-0.383675, -0.901731, 0.199185,
		-0.877754, 0.423120, 0.224760,
		31.889425, 37.862881, 48.344551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021179, 37.100815, 47.962025>,  <32.503853, 37.566700, 48.187218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021179, 37.100815, 47.962025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.869473, 37.469650, 47.992798>,  <31.778448, 37.690952, 48.011261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.869473, 37.469650, 47.992798>,  <32.021179, 37.100815, 47.962025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869473, 37.469650, 47.992798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223122, -0.010444, -0.974735,
		-0.897984, -0.386849, 0.209698,
		-0.379265, 0.922084, 0.076936,
		31.755693, 37.746277, 48.015881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398273, 37.056786, 47.626331>,  <32.021179, 37.100815, 47.962025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398273, 37.056786, 47.626331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.478333, 37.448669, 47.622074>,  <31.526367, 37.683800, 47.619518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.478333, 37.448669, 47.622074>,  <31.398273, 37.056786, 47.626331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478333, 37.448669, 47.622074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268535, 0.044404, -0.962246,
		-0.942247, 0.195450, 0.271974,
		0.200148, 0.979708, -0.010645,
		31.538378, 37.742580, 47.618881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858160, 37.352444, 47.282772>,  <31.398273, 37.056786, 47.626331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858160, 37.352444, 47.282772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.175955, 37.591671, 47.240620>,  <31.366632, 37.735207, 47.215328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.175955, 37.591671, 47.240620>,  <30.858160, 37.352444, 47.282772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175955, 37.591671, 47.240620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193186, 0.084394, -0.977526,
		-0.575732, 0.796991, 0.182588,
		0.794489, 0.598066, -0.105379,
		31.414301, 37.771091, 47.209007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593390, 37.951283, 46.967033>,  <30.858160, 37.352444, 47.282772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593390, 37.951283, 46.967033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.975849, 38.050552, 46.904823>,  <31.205324, 38.110115, 46.867496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.975849, 38.050552, 46.904823>,  <30.593390, 37.951283, 46.967033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975849, 38.050552, 46.904823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248789, 0.408024, -0.878420,
		-0.154540, 0.878594, 0.451874,
		0.956149, 0.248172, -0.155529,
		31.262693, 38.125004, 46.858166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663584, 38.672424, 46.741726>,  <30.593390, 37.951283, 46.967033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663584, 38.672424, 46.741726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.012041, 38.539078, 46.597515>,  <31.221115, 38.459072, 46.510990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.012041, 38.539078, 46.597515>,  <30.663584, 38.672424, 46.741726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012041, 38.539078, 46.597515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195495, 0.438053, -0.877435,
		0.450433, 0.834852, 0.316437,
		0.871144, -0.333363, -0.360522,
		31.273384, 38.439068, 46.489357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.349937, 36.105633, 52.248703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.482986, 36.477978, 52.188236>,  <35.562817, 36.701385, 52.151958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.482986, 36.477978, 52.188236>,  <35.349937, 36.105633, 52.248703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482986, 36.477978, 52.188236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031535, -0.149224, -0.988300,
		-0.942532, 0.333500, -0.020280,
		0.332624, 0.930865, -0.151165,
		35.582775, 36.757236, 52.142887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867016, 36.493176, 51.830784>,  <35.349937, 36.105633, 52.248703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867016, 36.493176, 51.830784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.238583, 36.632824, 51.781433>,  <35.461525, 36.716614, 51.751823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.238583, 36.632824, 51.781433>,  <34.867016, 36.493176, 51.830784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238583, 36.632824, 51.781433> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148615, 0.046350, -0.987808,
		-0.339144, 0.935932, 0.094940,
		0.928922, 0.349118, -0.123374,
		35.517258, 36.737560, 51.744419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737995, 37.030605, 51.404713>,  <34.867016, 36.493176, 51.830784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737995, 37.030605, 51.404713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.130966, 36.975132, 51.354740>,  <35.366749, 36.941849, 51.324757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.130966, 36.975132, 51.354740>,  <34.737995, 37.030605, 51.404713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130966, 36.975132, 51.354740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145765, -0.151944, -0.977582,
		0.116587, 0.978612, -0.169488,
		0.982426, -0.138679, -0.124933,
		35.425694, 36.933529, 51.317261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943550, 37.434509, 50.844654>,  <34.737995, 37.030605, 51.404713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943550, 37.434509, 50.844654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.234894, 37.161011, 50.862495>,  <35.409698, 36.996914, 50.873199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.234894, 37.161011, 50.862495>,  <34.943550, 37.434509, 50.844654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234894, 37.161011, 50.862495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114989, -0.186139, -0.975771,
		0.675478, 0.705584, -0.214199,
		0.728359, -0.683743, 0.044599,
		35.453400, 36.955887, 50.875874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514725, 37.572636, 50.284874>,  <34.943550, 37.434509, 50.844654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514725, 37.572636, 50.284874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.545269, 37.191395, 50.402012>,  <35.563595, 36.962650, 50.472294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.545269, 37.191395, 50.402012>,  <35.514725, 37.572636, 50.284874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545269, 37.191395, 50.402012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031800, -0.291226, -0.956126,
		0.996573, 0.082327, 0.008069,
		0.076365, -0.953105, 0.292846,
		35.568180, 36.905464, 50.489864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107212, 37.294495, 49.975922>,  <35.514725, 37.572636, 50.284874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.107212, 37.294495, 49.975922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.915352, 36.951981, 50.052559>,  <35.800236, 36.746471, 50.098541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.915352, 36.951981, 50.052559>,  <36.107212, 37.294495, 49.975922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915352, 36.951981, 50.052559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189680, -0.314367, -0.930158,
		0.856715, -0.409807, 0.313206,
		-0.479647, -0.856289, 0.191590,
		35.771458, 36.695095, 50.110035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485935, 36.863842, 49.595917>,  <36.107212, 37.294495, 49.975922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485935, 36.863842, 49.595917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.136620, 36.678165, 49.655106>,  <35.927032, 36.566757, 49.690620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.136620, 36.678165, 49.655106>,  <36.485935, 36.863842, 49.595917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136620, 36.678165, 49.655106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072118, -0.423525, -0.903009,
		0.481842, -0.777913, 0.403335,
		-0.873285, -0.464196, 0.147971,
		35.874634, 36.538906, 49.699497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518814, 36.277882, 49.012318>,  <36.485935, 36.863842, 49.595917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518814, 36.277882, 49.012318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.131695, 36.253933, 49.110123>,  <35.899426, 36.239563, 49.168808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.131695, 36.253933, 49.110123>,  <36.518814, 36.277882, 49.012318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131695, 36.253933, 49.110123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172586, -0.549322, -0.817594,
		0.183267, -0.833463, 0.521299,
		-0.967795, -0.059869, 0.244517,
		35.841354, 36.235973, 49.183479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344780, 35.669376, 48.840569>,  <36.518814, 36.277882, 49.012318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344780, 35.669376, 48.840569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.990761, 35.852875, 48.872189>,  <35.778351, 35.962975, 48.891159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.990761, 35.852875, 48.872189>,  <36.344780, 35.669376, 48.840569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990761, 35.852875, 48.872189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288574, -0.407437, -0.866441,
		-0.365261, -0.789654, 0.492981,
		-0.885048, 0.458739, 0.079053,
		35.725246, 35.990498, 48.895905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856491, 35.129276, 48.765896>,  <36.344780, 35.669376, 48.840569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856491, 35.129276, 48.765896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.650299, 35.459057, 48.672462>,  <35.526585, 35.656925, 48.616402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.650299, 35.459057, 48.672462>,  <35.856491, 35.129276, 48.765896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650299, 35.459057, 48.672462> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328388, -0.441841, -0.834828,
		-0.791481, -0.353632, 0.498500,
		-0.515480, 0.824452, -0.233580,
		35.495655, 35.706394, 48.602390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166248, 34.928150, 48.616867>,  <35.856491, 35.129276, 48.765896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166248, 34.928150, 48.616867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.264160, 35.271454, 48.436432>,  <35.322906, 35.477436, 48.328171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.264160, 35.271454, 48.436432>,  <35.166248, 34.928150, 48.616867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264160, 35.271454, 48.436432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137617, -0.429774, -0.892388,
		-0.959763, 0.280513, 0.012912,
		0.244777, 0.858258, -0.451085,
		35.337593, 35.528931, 48.301105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659229, 35.008118, 48.101635>,  <35.166248, 34.928150, 48.616867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659229, 35.008118, 48.101635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.987469, 35.210964, 47.996227>,  <35.184414, 35.332672, 47.932983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.987469, 35.210964, 47.996227>,  <34.659229, 35.008118, 48.101635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987469, 35.210964, 47.996227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012444, -0.445145, -0.895372,
		-0.571365, 0.738023, -0.358976,
		0.820602, 0.507118, -0.263524,
		35.233650, 35.363098, 47.917171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026638, 35.402554, 47.964771>,  <34.659229, 35.008118, 48.101635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026638, 35.402554, 47.964771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.665756, 35.245968, 48.037193>,  <33.449226, 35.152016, 48.080647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.665756, 35.245968, 48.037193>,  <34.026638, 35.402554, 47.964771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665756, 35.245968, 48.037193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039987, 0.342056, 0.938828,
		-0.429450, 0.854255, -0.292951,
		-0.902205, -0.391466, 0.181055,
		33.395096, 35.128529, 48.091511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500431, 35.979111, 48.216206>,  <34.026638, 35.402554, 47.964771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500431, 35.979111, 48.216206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.363594, 35.622490, 48.334938>,  <33.281490, 35.408516, 48.406178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.363594, 35.622490, 48.334938>,  <33.500431, 35.979111, 48.216206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363594, 35.622490, 48.334938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068231, 0.291488, 0.954138,
		-0.937185, 0.346658, -0.038885,
		-0.342094, -0.891551, 0.296831,
		33.260967, 35.355026, 48.423988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027771, 36.169899, 48.779686>,  <33.500431, 35.979111, 48.216206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027771, 36.169899, 48.779686> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.097702, 35.778881, 48.826733>,  <33.139660, 35.544270, 48.854961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.097702, 35.778881, 48.826733>,  <33.027771, 36.169899, 48.779686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097702, 35.778881, 48.826733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077129, 0.132683, 0.988153,
		-0.981573, -0.163688, 0.098594,
		0.174830, -0.977549, 0.117613,
		33.150150, 35.485615, 48.862015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521717, 35.919617, 49.105103>,  <33.027771, 36.169899, 48.779686>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521717, 35.919617, 49.105103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.806652, 35.648083, 49.176376>,  <32.977615, 35.485161, 49.219143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.806652, 35.648083, 49.176376>,  <32.521717, 35.919617, 49.105103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806652, 35.648083, 49.176376> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261644, -0.021273, 0.964930,
		-0.651241, -0.733979, -0.192767,
		0.712339, -0.678838, 0.178187,
		33.020355, 35.444431, 49.229832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229965, 35.379982, 49.345108>,  <32.521717, 35.919617, 49.105103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229965, 35.379982, 49.345108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.599800, 35.385857, 49.497387>,  <32.821701, 35.389381, 49.588753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.599800, 35.385857, 49.497387>,  <32.229965, 35.379982, 49.345108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599800, 35.385857, 49.497387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379111, -0.063308, 0.923183,
		0.037659, -0.997886, -0.052965,
		0.924585, 0.014687, 0.380693,
		32.877174, 35.390263, 49.611595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152950, 35.055481, 50.001385>,  <32.229965, 35.379982, 49.345108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152950, 35.055481, 50.001385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.520924, 35.205231, 50.047966>,  <32.741707, 35.295082, 50.075912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.520924, 35.205231, 50.047966>,  <32.152950, 35.055481, 50.001385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520924, 35.205231, 50.047966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184917, 0.152394, 0.970867,
		0.345723, -0.914668, 0.209421,
		0.919935, 0.374377, 0.116451,
		32.796906, 35.317543, 50.082901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447655, 34.785637, 50.595692>,  <32.152950, 35.055481, 50.001385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447655, 34.785637, 50.595692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.673466, 35.113049, 50.553139>,  <32.808952, 35.309494, 50.527607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.673466, 35.113049, 50.553139>,  <32.447655, 34.785637, 50.595692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.673466, 35.113049, 50.553139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063456, 0.171540, 0.983131,
		0.822972, -0.548253, 0.148779,
		0.564526, 0.818531, -0.106383,
		32.842823, 35.358608, 50.521225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850403, 34.742813, 51.195873>,  <32.447655, 34.785637, 50.595692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850403, 34.742813, 51.195873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.897152, 35.112312, 51.049976>,  <32.925201, 35.334011, 50.962437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.897152, 35.112312, 51.049976>,  <32.850403, 34.742813, 51.195873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897152, 35.112312, 51.049976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161076, 0.380030, 0.910842,
		0.979998, -0.047700, 0.193207,
		0.116872, 0.923744, -0.364745,
		32.932213, 35.389435, 50.940552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365337, 34.961533, 51.628666>,  <32.850403, 34.742813, 51.195873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365337, 34.961533, 51.628666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.141407, 35.255672, 51.475899>,  <33.007050, 35.432156, 51.384239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.141407, 35.255672, 51.475899>,  <33.365337, 34.961533, 51.628666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141407, 35.255672, 51.475899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108543, 0.391857, 0.913601,
		0.821472, 0.552909, -0.139554,
		-0.559823, 0.735350, -0.381914,
		32.973461, 35.476276, 51.361324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693439, 35.553810, 51.966507>,  <33.365337, 34.961533, 51.628666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693439, 35.553810, 51.966507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.326862, 35.629429, 51.825424>,  <33.106918, 35.674801, 51.740776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.326862, 35.629429, 51.825424>,  <33.693439, 35.553810, 51.966507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326862, 35.629429, 51.825424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246953, 0.426357, 0.870192,
		0.314888, 0.884579, -0.344043,
		-0.916439, 0.189051, -0.352704,
		33.051929, 35.686146, 51.719612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562920, 36.117153, 52.233391>,  <33.693439, 35.553810, 51.966507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562920, 36.117153, 52.233391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.201900, 35.985832, 52.121944>,  <32.985291, 35.907040, 52.055077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.201900, 35.985832, 52.121944>,  <33.562920, 36.117153, 52.233391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201900, 35.985832, 52.121944> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407299, 0.440970, 0.799783,
		-0.139711, 0.835321, -0.531714,
		-0.902545, -0.328305, -0.278617,
		32.931137, 35.887341, 52.038361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075108, 36.703289, 52.270790>,  <33.562920, 36.117153, 52.233391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075108, 36.703289, 52.270790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.851639, 36.371666, 52.280182>,  <32.717556, 36.172691, 52.285816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.851639, 36.371666, 52.280182>,  <33.075108, 36.703289, 52.270790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851639, 36.371666, 52.280182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487904, 0.351406, 0.799039,
		-0.670698, 0.434947, -0.600821,
		-0.558672, -0.829057, 0.023475,
		32.684036, 36.122948, 52.287224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441299, 36.942383, 52.399448>,  <33.075108, 36.703289, 52.270790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441299, 36.942383, 52.399448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.369465, 36.553459, 52.459255>,  <32.326363, 36.320103, 52.495140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.369465, 36.553459, 52.459255>,  <32.441299, 36.942383, 52.399448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369465, 36.553459, 52.459255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586686, 0.227861, 0.777097,
		-0.789650, 0.051838, -0.611363,
		-0.179589, -0.972313, 0.149518,
		32.315590, 36.261765, 52.504112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773560, 36.901073, 52.567730>,  <32.441299, 36.942383, 52.399448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773560, 36.901073, 52.567730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.914103, 36.559101, 52.720387>,  <31.998428, 36.353920, 52.811981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.914103, 36.559101, 52.720387>,  <31.773560, 36.901073, 52.567730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914103, 36.559101, 52.720387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509903, 0.167130, 0.843840,
		-0.785206, -0.491086, -0.377208,
		0.351356, -0.854928, 0.381638,
		32.019508, 36.302624, 52.834877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900572, 37.506046, 51.925217>,  <31.773560, 36.901073, 52.567730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900572, 37.506046, 51.925217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.030483, 37.862846, 51.799458>,  <32.108429, 38.076927, 51.724003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.030483, 37.862846, 51.799458>,  <31.900572, 37.506046, 51.925217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030483, 37.862846, 51.799458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283484, -0.225328, -0.932129,
		-0.902306, 0.391862, 0.179687,
		0.324777, 0.892004, -0.314402,
		32.127914, 38.130447, 51.705135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422466, 37.792336, 51.461166>,  <31.900572, 37.506046, 51.925217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422466, 37.792336, 51.461166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.737440, 38.015057, 51.355396>,  <31.926424, 38.148689, 51.291935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.737440, 38.015057, 51.355396>,  <31.422466, 37.792336, 51.461166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737440, 38.015057, 51.355396> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293431, -0.038654, -0.955199,
		-0.542077, 0.829746, 0.132946,
		0.787433, 0.556802, -0.264426,
		31.973669, 38.182098, 51.276070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145348, 38.328384, 51.092972>,  <31.422466, 37.792336, 51.461166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145348, 38.328384, 51.092972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.523441, 38.265224, 50.978710>,  <31.750298, 38.227329, 50.910152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.523441, 38.265224, 50.978710>,  <31.145348, 38.328384, 51.092972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523441, 38.265224, 50.978710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292283, -0.020012, -0.956122,
		0.145254, 0.987252, -0.065067,
		0.945236, -0.157899, -0.285650,
		31.807013, 38.217854, 50.893017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259563, 38.781879, 50.495300>,  <31.145348, 38.328384, 51.092972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259563, 38.781879, 50.495300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.572769, 38.536892, 50.451904>,  <31.760693, 38.389900, 50.425865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.572769, 38.536892, 50.451904>,  <31.259563, 38.781879, 50.495300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572769, 38.536892, 50.451904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103795, 0.043321, -0.993655,
		0.613284, 0.789306, -0.029650,
		0.783013, -0.612470, -0.108494,
		31.807673, 38.353149, 50.419357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741056, 39.056023, 50.004456>,  <31.259563, 38.781879, 50.495300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741056, 39.056023, 50.004456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.876656, 38.679707, 50.004772>,  <31.958015, 38.453918, 50.004963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.876656, 38.679707, 50.004772>,  <31.741056, 39.056023, 50.004456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876656, 38.679707, 50.004772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138005, -0.050557, -0.989140,
		0.930610, 0.335209, -0.146972,
		0.338999, -0.940786, 0.000789,
		31.978355, 38.397472, 50.005009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113731, 39.095768, 49.431507>,  <31.741056, 39.056023, 50.004456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113731, 39.095768, 49.431507> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.037476, 38.708130, 49.494125>,  <31.991722, 38.475548, 49.531696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.037476, 38.708130, 49.494125>,  <32.113731, 39.095768, 49.431507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037476, 38.708130, 49.494125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028648, -0.164896, -0.985895,
		0.981242, -0.183469, 0.059198,
		-0.190643, -0.969097, 0.156546,
		31.980282, 38.417400, 49.541088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539196, 38.733089, 48.972225>,  <32.113731, 39.095768, 49.431507>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539196, 38.733089, 48.972225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.256748, 38.459373, 49.045040>,  <32.087280, 38.295143, 49.088730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.256748, 38.459373, 49.045040>,  <32.539196, 38.733089, 48.972225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256748, 38.459373, 49.045040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047998, -0.302747, -0.951862,
		0.706460, -0.663394, 0.246622,
		-0.706124, -0.684290, 0.182037,
		32.044910, 38.254086, 49.099651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280762, 38.575455, 48.856506>,  <32.539196, 38.733089, 48.972225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280762, 38.575455, 48.856506> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.485703, 38.896099, 48.733269>,  <33.608665, 39.088486, 48.659328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.485703, 38.896099, 48.733269>,  <33.280762, 38.575455, 48.856506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485703, 38.896099, 48.733269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011137, 0.352523, 0.935737,
		0.858703, -0.482858, 0.171689,
		0.512352, 0.801608, -0.308090,
		33.639408, 39.136581, 48.640842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916451, 38.562496, 49.225788>,  <33.280762, 38.575455, 48.856506>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916451, 38.562496, 49.225788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.880302, 38.940205, 49.099174>,  <33.858612, 39.166828, 49.023209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.880302, 38.940205, 49.099174>,  <33.916451, 38.562496, 49.225788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880302, 38.940205, 49.099174> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020027, 0.319489, 0.947378,
		0.995707, 0.079274, -0.047783,
		-0.090369, 0.944268, -0.316530,
		33.853191, 39.223484, 49.004215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572601, 39.025795, 49.578182>,  <33.916451, 38.562496, 49.225788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572601, 39.025795, 49.578182> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.289745, 39.291855, 49.482243>,  <34.120033, 39.451492, 49.424679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.289745, 39.291855, 49.482243>,  <34.572601, 39.025795, 49.578182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289745, 39.291855, 49.482243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260806, 0.560664, 0.785898,
		0.657218, 0.493184, -0.569942,
		-0.707138, 0.665151, -0.239854,
		34.077602, 39.491402, 49.410286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783455, 39.560188, 49.994514>,  <34.572601, 39.025795, 49.578182>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783455, 39.560188, 49.994514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.435997, 39.706768, 49.861149>,  <34.227520, 39.794716, 49.781128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.435997, 39.706768, 49.861149>,  <34.783455, 39.560188, 49.994514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435997, 39.706768, 49.861149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051967, 0.601879, 0.796894,
		0.492695, 0.709548, -0.503779,
		-0.868649, 0.366446, -0.333416,
		34.175404, 39.816700, 49.761124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839916, 40.343868, 50.044552>,  <34.783455, 39.560188, 49.994514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839916, 40.343868, 50.044552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.455029, 40.235390, 50.054203>,  <34.224094, 40.170303, 50.059994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.455029, 40.235390, 50.054203>,  <34.839916, 40.343868, 50.044552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455029, 40.235390, 50.054203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209911, 0.795365, 0.568623,
		-0.173402, 0.542075, -0.822244,
		-0.962221, -0.271199, 0.024130,
		34.166363, 40.154030, 50.061443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417522, 40.860867, 50.002621>,  <34.839916, 40.343868, 50.044552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417522, 40.860867, 50.002621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.202454, 40.573452, 50.179081>,  <34.073414, 40.401005, 50.284958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.202454, 40.573452, 50.179081>,  <34.417522, 40.860867, 50.002621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202454, 40.573452, 50.179081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292974, 0.649830, 0.701347,
		-0.790617, 0.247847, -0.559907,
		-0.537671, -0.718535, 0.441154,
		34.041153, 40.357891, 50.311428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837605, 41.148270, 50.283875>,  <34.417522, 40.860867, 50.002621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837605, 41.148270, 50.283875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.812332, 40.794804, 50.469410>,  <33.797169, 40.582726, 50.580730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.812332, 40.794804, 50.469410>,  <33.837605, 41.148270, 50.283875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812332, 40.794804, 50.469410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347503, 0.455157, 0.819802,
		-0.935548, -0.109390, -0.335832,
		-0.063178, -0.883667, 0.463834,
		33.793377, 40.529705, 50.608559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129406, 41.096928, 50.572681>,  <33.837605, 41.148270, 50.283875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129406, 41.096928, 50.572681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.397747, 40.870796, 50.764668>,  <33.558750, 40.735119, 50.879860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.397747, 40.870796, 50.764668>,  <33.129406, 41.096928, 50.572681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397747, 40.870796, 50.764668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321827, 0.361162, 0.875208,
		-0.668123, -0.741600, 0.060349,
		0.670850, -0.565325, 0.479967,
		33.599003, 40.701199, 50.908657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746441, 40.922478, 51.228909>,  <33.129406, 41.096928, 50.572681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746441, 40.922478, 51.228909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124249, 40.825657, 51.317726>,  <33.350933, 40.767567, 51.371017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124249, 40.825657, 51.317726>,  <32.746441, 40.922478, 51.228909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124249, 40.825657, 51.317726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186313, 0.161929, 0.969054,
		-0.270512, -0.956657, 0.107848,
		0.944516, -0.242048, 0.222042,
		33.407604, 40.753044, 51.384338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.781654, 36.918774, 35.549877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167976, 36.997555, 35.617317>,  <34.399769, 37.044823, 35.657780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167976, 36.997555, 35.617317>,  <33.781654, 36.918774, 35.549877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167976, 36.997555, 35.617317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162233, -0.048149, 0.985577,
		0.202235, -0.979229, -0.014550,
		0.965806, 0.196958, 0.168601,
		34.457718, 37.056641, 35.667896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953583, 36.464237, 36.022633>,  <33.781654, 36.918774, 35.549877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953583, 36.464237, 36.022633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214470, 36.763519, 36.071316>,  <34.371002, 36.943089, 36.100525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214470, 36.763519, 36.071316>,  <33.953583, 36.464237, 36.022633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214470, 36.763519, 36.071316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309149, 0.115941, 0.943920,
		0.692130, -0.653264, 0.306924,
		0.652214, 0.748201, 0.121710,
		34.410133, 36.987980, 36.107830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066830, 36.548294, 36.707352>,  <33.953583, 36.464237, 36.022633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066830, 36.548294, 36.707352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237652, 36.897579, 36.613441>,  <34.340145, 37.107151, 36.557095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237652, 36.897579, 36.613441>,  <34.066830, 36.548294, 36.707352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237652, 36.897579, 36.613441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196090, 0.342901, 0.918677,
		0.882709, -0.346286, 0.317666,
		0.427053, 0.873215, -0.234779,
		34.365768, 37.159542, 36.543007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626167, 36.606361, 37.127144>,  <34.066830, 36.548294, 36.707352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626167, 36.606361, 37.127144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539024, 36.975189, 36.999191>,  <34.486740, 37.196487, 36.922421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539024, 36.975189, 36.999191>,  <34.626167, 36.606361, 37.127144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539024, 36.975189, 36.999191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166695, 0.287789, 0.943075,
		0.961641, 0.258775, 0.091008,
		-0.217853, 0.922070, -0.319886,
		34.473667, 37.251812, 36.903225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977264, 37.104477, 37.613842>,  <34.626167, 36.606361, 37.127144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977264, 37.104477, 37.613842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665169, 37.294643, 37.451263>,  <34.477909, 37.408745, 37.353718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665169, 37.294643, 37.451263>,  <34.977264, 37.104477, 37.613842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665169, 37.294643, 37.451263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333272, 0.233890, 0.913359,
		0.529292, 0.848099, -0.024046,
		-0.780243, 0.475420, -0.406444,
		34.431095, 37.437271, 37.329330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991665, 37.703171, 37.911625>,  <34.977264, 37.104477, 37.613842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991665, 37.703171, 37.911625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616062, 37.744877, 37.780537>,  <34.390701, 37.769901, 37.701885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616062, 37.744877, 37.780537>,  <34.991665, 37.703171, 37.911625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616062, 37.744877, 37.780537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261842, 0.401037, 0.877843,
		0.222957, 0.910109, -0.349274,
		-0.939004, 0.104267, -0.327719,
		34.334362, 37.776157, 37.682220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779263, 38.391499, 38.099102>,  <34.991665, 37.703171, 37.911625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779263, 38.391499, 38.099102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450008, 38.170216, 38.047852>,  <34.252457, 38.037445, 38.017101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450008, 38.170216, 38.047852>,  <34.779263, 38.391499, 38.099102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450008, 38.170216, 38.047852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417965, 0.437499, 0.796178,
		-0.384393, 0.708914, -0.591340,
		-0.823132, -0.553205, -0.128130,
		34.203068, 38.004253, 38.009411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291607, 38.903843, 38.135960>,  <34.779263, 38.391499, 38.099102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291607, 38.903843, 38.135960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096478, 38.560898, 38.201626>,  <33.979401, 38.355129, 38.241024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096478, 38.560898, 38.201626>,  <34.291607, 38.903843, 38.135960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096478, 38.560898, 38.201626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480750, 0.420834, 0.769271,
		-0.728631, 0.296351, -0.617473,
		-0.487828, -0.857365, 0.164163,
		33.950130, 38.303688, 38.250874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603397, 39.075336, 38.212196>,  <34.291607, 38.903843, 38.135960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603397, 39.075336, 38.212196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626236, 38.717590, 38.389668>,  <33.639938, 38.502941, 38.496151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626236, 38.717590, 38.389668>,  <33.603397, 39.075336, 38.212196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626236, 38.717590, 38.389668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537910, 0.346826, 0.768352,
		-0.841067, -0.282529, -0.461286,
		0.057096, -0.894365, 0.443678,
		33.643364, 38.449280, 38.522770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033508, 39.070236, 38.519825>,  <33.603397, 39.075336, 38.212196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033508, 39.070236, 38.519825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234859, 38.791267, 38.723873>,  <33.355671, 38.623886, 38.846302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234859, 38.791267, 38.723873>,  <33.033508, 39.070236, 38.519825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234859, 38.791267, 38.723873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524685, 0.222351, 0.821746,
		-0.686525, -0.681299, -0.253999,
		0.503377, -0.697418, 0.510117,
		33.385872, 38.582043, 38.876907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612148, 38.889526, 39.038246>,  <33.033508, 39.070236, 38.519825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612148, 38.889526, 39.038246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955360, 38.726669, 39.163471>,  <33.161289, 38.628956, 39.238605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955360, 38.726669, 39.163471>,  <32.612148, 38.889526, 39.038246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955360, 38.726669, 39.163471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265597, 0.169972, 0.948982,
		-0.439586, -0.897409, 0.037705,
		0.858034, -0.407145, 0.313066,
		33.212772, 38.604527, 39.257393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447449, 38.357700, 39.563419>,  <32.612148, 38.889526, 39.038246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447449, 38.357700, 39.563419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829109, 38.459991, 39.625656>,  <33.058105, 38.521366, 39.662998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829109, 38.459991, 39.625656>,  <32.447449, 38.357700, 39.563419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829109, 38.459991, 39.625656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200749, 0.161096, 0.966306,
		0.222050, -0.953231, 0.205047,
		0.954145, 0.255731, 0.155589,
		33.115353, 38.536709, 39.672333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219013, 37.690376, 39.383846>,  <32.447449, 38.357700, 39.563419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219013, 37.690376, 39.383846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839314, 37.587738, 39.456600>,  <31.611494, 37.526157, 39.500252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839314, 37.587738, 39.456600>,  <32.219013, 37.690376, 39.383846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839314, 37.587738, 39.456600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060451, -0.716365, -0.695102,
		0.308656, -0.648831, 0.695522,
		-0.949251, -0.256592, 0.181888,
		31.554539, 37.510761, 39.511166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215672, 37.024300, 39.753922>,  <32.219013, 37.690376, 39.383846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215672, 37.024300, 39.753922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866251, 37.080212, 39.567429>,  <31.656599, 37.113758, 39.455532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866251, 37.080212, 39.567429>,  <32.215672, 37.024300, 39.753922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866251, 37.080212, 39.567429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137076, -0.848455, -0.511208,
		-0.467032, -0.510475, 0.722008,
		-0.873551, 0.139781, -0.466230,
		31.604185, 37.122147, 39.427559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992020, 36.314323, 39.561386>,  <32.215672, 37.024300, 39.753922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992020, 36.314323, 39.561386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724432, 36.523788, 39.350384>,  <31.563879, 36.649467, 39.223782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724432, 36.523788, 39.350384>,  <31.992020, 36.314323, 39.561386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724432, 36.523788, 39.350384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270577, -0.832561, -0.483353,
		-0.692291, -0.180618, 0.698649,
		-0.668970, 0.523659, -0.527504,
		31.523741, 36.680885, 39.192131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427071, 35.976830, 39.578281>,  <31.992020, 36.314323, 39.561386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427071, 35.976830, 39.578281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407715, 36.181198, 39.234974>,  <31.396101, 36.303818, 39.028992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407715, 36.181198, 39.234974>,  <31.427071, 35.976830, 39.578281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407715, 36.181198, 39.234974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240722, -0.839910, -0.486419,
		-0.969387, 0.183066, 0.163632,
		-0.048389, 0.510918, -0.858267,
		31.393198, 36.334473, 38.977493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926132, 35.696625, 39.304478>,  <31.427071, 35.976830, 39.578281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926132, 35.696625, 39.304478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053795, 35.882488, 38.974091>,  <31.130392, 35.994007, 38.775856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053795, 35.882488, 38.974091>,  <30.926132, 35.696625, 39.304478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053795, 35.882488, 38.974091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472874, -0.677225, -0.563700,
		-0.821297, 0.570490, 0.003583,
		0.319159, 0.464659, -0.825972,
		31.149542, 36.021885, 38.726299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440752, 35.620090, 38.845936>,  <30.926132, 35.696625, 39.304478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440752, 35.620090, 38.845936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727612, 35.720005, 38.585690>,  <30.899727, 35.779953, 38.429543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727612, 35.720005, 38.585690>,  <30.440752, 35.620090, 38.845936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727612, 35.720005, 38.585690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279653, -0.751967, -0.596942,
		-0.638350, 0.610044, -0.469420,
		0.717149, 0.249783, -0.650619,
		30.942757, 35.794941, 38.390503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094767, 35.694756, 38.206429>,  <30.440752, 35.620090, 38.845936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094767, 35.694756, 38.206429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484594, 35.624504, 38.150761>,  <30.718491, 35.582352, 38.117359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484594, 35.624504, 38.150761>,  <30.094767, 35.694756, 38.206429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484594, 35.624504, 38.150761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224080, -0.768647, -0.599141,
		-0.001747, 0.615090, -0.788455,
		0.974569, -0.175630, -0.139172,
		30.776964, 35.571815, 38.109009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223053, 35.614017, 37.463551>,  <30.094767, 35.694756, 38.206429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223053, 35.614017, 37.463551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531618, 35.438251, 37.647655>,  <30.716757, 35.332794, 37.758118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531618, 35.438251, 37.647655>,  <30.223053, 35.614017, 37.463551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531618, 35.438251, 37.647655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164032, -0.836169, -0.523369,
		0.614827, 0.328238, -0.717110,
		0.771415, -0.439411, 0.460258,
		30.763042, 35.306427, 37.785732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632084, 35.355549, 36.942619>,  <30.223053, 35.614017, 37.463551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632084, 35.355549, 36.942619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710457, 35.128235, 37.262283>,  <30.757481, 34.991848, 37.454082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710457, 35.128235, 37.262283>,  <30.632084, 35.355549, 36.942619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710457, 35.128235, 37.262283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303844, -0.810033, -0.501522,
		0.932357, -0.144558, -0.331380,
		0.195930, -0.568286, 0.799163,
		30.769236, 34.957748, 37.502033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859100, 34.767078, 36.554916>,  <30.632084, 35.355549, 36.942619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859100, 34.767078, 36.554916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822741, 34.667557, 36.940628>,  <30.800924, 34.607841, 37.172054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822741, 34.667557, 36.940628>,  <30.859100, 34.767078, 36.554916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822741, 34.667557, 36.940628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173225, -0.949575, -0.261342,
		0.980679, -0.190793, 0.043214,
		-0.090897, -0.248807, 0.964278,
		30.795471, 34.592915, 37.229912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023411, 34.135143, 36.663391>,  <30.859100, 34.767078, 36.554916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023411, 34.135143, 36.663391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873493, 34.143276, 37.034145>,  <30.783543, 34.148155, 37.256599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873493, 34.143276, 37.034145>,  <31.023411, 34.135143, 36.663391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873493, 34.143276, 37.034145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476992, -0.861516, -0.173980,
		0.794990, -0.507324, 0.332587,
		-0.374794, 0.020329, 0.926885,
		30.761055, 34.149376, 37.312210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086521, 33.454441, 36.901688>,  <31.023411, 34.135143, 36.663391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086521, 33.454441, 36.901688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793777, 33.620674, 37.117718>,  <30.618132, 33.720413, 37.247334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.793777, 33.620674, 37.117718>,  <31.086521, 33.454441, 36.901688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793777, 33.620674, 37.117718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543086, -0.834413, -0.093872,
		0.411633, -0.362007, 0.836366,
		-0.731857, 0.415578, 0.540074,
		30.574221, 33.745346, 37.279739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900183, 32.944408, 37.337337>,  <31.086521, 33.454441, 36.901688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900183, 32.944408, 37.337337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580530, 33.184464, 37.323345>,  <30.388739, 33.328495, 37.314949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.580530, 33.184464, 37.323345>,  <30.900183, 32.944408, 37.337337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.580530, 33.184464, 37.323345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597554, -0.799357, -0.062907,
		-0.065716, -0.029368, 0.997406,
		-0.799131, 0.600139, -0.034982,
		30.340792, 33.364506, 37.312851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345268, 32.470917, 37.692760>,  <30.900183, 32.944408, 37.337337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345268, 32.470917, 37.692760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222376, 32.756451, 37.441029>,  <30.148640, 32.927769, 37.289989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222376, 32.756451, 37.441029>,  <30.345268, 32.470917, 37.692760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222376, 32.756451, 37.441029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779481, -0.568132, -0.263885,
		-0.545910, 0.409474, 0.730967,
		-0.307232, 0.713833, -0.629327,
		30.130207, 32.970600, 37.252232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703176, 32.679043, 37.888130>,  <30.345268, 32.470917, 37.692760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703176, 32.679043, 37.888130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717096, 32.771595, 37.499233>,  <29.725449, 32.827126, 37.265896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717096, 32.771595, 37.499233>,  <29.703176, 32.679043, 37.888130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717096, 32.771595, 37.499233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835275, -0.527410, -0.155416,
		-0.548730, 0.817496, 0.174914,
		0.034800, 0.231383, -0.972240,
		29.727537, 32.841011, 37.207561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299967, 32.749390, 38.354935>,  <29.703176, 32.679043, 37.888130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299967, 32.749390, 38.354935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549355, 32.436661, 38.357349>,  <30.698986, 32.249023, 38.358799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.549355, 32.436661, 38.357349>,  <30.299967, 32.749390, 38.354935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549355, 32.436661, 38.357349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336510, 0.275299, 0.900539,
		-0.705726, -0.559427, 0.434733,
		0.623467, -0.781826, 0.006033,
		30.736395, 32.202114, 38.359158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140831, 32.320366, 38.942001>,  <30.299967, 32.749390, 38.354935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140831, 32.320366, 38.942001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523035, 32.253471, 38.844814>,  <30.752357, 32.213333, 38.786503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.523035, 32.253471, 38.844814>,  <30.140831, 32.320366, 38.942001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.523035, 32.253471, 38.844814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245900, -0.003296, 0.969290,
		-0.162906, -0.985910, 0.037975,
		0.955508, -0.167241, -0.242972,
		30.809687, 32.203300, 38.771923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456869, 31.700634, 39.144520>,  <30.140831, 32.320366, 38.942001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456869, 31.700634, 39.144520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776352, 31.938177, 39.105740>,  <30.968040, 32.080704, 39.082470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.776352, 31.938177, 39.105740>,  <30.456869, 31.700634, 39.144520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776352, 31.938177, 39.105740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097690, 0.031011, 0.994734,
		0.593739, -0.803971, -0.033246,
		0.798706, 0.593860, -0.096952,
		31.015965, 32.116333, 39.076653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003508, 31.452778, 39.648506>,  <30.456869, 31.700634, 39.144520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003508, 31.452778, 39.648506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073681, 31.835302, 39.554962>,  <31.115784, 32.064816, 39.498837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073681, 31.835302, 39.554962>,  <31.003508, 31.452778, 39.648506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073681, 31.835302, 39.554962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054609, 0.227725, 0.972193,
		0.982976, -0.183324, -0.012273,
		0.175432, 0.956312, -0.233859,
		31.126310, 32.122196, 39.484806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398727, 31.670469, 40.184570>,  <31.003508, 31.452778, 39.648506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398727, 31.670469, 40.184570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268297, 32.004833, 40.007965>,  <31.190039, 32.205452, 39.902004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268297, 32.004833, 40.007965>,  <31.398727, 31.670469, 40.184570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268297, 32.004833, 40.007965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082369, 0.440137, 0.894145,
		0.941749, 0.327924, -0.074664,
		-0.326074, 0.835910, -0.441509,
		31.170475, 32.255608, 39.875511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809072, 32.122761, 40.510635>,  <31.398727, 31.670469, 40.184570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809072, 32.122761, 40.510635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511803, 32.319588, 40.329281>,  <31.333441, 32.437683, 40.220467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511803, 32.319588, 40.329281>,  <31.809072, 32.122761, 40.510635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511803, 32.319588, 40.329281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080981, 0.606482, 0.790962,
		0.664178, 0.624539, -0.410875,
		-0.743175, 0.492067, -0.453388,
		31.288851, 32.467209, 40.193264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011219, 32.786167, 40.568340>,  <31.809072, 32.122761, 40.510635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011219, 32.786167, 40.568340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613558, 32.769314, 40.528564>,  <31.374962, 32.759201, 40.504700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613558, 32.769314, 40.528564>,  <32.011219, 32.786167, 40.568340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613558, 32.769314, 40.528564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106117, 0.552233, 0.826909,
		0.020069, 0.832624, -0.553474,
		-0.994151, -0.042138, -0.099439,
		31.315313, 32.756672, 40.498734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748772, 33.512260, 40.683830>,  <32.011219, 32.786167, 40.568340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748772, 33.512260, 40.683830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439472, 33.263355, 40.732628>,  <31.253893, 33.114014, 40.761906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439472, 33.263355, 40.732628>,  <31.748772, 33.512260, 40.683830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439472, 33.263355, 40.732628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265130, 0.492033, 0.829222,
		-0.576016, 0.608850, -0.545443,
		-0.773248, -0.622258, 0.121995,
		31.207499, 33.076679, 40.769226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400166, 33.916672, 41.050835>,  <31.748772, 33.512260, 40.683830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400166, 33.916672, 41.050835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181028, 33.585373, 41.097958>,  <31.049545, 33.386593, 41.126232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181028, 33.585373, 41.097958>,  <31.400166, 33.916672, 41.050835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181028, 33.585373, 41.097958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352948, 0.356499, 0.865064,
		-0.758482, 0.432340, -0.487633,
		-0.547843, -0.828245, 0.117805,
		31.016676, 33.336899, 41.133301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630060, 34.053627, 41.192501>,  <31.400166, 33.916672, 41.050835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630060, 34.053627, 41.192501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729839, 33.705963, 41.363304>,  <30.789707, 33.497364, 41.465786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729839, 33.705963, 41.363304>,  <30.630060, 34.053627, 41.192501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729839, 33.705963, 41.363304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240655, 0.371474, 0.896712,
		-0.938009, -0.326443, -0.116506,
		0.249446, -0.869162, 0.427006,
		30.804674, 33.445213, 41.491405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196032, 34.035931, 41.867249>,  <30.630060, 34.053627, 41.192501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196032, 34.035931, 41.867249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495918, 33.773659, 41.903038>,  <30.675850, 33.616295, 41.924511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495918, 33.773659, 41.903038>,  <30.196032, 34.035931, 41.867249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495918, 33.773659, 41.903038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096061, 0.241601, 0.965609,
		-0.654750, -0.715338, 0.244118,
		0.749716, -0.655683, 0.089472,
		30.720833, 33.576954, 41.929878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087175, 33.617195, 42.410515>,  <30.196032, 34.035931, 41.867249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087175, 33.617195, 42.410515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477577, 33.530624, 42.400913>,  <30.711819, 33.478683, 42.395153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477577, 33.530624, 42.400913>,  <30.087175, 33.617195, 42.410515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477577, 33.530624, 42.400913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079281, 0.250508, 0.964863,
		-0.202806, -0.943613, 0.261656,
		0.976004, -0.216424, -0.024006,
		30.770378, 33.465698, 42.393711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.290318, 33.290737, 43.162228>,  <30.087175, 33.617195, 42.410515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.290318, 33.290737, 43.162228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636332, 33.428852, 43.016632>,  <30.843941, 33.511723, 42.929276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636332, 33.428852, 43.016632>,  <30.290318, 33.290737, 43.162228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636332, 33.428852, 43.016632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234015, 0.364055, 0.901499,
		0.443792, -0.865007, 0.234117,
		0.865035, 0.345291, -0.363990,
		30.895842, 33.532440, 42.907436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909790, 32.998669, 43.543468>,  <30.290318, 33.290737, 43.162228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909790, 32.998669, 43.543468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074800, 33.321842, 43.375149>,  <31.173807, 33.515747, 43.274158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074800, 33.321842, 43.375149>,  <30.909790, 32.998669, 43.543468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074800, 33.321842, 43.375149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489220, 0.193176, 0.850498,
		0.768432, -0.556714, -0.315567,
		0.412524, 0.807931, -0.420798,
		31.198557, 33.564220, 43.248909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638697, 32.984871, 43.614376>,  <30.909790, 32.998669, 43.543468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638697, 32.984871, 43.614376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609846, 33.380684, 43.564392>,  <31.592537, 33.618172, 43.534401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609846, 33.380684, 43.564392>,  <31.638697, 32.984871, 43.614376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609846, 33.380684, 43.564392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474054, 0.144239, 0.868601,
		0.877537, 0.003410, -0.479497,
		-0.072124, 0.989537, -0.124958,
		31.588209, 33.677544, 43.526905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342636, 33.366405, 43.630775>,  <31.638697, 32.984871, 43.614376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342636, 33.366405, 43.630775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065552, 33.648781, 43.689835>,  <31.899302, 33.818207, 43.725269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065552, 33.648781, 43.689835>,  <32.342636, 33.366405, 43.630775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065552, 33.648781, 43.689835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487986, 0.308031, 0.816693,
		0.531054, 0.637784, -0.557865,
		-0.692713, 0.705938, 0.147649,
		31.857738, 33.860561, 43.734131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684883, 34.034996, 43.841022>,  <32.342636, 33.366405, 43.630775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684883, 34.034996, 43.841022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311962, 34.092735, 43.973671>,  <32.088207, 34.127377, 44.053261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311962, 34.092735, 43.973671>,  <32.684883, 34.034996, 43.841022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311962, 34.092735, 43.973671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361570, 0.393828, 0.845084,
		-0.008618, 0.907780, -0.419359,
		-0.932305, 0.144345, 0.331620,
		32.032272, 34.136040, 44.073158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747208, 34.643379, 44.057838>,  <32.684883, 34.034996, 43.841022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747208, 34.643379, 44.057838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425880, 34.490707, 44.240707>,  <32.233086, 34.399105, 44.350430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.425880, 34.490707, 44.240707>,  <32.747208, 34.643379, 44.057838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425880, 34.490707, 44.240707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302562, 0.399656, 0.865292,
		-0.512976, 0.833425, -0.205568,
		-0.803313, -0.381677, 0.457177,
		32.184887, 34.376205, 44.377861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536419, 35.226166, 44.494488>,  <32.747208, 34.643379, 44.057838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536419, 35.226166, 44.494488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368584, 34.894249, 44.641670>,  <32.267883, 34.695099, 44.729980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368584, 34.894249, 44.641670>,  <32.536419, 35.226166, 44.494488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368584, 34.894249, 44.641670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275238, 0.269975, 0.922690,
		-0.864981, 0.488423, 0.115113,
		-0.419585, -0.829793, 0.367956,
		32.242706, 34.645309, 44.752056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042889, 35.420605, 44.968273>,  <32.536419, 35.226166, 44.494488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042889, 35.420605, 44.968273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115517, 35.036606, 45.053539>,  <32.159092, 34.806206, 45.104698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115517, 35.036606, 45.053539>,  <32.042889, 35.420605, 44.968273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115517, 35.036606, 45.053539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238159, 0.253244, 0.937629,
		-0.954103, -0.119476, 0.274613,
		0.181568, -0.959996, 0.213167,
		32.169987, 34.748608, 45.117489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618416, 35.271229, 45.505264>,  <32.042889, 35.420605, 44.968273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618416, 35.271229, 45.505264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933964, 35.025417, 45.507786>,  <32.123291, 34.877930, 45.509296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933964, 35.025417, 45.507786>,  <31.618416, 35.271229, 45.505264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933964, 35.025417, 45.507786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142907, 0.193402, 0.970656,
		-0.597713, -0.764822, 0.240389,
		0.788871, -0.614527, 0.006301,
		32.170624, 34.841061, 45.509674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608826, 34.950497, 46.139320>,  <31.618416, 35.271229, 45.505264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608826, 34.950497, 46.139320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964615, 34.803352, 46.030869>,  <32.178089, 34.715065, 45.965797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964615, 34.803352, 46.030869>,  <31.608826, 34.950497, 46.139320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964615, 34.803352, 46.030869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243566, -0.120396, 0.962383,
		-0.386669, -0.922053, -0.017490,
		0.889474, -0.367863, -0.271134,
		32.231457, 34.692993, 45.949528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722733, 34.353691, 46.658207>,  <31.608826, 34.950497, 46.139320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722733, 34.353691, 46.658207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070862, 34.488998, 46.515034>,  <32.279739, 34.570183, 46.429131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070862, 34.488998, 46.515034>,  <31.722733, 34.353691, 46.658207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070862, 34.488998, 46.515034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389415, -0.027764, 0.920644,
		0.301486, -0.940640, -0.155890,
		0.870323, 0.338268, -0.357929,
		32.331959, 34.590477, 46.407654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268688, 33.895229, 46.923397>,  <31.722733, 34.353691, 46.658207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268688, 33.895229, 46.923397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452362, 34.238846, 46.832890>,  <32.562565, 34.445015, 46.778587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452362, 34.238846, 46.832890>,  <32.268688, 33.895229, 46.923397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452362, 34.238846, 46.832890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426557, 0.010207, 0.904403,
		0.779229, -0.511804, -0.361744,
		0.459185, 0.859042, -0.226267,
		32.590118, 34.496559, 46.765011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981129, 33.849586, 47.312370>,  <32.268688, 33.895229, 46.923397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981129, 33.849586, 47.312370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945812, 34.230137, 47.194321>,  <32.924622, 34.458466, 47.123493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945812, 34.230137, 47.194321>,  <32.981129, 33.849586, 47.312370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945812, 34.230137, 47.194321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414847, 0.304481, 0.857434,
		0.905597, -0.046725, -0.421557,
		-0.088293, 0.951372, -0.295121,
		32.919323, 34.515549, 47.105785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624695, 34.149796, 47.366169>,  <32.981129, 33.849586, 47.312370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624695, 34.149796, 47.366169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367855, 34.454460, 47.400986>,  <33.213753, 34.637260, 47.421875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367855, 34.454460, 47.400986>,  <33.624695, 34.149796, 47.366169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367855, 34.454460, 47.400986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376980, 0.214844, 0.900959,
		0.667531, 0.611316, -0.425084,
		-0.642097, 0.761666, 0.087039,
		33.175224, 34.682961, 47.427097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965656, 34.732777, 47.577679>,  <33.624695, 34.149796, 47.366169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965656, 34.732777, 47.577679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586845, 34.833046, 47.657986>,  <33.359558, 34.893208, 47.706169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.586845, 34.833046, 47.657986>,  <33.965656, 34.732777, 47.577679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586845, 34.833046, 47.657986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269555, 0.280542, 0.921215,
		0.174601, 0.926530, -0.333251,
		-0.947024, 0.250675, 0.200767,
		33.302738, 34.908249, 47.718216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494316, 35.186455, 47.411419>,  <33.965656, 34.732777, 47.577679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494316, 35.186455, 47.411419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890884, 35.224495, 47.447277>,  <35.128826, 35.247318, 47.468792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890884, 35.224495, 47.447277>,  <34.494316, 35.186455, 47.411419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890884, 35.224495, 47.447277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117789, -0.352963, -0.928193,
		-0.056626, 0.930792, -0.361137,
		0.991423, 0.095098, 0.089650,
		35.188313, 35.253025, 47.474171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598946, 35.363663, 46.778046>,  <34.494316, 35.186455, 47.411419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598946, 35.363663, 46.778046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970715, 35.310375, 46.915703>,  <35.193775, 35.278404, 46.998295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970715, 35.310375, 46.915703>,  <34.598946, 35.363663, 46.778046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970715, 35.310375, 46.915703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316040, -0.194119, -0.928675,
		0.190521, 0.971890, -0.138316,
		0.929419, -0.133219, 0.344140,
		35.249542, 35.270409, 47.018944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018604, 35.815594, 46.320126>,  <34.598946, 35.363663, 46.778046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018604, 35.815594, 46.320126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226860, 35.517651, 46.487038>,  <35.351814, 35.338886, 46.587185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226860, 35.517651, 46.487038>,  <35.018604, 35.815594, 46.320126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226860, 35.517651, 46.487038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469225, -0.158684, -0.868704,
		0.713277, 0.648079, 0.266889,
		0.520638, -0.744858, 0.417280,
		35.383053, 35.294193, 46.612221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693741, 35.899746, 46.192806>,  <35.018604, 35.815594, 46.320126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693741, 35.899746, 46.192806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681389, 35.510822, 46.285458>,  <35.673977, 35.277466, 46.341049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.681389, 35.510822, 46.285458>,  <35.693741, 35.899746, 46.192806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.681389, 35.510822, 46.285458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505181, -0.215146, -0.835766,
		0.862461, 0.091209, 0.497837,
		-0.030878, -0.972313, 0.231632,
		35.672127, 35.219128, 46.354946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407967, 35.584518, 45.895901>,  <35.693741, 35.899746, 46.192806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407967, 35.584518, 45.895901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116589, 35.318424, 45.961433>,  <35.941761, 35.158768, 46.000751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116589, 35.318424, 45.961433>,  <36.407967, 35.584518, 45.895901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116589, 35.318424, 45.961433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358362, -0.573782, -0.736444,
		0.583910, -0.477745, 0.656360,
		-0.728441, -0.665232, 0.163831,
		35.898056, 35.118855, 46.010582>
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
