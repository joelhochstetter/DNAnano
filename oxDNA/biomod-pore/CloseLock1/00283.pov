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
	<24.194990, 35.346199, 35.222260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.234951, 35.031570, 34.978516>,  <24.258926, 34.842793, 34.832268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.234951, 35.031570, 34.978516>,  <24.194990, 35.346199, 35.222260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.234951, 35.031570, 34.978516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988873, 0.010644, 0.148379,
		-0.110225, -0.617403, 0.778887,
		0.099900, -0.786575, -0.609360,
		24.264921, 34.795597, 34.795708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.361633, 34.723774, 35.594666>,  <24.194990, 35.346199, 35.222260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.361633, 34.723774, 35.594666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524021, 34.762844, 35.231205>,  <24.621454, 34.786285, 35.013130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.524021, 34.762844, 35.231205>,  <24.361633, 34.723774, 35.594666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.524021, 34.762844, 35.231205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913556, -0.070123, 0.400621,
		-0.024584, -0.992744, -0.117704,
		0.405968, 0.097681, -0.908652,
		24.645811, 34.792149, 34.958611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.967236, 34.159241, 35.565052>,  <24.361633, 34.723774, 35.594666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.967236, 34.159241, 35.565052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.022280, 34.464203, 35.312130>,  <25.055305, 34.647179, 35.160378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.022280, 34.464203, 35.312130>,  <24.967236, 34.159241, 35.565052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.022280, 34.464203, 35.312130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975577, 0.006019, 0.219574,
		0.171209, -0.647075, -0.742955,
		0.137609, 0.762403, -0.632302,
		25.063562, 34.692924, 35.122440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.484102, 33.998554, 34.951267>,  <24.967236, 34.159241, 35.565052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.484102, 33.998554, 34.951267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456160, 34.369556, 35.098156>,  <25.439394, 34.592159, 35.186291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456160, 34.369556, 35.098156>,  <25.484102, 33.998554, 34.951267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456160, 34.369556, 35.098156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948232, -0.052583, 0.313196,
		0.309801, 0.370090, -0.875818,
		-0.069857, 0.927507, 0.367221,
		25.435202, 34.647808, 35.208321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032890, 33.573479, 35.363861>,  <25.484102, 33.998554, 34.951267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032890, 33.573479, 35.363861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412916, 33.697956, 35.354610>,  <26.640932, 33.772644, 35.349060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.412916, 33.697956, 35.354610>,  <26.032890, 33.573479, 35.363861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412916, 33.697956, 35.354610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201749, -0.556010, 0.806319,
		0.238068, -0.770719, -0.591029,
		0.950064, 0.311198, -0.023124,
		26.697935, 33.791317, 35.347672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476177, 32.946743, 35.461769>,  <26.032890, 33.573479, 35.363861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476177, 32.946743, 35.461769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643635, 33.289600, 35.581795>,  <26.744110, 33.495316, 35.653809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643635, 33.289600, 35.581795>,  <26.476177, 32.946743, 35.461769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643635, 33.289600, 35.581795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332292, -0.452075, 0.827774,
		0.845174, -0.246835, -0.474081,
		0.418644, 0.857147, 0.300061,
		26.769228, 33.546745, 35.671814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142773, 32.806015, 35.498360>,  <26.476177, 32.946743, 35.461769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142773, 32.806015, 35.498360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091469, 33.106831, 35.756969>,  <27.060686, 33.287319, 35.912136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.091469, 33.106831, 35.756969>,  <27.142773, 32.806015, 35.498360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091469, 33.106831, 35.756969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470321, -0.527812, 0.707257,
		0.873125, 0.394786, -0.286001,
		-0.128260, 0.752036, 0.646522,
		27.052992, 33.332443, 35.950928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712305, 32.714626, 35.973961>,  <27.142773, 32.806015, 35.498360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712305, 32.714626, 35.973961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450941, 32.961990, 36.148605>,  <27.294123, 33.110409, 36.253391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450941, 32.961990, 36.148605>,  <27.712305, 32.714626, 35.973961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450941, 32.961990, 36.148605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144630, -0.464152, 0.873868,
		0.743057, 0.634143, 0.213842,
		-0.653412, 0.618406, 0.436607,
		27.254917, 33.147511, 36.279587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994946, 32.742622, 36.700264>,  <27.712305, 32.714626, 35.973961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994946, 32.742622, 36.700264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617052, 32.864014, 36.749863>,  <27.390316, 32.936848, 36.779621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617052, 32.864014, 36.749863>,  <27.994946, 32.742622, 36.700264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617052, 32.864014, 36.749863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038949, -0.479464, 0.876697,
		0.325513, 0.823417, 0.464786,
		-0.944735, 0.303479, 0.124000,
		27.333632, 32.955059, 36.787064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979486, 32.977421, 37.414898>,  <27.994946, 32.742622, 36.700264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979486, 32.977421, 37.414898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591255, 32.918930, 37.338375>,  <27.358316, 32.883835, 37.292461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591255, 32.918930, 37.338375>,  <27.979486, 32.977421, 37.414898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591255, 32.918930, 37.338375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079220, -0.556366, 0.827152,
		-0.227389, 0.817970, 0.528412,
		-0.970576, -0.146224, -0.191311,
		27.300083, 32.875061, 37.280983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527409, 33.179638, 38.004852>,  <27.979486, 32.977421, 37.414898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527409, 33.179638, 38.004852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331985, 32.915497, 37.776730>,  <27.214731, 32.757011, 37.639858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331985, 32.915497, 37.776730>,  <27.527409, 33.179638, 38.004852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331985, 32.915497, 37.776730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283313, -0.498145, 0.819503,
		-0.825255, 0.561948, 0.056285,
		-0.488556, -0.660353, -0.570304,
		27.185419, 32.717392, 37.605637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950092, 33.117760, 38.346672>,  <27.527409, 33.179638, 38.004852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950092, 33.117760, 38.346672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961124, 32.803352, 38.099636>,  <26.967745, 32.614708, 37.951412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961124, 32.803352, 38.099636>,  <26.950092, 33.117760, 38.346672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961124, 32.803352, 38.099636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285443, -0.598296, 0.748708,
		-0.957999, 0.155637, -0.240865,
		0.027581, -0.786015, -0.617593,
		26.969398, 32.567547, 37.914360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310310, 32.756207, 38.395878>,  <26.950092, 33.117760, 38.346672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310310, 32.756207, 38.395878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591848, 32.507076, 38.259239>,  <26.760771, 32.357597, 38.177254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591848, 32.507076, 38.259239>,  <26.310310, 32.756207, 38.395878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591848, 32.507076, 38.259239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199909, -0.635124, 0.746092,
		-0.681645, -0.456843, -0.571537,
		0.703844, -0.622826, -0.341602,
		26.803001, 32.320229, 38.156757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.952772, 32.135479, 38.259285>,  <26.310310, 32.756207, 38.395878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.952772, 32.135479, 38.259285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339375, 32.041645, 38.300922>,  <26.571337, 31.985346, 38.325905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339375, 32.041645, 38.300922>,  <25.952772, 32.135479, 38.259285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339375, 32.041645, 38.300922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238244, -0.669295, 0.703764,
		-0.095420, -0.704993, -0.702766,
		0.966506, -0.234583, 0.104096,
		26.629326, 31.971270, 38.332150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966078, 31.369987, 38.459946>,  <25.952772, 32.135479, 38.259285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966078, 31.369987, 38.459946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319868, 31.509521, 38.583893>,  <26.532143, 31.593243, 38.658260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.319868, 31.509521, 38.583893>,  <25.966078, 31.369987, 38.459946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.319868, 31.509521, 38.583893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013819, -0.644240, 0.764699,
		0.466382, -0.680639, -0.564994,
		0.884475, 0.348835, 0.309868,
		26.585211, 31.614172, 38.676853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.304064, 30.722214, 38.573578>,  <25.966078, 31.369987, 38.459946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.304064, 30.722214, 38.573578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504948, 30.997578, 38.782909>,  <26.625479, 31.162796, 38.908508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504948, 30.997578, 38.782909>,  <26.304064, 30.722214, 38.573578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504948, 30.997578, 38.782909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008265, -0.601336, 0.798953,
		0.864706, -0.405568, -0.296308,
		0.502211, 0.688410, 0.523331,
		26.655611, 31.204102, 38.939907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797010, 30.280842, 39.015285>,  <26.304064, 30.722214, 38.573578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797010, 30.280842, 39.015285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777271, 30.638987, 39.192322>,  <26.765429, 30.853874, 39.298546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777271, 30.638987, 39.192322>,  <26.797010, 30.280842, 39.015285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777271, 30.638987, 39.192322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012127, -0.443639, 0.896123,
		0.998708, 0.038852, 0.032750,
		-0.049345, 0.895363, 0.442595,
		26.762468, 30.907595, 39.325100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257088, 30.267097, 39.655327>,  <26.797010, 30.280842, 39.015285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257088, 30.267097, 39.655327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008707, 30.568657, 39.741169>,  <26.859678, 30.749592, 39.792675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008707, 30.568657, 39.741169>,  <27.257088, 30.267097, 39.655327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008707, 30.568657, 39.741169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037953, -0.244549, 0.968894,
		0.782930, 0.609780, 0.123240,
		-0.620950, 0.753899, 0.214608,
		26.822422, 30.794827, 39.805550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562061, 30.678486, 40.298794>,  <27.257088, 30.267097, 39.655327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562061, 30.678486, 40.298794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180727, 30.798775, 40.288090>,  <26.951927, 30.870949, 40.281670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180727, 30.798775, 40.288090>,  <27.562061, 30.678486, 40.298794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180727, 30.798775, 40.288090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045933, -0.056880, 0.997324,
		0.298396, 0.952014, 0.068039,
		-0.953336, 0.300722, -0.026757,
		26.894726, 30.888992, 40.280064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453690, 31.233366, 40.804417>,  <27.562061, 30.678486, 40.298794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453690, 31.233366, 40.804417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098061, 31.059772, 40.746170>,  <26.884684, 30.955616, 40.711224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098061, 31.059772, 40.746170>,  <27.453690, 31.233366, 40.804417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098061, 31.059772, 40.746170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157801, -0.008040, 0.987438,
		-0.429704, 0.900884, -0.061335,
		-0.889074, -0.433985, -0.145616,
		26.831339, 30.929577, 40.702484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073055, 31.489885, 41.352386>,  <27.453690, 31.233366, 40.804417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073055, 31.489885, 41.352386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853106, 31.169182, 41.258732>,  <26.721136, 30.976759, 41.202538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853106, 31.169182, 41.258732>,  <27.073055, 31.489885, 41.352386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853106, 31.169182, 41.258732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182468, -0.158239, 0.970395,
		-0.815073, 0.576316, -0.059284,
		-0.549873, -0.801761, -0.234135,
		26.688143, 30.928654, 41.188492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.644457, 31.455523, 41.854790>,  <27.073055, 31.489885, 41.352386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.644457, 31.455523, 41.854790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598452, 31.084616, 41.712269>,  <26.570848, 30.862072, 41.626755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.598452, 31.084616, 41.712269>,  <26.644457, 31.455523, 41.854790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598452, 31.084616, 41.712269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250850, -0.319947, 0.913624,
		-0.961169, 0.194457, -0.195806,
		-0.115013, -0.927265, -0.356302,
		26.563948, 30.806437, 41.605377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983084, 31.190704, 42.006901>,  <26.644457, 31.455523, 41.854790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983084, 31.190704, 42.006901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187462, 30.853840, 41.937962>,  <26.310089, 30.651722, 41.896599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187462, 30.853840, 41.937962>,  <25.983084, 31.190704, 42.006901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187462, 30.853840, 41.937962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470386, -0.441728, 0.763946,
		-0.719495, -0.309264, -0.621839,
		0.510944, -0.842160, -0.172347,
		26.340746, 30.601192, 41.886257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.485285, 30.697611, 42.043301>,  <25.983084, 31.190704, 42.006901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.485285, 30.697611, 42.043301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847006, 30.544085, 42.118050>,  <26.064039, 30.451969, 42.162899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847006, 30.544085, 42.118050>,  <25.485285, 30.697611, 42.043301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847006, 30.544085, 42.118050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260237, -0.148644, 0.954035,
		-0.338400, -0.911366, -0.234303,
		0.904303, -0.383819, 0.186870,
		26.118298, 30.428940, 42.174110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530792, 29.991062, 42.390423>,  <25.485285, 30.697611, 42.043301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530792, 29.991062, 42.390423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816713, 30.252838, 42.489025>,  <25.988266, 30.409904, 42.548187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816713, 30.252838, 42.489025>,  <25.530792, 29.991062, 42.390423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816713, 30.252838, 42.489025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342256, 0.019980, 0.939395,
		0.609854, -0.755849, 0.238268,
		0.714801, 0.654442, 0.246509,
		26.031153, 30.449171, 42.562977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917542, 29.735588, 42.898960>,  <25.530792, 29.991062, 42.390423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917542, 29.735588, 42.898960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936090, 30.134251, 42.925880>,  <25.947220, 30.373447, 42.942032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.936090, 30.134251, 42.925880>,  <25.917542, 29.735588, 42.898960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936090, 30.134251, 42.925880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273631, -0.052118, 0.960422,
		0.960716, -0.062953, 0.270299,
		0.046374, 0.996655, 0.067296,
		25.950003, 30.433247, 42.946068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092894, 29.752819, 43.522198>,  <25.917542, 29.735588, 42.898960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092894, 29.752819, 43.522198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996185, 30.125172, 43.412647>,  <25.938160, 30.348583, 43.346916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996185, 30.125172, 43.412647>,  <26.092894, 29.752819, 43.522198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996185, 30.125172, 43.412647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068171, 0.265260, 0.961764,
		0.967935, 0.251199, -0.000674,
		-0.241773, 0.930879, -0.273879,
		25.923653, 30.404436, 43.330482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626577, 30.365105, 43.590958>,  <26.092894, 29.752819, 43.522198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626577, 30.365105, 43.590958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234140, 30.432404, 43.629219>,  <25.998678, 30.472782, 43.652176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234140, 30.432404, 43.629219>,  <26.626577, 30.365105, 43.590958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234140, 30.432404, 43.629219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111796, 0.089207, 0.989719,
		0.157985, 0.981700, -0.106329,
		-0.981092, 0.168248, 0.095657,
		25.939812, 30.482878, 43.657917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532461, 31.074507, 43.801559>,  <26.626577, 30.365105, 43.590958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532461, 31.074507, 43.801559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257967, 30.814600, 43.932331>,  <26.093269, 30.658655, 44.010796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257967, 30.814600, 43.932331>,  <26.532461, 31.074507, 43.801559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257967, 30.814600, 43.932331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464980, -0.046241, 0.884113,
		-0.559349, 0.758726, 0.333861,
		-0.686237, -0.649767, 0.326928,
		26.052095, 30.619671, 44.030411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244062, 31.259670, 44.396175>,  <26.532461, 31.074507, 43.801559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244062, 31.259670, 44.396175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249079, 30.859741, 44.390514>,  <26.252089, 30.619783, 44.387119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249079, 30.859741, 44.390514>,  <26.244062, 31.259670, 44.396175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249079, 30.859741, 44.390514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547730, -0.004972, 0.836640,
		-0.836561, -0.018241, 0.547570,
		0.012539, -0.999821, -0.014150,
		26.252840, 30.559795, 44.386269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093054, 30.994923, 45.112030>,  <26.244062, 31.259670, 44.396175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093054, 30.994923, 45.112030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311783, 30.739153, 44.895836>,  <26.443020, 30.585691, 44.766121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.311783, 30.739153, 44.895836>,  <26.093054, 30.994923, 45.112030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311783, 30.739153, 44.895836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741410, 0.069907, 0.667401,
		-0.388968, -0.765671, 0.512301,
		0.546823, -0.639423, -0.540484,
		26.475830, 30.547327, 44.733692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554670, 31.670376, 45.138721>,  <26.093054, 30.994923, 45.112030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554670, 31.670376, 45.138721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484499, 31.999765, 45.354542>,  <26.442396, 32.197399, 45.484032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484499, 31.999765, 45.354542>,  <26.554670, 31.670376, 45.138721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484499, 31.999765, 45.354542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212856, 0.566811, -0.795875,
		-0.961206, -0.024774, -0.274718,
		-0.175430, 0.823475, 0.539549,
		26.431870, 32.246807, 45.516407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082809, 32.099213, 44.735397>,  <26.554670, 31.670376, 45.138721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082809, 32.099213, 44.735397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280279, 32.366421, 44.958122>,  <26.398762, 32.526745, 45.091755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280279, 32.366421, 44.958122>,  <26.082809, 32.099213, 44.735397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280279, 32.366421, 44.958122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212083, 0.528457, -0.822042,
		-0.843389, 0.523912, 0.119211,
		0.493676, 0.668019, 0.556808,
		26.428381, 32.566826, 45.125164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882198, 32.818768, 44.679169>,  <26.082809, 32.099213, 44.735397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882198, 32.818768, 44.679169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267998, 32.864147, 44.774563>,  <26.499477, 32.891376, 44.831799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.267998, 32.864147, 44.774563>,  <25.882198, 32.818768, 44.679169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267998, 32.864147, 44.774563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116093, 0.628952, -0.768727,
		-0.237207, 0.769121, 0.593452,
		0.964497, 0.113452, 0.238481,
		26.557346, 32.898182, 44.846107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.963856, 33.539898, 44.546127>,  <25.882198, 32.818768, 44.679169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.963856, 33.539898, 44.546127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291592, 33.310684, 44.539116>,  <26.488234, 33.173157, 44.534908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291592, 33.310684, 44.539116>,  <25.963856, 33.539898, 44.546127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291592, 33.310684, 44.539116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349634, 0.523682, -0.776861,
		0.454353, 0.630384, 0.629428,
		0.819341, -0.573039, -0.017533,
		26.537394, 33.138771, 44.533855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692642, 33.812603, 44.673843>,  <25.963856, 33.539898, 44.546127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692642, 33.812603, 44.673843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697710, 33.490971, 44.436092>,  <26.700750, 33.297989, 44.293442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.697710, 33.490971, 44.436092>,  <26.692642, 33.812603, 44.673843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697710, 33.490971, 44.436092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580973, 0.489720, -0.650112,
		0.813824, -0.337083, 0.473355,
		0.012669, -0.804083, -0.594382,
		26.701511, 33.249744, 44.257778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374924, 33.641270, 44.535194>,  <26.692642, 33.812603, 44.673843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374924, 33.641270, 44.535194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125530, 33.525158, 44.244816>,  <26.975893, 33.455490, 44.070587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.125530, 33.525158, 44.244816>,  <27.374924, 33.641270, 44.535194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.125530, 33.525158, 44.244816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604612, 0.409675, -0.683089,
		0.495692, -0.864813, -0.079918,
		-0.623485, -0.290283, -0.725949,
		26.938484, 33.438072, 44.027031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846903, 33.390415, 44.063629>,  <27.374924, 33.641270, 44.535194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.846903, 33.390415, 44.063629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503744, 33.460022, 43.870247>,  <27.297848, 33.501785, 43.754219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.503744, 33.460022, 43.870247>,  <27.846903, 33.390415, 44.063629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503744, 33.460022, 43.870247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508072, 0.427645, -0.747652,
		0.076643, -0.887039, -0.455289,
		-0.857898, 0.174018, -0.483455,
		27.246374, 33.512226, 43.725212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080853, 33.451717, 43.447884>,  <27.846903, 33.390415, 44.063629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080853, 33.451717, 43.447884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722694, 33.629642, 43.439812>,  <27.507799, 33.736397, 43.434967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.722694, 33.629642, 43.439812>,  <28.080853, 33.451717, 43.447884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.722694, 33.629642, 43.439812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278153, 0.523379, -0.805422,
		-0.347698, -0.726786, -0.592358,
		-0.895397, 0.444810, -0.020180,
		27.454075, 33.763084, 43.433758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854294, 33.415321, 42.724255>,  <28.080853, 33.451717, 43.447884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854294, 33.415321, 42.724255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618969, 33.697643, 42.882107>,  <27.477774, 33.867035, 42.976818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618969, 33.697643, 42.882107>,  <27.854294, 33.415321, 42.724255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618969, 33.697643, 42.882107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051526, 0.519745, -0.852766,
		-0.806991, -0.481358, -0.342139,
		-0.588311, 0.705804, 0.394627,
		27.442476, 33.909386, 43.000496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412445, 33.532742, 42.160019>,  <27.854294, 33.415321, 42.724255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412445, 33.532742, 42.160019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366806, 33.847607, 42.402458>,  <27.339422, 34.036526, 42.547924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.366806, 33.847607, 42.402458>,  <27.412445, 33.532742, 42.160019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366806, 33.847607, 42.402458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081400, 0.600627, -0.795375,
		-0.990129, -0.140086, -0.004454,
		-0.114096, 0.787161, 0.606102,
		27.332577, 34.083755, 42.584290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.838280, 33.937668, 41.863163>,  <27.412445, 33.532742, 42.160019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.838280, 33.937668, 41.863163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064276, 34.182144, 42.084873>,  <27.199873, 34.328831, 42.217899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064276, 34.182144, 42.084873>,  <26.838280, 33.937668, 41.863163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064276, 34.182144, 42.084873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192330, 0.555712, -0.808822,
		-0.802368, 0.563582, 0.196421,
		0.564991, 0.611195, 0.554280,
		27.233772, 34.365501, 42.251156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555395, 34.487606, 41.581482>,  <26.838280, 33.937668, 41.863163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555395, 34.487606, 41.581482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894730, 34.602222, 41.759567>,  <27.098331, 34.670994, 41.866421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.894730, 34.602222, 41.759567>,  <26.555395, 34.487606, 41.581482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894730, 34.602222, 41.759567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180548, 0.633928, -0.752022,
		-0.497721, 0.718351, 0.486050,
		0.848337, 0.286542, 0.445217,
		27.149231, 34.688187, 41.893131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487535, 35.155987, 41.572727>,  <26.555395, 34.487606, 41.581482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487535, 35.155987, 41.572727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879946, 35.093990, 41.619316>,  <27.115393, 35.056793, 41.647270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.879946, 35.093990, 41.619316>,  <26.487535, 35.155987, 41.572727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.879946, 35.093990, 41.619316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181759, 0.526154, -0.830738,
		0.067475, 0.836145, 0.544342,
		0.981025, -0.154993, 0.116475,
		27.174253, 35.047493, 41.654259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747137, 35.714298, 41.309368>,  <26.487535, 35.155987, 41.572727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747137, 35.714298, 41.309368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059763, 35.465614, 41.288815>,  <27.247337, 35.316406, 41.276482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059763, 35.465614, 41.288815>,  <26.747137, 35.714298, 41.309368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059763, 35.465614, 41.288815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248636, 0.385985, -0.888367,
		0.572136, 0.681540, 0.456250,
		0.781563, -0.621706, -0.051381,
		27.294231, 35.279102, 41.273399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220341, 36.170792, 41.103973>,  <26.747137, 35.714298, 41.309368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220341, 36.170792, 41.103973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342825, 35.800694, 41.014385>,  <27.416315, 35.578636, 40.960632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342825, 35.800694, 41.014385>,  <27.220341, 36.170792, 41.103973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342825, 35.800694, 41.014385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335148, 0.324986, -0.884341,
		0.891017, 0.195731, 0.409607,
		0.306209, -0.925242, -0.223970,
		27.434689, 35.523121, 40.947193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897829, 36.219196, 40.653416>,  <27.220341, 36.170792, 41.103973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897829, 36.219196, 40.653416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773199, 35.849014, 40.567211>,  <27.698421, 35.626904, 40.515488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773199, 35.849014, 40.567211>,  <27.897829, 36.219196, 40.653416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773199, 35.849014, 40.567211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397419, 0.079100, -0.914221,
		0.863122, -0.370497, 0.343150,
		-0.311573, -0.925459, -0.215516,
		27.679728, 35.571377, 40.502556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381870, 36.077614, 40.147758>,  <27.897829, 36.219196, 40.653416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381870, 36.077614, 40.147758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107044, 35.788391, 40.119095>,  <27.942148, 35.614857, 40.101894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.107044, 35.788391, 40.119095>,  <28.381870, 36.077614, 40.147758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107044, 35.788391, 40.119095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134606, -0.029741, -0.990453,
		0.714019, -0.690151, 0.117761,
		-0.687064, -0.723054, -0.071663,
		27.900925, 35.571476, 40.097595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.677422, 35.555084, 39.804874>,  <28.381870, 36.077614, 40.147758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.677422, 35.555084, 39.804874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283726, 35.510170, 39.750229>,  <28.047508, 35.483223, 39.717442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.283726, 35.510170, 39.750229>,  <28.677422, 35.555084, 39.804874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283726, 35.510170, 39.750229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141173, -0.033690, -0.989412,
		0.106495, -0.993105, 0.049011,
		-0.984240, -0.112286, -0.136612,
		27.988453, 35.476486, 39.709244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653282, 35.001137, 39.404186>,  <28.677422, 35.555084, 39.804874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653282, 35.001137, 39.404186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296791, 35.174381, 39.350330>,  <28.082897, 35.278328, 39.318016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296791, 35.174381, 39.350330>,  <28.653282, 35.001137, 39.404186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296791, 35.174381, 39.350330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087778, -0.126539, -0.988070,
		-0.444980, -0.892414, 0.074758,
		-0.891228, 0.433110, -0.134642,
		28.029423, 35.304314, 39.309937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.325207, 34.577076, 38.999165>,  <28.653282, 35.001137, 39.404186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.325207, 34.577076, 38.999165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145592, 34.930233, 38.944214>,  <28.037823, 35.142128, 38.911243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145592, 34.930233, 38.944214>,  <28.325207, 34.577076, 38.999165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145592, 34.930233, 38.944214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117333, -0.094156, -0.988619,
		-0.885776, -0.460045, -0.061312,
		-0.449037, 0.882889, -0.137380,
		28.010881, 35.195099, 38.903000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876970, 34.462559, 38.339508>,  <28.325207, 34.577076, 38.999165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876970, 34.462559, 38.339508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908386, 34.857784, 38.392521>,  <27.927237, 35.094921, 38.424328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.908386, 34.857784, 38.392521>,  <27.876970, 34.462559, 38.339508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908386, 34.857784, 38.392521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061111, 0.137460, -0.988620,
		-0.995036, 0.069548, 0.071178,
		0.078540, 0.988063, 0.132528,
		27.931948, 35.154202, 38.432278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291451, 34.886265, 37.943649>,  <27.876970, 34.462559, 38.339508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291451, 34.886265, 37.943649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579670, 35.157833, 38.000038>,  <27.752602, 35.320774, 38.033871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579670, 35.157833, 38.000038>,  <27.291451, 34.886265, 37.943649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579670, 35.157833, 38.000038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062306, 0.265880, -0.961991,
		-0.690599, 0.684378, 0.233881,
		0.720549, 0.678922, 0.140976,
		27.795835, 35.361511, 38.042332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.997711, 35.425571, 37.527023>,  <27.291451, 34.886265, 37.943649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.997711, 35.425571, 37.527023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389482, 35.487614, 37.578663>,  <27.624544, 35.524837, 37.609646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389482, 35.487614, 37.578663>,  <26.997711, 35.425571, 37.527023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389482, 35.487614, 37.578663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031170, 0.515803, -0.856140,
		-0.199380, 0.842550, 0.500356,
		0.979426, 0.155101, 0.129103,
		27.683310, 35.534145, 37.617393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073301, 36.125244, 37.281105>,  <26.997711, 35.425571, 37.527023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073301, 36.125244, 37.281105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443439, 35.975845, 37.307140>,  <27.665522, 35.886208, 37.322762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443439, 35.975845, 37.307140>,  <27.073301, 36.125244, 37.281105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443439, 35.975845, 37.307140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291046, 0.589788, -0.753288,
		0.242962, 0.715995, 0.654462,
		0.925344, -0.373498, 0.065091,
		27.721043, 35.863796, 37.326668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383827, 36.652939, 37.000160>,  <27.073301, 36.125244, 37.281105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383827, 36.652939, 37.000160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657539, 36.361664, 36.984676>,  <27.821766, 36.186897, 36.975388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657539, 36.361664, 36.984676>,  <27.383827, 36.652939, 37.000160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657539, 36.361664, 36.984676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363279, 0.386437, -0.847759,
		0.632290, 0.566041, 0.528968,
		0.684279, -0.728192, -0.038709,
		27.862823, 36.143208, 36.973064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071768, 36.942295, 36.880188>,  <27.383827, 36.652939, 37.000160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071768, 36.942295, 36.880188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091051, 36.565784, 36.746521>,  <28.102621, 36.339878, 36.666321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091051, 36.565784, 36.746521>,  <28.071768, 36.942295, 36.880188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091051, 36.565784, 36.746521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330517, 0.330742, -0.883950,
		0.942568, -0.067837, 0.327053,
		0.048206, -0.941280, -0.334168,
		28.105513, 36.283401, 36.646271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726572, 36.859062, 36.596352>,  <28.071768, 36.942295, 36.880188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726572, 36.859062, 36.596352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511190, 36.572475, 36.418930>,  <28.381962, 36.400524, 36.312477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511190, 36.572475, 36.418930>,  <28.726572, 36.859062, 36.596352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511190, 36.572475, 36.418930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484075, 0.167855, -0.858776,
		0.689737, -0.677127, 0.256441,
		-0.538455, -0.716466, -0.443556,
		28.349653, 36.357536, 36.285862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234314, 36.385075, 36.151413>,  <28.726572, 36.859062, 36.596352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234314, 36.385075, 36.151413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.850842, 36.387051, 36.037636>,  <28.620758, 36.388237, 35.969368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.850842, 36.387051, 36.037636>,  <29.234314, 36.385075, 36.151413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850842, 36.387051, 36.037636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274702, 0.276016, -0.921062,
		0.073961, -0.961140, -0.265967,
		-0.958681, 0.004939, -0.284442,
		28.563238, 36.388531, 35.952305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733513, 36.390583, 36.593853>,  <29.234314, 36.385075, 36.151413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733513, 36.390583, 36.593853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923780, 36.685188, 36.401482>,  <30.037941, 36.861950, 36.286060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923780, 36.685188, 36.401482>,  <29.733513, 36.390583, 36.593853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923780, 36.685188, 36.401482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761367, -0.070919, 0.644431,
		0.440522, -0.672699, -0.594488,
		0.475669, 0.736510, -0.480929,
		30.066481, 36.906139, 36.257202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392422, 36.108086, 36.403469>,  <29.733513, 36.390583, 36.593853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392422, 36.108086, 36.403469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389261, 36.498180, 36.491879>,  <30.387365, 36.732239, 36.544926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389261, 36.498180, 36.491879>,  <30.392422, 36.108086, 36.403469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389261, 36.498180, 36.491879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604681, -0.171385, 0.777810,
		0.796428, 0.139795, -0.588353,
		-0.007899, 0.975236, 0.221027,
		30.386892, 36.790752, 36.558186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101755, 36.384109, 36.435158>,  <30.392422, 36.108086, 36.403469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101755, 36.384109, 36.435158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818336, 36.547565, 36.665279>,  <30.648285, 36.645638, 36.803352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818336, 36.547565, 36.665279>,  <31.101755, 36.384109, 36.435158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818336, 36.547565, 36.665279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525555, -0.238467, 0.816655,
		0.470910, 0.880992, -0.045798,
		-0.708545, 0.408640, 0.575306,
		30.605774, 36.670158, 36.837872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414307, 36.638496, 37.032806>,  <31.101755, 36.384109, 36.435158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414307, 36.638496, 37.032806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032076, 36.675697, 37.144680>,  <30.802738, 36.698017, 37.211803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032076, 36.675697, 37.144680>,  <31.414307, 36.638496, 37.032806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032076, 36.675697, 37.144680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281104, 0.002259, 0.959675,
		0.088617, 0.995664, -0.028301,
		-0.955577, 0.092999, 0.279685,
		30.745403, 36.703598, 37.228584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236704, 37.218380, 37.570896>,  <31.414307, 36.638496, 37.032806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236704, 37.218380, 37.570896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035633, 36.872932, 37.586235>,  <30.914989, 36.665665, 37.595436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035633, 36.872932, 37.586235>,  <31.236704, 37.218380, 37.570896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035633, 36.872932, 37.586235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324232, -0.147232, 0.934450,
		-0.801367, 0.482160, 0.354024,
		-0.502678, -0.863623, 0.038344,
		30.884830, 36.613846, 37.597740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781725, 37.194874, 38.205074>,  <31.236704, 37.218380, 37.570896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781725, 37.194874, 38.205074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880478, 36.820610, 38.104210>,  <30.939730, 36.596050, 38.043690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880478, 36.820610, 38.104210>,  <30.781725, 37.194874, 38.205074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880478, 36.820610, 38.104210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355397, -0.154662, 0.921831,
		-0.901522, -0.317203, 0.294347,
		0.246883, -0.935661, -0.252164,
		30.954542, 36.539913, 38.028561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436016, 36.720863, 38.639957>,  <30.781725, 37.194874, 38.205074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436016, 36.720863, 38.639957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780399, 36.577103, 38.495968>,  <30.987030, 36.490849, 38.409573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.780399, 36.577103, 38.495968>,  <30.436016, 36.720863, 38.639957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780399, 36.577103, 38.495968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377583, -0.022655, 0.925698,
		-0.340850, -0.932909, 0.116197,
		0.860960, -0.359399, -0.359973,
		31.038687, 36.469284, 38.387978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598181, 36.241425, 39.142452>,  <30.436016, 36.720863, 38.639957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598181, 36.241425, 39.142452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944990, 36.276276, 38.946217>,  <31.153076, 36.297184, 38.828476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944990, 36.276276, 38.946217>,  <30.598181, 36.241425, 39.142452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944990, 36.276276, 38.946217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498259, -0.158078, 0.852496,
		-0.003279, -0.983575, -0.180468,
		0.867022, 0.087124, -0.490594,
		31.205097, 36.302414, 38.799038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065964, 35.649132, 39.295860>,  <30.598181, 36.241425, 39.142452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065964, 35.649132, 39.295860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333277, 35.911182, 39.154884>,  <31.493664, 36.068413, 39.070297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333277, 35.911182, 39.154884>,  <31.065964, 35.649132, 39.295860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333277, 35.911182, 39.154884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497640, -0.041540, 0.866388,
		0.552950, -0.754380, -0.353775,
		0.668282, 0.655122, -0.352440,
		31.533762, 36.107719, 39.049152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785099, 35.432846, 39.464897>,  <31.065964, 35.649132, 39.295860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785099, 35.432846, 39.464897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827688, 35.828236, 39.421848>,  <31.853243, 36.065468, 39.396019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827688, 35.828236, 39.421848>,  <31.785099, 35.432846, 39.464897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827688, 35.828236, 39.421848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508578, 0.038869, 0.860138,
		0.854407, -0.146319, -0.498578,
		0.106475, 0.988473, -0.107625,
		31.859631, 36.124779, 39.389561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474007, 35.610092, 39.593292>,  <31.785099, 35.432846, 39.464897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474007, 35.610092, 39.593292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274380, 35.951008, 39.655960>,  <32.154606, 36.155556, 39.693562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274380, 35.951008, 39.655960>,  <32.474007, 35.610092, 39.593292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274380, 35.951008, 39.655960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501997, 0.136972, 0.853954,
		0.706353, 0.504825, -0.496203,
		-0.499063, 0.852285, 0.156670,
		32.124660, 36.206692, 39.702961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047276, 36.107494, 39.705986>,  <32.474007, 35.610092, 39.593292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047276, 36.107494, 39.705986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710537, 36.265606, 39.852985>,  <32.508495, 36.360474, 39.941185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710537, 36.265606, 39.852985>,  <33.047276, 36.107494, 39.705986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710537, 36.265606, 39.852985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380405, -0.048464, 0.923549,
		0.382872, 0.917281, -0.109568,
		-0.841844, 0.395281, 0.367494,
		32.457985, 36.384190, 39.963234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247051, 36.547752, 40.220100>,  <33.047276, 36.107494, 39.705986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247051, 36.547752, 40.220100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861099, 36.525002, 40.322685>,  <32.629528, 36.511349, 40.384235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861099, 36.525002, 40.322685>,  <33.247051, 36.547752, 40.220100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861099, 36.525002, 40.322685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259392, -0.052023, 0.964370,
		-0.041512, 0.997025, 0.064950,
		-0.964880, -0.056881, 0.256460,
		32.571636, 36.507938, 40.399624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150196, 36.928036, 40.823765>,  <33.247051, 36.547752, 40.220100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150196, 36.928036, 40.823765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831051, 36.687023, 40.816093>,  <32.639565, 36.542416, 40.811489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831051, 36.687023, 40.816093>,  <33.150196, 36.928036, 40.823765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831051, 36.687023, 40.816093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204543, -0.300507, 0.931589,
		-0.567077, 0.739357, 0.363007,
		-0.797863, -0.602533, -0.019180,
		32.591690, 36.506264, 40.810341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816387, 37.237396, 41.327705>,  <33.150196, 36.928036, 40.823765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816387, 37.237396, 41.327705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701279, 36.859634, 41.264095>,  <32.632214, 36.632977, 41.225929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701279, 36.859634, 41.264095>,  <32.816387, 37.237396, 41.327705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701279, 36.859634, 41.264095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071865, -0.186876, 0.979751,
		-0.954999, 0.270516, 0.121647,
		-0.287771, -0.944404, -0.159026,
		32.614948, 36.576313, 41.216389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415600, 36.980595, 41.862362>,  <32.816387, 37.237396, 41.327705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415600, 36.980595, 41.862362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511169, 36.620094, 41.717770>,  <32.568512, 36.403793, 41.631012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511169, 36.620094, 41.717770>,  <32.415600, 36.980595, 41.862362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511169, 36.620094, 41.717770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016028, -0.375876, 0.926532,
		-0.970907, -0.215573, -0.104249,
		0.238920, -0.901247, -0.361486,
		32.582844, 36.349720, 41.609325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891729, 36.547203, 42.065617>,  <32.415600, 36.980595, 41.862362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891729, 36.547203, 42.065617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207447, 36.315002, 41.985584>,  <32.396877, 36.175682, 41.937565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207447, 36.315002, 41.985584>,  <31.891729, 36.547203, 42.065617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207447, 36.315002, 41.985584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067971, -0.406451, 0.911141,
		-0.610245, -0.705556, -0.360266,
		0.789292, -0.580507, -0.200078,
		32.444233, 36.140850, 41.925560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719929, 35.831547, 42.167938>,  <31.891729, 36.547203, 42.065617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719929, 35.831547, 42.167938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118130, 35.820694, 42.204239>,  <32.357052, 35.814182, 42.226021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118130, 35.820694, 42.204239>,  <31.719929, 35.831547, 42.167938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118130, 35.820694, 42.204239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089388, -0.586005, 0.805362,
		0.031330, -0.809853, -0.585796,
		0.995504, -0.027131, 0.090751,
		32.416782, 35.812553, 42.231464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792452, 35.131035, 42.297722>,  <31.719929, 35.831547, 42.167938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792452, 35.131035, 42.297722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130192, 35.300705, 42.428654>,  <32.332836, 35.402508, 42.507214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130192, 35.300705, 42.428654>,  <31.792452, 35.131035, 42.297722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130192, 35.300705, 42.428654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013670, -0.627787, 0.778265,
		0.535619, -0.652653, -0.535870,
		0.844349, 0.424179, 0.327333,
		32.383495, 35.427959, 42.526852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195194, 34.568047, 42.448418>,  <31.792452, 35.131035, 42.297722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195194, 34.568047, 42.448418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336315, 34.886593, 42.644920>,  <32.420986, 35.077721, 42.762821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336315, 34.886593, 42.644920>,  <32.195194, 34.568047, 42.448418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336315, 34.886593, 42.644920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032776, -0.514174, 0.857059,
		0.935125, -0.318470, -0.155298,
		0.352798, 0.796368, 0.491256,
		32.442154, 35.125504, 42.792297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695423, 34.285782, 42.935989>,  <32.195194, 34.568047, 42.448418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695423, 34.285782, 42.935989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611847, 34.647564, 43.084751>,  <32.561703, 34.864632, 43.174007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.611847, 34.647564, 43.084751>,  <32.695423, 34.285782, 42.935989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611847, 34.647564, 43.084751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033109, -0.373533, 0.927026,
		0.977368, 0.206007, 0.048101,
		-0.208941, 0.904452, 0.371900,
		32.549164, 34.918900, 43.196320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071140, 34.419865, 43.625851>,  <32.695423, 34.285782, 42.935989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071140, 34.419865, 43.625851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791977, 34.705368, 43.649426>,  <32.624477, 34.876671, 43.663570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791977, 34.705368, 43.649426>,  <33.071140, 34.419865, 43.625851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791977, 34.705368, 43.649426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036869, -0.117989, 0.992330,
		0.715234, 0.690386, 0.108661,
		-0.697911, 0.713755, 0.058936,
		32.582603, 34.919495, 43.667107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335144, 34.806797, 44.120750>,  <33.071140, 34.419865, 43.625851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335144, 34.806797, 44.120750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944012, 34.884453, 44.089375>,  <32.709332, 34.931046, 44.070549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944012, 34.884453, 44.089375>,  <33.335144, 34.806797, 44.120750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944012, 34.884453, 44.089375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118074, -0.201887, 0.972266,
		0.172916, 0.959976, 0.220334,
		-0.977834, 0.194136, -0.078439,
		32.650661, 34.942692, 44.065842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097519, 35.204708, 44.750736>,  <33.335144, 34.806797, 44.120750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097519, 35.204708, 44.750736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746384, 35.059700, 44.625526>,  <32.535702, 34.972694, 44.550400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746384, 35.059700, 44.625526>,  <33.097519, 35.204708, 44.750736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746384, 35.059700, 44.625526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240407, -0.231753, 0.942600,
		-0.414251, 0.902703, 0.116290,
		-0.877839, -0.362516, -0.313020,
		32.483032, 34.950947, 44.531620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515594, 35.583145, 45.057663>,  <33.097519, 35.204708, 44.750736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515594, 35.583145, 45.057663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389919, 35.218060, 44.953175>,  <32.314514, 34.999008, 44.890480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389919, 35.218060, 44.953175>,  <32.515594, 35.583145, 45.057663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389919, 35.218060, 44.953175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304710, -0.163646, 0.938281,
		-0.899130, 0.374397, -0.226697,
		-0.314192, -0.912714, -0.261221,
		32.295662, 34.944244, 44.874809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926083, 35.421825, 45.539814>,  <32.515594, 35.583145, 45.057663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926083, 35.421825, 45.539814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949818, 35.057358, 45.376717>,  <31.964060, 34.838676, 45.278858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949818, 35.057358, 45.376717>,  <31.926083, 35.421825, 45.539814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949818, 35.057358, 45.376717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266921, -0.408076, 0.873056,
		-0.961890, 0.057030, -0.267424,
		0.059339, -0.911165, -0.407746,
		31.967619, 34.784008, 45.254395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212265, 35.002739, 45.665157>,  <31.926083, 35.421825, 45.539814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212265, 35.002739, 45.665157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510067, 34.742661, 45.604549>,  <31.688749, 34.586613, 45.568184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.510067, 34.742661, 45.604549>,  <31.212265, 35.002739, 45.665157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510067, 34.742661, 45.604549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207181, -0.440762, 0.873387,
		-0.634656, -0.618850, -0.462857,
		0.744505, -0.650195, -0.151518,
		31.733419, 34.547604, 45.559093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947357, 34.379093, 45.923317>,  <31.212265, 35.002739, 45.665157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947357, 34.379093, 45.923317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342028, 34.314686, 45.914009>,  <31.578831, 34.276043, 45.908424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342028, 34.314686, 45.914009>,  <30.947357, 34.379093, 45.923317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342028, 34.314686, 45.914009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075230, -0.578396, 0.812280,
		-0.144248, -0.799708, -0.582804,
		0.986678, -0.161014, -0.023271,
		31.638031, 34.266380, 45.907028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955862, 33.670643, 46.031052>,  <30.947357, 34.379093, 45.923317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955862, 33.670643, 46.031052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302359, 33.847511, 46.124092>,  <31.510258, 33.953632, 46.179916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.302359, 33.847511, 46.124092>,  <30.955862, 33.670643, 46.031052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302359, 33.847511, 46.124092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073425, -0.573172, 0.816139,
		0.494198, -0.689896, -0.528973,
		0.866243, 0.442173, 0.232605,
		31.562231, 33.980164, 46.193874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402555, 33.141312, 46.211426>,  <30.955862, 33.670643, 46.031052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402555, 33.141312, 46.211426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585171, 33.468811, 46.350693>,  <31.694740, 33.665310, 46.434254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585171, 33.468811, 46.350693>,  <31.402555, 33.141312, 46.211426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585171, 33.468811, 46.350693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153046, -0.457765, 0.875802,
		0.876442, -0.346550, -0.334293,
		0.456537, 0.818752, 0.348166,
		31.722132, 33.714436, 46.455143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.970579, 32.892979, 46.508469>,  <31.402555, 33.141312, 46.211426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.970579, 32.892979, 46.508469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912813, 33.248989, 46.681446>,  <31.878155, 33.462593, 46.785233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912813, 33.248989, 46.681446>,  <31.970579, 32.892979, 46.508469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912813, 33.248989, 46.681446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320243, -0.371464, 0.871469,
		0.936263, 0.264338, -0.231378,
		-0.144414, 0.890022, 0.432441,
		31.869490, 33.515995, 46.811180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492558, 32.936703, 46.871338>,  <31.970579, 32.892979, 46.508469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492558, 32.936703, 46.871338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257660, 33.209824, 47.045197>,  <32.116722, 33.373695, 47.149513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257660, 33.209824, 47.045197>,  <32.492558, 32.936703, 46.871338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257660, 33.209824, 47.045197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181171, -0.412483, 0.892768,
		0.788870, 0.603022, 0.118525,
		-0.587248, 0.682805, 0.434646,
		32.081486, 33.414665, 47.175591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896328, 33.136841, 47.320889>,  <32.492558, 32.936703, 46.871338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896328, 33.136841, 47.320889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514275, 33.209267, 47.414635>,  <32.285042, 33.252724, 47.470882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514275, 33.209267, 47.414635>,  <32.896328, 33.136841, 47.320889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514275, 33.209267, 47.414635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143958, -0.407726, 0.901685,
		0.258824, 0.894972, 0.363367,
		-0.955137, 0.181068, 0.234367,
		32.227734, 33.263588, 47.484943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915962, 33.388657, 47.980282>,  <32.896328, 33.136841, 47.320889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915962, 33.388657, 47.980282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533184, 33.275913, 47.952553>,  <32.303516, 33.208267, 47.935917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533184, 33.275913, 47.952553>,  <32.915962, 33.388657, 47.980282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533184, 33.275913, 47.952553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099774, -0.543704, 0.833325,
		-0.272569, 0.790533, 0.548419,
		-0.956949, -0.281857, -0.069322,
		32.246098, 33.191357, 47.931755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549191, 33.561172, 48.591114>,  <32.915962, 33.388657, 47.980282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549191, 33.561172, 48.591114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364101, 33.251965, 48.417530>,  <32.253048, 33.066441, 48.313381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364101, 33.251965, 48.417530>,  <32.549191, 33.561172, 48.591114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364101, 33.251965, 48.417530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003104, -0.488104, 0.872780,
		-0.886496, 0.405205, 0.223459,
		-0.462726, -0.773022, -0.433960,
		32.225285, 33.020058, 48.287342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076466, 33.393806, 49.110294>,  <32.549191, 33.561172, 48.591114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076466, 33.393806, 49.110294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104687, 33.084736, 48.857948>,  <32.121620, 32.899292, 48.706539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104687, 33.084736, 48.857948>,  <32.076466, 33.393806, 49.110294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104687, 33.084736, 48.857948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110289, -0.634610, 0.764922,
		-0.991392, 0.015609, -0.129992,
		0.070555, -0.772675, -0.630869,
		32.125854, 32.852932, 48.668686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597115, 32.965313, 49.400879>,  <32.076466, 33.393806, 49.110294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597115, 32.965313, 49.400879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819059, 32.736755, 49.159008>,  <31.952227, 32.599621, 49.013885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819059, 32.736755, 49.159008>,  <31.597115, 32.965313, 49.400879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819059, 32.736755, 49.159008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046851, -0.747131, 0.663024,
		-0.830623, -0.339557, -0.441324,
		0.554861, -0.571399, -0.604676,
		31.985518, 32.565334, 48.977604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251505, 32.330269, 49.422928>,  <31.597115, 32.965313, 49.400879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251505, 32.330269, 49.422928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631039, 32.248322, 49.326805>,  <31.858759, 32.199154, 49.269131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631039, 32.248322, 49.326805>,  <31.251505, 32.330269, 49.422928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631039, 32.248322, 49.326805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028663, -0.813714, 0.580558,
		-0.314477, -0.543964, -0.777950,
		0.948832, -0.204870, -0.240303,
		31.915688, 32.186859, 49.254715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301132, 31.537746, 49.149757>,  <31.251505, 32.330269, 49.422928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301132, 31.537746, 49.149757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659363, 31.667019, 49.272064>,  <31.874302, 31.744583, 49.345448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659363, 31.667019, 49.272064>,  <31.301132, 31.537746, 49.149757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659363, 31.667019, 49.272064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178280, -0.890360, 0.418898,
		0.407624, -0.320643, -0.855003,
		0.895577, 0.323183, 0.305768,
		31.928036, 31.763973, 49.363796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751352, 31.040983, 48.813221>,  <31.301132, 31.537746, 49.149757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751352, 31.040983, 48.813221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937719, 31.225822, 49.115051>,  <32.049541, 31.336725, 49.296150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937719, 31.225822, 49.115051>,  <31.751352, 31.040983, 48.813221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937719, 31.225822, 49.115051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176322, -0.884179, 0.432594,
		0.867082, -0.068505, -0.493433,
		0.465918, 0.462098, 0.754577,
		32.077496, 31.364452, 49.341423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321598, 30.719736, 48.878521>,  <31.751352, 31.040983, 48.813221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321598, 30.719736, 48.878521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257755, 30.886395, 49.236500>,  <32.219448, 30.986389, 49.451286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257755, 30.886395, 49.236500>,  <32.321598, 30.719736, 48.878521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257755, 30.886395, 49.236500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244472, -0.861648, 0.444743,
		0.956430, 0.289775, 0.035670,
		-0.159611, 0.416645, 0.894948,
		32.209873, 31.011389, 49.504986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679958, 30.256809, 49.315647>,  <32.321598, 30.719736, 48.878521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679958, 30.256809, 49.315647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468666, 30.455744, 49.590931>,  <32.341888, 30.575104, 49.756100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468666, 30.455744, 49.590931>,  <32.679958, 30.256809, 49.315647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468666, 30.455744, 49.590931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148691, -0.743807, 0.651646,
		0.835979, 0.446550, 0.318954,
		-0.528233, 0.497337, 0.688205,
		32.310196, 30.604944, 49.797394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103752, 30.146847, 49.875671>,  <32.679958, 30.256809, 49.315647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103752, 30.146847, 49.875671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745457, 30.266874, 50.006893>,  <32.530479, 30.338890, 50.085625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745457, 30.266874, 50.006893>,  <33.103752, 30.146847, 49.875671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745457, 30.266874, 50.006893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064192, -0.642859, 0.763290,
		0.439932, 0.704764, 0.556568,
		-0.895734, 0.300069, 0.328054,
		32.476738, 30.356895, 50.105309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091530, 30.170710, 50.633377>,  <33.103752, 30.146847, 49.875671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091530, 30.170710, 50.633377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701107, 30.133137, 50.554897>,  <32.466854, 30.110592, 50.507809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701107, 30.133137, 50.554897>,  <33.091530, 30.170710, 50.633377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701107, 30.133137, 50.554897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074532, -0.702932, 0.707341,
		-0.204355, 0.705027, 0.679099,
		-0.976055, -0.093934, -0.196195,
		32.408291, 30.104956, 50.496040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735298, 30.337978, 51.322433>,  <33.091530, 30.170710, 50.633377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735298, 30.337978, 51.322433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533764, 30.117950, 51.056026>,  <32.412846, 29.985933, 50.896183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533764, 30.117950, 51.056026>,  <32.735298, 30.337978, 51.322433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533764, 30.117950, 51.056026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316976, -0.599508, 0.734927,
		-0.803542, 0.581391, 0.127693,
		-0.503833, -0.550068, -0.666016,
		32.382614, 29.952930, 50.856220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024151, 30.307051, 51.644463>,  <32.735298, 30.337978, 51.322433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024151, 30.307051, 51.644463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108936, 29.995667, 51.408131>,  <32.159805, 29.808836, 51.266335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108936, 29.995667, 51.408131>,  <32.024151, 30.307051, 51.644463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108936, 29.995667, 51.408131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484559, -0.608730, 0.628212,
		-0.848690, 0.153133, -0.506236,
		0.211961, -0.778459, -0.590825,
		32.172523, 29.762129, 51.230885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445589, 29.926651, 51.623890>,  <32.024151, 30.307051, 51.644463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445589, 29.926651, 51.623890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731461, 29.675497, 51.500607>,  <31.902983, 29.524805, 51.426636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731461, 29.675497, 51.500607>,  <31.445589, 29.926651, 51.623890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731461, 29.675497, 51.500607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534963, -0.774556, 0.337457,
		-0.450609, -0.076294, -0.889455,
		0.714679, -0.627887, -0.308207,
		31.945864, 29.487131, 51.408146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986513, 29.254543, 51.270107>,  <31.445589, 29.926651, 51.623890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986513, 29.254543, 51.270107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340441, 29.197327, 51.447483>,  <31.552797, 29.162996, 51.553909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340441, 29.197327, 51.447483>,  <30.986513, 29.254543, 51.270107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340441, 29.197327, 51.447483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335242, -0.856399, 0.392676,
		0.323593, -0.496106, -0.805709,
		0.884817, -0.143040, 0.443440,
		31.605886, 29.154415, 51.580517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361498, 28.649574, 51.088203>,  <30.986513, 29.254543, 51.270107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361498, 28.649574, 51.088203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388258, 28.785889, 51.463306>,  <31.404314, 28.867678, 51.688370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388258, 28.785889, 51.463306>,  <31.361498, 28.649574, 51.088203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388258, 28.785889, 51.463306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511759, -0.795100, 0.325452,
		0.856520, -0.501679, 0.121207,
		0.066901, 0.340785, 0.937758,
		31.408329, 28.888124, 51.744633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747950, 28.242874, 51.513607>,  <31.361498, 28.649574, 51.088203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747950, 28.242874, 51.513607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439421, 28.435762, 51.679752>,  <31.254303, 28.551495, 51.779442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.439421, 28.435762, 51.679752>,  <31.747950, 28.242874, 51.513607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439421, 28.435762, 51.679752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426276, -0.876044, 0.225466,
		0.472603, -0.003154, 0.881270,
		-0.771320, 0.482220, 0.415366,
		31.208025, 28.580429, 51.804363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504087, 27.847675, 52.010448>,  <31.747950, 28.242874, 51.513607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504087, 27.847675, 52.010448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167767, 28.061989, 51.979492>,  <30.965975, 28.190577, 51.960918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167767, 28.061989, 51.979492>,  <31.504087, 27.847675, 52.010448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167767, 28.061989, 51.979492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526993, -0.777404, 0.343397,
		0.123825, 0.329512, 0.935996,
		-0.840801, 0.535785, -0.077389,
		30.915527, 28.222725, 51.956276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.931395, 27.314795, 52.089390>,  <31.504087, 27.847675, 52.010448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.931395, 27.314795, 52.089390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274719, 27.206650, 51.914940>,  <31.480715, 27.141762, 51.810272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.274719, 27.206650, 51.914940>,  <30.931395, 27.314795, 52.089390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274719, 27.206650, 51.914940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491211, -0.187193, -0.850689,
		0.148356, 0.944385, -0.293475,
		0.858314, -0.270363, -0.436121,
		31.532213, 27.125542, 51.784103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806856, 27.527452, 51.446777>,  <30.931395, 27.314795, 52.089390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806856, 27.527452, 51.446777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088793, 27.250919, 51.383209>,  <31.257956, 27.084999, 51.345070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088793, 27.250919, 51.383209>,  <30.806856, 27.527452, 51.446777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088793, 27.250919, 51.383209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293833, -0.080632, -0.952450,
		0.645645, 0.718024, -0.259969,
		0.704844, -0.691332, -0.158920,
		31.300245, 27.043520, 51.335533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237583, 27.752893, 50.928280>,  <30.806856, 27.527452, 51.446777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237583, 27.752893, 50.928280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203560, 27.354889, 50.949120>,  <31.183146, 27.116085, 50.961624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203560, 27.354889, 50.949120>,  <31.237583, 27.752893, 50.928280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203560, 27.354889, 50.949120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212080, -0.033006, -0.976695,
		0.973544, -0.094122, -0.208215,
		-0.085056, -0.995013, 0.052095,
		31.178043, 27.056385, 50.964748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973341, 27.461538, 50.247631>,  <31.237583, 27.752893, 50.928280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.973341, 27.461538, 50.247631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620852, 27.649719, 50.229195>,  <30.409359, 27.762627, 50.218132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.620852, 27.649719, 50.229195>,  <30.973341, 27.461538, 50.247631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620852, 27.649719, 50.229195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103525, 0.287203, 0.952259,
		0.461228, 0.834380, -0.301793,
		-0.881222, 0.470451, -0.046087,
		30.356485, 27.790855, 50.215370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219191, 27.482914, 49.442860>,  <30.973341, 27.461538, 50.247631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219191, 27.482914, 49.442860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393358, 27.841040, 49.480431>,  <31.497858, 28.055916, 49.502975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393358, 27.841040, 49.480431>,  <31.219191, 27.482914, 49.442860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393358, 27.841040, 49.480431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535725, -0.173849, -0.826302,
		-0.723469, 0.410110, -0.555340,
		0.435420, 0.895314, 0.093932,
		31.523985, 28.109634, 49.508610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231272, 27.703047, 48.815258>,  <31.219191, 27.482914, 49.442860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231272, 27.703047, 48.815258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511475, 27.940285, 48.974014>,  <31.679596, 28.082628, 49.069267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511475, 27.940285, 48.974014>,  <31.231272, 27.703047, 48.815258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511475, 27.940285, 48.974014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458109, 0.052714, -0.887332,
		-0.547195, 0.803403, -0.234777,
		0.700509, 0.593097, 0.396891,
		31.721628, 28.118214, 49.093082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350533, 28.248476, 48.319241>,  <31.231272, 27.703047, 48.815258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350533, 28.248476, 48.319241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676783, 28.233297, 48.550175>,  <31.872534, 28.224190, 48.688736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676783, 28.233297, 48.550175>,  <31.350533, 28.248476, 48.319241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676783, 28.233297, 48.550175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577508, 0.114091, -0.808374,
		-0.035193, 0.992745, 0.114971,
		0.815626, -0.037948, 0.577334,
		31.921471, 28.221912, 48.723373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815706, 28.676798, 48.065758>,  <31.350533, 28.248476, 48.319241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815706, 28.676798, 48.065758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043785, 28.427017, 48.279274>,  <32.180634, 28.277149, 48.407383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043785, 28.427017, 48.279274>,  <31.815706, 28.676798, 48.065758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043785, 28.427017, 48.279274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770457, 0.181000, -0.611257,
		0.285083, 0.759803, 0.584318,
		0.570196, -0.624451, 0.533795,
		32.214844, 28.239681, 48.439411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325691, 28.982454, 47.917751>,  <31.815706, 28.676798, 48.065758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325691, 28.982454, 47.917751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468422, 28.639769, 48.066730>,  <32.554058, 28.434156, 48.156116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468422, 28.639769, 48.066730>,  <32.325691, 28.982454, 47.917751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468422, 28.639769, 48.066730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797251, 0.071475, -0.599402,
		0.486896, 0.510814, 0.708521,
		0.356824, -0.856715, 0.372446,
		32.575470, 28.382753, 48.178463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978325, 29.134220, 48.082859>,  <32.325691, 28.982454, 47.917751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978325, 29.134220, 48.082859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950348, 28.740797, 48.016258>,  <32.933559, 28.504744, 47.976299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950348, 28.740797, 48.016258>,  <32.978325, 29.134220, 48.082859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950348, 28.740797, 48.016258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736385, 0.061685, -0.673745,
		0.672938, -0.169734, 0.719962,
		-0.069946, -0.983557, -0.166500,
		32.929363, 28.445730, 47.966309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633274, 28.950981, 47.983925>,  <32.978325, 29.134220, 48.082859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633274, 28.950981, 47.983925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419868, 28.648684, 47.832024>,  <33.291824, 28.467304, 47.740883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419868, 28.648684, 47.832024>,  <33.633274, 28.950981, 47.983925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419868, 28.648684, 47.832024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660976, -0.092412, -0.744695,
		0.527707, -0.648311, 0.548833,
		-0.533513, -0.755746, -0.379752,
		33.259815, 28.421959, 47.718098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075214, 28.714720, 47.495991>,  <33.633274, 28.950981, 47.983925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075214, 28.714720, 47.495991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733158, 28.536461, 47.390060>,  <33.527924, 28.429506, 47.326504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733158, 28.536461, 47.390060>,  <34.075214, 28.714720, 47.495991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733158, 28.536461, 47.390060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320426, -0.052825, -0.945800,
		0.407504, -0.893649, 0.187970,
		-0.855142, -0.445648, -0.264822,
		33.476616, 28.402767, 47.310616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213932, 28.097252, 47.195843>,  <34.075214, 28.714720, 47.495991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213932, 28.097252, 47.195843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850704, 28.188488, 47.055344>,  <33.632767, 28.243231, 46.971043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.850704, 28.188488, 47.055344>,  <34.213932, 28.097252, 47.195843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850704, 28.188488, 47.055344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295281, -0.246076, -0.923177,
		-0.297005, -0.942030, 0.156103,
		-0.908073, 0.228094, -0.351249,
		33.578281, 28.256916, 46.949970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117531, 27.592781, 46.671051>,  <34.213932, 28.097252, 47.195843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117531, 27.592781, 46.671051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823425, 27.852665, 46.593845>,  <33.646961, 28.008596, 46.547520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823425, 27.852665, 46.593845>,  <34.117531, 27.592781, 46.671051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823425, 27.852665, 46.593845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278525, 0.030014, -0.959960,
		-0.617903, -0.759588, -0.203029,
		-0.735268, 0.649711, -0.193019,
		33.602844, 28.047579, 46.535938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609043, 27.280363, 46.109375>,  <34.117531, 27.592781, 46.671051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609043, 27.280363, 46.109375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578941, 27.679083, 46.098587>,  <33.560879, 27.918314, 46.092113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578941, 27.679083, 46.098587>,  <33.609043, 27.280363, 46.109375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578941, 27.679083, 46.098587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392109, 0.004717, -0.919906,
		-0.916835, -0.079800, -0.391209,
		-0.075254, 0.996800, -0.026965,
		33.556366, 27.978123, 46.090496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319168, 27.535971, 45.493149>,  <33.609043, 27.280363, 46.109375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319168, 27.535971, 45.493149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507904, 27.870890, 45.603638>,  <33.621147, 28.071842, 45.669930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507904, 27.870890, 45.603638>,  <33.319168, 27.535971, 45.493149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507904, 27.870890, 45.603638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323314, 0.127154, -0.937710,
		-0.820266, 0.531755, -0.210714,
		0.471839, 0.837298, 0.276224,
		33.649456, 28.122080, 45.686504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089928, 28.048222, 44.987598>,  <33.319168, 27.535971, 45.493149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089928, 28.048222, 44.987598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434273, 28.168728, 45.151627>,  <33.640881, 28.241032, 45.250042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434273, 28.168728, 45.151627>,  <33.089928, 28.048222, 44.987598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434273, 28.168728, 45.151627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303193, 0.343512, -0.888861,
		-0.408645, 0.889517, 0.204375,
		0.860862, 0.301264, 0.410070,
		33.692532, 28.259108, 45.274647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176731, 28.654615, 44.733521>,  <33.089928, 28.048222, 44.987598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176731, 28.654615, 44.733521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560528, 28.584169, 44.821484>,  <33.790806, 28.541901, 44.874264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560528, 28.584169, 44.821484>,  <33.176731, 28.654615, 44.733521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560528, 28.584169, 44.821484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279787, 0.503844, -0.817227,
		0.033126, 0.845650, 0.532708,
		0.959490, -0.176116, 0.219912,
		33.848373, 28.531334, 44.887459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664845, 29.314779, 44.845444>,  <33.176731, 28.654615, 44.733521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664845, 29.314779, 44.845444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906445, 29.007442, 44.760754>,  <34.051407, 28.823040, 44.709938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906445, 29.007442, 44.760754>,  <33.664845, 29.314779, 44.845444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906445, 29.007442, 44.760754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482232, 0.563847, -0.670469,
		0.634534, 0.302863, 0.711085,
		0.604003, -0.768343, -0.211729,
		34.087646, 28.776939, 44.697235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335899, 29.479692, 45.210289>,  <33.664845, 29.314779, 44.845444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335899, 29.479692, 45.210289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409729, 29.229887, 44.906734>,  <34.454025, 29.080004, 44.724602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409729, 29.229887, 44.906734>,  <34.335899, 29.479692, 45.210289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409729, 29.229887, 44.906734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286030, 0.772867, -0.566448,
		0.940276, -0.112514, 0.321281,
		0.184574, -0.624514, -0.758891,
		34.465103, 29.042534, 44.679066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795212, 29.860889, 44.770504>,  <34.335899, 29.479692, 45.210289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795212, 29.860889, 44.770504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666504, 29.569651, 44.528400>,  <34.589279, 29.394907, 44.383137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666504, 29.569651, 44.528400>,  <34.795212, 29.860889, 44.770504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666504, 29.569651, 44.528400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025529, 0.632351, -0.774261,
		0.946474, -0.264584, -0.184883,
		-0.321768, -0.728098, -0.605259,
		34.569973, 29.351221, 44.346825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172180, 29.897469, 44.184490>,  <34.795212, 29.860889, 44.770504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172180, 29.897469, 44.184490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867001, 29.672974, 44.056168>,  <34.683891, 29.538277, 43.979176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.867001, 29.672974, 44.056168>,  <35.172180, 29.897469, 44.184490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867001, 29.672974, 44.056168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180184, 0.661207, -0.728243,
		0.620834, -0.497813, -0.605597,
		-0.762954, -0.561237, -0.320802,
		34.638115, 29.504602, 43.959927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210068, 29.897493, 43.476109>,  <35.172180, 29.897469, 44.184490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210068, 29.897493, 43.476109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826668, 29.784115, 43.488335>,  <34.596626, 29.716087, 43.495670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826668, 29.784115, 43.488335>,  <35.210068, 29.897493, 43.476109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826668, 29.784115, 43.488335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204069, 0.607292, -0.767823,
		0.199075, -0.742196, -0.639933,
		-0.958502, -0.283445, 0.030563,
		34.539116, 29.699081, 43.497505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954441, 29.642372, 42.839157>,  <35.210068, 29.897493, 43.476109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954441, 29.642372, 42.839157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623367, 29.779322, 43.017021>,  <34.424725, 29.861492, 43.123741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623367, 29.779322, 43.017021>,  <34.954441, 29.642372, 42.839157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623367, 29.779322, 43.017021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168667, 0.603946, -0.778974,
		-0.535251, -0.719743, -0.442128,
		-0.827682, 0.342374, 0.444659,
		34.375061, 29.882034, 43.150417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410328, 29.634708, 42.276615>,  <34.954441, 29.642372, 42.839157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410328, 29.634708, 42.276615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260571, 29.869974, 42.563358>,  <34.170715, 30.011133, 42.735405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260571, 29.869974, 42.563358>,  <34.410328, 29.634708, 42.276615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260571, 29.869974, 42.563358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415099, 0.584992, -0.696762,
		-0.829169, -0.558434, 0.025127,
		-0.374396, 0.588163, 0.716862,
		34.148251, 30.046423, 42.778416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627201, 29.689915, 42.186516>,  <34.410328, 29.634708, 42.276615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627201, 29.689915, 42.186516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767204, 30.008293, 42.384087>,  <33.851208, 30.199320, 42.502628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767204, 30.008293, 42.384087>,  <33.627201, 29.689915, 42.186516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767204, 30.008293, 42.384087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385503, 0.602951, -0.698454,
		-0.853744, 0.054056, 0.517879,
		0.350011, 0.795945, 0.493927,
		33.872208, 30.247076, 42.532265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097145, 30.216093, 42.054146>,  <33.627201, 29.689915, 42.186516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097145, 30.216093, 42.054146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405075, 30.422400, 42.204533>,  <33.589832, 30.546185, 42.294765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405075, 30.422400, 42.204533>,  <33.097145, 30.216093, 42.054146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405075, 30.422400, 42.204533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218927, 0.766701, -0.603523,
		-0.599531, 0.382299, 0.703143,
		0.769827, 0.515768, 0.375965,
		33.636024, 30.577129, 42.317322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834820, 30.850763, 42.143883>,  <33.097145, 30.216093, 42.054146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834820, 30.850763, 42.143883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230652, 30.908073, 42.138107>,  <33.468151, 30.942459, 42.134644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230652, 30.908073, 42.138107>,  <32.834820, 30.850763, 42.143883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230652, 30.908073, 42.138107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116049, 0.734120, -0.669030,
		-0.085254, 0.663733, 0.743096,
		0.989578, 0.143273, -0.014439,
		33.527527, 30.951056, 42.133774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925777, 31.679455, 42.096054>,  <32.834820, 30.850763, 42.143883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925777, 31.679455, 42.096054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277100, 31.522243, 41.987164>,  <33.487892, 31.427917, 41.921829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.277100, 31.522243, 41.987164>,  <32.925777, 31.679455, 42.096054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277100, 31.522243, 41.987164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034885, 0.515194, -0.856364,
		0.476822, 0.761647, 0.438787,
		0.878307, -0.393026, -0.272226,
		33.540592, 31.404335, 41.905495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350796, 32.296261, 41.973103>,  <32.925777, 31.679455, 42.096054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350796, 32.296261, 41.973103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531788, 31.995050, 41.782017>,  <33.640385, 31.814323, 41.667366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.531788, 31.995050, 41.782017>,  <33.350796, 32.296261, 41.973103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531788, 31.995050, 41.782017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087816, 0.570711, -0.816442,
		0.887438, 0.327477, 0.324366,
		0.452484, -0.753026, -0.477712,
		33.667534, 31.769142, 41.638702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900635, 32.581894, 41.624542>,  <33.350796, 32.296261, 41.973103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900635, 32.581894, 41.624542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833447, 32.237072, 41.433273>,  <33.793133, 32.030178, 41.318512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833447, 32.237072, 41.433273>,  <33.900635, 32.581894, 41.624542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833447, 32.237072, 41.433273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111103, 0.465416, -0.878091,
		0.979512, -0.200616, 0.017603,
		-0.167967, -0.862056, -0.478169,
		33.783058, 31.978455, 41.289822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287354, 32.542885, 41.042168>,  <33.900635, 32.581894, 41.624542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287354, 32.542885, 41.042168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042244, 32.246922, 40.931141>,  <33.895176, 32.069344, 40.864525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042244, 32.246922, 40.931141>,  <34.287354, 32.542885, 41.042168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042244, 32.246922, 40.931141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023201, 0.334238, -0.942203,
		0.789917, -0.583799, -0.187646,
		-0.612775, -0.739908, -0.277565,
		33.858410, 32.024948, 40.847870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591812, 32.220173, 40.458641>,  <34.287354, 32.542885, 41.042168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591812, 32.220173, 40.458641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210400, 32.109024, 40.412060>,  <33.981552, 32.042336, 40.384109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210400, 32.109024, 40.412060>,  <34.591812, 32.220173, 40.458641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210400, 32.109024, 40.412060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001345, 0.382598, -0.923914,
		0.301282, -0.881140, -0.364447,
		-0.953534, -0.277868, -0.116455,
		33.924339, 32.025661, 40.377125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499634, 31.649523, 39.932129>,  <34.591812, 32.220173, 40.458641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499634, 31.649523, 39.932129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161430, 31.863085, 39.929058>,  <33.958508, 31.991222, 39.927216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161430, 31.863085, 39.929058>,  <34.499634, 31.649523, 39.932129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161430, 31.863085, 39.929058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145589, 0.216687, -0.965324,
		-0.513730, -0.817307, -0.260942,
		-0.845509, 0.533906, -0.007672,
		33.907776, 32.023258, 39.926758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156197, 31.494415, 39.301392>,  <34.499634, 31.649523, 39.932129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156197, 31.494415, 39.301392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972847, 31.825499, 39.430878>,  <33.862839, 32.024147, 39.508568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972847, 31.825499, 39.430878>,  <34.156197, 31.494415, 39.301392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972847, 31.825499, 39.430878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112015, 0.307526, -0.944924,
		-0.881673, -0.469387, -0.048246,
		-0.458372, 0.827710, 0.323716,
		33.835335, 32.073811, 39.527992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542706, 31.478531, 38.889679>,  <34.156197, 31.494415, 39.301392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542706, 31.478531, 38.889679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636734, 31.842571, 39.026184>,  <33.693150, 32.060997, 39.108086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636734, 31.842571, 39.026184>,  <33.542706, 31.478531, 38.889679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636734, 31.842571, 39.026184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025036, 0.356651, -0.933902,
		-0.971656, 0.210988, 0.106624,
		0.235070, 0.910101, 0.341260,
		33.707256, 32.115601, 39.128563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348133, 31.931053, 38.353859>,  <33.542706, 31.478531, 38.889679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348133, 31.931053, 38.353859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560932, 32.188259, 38.574226>,  <33.688610, 32.342583, 38.706448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560932, 32.188259, 38.574226>,  <33.348133, 31.931053, 38.353859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560932, 32.188259, 38.574226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044324, 0.628588, -0.776474,
		-0.845584, 0.437502, 0.305907,
		0.531999, 0.643015, 0.550916,
		33.720531, 32.381165, 38.739502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928974, 32.561226, 38.342918>,  <33.348133, 31.931053, 38.353859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928974, 32.561226, 38.342918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322849, 32.584614, 38.408604>,  <33.559174, 32.598644, 38.448017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322849, 32.584614, 38.408604>,  <32.928974, 32.561226, 38.342918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322849, 32.584614, 38.408604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098784, 0.589027, -0.802053,
		-0.143621, 0.805996, 0.574234,
		0.984690, 0.058466, 0.164216,
		33.618256, 32.602154, 38.457867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067692, 33.233898, 38.219040>,  <32.928974, 32.561226, 38.342918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067692, 33.233898, 38.219040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419102, 33.044453, 38.194107>,  <33.629948, 32.930786, 38.179146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419102, 33.044453, 38.194107>,  <33.067692, 33.233898, 38.219040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419102, 33.044453, 38.194107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308529, 0.662179, -0.682883,
		0.364702, 0.580696, 0.727864,
		0.878523, -0.473616, -0.062336,
		33.682659, 32.902367, 38.175407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405735, 33.794392, 37.962883>,  <33.067692, 33.233898, 38.219040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405735, 33.794392, 37.962883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660309, 33.487881, 37.927628>,  <33.813053, 33.303974, 37.906475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660309, 33.487881, 37.927628>,  <33.405735, 33.794392, 37.962883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660309, 33.487881, 37.927628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429265, 0.446811, -0.784915,
		0.640846, 0.461711, 0.613302,
		0.636434, -0.766279, -0.088141,
		33.851238, 33.257996, 37.901184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995235, 34.027912, 37.827736>,  <33.405735, 33.794392, 37.962883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995235, 34.027912, 37.827736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054993, 33.657120, 37.690102>,  <34.090847, 33.434647, 37.607521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054993, 33.657120, 37.690102>,  <33.995235, 34.027912, 37.827736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054993, 33.657120, 37.690102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426822, 0.374359, -0.823212,
		0.891910, -0.023879, 0.451582,
		0.149396, -0.926977, -0.344087,
		34.099812, 33.379028, 37.586876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662807, 33.956123, 37.541397>,  <33.995235, 34.027912, 37.827736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662807, 33.956123, 37.541397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466335, 33.650082, 37.374851>,  <34.348454, 33.466457, 37.274921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466335, 33.650082, 37.374851>,  <34.662807, 33.956123, 37.541397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466335, 33.650082, 37.374851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190506, 0.372072, -0.908444,
		0.849970, -0.525530, -0.036999,
		-0.491181, -0.765102, -0.416367,
		34.318981, 33.420551, 37.249943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157169, 33.822514, 37.007549>,  <34.662807, 33.956123, 37.541397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157169, 33.822514, 37.007549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801155, 33.667267, 36.911877>,  <34.587547, 33.574120, 36.854473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801155, 33.667267, 36.911877>,  <35.157169, 33.822514, 37.007549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801155, 33.667267, 36.911877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192607, 0.155396, -0.968893,
		0.413210, -0.908415, -0.063554,
		-0.890034, -0.388115, -0.239178,
		34.534145, 33.550831, 36.840122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271580, 33.562622, 36.298916>,  <35.157169, 33.822514, 37.007549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271580, 33.562622, 36.298916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877308, 33.598511, 36.356026>,  <34.640743, 33.620045, 36.390293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877308, 33.598511, 36.356026>,  <35.271580, 33.562622, 36.298916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877308, 33.598511, 36.356026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128099, 0.152237, -0.980007,
		-0.109663, -0.984263, -0.138564,
		-0.985680, 0.089720, 0.142778,
		34.581604, 33.625427, 36.398857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735401, 32.961281, 36.118217>,  <35.271580, 33.562622, 36.298916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735401, 32.961281, 36.118217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055107, 32.872555, 35.894798>,  <36.246929, 32.819321, 35.760746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055107, 32.872555, 35.894798>,  <35.735401, 32.961281, 36.118217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055107, 32.872555, 35.894798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096805, -0.869738, 0.483925,
		-0.593132, -0.440854, -0.673678,
		0.799264, -0.221816, -0.558547,
		36.294888, 32.806011, 35.727234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654652, 32.321236, 35.919861>,  <35.735401, 32.961281, 36.118217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654652, 32.321236, 35.919861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048473, 32.390606, 35.929485>,  <36.284767, 32.432228, 35.935261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048473, 32.390606, 35.929485>,  <35.654652, 32.321236, 35.919861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048473, 32.390606, 35.929485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140607, -0.865036, 0.481604,
		0.104337, -0.470781, -0.876059,
		0.984552, 0.173429, 0.024060,
		36.343838, 32.442635, 35.936703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891628, 31.664183, 35.951382>,  <35.654652, 32.321236, 35.919861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891628, 31.664183, 35.951382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200218, 31.886862, 36.074612>,  <36.385372, 32.020470, 36.148548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200218, 31.886862, 36.074612>,  <35.891628, 31.664183, 35.951382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200218, 31.886862, 36.074612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309776, -0.751578, 0.582382,
		0.555752, -0.353861, -0.752278,
		0.771478, 0.556698, 0.308074,
		36.431664, 32.053871, 36.167034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483910, 31.275023, 35.818485>,  <35.891628, 31.664183, 35.951382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483910, 31.275023, 35.818485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594631, 31.539730, 36.097179>,  <36.661064, 31.698555, 36.264397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594631, 31.539730, 36.097179>,  <36.483910, 31.275023, 35.818485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594631, 31.539730, 36.097179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326043, -0.746734, 0.579728,
		0.903922, 0.066694, -0.422465,
		0.276805, 0.661770, 0.696734,
		36.677673, 31.738262, 36.306198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227989, 31.056137, 36.027142>,  <36.483910, 31.275023, 35.818485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227989, 31.056137, 36.027142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065655, 31.272614, 36.321735>,  <36.968254, 31.402498, 36.498493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065655, 31.272614, 36.321735>,  <37.227989, 31.056137, 36.027142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065655, 31.272614, 36.321735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404351, -0.616355, 0.675727,
		0.819633, 0.572032, 0.031308,
		-0.405834, 0.541189, 0.736487,
		36.943905, 31.434971, 36.542683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732224, 31.129087, 36.514164>,  <37.227989, 31.056137, 36.027142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732224, 31.129087, 36.514164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394463, 31.218487, 36.708904>,  <37.191807, 31.272127, 36.825748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394463, 31.218487, 36.708904>,  <37.732224, 31.129087, 36.514164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394463, 31.218487, 36.708904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288118, -0.576706, 0.764460,
		0.451628, 0.785785, 0.422580,
		-0.844405, 0.223499, 0.486855,
		37.141140, 31.285536, 36.854961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902809, 31.384275, 37.121941>,  <37.732224, 31.129087, 36.514164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902809, 31.384275, 37.121941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527527, 31.255114, 37.171734>,  <37.302357, 31.177616, 37.201611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527527, 31.255114, 37.171734>,  <37.902809, 31.384275, 37.121941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527527, 31.255114, 37.171734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242128, -0.355474, 0.902781,
		-0.247260, 0.877138, 0.411693,
		-0.938209, -0.322904, 0.124485,
		37.246063, 31.158243, 37.209080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758488, 31.431683, 37.741066>,  <37.902809, 31.384275, 37.121941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758488, 31.431683, 37.741066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468945, 31.177273, 37.634102>,  <37.295219, 31.024626, 37.569923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468945, 31.177273, 37.634102>,  <37.758488, 31.431683, 37.741066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468945, 31.177273, 37.634102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056572, -0.440979, 0.895733,
		-0.687630, 0.633252, 0.355185,
		-0.723854, -0.636027, -0.267406,
		37.251789, 30.986465, 37.553879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470074, 31.303089, 38.420567>,  <37.758488, 31.431683, 37.741066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470074, 31.303089, 38.420567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358040, 31.006678, 38.176460>,  <37.290821, 30.828831, 38.029995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.358040, 31.006678, 38.176460>,  <37.470074, 31.303089, 38.420567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358040, 31.006678, 38.176460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003810, -0.634849, 0.772627,
		-0.959968, 0.218726, 0.174988,
		-0.280085, -0.741030, -0.610268,
		37.274014, 30.784369, 37.993382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786278, 31.110479, 38.791344>,  <37.470074, 31.303089, 38.420567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786278, 31.110479, 38.791344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923923, 30.817610, 38.556225>,  <37.006512, 30.641888, 38.415154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923923, 30.817610, 38.556225>,  <36.786278, 31.110479, 38.791344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923923, 30.817610, 38.556225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139129, -0.658885, 0.739266,
		-0.928564, -0.172610, -0.328596,
		0.344112, -0.732173, -0.587801,
		37.027157, 30.597958, 38.379883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403336, 30.566904, 38.914799>,  <36.786278, 31.110479, 38.791344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403336, 30.566904, 38.914799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660767, 30.345478, 38.703377>,  <36.815224, 30.212622, 38.576523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660767, 30.345478, 38.703377>,  <36.403336, 30.566904, 38.914799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660767, 30.345478, 38.703377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134598, -0.761677, 0.633824,
		-0.753434, -0.336788, -0.564722,
		0.643600, -0.553555, -0.528542,
		36.853840, 30.179409, 38.544811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016586, 29.808771, 38.747639>,  <36.403336, 30.566904, 38.914799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016586, 29.808771, 38.747639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415825, 29.789427, 38.762928>,  <36.655369, 29.777821, 38.772102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.415825, 29.789427, 38.762928>,  <36.016586, 29.808771, 38.747639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415825, 29.789427, 38.762928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061328, -0.716852, 0.694522,
		-0.006187, -0.695546, -0.718455,
		0.998098, -0.048359, 0.038222,
		36.715256, 29.774920, 38.774395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202370, 29.122911, 38.755066>,  <36.016586, 29.808771, 38.747639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202370, 29.122911, 38.755066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547131, 29.290014, 38.870029>,  <36.753986, 29.390276, 38.939007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547131, 29.290014, 38.870029>,  <36.202370, 29.122911, 38.755066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547131, 29.290014, 38.870029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192509, -0.793944, 0.576709,
		0.469109, -0.441739, -0.764724,
		0.861903, 0.417755, 0.287408,
		36.805702, 29.415340, 38.956253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682560, 28.563692, 38.696083>,  <36.202370, 29.122911, 38.755066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682560, 28.563692, 38.696083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810951, 28.836079, 38.959373>,  <36.887985, 28.999510, 39.117348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810951, 28.836079, 38.959373>,  <36.682560, 28.563692, 38.696083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810951, 28.836079, 38.959373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070466, -0.710245, 0.700419,
		0.944461, -0.178437, -0.275958,
		0.320978, 0.680965, 0.658225,
		36.907246, 29.040367, 39.156841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171997, 28.234941, 39.063049>,  <36.682560, 28.563692, 38.696083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171997, 28.234941, 39.063049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119225, 28.558903, 39.291664>,  <37.087563, 28.753279, 39.428833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119225, 28.558903, 39.291664>,  <37.171997, 28.234941, 39.063049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119225, 28.558903, 39.291664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041932, -0.571500, 0.819530,
		0.990372, 0.132086, 0.041436,
		-0.131929, 0.809902, 0.571536,
		37.079647, 28.801874, 39.463123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736092, 28.309088, 39.671715>,  <37.171997, 28.234941, 39.063049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736092, 28.309088, 39.671715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424152, 28.524303, 39.799683>,  <37.236988, 28.653433, 39.876465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424152, 28.524303, 39.799683>,  <37.736092, 28.309088, 39.671715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424152, 28.524303, 39.799683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039885, -0.467335, 0.883180,
		0.624698, 0.701506, 0.342990,
		-0.779847, 0.538041, 0.319923,
		37.190197, 28.685715, 39.895660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986565, 28.553368, 40.272446>,  <37.736092, 28.309088, 39.671715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986565, 28.553368, 40.272446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588615, 28.591438, 40.286114>,  <37.349846, 28.614281, 40.294315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.588615, 28.591438, 40.286114>,  <37.986565, 28.553368, 40.272446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588615, 28.591438, 40.286114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007848, -0.409539, 0.912259,
		0.100818, 0.907314, 0.408187,
		-0.994874, 0.095175, 0.034168,
		37.290154, 28.619991, 40.296364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851318, 28.788166, 40.967300>,  <37.986565, 28.553368, 40.272446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851318, 28.788166, 40.967300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495789, 28.656693, 40.839581>,  <37.282471, 28.577808, 40.762947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495789, 28.656693, 40.839581>,  <37.851318, 28.788166, 40.967300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495789, 28.656693, 40.839581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129435, -0.488340, 0.863001,
		-0.439580, 0.808388, 0.391507,
		-0.888828, -0.328683, -0.319299,
		37.229141, 28.558088, 40.743790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470558, 28.739120, 41.562481>,  <37.851318, 28.788166, 40.967300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470558, 28.739120, 41.562481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202850, 28.567659, 41.319717>,  <37.042225, 28.464783, 41.174061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202850, 28.567659, 41.319717>,  <37.470558, 28.739120, 41.562481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202850, 28.567659, 41.319717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322485, -0.568292, 0.756999,
		-0.669390, 0.702354, 0.242105,
		-0.669268, -0.428652, -0.606908,
		37.002071, 28.439064, 41.137646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844818, 28.936026, 41.763962>,  <37.470558, 28.739120, 41.562481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844818, 28.936026, 41.763962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845943, 28.575405, 41.590897>,  <36.846619, 28.359034, 41.487057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845943, 28.575405, 41.590897>,  <36.844818, 28.936026, 41.763962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845943, 28.575405, 41.590897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349667, -0.406241, 0.844216,
		-0.936870, 0.148918, -0.316383,
		0.002809, -0.901549, -0.432667,
		36.846786, 28.304941, 41.461098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303154, 28.704355, 41.937107>,  <36.844818, 28.936026, 41.763962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303154, 28.704355, 41.937107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476913, 28.366251, 41.812637>,  <36.581169, 28.163389, 41.737957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476913, 28.366251, 41.812637>,  <36.303154, 28.704355, 41.937107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476913, 28.366251, 41.812637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388679, -0.487565, 0.781799,
		-0.812541, -0.218668, -0.540334,
		0.434402, -0.845260, -0.311175,
		36.607235, 28.112673, 41.719284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828011, 28.177042, 41.844501>,  <36.303154, 28.704355, 41.937107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828011, 28.177042, 41.844501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173050, 27.986208, 41.911819>,  <36.380074, 27.871708, 41.952209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173050, 27.986208, 41.911819>,  <35.828011, 28.177042, 41.844501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173050, 27.986208, 41.911819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363114, -0.352250, 0.862594,
		-0.352250, -0.805178, -0.477084,
		-0.862594, 0.477084, -0.168291,
		36.431828, 27.843082, 41.962307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669079, 27.650915, 42.283215>,  <35.828011, 28.177042, 41.844501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669079, 27.650915, 42.283215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067474, 27.660107, 42.317787>,  <36.306511, 27.665621, 42.338531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067474, 27.660107, 42.317787>,  <35.669079, 27.650915, 42.283215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067474, 27.660107, 42.317787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069930, -0.402305, 0.912831,
		0.055745, -0.915217, -0.399086,
		0.995993, 0.022978, 0.086427,
		36.366272, 27.667000, 42.343716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961311, 26.891953, 42.534218>,  <35.669079, 27.650915, 42.283215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961311, 26.891953, 42.534218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194210, 27.192465, 42.658516>,  <36.333950, 27.372772, 42.733097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194210, 27.192465, 42.658516>,  <35.961311, 26.891953, 42.534218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194210, 27.192465, 42.658516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005882, -0.386103, 0.922437,
		0.812989, -0.535260, -0.229227,
		0.582249, 0.751280, 0.310750,
		36.368885, 27.417849, 42.751740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448143, 26.538982, 43.026855>,  <35.961311, 26.891953, 42.534218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448143, 26.538982, 43.026855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448174, 26.926451, 43.126194>,  <36.448193, 27.158932, 43.185799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448174, 26.926451, 43.126194>,  <36.448143, 26.538982, 43.026855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448174, 26.926451, 43.126194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085324, -0.247450, 0.965137,
		0.996353, 0.021115, -0.082670,
		0.000078, 0.968671, 0.248349,
		36.448196, 27.217052, 43.200699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988712, 26.656525, 43.593983>,  <36.448143, 26.538982, 43.026855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988712, 26.656525, 43.593983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729202, 26.959623, 43.622021>,  <36.573498, 27.141483, 43.638844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729202, 26.959623, 43.622021>,  <36.988712, 26.656525, 43.593983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729202, 26.959623, 43.622021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091970, -0.013358, 0.995672,
		0.755405, 0.652410, -0.061024,
		-0.648771, 0.757749, 0.070093,
		36.534573, 27.186949, 43.643047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293751, 27.160604, 43.886597>,  <36.988712, 26.656525, 43.593983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293751, 27.160604, 43.886597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907364, 27.235552, 43.957932>,  <36.675533, 27.280519, 44.000732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907364, 27.235552, 43.957932>,  <37.293751, 27.160604, 43.886597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907364, 27.235552, 43.957932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216674, 0.209505, 0.953499,
		0.141292, 0.959688, -0.242972,
		-0.965965, 0.187367, 0.178339,
		36.617573, 27.291761, 44.011433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243904, 27.466188, 44.481747>,  <37.293751, 27.160604, 43.886597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243904, 27.466188, 44.481747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845371, 27.442162, 44.457336>,  <36.606251, 27.427746, 44.442692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845371, 27.442162, 44.457336>,  <37.243904, 27.466188, 44.481747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845371, 27.442162, 44.457336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065017, 0.066964, 0.995635,
		-0.055717, 0.995946, -0.070623,
		-0.996327, -0.060065, -0.061022,
		36.546474, 27.424143, 44.439030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857197, 28.076557, 44.912590>,  <37.243904, 27.466188, 44.481747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857197, 28.076557, 44.912590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649563, 27.739361, 44.856140>,  <36.524982, 27.537043, 44.822269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649563, 27.739361, 44.856140>,  <36.857197, 28.076557, 44.912590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649563, 27.739361, 44.856140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258865, -0.002303, 0.965911,
		-0.814579, 0.537923, -0.217025,
		-0.519086, -0.842991, -0.141125,
		36.493835, 27.486464, 44.813801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372704, 28.134056, 45.456421>,  <36.857197, 28.076557, 44.912590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372704, 28.134056, 45.456421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372715, 27.754845, 45.329147>,  <36.372723, 27.527317, 45.252785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372715, 27.754845, 45.329147>,  <36.372704, 28.134056, 45.456421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372715, 27.754845, 45.329147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238030, -0.309044, 0.920779,
		-0.971258, 0.075709, -0.225669,
		0.000031, -0.948029, -0.318183,
		36.372723, 27.470436, 45.233692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808212, 27.957479, 45.722389>,  <36.372704, 28.134056, 45.456421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808212, 27.957479, 45.722389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046837, 27.638687, 45.684593>,  <36.190014, 27.447411, 45.661915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046837, 27.638687, 45.684593>,  <35.808212, 27.957479, 45.722389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046837, 27.638687, 45.684593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190461, -0.254965, 0.948007,
		-0.779638, -0.547550, -0.303898,
		0.596565, -0.796983, -0.094494,
		36.225807, 27.399591, 45.656246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525463, 27.572283, 46.127342>,  <35.808212, 27.957479, 45.722389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525463, 27.572283, 46.127342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846436, 27.335968, 46.093700>,  <36.039021, 27.194180, 46.073517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846436, 27.335968, 46.093700>,  <35.525463, 27.572283, 46.127342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846436, 27.335968, 46.093700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129543, -0.310029, 0.941860,
		-0.582514, -0.744883, -0.325310,
		0.802431, -0.590788, -0.084101,
		36.087166, 27.158731, 46.068470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389442, 26.919777, 46.550526>,  <35.525463, 27.572283, 46.127342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389442, 26.919777, 46.550526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781368, 26.914598, 46.470730>,  <36.016525, 26.911491, 46.422852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.781368, 26.914598, 46.470730>,  <35.389442, 26.919777, 46.550526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781368, 26.914598, 46.470730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194603, -0.166656, 0.966621,
		-0.045759, -0.985930, -0.160773,
		0.979814, -0.012945, -0.199491,
		36.075314, 26.910715, 46.410881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744015, 26.218742, 46.869083>,  <35.389442, 26.919777, 46.550526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744015, 26.218742, 46.869083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033279, 26.485569, 46.797459>,  <36.206837, 26.645664, 46.754482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033279, 26.485569, 46.797459>,  <35.744015, 26.218742, 46.869083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033279, 26.485569, 46.797459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439864, -0.244917, 0.864023,
		0.532504, -0.703590, -0.470532,
		0.723160, 0.667066, -0.179064,
		36.250229, 26.685688, 46.743740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420013, 25.924896, 47.074478>,  <35.744015, 26.218742, 46.869083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420013, 25.924896, 47.074478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454453, 26.322981, 47.092983>,  <36.475117, 26.561832, 47.104088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454453, 26.322981, 47.092983>,  <36.420013, 25.924896, 47.074478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454453, 26.322981, 47.092983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394461, -0.076692, 0.915707,
		0.914871, -0.060587, -0.399176,
		0.086094, 0.995212, 0.046264,
		36.480282, 26.621544, 47.106861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072571, 26.054020, 47.490330>,  <36.420013, 25.924896, 47.074478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072571, 26.054020, 47.490330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873318, 26.400709, 47.500523>,  <36.753765, 26.608723, 47.506638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873318, 26.400709, 47.500523>,  <37.072571, 26.054020, 47.490330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873318, 26.400709, 47.500523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309946, 0.150538, 0.938761,
		0.809810, 0.475529, -0.343626,
		-0.498137, 0.866724, 0.025481,
		36.723877, 26.660727, 47.508167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608742, 26.574743, 47.717331>,  <37.072571, 26.054020, 47.490330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608742, 26.574743, 47.717331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248783, 26.725079, 47.805809>,  <37.032806, 26.815281, 47.858894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248783, 26.725079, 47.805809>,  <37.608742, 26.574743, 47.717331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248783, 26.725079, 47.805809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264564, 0.067291, 0.962017,
		0.346680, 0.924238, -0.159989,
		-0.899899, 0.375840, 0.221192,
		36.978813, 26.837831, 47.872166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714790, 27.111544, 48.124489>,  <37.608742, 26.574743, 47.717331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714790, 27.111544, 48.124489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329876, 27.064613, 48.222656>,  <37.098927, 27.036455, 48.281559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329876, 27.064613, 48.222656>,  <37.714790, 27.111544, 48.124489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329876, 27.064613, 48.222656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248500, -0.012128, 0.968556,
		-0.110660, 0.993019, 0.040826,
		-0.962290, -0.117326, 0.245423,
		37.041187, 27.029415, 48.296284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446327, 27.609385, 48.760502>,  <37.714790, 27.111544, 48.124489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446327, 27.609385, 48.760502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192200, 27.300570, 48.753273>,  <37.039722, 27.115280, 48.748936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192200, 27.300570, 48.753273>,  <37.446327, 27.609385, 48.760502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192200, 27.300570, 48.753273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230593, -0.211989, 0.949677,
		-0.737016, 0.599184, 0.312708,
		-0.635323, -0.772035, -0.018072,
		37.001602, 27.068958, 48.747852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755539, 28.019087, 49.322952>,  <37.446327, 27.609385, 48.760502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755539, 28.019087, 49.322952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991459, 28.276016, 49.518726>,  <38.133011, 28.430174, 49.636192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991459, 28.276016, 49.518726>,  <37.755539, 28.019087, 49.322952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991459, 28.276016, 49.518726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222658, 0.453240, -0.863132,
		-0.776244, 0.618057, 0.124304,
		0.589804, 0.642324, 0.489439,
		38.168400, 28.468714, 49.665558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589901, 28.693298, 49.007568>,  <37.755539, 28.019087, 49.322952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589901, 28.693298, 49.007568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954956, 28.724340, 49.168098>,  <38.173988, 28.742966, 49.264416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954956, 28.724340, 49.168098>,  <37.589901, 28.693298, 49.007568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954956, 28.724340, 49.168098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303541, 0.528900, -0.792545,
		-0.273769, 0.845128, 0.459139,
		0.912641, 0.077607, 0.401328,
		38.228748, 28.747622, 49.288498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752674, 29.335264, 48.916309>,  <37.589901, 28.693298, 49.007568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752674, 29.335264, 48.916309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099442, 29.139782, 48.955536>,  <38.307503, 29.022493, 48.979073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099442, 29.139782, 48.955536>,  <37.752674, 29.335264, 48.916309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099442, 29.139782, 48.955536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313145, 0.380915, -0.869968,
		0.387803, 0.784901, 0.483259,
		0.866920, -0.488706, 0.098068,
		38.359516, 28.993170, 48.984955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341385, 29.816532, 48.865295>,  <37.752674, 29.335264, 48.916309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341385, 29.816532, 48.865295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538456, 29.476820, 48.789410>,  <38.656700, 29.272993, 48.743877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.538456, 29.476820, 48.789410>,  <38.341385, 29.816532, 48.865295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538456, 29.476820, 48.789410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036116, 0.237774, -0.970649,
		0.869463, 0.471364, 0.147818,
		0.492676, -0.849282, -0.189712,
		38.686260, 29.222036, 48.732494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100094, 29.918348, 48.539265>,  <38.341385, 29.816532, 48.865295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100094, 29.918348, 48.539265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005314, 29.543034, 48.438492>,  <38.948444, 29.317844, 48.378029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005314, 29.543034, 48.438492>,  <39.100094, 29.918348, 48.539265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005314, 29.543034, 48.438492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130570, 0.226207, -0.965289,
		0.962708, -0.261619, 0.068913,
		-0.236950, -0.938289, -0.251931,
		38.934231, 29.261547, 48.362911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635834, 29.797260, 48.100384>,  <39.100094, 29.918348, 48.539265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635834, 29.797260, 48.100384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341805, 29.539749, 48.015335>,  <39.165386, 29.385242, 47.964306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341805, 29.539749, 48.015335>,  <39.635834, 29.797260, 48.100384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341805, 29.539749, 48.015335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260273, 0.021630, -0.965293,
		0.626035, -0.764905, 0.151659,
		-0.735077, -0.643780, -0.212626,
		39.121281, 29.346615, 47.951546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901222, 29.388433, 47.539600>,  <39.635834, 29.797260, 48.100384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901222, 29.388433, 47.539600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510132, 29.307383, 47.517696>,  <39.275478, 29.258753, 47.504555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.510132, 29.307383, 47.517696>,  <39.901222, 29.388433, 47.539600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510132, 29.307383, 47.517696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015233, 0.191704, -0.981335,
		0.209359, -0.960305, -0.184346,
		-0.977720, -0.202643, -0.054763,
		39.216816, 29.246595, 47.501270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806065, 29.046001, 46.901047>,  <39.901222, 29.388433, 47.539600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806065, 29.046001, 46.901047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409267, 29.090677, 46.924614>,  <39.171188, 29.117483, 46.938755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409267, 29.090677, 46.924614>,  <39.806065, 29.046001, 46.901047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409267, 29.090677, 46.924614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051000, 0.072507, -0.996063,
		-0.115525, -0.991094, -0.066230,
		-0.991994, 0.111693, 0.058923,
		39.111668, 29.124186, 46.942291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445145, 28.645065, 46.445309>,  <39.806065, 29.046001, 46.901047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445145, 28.645065, 46.445309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216579, 28.968645, 46.500580>,  <39.079441, 29.162792, 46.533741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216579, 28.968645, 46.500580>,  <39.445145, 28.645065, 46.445309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216579, 28.968645, 46.500580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171377, 0.047037, -0.984082,
		-0.802571, -0.585996, 0.111757,
		-0.571411, 0.808948, 0.138177,
		39.045155, 29.211330, 46.542034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859322, 28.525490, 46.052380>,  <39.445145, 28.645065, 46.445309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859322, 28.525490, 46.052380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851486, 28.920898, 46.112305>,  <38.846783, 29.158144, 46.148262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851486, 28.920898, 46.112305>,  <38.859322, 28.525490, 46.052380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851486, 28.920898, 46.112305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191167, 0.143377, -0.971030,
		-0.981362, -0.047663, 0.186164,
		-0.019590, 0.988520, 0.149816,
		38.845608, 29.217455, 46.157249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299141, 28.717361, 45.640560>,  <38.859322, 28.525490, 46.052380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299141, 28.717361, 45.640560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506580, 29.049641, 45.721546>,  <38.631042, 29.249008, 45.770138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.506580, 29.049641, 45.721546>,  <38.299141, 28.717361, 45.640560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506580, 29.049641, 45.721546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220365, 0.358657, -0.907086,
		-0.826132, 0.425797, 0.369056,
		0.518599, 0.830699, 0.202468,
		38.662159, 29.298851, 45.782288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900700, 29.306961, 45.422653>,  <38.299141, 28.717361, 45.640560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900700, 29.306961, 45.422653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277218, 29.441994, 45.421738>,  <38.503128, 29.523014, 45.421188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277218, 29.441994, 45.421738>,  <37.900700, 29.306961, 45.422653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277218, 29.441994, 45.421738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134692, 0.369323, -0.919488,
		-0.309555, 0.865817, 0.393111,
		0.941294, 0.337581, -0.002293,
		38.559605, 29.543268, 45.421051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843151, 30.044670, 45.319382>,  <37.900700, 29.306961, 45.422653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843151, 30.044670, 45.319382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220329, 29.966913, 45.211262>,  <38.446636, 29.920259, 45.146389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220329, 29.966913, 45.211262>,  <37.843151, 30.044670, 45.319382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220329, 29.966913, 45.211262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098987, 0.611466, -0.785055,
		0.317887, 0.767022, 0.557338,
		0.942947, -0.194390, -0.270302,
		38.503212, 29.908596, 45.130173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085373, 30.723074, 45.058403>,  <37.843151, 30.044670, 45.319382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085373, 30.723074, 45.058403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331837, 30.435587, 44.929535>,  <38.479713, 30.263094, 44.852215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331837, 30.435587, 44.929535>,  <38.085373, 30.723074, 45.058403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331837, 30.435587, 44.929535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074635, 0.460476, -0.884529,
		0.784077, 0.520966, 0.337368,
		0.616159, -0.718719, -0.322166,
		38.516685, 30.219971, 44.832886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576099, 31.069435, 44.542507>,  <38.085373, 30.723074, 45.058403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576099, 31.069435, 44.542507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601990, 30.677706, 44.465839>,  <38.617523, 30.442669, 44.419838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601990, 30.677706, 44.465839>,  <38.576099, 31.069435, 44.542507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601990, 30.677706, 44.465839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256629, 0.201948, -0.945176,
		0.964341, 0.011985, 0.264393,
		0.064721, -0.979323, -0.191671,
		38.621407, 30.383909, 44.408337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172272, 30.994938, 44.172279>,  <38.576099, 31.069435, 44.542507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172272, 30.994938, 44.172279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923290, 30.692234, 44.092407>,  <38.773903, 30.510612, 44.044483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923290, 30.692234, 44.092407>,  <39.172272, 30.994938, 44.172279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923290, 30.692234, 44.092407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230604, 0.066469, -0.970775,
		0.747914, -0.650307, 0.133138,
		-0.622452, -0.756758, -0.199677,
		38.736553, 30.465206, 44.032505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564648, 30.654129, 43.729965>,  <39.172272, 30.994938, 44.172279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564648, 30.654129, 43.729965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185150, 30.536686, 43.683178>,  <38.957451, 30.466219, 43.655106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185150, 30.536686, 43.683178>,  <39.564648, 30.654129, 43.729965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185150, 30.536686, 43.683178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085454, 0.118010, -0.989329,
		0.304281, -0.948613, -0.086871,
		-0.948741, -0.293611, -0.116971,
		38.900528, 30.448603, 43.648087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539410, 30.229561, 43.188686>,  <39.564648, 30.654129, 43.729965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539410, 30.229561, 43.188686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153812, 30.331495, 43.219067>,  <38.922455, 30.392656, 43.237297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153812, 30.331495, 43.219067>,  <39.539410, 30.229561, 43.188686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153812, 30.331495, 43.219067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027562, 0.188342, -0.981717,
		-0.264484, -0.948465, -0.174537,
		-0.963996, 0.254838, 0.075955,
		38.864613, 30.407946, 43.241852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142929, 29.746443, 42.755974>,  <39.539410, 30.229561, 43.188686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142929, 29.746443, 42.755974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927643, 30.080578, 42.800758>,  <38.798473, 30.281059, 42.827629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927643, 30.080578, 42.800758>,  <39.142929, 29.746443, 42.755974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927643, 30.080578, 42.800758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036435, 0.109655, -0.993302,
		-0.842022, -0.538686, -0.028582,
		-0.538212, 0.835340, 0.111960,
		38.766178, 30.331181, 42.834347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721298, 29.617281, 42.300919>,  <39.142929, 29.746443, 42.755974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721298, 29.617281, 42.300919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673935, 30.008528, 42.369347>,  <38.645515, 30.243277, 42.410404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673935, 30.008528, 42.369347>,  <38.721298, 29.617281, 42.300919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673935, 30.008528, 42.369347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166795, 0.150239, -0.974478,
		-0.978856, -0.143920, 0.145355,
		-0.118409, 0.978119, 0.171067,
		38.638412, 30.301964, 42.420666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217499, 29.819216, 41.823528>,  <38.721298, 29.617281, 42.300919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217499, 29.819216, 41.823528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398232, 30.153467, 41.948475>,  <38.506672, 30.354019, 42.023445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398232, 30.153467, 41.948475>,  <38.217499, 29.819216, 41.823528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398232, 30.153467, 41.948475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174118, 0.426018, -0.887802,
		-0.874948, 0.346745, 0.337985,
		0.451828, 0.835630, 0.312369,
		38.533779, 30.404156, 42.042187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796368, 30.285076, 41.753517>,  <38.217499, 29.819216, 41.823528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796368, 30.285076, 41.753517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144505, 30.482002, 41.748840>,  <38.353386, 30.600159, 41.746033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.144505, 30.482002, 41.748840>,  <37.796368, 30.285076, 41.753517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144505, 30.482002, 41.748840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220182, 0.367794, -0.903464,
		-0.440489, 0.788894, 0.428504,
		0.870339, 0.492315, -0.011691,
		38.405605, 30.629696, 41.745335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684261, 30.881802, 41.430557>,  <37.796368, 30.285076, 41.753517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684261, 30.881802, 41.430557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075485, 30.822121, 41.372410>,  <38.310219, 30.786312, 41.337521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075485, 30.822121, 41.372410>,  <37.684261, 30.881802, 41.430557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075485, 30.822121, 41.372410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115867, 0.190305, -0.974863,
		0.173116, 0.970321, 0.168843,
		0.978062, -0.149201, -0.145373,
		38.368904, 30.777361, 41.328796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864353, 31.444084, 40.917355>,  <37.684261, 30.881802, 41.430557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864353, 31.444084, 40.917355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190880, 31.213360, 40.905224>,  <38.386795, 31.074924, 40.897945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190880, 31.213360, 40.905224>,  <37.864353, 31.444084, 40.917355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190880, 31.213360, 40.905224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095277, 0.186245, -0.977873,
		0.569697, 0.795362, 0.206991,
		0.816314, -0.576813, -0.030324,
		38.435776, 31.040316, 40.896126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452290, 31.848597, 40.720425>,  <37.864353, 31.444084, 40.917355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452290, 31.848597, 40.720425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514217, 31.466183, 40.620804>,  <38.551373, 31.236734, 40.561031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514217, 31.466183, 40.620804>,  <38.452290, 31.848597, 40.720425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514217, 31.466183, 40.620804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239400, 0.280887, -0.929403,
		0.958498, 0.084264, 0.272361,
		0.154818, -0.956034, -0.249057,
		38.560661, 31.179373, 40.546085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965054, 31.856377, 40.237331>,  <38.452290, 31.848597, 40.720425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965054, 31.856377, 40.237331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834442, 31.482262, 40.182751>,  <38.756077, 31.257793, 40.150002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834442, 31.482262, 40.182751>,  <38.965054, 31.856377, 40.237331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834442, 31.482262, 40.182751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179405, 0.080416, -0.980483,
		0.928006, -0.344633, 0.141537,
		-0.326525, -0.935287, -0.136455,
		38.736485, 31.201675, 40.141815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478619, 31.329786, 40.034527>,  <38.965054, 31.856377, 40.237331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478619, 31.329786, 40.034527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126965, 31.207960, 39.887901>,  <38.915974, 31.134865, 39.799927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126965, 31.207960, 39.887901>,  <39.478619, 31.329786, 40.034527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126965, 31.207960, 39.887901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373190, 0.038428, -0.926959,
		0.296408, -0.951715, 0.079878,
		-0.879131, -0.304567, -0.366561,
		38.863224, 31.116590, 39.777931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639477, 30.918251, 39.529186>,  <39.478619, 31.329786, 40.034527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639477, 30.918251, 39.529186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266842, 31.030802, 39.437122>,  <39.043262, 31.098331, 39.381882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266842, 31.030802, 39.437122>,  <39.639477, 30.918251, 39.529186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266842, 31.030802, 39.437122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261437, 0.078659, -0.962010,
		-0.252582, -0.956368, -0.146840,
		-0.931586, 0.281376, -0.230162,
		38.987366, 31.115215, 39.368073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477760, 30.543333, 38.872944>,  <39.639477, 30.918251, 39.529186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477760, 30.543333, 38.872944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210541, 30.840143, 38.895256>,  <39.050209, 31.018229, 38.908642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210541, 30.840143, 38.895256>,  <39.477760, 30.543333, 38.872944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210541, 30.840143, 38.895256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195775, 0.247585, -0.948880,
		-0.717903, -0.622978, -0.310668,
		-0.668048, 0.742025, 0.055779,
		39.010128, 31.062750, 38.911991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359211, 30.627701, 38.232597>,  <39.477760, 30.543333, 38.872944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359211, 30.627701, 38.232597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227337, 30.959547, 38.412838>,  <39.148212, 31.158655, 38.520985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227337, 30.959547, 38.412838>,  <39.359211, 30.627701, 38.232597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227337, 30.959547, 38.412838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282383, 0.542095, -0.791450,
		-0.900869, -0.133689, -0.412992,
		-0.329689, 0.829614, 0.450605,
		39.128429, 31.208431, 38.548019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942017, 30.916990, 37.813793>,  <39.359211, 30.627701, 38.232597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942017, 30.916990, 37.813793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012783, 31.238111, 38.041553>,  <39.055241, 31.430784, 38.178207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012783, 31.238111, 38.041553>,  <38.942017, 30.916990, 37.813793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012783, 31.238111, 38.041553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173987, 0.543902, -0.820914,
		-0.968726, 0.244297, -0.043454,
		0.176912, 0.802801, 0.569396,
		39.065857, 31.478952, 38.212372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550716, 31.476986, 37.475159>,  <38.942017, 30.916990, 37.813793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550716, 31.476986, 37.475159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840382, 31.642454, 37.695873>,  <39.014179, 31.741735, 37.828300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840382, 31.642454, 37.695873>,  <38.550716, 31.476986, 37.475159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840382, 31.642454, 37.695873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173007, 0.665554, -0.726021,
		-0.667574, 0.621220, 0.410402,
		0.724164, 0.413670, 0.551783,
		39.057632, 31.766556, 37.861408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443150, 32.149864, 37.396320>,  <38.550716, 31.476986, 37.475159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443150, 32.149864, 37.396320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812946, 32.138668, 37.548389>,  <39.034824, 32.131950, 37.639629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812946, 32.138668, 37.548389>,  <38.443150, 32.149864, 37.396320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812946, 32.138668, 37.548389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205421, 0.876687, -0.434997,
		-0.321117, 0.480247, 0.816239,
		0.924492, -0.027987, 0.380172,
		39.090294, 32.130272, 37.662441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485214, 32.820400, 37.828087>,  <38.443150, 32.149864, 37.396320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485214, 32.820400, 37.828087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846981, 32.672852, 37.742336>,  <39.064041, 32.584324, 37.690884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846981, 32.672852, 37.742336>,  <38.485214, 32.820400, 37.828087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846981, 32.672852, 37.742336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332627, 0.924308, -0.187120,
		0.267177, 0.097927, 0.958659,
		0.904420, -0.368870, -0.214381,
		39.118309, 32.562191, 37.678020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994953, 33.283154, 38.180248>,  <38.485214, 32.820400, 37.828087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994953, 33.283154, 38.180248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197506, 33.107922, 37.883152>,  <39.319038, 33.002781, 37.704895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197506, 33.107922, 37.883152>,  <38.994953, 33.283154, 38.180248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197506, 33.107922, 37.883152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282234, 0.898095, -0.337297,
		0.814814, -0.038825, 0.578420,
		0.506381, -0.438085, -0.742738,
		39.349419, 32.976498, 37.660332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716721, 33.532646, 38.132736>,  <38.994953, 33.283154, 38.180248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716721, 33.532646, 38.132736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635014, 33.373661, 37.774899>,  <39.585991, 33.278271, 37.560196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635014, 33.373661, 37.774899>,  <39.716721, 33.532646, 38.132736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635014, 33.373661, 37.774899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370181, 0.814642, -0.446459,
		0.906225, -0.422357, -0.019270,
		-0.204263, -0.397458, -0.894597,
		39.573734, 33.254425, 37.506519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357082, 33.735611, 37.712543>,  <39.716721, 33.532646, 38.132736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357082, 33.735611, 37.712543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056038, 33.634800, 37.469212>,  <39.875412, 33.574314, 37.323212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056038, 33.634800, 37.469212>,  <40.357082, 33.735611, 37.712543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056038, 33.634800, 37.469212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287391, 0.705491, -0.647834,
		0.592441, -0.662394, -0.458528,
		-0.752609, -0.252027, -0.608327,
		39.830254, 33.559193, 37.286713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640896, 33.667057, 37.017197>,  <40.357082, 33.735611, 37.712543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640896, 33.667057, 37.017197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258198, 33.725250, 36.916424>,  <40.028580, 33.760166, 36.855961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258198, 33.725250, 36.916424>,  <40.640896, 33.667057, 37.017197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258198, 33.725250, 36.916424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289047, 0.573558, -0.766474,
		0.032992, -0.806143, -0.590801,
		-0.956746, 0.145482, -0.251936,
		39.971172, 33.768894, 36.840843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592747, 33.549042, 36.288818>,  <40.640896, 33.667057, 37.017197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592747, 33.549042, 36.288818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276665, 33.769554, 36.395897>,  <40.087013, 33.901863, 36.460144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.276665, 33.769554, 36.395897>,  <40.592747, 33.549042, 36.288818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.276665, 33.769554, 36.395897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248773, 0.687751, -0.681990,
		-0.560076, -0.472318, -0.680611,
		-0.790207, 0.551283, 0.267693,
		40.039604, 33.934940, 36.476204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214993, 33.698944, 35.546574>,  <40.592747, 33.549042, 36.288818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.214993, 33.698944, 35.546574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093304, 33.973583, 35.810703>,  <40.020290, 34.138367, 35.969181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093304, 33.973583, 35.810703>,  <40.214993, 33.698944, 35.546574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093304, 33.973583, 35.810703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187957, 0.722821, -0.664983,
		-0.933874, -0.078189, -0.348949,
		-0.304222, 0.686598, 0.660328,
		40.002037, 34.179562, 36.008801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880810, 34.134800, 35.190853>,  <40.214993, 33.698944, 35.546574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880810, 34.134800, 35.190853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011456, 34.326653, 35.516621>,  <40.089844, 34.441765, 35.712082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011456, 34.326653, 35.516621>,  <39.880810, 34.134800, 35.190853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011456, 34.326653, 35.516621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417494, 0.699843, -0.579585,
		-0.847950, 0.529318, 0.028339,
		0.326617, 0.479628, 0.814419,
		40.109440, 34.470543, 35.760944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925644, 34.870983, 34.974899>,  <39.880810, 34.134800, 35.190853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925644, 34.870983, 34.974899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122375, 34.834595, 35.321270>,  <40.240414, 34.812763, 35.529091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.122375, 34.834595, 35.321270>,  <39.925644, 34.870983, 34.974899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122375, 34.834595, 35.321270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430162, 0.890065, -0.150816,
		-0.757012, 0.446664, 0.476890,
		0.491827, -0.090970, 0.865928,
		40.269924, 34.807304, 35.581047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476322, 34.790207, 34.616547>,  <39.925644, 34.870983, 34.974899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476322, 34.790207, 34.616547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635242, 34.946976, 34.284634>,  <40.730595, 35.041039, 34.085484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.635242, 34.946976, 34.284634>,  <40.476322, 34.790207, 34.616547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635242, 34.946976, 34.284634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541427, -0.830182, -0.132872,
		-0.740949, -0.396478, -0.542033,
		0.397305, 0.391922, -0.829786,
		40.754433, 35.064552, 34.035698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732323, 34.239319, 34.240898>,  <40.476322, 34.790207, 34.616547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732323, 34.239319, 34.240898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924698, 34.557938, 34.094360>,  <41.040123, 34.749107, 34.006439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924698, 34.557938, 34.094360>,  <40.732323, 34.239319, 34.240898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924698, 34.557938, 34.094360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807931, -0.564923, -0.167658,
		-0.340503, -0.215347, -0.915250,
		0.480942, 0.796547, -0.366344,
		41.068981, 34.796902, 33.984459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507065, 33.741570, 33.789120>,  <40.732323, 34.239319, 34.240898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507065, 33.741570, 33.789120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841316, 33.695309, 33.574326>,  <41.041866, 33.667553, 33.445450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841316, 33.695309, 33.574326>,  <40.507065, 33.741570, 33.789120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841316, 33.695309, 33.574326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525426, 0.453337, 0.720009,
		0.160161, -0.883804, 0.439590,
		0.835629, -0.115655, -0.536981,
		41.092007, 33.660614, 33.413231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069927, 33.443207, 34.145649>,  <40.507065, 33.741570, 33.789120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069927, 33.443207, 34.145649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243313, 33.656078, 33.854748>,  <41.347343, 33.783802, 33.680206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243313, 33.656078, 33.854748>,  <41.069927, 33.443207, 34.145649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243313, 33.656078, 33.854748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541803, 0.490966, 0.682204,
		0.720108, -0.689740, -0.075517,
		0.433468, 0.532176, -0.727251,
		41.373352, 33.815731, 33.636574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746223, 33.250618, 34.055820>,  <41.069927, 33.443207, 34.145649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746223, 33.250618, 34.055820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753864, 33.635944, 33.948746>,  <41.758450, 33.867142, 33.884502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753864, 33.635944, 33.948746>,  <41.746223, 33.250618, 34.055820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753864, 33.635944, 33.948746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455704, 0.229920, 0.859925,
		0.889926, -0.138410, -0.434596,
		0.019100, 0.963317, -0.267686,
		41.759594, 33.924938, 33.868439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094467, 33.753338, 34.464634>,  <41.746223, 33.250618, 34.055820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094467, 33.753338, 34.464634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427753, 33.966454, 34.405457>,  <42.627724, 34.094322, 34.369949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427753, 33.966454, 34.405457>,  <42.094467, 33.753338, 34.464634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427753, 33.966454, 34.405457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117120, 0.431537, 0.894460,
		0.540407, -0.727948, 0.421963,
		0.833213, 0.532793, -0.147948,
		42.677719, 34.126289, 34.361073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419327, 33.606071, 35.040108>,  <42.094467, 33.753338, 34.464634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419327, 33.606071, 35.040108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572243, 33.945930, 34.894806>,  <42.663994, 34.149845, 34.807625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.572243, 33.945930, 34.894806>,  <42.419327, 33.606071, 35.040108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572243, 33.945930, 34.894806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133068, 0.439636, 0.888264,
		0.914411, -0.291237, 0.281129,
		0.382290, 0.849648, -0.363254,
		42.686932, 34.200825, 34.785831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954159, 33.817631, 35.521568>,  <42.419327, 33.606071, 35.040108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954159, 33.817631, 35.521568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865532, 34.146328, 35.311558>,  <42.812355, 34.343544, 35.185551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865532, 34.146328, 35.311558>,  <42.954159, 33.817631, 35.521568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865532, 34.146328, 35.311558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286988, 0.459610, 0.840474,
		0.931957, 0.336900, 0.133994,
		-0.221570, 0.821741, -0.525023,
		42.799061, 34.392849, 35.154053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.333889, 34.554291, 35.816257>,  <42.954159, 33.817631, 35.521568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.333889, 34.554291, 35.816257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004784, 34.670433, 35.620804>,  <42.807320, 34.740116, 35.503532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.004784, 34.670433, 35.620804>,  <43.333889, 34.554291, 35.816257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004784, 34.670433, 35.620804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332636, 0.451124, 0.828155,
		0.460890, 0.843910, -0.274585,
		-0.822760, 0.290352, -0.488633,
		42.757957, 34.757538, 35.474213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.246628, 35.240559, 36.093594>,  <43.333889, 34.554291, 35.816257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.246628, 35.240559, 36.093594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899975, 35.187366, 35.901234>,  <42.691982, 35.155453, 35.785820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.899975, 35.187366, 35.901234>,  <43.246628, 35.240559, 36.093594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.899975, 35.187366, 35.901234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478526, 0.494426, 0.725641,
		0.141272, 0.858987, -0.492122,
		-0.866635, -0.132980, -0.480896,
		42.639984, 35.147472, 35.756966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951595, 35.892479, 35.812019>,  <43.246628, 35.240559, 36.093594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951595, 35.892479, 35.812019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622589, 35.667271, 35.844193>,  <42.425186, 35.532146, 35.863495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622589, 35.667271, 35.844193>,  <42.951595, 35.892479, 35.812019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622589, 35.667271, 35.844193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441813, 0.721589, 0.533020,
		-0.358141, 0.402883, -0.842271,
		-0.822518, -0.563023, 0.080432,
		42.375835, 35.498363, 35.868320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499847, 36.366898, 35.800850>,  <42.951595, 35.892479, 35.812019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499847, 36.366898, 35.800850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277916, 36.062164, 35.934578>,  <42.144756, 35.879326, 36.014812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277916, 36.062164, 35.934578>,  <42.499847, 36.366898, 35.800850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277916, 36.062164, 35.934578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468610, 0.618207, 0.631051,
		-0.687434, 0.193464, -0.700005,
		-0.554833, -0.761835, 0.334317,
		42.111465, 35.833614, 36.034874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731831, 36.623886, 35.759720>,  <42.499847, 36.366898, 35.800850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731831, 36.623886, 35.759720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713223, 36.314423, 36.012478>,  <41.702057, 36.128746, 36.164131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713223, 36.314423, 36.012478>,  <41.731831, 36.623886, 35.759720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713223, 36.314423, 36.012478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603842, 0.525696, 0.599182,
		-0.795745, -0.353689, -0.491623,
		-0.046520, -0.773658, 0.631893,
		41.699268, 36.082325, 36.202045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039082, 36.472591, 35.779785>,  <41.731831, 36.623886, 35.759720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039082, 36.472591, 35.779785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227543, 36.336727, 36.105396>,  <41.340622, 36.255211, 36.300762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227543, 36.336727, 36.105396>,  <41.039082, 36.472591, 35.779785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227543, 36.336727, 36.105396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542747, 0.615846, 0.571104,
		-0.695298, -0.710890, 0.105810,
		0.471155, -0.339659, 0.814030,
		41.368889, 36.234829, 36.349606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583988, 36.453716, 36.322048>,  <41.039082, 36.472591, 35.779785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583988, 36.453716, 36.322048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917240, 36.434788, 36.542469>,  <41.117191, 36.423431, 36.674721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.917240, 36.434788, 36.542469>,  <40.583988, 36.453716, 36.322048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917240, 36.434788, 36.542469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399827, 0.636879, 0.659184,
		-0.382146, -0.769511, 0.511681,
		0.833128, -0.047320, 0.551052,
		41.167179, 36.420593, 36.707783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409763, 36.509201, 37.038208>,  <40.583988, 36.453716, 36.322048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409763, 36.509201, 37.038208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796619, 36.610840, 37.034786>,  <41.028732, 36.671822, 37.032734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.796619, 36.610840, 37.034786>,  <40.409763, 36.509201, 37.038208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796619, 36.610840, 37.034786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182564, 0.717501, 0.672207,
		0.176940, -0.648558, 0.740314,
		0.967142, 0.254095, -0.008552,
		41.086761, 36.687069, 37.032219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511551, 36.558659, 37.737286>,  <40.409763, 36.509201, 37.038208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511551, 36.558659, 37.737286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809357, 36.749969, 37.550976>,  <40.988041, 36.864758, 37.439190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809357, 36.749969, 37.550976>,  <40.511551, 36.558659, 37.737286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809357, 36.749969, 37.550976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068402, 0.748657, 0.659420,
		0.664093, -0.459088, 0.590101,
		0.744515, 0.478280, -0.465775,
		41.032711, 36.893452, 37.411243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049515, 36.734623, 38.233227>,  <40.511551, 36.558659, 37.737286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049515, 36.734623, 38.233227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098316, 37.002766, 37.940453>,  <41.127598, 37.163651, 37.764786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098316, 37.002766, 37.940453>,  <41.049515, 36.734623, 38.233227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098316, 37.002766, 37.940453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269182, 0.732156, 0.625691,
		0.955331, 0.120688, 0.269774,
		0.122003, 0.670360, -0.731938,
		41.134918, 37.203873, 37.720871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254833, 37.293968, 38.484791>,  <41.049515, 36.734623, 38.233227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254833, 37.293968, 38.484791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132694, 37.454670, 38.139454>,  <41.059410, 37.551090, 37.932251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.132694, 37.454670, 38.139454>,  <41.254833, 37.293968, 38.484791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132694, 37.454670, 38.139454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285911, 0.826126, 0.485563,
		0.908304, 0.395104, -0.137391,
		-0.305350, 0.401757, -0.863338,
		41.041088, 37.575195, 37.880451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449673, 38.064960, 38.516693>,  <41.254833, 37.293968, 38.484791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449673, 38.064960, 38.516693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173996, 38.040783, 38.227871>,  <41.008591, 38.026276, 38.054577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.173996, 38.040783, 38.227871>,  <41.449673, 38.064960, 38.516693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173996, 38.040783, 38.227871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332112, 0.912025, 0.240650,
		0.643987, 0.405657, -0.648632,
		-0.689189, -0.060443, -0.722056,
		40.967239, 38.022652, 38.011253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368866, 38.672993, 38.286510>,  <41.449673, 38.064960, 38.516693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368866, 38.672993, 38.286510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033367, 38.512005, 38.139805>,  <40.832066, 38.415413, 38.051781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.033367, 38.512005, 38.139805>,  <41.368866, 38.672993, 38.286510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033367, 38.512005, 38.139805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505589, 0.825725, 0.250115,
		0.202184, 0.395217, -0.896061,
		-0.838750, -0.402469, -0.366765,
		40.781742, 38.391266, 38.029774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001034, 39.235363, 37.924774>,  <41.368866, 38.672993, 38.286510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001034, 39.235363, 37.924774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718178, 38.964867, 38.007378>,  <40.548462, 38.802570, 38.056942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718178, 38.964867, 38.007378>,  <41.001034, 39.235363, 37.924774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718178, 38.964867, 38.007378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630734, 0.735297, 0.248019,
		-0.319568, 0.045131, -0.946488,
		-0.707143, -0.676241, 0.206511,
		40.506035, 38.761993, 38.069332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391785, 39.586254, 37.776524>,  <41.001034, 39.235363, 37.924774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391785, 39.586254, 37.776524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264919, 39.270123, 37.986202>,  <40.188801, 39.080444, 38.112011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264919, 39.270123, 37.986202>,  <40.391785, 39.586254, 37.776524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264919, 39.270123, 37.986202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738080, 0.552787, 0.386865,
		-0.595520, -0.264199, -0.758653,
		-0.317164, -0.790332, 0.524196,
		40.169769, 39.033024, 38.143459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619370, 39.547901, 37.669197>,  <40.391785, 39.586254, 37.776524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619370, 39.547901, 37.669197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757179, 39.405270, 38.016567>,  <39.839863, 39.319691, 38.224987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.757179, 39.405270, 38.016567>,  <39.619370, 39.547901, 37.669197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757179, 39.405270, 38.016567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708893, 0.507635, 0.489671,
		-0.615449, -0.784319, -0.077886,
		0.344521, -0.356580, 0.868421,
		39.860535, 39.298294, 38.277092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010323, 39.468655, 38.037430>,  <39.619370, 39.547901, 37.669197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010323, 39.468655, 38.037430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293449, 39.463062, 38.319935>,  <39.463326, 39.459709, 38.489437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293449, 39.463062, 38.319935>,  <39.010323, 39.468655, 38.037430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293449, 39.463062, 38.319935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585257, 0.548259, 0.597399,
		-0.395563, -0.836192, 0.379887,
		0.707816, -0.013977, 0.706258,
		39.505795, 39.458870, 38.531811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626274, 39.633732, 38.782803>,  <39.010323, 39.468655, 38.037430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626274, 39.633732, 38.782803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017143, 39.718712, 38.782223>,  <39.251663, 39.769699, 38.781876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017143, 39.718712, 38.782223>,  <38.626274, 39.633732, 38.782803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017143, 39.718712, 38.782223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150980, 0.699196, 0.698807,
		0.149471, -0.682635, 0.715309,
		0.977171, 0.212449, -0.001445,
		39.310295, 39.782448, 38.781788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764168, 39.651085, 39.508869>,  <38.626274, 39.633732, 38.782803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764168, 39.651085, 39.508869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032265, 39.886642, 39.328213>,  <39.193123, 40.027977, 39.219818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032265, 39.886642, 39.328213>,  <38.764168, 39.651085, 39.508869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032265, 39.886642, 39.328213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044711, 0.639503, 0.767488,
		0.740796, -0.494208, 0.454950,
		0.670241, 0.588893, -0.451644,
		39.233337, 40.063309, 39.192719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291531, 39.910439, 39.941372>,  <38.764168, 39.651085, 39.508869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291531, 39.910439, 39.941372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252537, 40.183712, 39.651886>,  <39.229141, 40.347675, 39.478195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252537, 40.183712, 39.651886>,  <39.291531, 39.910439, 39.941372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252537, 40.183712, 39.651886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157865, 0.707354, 0.689006,
		0.982637, 0.181416, 0.038895,
		-0.097485, 0.683182, -0.723712,
		39.223293, 40.388668, 39.434772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555851, 39.294315, 40.429935>,  <39.291531, 39.910439, 39.941372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555851, 39.294315, 40.429935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820137, 39.264553, 40.131161>,  <39.978710, 39.246696, 39.951897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820137, 39.264553, 40.131161>,  <39.555851, 39.294315, 40.429935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820137, 39.264553, 40.131161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226699, 0.968389, 0.104068,
		0.715585, -0.238089, 0.656697,
		0.660716, -0.074403, -0.746940,
		40.018353, 39.242233, 39.907078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071331, 39.505165, 40.747002>,  <39.555851, 39.294315, 40.429935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071331, 39.505165, 40.747002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089981, 39.564461, 40.351860>,  <40.101170, 39.600040, 40.114777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.089981, 39.564461, 40.351860>,  <40.071331, 39.505165, 40.747002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089981, 39.564461, 40.351860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327684, 0.931933, 0.155318,
		0.943636, -0.330945, -0.005124,
		0.046626, 0.148243, -0.987851,
		40.103970, 39.608932, 40.055504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736111, 39.589470, 40.444221>,  <40.071331, 39.505165, 40.747002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736111, 39.589470, 40.444221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468128, 39.799416, 40.234203>,  <40.307339, 39.925385, 40.108192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468128, 39.799416, 40.234203>,  <40.736111, 39.589470, 40.444221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468128, 39.799416, 40.234203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387490, 0.850470, 0.355743,
		0.633255, 0.034882, -0.773157,
		-0.669956, 0.524867, -0.525047,
		40.267143, 39.956875, 40.076691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081944, 40.174763, 40.586994>,  <40.736111, 39.589470, 40.444221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081944, 40.174763, 40.586994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757008, 40.273685, 40.375736>,  <40.562046, 40.333038, 40.248981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757008, 40.273685, 40.375736>,  <41.081944, 40.174763, 40.586994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757008, 40.273685, 40.375736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279765, 0.959877, 0.019164,
		0.511696, -0.132190, -0.848936,
		-0.812341, 0.247309, -0.528148,
		40.513306, 40.347878, 40.217293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634224, 40.466846, 40.109131>,  <41.081944, 40.174763, 40.586994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634224, 40.466846, 40.109131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014782, 40.530197, 40.214787>,  <42.243114, 40.568207, 40.278179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014782, 40.530197, 40.214787>,  <41.634224, 40.466846, 40.109131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014782, 40.530197, 40.214787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196035, 0.350080, -0.915977,
		-0.237538, 0.923234, 0.302016,
		0.951392, 0.158373, 0.264143,
		42.300198, 40.577709, 40.294029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899300, 41.311752, 40.120045>,  <41.634224, 40.466846, 40.109131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899300, 41.311752, 40.120045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153625, 41.011913, 40.046463>,  <42.306221, 40.832008, 40.002316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153625, 41.011913, 40.046463>,  <41.899300, 41.311752, 40.120045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153625, 41.011913, 40.046463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147209, 0.351727, -0.924455,
		0.757672, 0.560704, 0.333982,
		0.635816, -0.749599, -0.183953,
		42.344372, 40.787033, 39.991276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014053, 40.873161, 40.788265>,  <41.899300, 41.311752, 40.120045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014053, 40.873161, 40.788265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747505, 40.639359, 40.973438>,  <41.587578, 40.499077, 41.084541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747505, 40.639359, 40.973438>,  <42.014053, 40.873161, 40.788265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747505, 40.639359, 40.973438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438513, -0.809361, -0.390693,
		0.603043, -0.057343, 0.795645,
		-0.666367, -0.584506, 0.462933,
		41.547596, 40.464008, 41.112320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704964, 41.051769, 40.427837>,  <42.014053, 40.873161, 40.788265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704964, 41.051769, 40.427837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492294, 40.721901, 40.505024>,  <42.364693, 40.523979, 40.551334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.492294, 40.721901, 40.505024>,  <42.704964, 41.051769, 40.427837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492294, 40.721901, 40.505024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579639, -0.520422, -0.627040,
		0.617528, -0.221530, 0.754708,
		-0.531675, -0.824673, 0.192967,
		42.332790, 40.474499, 40.562916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210743, 40.495815, 40.525848>,  <42.704964, 41.051769, 40.427837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210743, 40.495815, 40.525848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859261, 40.326355, 40.437851>,  <42.648373, 40.224678, 40.385052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859261, 40.326355, 40.437851>,  <43.210743, 40.495815, 40.525848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859261, 40.326355, 40.437851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463136, -0.644906, -0.607948,
		0.115678, -0.636096, 0.762890,
		-0.878705, -0.423648, -0.219997,
		42.595650, 40.199261, 40.371853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410301, 39.855713, 40.477203>,  <43.210743, 40.495815, 40.525848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410301, 39.855713, 40.477203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061237, 39.862652, 40.281994>,  <42.851799, 39.866814, 40.164867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.061237, 39.862652, 40.281994>,  <43.410301, 39.855713, 40.477203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.061237, 39.862652, 40.281994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302482, -0.765367, -0.568082,
		-0.383374, -0.643360, 0.662655,
		-0.872656, 0.017347, -0.488027,
		42.799442, 39.867855, 40.135586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295841, 39.183453, 40.412861>,  <43.410301, 39.855713, 40.477203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295841, 39.183453, 40.412861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060822, 39.355984, 40.139000>,  <42.919811, 39.459503, 39.974686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060822, 39.355984, 40.139000>,  <43.295841, 39.183453, 40.412861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060822, 39.355984, 40.139000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143255, -0.777284, -0.612624,
		-0.796409, -0.458024, 0.394900,
		-0.587546, 0.431328, -0.684650,
		42.884556, 39.485382, 39.933605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869762, 38.621914, 40.160290>,  <43.295841, 39.183453, 40.412861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869762, 38.621914, 40.160290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836075, 38.924168, 39.900471>,  <42.815861, 39.105522, 39.744579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.836075, 38.924168, 39.900471>,  <42.869762, 38.621914, 40.160290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836075, 38.924168, 39.900471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153199, -0.634298, -0.757757,
		-0.984600, -0.163328, -0.062343,
		-0.084218, 0.755639, -0.649552,
		42.810810, 39.150860, 39.705605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400833, 38.365074, 39.601627>,  <42.869762, 38.621914, 40.160290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400833, 38.365074, 39.601627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628468, 38.657272, 39.450619>,  <42.765049, 38.832592, 39.360012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.628468, 38.657272, 39.450619>,  <42.400833, 38.365074, 39.601627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628468, 38.657272, 39.450619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225134, -0.579994, -0.782893,
		-0.790861, 0.360536, -0.494523,
		0.569081, 0.730493, -0.377526,
		42.799191, 38.876419, 39.337360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353859, 38.209740, 38.889515>,  <42.400833, 38.365074, 39.601627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353859, 38.209740, 38.889515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663681, 38.461342, 38.916107>,  <42.849575, 38.612305, 38.932064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663681, 38.461342, 38.916107>,  <42.353859, 38.209740, 38.889515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663681, 38.461342, 38.916107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476004, -0.510455, -0.716139,
		-0.416521, 0.586332, -0.694784,
		0.774552, 0.629007, 0.066481,
		42.896046, 38.650043, 38.936050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504604, 38.408173, 38.200443>,  <42.353859, 38.209740, 38.889515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504604, 38.408173, 38.200443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832771, 38.509125, 38.405666>,  <43.029671, 38.569695, 38.528801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832771, 38.509125, 38.405666>,  <42.504604, 38.408173, 38.200443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832771, 38.509125, 38.405666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571701, -0.348200, -0.742910,
		-0.008848, 0.902808, -0.429952,
		0.820414, 0.252377, 0.513056,
		43.078896, 38.584839, 38.559582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.916809, 38.877796, 37.765789>,  <42.504604, 38.408173, 38.200443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.916809, 38.877796, 37.765789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174561, 38.721512, 38.028732>,  <43.329212, 38.627743, 38.186501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.174561, 38.721512, 38.028732>,  <42.916809, 38.877796, 37.765789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.174561, 38.721512, 38.028732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551273, -0.358419, -0.753415,
		0.529976, 0.847870, -0.015571,
		0.644379, -0.390707, 0.657361,
		43.367874, 38.604301, 38.225941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604462, 39.060307, 37.611252>,  <42.916809, 38.877796, 37.765789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604462, 39.060307, 37.611252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636402, 38.720917, 37.820522>,  <43.655567, 38.517284, 37.946087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.636402, 38.720917, 37.820522>,  <43.604462, 39.060307, 37.611252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636402, 38.720917, 37.820522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696376, -0.328052, -0.638313,
		0.713221, 0.415301, 0.564660,
		0.079854, -0.848473, 0.523179,
		43.660358, 38.466373, 37.977474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268948, 38.966911, 37.408260>,  <43.604462, 39.060307, 37.611252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268948, 38.966911, 37.408260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158379, 38.617809, 37.569202>,  <44.092037, 38.408348, 37.665768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158379, 38.617809, 37.569202>,  <44.268948, 38.966911, 37.408260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158379, 38.617809, 37.569202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543939, -0.487233, -0.683179,
		0.792289, 0.030010, 0.609408,
		-0.276422, -0.872756, 0.402353,
		44.075451, 38.355984, 37.689907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872879, 38.564388, 37.370838>,  <44.268948, 38.966911, 37.408260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872879, 38.564388, 37.370838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573044, 38.302731, 37.411282>,  <44.393143, 38.145737, 37.435547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.573044, 38.302731, 37.411282>,  <44.872879, 38.564388, 37.370838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.573044, 38.302731, 37.411282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417323, -0.585620, -0.694903,
		0.513775, -0.478695, 0.711960,
		-0.749585, -0.654141, 0.101107,
		44.348167, 38.106487, 37.441612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145061, 37.917496, 37.282448>,  <44.872879, 38.564388, 37.370838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145061, 37.917496, 37.282448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755466, 37.856525, 37.215382>,  <44.521709, 37.819942, 37.175140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.755466, 37.856525, 37.215382>,  <45.145061, 37.917496, 37.282448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755466, 37.856525, 37.215382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226164, -0.608309, -0.760795,
		0.013970, -0.778927, 0.626960,
		-0.973989, -0.152424, -0.167667,
		44.463268, 37.810799, 37.165081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127625, 37.195362, 37.114021>,  <45.145061, 37.917496, 37.282448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127625, 37.195362, 37.114021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802818, 37.366692, 36.955437>,  <44.607937, 37.469490, 36.860287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802818, 37.366692, 36.955437>,  <45.127625, 37.195362, 37.114021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802818, 37.366692, 36.955437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136843, -0.520629, -0.842745,
		-0.567376, -0.738569, 0.364142,
		-0.812009, 0.428323, -0.396461,
		44.559216, 37.495186, 36.836498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.600132, 36.639526, 36.779919>,  <45.127625, 37.195362, 37.114021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.600132, 36.639526, 36.779919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509815, 36.997330, 36.625587>,  <44.455624, 37.212013, 36.532990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.509815, 36.997330, 36.625587>,  <44.600132, 36.639526, 36.779919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509815, 36.997330, 36.625587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053013, -0.406753, -0.911999,
		-0.972731, -0.185471, 0.139263,
		-0.225795, 0.894512, -0.385829,
		44.442078, 37.265682, 36.509838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039780, 36.448593, 36.490463>,  <44.600132, 36.639526, 36.779919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039780, 36.448593, 36.490463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191994, 36.777626, 36.321445>,  <44.283321, 36.975048, 36.220036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191994, 36.777626, 36.321445>,  <44.039780, 36.448593, 36.490463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191994, 36.777626, 36.321445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001183, -0.457356, -0.889283,
		-0.924766, 0.337903, -0.175012,
		0.380535, 0.822586, -0.422547,
		44.306152, 37.024403, 36.194683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.728840, 36.444450, 35.860111>,  <44.039780, 36.448593, 36.490463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.728840, 36.444450, 35.860111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023487, 36.705948, 35.790806>,  <44.200275, 36.862846, 35.749222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023487, 36.705948, 35.790806>,  <43.728840, 36.444450, 35.860111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023487, 36.705948, 35.790806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092592, -0.351264, -0.931687,
		-0.669944, 0.670251, -0.319277,
		0.736615, 0.653741, -0.173267,
		44.244473, 36.902069, 35.738827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613415, 36.698875, 35.268688>,  <43.728840, 36.444450, 35.860111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613415, 36.698875, 35.268688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009899, 36.726467, 35.313839>,  <44.247791, 36.743023, 35.340931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009899, 36.726467, 35.313839>,  <43.613415, 36.698875, 35.268688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.009899, 36.726467, 35.313839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131896, -0.449789, -0.883342,
		-0.010158, 0.890467, -0.454934,
		0.991212, 0.068977, 0.112880,
		44.307262, 36.747162, 35.347702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811470, 36.816036, 34.605804>,  <43.613415, 36.698875, 35.268688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811470, 36.816036, 34.605804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160915, 36.735622, 34.783062>,  <44.370583, 36.687374, 34.889416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.160915, 36.735622, 34.783062>,  <43.811470, 36.816036, 34.605804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160915, 36.735622, 34.783062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304221, -0.485126, -0.819818,
		0.379793, 0.851022, -0.362656,
		0.873617, -0.201034, 0.443146,
		44.423000, 36.675312, 34.916004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457603, 37.200851, 34.247398>,  <43.811470, 36.816036, 34.605804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457603, 37.200851, 34.247398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562794, 36.864819, 34.437180>,  <44.625908, 36.663200, 34.551048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.562794, 36.864819, 34.437180>,  <44.457603, 37.200851, 34.247398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.562794, 36.864819, 34.437180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371782, -0.365552, -0.853317,
		0.890294, 0.400793, 0.216197,
		0.262973, -0.840081, 0.474456,
		44.641685, 36.612793, 34.579517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087360, 37.075962, 33.961388>,  <44.457603, 37.200851, 34.247398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087360, 37.075962, 33.961388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.995159, 36.725288, 34.130283>,  <44.939838, 36.514885, 34.231621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.995159, 36.725288, 34.130283>,  <45.087360, 37.075962, 33.961388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.995159, 36.725288, 34.130283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438064, -0.480957, -0.759461,
		0.868890, 0.009914, 0.494906,
		-0.230499, -0.876688, 0.422242,
		44.926010, 36.462280, 34.256954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771740, 36.713982, 34.034168>,  <45.087360, 37.075962, 33.961388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771740, 36.713982, 34.034168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.438343, 36.493591, 34.017555>,  <45.238304, 36.361359, 34.007587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.438343, 36.493591, 34.017555>,  <45.771740, 36.713982, 34.034168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.438343, 36.493591, 34.017555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369949, -0.500645, -0.782619,
		0.410406, -0.667671, 0.621114,
		-0.833489, -0.550972, -0.041537,
		45.188297, 36.328300, 34.005093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.000412, 36.053082, 34.046406>,  <45.771740, 36.713982, 34.034168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.000412, 36.053082, 34.046406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.640514, 36.061775, 33.872051>,  <45.424576, 36.066994, 33.767437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.640514, 36.061775, 33.872051>,  <46.000412, 36.053082, 34.046406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.640514, 36.061775, 33.872051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360147, -0.527134, -0.769691,
		-0.246500, -0.849504, 0.466456,
		-0.899740, 0.021736, -0.435885,
		45.370594, 36.068295, 33.741287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.539452, 35.499966, 33.753071>,  <46.000412, 36.053082, 34.046406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.539452, 35.499966, 33.753071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556496, 35.408440, 33.364056>,  <46.566723, 35.353523, 33.130646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.556496, 35.408440, 33.364056>,  <46.539452, 35.499966, 33.753071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.556496, 35.408440, 33.364056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802398, -0.572134, 0.169766,
		-0.595266, -0.787596, 0.159221,
		0.042611, -0.228815, -0.972537,
		46.569279, 35.339794, 33.072296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.226048, 35.289410, 34.091362>,  <46.539452, 35.499966, 33.753071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.226048, 35.289410, 34.091362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127815, 34.962143, 34.299324>,  <47.068878, 34.765785, 34.424103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.127815, 34.962143, 34.299324>,  <47.226048, 35.289410, 34.091362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.127815, 34.962143, 34.299324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211531, -0.568634, -0.794928,
		0.946016, -0.085241, 0.312711,
		-0.245578, -0.818162, 0.519906,
		47.054142, 34.716694, 34.455296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.731659, 35.255451, 34.751534>,  <47.226048, 35.289410, 34.091362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.731659, 35.255451, 34.751534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.724602, 35.031826, 35.083107>,  <47.720367, 34.897652, 35.282051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.724602, 35.031826, 35.083107>,  <47.731659, 35.255451, 34.751534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.724602, 35.031826, 35.083107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996152, 0.081015, 0.033437,
		-0.085850, -0.825155, -0.558346,
		-0.017644, -0.559068, 0.828934,
		47.719307, 34.864105, 35.331787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.218201, 33.789650, 45.803772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875145, 33.977779, 45.886955>,  <35.669312, 34.090656, 45.936867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875145, 33.977779, 45.886955>,  <36.218201, 33.789650, 45.803772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875145, 33.977779, 45.886955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074693, 0.286174, -0.955262,
		-0.508793, -0.834806, -0.210305,
		-0.857642, 0.470322, 0.207958,
		35.617851, 34.118877, 45.949341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845818, 33.640530, 45.254059>,  <36.218201, 33.789650, 45.803772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845818, 33.640530, 45.254059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684273, 33.970318, 45.412624>,  <35.587345, 34.168190, 45.507763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.684273, 33.970318, 45.412624>,  <35.845818, 33.640530, 45.254059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684273, 33.970318, 45.412624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104184, 0.389051, -0.915306,
		-0.908867, -0.410960, -0.071228,
		-0.403866, 0.824470, 0.396411,
		35.563114, 34.217659, 45.531548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239231, 33.776920, 44.928715>,  <35.845818, 33.640530, 45.254059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239231, 33.776920, 44.928715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.322632, 34.137402, 45.080696>,  <35.372673, 34.353691, 45.171883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.322632, 34.137402, 45.080696>,  <35.239231, 33.776920, 44.928715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322632, 34.137402, 45.080696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001133, 0.388267, -0.921546,
		-0.978021, 0.192575, 0.079934,
		0.208503, 0.901201, 0.379952,
		35.385181, 34.407761, 45.194683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834515, 34.120354, 44.613621>,  <35.239231, 33.776920, 44.928715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834515, 34.120354, 44.613621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113102, 34.383415, 44.728466>,  <35.280254, 34.541252, 44.797375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113102, 34.383415, 44.728466>,  <34.834515, 34.120354, 44.613621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113102, 34.383415, 44.728466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007675, 0.393256, -0.919397,
		-0.717549, 0.642532, 0.268842,
		0.696465, 0.657649, 0.287112,
		35.322041, 34.580711, 44.814598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528595, 34.761501, 44.433605>,  <34.834515, 34.120354, 44.613621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528595, 34.761501, 44.433605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.916130, 34.850971, 44.476181>,  <35.148651, 34.904655, 44.501728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.916130, 34.850971, 44.476181>,  <34.528595, 34.761501, 44.433605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916130, 34.850971, 44.476181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077004, 0.680354, -0.728827,
		-0.235438, 0.697917, 0.676374,
		0.968834, 0.223677, 0.106439,
		35.206779, 34.918076, 44.508114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567341, 35.520477, 44.468269>,  <34.528595, 34.761501, 44.433605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567341, 35.520477, 44.468269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.913155, 35.362823, 44.343540>,  <35.120644, 35.268230, 44.268703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.913155, 35.362823, 44.343540>,  <34.567341, 35.520477, 44.468269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913155, 35.362823, 44.343540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017848, 0.595988, -0.802795,
		0.502249, 0.699613, 0.508220,
		0.864539, -0.394133, -0.311821,
		35.172516, 35.244583, 44.249992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109787, 36.119591, 44.378601>,  <34.567341, 35.520477, 44.468269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109787, 36.119591, 44.378601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.216530, 35.813320, 44.144497>,  <35.280575, 35.629559, 44.004036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.216530, 35.813320, 44.144497>,  <35.109787, 36.119591, 44.378601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216530, 35.813320, 44.144497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121775, 0.629204, -0.767641,
		0.956011, 0.133582, 0.261148,
		0.266859, -0.765675, -0.585259,
		35.296589, 35.583618, 43.968918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550724, 36.361206, 43.929749>,  <35.109787, 36.119591, 44.378601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550724, 36.361206, 43.929749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.464825, 36.020847, 43.737972>,  <35.413284, 35.816631, 43.622906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.464825, 36.020847, 43.737972>,  <35.550724, 36.361206, 43.929749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464825, 36.020847, 43.737972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047051, 0.481307, -0.875288,
		0.975535, -0.210525, -0.063325,
		-0.214749, -0.850895, -0.479437,
		35.400398, 35.765579, 43.594143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026810, 36.328499, 43.336449>,  <35.550724, 36.361206, 43.929749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026810, 36.328499, 43.336449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709156, 36.096245, 43.264648>,  <35.518566, 35.956894, 43.221569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709156, 36.096245, 43.264648>,  <36.026810, 36.328499, 43.336449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709156, 36.096245, 43.264648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019680, 0.319762, -0.947294,
		0.607427, -0.748743, -0.265359,
		-0.794131, -0.580634, -0.179497,
		35.470917, 35.922054, 43.210800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232838, 36.221611, 42.677982>,  <36.026810, 36.328499, 43.336449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232838, 36.221611, 42.677982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874161, 36.050179, 42.722275>,  <35.658955, 35.947319, 42.748848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.874161, 36.050179, 42.722275>,  <36.232838, 36.221611, 42.677982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874161, 36.050179, 42.722275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160250, 0.081127, -0.983737,
		0.412624, -0.899855, -0.141426,
		-0.896695, -0.428577, 0.110727,
		35.605152, 35.921604, 42.755493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236813, 35.694813, 42.186611>,  <36.232838, 36.221611, 42.677982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236813, 35.694813, 42.186611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850559, 35.778725, 42.247986>,  <35.618809, 35.829071, 42.284809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850559, 35.778725, 42.247986>,  <36.236813, 35.694813, 42.186611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850559, 35.778725, 42.247986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148994, 0.036922, -0.988149,
		-0.212959, -0.977051, -0.004397,
		-0.965634, 0.209780, 0.153438,
		35.560867, 35.841660, 42.294018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918579, 35.136757, 41.923027>,  <36.236813, 35.694813, 42.186611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918579, 35.136757, 41.923027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628845, 35.411476, 41.947170>,  <35.455006, 35.576309, 41.961655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.628845, 35.411476, 41.947170>,  <35.918579, 35.136757, 41.923027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628845, 35.411476, 41.947170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227029, -0.154947, -0.961483,
		-0.650992, -0.710141, 0.268158,
		-0.724339, 0.686797, 0.060353,
		35.411545, 35.617516, 41.965275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288273, 34.918365, 41.526611>,  <35.918579, 35.136757, 41.923027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288273, 34.918365, 41.526611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307289, 35.317516, 41.544388>,  <35.318699, 35.557007, 41.555054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307289, 35.317516, 41.544388>,  <35.288273, 34.918365, 41.526611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307289, 35.317516, 41.544388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013422, 0.043847, -0.998948,
		-0.998779, 0.048084, -0.011309,
		0.047538, 0.997880, 0.044439,
		35.321552, 35.616882, 41.557720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824314, 35.139473, 41.088715>,  <35.288273, 34.918365, 41.526611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824314, 35.139473, 41.088715> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.063759, 35.457878, 41.124546>,  <35.207424, 35.648922, 41.146046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.063759, 35.457878, 41.124546>,  <34.824314, 35.139473, 41.088715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063759, 35.457878, 41.124546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168489, -0.015791, -0.985577,
		-0.783118, 0.605073, -0.143572,
		0.598613, 0.796014, 0.089582,
		35.243343, 35.696682, 41.151421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636662, 35.584557, 40.602459>,  <34.824314, 35.139473, 41.088715>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636662, 35.584557, 40.602459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005875, 35.714699, 40.684589>,  <35.227402, 35.792786, 40.733868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005875, 35.714699, 40.684589>,  <34.636662, 35.584557, 40.602459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005875, 35.714699, 40.684589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215336, 0.005371, -0.976525,
		-0.318824, 0.945576, -0.065104,
		0.923029, 0.325359, 0.205329,
		35.282784, 35.812305, 40.746189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762047, 36.117775, 40.174149>,  <34.636662, 35.584557, 40.602459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762047, 36.117775, 40.174149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.142681, 36.043602, 40.272209>,  <35.371063, 35.999100, 40.331047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.142681, 36.043602, 40.272209>,  <34.762047, 36.117775, 40.174149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142681, 36.043602, 40.272209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272767, 0.141714, -0.951586,
		0.141714, 0.972385, 0.185433,
		0.951586, -0.185433, 0.245152,
		35.428158, 35.987972, 40.345757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119621, 36.694485, 39.810673>,  <34.762047, 36.117775, 40.174149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119621, 36.694485, 39.810673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.364830, 36.385918, 39.878922>,  <35.511955, 36.200775, 39.919872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.364830, 36.385918, 39.878922>,  <35.119621, 36.694485, 39.810673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364830, 36.385918, 39.878922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343647, 0.065885, -0.936785,
		0.711413, 0.632906, 0.305485,
		0.613024, -0.771420, 0.170625,
		35.548737, 36.154491, 39.930107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772804, 36.925529, 39.698406>,  <35.119621, 36.694485, 39.810673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772804, 36.925529, 39.698406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811455, 36.528229, 39.672745>,  <35.834644, 36.289848, 39.657349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811455, 36.528229, 39.672745>,  <35.772804, 36.925529, 39.698406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811455, 36.528229, 39.672745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356575, 0.094716, -0.929453,
		0.929257, 0.066932, 0.363321,
		0.096622, -0.993252, -0.064149,
		35.840443, 36.230255, 39.653500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400852, 36.881252, 39.573494>,  <35.772804, 36.925529, 39.698406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400852, 36.881252, 39.573494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273891, 36.522423, 39.450527>,  <36.197716, 36.307125, 39.376747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273891, 36.522423, 39.450527>,  <36.400852, 36.881252, 39.573494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273891, 36.522423, 39.450527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444500, 0.145621, -0.883863,
		0.837661, -0.417187, 0.352531,
		-0.317401, -0.897078, -0.307421,
		36.178673, 36.253300, 39.358299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960621, 36.474964, 39.403713>,  <36.400852, 36.881252, 39.573494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960621, 36.474964, 39.403713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659874, 36.291439, 39.214321>,  <36.479424, 36.181324, 39.100685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.659874, 36.291439, 39.214321>,  <36.960621, 36.474964, 39.403713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659874, 36.291439, 39.214321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492321, 0.086959, -0.866059,
		0.438533, -0.884267, 0.160502,
		-0.751871, -0.458814, -0.473477,
		36.434315, 36.153793, 39.072277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344921, 36.080246, 38.953327>,  <36.960621, 36.474964, 39.403713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344921, 36.080246, 38.953327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.987305, 36.095692, 38.774796>,  <36.772736, 36.104958, 38.667679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.987305, 36.095692, 38.774796>,  <37.344921, 36.080246, 38.953327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987305, 36.095692, 38.774796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447808, 0.048481, -0.892814,
		-0.012842, -0.998077, -0.060638,
		-0.894038, 0.038619, -0.446325,
		36.719093, 36.107277, 38.640900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463463, 35.771469, 38.200829>,  <37.344921, 36.080246, 38.953327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463463, 35.771469, 38.200829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.125469, 35.983921, 38.175816>,  <36.922672, 36.111393, 38.160809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.125469, 35.983921, 38.175816>,  <37.463463, 35.771469, 38.200829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125469, 35.983921, 38.175816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234223, 0.262420, -0.936096,
		-0.480778, -0.805629, -0.346142,
		-0.844980, 0.531129, -0.062531,
		36.871975, 36.143261, 38.157055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234604, 35.856415, 38.481892>,  <37.463463, 35.771469, 38.200829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234604, 35.856415, 38.481892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.558689, 35.626682, 38.435070>,  <38.753139, 35.488842, 38.406979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.558689, 35.626682, 38.435070>,  <38.234604, 35.856415, 38.481892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558689, 35.626682, 38.435070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158211, 0.022003, 0.987160,
		-0.564379, -0.818329, 0.108692,
		0.810214, -0.574329, -0.117050,
		38.801754, 35.454384, 38.399956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134647, 35.286201, 38.910023>,  <38.234604, 35.856415, 38.481892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134647, 35.286201, 38.910023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.527771, 35.280918, 38.836361>,  <38.763645, 35.277748, 38.792164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.527771, 35.280918, 38.836361>,  <38.134647, 35.286201, 38.910023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527771, 35.280918, 38.836361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180914, -0.130143, 0.974850,
		-0.036840, -0.991407, -0.125517,
		0.982809, -0.013206, -0.184154,
		38.822613, 35.276955, 38.781116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500420, 34.679802, 39.228840>,  <38.134647, 35.286201, 38.910023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500420, 34.679802, 39.228840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.806400, 34.923100, 39.144089>,  <38.989986, 35.069077, 39.093239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.806400, 34.923100, 39.144089>,  <38.500420, 34.679802, 39.228840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806400, 34.923100, 39.144089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443208, -0.258388, 0.858372,
		0.467353, -0.750517, -0.467232,
		0.764950, 0.608244, -0.211876,
		39.035885, 35.105572, 39.080524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144234, 34.297962, 39.190140>,  <38.500420, 34.679802, 39.228840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.144234, 34.297962, 39.190140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195972, 34.674107, 39.315994>,  <39.227016, 34.899792, 39.391506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.195972, 34.674107, 39.315994>,  <39.144234, 34.297962, 39.190140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195972, 34.674107, 39.315994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233411, -0.337261, 0.912017,
		0.963737, -0.044525, -0.263112,
		0.129345, 0.940358, 0.314638,
		39.234776, 34.956215, 39.410385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649406, 34.285217, 39.738674>,  <39.144234, 34.297962, 39.190140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649406, 34.285217, 39.738674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.502094, 34.652096, 39.799492>,  <39.413708, 34.872223, 39.835983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.502094, 34.652096, 39.799492>,  <39.649406, 34.285217, 39.738674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502094, 34.652096, 39.799492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214922, -0.075122, 0.973738,
		0.904532, 0.391287, -0.169460,
		-0.368280, 0.917198, 0.152046,
		39.391609, 34.927254, 39.845104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144939, 34.536274, 40.152027>,  <39.649406, 34.285217, 39.738674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144939, 34.536274, 40.152027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.817398, 34.759983, 40.203712>,  <39.620872, 34.894211, 40.234726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.817398, 34.759983, 40.203712>,  <40.144939, 34.536274, 40.152027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817398, 34.759983, 40.203712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109697, -0.068490, 0.991603,
		0.563429, 0.826148, -0.005268,
		-0.818849, 0.559276, 0.129215,
		39.571743, 34.927765, 40.242477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353806, 34.989967, 40.644173>,  <40.144939, 34.536274, 40.152027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353806, 34.989967, 40.644173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.954823, 35.007099, 40.666950>,  <39.715431, 35.017380, 40.680618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.954823, 35.007099, 40.666950>,  <40.353806, 34.989967, 40.644173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954823, 35.007099, 40.666950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063111, 0.159964, 0.985103,
		0.033083, 0.986193, -0.162260,
		-0.997458, 0.042831, 0.056948,
		39.655586, 35.019947, 40.684036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192848, 35.497517, 41.203957>,  <40.353806, 34.989967, 40.644173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192848, 35.497517, 41.203957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.847202, 35.301258, 41.159115>,  <39.639812, 35.183502, 41.132210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.847202, 35.301258, 41.159115>,  <40.192848, 35.497517, 41.203957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847202, 35.301258, 41.159115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037689, -0.159040, 0.986552,
		-0.501878, 0.856722, 0.118937,
		-0.864117, -0.490646, -0.112108,
		39.587967, 35.154064, 41.125484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833393, 35.638615, 41.797432>,  <40.192848, 35.497517, 41.203957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833393, 35.638615, 41.797432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.629543, 35.329105, 41.646938>,  <39.507233, 35.143398, 41.556641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.629543, 35.329105, 41.646938>,  <39.833393, 35.638615, 41.797432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629543, 35.329105, 41.646938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271480, -0.270335, 0.923698,
		-0.816447, 0.572877, -0.072297,
		-0.509621, -0.773778, -0.376238,
		39.476658, 35.096973, 41.534065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103085, 35.622425, 42.057930>,  <39.833393, 35.638615, 41.797432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103085, 35.622425, 42.057930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.156345, 35.239582, 41.954994>,  <39.188301, 35.009876, 41.893234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.156345, 35.239582, 41.954994>,  <39.103085, 35.622425, 42.057930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156345, 35.239582, 41.954994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361585, -0.288661, 0.886527,
		-0.922783, -0.024990, -0.384510,
		0.133148, -0.957105, -0.257336,
		39.196289, 34.952450, 41.877792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485798, 35.204144, 42.234550>,  <39.103085, 35.622425, 42.057930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485798, 35.204144, 42.234550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.782932, 34.940815, 42.185879>,  <38.961212, 34.782818, 42.156673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.782932, 34.940815, 42.185879>,  <38.485798, 35.204144, 42.234550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782932, 34.940815, 42.185879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248567, -0.439982, 0.862920,
		-0.621614, -0.610764, -0.490472,
		0.742839, -0.658318, -0.121683,
		39.005783, 34.743320, 42.149376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153622, 34.525742, 42.375217>,  <38.485798, 35.204144, 42.234550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153622, 34.525742, 42.375217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547386, 34.482689, 42.430851>,  <38.783646, 34.456856, 42.464230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547386, 34.482689, 42.430851>,  <38.153622, 34.525742, 42.375217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547386, 34.482689, 42.430851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172585, -0.439101, 0.881706,
		-0.033829, -0.891967, -0.450833,
		0.984414, -0.107634, 0.139085,
		38.842709, 34.450397, 42.472576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375069, 33.781345, 42.461594>,  <38.153622, 34.525742, 42.375217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375069, 33.781345, 42.461594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.569206, 34.068794, 42.660801>,  <38.685688, 34.241264, 42.780323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.569206, 34.068794, 42.660801>,  <38.375069, 33.781345, 42.461594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569206, 34.068794, 42.660801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260967, -0.424569, 0.866970,
		0.834469, -0.550743, -0.018524,
		0.485343, 0.718626, 0.498015,
		38.714809, 34.284382, 42.810207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758232, 33.425953, 43.041336>,  <38.375069, 33.781345, 42.461594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758232, 33.425953, 43.041336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726028, 33.808445, 43.153862>,  <38.706707, 34.037941, 43.221378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726028, 33.808445, 43.153862>,  <38.758232, 33.425953, 43.041336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726028, 33.808445, 43.153862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028599, -0.279901, 0.959603,
		0.996343, 0.085306, -0.004812,
		-0.080513, 0.956231, 0.281317,
		38.701874, 34.095314, 43.238258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206684, 33.465786, 43.595810>,  <38.758232, 33.425953, 43.041336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206684, 33.465786, 43.595810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.982574, 33.793839, 43.642254>,  <38.848110, 33.990669, 43.670120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.982574, 33.793839, 43.642254>,  <39.206684, 33.465786, 43.595810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982574, 33.793839, 43.642254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039664, -0.166576, 0.985231,
		0.827358, 0.547393, 0.125858,
		-0.560273, 0.820130, 0.116106,
		38.814491, 34.039879, 43.677086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384201, 33.817524, 44.165337>,  <39.206684, 33.465786, 43.595810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384201, 33.817524, 44.165337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.019787, 33.975578, 44.118206>,  <38.801140, 34.070412, 44.089928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.019787, 33.975578, 44.118206>,  <39.384201, 33.817524, 44.165337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019787, 33.975578, 44.118206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073667, 0.125177, 0.989396,
		0.405693, 0.910055, -0.084933,
		-0.911036, 0.395134, -0.117824,
		38.746475, 34.094120, 44.082859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386341, 34.463718, 44.678104>,  <39.384201, 33.817524, 44.165337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386341, 34.463718, 44.678104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.006020, 34.364613, 44.603722>,  <38.777824, 34.305149, 44.559093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.006020, 34.364613, 44.603722>,  <39.386341, 34.463718, 44.678104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006020, 34.364613, 44.603722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230161, 0.163204, 0.959370,
		-0.207348, 0.954975, -0.212201,
		-0.950806, -0.247764, -0.185958,
		38.720779, 34.290283, 44.547935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957310, 34.797352, 45.234829>,  <39.386341, 34.463718, 44.678104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957310, 34.797352, 45.234829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.728943, 34.510132, 45.075603>,  <38.591923, 34.337799, 44.980068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.728943, 34.510132, 45.075603>,  <38.957310, 34.797352, 45.234829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728943, 34.510132, 45.075603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384020, -0.194989, 0.902501,
		-0.725657, 0.668122, -0.164422,
		-0.570920, -0.718048, -0.398067,
		38.557667, 34.294716, 44.956184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.199730, 34.911915, 45.553394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.237957, 34.532230, 45.433487>,  <38.260895, 34.304420, 45.361542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.237957, 34.532230, 45.433487>,  <38.199730, 34.911915, 45.553394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237957, 34.532230, 45.433487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525572, -0.303867, 0.794632,
		-0.845364, 0.081606, -0.527920,
		0.095570, -0.949213, -0.299768,
		38.266628, 34.247467, 45.343555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608681, 34.579308, 45.686882>,  <38.199730, 34.911915, 45.553394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608681, 34.579308, 45.686882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.821552, 34.244789, 45.634121>,  <37.949276, 34.044079, 45.602463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.821552, 34.244789, 45.634121>,  <37.608681, 34.579308, 45.686882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821552, 34.244789, 45.634121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436619, -0.404578, 0.803542,
		-0.725365, -0.370033, -0.580449,
		0.532174, -0.836297, -0.131903,
		37.981205, 33.993900, 45.594551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142876, 34.046146, 45.877304>,  <37.608681, 34.579308, 45.686882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142876, 34.046146, 45.877304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505745, 33.877865, 45.874657>,  <37.723469, 33.776897, 45.873070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.505745, 33.877865, 45.874657>,  <37.142876, 34.046146, 45.877304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505745, 33.877865, 45.874657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271206, -0.596691, 0.755253,
		-0.321684, -0.683352, -0.655400,
		0.907175, -0.420701, -0.006616,
		37.777897, 33.751656, 45.872673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022583, 33.393112, 45.768490>,  <37.142876, 34.046146, 45.877304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022583, 33.393112, 45.768490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380318, 33.430817, 45.943428>,  <37.594959, 33.453438, 46.048389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380318, 33.430817, 45.943428>,  <37.022583, 33.393112, 45.768490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380318, 33.430817, 45.943428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243731, -0.717095, 0.652969,
		0.375170, -0.690571, -0.618352,
		0.894339, 0.094263, 0.437347,
		37.648621, 33.459095, 46.074631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253197, 32.734875, 45.738914>,  <37.022583, 33.393112, 45.768490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253197, 32.734875, 45.738914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.426998, 32.936848, 46.037243>,  <37.531281, 33.058033, 46.216240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.426998, 32.936848, 46.037243>,  <37.253197, 32.734875, 45.738914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426998, 32.936848, 46.037243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287865, -0.706783, 0.646213,
		0.853429, -0.495476, -0.161745,
		0.434502, 0.504936, 0.745820,
		37.557350, 33.088329, 46.260990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539604, 32.197838, 46.091282>,  <37.253197, 32.734875, 45.738914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539604, 32.197838, 46.091282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543671, 32.520191, 46.328075>,  <37.546112, 32.713604, 46.470150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.543671, 32.520191, 46.328075>,  <37.539604, 32.197838, 46.091282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543671, 32.520191, 46.328075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197932, -0.578677, 0.791174,
		0.980163, -0.125216, 0.153627,
		0.010168, 0.805887, 0.591982,
		37.546722, 32.761959, 46.505669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060432, 32.064121, 46.631989>,  <37.539604, 32.197838, 46.091282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060432, 32.064121, 46.631989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.769867, 32.308632, 46.757629>,  <37.595528, 32.455338, 46.833012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.769867, 32.308632, 46.757629>,  <38.060432, 32.064121, 46.631989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769867, 32.308632, 46.757629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126775, -0.568375, 0.812944,
		0.675462, 0.550715, 0.490371,
		-0.726415, 0.611280, 0.314098,
		37.551941, 32.492016, 46.851860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159008, 31.996363, 47.342808>,  <38.060432, 32.064121, 46.631989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159008, 31.996363, 47.342808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809353, 32.190475, 47.334972>,  <37.599560, 32.306942, 47.330269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.809353, 32.190475, 47.334972>,  <38.159008, 31.996363, 47.342808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809353, 32.190475, 47.334972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187044, -0.299148, 0.935695,
		0.448215, 0.821591, 0.352266,
		-0.874138, 0.485281, -0.019591,
		37.547112, 32.336060, 47.329094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093945, 32.350990, 47.969761>,  <38.159008, 31.996363, 47.342808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093945, 32.350990, 47.969761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.715919, 32.361282, 47.839405>,  <37.489105, 32.367458, 47.761192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.715919, 32.361282, 47.839405>,  <38.093945, 32.350990, 47.969761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715919, 32.361282, 47.839405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315238, -0.335640, 0.887677,
		-0.086543, 0.941639, 0.325309,
		-0.945058, 0.025727, -0.325888,
		37.432404, 32.368999, 47.741638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770981, 32.780064, 48.393200>,  <38.093945, 32.350990, 47.969761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770981, 32.780064, 48.393200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.491283, 32.528740, 48.256794>,  <37.323467, 32.377945, 48.174950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.491283, 32.528740, 48.256794>,  <37.770981, 32.780064, 48.393200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491283, 32.528740, 48.256794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233838, -0.249756, 0.939650,
		-0.675562, 0.736782, 0.027717,
		-0.699240, -0.628310, -0.341014,
		37.281513, 32.340248, 48.154491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296356, 32.798542, 48.884171>,  <37.770981, 32.780064, 48.393200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296356, 32.798542, 48.884171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.117825, 32.490761, 48.701424>,  <37.010704, 32.306091, 48.591774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.117825, 32.490761, 48.701424>,  <37.296356, 32.798542, 48.884171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117825, 32.490761, 48.701424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342871, -0.324539, 0.881541,
		-0.826578, 0.550104, -0.118973,
		-0.446328, -0.769455, -0.456871,
		36.983925, 32.259926, 48.564362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605145, 32.751118, 49.122551>,  <37.296356, 32.798542, 48.884171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605145, 32.751118, 49.122551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707581, 32.389534, 48.985569>,  <36.769043, 32.172585, 48.903381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.707581, 32.389534, 48.985569>,  <36.605145, 32.751118, 49.122551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707581, 32.389534, 48.985569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299917, -0.411085, 0.860848,
		-0.918950, -0.117745, -0.376387,
		0.256087, -0.903961, -0.342453,
		36.784409, 32.118347, 48.882832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009003, 32.236481, 49.300568>,  <36.605145, 32.751118, 49.122551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009003, 32.236481, 49.300568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.354656, 32.039032, 49.261333>,  <36.562046, 31.920563, 49.237793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.354656, 32.039032, 49.261333>,  <36.009003, 32.236481, 49.300568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354656, 32.039032, 49.261333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136973, -0.418219, 0.897960,
		-0.484270, -0.762519, -0.429008,
		0.864130, -0.493618, -0.098087,
		36.613895, 31.890947, 49.231907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808144, 31.544914, 49.396667>,  <36.009003, 32.236481, 49.300568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808144, 31.544914, 49.396667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.204136, 31.549326, 49.452988>,  <36.441730, 31.551973, 49.486778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.204136, 31.549326, 49.452988>,  <35.808144, 31.544914, 49.396667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204136, 31.549326, 49.452988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106083, -0.600068, 0.792884,
		0.093235, -0.799873, -0.592883,
		0.989976, 0.011029, 0.140800,
		36.501129, 31.552635, 49.495228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003689, 30.849173, 49.561245>,  <35.808144, 31.544914, 49.396667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003689, 30.849173, 49.561245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.349892, 31.005894, 49.686073>,  <36.557613, 31.099926, 49.760971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.349892, 31.005894, 49.686073>,  <36.003689, 30.849173, 49.561245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349892, 31.005894, 49.686073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058468, -0.697787, 0.713915,
		0.497471, -0.599653, -0.626848,
		0.865508, 0.391803, 0.312068,
		36.609543, 31.123434, 49.779694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489521, 30.266840, 49.636005>,  <36.003689, 30.849173, 49.561245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489521, 30.266840, 49.636005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.655731, 30.558479, 49.853539>,  <36.755455, 30.733463, 49.984058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.655731, 30.558479, 49.853539>,  <36.489521, 30.266840, 49.636005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655731, 30.558479, 49.853539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245774, -0.665653, 0.704628,
		0.875749, -0.159128, -0.455787,
		0.415522, 0.729099, 0.543835,
		36.780388, 30.777208, 50.016689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143330, 30.021030, 49.876671>,  <36.489521, 30.266840, 49.636005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143330, 30.021030, 49.876671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.067188, 30.335653, 50.111649>,  <37.021503, 30.524427, 50.252636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.067188, 30.335653, 50.111649>,  <37.143330, 30.021030, 49.876671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067188, 30.335653, 50.111649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254559, -0.538374, 0.803339,
		0.948137, 0.302459, -0.097743,
		-0.190355, 0.786557, 0.587446,
		37.010082, 30.571621, 50.287884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719086, 30.077360, 50.361568>,  <37.143330, 30.021030, 49.876671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719086, 30.077360, 50.361568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407314, 30.282667, 50.505260>,  <37.220253, 30.405851, 50.591476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.407314, 30.282667, 50.505260>,  <37.719086, 30.077360, 50.361568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407314, 30.282667, 50.505260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076097, -0.491591, 0.867495,
		0.621852, 0.703487, 0.344102,
		-0.779429, 0.513268, 0.359230,
		37.173485, 30.436647, 50.613029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928524, 30.391964, 51.035130>,  <37.719086, 30.077360, 50.361568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928524, 30.391964, 51.035130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.531666, 30.342432, 51.028080>,  <37.293552, 30.312714, 51.023849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.531666, 30.342432, 51.028080>,  <37.928524, 30.391964, 51.035130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531666, 30.342432, 51.028080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042041, -0.462870, 0.885429,
		-0.117800, 0.877735, 0.464440,
		-0.992147, -0.123829, -0.017625,
		37.234020, 30.305283, 51.022793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596714, 30.654055, 51.650814>,  <37.928524, 30.391964, 51.035130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596714, 30.654055, 51.650814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.320469, 30.388811, 51.535339>,  <37.154720, 30.229666, 51.466057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.320469, 30.388811, 51.535339>,  <37.596714, 30.654055, 51.650814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320469, 30.388811, 51.535339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004386, -0.402994, 0.915192,
		-0.723207, 0.630781, 0.281223,
		-0.690617, -0.663107, -0.288682,
		37.113285, 30.189878, 51.448734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260948, 30.415277, 52.292873>,  <37.596714, 30.654055, 51.650814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260948, 30.415277, 52.292873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128307, 30.146173, 52.028316>,  <37.048725, 29.984711, 51.869583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128307, 30.146173, 52.028316>,  <37.260948, 30.415277, 52.292873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128307, 30.146173, 52.028316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102766, -0.671125, 0.734187,
		-0.937807, 0.311423, 0.153407,
		-0.331599, -0.672760, -0.661389,
		37.028828, 29.944345, 51.829899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820629, 29.939705, 52.732792>,  <37.260948, 30.415277, 52.292873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820629, 29.939705, 52.732792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.842213, 29.713795, 52.403400>,  <36.855164, 29.578249, 52.205765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.842213, 29.713795, 52.403400>,  <36.820629, 29.939705, 52.732792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.842213, 29.713795, 52.403400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072739, -0.824712, 0.560857,
		-0.995890, 0.029634, -0.085585,
		0.053963, -0.564777, -0.823478,
		36.858402, 29.544361, 52.156357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244846, 29.466209, 52.750454>,  <36.820629, 29.939705, 52.732792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244846, 29.466209, 52.750454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555031, 29.325027, 52.541042>,  <36.741142, 29.240318, 52.415394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555031, 29.325027, 52.541042>,  <36.244846, 29.466209, 52.750454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555031, 29.325027, 52.541042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048957, -0.793055, 0.607179,
		-0.629494, -0.496474, -0.597704,
		0.775461, -0.352954, -0.523529,
		36.787670, 29.219141, 52.383984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517345, 29.636847, 52.923405>,  <36.244846, 29.466209, 52.750454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517345, 29.636847, 52.923405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.140110, 29.769827, 52.926590>,  <34.913769, 29.849615, 52.928501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.140110, 29.769827, 52.926590>,  <35.517345, 29.636847, 52.923405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140110, 29.769827, 52.926590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222230, 0.647872, -0.728612,
		-0.247386, -0.685375, -0.684880,
		-0.943088, 0.332450, 0.007963,
		34.857185, 29.869562, 52.928978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440414, 29.817072, 52.261257>,  <35.517345, 29.636847, 52.923405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440414, 29.817072, 52.261257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.174545, 30.006287, 52.492580>,  <35.015022, 30.119816, 52.631374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.174545, 30.006287, 52.492580>,  <35.440414, 29.817072, 52.261257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174545, 30.006287, 52.492580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032445, 0.791584, -0.610198,
		-0.746428, -0.386820, -0.541494,
		-0.664675, 0.473038, 0.578310,
		34.975143, 30.148197, 52.666073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815094, 29.883257, 51.884686>,  <35.440414, 29.817072, 52.261257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815094, 29.883257, 51.884686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.818947, 30.179380, 52.153564>,  <34.821259, 30.357054, 52.314892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.818947, 30.179380, 52.153564>,  <34.815094, 29.883257, 51.884686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818947, 30.179380, 52.153564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096202, 0.669796, -0.736287,
		-0.995315, -0.057578, 0.077668,
		0.009628, 0.740309, 0.672198,
		34.821835, 30.401474, 52.355225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404221, 30.320637, 51.608654>,  <34.815094, 29.883257, 51.884686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404221, 30.320637, 51.608654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.577175, 30.558664, 51.879635>,  <34.680950, 30.701481, 52.042221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.577175, 30.558664, 51.879635>,  <34.404221, 30.320637, 51.608654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577175, 30.558664, 51.879635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290158, 0.803174, -0.520307,
		-0.853726, 0.028408, 0.519947,
		0.432389, 0.595067, 0.677448,
		34.706890, 30.737185, 52.082870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904522, 30.859928, 51.781612>,  <34.404221, 30.320637, 51.608654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904522, 30.859928, 51.781612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.259647, 31.014034, 51.882298>,  <34.472721, 31.106499, 51.942711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.259647, 31.014034, 51.882298>,  <33.904522, 30.859928, 51.781612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259647, 31.014034, 51.882298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199508, 0.815101, -0.543881,
		-0.414713, 0.432645, 0.800520,
		0.887812, 0.385265, 0.251717,
		34.525990, 31.129614, 51.957813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737125, 31.482864, 51.963070>,  <33.904522, 30.859928, 51.781612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737125, 31.482864, 51.963070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130661, 31.500597, 51.893677>,  <34.366783, 31.511236, 51.852039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130661, 31.500597, 51.893677>,  <33.737125, 31.482864, 51.963070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130661, 31.500597, 51.893677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123858, 0.868163, -0.480575,
		0.129307, 0.494295, 0.859623,
		0.983839, 0.044330, -0.173482,
		34.425812, 31.513895, 51.841633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879196, 32.199181, 52.000065>,  <33.737125, 31.482864, 51.963070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879196, 32.199181, 52.000065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.158550, 32.010647, 51.784622>,  <34.326160, 31.897526, 51.655357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.158550, 32.010647, 51.784622>,  <33.879196, 32.199181, 52.000065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158550, 32.010647, 51.784622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058279, 0.787490, -0.613566,
		0.713347, 0.397115, 0.577439,
		0.698383, -0.471338, -0.538610,
		34.368065, 31.869246, 51.623039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230919, 32.731083, 51.817120>,  <33.879196, 32.199181, 52.000065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230919, 32.731083, 51.817120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.343304, 32.432182, 51.576229>,  <34.410736, 32.252842, 51.431694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.343304, 32.432182, 51.576229>,  <34.230919, 32.731083, 51.817120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343304, 32.432182, 51.576229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076559, 0.642958, -0.762065,
		0.956661, 0.168004, 0.237855,
		0.280961, -0.747248, -0.602231,
		34.427593, 32.208008, 51.395561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662922, 33.046951, 51.264492>,  <34.230919, 32.731083, 51.817120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662922, 33.046951, 51.264492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625347, 32.683231, 51.102333>,  <34.602802, 32.465000, 51.005035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625347, 32.683231, 51.102333>,  <34.662922, 33.046951, 51.264492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625347, 32.683231, 51.102333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082567, 0.398683, -0.913365,
		0.992149, -0.119270, 0.037628,
		-0.093935, -0.909300, -0.405401,
		34.597168, 32.410442, 50.980713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244587, 32.817890, 50.792984>,  <34.662922, 33.046951, 51.264492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244587, 32.817890, 50.792984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.905655, 32.637085, 50.681469>,  <34.702297, 32.528603, 50.614559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.905655, 32.637085, 50.681469>,  <35.244587, 32.817890, 50.792984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905655, 32.637085, 50.681469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190573, 0.231202, -0.954059,
		0.495700, -0.861530, -0.109763,
		-0.847327, -0.452009, -0.278791,
		34.651455, 32.501484, 50.597832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443756, 32.613945, 50.048309>,  <35.244587, 32.817890, 50.792984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443756, 32.613945, 50.048309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.048737, 32.553062, 50.064255>,  <34.811726, 32.516533, 50.073822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.048737, 32.553062, 50.064255>,  <35.443756, 32.613945, 50.048309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048737, 32.553062, 50.064255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068594, 0.188493, -0.979676,
		0.141597, -0.970208, -0.196585,
		-0.987545, -0.152204, 0.039861,
		34.752472, 32.507401, 50.076214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272770, 32.095978, 49.517254>,  <35.443756, 32.613945, 50.048309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272770, 32.095978, 49.517254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949753, 32.319801, 49.591835>,  <34.755943, 32.454098, 49.636585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.949753, 32.319801, 49.591835>,  <35.272770, 32.095978, 49.517254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949753, 32.319801, 49.591835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016998, 0.293919, -0.955679,
		-0.589565, -0.774920, -0.227840,
		-0.807542, 0.559562, 0.186457,
		34.707489, 32.487671, 49.647774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815132, 31.896807, 49.067780>,  <35.272770, 32.095978, 49.517254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815132, 31.896807, 49.067780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.716099, 32.268444, 49.177685>,  <34.656681, 32.491425, 49.243626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.716099, 32.268444, 49.177685>,  <34.815132, 31.896807, 49.067780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716099, 32.268444, 49.177685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094029, 0.259207, -0.961233,
		-0.964294, -0.263819, 0.023187,
		-0.247581, 0.929092, 0.274759,
		34.641823, 32.547173, 49.260113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246788, 32.107101, 48.625038>,  <34.815132, 31.896807, 49.067780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246788, 32.107101, 48.625038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.424522, 32.439018, 48.760098>,  <34.531162, 32.638168, 48.841133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.424522, 32.439018, 48.760098>,  <34.246788, 32.107101, 48.625038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424522, 32.439018, 48.760098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087168, 0.335061, -0.938156,
		-0.891609, 0.446290, 0.076549,
		0.444338, 0.829795, 0.337645,
		34.557823, 32.687958, 48.861389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990067, 32.686710, 48.086456>,  <34.246788, 32.107101, 48.625038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990067, 32.686710, 48.086456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.308388, 32.845768, 48.269138>,  <34.499382, 32.941200, 48.378746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.308388, 32.845768, 48.269138>,  <33.990067, 32.686710, 48.086456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308388, 32.845768, 48.269138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190684, 0.551274, -0.812242,
		-0.574750, 0.733471, 0.362882,
		0.795803, 0.397640, 0.456705,
		34.547131, 32.965061, 48.406151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035610, 33.269009, 47.863941>,  <33.990067, 32.686710, 48.086456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035610, 33.269009, 47.863941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.407421, 33.272518, 48.011402>,  <34.630508, 33.274624, 48.099876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.407421, 33.272518, 48.011402>,  <34.035610, 33.269009, 47.863941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407421, 33.272518, 48.011402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335480, 0.394886, -0.855288,
		-0.153080, 0.918688, 0.364114,
		0.929527, 0.008774, 0.368650,
		34.686279, 33.275150, 48.121998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389942, 33.936741, 47.783615>,  <34.035610, 33.269009, 47.863941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389942, 33.936741, 47.783615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703995, 33.694225, 47.834194>,  <34.892426, 33.548717, 47.864544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.703995, 33.694225, 47.834194>,  <34.389942, 33.936741, 47.783615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.703995, 33.694225, 47.834194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487057, 0.478320, -0.730743,
		0.382558, 0.635315, 0.670839,
		0.785128, -0.606288, 0.126449,
		34.939533, 33.512341, 47.872128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901577, 34.374416, 47.877682>,  <34.389942, 33.936741, 47.783615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901577, 34.374416, 47.877682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.036610, 34.026562, 47.733582>,  <35.117630, 33.817848, 47.647121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.036610, 34.026562, 47.733582>,  <34.901577, 34.374416, 47.877682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036610, 34.026562, 47.733582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353752, 0.471870, -0.807588,
		0.872296, 0.145185, 0.466927,
		0.337578, -0.869632, -0.360251,
		35.137882, 33.765671, 47.625507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637993, 34.477036, 47.660362>,  <34.901577, 34.374416, 47.877682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637993, 34.477036, 47.660362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.481239, 34.163532, 47.467636>,  <35.387188, 33.975430, 47.352001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.481239, 34.163532, 47.467636>,  <35.637993, 34.477036, 47.660362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481239, 34.163532, 47.467636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311652, 0.379649, -0.871056,
		0.865620, -0.491513, 0.095482,
		-0.391886, -0.783761, -0.481813,
		35.363674, 33.928406, 47.323093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159489, 34.173813, 47.202290>,  <35.637993, 34.477036, 47.660362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159489, 34.173813, 47.202290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.807625, 34.053917, 47.054588>,  <35.596504, 33.981979, 46.965969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.807625, 34.053917, 47.054588>,  <36.159489, 34.173813, 47.202290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807625, 34.053917, 47.054588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279370, 0.302669, -0.911232,
		0.384899, -0.904734, -0.182507,
		-0.879662, -0.299745, -0.369252,
		35.543728, 33.963993, 46.943813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366051, 33.928570, 46.522659>,  <36.159489, 34.173813, 47.202290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366051, 33.928570, 46.522659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.969501, 33.956100, 46.478027>,  <35.731571, 33.972618, 46.451248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.969501, 33.956100, 46.478027>,  <36.366051, 33.928570, 46.522659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969501, 33.956100, 46.478027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130967, 0.480894, -0.866942,
		-0.006011, -0.874073, -0.485757,
		-0.991368, 0.068829, -0.111584,
		35.672092, 33.976749, 46.444553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.420052, 40.128155, 39.046516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.067661, 39.939636, 39.029739>,  <39.856228, 39.826527, 39.019672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.067661, 39.939636, 39.029739>,  <40.420052, 40.128155, 39.046516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067661, 39.939636, 39.029739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443044, -0.790549, -0.422781,
		0.166100, -0.391042, 0.905261,
		-0.880978, -0.471294, -0.041939,
		39.803368, 39.798248, 39.017159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469044, 39.447037, 39.415474>,  <40.420052, 40.128155, 39.046516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469044, 39.447037, 39.415474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.163307, 39.439400, 39.157665>,  <39.979866, 39.434818, 39.002979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.163307, 39.439400, 39.157665>,  <40.469044, 39.447037, 39.415474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163307, 39.439400, 39.157665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387036, -0.813057, -0.434904,
		-0.515734, -0.581871, 0.628844,
		-0.764344, -0.019090, -0.644526,
		39.934006, 39.433674, 38.964306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139946, 38.688713, 39.379227>,  <40.469044, 39.447037, 39.415474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139946, 38.688713, 39.379227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.038528, 38.870781, 39.037807>,  <39.977676, 38.980022, 38.832958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.038528, 38.870781, 39.037807>,  <40.139946, 38.688713, 39.379227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038528, 38.870781, 39.037807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255193, -0.819643, -0.512895,
		-0.933055, -0.347859, 0.091659,
		-0.253543, 0.455168, -0.853544,
		39.962467, 39.007332, 38.781746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796017, 38.108685, 38.958309>,  <40.139946, 38.688713, 39.379227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796017, 38.108685, 38.958309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.895748, 38.385899, 38.687740>,  <39.955589, 38.552227, 38.525398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.895748, 38.385899, 38.687740>,  <39.796017, 38.108685, 38.958309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895748, 38.385899, 38.687740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363375, -0.714393, -0.597998,
		-0.897659, -0.096694, -0.429951,
		0.249331, 0.693032, -0.676418,
		39.970547, 38.593807, 38.484814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550648, 37.930897, 38.255348>,  <39.796017, 38.108685, 38.958309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550648, 37.930897, 38.255348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.851933, 38.184227, 38.184273>,  <40.032703, 38.336224, 38.141628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.851933, 38.184227, 38.184273>,  <39.550648, 37.930897, 38.255348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851933, 38.184227, 38.184273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426267, -0.675704, -0.601431,
		-0.500966, 0.377261, -0.778914,
		0.753212, 0.633322, -0.177691,
		40.077896, 38.374226, 38.130966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645824, 37.873409, 37.612320>,  <39.550648, 37.930897, 38.255348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645824, 37.873409, 37.612320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.991421, 38.024879, 37.745064>,  <40.198776, 38.115761, 37.824711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.991421, 38.024879, 37.745064>,  <39.645824, 37.873409, 37.612320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991421, 38.024879, 37.745064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501370, -0.586274, -0.636326,
		-0.046399, 0.716163, -0.696389,
		0.863988, 0.378674, 0.331860,
		40.250618, 38.138481, 37.844624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081951, 37.972908, 37.019909>,  <39.645824, 37.873409, 37.612320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081951, 37.972908, 37.019909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.348991, 37.973965, 37.317715>,  <40.509216, 37.974598, 37.496399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.348991, 37.973965, 37.317715>,  <40.081951, 37.972908, 37.019909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348991, 37.973965, 37.317715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613065, -0.569350, -0.547715,
		0.422441, 0.822091, -0.381720,
		0.667604, 0.002641, 0.744512,
		40.549274, 37.974758, 37.541069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751595, 37.988632, 36.724308>,  <40.081951, 37.972908, 37.019909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751595, 37.988632, 36.724308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.808578, 37.856350, 37.097477>,  <40.842770, 37.776981, 37.321377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.808578, 37.856350, 37.097477>,  <40.751595, 37.988632, 36.724308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808578, 37.856350, 37.097477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639422, -0.688711, -0.341784,
		0.755542, 0.645219, 0.113349,
		0.142461, -0.330710, 0.932918,
		40.851318, 37.757137, 37.377354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543587, 37.931053, 36.734909>,  <40.751595, 37.988632, 36.724308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543587, 37.931053, 36.734909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.385010, 37.708252, 37.026821>,  <41.289864, 37.574570, 37.201969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.385010, 37.708252, 37.026821>,  <41.543587, 37.931053, 36.734909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.385010, 37.708252, 37.026821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427960, -0.815390, -0.389859,
		0.812209, 0.157761, 0.561629,
		-0.396442, -0.557002, 0.729783,
		41.266079, 37.541153, 37.245754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.066113, 37.511383, 36.834076>,  <41.543587, 37.931053, 36.734909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.066113, 37.511383, 36.834076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.735851, 37.339474, 36.980274>,  <41.537693, 37.236328, 37.067993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.735851, 37.339474, 36.980274>,  <42.066113, 37.511383, 36.834076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735851, 37.339474, 36.980274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249799, -0.859360, -0.446207,
		0.505858, -0.277114, 0.816893,
		-0.825656, -0.429777, 0.365491,
		41.488155, 37.210541, 37.089920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324154, 37.012535, 37.103958>,  <42.066113, 37.511383, 36.834076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324154, 37.012535, 37.103958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.936478, 36.914253, 37.096958>,  <41.703873, 36.855286, 37.092758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.936478, 36.914253, 37.096958>,  <42.324154, 37.012535, 37.103958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.936478, 36.914253, 37.096958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236062, -0.906154, -0.350941,
		0.070373, -0.344258, 0.936234,
		-0.969186, -0.245706, -0.017497,
		41.645721, 36.840542, 37.091709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274269, 36.368641, 37.420208>,  <42.324154, 37.012535, 37.103958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274269, 36.368641, 37.420208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.946365, 36.405502, 37.194111>,  <41.749622, 36.427620, 37.058453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.946365, 36.405502, 37.194111>,  <42.274269, 36.368641, 37.420208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946365, 36.405502, 37.194111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063049, -0.966447, -0.249008,
		-0.569220, -0.239766, 0.786448,
		-0.819764, 0.092156, -0.565238,
		41.700436, 36.433147, 37.024540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945572, 35.698753, 37.383385>,  <42.274269, 36.368641, 37.420208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945572, 35.698753, 37.383385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.804276, 35.887211, 37.060089>,  <41.719498, 36.000286, 36.866112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.804276, 35.887211, 37.060089>,  <41.945572, 35.698753, 37.383385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804276, 35.887211, 37.060089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115199, -0.835452, -0.537354,
		-0.928412, -0.282924, 0.240843,
		-0.353243, 0.471141, -0.808236,
		41.698303, 36.028553, 36.817619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696381, 35.144024, 37.092335>,  <41.945572, 35.698753, 37.383385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696381, 35.144024, 37.092335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.702225, 35.435375, 36.818325>,  <41.705730, 35.610184, 36.653919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.702225, 35.435375, 36.818325>,  <41.696381, 35.144024, 37.092335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702225, 35.435375, 36.818325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156331, -0.678333, -0.717931,
		-0.987597, -0.096604, -0.123775,
		0.014606, 0.728376, -0.685022,
		41.706608, 35.653889, 36.612820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351776, 34.872780, 36.579548>,  <41.696381, 35.144024, 37.092335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.351776, 34.872780, 36.579548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.581120, 35.154610, 36.412292>,  <41.718723, 35.323708, 36.311939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.581120, 35.154610, 36.412292>,  <41.351776, 34.872780, 36.579548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581120, 35.154610, 36.412292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103650, -0.568638, -0.816032,
		-0.812724, 0.424535, -0.399060,
		0.573355, 0.704572, -0.418143,
		41.753124, 35.365982, 36.286850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342403, 34.732929, 35.959080>,  <41.351776, 34.872780, 36.579548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342403, 34.732929, 35.959080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.642132, 34.994469, 35.917126>,  <41.821968, 35.151394, 35.891953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.642132, 34.994469, 35.917126>,  <41.342403, 34.732929, 35.959080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642132, 34.994469, 35.917126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291101, -0.467497, -0.834689,
		-0.594794, 0.594917, -0.540641,
		0.749319, 0.653850, -0.104884,
		41.866928, 35.190624, 35.885662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519634, 34.850849, 35.201996>,  <41.342403, 34.732929, 35.959080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519634, 34.850849, 35.201996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.868732, 34.970810, 35.356079>,  <42.078190, 35.042786, 35.448528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.868732, 34.970810, 35.356079>,  <41.519634, 34.850849, 35.201996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868732, 34.970810, 35.356079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469028, -0.296237, -0.832020,
		-0.135408, 0.906811, -0.399198,
		0.872741, 0.299897, 0.385207,
		42.130554, 35.060780, 35.471642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820606, 35.242886, 34.696789>,  <41.519634, 34.850849, 35.201996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820606, 35.242886, 34.696789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.117706, 35.109924, 34.929283>,  <42.295967, 35.030148, 35.068779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.117706, 35.109924, 34.929283>,  <41.820606, 35.242886, 34.696789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117706, 35.109924, 34.929283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466363, -0.366054, -0.805301,
		0.480450, 0.869201, -0.116863,
		0.742747, -0.332407, 0.581234,
		42.340530, 35.010201, 35.103653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.425110, 35.399662, 34.418453>,  <41.820606, 35.242886, 34.696789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.425110, 35.399662, 34.418453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532963, 35.089725, 34.647160>,  <42.597675, 34.903763, 34.784382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532963, 35.089725, 34.647160>,  <42.425110, 35.399662, 34.418453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532963, 35.089725, 34.647160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558864, -0.357620, -0.748183,
		0.784201, 0.521272, 0.336608,
		0.269629, -0.774844, 0.571766,
		42.613850, 34.857273, 34.818691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.070293, 35.377392, 34.296009>,  <42.425110, 35.399662, 34.418453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.070293, 35.377392, 34.296009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.968761, 35.018017, 34.439331>,  <42.907841, 34.802391, 34.525322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.968761, 35.018017, 34.439331>,  <43.070293, 35.377392, 34.296009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968761, 35.018017, 34.439331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411112, -0.435520, -0.800817,
		0.875531, -0.055973, 0.479908,
		-0.253834, -0.898437, 0.358301,
		42.892612, 34.748486, 34.546822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712898, 34.873711, 34.269306>,  <43.070293, 35.377392, 34.296009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712898, 34.873711, 34.269306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.371677, 34.665291, 34.280632>,  <43.166943, 34.540237, 34.287426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.371677, 34.665291, 34.280632>,  <43.712898, 34.873711, 34.269306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371677, 34.665291, 34.280632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291721, -0.521182, -0.802040,
		0.432660, -0.675926, 0.596599,
		-0.853056, -0.521051, 0.028313,
		43.115761, 34.508976, 34.289127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284061, 35.372200, 34.185066>,  <43.712898, 34.873711, 34.269306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284061, 35.372200, 34.185066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.575798, 35.638577, 34.122345>,  <44.750839, 35.798401, 34.084713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.575798, 35.638577, 34.122345>,  <44.284061, 35.372200, 34.185066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.575798, 35.638577, 34.122345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150912, 0.380149, 0.912531,
		0.667303, -0.641879, 0.377755,
		0.729337, 0.665942, -0.156807,
		44.794598, 35.838360, 34.075302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640404, 35.368248, 34.864990>,  <44.284061, 35.372200, 34.185066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640404, 35.368248, 34.864990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758949, 35.699936, 34.675434>,  <44.830074, 35.898949, 34.561703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758949, 35.699936, 34.675434>,  <44.640404, 35.368248, 34.864990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758949, 35.699936, 34.675434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103114, 0.521058, 0.847270,
		0.949494, -0.202232, 0.239924,
		0.296359, 0.829218, -0.473888,
		44.847858, 35.948700, 34.533268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157417, 35.673477, 35.338531>,  <44.640404, 35.368248, 34.864990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157417, 35.673477, 35.338531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.985912, 35.947994, 35.103527>,  <44.883007, 36.112705, 34.962524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.985912, 35.947994, 35.103527>,  <45.157417, 35.673477, 35.338531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.985912, 35.947994, 35.103527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006132, 0.648095, 0.761535,
		0.903395, 0.330123, -0.273673,
		-0.428766, 0.686288, -0.587510,
		44.857281, 36.153881, 34.927273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.510830, 36.328655, 35.479794>,  <45.157417, 35.673477, 35.338531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.510830, 36.328655, 35.479794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172821, 36.442776, 35.298893>,  <44.970016, 36.511250, 35.190353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172821, 36.442776, 35.298893>,  <45.510830, 36.328655, 35.479794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172821, 36.442776, 35.298893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203095, 0.611145, 0.765019,
		0.494657, 0.738310, -0.458489,
		-0.845025, 0.285305, -0.452254,
		44.919315, 36.528366, 35.163216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579338, 37.028770, 35.530045>,  <45.510830, 36.328655, 35.479794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579338, 37.028770, 35.530045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192959, 36.935749, 35.484684>,  <44.961132, 36.879936, 35.457466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.192959, 36.935749, 35.484684>,  <45.579338, 37.028770, 35.530045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192959, 36.935749, 35.484684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225147, 0.539568, 0.811280,
		-0.127481, 0.809187, -0.573555,
		-0.965949, -0.232557, -0.113401,
		44.903175, 36.865982, 35.450665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.301918, 37.671600, 35.575504>,  <45.579338, 37.028770, 35.530045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.301918, 37.671600, 35.575504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980648, 37.436600, 35.615009>,  <44.787888, 37.295597, 35.638714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.980648, 37.436600, 35.615009>,  <45.301918, 37.671600, 35.575504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980648, 37.436600, 35.615009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319079, 0.564220, 0.761475,
		-0.503095, 0.580081, -0.640626,
		-0.803171, -0.587505, 0.098765,
		44.739697, 37.260349, 35.644638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748333, 38.097172, 35.614651>,  <45.301918, 37.671600, 35.575504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748333, 38.097172, 35.614651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.613026, 37.765881, 35.793362>,  <44.531841, 37.567104, 35.900589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.613026, 37.765881, 35.793362>,  <44.748333, 38.097172, 35.614651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.613026, 37.765881, 35.793362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259289, 0.538418, 0.801795,
		-0.904625, 0.155373, -0.396878,
		-0.338264, -0.828230, 0.446780,
		44.511547, 37.517410, 35.927395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084927, 38.298965, 35.850422>,  <44.748333, 38.097172, 35.614651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084927, 38.298965, 35.850422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.202946, 37.983997, 36.066906>,  <44.273758, 37.795017, 36.196796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.202946, 37.983997, 36.066906>,  <44.084927, 38.298965, 35.850422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.202946, 37.983997, 36.066906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415215, 0.404484, 0.814855,
		-0.860548, -0.465139, -0.207610,
		0.295046, -0.787425, 0.541211,
		44.291458, 37.747768, 36.229271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480450, 38.079742, 36.350609>,  <44.084927, 38.298965, 35.850422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480450, 38.079742, 36.350609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.812683, 37.912682, 36.497959>,  <44.012024, 37.812447, 36.586369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.812683, 37.912682, 36.497959>,  <43.480450, 38.079742, 36.350609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.812683, 37.912682, 36.497959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267389, 0.281169, 0.921655,
		-0.488506, -0.864009, 0.121858,
		0.830581, -0.417650, 0.368380,
		44.061859, 37.787388, 36.608475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238670, 37.632244, 36.871414>,  <43.480450, 38.079742, 36.350609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238670, 37.632244, 36.871414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.621483, 37.690014, 36.971992>,  <43.851170, 37.724674, 37.032341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.621483, 37.690014, 36.971992>,  <43.238670, 37.632244, 36.871414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621483, 37.690014, 36.971992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284110, 0.293551, 0.912748,
		0.058009, -0.944971, 0.321970,
		0.957036, 0.144423, 0.251447,
		43.908592, 37.733341, 37.047428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399788, 37.241608, 37.543011>,  <43.238670, 37.632244, 36.871414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399788, 37.241608, 37.543011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.664959, 37.539482, 37.512093>,  <43.824062, 37.718208, 37.493542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.664959, 37.539482, 37.512093>,  <43.399788, 37.241608, 37.543011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.664959, 37.539482, 37.512093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212014, 0.285738, 0.934561,
		0.718041, -0.603154, 0.347306,
		0.662923, 0.744687, -0.077294,
		43.863834, 37.762890, 37.488903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042908, 37.119759, 38.027897>,  <43.399788, 37.241608, 37.543011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042908, 37.119759, 38.027897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.945656, 37.502853, 37.966419>,  <43.887306, 37.732712, 37.929531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.945656, 37.502853, 37.966419>,  <44.042908, 37.119759, 38.027897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945656, 37.502853, 37.966419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167139, 0.114713, 0.979237,
		0.955486, 0.263769, 0.132186,
		-0.243129, 0.957741, -0.153693,
		43.872719, 37.790176, 37.920311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.882774, 37.420544, 38.734356>,  <44.042908, 37.119759, 38.027897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.882774, 37.420544, 38.734356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.827290, 37.743477, 38.504932>,  <43.793999, 37.937237, 38.367279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.827290, 37.743477, 38.504932>,  <43.882774, 37.420544, 38.734356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827290, 37.743477, 38.504932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288134, 0.521204, 0.803322,
		0.947490, 0.276694, 0.160321,
		-0.138715, 0.807333, -0.573560,
		43.785675, 37.985676, 38.332863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141613, 38.002872, 39.033993>,  <43.882774, 37.420544, 38.734356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141613, 38.002872, 39.033993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.899162, 38.196972, 38.781918>,  <43.753693, 38.313431, 38.630672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.899162, 38.196972, 38.781918>,  <44.141613, 38.002872, 39.033993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.899162, 38.196972, 38.781918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260024, 0.627894, 0.733578,
		0.751662, 0.608507, -0.254407,
		-0.606128, 0.485251, -0.630191,
		43.717323, 38.342548, 38.592861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157253, 38.712593, 39.282417>,  <44.141613, 38.002872, 39.033993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157253, 38.712593, 39.282417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.836510, 38.677528, 39.046001>,  <43.644062, 38.656490, 38.904152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.836510, 38.677528, 39.046001>,  <44.157253, 38.712593, 39.282417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836510, 38.677528, 39.046001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465276, 0.712223, 0.525601,
		0.374879, 0.696458, -0.611892,
		-0.801863, -0.087662, -0.591043,
		43.595951, 38.651230, 38.868690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.936180, 39.366074, 39.161041>,  <44.157253, 38.712593, 39.282417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.936180, 39.366074, 39.161041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.606159, 39.164642, 39.058517>,  <43.408146, 39.043785, 38.997002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.606159, 39.164642, 39.058517>,  <43.936180, 39.366074, 39.161041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.606159, 39.164642, 39.058517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565009, 0.741036, 0.362809,
		0.007233, 0.444155, -0.895921,
		-0.825053, -0.503579, -0.256311,
		43.358643, 39.013569, 38.981625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456978, 39.848965, 38.714546>,  <43.936180, 39.366074, 39.161041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456978, 39.848965, 38.714546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.259106, 39.556271, 38.902100>,  <43.140381, 39.380653, 39.014633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.259106, 39.556271, 38.902100>,  <43.456978, 39.848965, 38.714546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259106, 39.556271, 38.902100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570953, 0.680386, 0.459443,
		-0.655212, -0.040432, -0.754362,
		-0.494681, -0.731738, 0.468882,
		43.110703, 39.336750, 39.042763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804226, 40.003143, 38.689075>,  <43.456978, 39.848965, 38.714546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804226, 40.003143, 38.689075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778046, 39.746883, 38.995090>,  <42.762337, 39.593128, 39.178699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.778046, 39.746883, 38.995090>,  <42.804226, 40.003143, 38.689075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778046, 39.746883, 38.995090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527100, 0.673183, 0.518643,
		-0.847279, -0.369307, -0.381746,
		-0.065447, -0.640654, 0.765036,
		42.758411, 39.554688, 39.224602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237511, 40.132107, 38.981209>,  <42.804226, 40.003143, 38.689075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237511, 40.132107, 38.981209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.400013, 39.913628, 39.274227>,  <42.497517, 39.782539, 39.450039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.400013, 39.913628, 39.274227>,  <42.237511, 40.132107, 38.981209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400013, 39.913628, 39.274227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557573, 0.486953, 0.672302,
		-0.723924, -0.681576, -0.106715,
		0.406260, -0.546197, 0.732545,
		42.521893, 39.749767, 39.493992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690884, 39.913940, 39.426304>,  <42.237511, 40.132107, 38.981209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690884, 39.913940, 39.426304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031193, 39.910896, 39.636497>,  <42.235378, 39.909069, 39.762611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.031193, 39.910896, 39.636497>,  <41.690884, 39.913940, 39.426304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031193, 39.910896, 39.636497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446600, 0.516584, 0.730541,
		-0.277014, -0.856203, 0.436097,
		0.850771, -0.007609, 0.525481,
		42.286423, 39.908615, 39.794140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466557, 39.693371, 40.077755>,  <41.690884, 39.913940, 39.426304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466557, 39.693371, 40.077755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.820400, 39.863186, 40.154938>,  <42.032707, 39.965076, 40.201248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.820400, 39.863186, 40.154938>,  <41.466557, 39.693371, 40.077755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820400, 39.863186, 40.154938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391468, 0.451179, 0.801992,
		0.253414, -0.784988, 0.565310,
		0.884610, 0.424537, 0.192962,
		42.085785, 39.990547, 40.212826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.093647, 34.167126, 42.665375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705162, 34.242912, 42.607628>,  <39.472069, 34.288383, 42.572979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705162, 34.242912, 42.607628>,  <40.093647, 34.167126, 42.665375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705162, 34.242912, 42.607628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191996, 0.263941, -0.945237,
		-0.140983, -0.945748, -0.292720,
		-0.971217, 0.189463, -0.144369,
		39.413795, 34.299751, 42.564316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966045, 33.863708, 42.047192>,  <40.093647, 34.167126, 42.665375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966045, 33.863708, 42.047192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677719, 34.138027, 42.087410>,  <39.504723, 34.302620, 42.111542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677719, 34.138027, 42.087410>,  <39.966045, 33.863708, 42.047192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677719, 34.138027, 42.087410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060170, 0.206425, -0.976611,
		-0.690511, -0.697905, -0.190058,
		-0.720815, 0.685796, 0.100546,
		39.461475, 34.343765, 42.117573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440128, 33.797626, 41.482018>,  <39.966045, 33.863708, 42.047192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440128, 33.797626, 41.482018> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368011, 34.174358, 41.595474>,  <39.324741, 34.400398, 41.663548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368011, 34.174358, 41.595474>,  <39.440128, 33.797626, 41.482018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368011, 34.174358, 41.595474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123155, 0.264484, -0.956494,
		-0.975872, -0.207384, 0.068305,
		-0.180296, 0.941828, 0.283643,
		39.313923, 34.456905, 41.680569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030308, 34.030277, 40.900005>,  <39.440128, 33.797626, 41.482018>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030308, 34.030277, 40.900005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126476, 34.349190, 41.121471>,  <39.184177, 34.540539, 41.254349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126476, 34.349190, 41.121471>,  <39.030308, 34.030277, 40.900005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126476, 34.349190, 41.121471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118931, 0.590291, -0.798381,
		-0.963356, 0.126096, 0.236738,
		0.240417, 0.797281, 0.553663,
		39.198601, 34.588375, 41.287571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482975, 34.500202, 40.859558>,  <39.030308, 34.030277, 40.900005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482975, 34.500202, 40.859558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828114, 34.682083, 40.947868>,  <39.035198, 34.791214, 41.000854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828114, 34.682083, 40.947868>,  <38.482975, 34.500202, 40.859558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828114, 34.682083, 40.947868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030827, 0.483300, -0.874912,
		-0.504527, 0.748107, 0.431030,
		0.862845, 0.454704, 0.220776,
		39.086967, 34.818493, 41.014103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367077, 35.087803, 40.701912>,  <38.482975, 34.500202, 40.859558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367077, 35.087803, 40.701912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766399, 35.066307, 40.692963>,  <39.005993, 35.053410, 40.687595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766399, 35.066307, 40.692963>,  <38.367077, 35.087803, 40.701912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766399, 35.066307, 40.692963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004733, 0.457972, -0.888954,
		0.058020, 0.887341, 0.457450,
		0.998304, -0.053742, -0.022371,
		39.065891, 35.050186, 40.686253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586220, 35.793865, 40.459507>,  <38.367077, 35.087803, 40.701912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586220, 35.793865, 40.459507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878704, 35.532585, 40.380856>,  <39.054195, 35.375816, 40.333664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878704, 35.532585, 40.380856>,  <38.586220, 35.793865, 40.459507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878704, 35.532585, 40.380856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078090, 0.366501, -0.927135,
		0.677671, 0.662573, 0.318997,
		0.731207, -0.653203, -0.196627,
		39.098064, 35.336624, 40.321869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902557, 36.090645, 39.953449>,  <38.586220, 35.793865, 40.459507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902557, 36.090645, 39.953449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073597, 35.729481, 39.935932>,  <39.176220, 35.512783, 39.925423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073597, 35.729481, 39.935932>,  <38.902557, 36.090645, 39.953449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073597, 35.729481, 39.935932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337247, 0.204288, -0.918983,
		0.838704, 0.378185, 0.391857,
		0.427597, -0.902908, -0.043795,
		39.201878, 35.458607, 39.922794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610203, 36.170200, 39.593716>,  <38.902557, 36.090645, 39.953449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610203, 36.170200, 39.593716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496754, 35.792969, 39.524242>,  <39.428684, 35.566631, 39.482559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496754, 35.792969, 39.524242>,  <39.610203, 36.170200, 39.593716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496754, 35.792969, 39.524242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081093, 0.156885, -0.984282,
		0.955502, -0.293245, 0.031981,
		-0.283619, -0.943077, -0.173684,
		39.411667, 35.510044, 39.472137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977592, 35.925613, 39.085514>,  <39.610203, 36.170200, 39.593716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977592, 35.925613, 39.085514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666973, 35.673691, 39.092590>,  <39.480602, 35.522537, 39.096836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666973, 35.673691, 39.092590>,  <39.977592, 35.925613, 39.085514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666973, 35.673691, 39.092590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107468, -0.160067, -0.981239,
		0.620826, -0.760077, 0.191984,
		-0.776547, -0.629811, 0.017690,
		39.434010, 35.484749, 39.097897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058350, 35.358532, 38.480381>,  <39.977592, 35.925613, 39.085514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058350, 35.358532, 38.480381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672543, 35.336494, 38.583668>,  <39.441059, 35.323273, 38.645641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672543, 35.336494, 38.583668>,  <40.058350, 35.358532, 38.480381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672543, 35.336494, 38.583668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249671, -0.127833, -0.959856,
		0.085895, -0.990264, 0.109540,
		-0.964514, -0.055098, 0.258220,
		39.383190, 35.319965, 38.661133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856937, 34.720600, 38.255730>,  <40.058350, 35.358532, 38.480381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856937, 34.720600, 38.255730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515293, 34.921211, 38.310810>,  <39.310307, 35.041580, 38.343857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515293, 34.921211, 38.310810>,  <39.856937, 34.720600, 38.255730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515293, 34.921211, 38.310810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252813, -0.168989, -0.952643,
		-0.454510, -0.848475, 0.271129,
		-0.854111, 0.501531, 0.137698,
		39.259060, 35.071671, 38.352119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268806, 34.596455, 37.913517>,  <39.856937, 34.720600, 38.255730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268806, 34.596455, 37.913517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030437, 34.832294, 37.695435>,  <38.887417, 34.973797, 37.564587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030437, 34.832294, 37.695435>,  <39.268806, 34.596455, 37.913517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030437, 34.832294, 37.695435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091097, 0.724175, 0.683573,
		0.797859, 0.357690, -0.485262,
		-0.595922, 0.589601, -0.545204,
		38.851662, 35.009174, 37.531872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581337, 35.329613, 37.592461>,  <39.268806, 34.596455, 37.913517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581337, 35.329613, 37.592461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184189, 35.347881, 37.636494>,  <38.945900, 35.358845, 37.662914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184189, 35.347881, 37.636494>,  <39.581337, 35.329613, 37.592461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184189, 35.347881, 37.636494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104753, 0.774961, 0.623267,
		-0.056842, 0.630356, -0.774222,
		-0.992873, 0.045674, 0.110082,
		38.886326, 35.361584, 37.669518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435825, 34.968903, 36.837868>,  <39.581337, 35.329613, 37.592461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435825, 34.968903, 36.837868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592922, 34.725967, 36.561638>,  <39.687180, 34.580208, 36.395901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592922, 34.725967, 36.561638>,  <39.435825, 34.968903, 36.837868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592922, 34.725967, 36.561638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221080, -0.791242, 0.570140,
		-0.892678, -0.071249, -0.445028,
		0.392746, -0.607338, -0.690572,
		39.710747, 34.543766, 36.354465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902912, 34.529102, 36.722664>,  <39.435825, 34.968903, 36.837868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902912, 34.529102, 36.722664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250038, 34.345676, 36.646114>,  <39.458313, 34.235622, 36.600185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250038, 34.345676, 36.646114>,  <38.902912, 34.529102, 36.722664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250038, 34.345676, 36.646114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236691, -0.720123, 0.652227,
		-0.436901, -0.520713, -0.733469,
		0.867811, -0.458563, -0.191375,
		39.510380, 34.208107, 36.588703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737076, 33.913170, 36.439259>,  <38.902912, 34.529102, 36.722664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737076, 33.913170, 36.439259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109470, 33.868607, 36.578316>,  <39.332905, 33.841869, 36.661751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109470, 33.868607, 36.578316>,  <38.737076, 33.913170, 36.439259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109470, 33.868607, 36.578316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254377, -0.881021, 0.398867,
		0.261845, -0.459771, -0.848556,
		0.930983, -0.111411, 0.347647,
		39.388763, 33.835182, 36.682610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835213, 33.231308, 36.434238>,  <38.737076, 33.913170, 36.439259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835213, 33.231308, 36.434238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126614, 33.326420, 36.691216>,  <39.301456, 33.383488, 36.845402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126614, 33.326420, 36.691216>,  <38.835213, 33.231308, 36.434238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126614, 33.326420, 36.691216> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166842, -0.847999, 0.503053,
		0.664411, -0.473664, -0.578101,
		0.728507, 0.237782, 0.642447,
		39.345165, 33.397755, 36.883949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363037, 32.602806, 36.429787>,  <38.835213, 33.231308, 36.434238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363037, 32.602806, 36.429787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452080, 32.806698, 36.762199>,  <39.505505, 32.929031, 36.961647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452080, 32.806698, 36.762199>,  <39.363037, 32.602806, 36.429787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452080, 32.806698, 36.762199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241300, -0.854711, 0.459613,
		0.944574, 0.098215, -0.313264,
		0.222609, 0.509729, 0.831036,
		39.518864, 32.959618, 37.011509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976620, 32.378395, 36.705334>,  <39.363037, 32.602806, 36.429787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976620, 32.378395, 36.705334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791981, 32.540192, 37.021133>,  <39.681198, 32.637268, 37.210613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791981, 32.540192, 37.021133>,  <39.976620, 32.378395, 36.705334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791981, 32.540192, 37.021133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079096, -0.867682, 0.490788,
		0.883555, 0.288994, 0.368528,
		-0.461600, 0.404489, 0.789503,
		39.653500, 32.661537, 37.257984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368729, 32.152554, 37.345608>,  <39.976620, 32.378395, 36.705334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368729, 32.152554, 37.345608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999310, 32.269455, 37.444916>,  <39.777657, 32.339596, 37.504501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999310, 32.269455, 37.444916>,  <40.368729, 32.152554, 37.345608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999310, 32.269455, 37.444916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097586, -0.805226, 0.584883,
		0.370849, 0.515942, 0.772188,
		-0.923552, 0.292258, 0.248269,
		39.722244, 32.357132, 37.519398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323292, 32.134506, 38.028877>,  <40.368729, 32.152554, 37.345608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323292, 32.134506, 38.028877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935112, 32.141579, 37.932621>,  <39.702202, 32.145824, 37.874866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935112, 32.141579, 37.932621>,  <40.323292, 32.134506, 38.028877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935112, 32.141579, 37.932621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219646, -0.477570, 0.850695,
		-0.099879, 0.878416, 0.467344,
		-0.970454, 0.017684, -0.240639,
		39.643974, 32.146885, 37.860428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950977, 32.270283, 38.627541>,  <40.323292, 32.134506, 38.028877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950977, 32.270283, 38.627541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675694, 32.111626, 38.384544>,  <39.510525, 32.016430, 38.238747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.675694, 32.111626, 38.384544>,  <39.950977, 32.270283, 38.627541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675694, 32.111626, 38.384544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418022, -0.467587, 0.778858,
		-0.592983, 0.789960, 0.155991,
		-0.688206, -0.396642, -0.607492,
		39.469231, 31.992634, 38.202297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294994, 32.566078, 38.785446>,  <39.950977, 32.270283, 38.627541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294994, 32.566078, 38.785446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258072, 32.194065, 38.643173>,  <39.235916, 31.970856, 38.557808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258072, 32.194065, 38.643173>,  <39.294994, 32.566078, 38.785446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258072, 32.194065, 38.643173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539207, -0.253611, 0.803080,
		-0.837099, 0.265920, -0.478071,
		-0.092311, -0.930036, -0.355684,
		39.230377, 31.915054, 38.536469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640579, 32.343735, 38.989029>,  <39.294994, 32.566078, 38.785446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640579, 32.343735, 38.989029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792461, 31.992313, 38.873116>,  <38.883591, 31.781462, 38.803570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792461, 31.992313, 38.873116>,  <38.640579, 32.343735, 38.989029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792461, 31.992313, 38.873116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531857, -0.463612, 0.708655,
		-0.756934, -0.114960, -0.643300,
		0.379708, -0.878549, -0.289782,
		38.906372, 31.728748, 38.786182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011429, 31.879911, 38.962406>,  <38.640579, 32.343735, 38.989029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011429, 31.879911, 38.962406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333057, 31.642830, 38.943794>,  <38.526035, 31.500580, 38.932629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333057, 31.642830, 38.943794>,  <38.011429, 31.879911, 38.962406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333057, 31.642830, 38.943794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375251, -0.566655, 0.733545,
		-0.461139, -0.572368, -0.678046,
		0.804076, -0.592704, -0.046525,
		38.574280, 31.465019, 38.929836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769764, 31.279083, 39.154236>,  <38.011429, 31.879911, 38.962406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769764, 31.279083, 39.154236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160389, 31.260817, 39.238369>,  <38.394764, 31.249857, 39.288849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160389, 31.260817, 39.238369>,  <37.769764, 31.279083, 39.154236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160389, 31.260817, 39.238369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204321, -0.503899, 0.839249,
		0.067663, -0.862554, -0.501419,
		0.976563, -0.045665, 0.210333,
		38.453358, 31.247116, 39.301468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851570, 30.583574, 39.215641>,  <37.769764, 31.279083, 39.154236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851570, 30.583574, 39.215641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140888, 30.780172, 39.409664>,  <38.314480, 30.898130, 39.526077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140888, 30.780172, 39.409664>,  <37.851570, 30.583574, 39.215641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140888, 30.780172, 39.409664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340088, -0.357798, 0.869667,
		0.600990, -0.793985, -0.091641,
		0.723292, 0.491496, 0.485058,
		38.357876, 30.927622, 39.555183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980980, 29.800774, 39.291557>,  <37.851570, 30.583574, 39.215641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980980, 29.800774, 39.291557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606770, 29.702778, 39.189762>,  <37.382244, 29.643980, 39.128685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606770, 29.702778, 39.189762>,  <37.980980, 29.800774, 39.291557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606770, 29.702778, 39.189762> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106847, 0.490424, -0.864909,
		0.336699, -0.836340, -0.432630,
		-0.935531, -0.244989, -0.254485,
		37.326111, 29.629280, 39.113415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053562, 29.662830, 38.662949>,  <37.980980, 29.800774, 39.291557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053562, 29.662830, 38.662949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656601, 29.704441, 38.689224>,  <37.418423, 29.729408, 38.704990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656601, 29.704441, 38.689224>,  <38.053562, 29.662830, 38.662949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656601, 29.704441, 38.689224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008441, 0.590217, -0.807200,
		-0.122741, -0.800514, -0.586611,
		-0.992403, 0.104028, 0.065687,
		37.358879, 29.735649, 38.708931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869370, 29.670172, 38.001793>,  <38.053562, 29.662830, 38.662949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869370, 29.670172, 38.001793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537827, 29.826006, 38.162403>,  <37.338902, 29.919506, 38.258770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537827, 29.826006, 38.162403>,  <37.869370, 29.670172, 38.001793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537827, 29.826006, 38.162403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155294, 0.529277, -0.834116,
		-0.537476, -0.753717, -0.378194,
		-0.828857, 0.389586, 0.401521,
		37.289169, 29.942881, 38.282860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436817, 29.643309, 37.531010>,  <37.869370, 29.670172, 38.001793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436817, 29.643309, 37.531010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313610, 29.924212, 37.787746>,  <37.239685, 30.092754, 37.941788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313610, 29.924212, 37.787746>,  <37.436817, 29.643309, 37.531010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313610, 29.924212, 37.787746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186773, 0.616876, -0.764578,
		-0.932867, -0.355382, -0.058846,
		-0.308018, 0.702259, 0.641839,
		37.221203, 30.134890, 37.980297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873703, 29.883940, 37.178001>,  <37.436817, 29.643309, 37.531010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873703, 29.883940, 37.178001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963566, 30.162899, 37.450226>,  <37.017483, 30.330275, 37.613560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963566, 30.162899, 37.450226>,  <36.873703, 29.883940, 37.178001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963566, 30.162899, 37.450226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190811, 0.716377, -0.671115,
		-0.955572, 0.020915, 0.294013,
		0.224661, 0.697400, 0.680559,
		37.030964, 30.372118, 37.654392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267990, 30.301453, 37.108688>,  <36.873703, 29.883940, 37.178001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267990, 30.301453, 37.108688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558464, 30.523201, 37.271328>,  <36.732750, 30.656250, 37.368912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558464, 30.523201, 37.271328>,  <36.267990, 30.301453, 37.108688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558464, 30.523201, 37.271328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150889, 0.705523, -0.692438,
		-0.670733, 0.441489, 0.595991,
		0.726189, 0.554369, 0.406601,
		36.776321, 30.689512, 37.393307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985600, 30.967289, 37.350704>,  <36.267990, 30.301453, 37.108688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985600, 30.967289, 37.350704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380215, 31.007925, 37.299431>,  <36.616982, 31.032307, 37.268665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380215, 31.007925, 37.299431>,  <35.985600, 30.967289, 37.350704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380215, 31.007925, 37.299431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156891, 0.809273, -0.566094,
		0.046226, 0.578582, 0.814313,
		0.986534, 0.101590, -0.128184,
		36.676174, 31.038403, 37.260975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055401, 31.638582, 37.517937>,  <35.985600, 30.967289, 37.350704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055401, 31.638582, 37.517937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398655, 31.545221, 37.335011>,  <36.604607, 31.489204, 37.225254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398655, 31.545221, 37.335011>,  <36.055401, 31.638582, 37.517937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398655, 31.545221, 37.335011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117147, 0.778199, -0.616995,
		0.499888, 0.583036, 0.640454,
		0.858131, -0.233401, -0.457313,
		36.656094, 31.475201, 37.197815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481785, 32.273670, 37.398876>,  <36.055401, 31.638582, 37.517937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481785, 32.273670, 37.398876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665810, 32.024227, 37.146065>,  <36.776226, 31.874561, 36.994377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665810, 32.024227, 37.146065>,  <36.481785, 32.273670, 37.398876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665810, 32.024227, 37.146065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005733, 0.713906, -0.700218,
		0.887867, 0.318522, 0.332018,
		0.460064, -0.623604, -0.632027,
		36.803829, 31.837147, 36.956455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060711, 32.661743, 37.109020>,  <36.481785, 32.273670, 37.398876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060711, 32.661743, 37.109020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952843, 32.366280, 36.861904>,  <36.888123, 32.189003, 36.713634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952843, 32.366280, 36.861904>,  <37.060711, 32.661743, 37.109020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952843, 32.366280, 36.861904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108424, 0.660766, -0.742720,
		0.956828, -0.133310, -0.258280,
		-0.269674, -0.738659, -0.617786,
		36.871941, 32.144684, 36.676567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386417, 32.874794, 36.528214>,  <37.060711, 32.661743, 37.109020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386417, 32.874794, 36.528214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109554, 32.608566, 36.416550>,  <36.943436, 32.448830, 36.349552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109554, 32.608566, 36.416550>,  <37.386417, 32.874794, 36.528214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109554, 32.608566, 36.416550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187146, 0.539059, -0.821214,
		0.697058, -0.516169, -0.497674,
		-0.692161, -0.665571, -0.279156,
		36.901905, 32.408894, 36.332802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576023, 32.645313, 35.800476>,  <37.386417, 32.874794, 36.528214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576023, 32.645313, 35.800476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183521, 32.631752, 35.876362>,  <36.948021, 32.623615, 35.921894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183521, 32.631752, 35.876362>,  <37.576023, 32.645313, 35.800476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183521, 32.631752, 35.876362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179712, 0.516448, -0.837249,
		-0.069592, -0.855648, -0.512859,
		-0.981255, -0.033901, 0.189711,
		36.889145, 32.621582, 35.933273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.675121, 27.348825, 41.940773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293926, 27.466015, 41.971703>,  <37.065208, 27.536327, 41.990261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293926, 27.466015, 41.971703>,  <37.675121, 27.348825, 41.940773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293926, 27.466015, 41.971703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035218, 0.146371, -0.988603,
		-0.300951, -0.944851, -0.129172,
		-0.952989, 0.292972, 0.077327,
		37.008030, 27.553905, 41.994900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214340, 26.970598, 41.457005>,  <37.675121, 27.348825, 41.940773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214340, 26.970598, 41.457005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.041767, 27.322645, 41.536259>,  <36.938221, 27.533873, 41.583813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.041767, 27.322645, 41.536259>,  <37.214340, 26.970598, 41.457005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041767, 27.322645, 41.536259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089474, 0.260288, -0.961376,
		-0.897696, -0.397043, -0.191045,
		-0.431434, 0.880118, 0.198135,
		36.912338, 27.586681, 41.595699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974564, 27.158215, 40.805351>,  <37.214340, 26.970598, 41.457005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974564, 27.158215, 40.805351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.877102, 27.507629, 40.973907>,  <36.818626, 27.717278, 41.075039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.877102, 27.507629, 40.973907>,  <36.974564, 27.158215, 40.805351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877102, 27.507629, 40.973907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077923, 0.415446, -0.906274,
		-0.966727, -0.253653, -0.033157,
		-0.243654, 0.873536, 0.421388,
		36.804005, 27.769690, 41.100323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583939, 27.527891, 40.369690>,  <36.974564, 27.158215, 40.805351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583939, 27.527891, 40.369690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.673233, 27.816793, 40.631535>,  <36.726810, 27.990135, 40.788639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.673233, 27.816793, 40.631535>,  <36.583939, 27.527891, 40.369690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673233, 27.816793, 40.631535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068191, 0.681481, -0.728652,
		-0.972376, 0.118026, 0.201385,
		0.223240, 0.722256, 0.654607,
		36.740204, 28.033470, 40.827915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154804, 28.043331, 40.273045>,  <36.583939, 27.527891, 40.369690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154804, 28.043331, 40.273045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.475975, 28.211569, 40.441998>,  <36.668678, 28.312511, 40.543369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.475975, 28.211569, 40.441998>,  <36.154804, 28.043331, 40.273045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475975, 28.211569, 40.441998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016891, 0.692261, -0.721449,
		-0.595834, 0.586407, 0.548733,
		0.802930, 0.420595, 0.422378,
		36.716854, 28.337748, 40.568710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015945, 28.777653, 40.395733>,  <36.154804, 28.043331, 40.273045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015945, 28.777653, 40.395733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.410542, 28.722094, 40.361008>,  <36.647301, 28.688757, 40.340172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.410542, 28.722094, 40.361008>,  <36.015945, 28.777653, 40.395733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410542, 28.722094, 40.361008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033766, 0.691074, -0.721995,
		0.160280, 0.709312, 0.686431,
		0.986494, -0.138900, -0.086815,
		36.706490, 28.680424, 40.334965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334923, 29.528379, 40.445248>,  <36.015945, 28.777653, 40.395733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334923, 29.528379, 40.445248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.596661, 29.275614, 40.279106>,  <36.753704, 29.123955, 40.179420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.596661, 29.275614, 40.279106>,  <36.334923, 29.528379, 40.445248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596661, 29.275614, 40.279106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179551, 0.663387, -0.726415,
		0.734572, 0.400748, 0.547545,
		0.654344, -0.631916, -0.415350,
		36.792965, 29.086039, 40.154503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909328, 29.914223, 40.201145>,  <36.334923, 29.528379, 40.445248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909328, 29.914223, 40.201145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.941692, 29.583662, 39.978249>,  <36.961113, 29.385326, 39.844509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.941692, 29.583662, 39.978249>,  <36.909328, 29.914223, 40.201145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941692, 29.583662, 39.978249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215413, 0.560360, -0.799746,
		0.973165, -0.055327, 0.223357,
		0.080913, -0.826399, -0.557241,
		36.965965, 29.335743, 39.811077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533127, 29.943085, 39.860054>,  <36.909328, 29.914223, 40.201145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533127, 29.943085, 39.860054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327473, 29.676767, 39.643764>,  <37.204079, 29.516977, 39.513992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327473, 29.676767, 39.643764>,  <37.533127, 29.943085, 39.860054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327473, 29.676767, 39.643764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162770, 0.543232, -0.823654,
		0.842122, -0.511484, -0.170924,
		-0.514137, -0.665796, -0.540722,
		37.173233, 29.477028, 39.481548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206757, 30.016211, 39.938328>,  <37.533127, 29.943085, 39.860054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206757, 30.016211, 39.938328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362171, 30.380142, 39.996632>,  <38.455421, 30.598501, 40.031612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.362171, 30.380142, 39.996632>,  <38.206757, 30.016211, 39.938328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362171, 30.380142, 39.996632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083210, -0.192183, 0.977825,
		0.917667, -0.367795, -0.150378,
		0.388539, 0.909831, 0.145756,
		38.478733, 30.653091, 40.040359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790440, 29.918133, 40.262852>,  <38.206757, 30.016211, 39.938328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790440, 29.918133, 40.262852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704498, 30.300869, 40.341125>,  <38.652931, 30.530510, 40.388088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.704498, 30.300869, 40.341125>,  <38.790440, 29.918133, 40.262852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704498, 30.300869, 40.341125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277080, -0.132412, 0.951679,
		0.936516, 0.258696, -0.236671,
		-0.214858, 0.956840, 0.195686,
		38.640041, 30.587921, 40.399830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348164, 30.151712, 40.669048>,  <38.790440, 29.918133, 40.262852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348164, 30.151712, 40.669048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.051079, 30.409184, 40.742867>,  <38.872829, 30.563665, 40.787155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.051079, 30.409184, 40.742867>,  <39.348164, 30.151712, 40.669048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051079, 30.409184, 40.742867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172024, -0.082935, 0.981595,
		0.647137, 0.760789, -0.049131,
		-0.742713, 0.643678, 0.184544,
		38.828266, 30.602287, 40.798229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627907, 30.583241, 41.234158>,  <39.348164, 30.151712, 40.669048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627907, 30.583241, 41.234158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.233807, 30.651096, 41.243206>,  <38.997349, 30.691809, 41.248634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.233807, 30.651096, 41.243206>,  <39.627907, 30.583241, 41.234158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233807, 30.651096, 41.243206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027741, 0.027859, 0.999227,
		0.168877, 0.985113, -0.032154,
		-0.985247, 0.169639, 0.022623,
		38.938232, 30.701988, 41.249992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519749, 31.218298, 41.674904>,  <39.627907, 30.583241, 41.234158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519749, 31.218298, 41.674904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180252, 31.008261, 41.699955>,  <38.976555, 30.882238, 41.714985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.180252, 31.008261, 41.699955>,  <39.519749, 31.218298, 41.674904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180252, 31.008261, 41.699955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015183, 0.094180, 0.995439,
		-0.528594, 0.845819, -0.071962,
		-0.848739, -0.525091, 0.062625,
		38.925629, 30.850733, 41.718742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185501, 31.498392, 42.237053>,  <39.519749, 31.218298, 41.674904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185501, 31.498392, 42.237053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.960194, 31.173244, 42.177761>,  <38.825008, 30.978155, 42.142185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.960194, 31.173244, 42.177761>,  <39.185501, 31.498392, 42.237053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960194, 31.173244, 42.177761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203080, -0.037700, 0.978436,
		-0.800929, 0.581225, -0.143842,
		-0.563268, -0.812869, -0.148230,
		38.791214, 30.929384, 42.133293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619705, 31.608660, 42.747139>,  <39.185501, 31.498392, 42.237053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619705, 31.608660, 42.747139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.610126, 31.226843, 42.628296>,  <38.604382, 30.997753, 42.556988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.610126, 31.226843, 42.628296>,  <38.619705, 31.608660, 42.747139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610126, 31.226843, 42.628296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240375, -0.282981, 0.928515,
		-0.970385, 0.093651, -0.222672,
		-0.023944, -0.954542, -0.297112,
		38.602943, 30.940479, 42.539162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963974, 31.374002, 42.982452>,  <38.619705, 31.608660, 42.747139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963974, 31.374002, 42.982452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.229687, 31.078129, 42.939384>,  <38.389114, 30.900604, 42.913544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.229687, 31.078129, 42.939384>,  <37.963974, 31.374002, 42.982452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229687, 31.078129, 42.939384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129037, -0.255363, 0.958196,
		-0.736259, -0.622620, -0.265080,
		0.664283, -0.739686, -0.107672,
		38.428970, 30.856224, 42.907082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616062, 30.808710, 43.390629>,  <37.963974, 31.374002, 42.982452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616062, 30.808710, 43.390629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.992733, 30.685297, 43.336884>,  <38.218735, 30.611250, 43.304638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.992733, 30.685297, 43.336884>,  <37.616062, 30.808710, 43.390629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992733, 30.685297, 43.336884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031978, -0.315422, 0.948412,
		-0.335004, -0.897392, -0.287158,
		0.941674, -0.308539, -0.134365,
		38.275238, 30.592737, 43.296574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646889, 30.185020, 43.678383>,  <37.616062, 30.808710, 43.390629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646889, 30.185020, 43.678383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.041245, 30.243757, 43.646244>,  <38.277859, 30.278999, 43.626961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.041245, 30.243757, 43.646244>,  <37.646889, 30.185020, 43.678383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041245, 30.243757, 43.646244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145467, -0.514151, 0.845274,
		0.082813, -0.845036, -0.528257,
		0.985891, 0.146844, -0.080346,
		38.337013, 30.287811, 43.622139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979706, 29.436630, 43.709766>,  <37.646889, 30.185020, 43.678383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979706, 29.436630, 43.709766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.227989, 29.736807, 43.800587>,  <38.376961, 29.916912, 43.855080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.227989, 29.736807, 43.800587>,  <37.979706, 29.436630, 43.709766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227989, 29.736807, 43.800587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232750, -0.452910, 0.860639,
		0.748694, -0.481363, -0.455792,
		0.620713, 0.750441, 0.227053,
		38.414204, 29.961939, 43.868702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662846, 29.165520, 43.962147>,  <37.979706, 29.436630, 43.709766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662846, 29.165520, 43.962147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626865, 29.539560, 44.099255>,  <38.605278, 29.763985, 44.181519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.626865, 29.539560, 44.099255>,  <38.662846, 29.165520, 43.962147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626865, 29.539560, 44.099255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158431, -0.326350, 0.931877,
		0.983264, 0.138129, -0.118793,
		-0.089951, 0.935102, 0.342773,
		38.599880, 29.820091, 44.202087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126274, 29.094879, 44.447865>,  <38.662846, 29.165520, 43.962147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126274, 29.094879, 44.447865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.926712, 29.429626, 44.537971>,  <38.806976, 29.630474, 44.592033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.926712, 29.429626, 44.537971>,  <39.126274, 29.094879, 44.447865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926712, 29.429626, 44.537971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212650, -0.133770, 0.967928,
		0.840163, 0.530807, -0.111222,
		-0.498905, 0.836869, 0.225265,
		38.777042, 29.680687, 44.605553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694160, 29.521425, 44.744102>,  <39.126274, 29.094879, 44.447865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694160, 29.521425, 44.744102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323814, 29.623724, 44.855366>,  <39.101608, 29.685102, 44.922123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323814, 29.623724, 44.855366>,  <39.694160, 29.521425, 44.744102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323814, 29.623724, 44.855366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271486, -0.061773, 0.960458,
		0.262816, 0.964768, -0.012238,
		-0.925863, 0.255746, 0.278156,
		39.046055, 29.700447, 44.938812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.287851, 34.196362, 47.745346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.509636, 33.937855, 47.535622>,  <31.642708, 33.782749, 47.409786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.509636, 33.937855, 47.535622>,  <31.287851, 34.196362, 47.745346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509636, 33.937855, 47.535622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015725, 0.621777, -0.783036,
		0.832059, 0.442410, 0.334590,
		0.554464, -0.646271, -0.524313,
		31.675976, 33.743973, 47.378326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778364, 34.681473, 47.474014>,  <31.287851, 34.196362, 47.745346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778364, 34.681473, 47.474014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.792990, 34.347187, 47.254837>,  <31.801765, 34.146614, 47.123329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.792990, 34.347187, 47.254837>,  <31.778364, 34.681473, 47.474014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792990, 34.347187, 47.254837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121044, 0.547981, -0.827687,
		0.991973, -0.036062, 0.121195,
		0.036564, -0.835713, -0.547948,
		31.803959, 34.096474, 47.090454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380138, 34.686897, 47.053680>,  <31.778364, 34.681473, 47.474014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380138, 34.686897, 47.053680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.180328, 34.396538, 46.864559>,  <32.060440, 34.222324, 46.751087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.180328, 34.396538, 46.864559>,  <32.380138, 34.686897, 47.053680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180328, 34.396538, 46.864559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186970, 0.442578, -0.877022,
		0.845882, -0.526496, -0.085359,
		-0.499527, -0.725897, -0.472808,
		32.030472, 34.178768, 46.722717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802658, 34.368515, 46.489029>,  <32.380138, 34.686897, 47.053680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802658, 34.368515, 46.489029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.419579, 34.294216, 46.401100>,  <32.189732, 34.249638, 46.348343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.419579, 34.294216, 46.401100>,  <32.802658, 34.368515, 46.489029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419579, 34.294216, 46.401100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161553, 0.285126, -0.944777,
		0.238161, -0.940321, -0.243056,
		-0.957695, -0.185742, -0.219817,
		32.132271, 34.238491, 46.335155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931911, 34.179047, 45.909416>,  <32.802658, 34.368515, 46.489029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931911, 34.179047, 45.909416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.532619, 34.202850, 45.908840>,  <32.293045, 34.217133, 45.908493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.532619, 34.202850, 45.908840>,  <32.931911, 34.179047, 45.909416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532619, 34.202850, 45.908840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017015, 0.262071, -0.964899,
		-0.057047, -0.963212, -0.262618,
		-0.998226, 0.059513, -0.001439,
		32.233150, 34.220703, 45.908409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777370, 33.770168, 45.321678>,  <32.931911, 34.179047, 45.909416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777370, 33.770168, 45.321678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.462898, 34.011127, 45.376862>,  <32.274216, 34.155704, 45.409973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.462898, 34.011127, 45.376862>,  <32.777370, 33.770168, 45.321678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462898, 34.011127, 45.376862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048994, 0.283292, -0.957782,
		-0.616052, -0.746230, -0.252233,
		-0.786180, 0.602401, 0.137962,
		32.227043, 34.191849, 45.418251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359394, 33.737545, 44.712681>,  <32.777370, 33.770168, 45.321678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359394, 33.737545, 44.712681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.222240, 34.066547, 44.894192>,  <32.139946, 34.263950, 45.003098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.222240, 34.066547, 44.894192>,  <32.359394, 33.737545, 44.712681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222240, 34.066547, 44.894192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114940, 0.442694, -0.889275,
		-0.932318, -0.357078, -0.057255,
		-0.342887, 0.822507, 0.453774,
		32.119373, 34.313301, 45.030323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739994, 33.919773, 44.366165>,  <32.359394, 33.737545, 44.712681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739994, 33.919773, 44.366165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.906546, 34.237026, 44.543961>,  <32.006477, 34.427380, 44.650639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.906546, 34.237026, 44.543961>,  <31.739994, 33.919773, 44.366165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906546, 34.237026, 44.543961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046442, 0.506795, -0.860815,
		-0.908005, 0.337782, 0.247853,
		0.416378, 0.793135, 0.444485,
		32.031460, 34.474968, 44.677307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330359, 34.536812, 44.182095>,  <31.739994, 33.919773, 44.366165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330359, 34.536812, 44.182095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706223, 34.636459, 44.275883>,  <31.931742, 34.696247, 44.332157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.706223, 34.636459, 44.275883>,  <31.330359, 34.536812, 44.182095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706223, 34.636459, 44.275883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113933, 0.418374, -0.901101,
		-0.322575, 0.873444, 0.364748,
		0.939662, 0.249116, 0.234471,
		31.988121, 34.711193, 44.346226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355003, 35.219086, 44.004047>,  <31.330359, 34.536812, 44.182095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355003, 35.219086, 44.004047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.740690, 35.118782, 44.038475>,  <31.972101, 35.058598, 44.059132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.740690, 35.118782, 44.038475>,  <31.355003, 35.219086, 44.004047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740690, 35.118782, 44.038475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228907, 0.623639, -0.747446,
		0.133755, 0.740400, 0.658724,
		0.964215, -0.250761, 0.086068,
		32.029953, 35.043552, 44.064297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689505, 35.775536, 43.856300>,  <31.355003, 35.219086, 44.004047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689505, 35.775536, 43.856300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982622, 35.513729, 43.781872>,  <32.158493, 35.356647, 43.737217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982622, 35.513729, 43.781872>,  <31.689505, 35.775536, 43.856300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982622, 35.513729, 43.781872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029034, 0.303278, -0.952460,
		0.679829, 0.692556, 0.241244,
		0.732796, -0.654514, -0.186070,
		32.202461, 35.317375, 43.726051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298534, 36.091091, 43.717236>,  <31.689505, 35.775536, 43.856300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298534, 36.091091, 43.717236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.353119, 35.742577, 43.528667>,  <32.385872, 35.533466, 43.415527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.353119, 35.742577, 43.528667>,  <32.298534, 36.091091, 43.717236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353119, 35.742577, 43.528667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324479, 0.488932, -0.809728,
		0.935997, -0.042466, 0.349437,
		0.136465, -0.871288, -0.471418,
		32.394058, 35.481190, 43.387241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961044, 36.138981, 43.348202>,  <32.298534, 36.091091, 43.717236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961044, 36.138981, 43.348202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.814220, 35.803020, 43.188282>,  <32.726128, 35.601444, 43.092331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.814220, 35.803020, 43.188282>,  <32.961044, 36.138981, 43.348202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814220, 35.803020, 43.188282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190936, 0.352618, -0.916081,
		0.910391, -0.412590, 0.030936,
		-0.367058, -0.839898, -0.399799,
		32.704102, 35.551052, 43.068344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528522, 35.977261, 42.866947>,  <32.961044, 36.138981, 43.348202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528522, 35.977261, 42.866947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.175873, 35.816799, 42.767494>,  <32.964283, 35.720524, 42.707825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.175873, 35.816799, 42.767494>,  <33.528522, 35.977261, 42.866947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175873, 35.816799, 42.767494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032317, 0.474265, -0.879789,
		0.470818, -0.783690, -0.405167,
		-0.881638, -0.401127, -0.248619,
		32.911385, 35.696453, 42.692905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191753, 35.613441, 42.850811>,  <33.528522, 35.977261, 42.866947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191753, 35.613441, 42.850811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.584862, 35.667690, 42.800571>,  <34.820724, 35.700237, 42.770428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.584862, 35.667690, 42.800571>,  <34.191753, 35.613441, 42.850811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584862, 35.667690, 42.800571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174343, -0.454290, 0.873627,
		0.061420, -0.880471, -0.470106,
		0.982767, 0.135618, -0.125602,
		34.879692, 35.708374, 42.762890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549740, 34.969933, 42.967991>,  <34.191753, 35.613441, 42.850811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549740, 34.969933, 42.967991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.824772, 35.252628, 43.034618>,  <34.989792, 35.422249, 43.074596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.824772, 35.252628, 43.034618>,  <34.549740, 34.969933, 42.967991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824772, 35.252628, 43.034618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290658, -0.478117, 0.828808,
		0.665396, -0.521457, -0.534164,
		0.687580, 0.706744, 0.166571,
		35.031048, 35.464653, 43.084591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101776, 34.629585, 43.149948>,  <34.549740, 34.969933, 42.967991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101776, 34.629585, 43.149948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162769, 34.998283, 43.292572>,  <35.199368, 35.219501, 43.378147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.162769, 34.998283, 43.292572>,  <35.101776, 34.629585, 43.149948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162769, 34.998283, 43.292572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549908, -0.378907, 0.744332,
		0.821187, 0.082575, -0.564653,
		0.152487, 0.921743, 0.356562,
		35.208515, 35.274807, 43.399540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823002, 34.701511, 43.284725>,  <35.101776, 34.629585, 43.149948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823002, 34.701511, 43.284725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.631611, 34.964878, 43.517120>,  <35.516777, 35.122898, 43.656559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.631611, 34.964878, 43.517120>,  <35.823002, 34.701511, 43.284725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631611, 34.964878, 43.517120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590067, -0.248901, 0.768029,
		0.650292, 0.710307, -0.269416,
		-0.478479, 0.658416, 0.580987,
		35.488068, 35.162403, 43.691418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303230, 34.785610, 43.906761>,  <35.823002, 34.701511, 43.284725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303230, 34.785610, 43.906761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948761, 34.931522, 44.021049>,  <35.736080, 35.019070, 44.089622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948761, 34.931522, 44.021049>,  <36.303230, 34.785610, 43.906761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948761, 34.931522, 44.021049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226375, -0.197201, 0.953869,
		0.404295, 0.909972, 0.092178,
		-0.886171, 0.364778, 0.285722,
		35.682911, 35.040955, 44.106766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461159, 35.068169, 44.620819>,  <36.303230, 34.785610, 43.906761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461159, 35.068169, 44.620819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.063152, 35.041882, 44.590847>,  <35.824348, 35.026108, 44.572865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.063152, 35.041882, 44.590847>,  <36.461159, 35.068169, 44.620819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063152, 35.041882, 44.590847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055061, -0.264164, 0.962905,
		-0.083077, 0.962236, 0.259230,
		-0.995021, -0.065722, -0.074928,
		35.764645, 35.022163, 44.568367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233856, 35.494858, 45.208279>,  <36.461159, 35.068169, 44.620819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233856, 35.494858, 45.208279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.951626, 35.237503, 45.089466>,  <35.782288, 35.083092, 45.018177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.951626, 35.237503, 45.089466>,  <36.233856, 35.494858, 45.208279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951626, 35.237503, 45.089466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185950, -0.236372, 0.953704,
		-0.683807, 0.728139, 0.047140,
		-0.705571, -0.643384, -0.297030,
		35.739956, 35.044487, 45.000359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735474, 35.566959, 45.696476>,  <36.233856, 35.494858, 45.208279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735474, 35.566959, 45.696476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.640953, 35.213142, 45.535603>,  <35.584240, 35.000854, 45.439079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.640953, 35.213142, 45.535603>,  <35.735474, 35.566959, 45.696476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640953, 35.213142, 45.535603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126080, -0.382492, 0.915316,
		-0.963464, 0.267000, -0.021138,
		-0.236305, -0.884540, -0.402181,
		35.570061, 34.947781, 45.414948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103439, 35.336132, 45.990299>,  <35.735474, 35.566959, 45.696476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103439, 35.336132, 45.990299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264713, 34.999210, 45.847214>,  <35.361477, 34.797058, 45.761364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264713, 34.999210, 45.847214>,  <35.103439, 35.336132, 45.990299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264713, 34.999210, 45.847214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292444, -0.488988, 0.821807,
		-0.867133, -0.226729, -0.443480,
		0.403184, -0.842309, -0.357712,
		35.385670, 34.746517, 45.739899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590515, 34.863441, 46.166134>,  <35.103439, 35.336132, 45.990299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590515, 34.863441, 46.166134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923985, 34.647305, 46.120476>,  <35.124065, 34.517624, 46.093079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923985, 34.647305, 46.120476>,  <34.590515, 34.863441, 46.166134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923985, 34.647305, 46.120476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215439, -0.508509, 0.833670,
		-0.508509, -0.670413, -0.540338,
		-0.833670, 0.540338, 0.114148,
		35.174084, 34.485203, 46.086231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449848, 34.109192, 46.278412>,  <34.590515, 34.863441, 46.166134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449848, 34.109192, 46.278412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.840309, 34.031033, 46.316227>,  <35.074585, 33.984135, 46.338917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.840309, 34.031033, 46.316227>,  <34.449848, 34.109192, 46.278412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840309, 34.031033, 46.316227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200343, -0.643359, 0.738885,
		-0.083559, -0.740207, -0.667166,
		0.976156, -0.195403, 0.094537,
		35.133156, 33.972412, 46.344589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520145, 33.426037, 46.358376>,  <34.449848, 34.109192, 46.278412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520145, 33.426037, 46.358376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.839912, 33.591068, 46.533054>,  <35.031773, 33.690086, 46.637859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.839912, 33.591068, 46.533054>,  <34.520145, 33.426037, 46.358376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839912, 33.591068, 46.533054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120664, -0.601811, 0.789470,
		0.588529, -0.683813, -0.431317,
		0.799421, 0.412581, 0.436695,
		35.079739, 33.714844, 46.664062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980972, 32.868145, 46.652130>,  <34.520145, 33.426037, 46.358376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980972, 32.868145, 46.652130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.100185, 33.188786, 46.859444>,  <35.171711, 33.381168, 46.983829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.100185, 33.188786, 46.859444>,  <34.980972, 32.868145, 46.652130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100185, 33.188786, 46.859444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002801, -0.542218, 0.840233,
		0.954553, -0.251866, -0.159352,
		0.298029, 0.801601, 0.518281,
		35.189594, 33.429264, 47.014927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575504, 32.689461, 47.107574>,  <34.980972, 32.868145, 46.652130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575504, 32.689461, 47.107574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.407715, 33.013359, 47.271702>,  <35.307041, 33.207699, 47.370178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.407715, 33.013359, 47.271702>,  <35.575504, 32.689461, 47.107574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.407715, 33.013359, 47.271702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109140, -0.403742, 0.908340,
		0.901183, 0.425807, 0.080984,
		-0.419474, 0.809741, 0.410318,
		35.281872, 33.256283, 47.394798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369278, 32.970528, 47.150734>,  <35.575504, 32.689461, 47.107574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369278, 32.970528, 47.150734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.717369, 32.783836, 47.213818>,  <36.926224, 32.671822, 47.251667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.717369, 32.783836, 47.213818>,  <36.369278, 32.970528, 47.150734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717369, 32.783836, 47.213818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460906, 0.658243, -0.595216,
		0.173998, 0.590658, 0.787939,
		0.870224, -0.466732, 0.157705,
		36.978436, 32.643818, 47.261127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793980, 33.517422, 47.149479>,  <36.369278, 32.970528, 47.150734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793980, 33.517422, 47.149479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037487, 33.202457, 47.110725>,  <37.183590, 33.013477, 47.087475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.037487, 33.202457, 47.110725>,  <36.793980, 33.517422, 47.149479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037487, 33.202457, 47.110725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587060, 0.529244, -0.612586,
		0.533631, 0.316047, 0.784444,
		0.608768, -0.787411, -0.096882,
		37.220116, 32.966236, 47.081661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461044, 33.655800, 47.403130>,  <36.793980, 33.517422, 47.149479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461044, 33.655800, 47.403130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.507473, 33.373421, 47.123653>,  <37.535332, 33.203995, 46.955967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.507473, 33.373421, 47.123653>,  <37.461044, 33.655800, 47.403130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507473, 33.373421, 47.123653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649619, 0.586083, -0.484254,
		0.751347, -0.397673, 0.526625,
		0.116071, -0.705948, -0.698688,
		37.542294, 33.161636, 46.914047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243191, 33.597038, 47.236870>,  <37.461044, 33.655800, 47.403130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243191, 33.597038, 47.236870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.052177, 33.436153, 46.924412>,  <37.937569, 33.339622, 46.736938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.052177, 33.436153, 46.924412>,  <38.243191, 33.597038, 47.236870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052177, 33.436153, 46.924412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656509, 0.427517, -0.621470,
		0.583915, -0.809602, 0.059902,
		-0.477535, -0.402212, -0.781144,
		37.908916, 33.315491, 46.690067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750790, 33.542923, 46.745911>,  <38.243191, 33.597038, 47.236870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750790, 33.542923, 46.745911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413662, 33.505383, 46.533932>,  <38.211384, 33.482861, 46.406742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413662, 33.505383, 46.533932>,  <38.750790, 33.542923, 46.745911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413662, 33.505383, 46.533932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444905, 0.432597, -0.784168,
		0.302847, -0.896690, -0.322848,
		-0.842819, -0.093846, -0.529952,
		38.160816, 33.477230, 46.374947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015167, 33.360588, 46.107258>,  <38.750790, 33.542923, 46.745911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015167, 33.360588, 46.107258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.641865, 33.480476, 46.028065>,  <38.417885, 33.552410, 45.980549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.641865, 33.480476, 46.028065>,  <39.015167, 33.360588, 46.107258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641865, 33.480476, 46.028065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274387, 0.239119, -0.931415,
		-0.231828, -0.923573, -0.305400,
		-0.933256, 0.299726, -0.197982,
		38.361889, 33.570393, 45.968670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900330, 33.094379, 45.460312>,  <39.015167, 33.360588, 46.107258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900330, 33.094379, 45.460312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.619949, 33.374969, 45.511837>,  <38.451721, 33.543324, 45.542751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.619949, 33.374969, 45.511837>,  <38.900330, 33.094379, 45.460312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619949, 33.374969, 45.511837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022926, 0.158350, -0.987117,
		-0.712839, -0.694875, -0.094913,
		-0.700953, 0.701480, 0.128808,
		38.409664, 33.585415, 45.550480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261856, 32.990730, 44.946926>,  <38.900330, 33.094379, 45.460312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261856, 32.990730, 44.946926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.255863, 33.375130, 45.057381>,  <38.252266, 33.605770, 45.123653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.255863, 33.375130, 45.057381>,  <38.261856, 32.990730, 44.946926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255863, 33.375130, 45.057381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056780, 0.276544, -0.959322,
		-0.998274, 0.001303, -0.058710,
		-0.014986, 0.961000, 0.276141,
		38.251366, 33.663429, 45.140224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735474, 33.306541, 44.582867>,  <38.261856, 32.990730, 44.946926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735474, 33.306541, 44.582867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.995964, 33.591839, 44.686546>,  <38.152260, 33.763020, 44.748756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.995964, 33.591839, 44.686546>,  <37.735474, 33.306541, 44.582867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995964, 33.591839, 44.686546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011196, 0.332489, -0.943041,
		-0.758801, 0.617035, 0.208540,
		0.651226, 0.713246, 0.259201,
		38.191334, 33.805813, 44.764305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492676, 33.891521, 44.325245>,  <37.735474, 33.306541, 44.582867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492676, 33.891521, 44.325245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878181, 33.982449, 44.381077>,  <38.109486, 34.037003, 44.414577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878181, 33.982449, 44.381077>,  <37.492676, 33.891521, 44.325245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878181, 33.982449, 44.381077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020929, 0.457224, -0.889105,
		-0.265927, 0.859811, 0.435900,
		0.963766, 0.227314, 0.139583,
		38.167313, 34.050644, 44.422951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593014, 34.594410, 44.183472>,  <37.492676, 33.891521, 44.325245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593014, 34.594410, 44.183472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.951370, 34.427601, 44.122181>,  <38.166382, 34.327515, 44.085407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.951370, 34.427601, 44.122181>,  <37.593014, 34.594410, 44.183472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951370, 34.427601, 44.122181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069691, 0.472516, -0.878562,
		0.438783, 0.776414, 0.452384,
		0.895887, -0.417025, -0.153223,
		38.220135, 34.302494, 44.076214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894421, 35.017414, 43.805466>,  <37.593014, 34.594410, 44.183472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894421, 35.017414, 43.805466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.165546, 34.726387, 43.763119>,  <38.328224, 34.551769, 43.737709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.165546, 34.726387, 43.763119>,  <37.894421, 35.017414, 43.805466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165546, 34.726387, 43.763119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317781, 0.419763, -0.850185,
		0.663006, 0.542629, 0.515730,
		0.677819, -0.727567, -0.105868,
		38.368893, 34.508118, 43.731358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526844, 35.278473, 43.637478>,  <37.894421, 35.017414, 43.805466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526844, 35.278473, 43.637478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.589153, 34.904301, 43.510544>,  <38.626537, 34.679798, 43.434383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.589153, 34.904301, 43.510544>,  <38.526844, 35.278473, 43.637478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589153, 34.904301, 43.510544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587110, 0.346029, -0.731824,
		0.794379, -0.072315, 0.603102,
		0.155769, -0.935433, -0.317335,
		38.635883, 34.623672, 43.415344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242527, 35.157352, 43.578003>,  <38.526844, 35.278473, 43.637478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242527, 35.157352, 43.578003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.057827, 34.913055, 43.320698>,  <38.947006, 34.766479, 43.166317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.057827, 34.913055, 43.320698>,  <39.242527, 35.157352, 43.578003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057827, 34.913055, 43.320698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472950, 0.443991, -0.761045,
		0.750402, -0.655643, 0.083837,
		-0.461751, -0.610741, -0.643258,
		38.919300, 34.729832, 43.127720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.221281, 30.282616, 42.890301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.856352, 30.196669, 42.750874>,  <26.637394, 30.145102, 42.667217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.856352, 30.196669, 42.750874>,  <27.221281, 30.282616, 42.890301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856352, 30.196669, 42.750874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322271, 0.148375, -0.934947,
		0.252608, -0.965307, -0.066120,
		-0.912322, -0.214867, -0.348571,
		26.582655, 30.132210, 42.646301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286291, 29.853628, 42.297535>,  <27.221281, 30.282616, 42.890301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286291, 29.853628, 42.297535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.934437, 30.041115, 42.265182>,  <26.723324, 30.153606, 42.245770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.934437, 30.041115, 42.265182>,  <27.286291, 29.853628, 42.297535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934437, 30.041115, 42.265182> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243621, 0.297931, -0.922977,
		-0.408518, -0.831589, -0.376261,
		-0.879638, 0.468717, -0.080882,
		26.670546, 30.181730, 42.240917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044123, 29.602152, 41.600082>,  <27.286291, 29.853628, 42.297535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044123, 29.602152, 41.600082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.817511, 29.913366, 41.708675>,  <26.681543, 30.100096, 41.773830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.817511, 29.913366, 41.708675>,  <27.044123, 29.602152, 41.600082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817511, 29.913366, 41.708675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006217, 0.325409, -0.945553,
		-0.824017, -0.537372, -0.179517,
		-0.566530, 0.778036, 0.271483,
		26.647552, 30.146778, 41.790119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361755, 29.598003, 41.208073>,  <27.044123, 29.602152, 41.600082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361755, 29.598003, 41.208073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.408360, 29.981894, 41.310329>,  <26.436321, 30.212227, 41.371685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.408360, 29.981894, 41.310329>,  <26.361755, 29.598003, 41.208073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408360, 29.981894, 41.310329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187270, 0.274005, -0.943319,
		-0.975374, 0.062032, 0.211652,
		0.116510, 0.959725, 0.255641,
		26.443312, 30.269812, 41.387020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.938185, 29.934380, 40.838936>,  <26.361755, 29.598003, 41.208073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.938185, 29.934380, 40.838936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.183100, 30.236712, 40.931736>,  <26.330050, 30.418112, 40.987415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.183100, 30.236712, 40.931736>,  <25.938185, 29.934380, 40.838936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183100, 30.236712, 40.931736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081405, 0.352139, -0.932401,
		-0.786434, 0.552011, 0.277139,
		0.612287, 0.755832, 0.231997,
		26.366785, 30.463461, 41.001335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719467, 30.424616, 40.350643>,  <25.938185, 29.934380, 40.838936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719467, 30.424616, 40.350643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.061241, 30.591200, 40.474903>,  <26.266306, 30.691151, 40.549458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.061241, 30.591200, 40.474903>,  <25.719467, 30.424616, 40.350643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061241, 30.591200, 40.474903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079896, 0.485478, -0.870590,
		-0.513380, 0.768682, 0.381535,
		0.854434, 0.416461, 0.310649,
		26.317572, 30.716139, 40.568096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.663414, 31.130806, 40.203548>,  <25.719467, 30.424616, 40.350643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.663414, 31.130806, 40.203548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.048365, 31.024256, 40.224998>,  <26.279335, 30.960325, 40.237869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.048365, 31.024256, 40.224998>,  <25.663414, 31.130806, 40.203548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.048365, 31.024256, 40.224998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108674, 0.196433, -0.974476,
		0.249044, 0.943640, 0.217991,
		0.962376, -0.266378, 0.053629,
		26.337078, 30.944342, 40.241089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038099, 31.766636, 40.054607>,  <25.663414, 31.130806, 40.203548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.038099, 31.766636, 40.054607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.267832, 31.451694, 39.964966>,  <26.405670, 31.262730, 39.911182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.267832, 31.451694, 39.964966>,  <26.038099, 31.766636, 40.054607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267832, 31.451694, 39.964966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184458, 0.391183, -0.901638,
		0.797572, 0.476500, 0.369901,
		0.574330, -0.787352, -0.224103,
		26.440130, 31.215488, 39.897736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708193, 31.978216, 40.001385>,  <26.038099, 31.766636, 40.054607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708193, 31.978216, 40.001385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.688004, 31.658035, 39.762478>,  <26.675890, 31.465927, 39.619133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.688004, 31.658035, 39.762478>,  <26.708193, 31.978216, 40.001385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688004, 31.658035, 39.762478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373160, 0.539600, -0.754707,
		0.926393, -0.260969, 0.271461,
		-0.050475, -0.800454, -0.597265,
		26.672861, 31.417898, 39.583298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245602, 32.187206, 39.583691>,  <26.708193, 31.978216, 40.001385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245602, 32.187206, 39.583691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.058773, 31.890873, 39.390606>,  <26.946676, 31.713072, 39.274757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.058773, 31.890873, 39.390606>,  <27.245602, 32.187206, 39.583691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.058773, 31.890873, 39.390606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348025, 0.347825, -0.870573,
		0.812850, -0.574612, 0.095371,
		-0.467070, -0.740836, -0.482709,
		26.918652, 31.668623, 39.245792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778522, 31.916826, 39.139858>,  <27.245602, 32.187206, 39.583691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778522, 31.916826, 39.139858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.424955, 31.817085, 38.981609>,  <27.212816, 31.757240, 38.886662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.424955, 31.817085, 38.981609>,  <27.778522, 31.916826, 39.139858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424955, 31.817085, 38.981609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248161, 0.466940, -0.848754,
		0.396367, -0.848405, -0.350858,
		-0.883917, -0.249349, -0.395621,
		27.159781, 31.742281, 38.862923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854059, 31.553938, 38.452625>,  <27.778522, 31.916826, 39.139858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854059, 31.553938, 38.452625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.482430, 31.700603, 38.433105>,  <27.259453, 31.788603, 38.421394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.482430, 31.700603, 38.433105>,  <27.854059, 31.553938, 38.452625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482430, 31.700603, 38.433105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211383, 0.418030, -0.883497,
		-0.303548, -0.831148, -0.465887,
		-0.929072, 0.366665, -0.048799,
		27.203709, 31.810602, 38.418465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689358, 31.457670, 37.767368>,  <27.854059, 31.553938, 38.452625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689358, 31.457670, 37.767368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.418484, 31.724556, 37.891460>,  <27.255959, 31.884687, 37.965916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.418484, 31.724556, 37.891460>,  <27.689358, 31.457670, 37.767368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418484, 31.724556, 37.891460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046065, 0.459235, -0.887120,
		-0.734369, -0.586454, -0.341722,
		-0.677186, 0.667214, 0.310233,
		27.215328, 31.924721, 37.984531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058376, 31.441029, 37.246181>,  <27.689358, 31.457670, 37.767368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058376, 31.441029, 37.246181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033064, 31.788012, 37.443569>,  <27.017876, 31.996202, 37.562000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033064, 31.788012, 37.443569>,  <27.058376, 31.441029, 37.246181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033064, 31.788012, 37.443569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105294, 0.485897, -0.867650,
		-0.992426, -0.106865, 0.060590,
		-0.063281, 0.867458, 0.493469,
		27.014080, 32.048248, 37.591610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588703, 31.886419, 36.830116>,  <27.058376, 31.441029, 37.246181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588703, 31.886419, 36.830116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.764668, 32.143284, 37.081230>,  <26.870247, 32.297401, 37.231899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.764668, 32.143284, 37.081230>,  <26.588703, 31.886419, 36.830116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764668, 32.143284, 37.081230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125965, 0.736267, -0.664863,
		-0.889162, 0.213403, 0.404783,
		0.439912, 0.642160, 0.627780,
		26.896641, 32.335930, 37.269566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.122290, 32.505630, 36.953362>,  <26.588703, 31.886419, 36.830116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.122290, 32.505630, 36.953362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.490332, 32.636913, 37.038864>,  <26.711157, 32.715683, 37.090164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.490332, 32.636913, 37.038864>,  <26.122290, 32.505630, 36.953362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490332, 32.636913, 37.038864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101905, 0.727549, -0.678445,
		-0.378185, 0.602457, 0.702867,
		0.920104, 0.328203, 0.213755,
		26.766363, 32.735374, 37.102989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158119, 33.223511, 37.081482>,  <26.122290, 32.505630, 36.953362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158119, 33.223511, 37.081482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.523411, 33.131004, 36.947304>,  <26.742586, 33.075500, 36.866795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.523411, 33.131004, 36.947304>,  <26.158119, 33.223511, 37.081482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523411, 33.131004, 36.947304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072064, 0.718640, -0.691638,
		0.401021, 0.655799, 0.639617,
		0.913230, -0.231268, -0.335449,
		26.797380, 33.061623, 36.846668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441381, 33.896202, 37.042255>,  <26.158119, 33.223511, 37.081482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441381, 33.896202, 37.042255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.648182, 33.647385, 36.807045>,  <26.772263, 33.498093, 36.665920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.648182, 33.647385, 36.807045>,  <26.441381, 33.896202, 37.042255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648182, 33.647385, 36.807045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029214, 0.699380, -0.714153,
		0.855487, 0.352038, 0.379752,
		0.517000, -0.622043, -0.588025,
		26.803282, 33.460773, 36.630638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047165, 34.283085, 36.749329>,  <26.441381, 33.896202, 37.042255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047165, 34.283085, 36.749329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.002079, 33.975628, 36.497463>,  <26.975027, 33.791153, 36.346344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.002079, 33.975628, 36.497463>,  <27.047165, 34.283085, 36.749329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.002079, 33.975628, 36.497463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051917, 0.628282, -0.776252,
		0.992270, -0.120183, -0.030909,
		-0.112712, -0.768647, -0.629665,
		26.968266, 33.745033, 36.308563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.407032, 34.546005, 36.196301>,  <27.047165, 34.283085, 36.749329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.407032, 34.546005, 36.196301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.191967, 34.243229, 36.047729>,  <27.062929, 34.061562, 35.958588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.191967, 34.243229, 36.047729>,  <27.407032, 34.546005, 36.196301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191967, 34.243229, 36.047729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082639, 0.485704, -0.870208,
		0.839101, -0.437183, -0.323697,
		-0.537662, -0.756943, -0.371427,
		27.030668, 34.016148, 35.936302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961046, 35.091667, 36.211735>,  <27.407032, 34.546005, 36.196301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961046, 35.091667, 36.211735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.022371, 35.463329, 36.346298>,  <28.059166, 35.686325, 36.427036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.022371, 35.463329, 36.346298>,  <27.961046, 35.091667, 36.211735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.022371, 35.463329, 36.346298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152792, -0.314052, 0.937030,
		0.976294, -0.195061, 0.093818,
		0.153314, 0.929152, 0.336411,
		28.068365, 35.742073, 36.447220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529158, 35.039577, 36.667213>,  <27.961046, 35.091667, 36.211735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529158, 35.039577, 36.667213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.352816, 35.380009, 36.781273>,  <28.247009, 35.584267, 36.849709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.352816, 35.380009, 36.781273>,  <28.529158, 35.039577, 36.667213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.352816, 35.380009, 36.781273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043718, -0.337668, 0.940249,
		0.896512, 0.402049, 0.186071,
		-0.440857, 0.851080, 0.285147,
		28.220558, 35.635334, 36.866817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924953, 35.386677, 37.226326>,  <28.529158, 35.039577, 36.667213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924953, 35.386677, 37.226326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.553173, 35.527100, 37.271729>,  <28.330105, 35.611351, 37.298969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.553173, 35.527100, 37.271729>,  <28.924953, 35.386677, 37.226326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553173, 35.527100, 37.271729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008416, -0.287386, 0.957778,
		0.368852, 0.891162, 0.264156,
		-0.929450, 0.351055, 0.113503,
		28.274338, 35.632416, 37.305779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977154, 35.827404, 37.703079>,  <28.924953, 35.386677, 37.226326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977154, 35.827404, 37.703079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585106, 35.748047, 37.703880>,  <28.349876, 35.700432, 37.704361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.585106, 35.748047, 37.703880>,  <28.977154, 35.827404, 37.703079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585106, 35.748047, 37.703880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041285, -0.194060, 0.980120,
		-0.194060, 0.960719, 0.198393,
		-0.980120, -0.198393, 0.002004,
		28.291069, 35.688530, 37.704483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669064, 36.267712, 38.232483>,  <28.977154, 35.827404, 37.703079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669064, 36.267712, 38.232483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.398708, 35.978043, 38.177715>,  <28.236494, 35.804241, 38.144855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.398708, 35.978043, 38.177715>,  <28.669064, 36.267712, 38.232483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398708, 35.978043, 38.177715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185573, -0.012567, 0.982550,
		-0.713257, 0.689504, -0.125893,
		-0.675890, -0.724173, -0.136916,
		28.195942, 35.760792, 38.136639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999407, 36.453186, 38.659359>,  <28.669064, 36.267712, 38.232483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999407, 36.453186, 38.659359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959698, 36.064705, 38.572720>,  <27.935871, 35.831615, 38.520737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959698, 36.064705, 38.572720>,  <27.999407, 36.453186, 38.659359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959698, 36.064705, 38.572720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273065, -0.182731, 0.944481,
		-0.956859, 0.152909, -0.247060,
		-0.099275, -0.971199, -0.216602,
		27.929914, 35.773346, 38.507740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.351568, 36.324345, 38.762909>,  <27.999407, 36.453186, 38.659359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.351568, 36.324345, 38.762909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555508, 35.981434, 38.791553>,  <27.677872, 35.775688, 38.808739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555508, 35.981434, 38.791553>,  <27.351568, 36.324345, 38.762909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555508, 35.981434, 38.791553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380219, -0.149892, 0.912670,
		-0.771679, -0.492549, -0.402376,
		0.509848, -0.857279, 0.071608,
		27.708462, 35.724251, 38.813034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965960, 35.978168, 39.153572>,  <27.351568, 36.324345, 38.762909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965960, 35.978168, 39.153572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.288136, 35.743137, 39.184601>,  <27.481441, 35.602119, 39.203217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.288136, 35.743137, 39.184601>,  <26.965960, 35.978168, 39.153572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288136, 35.743137, 39.184601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317928, -0.317891, 0.893234,
		-0.500185, -0.744109, -0.442850,
		0.805442, -0.587577, 0.077569,
		27.529768, 35.566864, 39.207870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726000, 35.397579, 39.570030>,  <26.965960, 35.978168, 39.153572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726000, 35.397579, 39.570030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122320, 35.413593, 39.621742>,  <27.360111, 35.423203, 39.652771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122320, 35.413593, 39.621742>,  <26.726000, 35.397579, 39.570030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122320, 35.413593, 39.621742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108998, -0.330190, 0.937600,
		0.080225, -0.943065, -0.322788,
		0.990800, 0.040036, 0.129281,
		27.419559, 35.425602, 39.660526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940161, 34.756870, 39.772072>,  <26.726000, 35.397579, 39.570030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940161, 34.756870, 39.772072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.218866, 35.016232, 39.894768>,  <27.386089, 35.171848, 39.968388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.218866, 35.016232, 39.894768>,  <26.940161, 34.756870, 39.772072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218866, 35.016232, 39.894768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063631, -0.370078, 0.926819,
		0.714471, -0.665294, -0.216599,
		0.696766, 0.648403, 0.306743,
		27.427896, 35.210751, 39.986790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359711, 34.365818, 40.165653>,  <26.940161, 34.756870, 39.772072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359711, 34.365818, 40.165653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.454674, 34.732433, 40.294395>,  <27.511652, 34.952404, 40.371643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.454674, 34.732433, 40.294395>,  <27.359711, 34.365818, 40.165653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454674, 34.732433, 40.294395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087902, -0.309704, 0.946761,
		0.967424, -0.253062, 0.007039,
		0.237410, 0.916539, 0.321860,
		27.525896, 35.007397, 40.390953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.719398, 34.233971, 40.780239>,  <27.359711, 34.365818, 40.165653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.719398, 34.233971, 40.780239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.656784, 34.627930, 40.809811>,  <27.619215, 34.864307, 40.827553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.656784, 34.627930, 40.809811>,  <27.719398, 34.233971, 40.780239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.656784, 34.627930, 40.809811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053029, -0.083125, 0.995127,
		0.986248, 0.151853, 0.065240,
		-0.156536, 0.984902, 0.073929,
		27.609823, 34.923401, 40.831989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334143, 34.500198, 41.177418>,  <27.719398, 34.233971, 40.780239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334143, 34.500198, 41.177418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.009298, 34.730301, 41.216515>,  <27.814392, 34.868362, 41.239971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.009298, 34.730301, 41.216515>,  <28.334143, 34.500198, 41.177418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.009298, 34.730301, 41.216515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008647, -0.179350, 0.983747,
		0.583439, 0.798067, 0.150626,
		-0.812111, 0.575259, 0.097739,
		27.765665, 34.902878, 41.245834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458160, 34.819496, 41.807701>,  <28.334143, 34.500198, 41.177418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458160, 34.819496, 41.807701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.066820, 34.873501, 41.744961>,  <27.832016, 34.905903, 41.707317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.066820, 34.873501, 41.744961>,  <28.458160, 34.819496, 41.807701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066820, 34.873501, 41.744961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183144, -0.211817, 0.959996,
		0.096388, 0.967938, 0.231958,
		-0.978350, 0.135013, -0.156855,
		27.773315, 34.914005, 41.697903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284967, 35.138733, 42.396339>,  <28.458160, 34.819496, 41.807701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284967, 35.138733, 42.396339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.941896, 34.995647, 42.248592>,  <27.736053, 34.909798, 42.159943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.941896, 34.995647, 42.248592>,  <28.284967, 35.138733, 42.396339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941896, 34.995647, 42.248592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291430, -0.253654, 0.922349,
		-0.423627, 0.898722, 0.113306,
		-0.857676, -0.357711, -0.369369,
		27.684593, 34.888332, 42.137783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888803, 35.247623, 42.941463>,  <28.284967, 35.138733, 42.396339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888803, 35.247623, 42.941463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.679041, 34.979042, 42.732025>,  <27.553185, 34.817894, 42.606361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.679041, 34.979042, 42.732025>,  <27.888803, 35.247623, 42.941463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.679041, 34.979042, 42.732025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274350, -0.448893, 0.850428,
		-0.806059, 0.589617, 0.051188,
		-0.524404, -0.671451, -0.523596,
		27.521719, 34.777607, 42.574947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321201, 35.143047, 43.347858>,  <27.888803, 35.247623, 42.941463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321201, 35.143047, 43.347858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.328358, 34.828949, 43.100285>,  <27.332651, 34.640491, 42.951740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.328358, 34.828949, 43.100285>,  <27.321201, 35.143047, 43.347858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328358, 34.828949, 43.100285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276707, -0.598740, 0.751627,
		-0.960788, 0.157814, -0.227995,
		0.017893, -0.785242, -0.618931,
		27.333725, 34.593376, 42.914604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714865, 34.866425, 43.443542>,  <27.321201, 35.143047, 43.347858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714865, 34.866425, 43.443542> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.931835, 34.560314, 43.304905>,  <27.062017, 34.376648, 43.221722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.931835, 34.560314, 43.304905>,  <26.714865, 34.866425, 43.443542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931835, 34.560314, 43.304905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290573, -0.557996, 0.777308,
		-0.788254, -0.320920, -0.525040,
		0.542424, -0.765278, -0.346592,
		27.094563, 34.330730, 43.200928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.303062, 34.317280, 43.442703>,  <26.714865, 34.866425, 43.443542>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.303062, 34.317280, 43.442703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.672262, 34.163940, 43.456036>,  <26.893782, 34.071938, 43.464035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.672262, 34.163940, 43.456036>,  <26.303062, 34.317280, 43.442703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672262, 34.163940, 43.456036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280862, -0.611964, 0.739335,
		-0.263030, -0.691768, -0.672512,
		0.923002, -0.383350, 0.033327,
		26.949163, 34.048935, 43.466034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668428, 34.174644, 42.899391>,  <26.303062, 34.317280, 43.442703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668428, 34.174644, 42.899391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.874987, 33.850208, 43.009277>,  <26.998920, 33.655548, 43.075211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.874987, 33.850208, 43.009277>,  <26.668428, 34.174644, 42.899391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874987, 33.850208, 43.009277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668011, -0.180810, 0.721851,
		-0.535815, -0.556272, -0.635187,
		0.516393, -0.811091, 0.274715,
		27.029905, 33.606880, 43.091694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.239857, 33.604919, 42.936749>,  <26.668428, 34.174644, 42.899391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.239857, 33.604919, 42.936749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.548292, 33.558964, 43.187260>,  <26.733353, 33.531391, 43.337566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.548292, 33.558964, 43.187260>,  <26.239857, 33.604919, 42.936749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548292, 33.558964, 43.187260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610480, -0.412901, 0.675890,
		0.180935, -0.903500, -0.388523,
		0.771088, -0.114894, 0.626277,
		26.779619, 33.524494, 43.375141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186985, 32.946289, 43.073212>,  <26.239857, 33.604919, 42.936749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186985, 32.946289, 43.073212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.402565, 33.117218, 43.363571>,  <26.531912, 33.219776, 43.537788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.402565, 33.117218, 43.363571>,  <26.186985, 32.946289, 43.073212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402565, 33.117218, 43.363571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338515, -0.679236, 0.651188,
		0.771325, -0.596684, -0.221417,
		0.538948, 0.427325, 0.725899,
		26.564249, 33.245415, 43.581341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.813309, 30.043606, 45.420059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.452297, 29.871988, 45.405304>,  <39.235691, 29.769018, 45.396450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.452297, 29.871988, 45.405304>,  <39.813309, 30.043606, 45.420059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452297, 29.871988, 45.405304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073012, -0.236880, 0.968792,
		-0.424391, 0.871671, 0.245117,
		-0.902531, -0.429043, -0.036887,
		39.181538, 29.743275, 45.394238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428082, 30.294140, 46.079056>,  <39.813309, 30.043606, 45.420059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428082, 30.294140, 46.079056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.193329, 29.988598, 45.971649>,  <39.052479, 29.805273, 45.907204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.193329, 29.988598, 45.971649>,  <39.428082, 30.294140, 46.079056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193329, 29.988598, 45.971649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138611, -0.421521, 0.896163,
		-0.797723, 0.488718, 0.353259,
		-0.586877, -0.763855, -0.268515,
		39.017265, 29.759441, 45.891094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830391, 30.515366, 46.407909>,  <39.428082, 30.294140, 46.079056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830391, 30.515366, 46.407909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827316, 30.120461, 46.344341>,  <38.825470, 29.883518, 46.306202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.827316, 30.120461, 46.344341>,  <38.830391, 30.515366, 46.407909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.827316, 30.120461, 46.344341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084820, -0.157708, 0.983836,
		-0.996367, 0.021042, -0.082527,
		-0.007686, -0.987261, -0.158920,
		38.825012, 29.824282, 46.296665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254345, 30.207306, 46.830685>,  <38.830391, 30.515366, 46.407909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254345, 30.207306, 46.830685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.489685, 29.896614, 46.740765>,  <38.630890, 29.710199, 46.686813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.489685, 29.896614, 46.740765>,  <38.254345, 30.207306, 46.830685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489685, 29.896614, 46.740765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149188, -0.377504, 0.913911,
		-0.794725, -0.504162, -0.337983,
		0.588349, -0.776731, -0.224797,
		38.666191, 29.663595, 46.673325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947479, 29.617323, 47.083916>,  <38.254345, 30.207306, 46.830685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947479, 29.617323, 47.083916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.318626, 29.472561, 47.047958>,  <38.541317, 29.385704, 47.026382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.318626, 29.472561, 47.047958>,  <37.947479, 29.617323, 47.083916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318626, 29.472561, 47.047958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064846, -0.393986, 0.916826,
		-0.367223, -0.844866, -0.389036,
		0.927870, -0.361907, -0.089894,
		38.596989, 29.363989, 47.020992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984535, 28.938055, 47.371719>,  <37.947479, 29.617323, 47.083916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984535, 28.938055, 47.371719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.369232, 29.028990, 47.432877>,  <38.600048, 29.083551, 47.469570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.369232, 29.028990, 47.432877>,  <37.984535, 28.938055, 47.371719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369232, 29.028990, 47.432877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052035, -0.396321, 0.916636,
		0.268979, -0.889521, -0.369328,
		0.961739, 0.227338, 0.152889,
		38.657753, 29.097191, 47.478745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355446, 28.352694, 47.619400>,  <37.984535, 28.938055, 47.371719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355446, 28.352694, 47.619400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.598198, 28.653828, 47.721333>,  <38.743851, 28.834509, 47.782490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.598198, 28.653828, 47.721333>,  <38.355446, 28.352694, 47.619400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598198, 28.653828, 47.721333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055305, -0.359844, 0.931372,
		0.792867, -0.551137, -0.260018,
		0.606880, 0.752835, 0.254828,
		38.780262, 28.879679, 47.797779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801170, 28.036905, 48.093105>,  <38.355446, 28.352694, 47.619400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801170, 28.036905, 48.093105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.807625, 28.430260, 48.165424>,  <38.811497, 28.666273, 48.208817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.807625, 28.430260, 48.165424>,  <38.801170, 28.036905, 48.093105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807625, 28.430260, 48.165424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098855, -0.178371, 0.978985,
		0.994971, -0.033666, 0.094335,
		0.016132, 0.983387, 0.180802,
		38.812466, 28.725275, 48.219666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153950, 27.982821, 48.770287>,  <38.801170, 28.036905, 48.093105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153950, 27.982821, 48.770287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.005184, 28.352421, 48.734730>,  <38.915924, 28.574181, 48.713394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.005184, 28.352421, 48.734730>,  <39.153950, 27.982821, 48.770287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005184, 28.352421, 48.734730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013158, 0.090505, 0.995809,
		0.928174, 0.371525, -0.021502,
		-0.371914, 0.924001, -0.088893,
		38.893612, 28.629622, 48.708061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577118, 28.418211, 49.294262>,  <39.153950, 27.982821, 48.770287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577118, 28.418211, 49.294262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.221786, 28.583982, 49.215153>,  <39.008587, 28.683445, 49.167686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.221786, 28.583982, 49.215153>,  <39.577118, 28.418211, 49.294262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.221786, 28.583982, 49.215153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212227, 0.011401, 0.977154,
		0.407217, 0.910010, 0.077826,
		-0.888332, 0.414430, -0.197771,
		38.955288, 28.708311, 49.155823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424740, 28.795664, 49.863941>,  <39.577118, 28.418211, 49.294262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424740, 28.795664, 49.863941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.065884, 28.771267, 49.688934>,  <38.850571, 28.756628, 49.583931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.065884, 28.771267, 49.688934>,  <39.424740, 28.795664, 49.863941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065884, 28.771267, 49.688934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419320, -0.193979, 0.886872,
		-0.138963, 0.979108, 0.148450,
		-0.897140, -0.060994, -0.437516,
		38.796741, 28.752968, 49.557678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881496, 29.297266, 50.259468>,  <39.424740, 28.795664, 49.863941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881496, 29.297266, 50.259468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673981, 29.001265, 50.088234>,  <38.549473, 28.823664, 49.985493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673981, 29.001265, 50.088234>,  <38.881496, 29.297266, 50.259468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673981, 29.001265, 50.088234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623818, -0.014712, 0.781431,
		-0.584560, 0.672442, -0.453996,
		-0.518788, -0.740004, -0.428081,
		38.518345, 28.779263, 49.959808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194073, 29.483313, 50.298527>,  <38.881496, 29.297266, 50.259468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194073, 29.483313, 50.298527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.259914, 29.089300, 50.278049>,  <38.299419, 28.852894, 50.265762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.259914, 29.089300, 50.278049>,  <38.194073, 29.483313, 50.298527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259914, 29.089300, 50.278049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483048, -0.125758, 0.866516,
		-0.859983, -0.117902, -0.496517,
		0.164605, -0.985030, -0.051198,
		38.309296, 28.793791, 50.262691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616192, 29.193916, 50.613564>,  <38.194073, 29.483313, 50.298527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616192, 29.193916, 50.613564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.881493, 28.896202, 50.582241>,  <38.040672, 28.717573, 50.563450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.881493, 28.896202, 50.582241>,  <37.616192, 29.193916, 50.613564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881493, 28.896202, 50.582241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381744, -0.426449, 0.820008,
		-0.643714, -0.513981, -0.566971,
		0.663253, -0.744288, -0.078302,
		38.080467, 28.672916, 50.558750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176414, 28.819292, 51.181305>,  <37.616192, 29.193916, 50.613564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176414, 28.819292, 51.181305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.048447, 29.067776, 51.467453>,  <36.971664, 29.216866, 51.639141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.048447, 29.067776, 51.467453>,  <37.176414, 28.819292, 51.181305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048447, 29.067776, 51.467453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290614, 0.654314, -0.698153,
		-0.901774, -0.431249, -0.028796,
		-0.319919, 0.621207, 0.715370,
		36.952473, 29.254137, 51.682064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498581, 29.068352, 51.022057>,  <37.176414, 28.819292, 51.181305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498581, 29.068352, 51.022057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.678036, 29.330694, 51.264900>,  <36.785709, 29.488100, 51.410606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.678036, 29.330694, 51.264900>,  <36.498581, 29.068352, 51.022057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678036, 29.330694, 51.264900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372969, 0.754723, -0.539710,
		-0.812169, 0.015703, 0.583211,
		0.448638, 0.655855, 0.607106,
		36.812626, 29.527451, 51.447033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022339, 29.585533, 51.211014>,  <36.498581, 29.068352, 51.022057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022339, 29.585533, 51.211014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.379364, 29.760672, 51.254135>,  <36.593578, 29.865755, 51.280006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.379364, 29.760672, 51.254135>,  <36.022339, 29.585533, 51.211014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379364, 29.760672, 51.254135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267822, 0.707094, -0.654438,
		-0.362767, 0.555256, 0.748392,
		0.892564, 0.437845, 0.107801,
		36.647133, 29.892025, 51.286476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919537, 30.338474, 51.102169>,  <36.022339, 29.585533, 51.211014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919537, 30.338474, 51.102169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.317913, 30.331245, 51.066910>,  <36.556938, 30.326908, 51.045753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.317913, 30.331245, 51.066910>,  <35.919537, 30.338474, 51.102169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317913, 30.331245, 51.066910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050661, 0.696982, -0.715297,
		0.074365, 0.716861, 0.693239,
		0.995943, -0.018073, -0.088148,
		36.616695, 30.325823, 51.040466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164917, 30.998791, 51.228798>,  <35.919537, 30.338474, 51.102169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164917, 30.998791, 51.228798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.442947, 30.817749, 51.005363>,  <36.609768, 30.709124, 50.871304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.442947, 30.817749, 51.005363>,  <36.164917, 30.998791, 51.228798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442947, 30.817749, 51.005363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114442, 0.836710, -0.535556,
		0.709767, 0.308328, 0.633376,
		0.695078, -0.452605, -0.558583,
		36.651470, 30.681967, 50.837788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740719, 31.457054, 51.241268>,  <36.164917, 30.998791, 51.228798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740719, 31.457054, 51.241268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.826694, 31.211626, 50.937340>,  <36.878281, 31.064369, 50.754982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.826694, 31.211626, 50.937340>,  <36.740719, 31.457054, 51.241268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826694, 31.211626, 50.937340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200142, 0.789168, -0.580652,
		0.955900, -0.027268, 0.292424,
		0.214939, -0.613572, -0.759823,
		36.891174, 31.027555, 50.709393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297184, 31.735687, 50.750938>,  <36.740719, 31.457054, 51.241268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297184, 31.735687, 50.750938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.120876, 31.458015, 50.523312>,  <37.015091, 31.291412, 50.386738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.120876, 31.458015, 50.523312>,  <37.297184, 31.735687, 50.750938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120876, 31.458015, 50.523312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001568, 0.634566, -0.772867,
		0.897617, -0.339767, -0.280788,
		-0.440774, -0.694178, -0.569065,
		36.988644, 31.249762, 50.352592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577774, 31.832294, 50.122772>,  <37.297184, 31.735687, 50.750938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577774, 31.832294, 50.122772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.259106, 31.615854, 50.015045>,  <37.067905, 31.485991, 49.950409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.259106, 31.615854, 50.015045>,  <37.577774, 31.832294, 50.122772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259106, 31.615854, 50.015045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010844, 0.458304, -0.888729,
		0.604319, -0.705102, -0.370984,
		-0.796669, -0.541099, -0.269316,
		37.020103, 31.453524, 49.934250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792542, 31.468882, 49.572830>,  <37.577774, 31.832294, 50.122772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792542, 31.468882, 49.572830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394787, 31.501379, 49.545715>,  <37.156136, 31.520878, 49.529446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394787, 31.501379, 49.545715>,  <37.792542, 31.468882, 49.572830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394787, 31.501379, 49.545715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081397, 0.178010, -0.980656,
		-0.067606, -0.980669, -0.183624,
		-0.994386, 0.081245, -0.067789,
		37.096470, 31.525753, 49.525379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556339, 31.012690, 48.980091>,  <37.792542, 31.468882, 49.572830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556339, 31.012690, 48.980091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.271847, 31.281193, 49.063580>,  <37.101151, 31.442295, 49.113670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.271847, 31.281193, 49.063580>,  <37.556339, 31.012690, 48.980091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271847, 31.281193, 49.063580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105062, 0.192074, -0.975741,
		-0.695065, -0.715903, -0.066085,
		-0.711229, 0.671260, 0.208718,
		37.058479, 31.482571, 49.126194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125622, 30.857750, 48.446136>,  <37.556339, 31.012690, 48.980091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125622, 30.857750, 48.446136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024788, 31.223589, 48.572605>,  <36.964287, 31.443092, 48.648487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.024788, 31.223589, 48.572605>,  <37.125622, 30.857750, 48.446136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024788, 31.223589, 48.572605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152918, 0.360270, -0.920229,
		-0.955547, -0.183626, -0.230676,
		-0.252083, 0.914597, 0.316175,
		36.949162, 31.497969, 48.667458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864197, 31.171665, 47.899582>,  <37.125622, 30.857750, 48.446136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864197, 31.171665, 47.899582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854183, 31.511873, 48.109722>,  <36.848175, 31.715998, 48.235806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854183, 31.511873, 48.109722>,  <36.864197, 31.171665, 47.899582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854183, 31.511873, 48.109722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154664, 0.522479, -0.838508,
		-0.987650, 0.060264, -0.144623,
		-0.025030, 0.850520, 0.525347,
		36.846676, 31.767029, 48.267326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374935, 31.636721, 47.634426>,  <36.864197, 31.171665, 47.899582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374935, 31.636721, 47.634426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672386, 31.844984, 47.802204>,  <36.850857, 31.969942, 47.902870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672386, 31.844984, 47.802204>,  <36.374935, 31.636721, 47.634426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672386, 31.844984, 47.802204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127611, 0.505298, -0.853457,
		-0.656307, 0.688178, 0.309310,
		0.743624, 0.520659, 0.419450,
		36.895473, 32.001183, 47.928040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255699, 32.303032, 47.463753>,  <36.374935, 31.636721, 47.634426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255699, 32.303032, 47.463753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650661, 32.268101, 47.516514>,  <36.887638, 32.247143, 47.548172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.650661, 32.268101, 47.516514>,  <36.255699, 32.303032, 47.463753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650661, 32.268101, 47.516514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157847, 0.489004, -0.857880,
		0.010418, 0.867899, 0.496632,
		0.987409, -0.087329, 0.131901,
		36.946884, 32.241901, 47.556084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905457, 32.668152, 47.955193>,  <36.255699, 32.303032, 47.463753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905457, 32.668152, 47.955193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.612694, 32.939564, 47.930176>,  <35.437035, 33.102409, 47.915165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.612694, 32.939564, 47.930176>,  <35.905457, 32.668152, 47.955193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612694, 32.939564, 47.930176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277344, -0.212804, 0.936907,
		0.622407, 0.703076, 0.343939,
		-0.731908, 0.678527, -0.062544,
		35.393120, 33.143124, 47.911411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849228, 33.085033, 48.570618>,  <35.905457, 32.668152, 47.955193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849228, 33.085033, 48.570618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474884, 33.127846, 48.436325>,  <35.250278, 33.153534, 48.355747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.474884, 33.127846, 48.436325>,  <35.849228, 33.085033, 48.570618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474884, 33.127846, 48.436325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347261, -0.118264, 0.930282,
		0.059864, 0.987197, 0.147846,
		-0.935856, 0.107032, -0.335735,
		35.194126, 33.159954, 48.335606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483250, 33.608047, 48.968056>,  <35.849228, 33.085033, 48.570618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483250, 33.608047, 48.968056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.193886, 33.378387, 48.814682>,  <35.020267, 33.240593, 48.722656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.193886, 33.378387, 48.814682>,  <35.483250, 33.608047, 48.968056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193886, 33.378387, 48.814682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401673, -0.101712, 0.910117,
		-0.561544, 0.812408, -0.157041,
		-0.723413, -0.574150, -0.383438,
		34.976860, 33.206142, 48.699650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936134, 33.832581, 49.337128>,  <35.483250, 33.608047, 48.968056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936134, 33.832581, 49.337128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.803455, 33.484131, 49.192284>,  <34.723846, 33.275063, 49.105377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.803455, 33.484131, 49.192284>,  <34.936134, 33.832581, 49.337128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803455, 33.484131, 49.192284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342198, -0.246595, 0.906693,
		-0.879133, 0.424664, -0.216300,
		-0.331702, -0.871121, -0.362109,
		34.703945, 33.222794, 49.083652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329536, 33.794312, 49.567314>,  <34.936134, 33.832581, 49.337128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329536, 33.794312, 49.567314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402485, 33.412243, 49.474022>,  <34.446255, 33.183002, 49.418045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.402485, 33.412243, 49.474022>,  <34.329536, 33.794312, 49.567314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402485, 33.412243, 49.474022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401929, -0.288906, 0.868900,
		-0.897326, -0.064719, -0.436597,
		0.182370, -0.955168, -0.233230,
		34.457195, 33.125694, 49.404053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.717934, 33.294079, 49.744194>,  <34.329536, 33.794312, 49.567314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.717934, 33.294079, 49.744194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040825, 33.058018, 49.748253>,  <34.234558, 32.916382, 49.750687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040825, 33.058018, 49.748253>,  <33.717934, 33.294079, 49.744194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040825, 33.058018, 49.748253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289607, -0.381044, 0.878029,
		-0.514306, -0.711707, -0.478501,
		0.807228, -0.590152, 0.010142,
		34.282993, 32.880974, 49.751297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466145, 32.634914, 50.154037>,  <33.717934, 33.294079, 49.744194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466145, 32.634914, 50.154037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858929, 32.565807, 50.123322>,  <34.094601, 32.524342, 50.104893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.858929, 32.565807, 50.123322>,  <33.466145, 32.634914, 50.154037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858929, 32.565807, 50.123322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057162, -0.658442, 0.750457,
		-0.180215, -0.732533, -0.656443,
		0.981965, -0.172767, -0.076789,
		34.153519, 32.513977, 50.100285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071060, 32.237736, 49.600471>,  <33.466145, 32.634914, 50.154037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071060, 32.237736, 49.600471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719700, 32.070461, 49.507915>,  <32.508884, 31.970097, 49.452381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719700, 32.070461, 49.507915>,  <33.071060, 32.237736, 49.600471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719700, 32.070461, 49.507915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029275, 0.530313, -0.847296,
		0.477031, -0.737490, -0.478069,
		-0.878399, -0.418182, -0.231386,
		32.456181, 31.945007, 49.438499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132458, 31.997480, 48.900440>,  <33.071060, 32.237736, 49.600471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132458, 31.997480, 48.900440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750484, 32.056992, 49.003174>,  <32.521301, 32.092697, 49.064816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750484, 32.056992, 49.003174>,  <33.132458, 31.997480, 48.900440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750484, 32.056992, 49.003174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127450, 0.575939, -0.807497,
		-0.268061, -0.803840, -0.531022,
		-0.954935, 0.148780, 0.256836,
		32.464005, 32.101627, 49.080223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713009, 31.746092, 48.292004>,  <33.132458, 31.997480, 48.900440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713009, 31.746092, 48.292004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474693, 31.982399, 48.509636>,  <32.331703, 32.124184, 48.640217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.474693, 31.982399, 48.509636>,  <32.713009, 31.746092, 48.292004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474693, 31.982399, 48.509636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159601, 0.576842, -0.801112,
		-0.787122, -0.564131, -0.249390,
		-0.595791, 0.590770, 0.544081,
		32.295956, 32.159630, 48.672859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062462, 31.756504, 47.909264>,  <32.713009, 31.746092, 48.292004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062462, 31.756504, 47.909264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.038189, 32.082672, 48.139538>,  <32.023624, 32.278374, 48.277702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.038189, 32.082672, 48.139538>,  <32.062462, 31.756504, 47.909264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038189, 32.082672, 48.139538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294863, 0.536360, -0.790806,
		-0.953611, -0.217736, 0.207888,
		-0.060684, 0.815419, 0.575681,
		32.019985, 32.327297, 48.312241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400156, 32.162895, 47.744957>,  <32.062462, 31.756504, 47.909264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400156, 32.162895, 47.744957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659847, 32.415596, 47.914375>,  <31.815662, 32.567219, 48.016026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.659847, 32.415596, 47.914375>,  <31.400156, 32.162895, 47.744957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659847, 32.415596, 47.914375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180411, 0.668876, -0.721150,
		-0.738888, 0.391779, 0.548228,
		0.649228, 0.631755, 0.423543,
		31.854616, 32.605122, 48.041439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028572, 32.714287, 47.825451>,  <31.400156, 32.162895, 47.744957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028572, 32.714287, 47.825451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.401262, 32.855507, 47.859509>,  <31.624876, 32.940239, 47.879944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.401262, 32.855507, 47.859509>,  <31.028572, 32.714287, 47.825451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401262, 32.855507, 47.859509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203760, 0.702252, -0.682147,
		-0.300621, 0.618224, 0.726241,
		0.931724, 0.353047, 0.085143,
		31.680779, 32.961422, 47.885052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964455, 33.430592, 47.886177>,  <31.028572, 32.714287, 47.825451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964455, 33.430592, 47.886177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328972, 33.360168, 47.737289>,  <31.547682, 33.317917, 47.647957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.328972, 33.360168, 47.737289>,  <30.964455, 33.430592, 47.886177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328972, 33.360168, 47.737289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149404, 0.700998, -0.697338,
		0.383696, 0.691091, 0.612512,
		0.911293, -0.176054, -0.372222,
		31.602360, 33.307354, 47.625622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.126034, 26.148993, 48.676281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.385109, 26.449503, 48.727001>,  <36.540554, 26.629810, 48.757435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.385109, 26.449503, 48.727001>,  <36.126034, 26.148993, 48.676281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385109, 26.449503, 48.727001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264632, 0.377891, -0.887225,
		-0.714469, 0.541092, 0.443569,
		0.647691, 0.751277, 0.126802,
		36.579418, 26.674887, 48.765041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749592, 26.667707, 48.532906>,  <36.126034, 26.148993, 48.676281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749592, 26.667707, 48.532906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.128971, 26.775944, 48.466904>,  <36.356598, 26.840885, 48.427303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.128971, 26.775944, 48.466904>,  <35.749592, 26.667707, 48.532906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128971, 26.775944, 48.466904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254500, 0.339980, -0.905342,
		-0.188879, 0.900663, 0.391319,
		0.948448, 0.270591, -0.165003,
		36.413506, 26.857121, 48.417404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712784, 27.136435, 47.914619>,  <35.749592, 26.667707, 48.532906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712784, 27.136435, 47.914619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.108440, 27.078686, 47.925579>,  <36.345837, 27.044037, 47.932156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.108440, 27.078686, 47.925579>,  <35.712784, 27.136435, 47.914619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108440, 27.078686, 47.925579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076320, 0.345399, -0.935347,
		0.125577, 0.927284, 0.352668,
		0.989144, -0.144374, 0.027397,
		36.405182, 27.035374, 47.933800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017567, 27.717451, 47.626137>,  <35.712784, 27.136435, 47.914619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017567, 27.717451, 47.626137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.258190, 27.401649, 47.577465>,  <36.402565, 27.212168, 47.548260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.258190, 27.401649, 47.577465>,  <36.017567, 27.717451, 47.626137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258190, 27.401649, 47.577465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025238, 0.133468, -0.990732,
		0.798428, 0.599056, 0.060364,
		0.601561, -0.789505, -0.121684,
		36.438660, 27.164799, 47.540958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589035, 27.903133, 47.152325>,  <36.017567, 27.717451, 47.626137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589035, 27.903133, 47.152325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.566639, 27.504883, 47.122410>,  <36.553200, 27.265932, 47.104462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.566639, 27.504883, 47.122410>,  <36.589035, 27.903133, 47.152325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566639, 27.504883, 47.122410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002795, 0.074746, -0.997199,
		0.998427, -0.056046, -0.001403,
		-0.055994, -0.995626, -0.074785,
		36.549839, 27.206196, 47.099976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041916, 27.640888, 46.577358>,  <36.589035, 27.903133, 47.152325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041916, 27.640888, 46.577358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.801029, 27.330225, 46.651268>,  <36.656498, 27.143827, 46.695614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.801029, 27.330225, 46.651268>,  <37.041916, 27.640888, 46.577358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801029, 27.330225, 46.651268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070896, -0.178508, -0.981381,
		0.795180, -0.604102, 0.052438,
		-0.602215, -0.776657, 0.184774,
		36.620365, 27.097227, 46.706699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299263, 27.113688, 46.217285>,  <37.041916, 27.640888, 46.577358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299263, 27.113688, 46.217285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.918159, 27.012508, 46.284538>,  <36.689499, 26.951801, 46.324890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.918159, 27.012508, 46.284538>,  <37.299263, 27.113688, 46.217285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918159, 27.012508, 46.284538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155481, -0.069340, -0.985402,
		0.260915, -0.964991, 0.026735,
		-0.952759, -0.252949, 0.168130,
		36.632332, 26.936625, 46.334976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100864, 26.400986, 45.932194>,  <37.299263, 27.113688, 46.217285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100864, 26.400986, 45.932194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.808155, 26.672359, 45.958241>,  <36.632530, 26.835184, 45.973869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.808155, 26.672359, 45.958241>,  <37.100864, 26.400986, 45.932194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808155, 26.672359, 45.958241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241594, -0.168874, -0.955570,
		-0.637296, -0.714987, 0.287483,
		-0.731769, 0.678435, 0.065114,
		36.588623, 26.875891, 45.977776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763367, 26.264639, 45.388184>,  <37.100864, 26.400986, 45.932194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763367, 26.264639, 45.388184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.599300, 26.617907, 45.479202>,  <36.500862, 26.829866, 45.533813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.599300, 26.617907, 45.479202>,  <36.763367, 26.264639, 45.388184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599300, 26.617907, 45.479202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436722, 0.028836, -0.899135,
		-0.800649, -0.468169, 0.373871,
		-0.410166, 0.883169, 0.227547,
		36.476250, 26.882856, 45.547466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120441, 26.179800, 44.990421>,  <36.763367, 26.264639, 45.388184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120441, 26.179800, 44.990421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.178070, 26.567371, 45.070843>,  <36.212646, 26.799913, 45.119095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.178070, 26.567371, 45.070843>,  <36.120441, 26.179800, 44.990421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178070, 26.567371, 45.070843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383316, 0.241953, -0.891363,
		-0.912311, 0.051356, 0.406265,
		0.144073, 0.968928, 0.201051,
		36.221291, 26.858049, 45.131157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528408, 26.625582, 44.706470>,  <36.120441, 26.179800, 44.990421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.528408, 26.625582, 44.706470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.841518, 26.872179, 44.740410>,  <36.029385, 27.020138, 44.760773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.841518, 26.872179, 44.740410>,  <35.528408, 26.625582, 44.706470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841518, 26.872179, 44.740410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213484, 0.394099, -0.893930,
		-0.584538, 0.681634, 0.440103,
		0.782777, 0.616491, 0.084849,
		36.076351, 27.057127, 44.765865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301716, 27.181231, 44.426956>,  <35.528408, 26.625582, 44.706470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301716, 27.181231, 44.426956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.699341, 27.222492, 44.413158>,  <35.937916, 27.247250, 44.404881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.699341, 27.222492, 44.413158>,  <35.301716, 27.181231, 44.426956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699341, 27.222492, 44.413158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080511, 0.484590, -0.871029,
		-0.073134, 0.868638, 0.490020,
		0.994067, 0.103154, -0.034495,
		35.997562, 27.253439, 44.402809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893948, 27.802114, 44.657104>,  <35.301716, 27.181231, 44.426956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893948, 27.802114, 44.657104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.628777, 28.099752, 44.623985>,  <34.469673, 28.278336, 44.604115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.628777, 28.099752, 44.623985>,  <34.893948, 27.802114, 44.657104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628777, 28.099752, 44.623985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341889, -0.202487, 0.917666,
		0.666064, 0.636651, 0.388631,
		-0.662926, 0.744093, -0.082795,
		34.429897, 28.322981, 44.599148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023777, 28.152250, 45.340916>,  <34.893948, 27.802114, 44.657104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023777, 28.152250, 45.340916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.675789, 28.267857, 45.181103>,  <34.466995, 28.337221, 45.085217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.675789, 28.267857, 45.181103>,  <35.023777, 28.152250, 45.340916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675789, 28.267857, 45.181103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458255, -0.174658, 0.871491,
		0.182095, 0.941256, 0.284391,
		-0.869968, 0.289018, -0.399531,
		34.414799, 28.354563, 45.061245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782578, 28.637093, 45.875729>,  <35.023777, 28.152250, 45.340916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782578, 28.637093, 45.875729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.441704, 28.593826, 45.670952>,  <34.237179, 28.567867, 45.548084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.441704, 28.593826, 45.670952>,  <34.782578, 28.637093, 45.875729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441704, 28.593826, 45.670952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519399, 0.056481, 0.852663,
		-0.063314, 0.992527, -0.104314,
		-0.852183, -0.108166, -0.511942,
		34.186050, 28.561377, 45.517368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233765, 29.130194, 46.140011>,  <34.782578, 28.637093, 45.875729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233765, 29.130194, 46.140011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.048851, 28.822308, 45.963909>,  <33.937901, 28.637575, 45.858246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.048851, 28.822308, 45.963909>,  <34.233765, 29.130194, 46.140011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048851, 28.822308, 45.963909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534901, -0.153924, 0.830775,
		-0.707228, 0.619551, -0.340565,
		-0.462286, -0.769717, -0.440258,
		33.910164, 28.591393, 45.831833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535469, 29.214882, 46.186275>,  <34.233765, 29.130194, 46.140011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535469, 29.214882, 46.186275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.569248, 28.816938, 46.163914>,  <33.589516, 28.578173, 46.150497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.569248, 28.816938, 46.163914>,  <33.535469, 29.214882, 46.186275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569248, 28.816938, 46.163914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510746, -0.091387, 0.854861,
		-0.855574, -0.043638, -0.515838,
		0.084445, -0.994859, -0.055901,
		33.594582, 28.518480, 46.147144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843491, 29.067675, 46.306778>,  <33.535469, 29.214882, 46.186275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843491, 29.067675, 46.306778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.071701, 28.750696, 46.393059>,  <33.208626, 28.560509, 46.444828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.071701, 28.750696, 46.393059>,  <32.843491, 29.067675, 46.306778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071701, 28.750696, 46.393059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447515, -0.079746, 0.890714,
		-0.688643, -0.604704, -0.400130,
		0.570526, -0.792448, 0.215697,
		33.242859, 28.512962, 46.457767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371719, 28.563160, 46.562141>,  <32.843491, 29.067675, 46.306778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371719, 28.563160, 46.562141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.741714, 28.464830, 46.678055>,  <32.963711, 28.405832, 46.747601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.741714, 28.464830, 46.678055>,  <32.371719, 28.563160, 46.562141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741714, 28.464830, 46.678055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352540, -0.270499, 0.895849,
		-0.141833, -0.930807, -0.336869,
		0.924986, -0.245821, 0.289782,
		33.019211, 28.391083, 46.764988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371452, 27.870718, 46.844067>,  <32.371719, 28.563160, 46.562141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371452, 27.870718, 46.844067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.684525, 28.067419, 46.996693>,  <32.872368, 28.185440, 47.088268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.684525, 28.067419, 46.996693>,  <32.371452, 27.870718, 46.844067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684525, 28.067419, 46.996693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428551, -0.018836, 0.903321,
		0.451399, -0.870530, 0.196000,
		0.782677, 0.491754, 0.381569,
		32.919327, 28.214945, 47.111164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563614, 27.418772, 47.323860>,  <32.371452, 27.870718, 46.844067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563614, 27.418772, 47.323860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.782700, 27.733595, 47.437386>,  <32.914150, 27.922489, 47.505501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.782700, 27.733595, 47.437386>,  <32.563614, 27.418772, 47.323860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782700, 27.733595, 47.437386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383702, -0.065157, 0.921155,
		0.743496, -0.613427, 0.266309,
		0.547709, 0.787059, 0.283817,
		32.947014, 27.969713, 47.522530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919754, 27.177416, 47.852669>,  <32.563614, 27.418772, 47.323860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919754, 27.177416, 47.852669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.882893, 27.574282, 47.886421>,  <32.860775, 27.812401, 47.906673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.882893, 27.574282, 47.886421>,  <32.919754, 27.177416, 47.852669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882893, 27.574282, 47.886421> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398589, -0.114416, 0.909965,
		0.912488, 0.050221, 0.406009,
		-0.092153, 0.992163, 0.084385,
		32.855247, 27.871931, 47.911736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061779, 27.272760, 48.511253>,  <32.919754, 27.177416, 47.852669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061779, 27.272760, 48.511253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.880924, 27.614489, 48.408718>,  <32.772411, 27.819527, 48.347195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.880924, 27.614489, 48.408718>,  <33.061779, 27.272760, 48.511253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880924, 27.614489, 48.408718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417762, 0.051091, 0.907119,
		0.788068, 0.517227, 0.333803,
		-0.452132, 0.854322, -0.256340,
		32.745285, 27.870785, 48.331818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098015, 27.681736, 49.162815>,  <33.061779, 27.272760, 48.511253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098015, 27.681736, 49.162815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.827496, 27.861105, 48.929047>,  <32.665184, 27.968727, 48.788788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.827496, 27.861105, 48.929047>,  <33.098015, 27.681736, 49.162815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827496, 27.861105, 48.929047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596680, 0.131767, 0.791587,
		0.431972, 0.884056, 0.178451,
		-0.676293, 0.448422, -0.584418,
		32.624607, 27.995632, 48.753719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961483, 28.213711, 49.551186>,  <33.098015, 27.681736, 49.162815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961483, 28.213711, 49.551186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.657467, 28.193909, 49.291992>,  <32.475056, 28.182028, 49.136475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.657467, 28.193909, 49.291992>,  <32.961483, 28.213711, 49.551186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657467, 28.193909, 49.291992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645624, 0.171384, 0.744175,
		0.074213, 0.983960, -0.162222,
		-0.760041, -0.049507, -0.647987,
		32.429455, 28.179056, 49.097595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565765, 28.731316, 49.783764>,  <32.961483, 28.213711, 49.551186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565765, 28.731316, 49.783764> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.309311, 28.534439, 49.548244>,  <32.155437, 28.416313, 49.406933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.309311, 28.534439, 49.548244>,  <32.565765, 28.731316, 49.783764>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309311, 28.534439, 49.548244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763926, 0.336136, 0.550844,
		-0.073204, 0.802969, -0.591508,
		-0.641138, -0.492193, -0.588803,
		32.116970, 28.386782, 49.371605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122295, 29.236431, 49.758465>,  <32.565765, 28.731316, 49.783764>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122295, 29.236431, 49.758465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.920343, 28.897694, 49.691593>,  <31.799171, 28.694452, 49.651470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.920343, 28.897694, 49.691593>,  <32.122295, 29.236431, 49.758465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920343, 28.897694, 49.691593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738518, 0.323520, 0.591546,
		-0.446859, 0.422129, -0.788748,
		-0.504885, -0.846842, -0.167182,
		31.768879, 28.643641, 49.641438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498632, 29.604961, 49.904869>,  <32.122295, 29.236431, 49.758465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498632, 29.604961, 49.904869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.680115, 29.713640, 50.244358>,  <31.789003, 29.778849, 50.448051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.680115, 29.713640, 50.244358>,  <31.498632, 29.604961, 49.904869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680115, 29.713640, 50.244358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174265, 0.906952, -0.383496,
		-0.873947, 0.321898, 0.364142,
		0.453706, 0.271698, 0.848723,
		31.816227, 29.795149, 50.498974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216818, 30.207355, 50.146030>,  <31.498632, 29.604961, 49.904869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216818, 30.207355, 50.146030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.596575, 30.165142, 50.264362>,  <31.824429, 30.139814, 50.335361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.596575, 30.165142, 50.264362>,  <31.216818, 30.207355, 50.146030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596575, 30.165142, 50.264362> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202871, 0.925080, -0.321045,
		-0.239788, 0.364813, 0.899674,
		0.949392, -0.105535, 0.295833,
		31.881392, 30.133482, 50.353111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307373, 30.727406, 50.582649>,  <31.216818, 30.207355, 50.146030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307373, 30.727406, 50.582649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.650431, 30.611786, 50.412521>,  <31.856266, 30.542414, 50.310444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.650431, 30.611786, 50.412521>,  <31.307373, 30.727406, 50.582649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650431, 30.611786, 50.412521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140794, 0.927459, -0.346404,
		0.494591, 0.237211, 0.836129,
		0.857646, -0.289051, -0.425315,
		31.907724, 30.525070, 50.284927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661768, 31.305737, 50.676590>,  <31.307373, 30.727406, 50.582649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661768, 31.305737, 50.676590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.857391, 31.089304, 50.402935>,  <31.974766, 30.959444, 50.238743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.857391, 31.089304, 50.402935>,  <31.661768, 31.305737, 50.676590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857391, 31.089304, 50.402935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067723, 0.805528, -0.588675,
		0.869618, 0.241565, 0.430594,
		0.489059, -0.541083, -0.684142,
		32.004108, 30.926979, 50.197693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291931, 31.642664, 50.655567>,  <31.661768, 31.305737, 50.676590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291931, 31.642664, 50.655567> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.240532, 31.437620, 50.315987>,  <32.209694, 31.314594, 50.112236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.240532, 31.437620, 50.315987>,  <32.291931, 31.642664, 50.655567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240532, 31.437620, 50.315987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253080, 0.810756, -0.527849,
		0.958874, -0.282678, 0.025553,
		-0.128494, -0.512608, -0.848954,
		32.201984, 31.283838, 50.061302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816628, 31.958342, 50.221729>,  <32.291931, 31.642664, 50.655567>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816628, 31.958342, 50.221729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.567165, 31.769842, 49.972256>,  <32.417488, 31.656742, 49.822571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.567165, 31.769842, 49.972256>,  <32.816628, 31.958342, 50.221729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567165, 31.769842, 49.972256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158394, 0.705120, -0.691171,
		0.765482, -0.529841, -0.365110,
		-0.623657, -0.471248, -0.623680,
		32.380070, 31.628468, 49.785152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620052, 31.837688, 50.283154>,  <32.816628, 31.958342, 50.221729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620052, 31.837688, 50.283154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.959740, 32.036549, 50.354347>,  <34.163551, 32.155865, 50.397064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.959740, 32.036549, 50.354347>,  <33.620052, 31.837688, 50.283154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959740, 32.036549, 50.354347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247662, -0.672674, 0.697261,
		0.466369, -0.548043, -0.694369,
		0.849213, 0.497150, 0.177985,
		34.214504, 32.185692, 50.407742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152222, 31.330717, 50.408222>,  <33.620052, 31.837688, 50.283154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152222, 31.330717, 50.408222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.296062, 31.659132, 50.585575>,  <34.382366, 31.856180, 50.691986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.296062, 31.659132, 50.585575>,  <34.152222, 31.330717, 50.408222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296062, 31.659132, 50.585575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234986, -0.539538, 0.808505,
		0.903034, -0.186547, -0.386949,
		0.359598, 0.821035, 0.443385,
		34.403942, 31.905443, 50.718590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721745, 31.096542, 50.831066>,  <34.152222, 31.330717, 50.408222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721745, 31.096542, 50.831066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.652702, 31.468037, 50.962315>,  <34.611279, 31.690933, 51.041061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.652702, 31.468037, 50.962315>,  <34.721745, 31.096542, 50.831066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652702, 31.468037, 50.962315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306318, -0.265987, 0.914013,
		0.936150, 0.258272, -0.238577,
		-0.172606, 0.928734, 0.328117,
		34.600922, 31.746656, 51.060749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369572, 31.294344, 51.058903>,  <34.721745, 31.096542, 50.831066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369572, 31.294344, 51.058903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.068386, 31.476988, 51.248447>,  <34.887672, 31.586575, 51.362175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.068386, 31.476988, 51.248447>,  <35.369572, 31.294344, 51.058903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068386, 31.476988, 51.248447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257529, -0.458196, 0.850726,
		0.605572, 0.762603, 0.227417,
		-0.752968, 0.456610, 0.473864,
		34.842495, 31.613972, 51.390606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669758, 31.612289, 51.579063>,  <35.369572, 31.294344, 51.058903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669758, 31.612289, 51.579063> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.284309, 31.595369, 51.684620>,  <35.053040, 31.585218, 51.747952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.284309, 31.595369, 51.684620>,  <35.669758, 31.612289, 51.579063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284309, 31.595369, 51.684620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245709, -0.528639, 0.812507,
		0.105133, 0.847792, 0.519804,
		-0.963625, -0.042299, 0.263888,
		34.995220, 31.582680, 51.763786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675270, 31.551794, 52.409714>,  <35.669758, 31.612289, 51.579063>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675270, 31.551794, 52.409714> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.318077, 31.436005, 52.271851>,  <35.103760, 31.366531, 52.189133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.318077, 31.436005, 52.271851>,  <35.675270, 31.551794, 52.409714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318077, 31.436005, 52.271851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111650, -0.599351, 0.792662,
		-0.436027, 0.746313, 0.502889,
		-0.892981, -0.289474, -0.344659,
		35.050182, 31.349163, 52.168453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100426, 31.606936, 52.984802>,  <35.675270, 31.551794, 52.409714>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100426, 31.606936, 52.984802> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.971828, 31.347094, 52.709221>,  <34.894669, 31.191189, 52.543873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.971828, 31.347094, 52.709221>,  <35.100426, 31.606936, 52.984802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971828, 31.347094, 52.709221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268330, -0.635252, 0.724191,
		-0.908096, 0.417691, 0.029922,
		-0.321496, -0.649607, -0.688950,
		34.875378, 31.152212, 52.502537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522671, 31.283676, 53.267159>,  <35.100426, 31.606936, 52.984802>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522671, 31.283676, 53.267159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.619453, 31.022224, 52.980320>,  <34.677525, 30.865353, 52.808216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.619453, 31.022224, 52.980320>,  <34.522671, 31.283676, 53.267159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619453, 31.022224, 52.980320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215454, -0.756796, 0.617122,
		-0.946064, 0.005183, -0.323939,
		0.241957, -0.653631, -0.717094,
		34.692039, 30.826136, 52.765190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065666, 30.803452, 53.306110>,  <34.522671, 31.283676, 53.267159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065666, 30.803452, 53.306110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.368366, 30.620220, 53.119568>,  <34.549988, 30.510281, 53.007641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.368366, 30.620220, 53.119568>,  <34.065666, 30.803452, 53.306110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368366, 30.620220, 53.119568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074424, -0.769143, 0.634728,
		-0.649451, -0.445624, -0.616143,
		0.756753, -0.458081, -0.466356,
		34.595390, 30.482796, 52.979660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.829079, 36.841404, 38.128147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129536, 36.577377, 38.124035>,  <36.309811, 36.418961, 38.121567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129536, 36.577377, 38.124035>,  <35.829079, 36.841404, 38.128147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129536, 36.577377, 38.124035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275995, -0.328142, 0.903410,
		-0.599681, -0.675750, -0.428654,
		0.751139, -0.660065, -0.010277,
		36.354877, 36.379356, 38.120953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588150, 36.173531, 38.123230>,  <35.829079, 36.841404, 38.128147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588150, 36.173531, 38.123230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945618, 36.105579, 38.289356>,  <36.160099, 36.064808, 38.389034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945618, 36.105579, 38.289356>,  <35.588150, 36.173531, 38.123230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945618, 36.105579, 38.289356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448720, -0.337990, 0.827293,
		-0.000167, -0.925691, -0.378281,
		0.893672, -0.169880, 0.415320,
		36.213718, 36.054615, 38.413952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444935, 35.588856, 38.497082>,  <35.588150, 36.173531, 38.123230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444935, 35.588856, 38.497082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787838, 35.725933, 38.650795>,  <35.993580, 35.808178, 38.743023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787838, 35.725933, 38.650795>,  <35.444935, 35.588856, 38.497082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787838, 35.725933, 38.650795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331476, -0.203789, 0.921191,
		0.393999, -0.917078, -0.061104,
		0.857256, 0.342694, 0.384282,
		36.045013, 35.828739, 38.766079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687840, 35.091709, 38.959873>,  <35.444935, 35.588856, 38.497082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687840, 35.091709, 38.959873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845566, 35.436832, 39.086407>,  <35.940201, 35.643906, 39.162327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845566, 35.436832, 39.086407>,  <35.687840, 35.091709, 38.959873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845566, 35.436832, 39.086407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349422, -0.177601, 0.919979,
		0.849951, -0.473300, 0.231455,
		0.394319, 0.862813, 0.316333,
		35.963863, 35.695675, 39.181305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050903, 34.954144, 39.617310>,  <35.687840, 35.091709, 38.959873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050903, 34.954144, 39.617310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969181, 35.345695, 39.620029>,  <35.920147, 35.580627, 39.621662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.969181, 35.345695, 39.620029>,  <36.050903, 34.954144, 39.617310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969181, 35.345695, 39.620029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115510, -0.031009, 0.992822,
		0.972067, 0.202058, 0.119406,
		-0.204310, 0.978882, 0.006804,
		35.907887, 35.639359, 39.622070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485130, 35.225651, 40.098938>,  <36.050903, 34.954144, 39.617310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485130, 35.225651, 40.098938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200489, 35.503254, 40.055172>,  <36.029705, 35.669815, 40.028912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200489, 35.503254, 40.055172>,  <36.485130, 35.225651, 40.098938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200489, 35.503254, 40.055172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162157, -0.010709, 0.986707,
		0.683609, 0.719890, 0.120158,
		-0.711607, 0.694006, -0.109414,
		35.987007, 35.711456, 40.022346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618362, 35.670639, 40.600651>,  <36.485130, 35.225651, 40.098938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618362, 35.670639, 40.600651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233227, 35.719818, 40.504471>,  <36.002144, 35.749325, 40.446762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233227, 35.719818, 40.504471>,  <36.618362, 35.670639, 40.600651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233227, 35.719818, 40.504471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242383, -0.000785, 0.970180,
		0.119095, 0.992413, 0.030557,
		-0.962843, 0.122951, -0.240450,
		35.944374, 35.756702, 40.432335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476074, 36.177052, 41.105476>,  <36.618362, 35.670639, 40.600651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476074, 36.177052, 41.105476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110481, 36.060802, 40.992218>,  <35.891125, 35.991051, 40.924263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110481, 36.060802, 40.992218>,  <36.476074, 36.177052, 41.105476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110481, 36.060802, 40.992218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331581, 0.132772, 0.934038,
		-0.233861, 0.947580, -0.217717,
		-0.913982, -0.290626, -0.283149,
		35.836288, 35.973614, 40.907272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014275, 36.724026, 41.292015>,  <36.476074, 36.177052, 41.105476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014275, 36.724026, 41.292015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799122, 36.388069, 41.262997>,  <35.670029, 36.186497, 41.245586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799122, 36.388069, 41.262997>,  <36.014275, 36.724026, 41.292015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799122, 36.388069, 41.262997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381723, 0.165928, 0.909261,
		-0.751645, 0.516767, -0.409856,
		-0.537882, -0.839893, -0.072543,
		35.637756, 36.136101, 41.241234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349045, 36.887997, 41.713528>,  <36.014275, 36.724026, 41.292015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349045, 36.887997, 41.713528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345860, 36.491581, 41.660183>,  <35.343948, 36.253731, 41.628178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345860, 36.491581, 41.660183>,  <35.349045, 36.887997, 41.713528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345860, 36.491581, 41.660183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358514, -0.121667, 0.925562,
		-0.933490, 0.055180, -0.354332,
		-0.007962, -0.991036, -0.133358,
		35.343472, 36.194271, 41.620174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688080, 36.697029, 42.029800>,  <35.349045, 36.887997, 41.713528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688080, 36.697029, 42.029800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918606, 36.370750, 42.009792>,  <35.056923, 36.174984, 41.997787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918606, 36.370750, 42.009792>,  <34.688080, 36.697029, 42.029800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918606, 36.370750, 42.009792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190644, -0.193709, 0.962357,
		-0.794680, -0.545084, -0.267145,
		0.576314, -0.815696, -0.050020,
		35.091499, 36.126041, 41.994785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353184, 36.270607, 42.463779>,  <34.688080, 36.697029, 42.029800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353184, 36.270607, 42.463779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723473, 36.126671, 42.417229>,  <34.945648, 36.040310, 42.389297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723473, 36.126671, 42.417229>,  <34.353184, 36.270607, 42.463779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723473, 36.126671, 42.417229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016974, -0.346932, 0.937737,
		-0.377822, -0.866109, -0.327271,
		0.925723, -0.359852, -0.116377,
		35.001190, 36.018719, 42.382317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702427, 35.999973, 42.123596>,  <34.353184, 36.270607, 42.463779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702427, 35.999973, 42.123596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326389, 35.882343, 42.192570>,  <33.100765, 35.811764, 42.233955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326389, 35.882343, 42.192570>,  <33.702427, 35.999973, 42.123596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326389, 35.882343, 42.192570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174009, -0.021023, -0.984519,
		0.293150, -0.955550, -0.031408,
		-0.940098, -0.294077, 0.172438,
		33.044361, 35.794121, 42.244301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481400, 35.417164, 41.633106>,  <33.702427, 35.999973, 42.123596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481400, 35.417164, 41.633106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157452, 35.633915, 41.722984>,  <32.963085, 35.763966, 41.776913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157452, 35.633915, 41.722984>,  <33.481400, 35.417164, 41.633106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157452, 35.633915, 41.722984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169815, 0.150072, -0.973982,
		-0.561497, -0.826952, -0.029519,
		-0.809866, 0.541875, 0.224694,
		32.914494, 35.796478, 41.790394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922630, 35.216328, 41.173447>,  <33.481400, 35.417164, 41.633106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922630, 35.216328, 41.173447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823418, 35.581589, 41.302837>,  <32.763889, 35.800747, 41.380470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823418, 35.581589, 41.302837>,  <32.922630, 35.216328, 41.173447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823418, 35.581589, 41.302837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378438, 0.216042, -0.900061,
		-0.891776, -0.345659, 0.291986,
		-0.248033, 0.913151, 0.323472,
		32.749008, 35.855534, 41.399879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181820, 35.306339, 40.976974>,  <32.922630, 35.216328, 41.173447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181820, 35.306339, 40.976974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312695, 35.673676, 41.066051>,  <32.391220, 35.894077, 41.119495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312695, 35.673676, 41.066051>,  <32.181820, 35.306339, 40.976974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312695, 35.673676, 41.066051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376548, 0.342848, -0.860620,
		-0.866695, 0.197731, 0.457976,
		0.327187, 0.918345, 0.222690,
		32.410851, 35.949181, 41.132858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563343, 35.747589, 40.781670>,  <32.181820, 35.306339, 40.976974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563343, 35.747589, 40.781670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887327, 35.982052, 40.789505>,  <32.081718, 36.122730, 40.794205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887327, 35.982052, 40.789505>,  <31.563343, 35.747589, 40.781670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887327, 35.982052, 40.789505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260578, 0.389593, -0.883355,
		-0.525418, 0.710378, 0.468295,
		0.809960, 0.586158, 0.019590,
		32.130314, 36.157898, 40.795383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286720, 36.392746, 40.630371>,  <31.563343, 35.747589, 40.781670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286720, 36.392746, 40.630371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678125, 36.417873, 40.551819>,  <31.912968, 36.432949, 40.504688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678125, 36.417873, 40.551819>,  <31.286720, 36.392746, 40.630371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678125, 36.417873, 40.551819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204567, 0.414800, -0.886619,
		0.025765, 0.907742, 0.418738,
		0.978513, 0.062816, -0.196382,
		31.971680, 36.436718, 40.492905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383116, 37.006260, 40.459709>,  <31.286720, 36.392746, 40.630371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383116, 37.006260, 40.459709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697979, 36.821175, 40.296604>,  <31.886898, 36.710121, 40.198742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697979, 36.821175, 40.296604>,  <31.383116, 37.006260, 40.459709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697979, 36.821175, 40.296604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355736, 0.199451, -0.913056,
		0.503816, 0.863778, -0.007606,
		0.787160, -0.462718, -0.407764,
		31.934128, 36.682358, 40.174274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.634920, 37.386826, 39.868862>,  <31.383116, 37.006260, 40.459709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.634920, 37.386826, 39.868862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823172, 37.038342, 39.813000>,  <31.936123, 36.829250, 39.779484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.823172, 37.038342, 39.813000>,  <31.634920, 37.386826, 39.868862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823172, 37.038342, 39.813000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283926, 0.000325, -0.958846,
		0.835401, 0.490911, -0.247206,
		0.470628, -0.871209, -0.139654,
		31.964359, 36.776978, 39.771103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949554, 37.414684, 39.191719>,  <31.634920, 37.386826, 39.868862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949554, 37.414684, 39.191719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919331, 37.021484, 39.258663>,  <31.901196, 36.785564, 39.298828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919331, 37.021484, 39.258663>,  <31.949554, 37.414684, 39.191719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919331, 37.021484, 39.258663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214104, -0.147927, -0.965545,
		0.973884, -0.108787, -0.199287,
		-0.075559, -0.982997, 0.167356,
		31.896664, 36.726585, 39.308868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183891, 37.148937, 38.591293>,  <31.949554, 37.414684, 39.191719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183891, 37.148937, 38.591293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989662, 36.839573, 38.754295>,  <31.873125, 36.653954, 38.852097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989662, 36.839573, 38.754295>,  <32.183891, 37.148937, 38.591293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989662, 36.839573, 38.754295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270003, -0.310675, -0.911361,
		0.831455, -0.552560, -0.057967,
		-0.485573, -0.773407, 0.407505,
		31.843990, 36.607552, 38.876549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457104, 36.575695, 38.283386>,  <32.183891, 37.148937, 38.591293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457104, 36.575695, 38.283386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088043, 36.490623, 38.412064>,  <31.866608, 36.439579, 38.489269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088043, 36.490623, 38.412064>,  <32.457104, 36.575695, 38.283386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088043, 36.490623, 38.412064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282535, -0.194976, -0.939233,
		0.262479, -0.957471, 0.119805,
		-0.922648, -0.212680, 0.321696,
		31.811249, 36.426819, 38.508572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156540, 36.026924, 37.935150>,  <32.457104, 36.575695, 38.283386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156540, 36.026924, 37.935150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816284, 36.186768, 38.071812>,  <31.612131, 36.282673, 38.153809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816284, 36.186768, 38.071812>,  <32.156540, 36.026924, 37.935150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816284, 36.186768, 38.071812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474163, -0.302397, -0.826877,
		-0.227107, -0.865375, 0.446708,
		-0.850642, 0.399603, 0.341652,
		31.561092, 36.306648, 38.174309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832588, 35.585655, 37.444153>,  <32.156540, 36.026924, 37.935150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832588, 35.585655, 37.444153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772909, 35.313507, 37.157143>,  <31.737103, 35.150219, 36.984936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.772909, 35.313507, 37.157143>,  <31.832588, 35.585655, 37.444153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.772909, 35.313507, 37.157143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782155, 0.362748, -0.506604,
		0.604958, -0.636796, 0.478034,
		-0.149198, -0.680371, -0.717521,
		31.728149, 35.109398, 36.941887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488117, 35.199154, 37.285458>,  <31.832588, 35.585655, 37.444153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488117, 35.199154, 37.285458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246071, 35.173050, 36.968075>,  <32.100842, 35.157387, 36.777645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246071, 35.173050, 36.968075>,  <32.488117, 35.199154, 37.285458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246071, 35.173050, 36.968075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772838, 0.191192, -0.605118,
		0.191192, -0.979381, -0.065259,
		0.605118, 0.065259, 0.793457,
		32.064537, 35.153473, 36.730038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966244, 35.188000, 36.893578>,  <32.488117, 35.199154, 37.285458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966244, 35.188000, 36.893578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655300, 35.161102, 36.643394>,  <32.468735, 35.144962, 36.493286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655300, 35.161102, 36.643394>,  <32.966244, 35.188000, 36.893578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655300, 35.161102, 36.643394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604017, 0.197975, -0.771991,
		0.175731, -0.977898, -0.113285,
		-0.777356, -0.067237, -0.625457,
		32.422092, 35.140930, 36.455757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210663, 34.782429, 36.349907>,  <32.966244, 35.188000, 36.893578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210663, 34.782429, 36.349907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950806, 35.071960, 36.256927>,  <32.794891, 35.245678, 36.201138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.950806, 35.071960, 36.256927>,  <33.210663, 34.782429, 36.349907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950806, 35.071960, 36.256927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633600, 0.346527, -0.691715,
		-0.420131, -0.596651, -0.683737,
		-0.649646, 0.723827, -0.232451,
		32.755913, 35.289108, 36.187191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770592, 34.394821, 36.714069>,  <33.210663, 34.782429, 36.349907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770592, 34.394821, 36.714069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871487, 34.175220, 36.395329>,  <33.932022, 34.043461, 36.204086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871487, 34.175220, 36.395329>,  <33.770592, 34.394821, 36.714069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871487, 34.175220, 36.395329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273257, -0.749550, 0.602914,
		-0.928283, -0.369820, -0.039043,
		0.252234, -0.549006, -0.796851,
		33.947155, 34.010517, 36.156273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310757, 33.753742, 36.539646>,  <33.770592, 34.394821, 36.714069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310757, 33.753742, 36.539646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697399, 33.680138, 36.468300>,  <33.929386, 33.635975, 36.425491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697399, 33.680138, 36.468300>,  <33.310757, 33.753742, 36.539646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697399, 33.680138, 36.468300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049368, -0.549281, 0.834178,
		-0.251472, -0.815126, -0.521853,
		0.966605, -0.184009, -0.178370,
		33.987381, 33.624935, 36.414787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263008, 33.070732, 36.657490>,  <33.310757, 33.753742, 36.539646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263008, 33.070732, 36.657490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637089, 33.206123, 36.699097>,  <33.861538, 33.287357, 36.724060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637089, 33.206123, 36.699097>,  <33.263008, 33.070732, 36.657490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637089, 33.206123, 36.699097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097900, -0.529452, 0.842672,
		0.340302, -0.777889, -0.528284,
		0.935206, 0.338482, 0.104019,
		33.917652, 33.307667, 36.730301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546524, 32.444153, 36.779228>,  <33.263008, 33.070732, 36.657490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546524, 32.444153, 36.779228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798264, 32.727379, 36.907326>,  <33.949306, 32.897316, 36.984184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798264, 32.727379, 36.907326>,  <33.546524, 32.444153, 36.779228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798264, 32.727379, 36.907326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088711, -0.474857, 0.875580,
		0.772042, -0.522637, -0.361665,
		0.629350, 0.708069, 0.320246,
		33.987068, 32.939800, 37.003399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210598, 32.189671, 37.062229>,  <33.546524, 32.444153, 36.779228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210598, 32.189671, 37.062229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169579, 32.551991, 37.226673>,  <34.144966, 32.769382, 37.325340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169579, 32.551991, 37.226673>,  <34.210598, 32.189671, 37.062229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169579, 32.551991, 37.226673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080231, -0.404407, 0.911053,
		0.991487, 0.126408, -0.031203,
		-0.102546, 0.905801, 0.411106,
		34.138813, 32.823730, 37.350006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492371, 32.093395, 37.709457>,  <34.210598, 32.189671, 37.062229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492371, 32.093395, 37.709457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327885, 32.452690, 37.771515>,  <34.229191, 32.668266, 37.808750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.327885, 32.452690, 37.771515>,  <34.492371, 32.093395, 37.709457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327885, 32.452690, 37.771515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022084, -0.179967, 0.983425,
		0.911269, 0.400976, 0.093843,
		-0.411219, 0.898237, 0.155143,
		34.204517, 32.722160, 37.818058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891628, 32.495853, 38.207951>,  <34.492371, 32.093395, 37.709457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891628, 32.495853, 38.207951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517670, 32.637165, 38.194252>,  <34.293297, 32.721951, 38.186031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517670, 32.637165, 38.194252>,  <34.891628, 32.495853, 38.207951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517670, 32.637165, 38.194252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091276, -0.146058, 0.985056,
		0.342993, 0.924048, 0.168794,
		-0.934893, 0.353274, -0.034247,
		34.237202, 32.743149, 38.183979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784111, 33.049892, 38.688175>,  <34.891628, 32.495853, 38.207951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784111, 33.049892, 38.688175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437263, 32.859344, 38.629959>,  <34.229156, 32.745018, 38.595032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437263, 32.859344, 38.629959>,  <34.784111, 33.049892, 38.688175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437263, 32.859344, 38.629959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102336, -0.115572, 0.988013,
		-0.487477, 0.871618, 0.051464,
		-0.867118, -0.476367, -0.145537,
		34.177128, 32.716434, 38.586300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445221, 33.265862, 39.333233>,  <34.784111, 33.049892, 38.688175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445221, 33.265862, 39.333233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227718, 32.976677, 39.162750>,  <34.097218, 32.803165, 39.060459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227718, 32.976677, 39.162750>,  <34.445221, 33.265862, 39.333233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227718, 32.976677, 39.162750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341037, -0.273682, 0.899329,
		-0.766824, 0.634372, -0.097738,
		-0.543760, -0.722959, -0.426210,
		34.064590, 32.759789, 39.034885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785000, 33.352051, 39.550152>,  <34.445221, 33.265862, 39.333233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785000, 33.352051, 39.550152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796906, 32.965717, 39.447166>,  <33.804050, 32.733917, 39.385376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796906, 32.965717, 39.447166>,  <33.785000, 33.352051, 39.550152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796906, 32.965717, 39.447166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465780, -0.241302, 0.851365,
		-0.884400, 0.094580, -0.457047,
		0.029764, -0.965830, -0.257461,
		33.805836, 32.675968, 39.369926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141209, 33.095303, 39.826195>,  <33.785000, 33.352051, 39.550152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141209, 33.095303, 39.826195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368107, 32.777580, 39.739201>,  <33.504246, 32.586945, 39.687004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368107, 32.777580, 39.739201>,  <33.141209, 33.095303, 39.826195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368107, 32.777580, 39.739201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311251, -0.451271, 0.836348,
		-0.762464, -0.406725, -0.503213,
		0.567249, -0.794310, -0.217484,
		33.538280, 32.539288, 39.673954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757450, 32.565022, 40.119465>,  <33.141209, 33.095303, 39.826195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757450, 32.565022, 40.119465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110004, 32.388897, 40.051014>,  <33.321537, 32.283222, 40.009945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110004, 32.388897, 40.051014>,  <32.757450, 32.565022, 40.119465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110004, 32.388897, 40.051014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204786, -0.682583, 0.701529,
		-0.425697, -0.583275, -0.691789,
		0.881388, -0.440308, -0.171127,
		33.374420, 32.256805, 39.999676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691875, 31.791080, 40.195591>,  <32.757450, 32.565022, 40.119465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691875, 31.791080, 40.195591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071945, 31.899790, 40.256664>,  <33.299988, 31.965015, 40.293308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071945, 31.899790, 40.256664>,  <32.691875, 31.791080, 40.195591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071945, 31.899790, 40.256664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021065, -0.544662, 0.838391,
		0.311011, -0.793400, -0.523248,
		0.950173, 0.271771, 0.152682,
		33.356998, 31.981321, 40.302467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960754, 31.113350, 40.567989>,  <32.691875, 31.791080, 40.195591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960754, 31.113350, 40.567989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230896, 31.394547, 40.657166>,  <33.392982, 31.563265, 40.710670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230896, 31.394547, 40.657166>,  <32.960754, 31.113350, 40.567989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230896, 31.394547, 40.657166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170741, -0.443117, 0.880054,
		0.717456, -0.556285, -0.419290,
		0.675355, 0.702989, 0.222936,
		33.433502, 31.605444, 40.724045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598110, 30.826857, 40.625427>,  <32.960754, 31.113350, 40.567989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598110, 30.826857, 40.625427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627548, 31.166843, 40.834095>,  <33.645210, 31.370834, 40.959297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627548, 31.166843, 40.834095>,  <33.598110, 30.826857, 40.625427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627548, 31.166843, 40.834095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382567, -0.507133, 0.772307,
		0.920992, 0.142740, -0.362490,
		0.073591, 0.849966, 0.521673,
		33.649624, 31.421833, 40.990597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114059, 30.722830, 40.973862>,  <33.598110, 30.826857, 40.625427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114059, 30.722830, 40.973862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978748, 31.029032, 41.192795>,  <33.897560, 31.212753, 41.324154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978748, 31.029032, 41.192795>,  <34.114059, 30.722830, 40.973862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978748, 31.029032, 41.192795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226221, -0.498413, 0.836904,
		0.913449, 0.406927, -0.004569,
		-0.338281, 0.765503, 0.547330,
		33.877262, 31.258682, 41.356995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664261, 30.891432, 41.465477>,  <34.114059, 30.722830, 40.973862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664261, 30.891432, 41.465477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305801, 31.013916, 41.593948>,  <34.090725, 31.087406, 41.671032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305801, 31.013916, 41.593948>,  <34.664261, 30.891432, 41.465477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305801, 31.013916, 41.593948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151749, -0.468664, 0.870245,
		0.417002, 0.828606, 0.373524,
		-0.896148, 0.306212, 0.321174,
		34.036957, 31.105780, 41.690300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771317, 31.134457, 42.032619>,  <34.664261, 30.891432, 41.465477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771317, 31.134457, 42.032619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381649, 31.048683, 42.060932>,  <34.147846, 30.997219, 42.077919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381649, 31.048683, 42.060932>,  <34.771317, 31.134457, 42.032619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381649, 31.048683, 42.060932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166410, -0.469841, 0.866924,
		-0.152641, 0.856310, 0.493390,
		-0.974171, -0.214434, 0.070782,
		34.089397, 30.984352, 42.082165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651360, 31.214010, 42.764084>,  <34.771317, 31.134457, 42.032619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651360, 31.214010, 42.764084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323071, 31.023827, 42.637371>,  <34.126099, 30.909716, 42.561344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323071, 31.023827, 42.637371>,  <34.651360, 31.214010, 42.764084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323071, 31.023827, 42.637371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185425, -0.746127, 0.639462,
		-0.540401, 0.466080, 0.700526,
		-0.820722, -0.475461, -0.316785,
		34.076855, 30.881187, 42.542336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109241, 31.275692, 43.232601>,  <34.651360, 31.214010, 42.764084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109241, 31.275692, 43.232601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059864, 30.944094, 43.014416>,  <34.030235, 30.745134, 42.883503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059864, 30.944094, 43.014416>,  <34.109241, 31.275692, 43.232601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059864, 30.944094, 43.014416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096964, -0.557114, 0.824755,
		-0.987602, 0.048924, 0.149157,
		-0.123448, -0.828993, -0.545464,
		34.022831, 30.695396, 42.850777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718483, 30.849556, 43.719101>,  <34.109241, 31.275692, 43.232601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718483, 30.849556, 43.719101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863522, 30.597507, 43.444447>,  <33.950546, 30.446278, 43.279655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863522, 30.597507, 43.444447>,  <33.718483, 30.849556, 43.719101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863522, 30.597507, 43.444447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043655, -0.747451, 0.662881,
		-0.930922, -0.210385, -0.298534,
		0.362600, -0.630123, -0.686634,
		33.972301, 30.408470, 43.238457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293896, 30.262764, 43.713299>,  <33.718483, 30.849556, 43.719101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293896, 30.262764, 43.713299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628334, 30.135672, 43.534416>,  <33.828999, 30.059416, 43.427086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628334, 30.135672, 43.534416>,  <33.293896, 30.262764, 43.713299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628334, 30.135672, 43.534416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062817, -0.754385, 0.653419,
		-0.544973, -0.574414, -0.610780,
		0.836097, -0.317728, -0.447203,
		33.879162, 30.040354, 43.400257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306480, 29.527454, 43.776623>,  <33.293896, 30.262764, 43.713299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306480, 29.527454, 43.776623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697475, 29.558193, 43.698029>,  <33.932072, 29.576637, 43.650871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697475, 29.558193, 43.698029>,  <33.306480, 29.527454, 43.776623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697475, 29.558193, 43.698029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192647, -0.704813, 0.682734,
		-0.086019, -0.705219, -0.703752,
		0.977491, 0.076848, -0.196486,
		33.990723, 29.581247, 43.639084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511745, 28.913815, 43.611416>,  <33.306480, 29.527454, 43.776623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511745, 28.913815, 43.611416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857662, 29.085958, 43.714893>,  <34.065212, 29.189245, 43.776981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857662, 29.085958, 43.714893>,  <33.511745, 28.913815, 43.611416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857662, 29.085958, 43.714893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245386, -0.811701, 0.530025,
		0.438083, -0.394883, -0.807558,
		0.864794, 0.430359, 0.258694,
		34.117100, 29.215067, 43.792500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107689, 28.454994, 43.596378>,  <33.511745, 28.913815, 43.611416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107689, 28.454994, 43.596378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257225, 28.730715, 43.844604>,  <34.346947, 28.896147, 43.993542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257225, 28.730715, 43.844604>,  <34.107689, 28.454994, 43.596378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257225, 28.730715, 43.844604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318783, -0.723811, 0.611943,
		0.870990, -0.030941, -0.490326,
		0.373838, 0.689304, 0.620569,
		34.369377, 28.937506, 44.030777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883232, 28.321232, 43.724922>,  <34.107689, 28.454994, 43.596378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883232, 28.321232, 43.724922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725128, 28.527208, 44.029186>,  <34.630264, 28.650795, 44.211746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725128, 28.527208, 44.029186>,  <34.883232, 28.321232, 43.724922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725128, 28.527208, 44.029186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164303, -0.775104, 0.610097,
		0.903754, 0.366128, 0.221765,
		-0.395265, 0.514941, 0.760659,
		34.606548, 28.681690, 44.257385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400692, 27.717367, 43.940739>,  <34.883232, 28.321232, 43.724922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400692, 27.717367, 43.940739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772537, 27.577200, 43.986382>,  <35.995644, 27.493099, 44.013767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772537, 27.577200, 43.986382>,  <35.400692, 27.717367, 43.940739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772537, 27.577200, 43.986382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287598, 0.496219, -0.819179,
		0.230436, 0.794338, 0.562073,
		0.929616, -0.350419, 0.114104,
		36.051422, 27.472075, 44.020611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798809, 28.205170, 43.643650>,  <35.400692, 27.717367, 43.940739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798809, 28.205170, 43.643650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015320, 27.869417, 43.623825>,  <36.145226, 27.667967, 43.611931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015320, 27.869417, 43.623825>,  <35.798809, 28.205170, 43.643650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015320, 27.869417, 43.623825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301683, 0.248889, -0.920348,
		0.784858, 0.483214, 0.387946,
		0.541281, -0.839379, -0.049565,
		36.177704, 27.617603, 43.608955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546265, 28.485241, 43.575916>,  <35.798809, 28.205170, 43.643650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546265, 28.485241, 43.575916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482410, 28.109480, 43.454567>,  <36.444096, 27.884024, 43.381756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482410, 28.109480, 43.454567>,  <36.546265, 28.485241, 43.575916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482410, 28.109480, 43.454567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308822, 0.244365, -0.919193,
		0.937627, -0.240427, 0.251099,
		-0.159639, -0.939404, -0.303372,
		36.434517, 27.827658, 43.363556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152184, 28.381987, 43.060978>,  <36.546265, 28.485241, 43.575916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152184, 28.381987, 43.060978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906460, 28.078962, 42.972679>,  <36.759026, 27.897148, 42.919701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.906460, 28.078962, 42.972679>,  <37.152184, 28.381987, 43.060978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906460, 28.078962, 42.972679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283312, 0.049347, -0.957757,
		0.736453, -0.650896, 0.184312,
		-0.614306, -0.757562, -0.220748,
		36.722168, 27.851694, 42.906456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635654, 27.914099, 42.610725>,  <37.152184, 28.381987, 43.060978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635654, 27.914099, 42.610725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248844, 27.849136, 42.532253>,  <37.016758, 27.810160, 42.485172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248844, 27.849136, 42.532253>,  <37.635654, 27.914099, 42.610725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248844, 27.849136, 42.532253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197039, 0.010948, -0.980335,
		0.161361, -0.986663, 0.021413,
		-0.967026, -0.162406, -0.196177,
		36.958736, 27.800415, 42.473400>
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
