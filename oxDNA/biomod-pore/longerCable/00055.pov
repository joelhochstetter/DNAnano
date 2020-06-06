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
	<23.767315, 35.153328, 34.932026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.068048, 34.889660, 34.938217>,  <24.248489, 34.731461, 34.941933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.068048, 34.889660, 34.938217>,  <23.767315, 35.153328, 34.932026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.068048, 34.889660, 34.938217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622910, 0.702388, -0.344433,
		0.216171, 0.268595, 0.938683,
		0.751833, -0.659172, 0.015474,
		24.293598, 34.691910, 34.942860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.360292, 35.362995, 35.275097>,  <23.767315, 35.153328, 34.932026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.360292, 35.362995, 35.275097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497290, 35.099110, 35.007523>,  <24.579489, 34.940777, 34.846977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497290, 35.099110, 35.007523>,  <24.360292, 35.362995, 35.275097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.497290, 35.099110, 35.007523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847878, 0.523746, -0.082419,
		0.404724, -0.538946, 0.738740,
		0.342492, -0.659718, -0.668933,
		24.600037, 34.901196, 34.806843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.034054, 35.125656, 35.432556>,  <24.360292, 35.362995, 35.275097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.034054, 35.125656, 35.432556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.991217, 35.124996, 35.034859>,  <24.965513, 35.124599, 34.796238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.991217, 35.124996, 35.034859>,  <25.034054, 35.125656, 35.432556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.991217, 35.124996, 35.034859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709755, 0.700161, -0.077610,
		0.696261, -0.713984, -0.073814,
		-0.107094, -0.001647, -0.994247,
		24.959089, 35.124500, 34.736584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652479, 35.036285, 35.134335>,  <25.034054, 35.125656, 35.432556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652479, 35.036285, 35.134335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429941, 35.260109, 34.888611>,  <25.296419, 35.394402, 34.741177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.429941, 35.260109, 34.888611>,  <25.652479, 35.036285, 35.134335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.429941, 35.260109, 34.888611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729879, 0.682441, -0.039392,
		0.397189, -0.470288, -0.788080,
		-0.556343, 0.559556, -0.614311,
		25.263039, 35.427975, 34.704319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862492, 35.002926, 34.424709>,  <25.652479, 35.036285, 35.134335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862492, 35.002926, 34.424709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221352, 35.120220, 34.292568>,  <26.436666, 35.190598, 34.213284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221352, 35.120220, 34.292568>,  <25.862492, 35.002926, 34.424709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221352, 35.120220, 34.292568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159847, -0.481673, -0.861650,
		-0.411794, 0.825834, -0.385258,
		0.897148, 0.293239, -0.330357,
		26.490496, 35.208191, 34.193462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822483, 35.359581, 33.740086>,  <25.862492, 35.002926, 34.424709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822483, 35.359581, 33.740086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176155, 35.174412, 33.765129>,  <26.388359, 35.063309, 33.780155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176155, 35.174412, 33.765129>,  <25.822483, 35.359581, 33.740086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.176155, 35.174412, 33.765129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123926, -0.361666, -0.924035,
		0.450404, 0.809256, -0.377147,
		0.884182, -0.462928, 0.062608,
		26.441410, 35.035534, 33.783913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896610, 35.816521, 34.341137>,  <25.822483, 35.359581, 33.740086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896610, 35.816521, 34.341137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258087, 35.718136, 34.200939>,  <26.474974, 35.659103, 34.116821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.258087, 35.718136, 34.200939>,  <25.896610, 35.816521, 34.341137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258087, 35.718136, 34.200939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239018, 0.389375, -0.889526,
		0.355263, 0.887631, 0.293085,
		0.903692, -0.245964, -0.350491,
		26.529194, 35.644348, 34.095791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105513, 36.321091, 34.038334>,  <25.896610, 35.816521, 34.341137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105513, 36.321091, 34.038334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322908, 36.018818, 33.892147>,  <26.453346, 35.837456, 33.804436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322908, 36.018818, 33.892147>,  <26.105513, 36.321091, 34.038334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322908, 36.018818, 33.892147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151140, 0.340171, -0.928138,
		0.825698, 0.559669, 0.070666,
		0.543488, -0.755682, -0.365467,
		26.485954, 35.792114, 33.782505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610687, 36.639252, 33.650410>,  <26.105513, 36.321091, 34.038334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610687, 36.639252, 33.650410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590023, 36.262131, 33.518684>,  <26.577625, 36.035858, 33.439651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.590023, 36.262131, 33.518684>,  <26.610687, 36.639252, 33.650410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.590023, 36.262131, 33.518684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043658, 0.331568, -0.942421,
		0.997710, -0.034307, -0.058289,
		-0.051659, -0.942807, -0.329311,
		26.574526, 35.979290, 33.419891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038425, 36.724476, 33.013783>,  <26.610687, 36.639252, 33.650410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038425, 36.724476, 33.013783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848614, 36.378441, 32.948734>,  <26.734726, 36.170818, 32.909706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.848614, 36.378441, 32.948734>,  <27.038425, 36.724476, 33.013783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.848614, 36.378441, 32.948734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035635, 0.203471, -0.978432,
		0.879518, -0.458500, -0.127381,
		-0.474530, -0.865088, -0.162618,
		26.706255, 36.118916, 32.899948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.383318, 36.422459, 32.359936>,  <27.038425, 36.724476, 33.013783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.383318, 36.422459, 32.359936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014648, 36.269958, 32.388683>,  <26.793446, 36.178459, 32.405930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.014648, 36.269958, 32.388683>,  <27.383318, 36.422459, 32.359936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014648, 36.269958, 32.388683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185264, 0.269759, -0.944937,
		0.340871, -0.884239, -0.319262,
		-0.921674, -0.381250, 0.071865,
		26.738146, 36.155582, 32.410244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231098, 36.017586, 31.733088>,  <27.383318, 36.422459, 32.359936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231098, 36.017586, 31.733088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878708, 36.107693, 31.899525>,  <26.667273, 36.161758, 31.999388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878708, 36.107693, 31.899525>,  <27.231098, 36.017586, 31.733088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878708, 36.107693, 31.899525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379070, 0.190260, -0.905597,
		-0.283171, -0.955538, -0.082221,
		-0.880977, 0.225271, 0.416093,
		26.614414, 36.175274, 32.024353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648857, 35.863075, 31.293167>,  <27.231098, 36.017586, 31.733088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648857, 35.863075, 31.293167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795904, 35.499115, 31.370052>,  <26.884132, 35.280739, 31.416183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795904, 35.499115, 31.370052>,  <26.648857, 35.863075, 31.293167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795904, 35.499115, 31.370052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821793, -0.414588, -0.390863,
		0.435333, -0.014271, -0.900156,
		0.367616, -0.909898, 0.192211,
		26.906189, 35.226147, 31.427715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465662, 36.526943, 31.324652>,  <26.648857, 35.863075, 31.293167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465662, 36.526943, 31.324652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113317, 36.338608, 31.344210>,  <25.901911, 36.225605, 31.355944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.113317, 36.338608, 31.344210>,  <26.465662, 36.526943, 31.324652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113317, 36.338608, 31.344210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141775, -0.163856, 0.976243,
		-0.451644, 0.866868, 0.211088,
		-0.880862, -0.470841, 0.048895,
		25.849058, 36.197357, 31.358879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.980341, 36.700348, 31.869753>,  <26.465662, 36.526943, 31.324652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.980341, 36.700348, 31.869753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947002, 36.320095, 31.750189>,  <25.927000, 36.091942, 31.678452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.947002, 36.320095, 31.750189>,  <25.980341, 36.700348, 31.869753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.947002, 36.320095, 31.750189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208694, -0.309951, 0.927565,
		-0.974423, 0.014927, 0.224224,
		-0.083345, -0.950635, -0.298909,
		25.921999, 36.034904, 31.660517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490646, 36.185669, 32.130375>,  <25.980341, 36.700348, 31.869753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490646, 36.185669, 32.130375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864113, 36.060551, 32.060596>,  <26.088192, 35.985481, 32.018730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864113, 36.060551, 32.060596>,  <25.490646, 36.185669, 32.130375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864113, 36.060551, 32.060596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161090, -0.068250, 0.984577,
		-0.319878, -0.947365, -0.013334,
		0.933664, -0.312796, -0.174442,
		26.144213, 35.966713, 32.008263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637205, 35.521969, 32.543346>,  <25.490646, 36.185669, 32.130375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637205, 35.521969, 32.543346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987232, 35.710262, 32.498318>,  <26.197248, 35.823238, 32.471298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987232, 35.710262, 32.498318>,  <25.637205, 35.521969, 32.543346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987232, 35.710262, 32.498318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301509, -0.348224, 0.887599,
		0.378620, -0.810649, -0.446649,
		0.875065, 0.470731, -0.112574,
		26.249752, 35.851482, 32.464546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.101501, 35.015804, 32.681408>,  <25.637205, 35.521969, 32.543346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.101501, 35.015804, 32.681408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295443, 35.357170, 32.757938>,  <26.411808, 35.561989, 32.803856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295443, 35.357170, 32.757938>,  <26.101501, 35.015804, 32.681408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295443, 35.357170, 32.757938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228234, -0.334645, 0.914288,
		0.844291, -0.399627, -0.357031,
		0.484853, 0.853411, 0.191330,
		26.440899, 35.613194, 32.815338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808571, 34.753277, 33.031063>,  <26.101501, 35.015804, 32.681408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808571, 34.753277, 33.031063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740118, 35.134796, 33.129837>,  <26.699047, 35.363708, 33.189102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.740118, 35.134796, 33.129837>,  <26.808571, 34.753277, 33.031063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740118, 35.134796, 33.129837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274860, -0.194463, 0.941614,
		0.946132, 0.229013, -0.228883,
		-0.171132, 0.953802, 0.246934,
		26.688778, 35.420937, 33.203918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377407, 34.902443, 33.462917>,  <26.808571, 34.753277, 33.031063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377407, 34.902443, 33.462917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086355, 35.162640, 33.550014>,  <26.911724, 35.318756, 33.602272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.086355, 35.162640, 33.550014>,  <27.377407, 34.902443, 33.462917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.086355, 35.162640, 33.550014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091162, -0.222916, 0.970566,
		0.679884, 0.726064, 0.102901,
		-0.727631, 0.650491, 0.217746,
		26.868065, 35.357788, 33.615337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696880, 35.477364, 33.722652>,  <27.377407, 34.902443, 33.462917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696880, 35.477364, 33.722652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325537, 35.419743, 33.859707>,  <27.102730, 35.385170, 33.941940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325537, 35.419743, 33.859707>,  <27.696880, 35.477364, 33.722652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325537, 35.419743, 33.859707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349727, -0.026407, 0.936480,
		-0.125858, 0.989217, 0.074896,
		-0.928359, -0.144056, 0.342632,
		27.047029, 35.376526, 33.962498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680206, 35.753239, 34.286530>,  <27.696880, 35.477364, 33.722652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680206, 35.753239, 34.286530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356428, 35.534218, 34.371365>,  <27.162161, 35.402805, 34.422264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356428, 35.534218, 34.371365>,  <27.680206, 35.753239, 34.286530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356428, 35.534218, 34.371365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178279, 0.114970, 0.977240,
		-0.559474, 0.828835, 0.004555,
		-0.809448, -0.547553, 0.212087,
		27.113594, 35.369953, 34.434990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147392, 36.093224, 34.715363>,  <27.680206, 35.753239, 34.286530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147392, 36.093224, 34.715363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128170, 35.696205, 34.760178>,  <27.116636, 35.457996, 34.787067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.128170, 35.696205, 34.760178>,  <27.147392, 36.093224, 34.715363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.128170, 35.696205, 34.760178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064414, 0.108855, 0.991969,
		-0.996766, 0.054885, 0.058703,
		-0.048054, -0.992541, 0.112038,
		27.113754, 35.398441, 34.793789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564024, 35.808086, 35.042732>,  <27.147392, 36.093224, 34.715363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564024, 35.808086, 35.042732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847763, 35.543144, 35.139156>,  <27.018005, 35.384178, 35.197010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847763, 35.543144, 35.139156>,  <26.564024, 35.808086, 35.042732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847763, 35.543144, 35.139156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099971, 0.243994, 0.964610,
		-0.697735, -0.708341, 0.106859,
		0.709346, -0.662359, 0.241056,
		27.060568, 35.344437, 35.211472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412382, 35.152710, 35.445290>,  <26.564024, 35.808086, 35.042732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412382, 35.152710, 35.445290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711695, 35.406944, 35.521294>,  <26.891283, 35.559486, 35.566895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711695, 35.406944, 35.521294>,  <26.412382, 35.152710, 35.445290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711695, 35.406944, 35.521294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357024, 0.144441, 0.922860,
		0.559115, -0.758395, 0.335003,
		0.748281, 0.635589, 0.190006,
		26.936178, 35.597622, 35.578297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473562, 35.108589, 36.166325>,  <26.412382, 35.152710, 35.445290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473562, 35.108589, 36.166325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672400, 35.446209, 36.085846>,  <26.791702, 35.648781, 36.037560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672400, 35.446209, 36.085846>,  <26.473562, 35.108589, 36.166325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672400, 35.446209, 36.085846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386782, 0.423104, 0.819379,
		0.776723, -0.329489, 0.536785,
		0.497092, 0.844050, -0.201195,
		26.821527, 35.699425, 36.025486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865927, 35.313763, 36.780800>,  <26.473562, 35.108589, 36.166325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865927, 35.313763, 36.780800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775970, 35.628239, 36.550552>,  <26.721996, 35.816925, 36.412403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775970, 35.628239, 36.550552>,  <26.865927, 35.313763, 36.780800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775970, 35.628239, 36.550552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533795, 0.394810, 0.747789,
		0.815160, 0.475434, 0.330873,
		-0.224892, 0.786186, -0.575617,
		26.708504, 35.864094, 36.377869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037600, 35.870403, 37.129742>,  <26.865927, 35.313763, 36.780800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037600, 35.870403, 37.129742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750914, 35.971172, 36.869633>,  <26.578903, 36.031635, 36.713566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750914, 35.971172, 36.869633>,  <27.037600, 35.870403, 37.129742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750914, 35.971172, 36.869633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388330, 0.630344, 0.672210,
		0.579243, 0.734302, -0.353945,
		-0.716713, 0.251926, -0.650274,
		26.535900, 36.046749, 36.674549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003935, 36.586098, 37.134819>,  <27.037600, 35.870403, 37.129742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003935, 36.586098, 37.134819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657955, 36.407116, 37.043919>,  <26.450367, 36.299725, 36.989376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657955, 36.407116, 37.043919>,  <27.003935, 36.586098, 37.134819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657955, 36.407116, 37.043919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464646, 0.542881, 0.699559,
		-0.189652, 0.710676, -0.677475,
		-0.864948, -0.447459, -0.227254,
		26.398470, 36.272877, 36.975742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476671, 37.144794, 36.994865>,  <27.003935, 36.586098, 37.134819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476671, 37.144794, 36.994865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253925, 36.829063, 37.098293>,  <26.120277, 36.639626, 37.160351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253925, 36.829063, 37.098293>,  <26.476671, 37.144794, 36.994865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253925, 36.829063, 37.098293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488646, 0.563060, 0.666474,
		-0.671661, 0.244784, -0.699251,
		-0.556863, -0.789331, 0.258573,
		26.086866, 36.592262, 37.175865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880337, 37.223404, 36.831520>,  <26.476671, 37.144794, 36.994865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.880337, 37.223404, 36.831520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888052, 37.016262, 37.173622>,  <25.892681, 36.891975, 37.378883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888052, 37.016262, 37.173622>,  <25.880337, 37.223404, 36.831520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.888052, 37.016262, 37.173622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566455, 0.699216, 0.436148,
		-0.823867, -0.492873, -0.279856,
		0.019286, -0.517854, 0.855252,
		25.893837, 36.860905, 37.430199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167963, 37.271347, 37.093761>,  <25.880337, 37.223404, 36.831520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167963, 37.271347, 37.093761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411720, 37.154343, 37.388538>,  <25.557974, 37.084141, 37.565403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411720, 37.154343, 37.388538>,  <25.167963, 37.271347, 37.093761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411720, 37.154343, 37.388538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333251, 0.748877, 0.572824,
		-0.719434, -0.594660, 0.358879,
		0.609391, -0.292513, 0.736938,
		25.594538, 37.066589, 37.609619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.727301, 37.208534, 37.726376>,  <25.167963, 37.271347, 37.093761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.727301, 37.208534, 37.726376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098558, 37.212620, 37.875206>,  <25.321314, 37.215069, 37.964504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.098558, 37.212620, 37.875206>,  <24.727301, 37.208534, 37.726376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.098558, 37.212620, 37.875206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321335, 0.526481, 0.787123,
		-0.187856, -0.850126, 0.491931,
		0.928146, 0.010209, 0.372077,
		25.377003, 37.215683, 37.986828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.675097, 37.178947, 38.439491>,  <24.727301, 37.208534, 37.726376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.675097, 37.178947, 38.439491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038332, 37.338688, 38.389057>,  <25.256273, 37.434532, 38.358799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.038332, 37.338688, 38.389057>,  <24.675097, 37.178947, 38.439491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.038332, 37.338688, 38.389057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166536, 0.620603, 0.766236,
		0.384241, -0.674813, 0.630068,
		0.908088, 0.399349, -0.126081,
		25.310759, 37.458492, 38.351234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.063171, 37.294498, 39.142303>,  <24.675097, 37.178947, 38.439491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.063171, 37.294498, 39.142303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185034, 37.550449, 38.860100>,  <25.258150, 37.704018, 38.690777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185034, 37.550449, 38.860100>,  <25.063171, 37.294498, 39.142303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185034, 37.550449, 38.860100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000338, 0.740795, 0.671731,
		0.952463, -0.204407, 0.225902,
		0.304654, 0.639875, -0.705511,
		25.276430, 37.742413, 38.648445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.798542, 37.523403, 39.278694>,  <25.063171, 37.294498, 39.142303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.798542, 37.523403, 39.278694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555868, 37.772873, 39.081532>,  <25.410263, 37.922554, 38.963234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.555868, 37.772873, 39.081532>,  <25.798542, 37.523403, 39.278694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.555868, 37.772873, 39.081532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075746, 0.662586, 0.745146,
		0.791325, 0.414734, -0.449223,
		-0.606686, 0.623679, -0.492907,
		25.373863, 37.959976, 38.933659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131607, 38.191750, 39.092426>,  <25.798542, 37.523403, 39.278694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131607, 38.191750, 39.092426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738422, 38.197479, 39.165730>,  <25.502512, 38.200916, 39.209713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738422, 38.197479, 39.165730>,  <26.131607, 38.191750, 39.092426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738422, 38.197479, 39.165730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133630, 0.740282, 0.658882,
		-0.126228, 0.672144, -0.729582,
		-0.982960, 0.014325, 0.183262,
		25.443535, 38.201778, 39.220707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.751308, 38.751266, 38.758049>,  <26.131607, 38.191750, 39.092426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.751308, 38.751266, 38.758049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631163, 38.623840, 39.117668>,  <25.559074, 38.547386, 39.333443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.631163, 38.623840, 39.117668>,  <25.751308, 38.751266, 38.758049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.631163, 38.623840, 39.117668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432903, 0.794374, 0.426104,
		-0.849927, 0.517190, -0.100695,
		-0.300366, -0.318566, 0.899053,
		25.541052, 38.528271, 39.387383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.988462, 38.437798, 37.977955>,  <25.751308, 38.751266, 38.758049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.988462, 38.437798, 37.977955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816517, 38.198009, 38.248020>,  <25.713348, 38.054138, 38.410061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816517, 38.198009, 38.248020>,  <25.988462, 38.437798, 37.977955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816517, 38.198009, 38.248020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298480, -0.800091, -0.520350,
		0.852130, -0.022156, 0.522861,
		-0.429865, -0.599470, 0.675168,
		25.687557, 38.018169, 38.450569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471487, 37.985237, 38.216064>,  <25.988462, 38.437798, 37.977955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471487, 37.985237, 38.216064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110260, 37.817726, 38.254223>,  <25.893524, 37.717220, 38.277119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.110260, 37.817726, 38.254223>,  <26.471487, 37.985237, 38.216064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.110260, 37.817726, 38.254223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344660, -0.839113, -0.420831,
		0.256283, -0.347158, 0.902108,
		-0.903066, -0.418773, 0.095399,
		25.839340, 37.692093, 38.282841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.578590, 37.315010, 38.554638>,  <26.471487, 37.985237, 38.216064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.578590, 37.315010, 38.554638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240149, 37.322922, 38.341576>,  <26.037085, 37.327667, 38.213737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240149, 37.322922, 38.341576>,  <26.578590, 37.315010, 38.554638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240149, 37.322922, 38.341576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267285, -0.848846, -0.456092,
		-0.461159, -0.528271, 0.712925,
		-0.846104, 0.019776, -0.532652,
		25.986317, 37.328854, 38.181782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324240, 36.606609, 38.542702>,  <26.578590, 37.315010, 38.554638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324240, 36.606609, 38.542702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106840, 36.761120, 38.244602>,  <25.976400, 36.853825, 38.065742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106840, 36.761120, 38.244602>,  <26.324240, 36.606609, 38.542702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.106840, 36.761120, 38.244602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015564, -0.883038, -0.469044,
		-0.839263, -0.266526, 0.473921,
		-0.543503, 0.386275, -0.745250,
		25.943790, 36.877003, 38.021027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.720097, 36.195480, 38.477844>,  <26.324240, 36.606609, 38.542702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.720097, 36.195480, 38.477844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837852, 36.355888, 38.130852>,  <25.908506, 36.452133, 37.922657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837852, 36.355888, 38.130852>,  <25.720097, 36.195480, 38.477844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837852, 36.355888, 38.130852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065547, -0.914038, -0.400297,
		-0.953435, 0.060983, -0.295370,
		0.294391, 0.401017, -0.867479,
		25.926170, 36.476192, 37.870609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233418, 36.118610, 37.972073>,  <25.720097, 36.195480, 38.477844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233418, 36.118610, 37.972073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617985, 36.104454, 37.862946>,  <25.848724, 36.095959, 37.797470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617985, 36.104454, 37.862946>,  <25.233418, 36.118610, 37.972073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617985, 36.104454, 37.862946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131445, -0.930260, -0.342548,
		-0.241665, 0.365191, -0.899018,
		0.961416, -0.035390, -0.272813,
		25.906410, 36.093838, 37.781101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.960348, 36.201862, 37.165401>,  <25.233418, 36.118610, 37.972073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.960348, 36.201862, 37.165401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358284, 36.205341, 37.205830>,  <25.597046, 36.207428, 37.230087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358284, 36.205341, 37.205830>,  <24.960348, 36.201862, 37.165401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358284, 36.205341, 37.205830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095839, -0.407118, -0.908334,
		0.033251, 0.913334, -0.405851,
		0.994841, 0.008694, 0.101070,
		25.656736, 36.207951, 37.236149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145638, 35.935074, 36.567112>,  <24.960348, 36.201862, 37.165401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145638, 35.935074, 36.567112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522503, 36.020607, 36.670341>,  <25.748623, 36.071926, 36.732281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522503, 36.020607, 36.670341>,  <25.145638, 35.935074, 36.567112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522503, 36.020607, 36.670341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298552, -0.185570, -0.936179,
		-0.152296, 0.959082, -0.238678,
		0.942164, 0.213834, 0.258074,
		25.805153, 36.084759, 36.747765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497961, 36.141857, 35.960125>,  <25.145638, 35.935074, 36.567112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.497961, 36.141857, 35.960125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827190, 36.101788, 36.183739>,  <26.024729, 36.077747, 36.317905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827190, 36.101788, 36.183739>,  <25.497961, 36.141857, 35.960125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827190, 36.101788, 36.183739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491720, -0.366851, -0.789703,
		0.284186, 0.924871, -0.252690,
		0.823073, -0.100170, 0.559032,
		26.074112, 36.071735, 36.351448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037394, 36.677467, 35.756248>,  <25.497961, 36.141857, 35.960125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037394, 36.677467, 35.756248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276501, 36.614616, 36.070698>,  <26.419966, 36.576904, 36.259365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276501, 36.614616, 36.070698>,  <26.037394, 36.677467, 35.756248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276501, 36.614616, 36.070698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622774, -0.526459, -0.578787,
		0.504804, 0.835555, -0.216844,
		0.597768, -0.157129, 0.786120,
		26.455832, 36.567478, 36.306534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.734272, 36.907192, 35.696903>,  <26.037394, 36.677467, 35.756248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.734272, 36.907192, 35.696903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761217, 36.594147, 35.944447>,  <26.777384, 36.406319, 36.092972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761217, 36.594147, 35.944447>,  <26.734272, 36.907192, 35.696903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761217, 36.594147, 35.944447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651673, -0.435166, -0.621251,
		0.755503, 0.445141, 0.480692,
		0.067363, -0.782611, 0.618855,
		26.781425, 36.359364, 36.130104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380466, 36.822380, 35.727921>,  <26.734272, 36.907192, 35.696903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380466, 36.822380, 35.727921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209820, 36.473267, 35.822781>,  <27.107431, 36.263798, 35.879696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209820, 36.473267, 35.822781>,  <27.380466, 36.822380, 35.727921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209820, 36.473267, 35.822781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603209, -0.469948, -0.644429,
		0.673898, -0.131872, 0.726960,
		-0.426615, -0.872788, 0.237150,
		27.081835, 36.211430, 35.893925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932903, 36.347466, 35.815723>,  <27.380466, 36.822380, 35.727921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932903, 36.347466, 35.815723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606007, 36.128292, 35.744297>,  <27.409868, 35.996788, 35.701439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606007, 36.128292, 35.744297>,  <27.932903, 36.347466, 35.815723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606007, 36.128292, 35.744297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481625, -0.479212, -0.733753,
		0.316476, -0.685655, 0.655530,
		-0.817240, -0.547935, -0.178569,
		27.360834, 35.963913, 35.690727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.318213, 35.816685, 35.583096>,  <27.932903, 36.347466, 35.815723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.318213, 35.816685, 35.583096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923000, 35.760433, 35.557743>,  <27.685873, 35.726685, 35.542530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.923000, 35.760433, 35.557743>,  <28.318213, 35.816685, 35.583096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.923000, 35.760433, 35.557743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139587, -0.640287, -0.755346,
		0.065638, -0.755153, 0.652254,
		-0.988032, -0.140626, -0.063383,
		27.626591, 35.718246, 35.538727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068352, 35.055359, 35.838348>,  <28.318213, 35.816685, 35.583096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068352, 35.055359, 35.838348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866158, 35.239559, 35.546478>,  <27.744841, 35.350079, 35.371357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.866158, 35.239559, 35.546478>,  <28.068352, 35.055359, 35.838348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866158, 35.239559, 35.546478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097043, -0.809965, -0.578394,
		-0.857361, -0.363179, 0.364736,
		-0.505484, 0.460498, -0.729677,
		27.714512, 35.377708, 35.327576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.510635, 34.714046, 35.604099>,  <28.068352, 35.055359, 35.838348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.510635, 34.714046, 35.604099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708305, 34.937611, 35.337742>,  <27.826908, 35.071747, 35.177929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708305, 34.937611, 35.337742>,  <27.510635, 34.714046, 35.604099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708305, 34.937611, 35.337742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269069, -0.826676, -0.494175,
		-0.826676, 0.065037, -0.558907,
		0.494175, 0.558907, -0.665894,
		27.856558, 35.105282, 35.137974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271561, 34.400734, 34.971226>,  <27.510635, 34.714046, 35.604099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271561, 34.400734, 34.971226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627604, 34.572342, 34.909706>,  <27.841228, 34.675304, 34.872795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627604, 34.572342, 34.909706>,  <27.271561, 34.400734, 34.971226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627604, 34.572342, 34.909706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251300, -0.743536, -0.619679,
		-0.380208, 0.512931, -0.769639,
		0.890107, 0.429017, -0.153799,
		27.894636, 34.701046, 34.863567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.936487, 33.749481, 34.739307>,  <27.271561, 34.400734, 34.971226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.936487, 33.749481, 34.739307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838642, 33.842266, 35.115894>,  <26.779936, 33.897938, 35.341846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838642, 33.842266, 35.115894>,  <26.936487, 33.749481, 34.739307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838642, 33.842266, 35.115894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316124, 0.898831, -0.303593,
		-0.916641, -0.371883, -0.146536,
		-0.244612, 0.231962, 0.941466,
		26.765259, 33.911854, 35.398335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216375, 33.319092, 35.225914>,  <26.936487, 33.749481, 34.739307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216375, 33.319092, 35.225914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470036, 33.011856, 35.190388>,  <27.622231, 32.827515, 35.169071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470036, 33.011856, 35.190388>,  <27.216375, 33.319092, 35.225914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470036, 33.011856, 35.190388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770522, 0.618187, 0.155375,
		-0.064437, -0.166965, 0.983855,
		0.634148, -0.768093, -0.088816,
		27.660280, 32.781429, 35.163742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625998, 33.321880, 35.721130>,  <27.216375, 33.319092, 35.225914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625998, 33.321880, 35.721130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815737, 33.159908, 35.408459>,  <27.929581, 33.062725, 35.220856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815737, 33.159908, 35.408459>,  <27.625998, 33.321880, 35.721130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815737, 33.159908, 35.408459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709887, 0.701062, 0.067617,
		0.520628, -0.586980, 0.620001,
		0.474349, -0.404928, -0.781682,
		27.958042, 33.038429, 35.173954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294363, 33.280735, 35.931396>,  <27.625998, 33.321880, 35.721130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294363, 33.280735, 35.931396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347927, 33.196243, 35.544109>,  <28.380066, 33.145550, 35.311737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347927, 33.196243, 35.544109>,  <28.294363, 33.280735, 35.931396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347927, 33.196243, 35.544109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885594, 0.463973, 0.021264,
		0.444737, -0.860298, 0.249191,
		0.133911, -0.211225, -0.968221,
		28.388100, 33.132877, 35.253643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815470, 33.353378, 35.379555>,  <28.294363, 33.280735, 35.931396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815470, 33.353378, 35.379555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113832, 33.314861, 35.643177>,  <29.292850, 33.291752, 35.801350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113832, 33.314861, 35.643177>,  <28.815470, 33.353378, 35.379555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113832, 33.314861, 35.643177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618150, 0.468549, -0.631152,
		-0.248024, 0.878174, 0.409016,
		0.745905, -0.096292, 0.659055,
		29.337605, 33.285973, 35.840893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063393, 34.036976, 35.576645>,  <28.815470, 33.353378, 35.379555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063393, 34.036976, 35.576645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348770, 33.756882, 35.587032>,  <29.519997, 33.588825, 35.593266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.348770, 33.756882, 35.587032>,  <29.063393, 34.036976, 35.576645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.348770, 33.756882, 35.587032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604881, 0.596738, -0.527279,
		0.353721, 0.391891, 0.849295,
		0.713443, -0.700232, 0.025969,
		29.562803, 33.546814, 35.594822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778198, 34.270290, 35.772755>,  <29.063393, 34.036976, 35.576645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778198, 34.270290, 35.772755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871824, 33.933174, 35.578880>,  <29.927999, 33.730904, 35.462555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871824, 33.933174, 35.578880>,  <29.778198, 34.270290, 35.772755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871824, 33.933174, 35.578880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712862, 0.487768, -0.503895,
		0.661091, -0.227569, 0.714963,
		0.234065, -0.842790, -0.484684,
		29.942043, 33.680336, 35.433475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269018, 34.556175, 35.246342>,  <29.778198, 34.270290, 35.772755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269018, 34.556175, 35.246342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281521, 34.162857, 35.174614>,  <30.289022, 33.926865, 35.131577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281521, 34.162857, 35.174614>,  <30.269018, 34.556175, 35.246342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281521, 34.162857, 35.174614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661670, 0.154824, -0.733637,
		0.749144, -0.095723, 0.655455,
		0.031255, -0.983294, -0.179322,
		30.290897, 33.867870, 35.120819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933908, 34.521667, 34.999599>,  <30.269018, 34.556175, 35.246342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933908, 34.521667, 34.999599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728739, 34.192356, 34.902336>,  <30.605637, 33.994770, 34.843979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728739, 34.192356, 34.902336>,  <30.933908, 34.521667, 34.999599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728739, 34.192356, 34.902336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611678, -0.151781, -0.776410,
		0.602294, -0.546972, 0.581432,
		-0.512925, -0.823276, -0.243154,
		30.574862, 33.945374, 34.829391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532154, 34.214386, 34.651306>,  <30.933908, 34.521667, 34.999599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532154, 34.214386, 34.651306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176044, 34.057419, 34.558849>,  <30.962379, 33.963238, 34.503376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176044, 34.057419, 34.558849>,  <31.532154, 34.214386, 34.651306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176044, 34.057419, 34.558849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300979, -0.126053, -0.945263,
		0.341798, -0.911110, 0.230330,
		-0.890272, -0.392414, -0.231141,
		30.908962, 33.939693, 34.489506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647673, 33.518940, 34.460850>,  <31.532154, 34.214386, 34.651306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647673, 33.518940, 34.460850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333424, 33.675034, 34.268803>,  <31.144875, 33.768688, 34.153576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333424, 33.675034, 34.268803>,  <31.647673, 33.518940, 34.460850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333424, 33.675034, 34.268803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432680, -0.208158, -0.877188,
		-0.442248, -0.896877, -0.005313,
		-0.785624, 0.390233, -0.480118,
		31.097736, 33.792103, 34.124767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718081, 33.146393, 33.824703>,  <31.647673, 33.518940, 34.460850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718081, 33.146393, 33.824703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511934, 33.481598, 33.752995>,  <31.388247, 33.682720, 33.709969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.511934, 33.481598, 33.752995>,  <31.718081, 33.146393, 33.824703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511934, 33.481598, 33.752995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417400, 0.062761, -0.906553,
		-0.748449, -0.542034, -0.382130,
		-0.515365, 0.838010, -0.179271,
		31.357325, 33.733002, 33.699215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288261, 33.173019, 33.235661>,  <31.718081, 33.146393, 33.824703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288261, 33.173019, 33.235661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441957, 33.538368, 33.289482>,  <31.534176, 33.757580, 33.321774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441957, 33.538368, 33.289482>,  <31.288261, 33.173019, 33.235661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441957, 33.538368, 33.289482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501057, -0.083898, -0.861338,
		-0.775436, 0.398380, -0.489890,
		0.384241, 0.913375, 0.134554,
		31.557230, 33.812382, 33.329849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280962, 33.576874, 32.594635>,  <31.288261, 33.173019, 33.235661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280962, 33.576874, 32.594635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553675, 33.753796, 32.827717>,  <31.717302, 33.859951, 32.967564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553675, 33.753796, 32.827717>,  <31.280962, 33.576874, 32.594635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553675, 33.753796, 32.827717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592342, 0.133663, -0.794522,
		-0.429308, 0.886848, -0.170868,
		0.681781, 0.442307, 0.582700,
		31.758209, 33.886486, 33.002525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537781, 34.274818, 32.312592>,  <31.280962, 33.576874, 32.594635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537781, 34.274818, 32.312592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854746, 34.189957, 32.541351>,  <32.044926, 34.139038, 32.678608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854746, 34.189957, 32.541351>,  <31.537781, 34.274818, 32.312592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854746, 34.189957, 32.541351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607330, 0.187026, -0.772121,
		0.056850, 0.959172, 0.277051,
		0.792413, -0.212157, 0.571902,
		32.092468, 34.126308, 32.712921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107830, 34.825012, 32.095959>,  <31.537781, 34.274818, 32.312592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107830, 34.825012, 32.095959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289768, 34.547386, 32.319168>,  <32.398930, 34.380810, 32.453094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289768, 34.547386, 32.319168>,  <32.107830, 34.825012, 32.095959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289768, 34.547386, 32.319168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816877, 0.075572, -0.571840,
		0.354723, 0.715934, 0.601341,
		0.454844, -0.694066, 0.558022,
		32.426220, 34.339165, 32.486576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804253, 35.072556, 32.279915>,  <32.107830, 34.825012, 32.095959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804253, 35.072556, 32.279915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863880, 34.684956, 32.358715>,  <32.899658, 34.452396, 32.405994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863880, 34.684956, 32.358715>,  <32.804253, 35.072556, 32.279915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863880, 34.684956, 32.358715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887741, 0.043399, -0.458292,
		0.435537, 0.243204, 0.866694,
		0.149072, -0.969004, 0.197000,
		32.908600, 34.394253, 32.417816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670391, 34.931267, 32.383953>,  <32.804253, 35.072556, 32.279915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670391, 34.931267, 32.383953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528137, 34.564560, 32.311230>,  <33.442783, 34.344536, 32.267597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528137, 34.564560, 32.311230>,  <33.670391, 34.931267, 32.383953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528137, 34.564560, 32.311230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830869, -0.221039, -0.510684,
		0.427994, -0.332677, 0.840326,
		-0.355638, -0.916770, -0.181808,
		33.421444, 34.289528, 32.256687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254955, 34.559513, 32.440331>,  <33.670391, 34.931267, 32.383953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254955, 34.559513, 32.440331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002586, 34.355843, 32.206173>,  <33.851166, 34.233643, 32.065678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002586, 34.355843, 32.206173>,  <34.254955, 34.559513, 32.440331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002586, 34.355843, 32.206173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727843, -0.127159, -0.673852,
		0.268670, -0.851219, 0.450825,
		-0.630921, -0.509173, -0.585390,
		33.813309, 34.203091, 32.030556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696209, 34.143532, 32.071114>,  <34.254955, 34.559513, 32.440331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696209, 34.143532, 32.071114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360535, 34.120163, 31.854834>,  <34.159130, 34.106140, 31.725065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360535, 34.120163, 31.854834>,  <34.696209, 34.143532, 32.071114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360535, 34.120163, 31.854834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543236, -0.137211, -0.828292,
		-0.025799, -0.988817, 0.146882,
		-0.839183, -0.058423, -0.540702,
		34.108780, 34.102638, 31.692623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926865, 33.632133, 31.666685>,  <34.696209, 34.143532, 32.071114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926865, 33.632133, 31.666685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609692, 33.796917, 31.487112>,  <34.419388, 33.895786, 31.379368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609692, 33.796917, 31.487112>,  <34.926865, 33.632133, 31.666685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609692, 33.796917, 31.487112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528546, 0.098493, -0.843172,
		-0.303138, -0.905862, -0.295839,
		-0.792935, 0.411962, -0.448933,
		34.371811, 33.920506, 31.352432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882584, 33.285530, 31.026772>,  <34.926865, 33.632133, 31.666685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882584, 33.285530, 31.026772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691784, 33.636318, 31.003466>,  <34.577305, 33.846790, 30.989483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.691784, 33.636318, 31.003466>,  <34.882584, 33.285530, 31.026772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691784, 33.636318, 31.003466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585910, 0.267875, -0.764822,
		-0.655119, -0.398957, -0.641602,
		-0.477000, 0.876970, -0.058263,
		34.548683, 33.899410, 30.985987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737789, 33.416626, 30.337360>,  <34.882584, 33.285530, 31.026772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737789, 33.416626, 30.337360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734249, 33.786541, 30.489515>,  <34.732124, 34.008488, 30.580809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734249, 33.786541, 30.489515>,  <34.737789, 33.416626, 30.337360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734249, 33.786541, 30.489515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543077, 0.323857, -0.774715,
		-0.839636, 0.199725, -0.505095,
		-0.008848, 0.924785, 0.380388,
		34.731594, 34.063976, 30.603632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492535, 33.772060, 29.842909>,  <34.737789, 33.416626, 30.337360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492535, 33.772060, 29.842909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671749, 34.038662, 30.081251>,  <34.779278, 34.198624, 30.224257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671749, 34.038662, 30.081251>,  <34.492535, 33.772060, 29.842909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671749, 34.038662, 30.081251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584438, 0.286006, -0.759364,
		-0.676534, 0.688461, -0.261387,
		0.448034, 0.666499, 0.595855,
		34.806160, 34.238613, 30.260008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464214, 34.347572, 29.483429>,  <34.492535, 33.772060, 29.842909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464214, 34.347572, 29.483429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748825, 34.442986, 29.747801>,  <34.919594, 34.500233, 29.906424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748825, 34.442986, 29.747801>,  <34.464214, 34.347572, 29.483429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748825, 34.442986, 29.747801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572574, 0.348400, -0.742143,
		-0.407291, 0.906488, 0.111322,
		0.711529, 0.238529, 0.660932,
		34.962284, 34.514545, 29.946081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711395, 34.830940, 29.128557>,  <34.464214, 34.347572, 29.483429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711395, 34.830940, 29.128557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986137, 34.742882, 29.405621>,  <35.150982, 34.690048, 29.571857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.986137, 34.742882, 29.405621>,  <34.711395, 34.830940, 29.128557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986137, 34.742882, 29.405621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719837, 0.337637, -0.606495,
		-0.100350, 0.915171, 0.390373,
		0.686851, -0.220143, 0.692656,
		35.192192, 34.676838, 29.613417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054459, 35.457912, 29.319946>,  <34.711395, 34.830940, 29.128557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054459, 35.457912, 29.319946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297901, 35.153797, 29.410772>,  <35.443966, 34.971329, 29.465267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297901, 35.153797, 29.410772>,  <35.054459, 35.457912, 29.319946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297901, 35.153797, 29.410772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596444, 0.249619, -0.762853,
		0.523311, 0.599706, 0.605391,
		0.608605, -0.760291, 0.227063,
		35.480484, 34.925709, 29.478891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740799, 35.735081, 29.483288>,  <35.054459, 35.457912, 29.319946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740799, 35.735081, 29.483288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778217, 35.358257, 29.354431>,  <35.800667, 35.132164, 29.277117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778217, 35.358257, 29.354431>,  <35.740799, 35.735081, 29.483288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778217, 35.358257, 29.354431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581167, 0.314380, -0.750607,
		0.808390, -0.117003, 0.576901,
		0.093543, -0.942059, -0.322140,
		35.806278, 35.075638, 29.257790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374878, 35.704559, 29.059656>,  <35.740799, 35.735081, 29.483288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374878, 35.704559, 29.059656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170200, 35.385227, 28.932638>,  <36.047394, 35.193626, 28.856428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170200, 35.385227, 28.932638>,  <36.374878, 35.704559, 29.059656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170200, 35.385227, 28.932638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313498, 0.170622, -0.934134,
		0.799931, -0.577539, 0.162970,
		-0.511693, -0.798334, -0.317543,
		36.016693, 35.145725, 28.837376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846458, 35.299263, 28.631628>,  <36.374878, 35.704559, 29.059656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846458, 35.299263, 28.631628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475544, 35.187695, 28.531757>,  <36.252995, 35.120754, 28.471836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475544, 35.187695, 28.531757>,  <36.846458, 35.299263, 28.631628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475544, 35.187695, 28.531757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230144, 0.101263, -0.967874,
		0.295242, -0.954960, -0.029708,
		-0.927289, -0.278920, -0.249676,
		36.197357, 35.104019, 28.456854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905579, 35.020809, 27.934618>,  <36.846458, 35.299263, 28.631628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905579, 35.020809, 27.934618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506084, 35.013149, 27.953236>,  <36.266388, 35.008553, 27.964407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506084, 35.013149, 27.953236>,  <36.905579, 35.020809, 27.934618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506084, 35.013149, 27.953236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047403, 0.047065, -0.997766,
		0.016909, -0.998709, -0.047912,
		-0.998733, -0.019143, 0.046546,
		36.206463, 35.007404, 27.967199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689934, 34.362637, 27.569132>,  <36.905579, 35.020809, 27.934618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689934, 34.362637, 27.569132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436241, 34.671619, 27.582170>,  <36.284023, 34.857010, 27.589993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436241, 34.671619, 27.582170>,  <36.689934, 34.362637, 27.569132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436241, 34.671619, 27.582170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048674, 0.002183, -0.998812,
		-0.771607, -0.635068, 0.036214,
		-0.634235, 0.772453, 0.032595,
		36.245972, 34.903355, 27.591949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298992, 34.200798, 26.932940>,  <36.689934, 34.362637, 27.569132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298992, 34.200798, 26.932940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213127, 34.571117, 27.057400>,  <36.161610, 34.793308, 27.132076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.213127, 34.571117, 27.057400>,  <36.298992, 34.200798, 26.932940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213127, 34.571117, 27.057400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004085, 0.319423, -0.947604,
		-0.976681, -0.202140, -0.072348,
		-0.214658, 0.925802, 0.311149,
		36.148731, 34.848858, 27.150743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764862, 34.447277, 26.435904>,  <36.298992, 34.200798, 26.932940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764862, 34.447277, 26.435904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950581, 34.746284, 26.625916>,  <36.062012, 34.925690, 26.739923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950581, 34.746284, 26.625916>,  <35.764862, 34.447277, 26.435904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950581, 34.746284, 26.625916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146057, 0.464378, -0.873510,
		-0.873556, 0.474945, 0.106427,
		0.464292, 0.747516, 0.475029,
		36.089867, 34.970539, 26.768425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635929, 35.008362, 25.986959>,  <35.764862, 34.447277, 26.435904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635929, 35.008362, 25.986959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930862, 35.160400, 26.210337>,  <36.107822, 35.251625, 26.344362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930862, 35.160400, 26.210337>,  <35.635929, 35.008362, 25.986959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930862, 35.160400, 26.210337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432565, 0.369301, -0.822499,
		-0.518865, 0.848022, 0.107882,
		0.737338, 0.380100, 0.558442,
		36.152065, 35.274429, 26.377869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791115, 35.709381, 25.715731>,  <35.635929, 35.008362, 25.986959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791115, 35.709381, 25.715731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099506, 35.621536, 25.954847>,  <36.284542, 35.568829, 26.098316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099506, 35.621536, 25.954847>,  <35.791115, 35.709381, 25.715731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099506, 35.621536, 25.954847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634757, 0.341117, -0.693341,
		-0.051647, 0.914006, 0.402399,
		0.770984, -0.219617, 0.597790,
		36.330803, 35.555653, 26.134184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179813, 36.337460, 25.837835>,  <35.791115, 35.709381, 25.715731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179813, 36.337460, 25.837835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429733, 36.027931, 25.879457>,  <36.579685, 35.842216, 25.904430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429733, 36.027931, 25.879457>,  <36.179813, 36.337460, 25.837835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429733, 36.027931, 25.879457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641722, 0.433026, -0.632994,
		0.444763, 0.462271, 0.767132,
		0.624803, -0.773818, 0.104055,
		36.617176, 35.795784, 25.910673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724327, 36.718452, 25.773537>,  <36.179813, 36.337460, 25.837835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724327, 36.718452, 25.773537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853680, 36.343079, 25.724936>,  <36.931290, 36.117855, 25.695774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853680, 36.343079, 25.724936>,  <36.724327, 36.718452, 25.773537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853680, 36.343079, 25.724936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718748, 0.327110, -0.613515,
		0.615489, 0.111069, 0.780280,
		0.323380, -0.938436, -0.121502,
		36.950695, 36.061546, 25.688484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337551, 36.832619, 25.841791>,  <36.724327, 36.718452, 25.773537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337551, 36.832619, 25.841791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289486, 36.479980, 25.659206>,  <37.260647, 36.268398, 25.549656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289486, 36.479980, 25.659206>,  <37.337551, 36.832619, 25.841791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289486, 36.479980, 25.659206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706910, 0.246842, -0.662833,
		0.697022, -0.402322, 0.593546,
		-0.120160, -0.881593, -0.456460,
		37.253437, 36.215504, 25.522268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123234, 36.359577, 25.742859>,  <37.337551, 36.832619, 25.841791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123234, 36.359577, 25.742859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863693, 36.228241, 25.468288>,  <37.707970, 36.149441, 25.303545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863693, 36.228241, 25.468288>,  <38.123234, 36.359577, 25.742859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863693, 36.228241, 25.468288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585983, 0.359855, -0.726036,
		0.485401, -0.873326, -0.041092,
		-0.648852, -0.328339, -0.686428,
		37.669037, 36.129738, 25.262360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577419, 36.075016, 25.268055>,  <38.123234, 36.359577, 25.742859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577419, 36.075016, 25.268055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233936, 36.114288, 25.066866>,  <38.027847, 36.137852, 24.946154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233936, 36.114288, 25.066866>,  <38.577419, 36.075016, 25.268055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233936, 36.114288, 25.066866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510592, 0.247724, -0.823364,
		0.043756, -0.963843, -0.262855,
		-0.858709, 0.098184, -0.502970,
		37.976322, 36.143745, 24.915976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655384, 35.592407, 24.684015>,  <38.577419, 36.075016, 25.268055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655384, 35.592407, 24.684015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409233, 35.899990, 24.614727>,  <38.261543, 36.084541, 24.573154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409233, 35.899990, 24.614727>,  <38.655384, 35.592407, 24.684015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409233, 35.899990, 24.614727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478706, 0.190006, -0.857169,
		-0.626217, -0.610407, -0.485032,
		-0.615381, 0.768961, -0.173221,
		38.224617, 36.130680, 24.562761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621365, 35.496349, 23.977081>,  <38.655384, 35.592407, 24.684015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621365, 35.496349, 23.977081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464802, 35.854931, 24.060192>,  <38.370865, 36.070080, 24.110058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464802, 35.854931, 24.060192>,  <38.621365, 35.496349, 23.977081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464802, 35.854931, 24.060192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415673, 0.373681, -0.829203,
		-0.820984, -0.238189, -0.518893,
		-0.391408, 0.896453, 0.207777,
		38.347378, 36.123867, 24.122526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387127, 35.732544, 23.314337>,  <38.621365, 35.496349, 23.977081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387127, 35.732544, 23.314337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447968, 36.042095, 23.560257>,  <38.484470, 36.227825, 23.707809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447968, 36.042095, 23.560257>,  <38.387127, 35.732544, 23.314337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447968, 36.042095, 23.560257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284782, 0.561343, -0.777041,
		-0.946449, 0.293270, -0.135007,
		0.152097, 0.773878, 0.614801,
		38.493595, 36.274258, 23.744698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024429, 36.364635, 23.040436>,  <38.387127, 35.732544, 23.314337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024429, 36.364635, 23.040436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296352, 36.512829, 23.293606>,  <38.459507, 36.601746, 23.445507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296352, 36.512829, 23.293606>,  <38.024429, 36.364635, 23.040436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296352, 36.512829, 23.293606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327801, 0.618513, -0.714135,
		-0.656050, 0.692951, 0.299026,
		0.679812, 0.370487, 0.632926,
		38.500298, 36.623974, 23.483484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146893, 37.015862, 22.778339>,  <38.024429, 36.364635, 23.040436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146893, 37.015862, 22.778339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465534, 36.961304, 23.013906>,  <38.656719, 36.928570, 23.155247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.465534, 36.961304, 23.013906>,  <38.146893, 37.015862, 22.778339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465534, 36.961304, 23.013906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531054, 0.623327, -0.573973,
		-0.288801, 0.769974, 0.568976,
		0.796602, -0.136393, 0.588916,
		38.704514, 36.920387, 23.190580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326019, 37.710842, 22.898300>,  <38.146893, 37.015862, 22.778339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326019, 37.710842, 22.898300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650951, 37.492115, 22.979403>,  <38.845909, 37.360878, 23.028065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650951, 37.492115, 22.979403>,  <38.326019, 37.710842, 22.898300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650951, 37.492115, 22.979403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554619, 0.616839, -0.558486,
		0.180321, 0.566128, 0.804353,
		0.812331, -0.546816, 0.202756,
		38.894650, 37.328072, 23.040230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760353, 38.129402, 23.234787>,  <38.326019, 37.710842, 22.898300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760353, 38.129402, 23.234787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954594, 37.842606, 23.034744>,  <39.071140, 37.670528, 22.914719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954594, 37.842606, 23.034744>,  <38.760353, 38.129402, 23.234787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954594, 37.842606, 23.034744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485512, 0.696947, -0.527771,
		0.726956, 0.013481, 0.686552,
		0.485606, -0.716995, -0.500105,
		39.100277, 37.627506, 22.884712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266975, 38.468967, 22.877520>,  <38.760353, 38.129402, 23.234787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266975, 38.468967, 22.877520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307766, 38.127312, 22.673538>,  <39.332241, 37.922318, 22.551149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307766, 38.127312, 22.673538>,  <39.266975, 38.468967, 22.877520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307766, 38.127312, 22.673538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411410, 0.502943, -0.760125,
		0.905728, -0.132288, 0.402686,
		0.101972, -0.854136, -0.509955,
		39.338356, 37.871071, 22.520552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009018, 38.260529, 22.743702>,  <39.266975, 38.468967, 22.877520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009018, 38.260529, 22.743702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787582, 38.071941, 22.469109>,  <39.654720, 37.958790, 22.304354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787582, 38.071941, 22.469109>,  <40.009018, 38.260529, 22.743702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787582, 38.071941, 22.469109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535358, 0.429949, -0.727005,
		0.637911, -0.769976, 0.014389,
		-0.553590, -0.471467, -0.686482,
		39.621506, 37.930500, 22.263165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533661, 37.977551, 22.203119>,  <40.009018, 38.260529, 22.743702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533661, 37.977551, 22.203119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177917, 37.972504, 22.020308>,  <39.964470, 37.969475, 21.910620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177917, 37.972504, 22.020308>,  <40.533661, 37.977551, 22.203119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177917, 37.972504, 22.020308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393259, 0.488755, -0.778760,
		0.233205, -0.872330, -0.429716,
		-0.889361, -0.012621, -0.457031,
		39.911110, 37.968716, 21.883198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725193, 37.756725, 21.661226>,  <40.533661, 37.977551, 22.203119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725193, 37.756725, 21.661226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364227, 37.909489, 21.581440>,  <40.147648, 38.001148, 21.533567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.364227, 37.909489, 21.581440>,  <40.725193, 37.756725, 21.661226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364227, 37.909489, 21.581440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360338, 0.415151, -0.835348,
		-0.236219, -0.825708, -0.512257,
		-0.902417, 0.381911, -0.199467,
		40.093502, 38.024063, 21.521601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711632, 37.696617, 20.956882>,  <40.725193, 37.756725, 21.661226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711632, 37.696617, 20.956882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428703, 37.967651, 21.037453>,  <40.258945, 38.130272, 21.085794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428703, 37.967651, 21.037453>,  <40.711632, 37.696617, 20.956882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428703, 37.967651, 21.037453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276380, 0.527348, -0.803442,
		-0.650622, -0.512622, -0.560276,
		-0.707322, 0.677586, 0.201426,
		40.216507, 38.170929, 21.097881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479298, 37.944477, 20.337225>,  <40.711632, 37.696617, 20.956882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479298, 37.944477, 20.337225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341362, 38.241611, 20.566755>,  <40.258602, 38.419891, 20.704473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.341362, 38.241611, 20.566755>,  <40.479298, 37.944477, 20.337225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341362, 38.241611, 20.566755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306404, 0.666918, -0.679218,
		-0.887246, -0.058396, -0.457586,
		-0.344836, 0.742840, 0.573827,
		40.237911, 38.464462, 20.738903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105934, 38.403919, 19.898567>,  <40.479298, 37.944477, 20.337225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105934, 38.403919, 19.898567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201080, 38.626419, 20.217064>,  <40.258167, 38.759918, 20.408163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201080, 38.626419, 20.217064>,  <40.105934, 38.403919, 19.898567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201080, 38.626419, 20.217064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295203, 0.739591, -0.604864,
		-0.925351, 0.378930, 0.011716,
		0.237866, 0.556253, 0.796243,
		40.272442, 38.793297, 20.455936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778461, 39.069992, 19.838821>,  <40.105934, 38.403919, 19.898567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778461, 39.069992, 19.838821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114204, 39.086868, 20.055599>,  <40.315651, 39.096992, 20.185665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114204, 39.086868, 20.055599>,  <39.778461, 39.069992, 19.838821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114204, 39.086868, 20.055599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287586, 0.811564, -0.508584,
		-0.461278, 0.582738, 0.669058,
		0.839355, 0.042187, 0.541944,
		40.366013, 39.099525, 20.218182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059494, 39.707935, 20.191675>,  <39.778461, 39.069992, 19.838821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059494, 39.707935, 20.191675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397469, 39.515087, 20.099033>,  <40.600254, 39.399380, 20.043447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397469, 39.515087, 20.099033>,  <40.059494, 39.707935, 20.191675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397469, 39.515087, 20.099033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387355, 0.850169, -0.356609,
		0.368831, 0.211599, 0.905091,
		0.844938, -0.482120, -0.231605,
		40.650951, 39.370453, 20.029552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338211, 40.491035, 20.521467>,  <40.059494, 39.707935, 20.191675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338211, 40.491035, 20.521467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542450, 40.752151, 20.745306>,  <40.664993, 40.908821, 20.879608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542450, 40.752151, 20.745306>,  <40.338211, 40.491035, 20.521467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542450, 40.752151, 20.745306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519201, 0.284688, -0.805843,
		-0.685360, 0.702006, -0.193570,
		0.510600, 0.652795, 0.559596,
		40.695629, 40.947990, 20.913185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279327, 41.236721, 20.183525>,  <40.338211, 40.491035, 20.521467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279327, 41.236721, 20.183525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622799, 41.222126, 20.388010>,  <40.828884, 41.213367, 20.510700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622799, 41.222126, 20.388010>,  <40.279327, 41.236721, 20.183525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622799, 41.222126, 20.388010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480943, 0.402031, -0.779144,
		-0.177091, 0.914899, 0.362766,
		0.858681, -0.036490, 0.511211,
		40.880402, 41.211178, 20.541372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598331, 41.867882, 20.224157>,  <40.279327, 41.236721, 20.183525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.598331, 41.867882, 20.224157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882847, 41.587975, 20.250668>,  <41.053555, 41.420029, 20.266573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882847, 41.587975, 20.250668>,  <40.598331, 41.867882, 20.224157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882847, 41.587975, 20.250668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537560, 0.480800, -0.692719,
		0.452881, 0.528347, 0.718156,
		0.711286, -0.699772, 0.066273,
		41.096233, 41.378044, 20.270550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402512, 42.124744, 20.307617>,  <40.598331, 41.867882, 20.224157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402512, 42.124744, 20.307617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386578, 41.759960, 20.144279>,  <41.377018, 41.541088, 20.046278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386578, 41.759960, 20.144279>,  <41.402512, 42.124744, 20.307617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386578, 41.759960, 20.144279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683977, 0.273030, -0.676484,
		0.728416, -0.306243, 0.612883,
		-0.039833, -0.911960, -0.408342,
		41.374626, 41.486374, 20.021776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054008, 41.653946, 20.358397>,  <41.402512, 42.124744, 20.307617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054008, 41.653946, 20.358397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840248, 41.581142, 20.028236>,  <41.711990, 41.537460, 19.830141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840248, 41.581142, 20.028236>,  <42.054008, 41.653946, 20.358397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840248, 41.581142, 20.028236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790022, 0.239581, -0.564328,
		0.300464, -0.953663, 0.015759,
		-0.534403, -0.182011, -0.825401,
		41.679928, 41.526539, 19.780617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070431, 40.953663, 20.661520>,  <42.054008, 41.653946, 20.358397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070431, 40.953663, 20.661520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754932, 41.182503, 20.571552>,  <41.565636, 41.319805, 20.517572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754932, 41.182503, 20.571552>,  <42.070431, 40.953663, 20.661520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754932, 41.182503, 20.571552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477097, -0.338983, 0.810844,
		0.387640, 0.746855, 0.540318,
		-0.788741, 0.572100, -0.224919,
		41.518311, 41.354134, 20.504076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968159, 41.177650, 21.271435>,  <42.070431, 40.953663, 20.661520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968159, 41.177650, 21.271435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631073, 41.192936, 21.056635>,  <41.428822, 41.202106, 20.927755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631073, 41.192936, 21.056635>,  <41.968159, 41.177650, 21.271435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631073, 41.192936, 21.056635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513411, -0.357164, 0.780284,
		-0.161981, 0.933260, 0.320606,
		-0.842716, 0.038212, -0.537000,
		41.378258, 41.204399, 20.895535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493446, 41.712280, 21.662291>,  <41.968159, 41.177650, 21.271435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493446, 41.712280, 21.662291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252155, 41.493126, 21.430449>,  <41.107380, 41.361633, 21.291344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252155, 41.493126, 21.430449>,  <41.493446, 41.712280, 21.662291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252155, 41.493126, 21.430449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659297, -0.066412, 0.748944,
		-0.448829, 0.833912, -0.321159,
		-0.603224, -0.547887, -0.579603,
		41.071190, 41.328758, 21.256567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825218, 42.023186, 21.637770>,  <41.493446, 41.712280, 21.662291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825218, 42.023186, 21.637770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794113, 41.631294, 21.563915>,  <40.775452, 41.396160, 21.519602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794113, 41.631294, 21.563915>,  <40.825218, 42.023186, 21.637770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794113, 41.631294, 21.563915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736232, -0.068446, 0.673259,
		-0.672247, 0.188287, -0.715984,
		-0.077759, -0.979726, -0.184636,
		40.770786, 41.337376, 21.508524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193718, 41.889462, 21.742350>,  <40.825218, 42.023186, 21.637770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193718, 41.889462, 21.742350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316486, 41.508854, 21.734228>,  <40.390148, 41.280491, 21.729355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316486, 41.508854, 21.734228>,  <40.193718, 41.889462, 21.742350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316486, 41.508854, 21.734228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629901, -0.219076, 0.745138,
		-0.713461, -0.215906, -0.666602,
		0.306916, -0.951520, -0.020303,
		40.408562, 41.223396, 21.728138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620396, 41.382816, 21.744135>,  <40.193718, 41.889462, 21.742350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620396, 41.382816, 21.744135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929146, 41.157173, 21.861427>,  <40.114395, 41.021786, 21.931803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929146, 41.157173, 21.861427>,  <39.620396, 41.382816, 21.744135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929146, 41.157173, 21.861427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582786, -0.443464, 0.680955,
		-0.254095, -0.696506, -0.671055,
		0.771878, -0.564109, 0.293232,
		40.160709, 40.987942, 21.949396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379555, 40.606308, 21.728790>,  <39.620396, 41.382816, 21.744135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379555, 40.606308, 21.728790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682140, 40.671112, 21.982250>,  <39.863693, 40.709995, 22.134327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.682140, 40.671112, 21.982250>,  <39.379555, 40.606308, 21.728790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682140, 40.671112, 21.982250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525210, -0.426887, 0.736154,
		0.389764, -0.889674, -0.237833,
		0.756464, 0.162014, 0.633650,
		39.909081, 40.719715, 22.172346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476997, 40.016792, 22.077816>,  <39.379555, 40.606308, 21.728790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476997, 40.016792, 22.077816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641727, 40.286037, 22.323523>,  <39.740566, 40.447582, 22.470947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.641727, 40.286037, 22.323523>,  <39.476997, 40.016792, 22.077816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641727, 40.286037, 22.323523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475129, -0.416600, 0.775047,
		0.777595, -0.611038, 0.148249,
		0.411823, 0.673110, 0.614268,
		39.765274, 40.487972, 22.507803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813828, 39.564468, 22.565285>,  <39.476997, 40.016792, 22.077816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813828, 39.564468, 22.565285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755516, 39.929352, 22.718451>,  <39.720528, 40.148281, 22.810350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755516, 39.929352, 22.718451>,  <39.813828, 39.564468, 22.565285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755516, 39.929352, 22.718451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299136, -0.409575, 0.861839,
		0.943009, 0.011095, 0.332582,
		-0.145780, 0.912209, 0.382914,
		39.711781, 40.203014, 22.833324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823349, 39.431610, 23.303965>,  <39.813828, 39.564468, 22.565285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823349, 39.431610, 23.303965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714390, 39.816483, 23.302759>,  <39.649014, 40.047405, 23.302036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714390, 39.816483, 23.302759>,  <39.823349, 39.431610, 23.303965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714390, 39.816483, 23.302759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392539, -0.108268, 0.913341,
		0.878473, 0.249972, 0.407186,
		-0.272394, 0.962181, -0.003013,
		39.632671, 40.105137, 23.301855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101768, 39.716644, 23.944193>,  <39.823349, 39.431610, 23.303965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101768, 39.716644, 23.944193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804882, 39.946903, 23.806934>,  <39.626751, 40.085056, 23.724579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804882, 39.946903, 23.806934>,  <40.101768, 39.716644, 23.944193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804882, 39.946903, 23.806934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385058, 0.052764, 0.921383,
		0.548495, 0.815996, 0.182494,
		-0.742216, 0.575644, -0.343147,
		39.582218, 40.119598, 23.703991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889240, 40.102127, 24.538479>,  <40.101768, 39.716644, 23.944193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889240, 40.102127, 24.538479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569244, 40.146679, 24.302645>,  <39.377247, 40.173409, 24.161144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.569244, 40.146679, 24.302645>,  <39.889240, 40.102127, 24.538479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569244, 40.146679, 24.302645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599992, -0.157068, 0.784436,
		-0.005238, 0.981288, 0.192477,
		-0.799989, 0.111376, -0.589587,
		39.329247, 40.180092, 24.125769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380028, 40.502007, 24.969505>,  <39.889240, 40.102127, 24.538479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380028, 40.502007, 24.969505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198566, 40.309628, 24.669401>,  <39.089687, 40.194202, 24.489340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198566, 40.309628, 24.669401>,  <39.380028, 40.502007, 24.969505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198566, 40.309628, 24.669401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713767, -0.307996, 0.629028,
		-0.533604, 0.820872, -0.203558,
		-0.453656, -0.480945, -0.750259,
		39.062469, 40.165344, 24.444324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764729, 40.691570, 25.098799>,  <39.380028, 40.502007, 24.969505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764729, 40.691570, 25.098799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748882, 40.349060, 24.892797>,  <38.739372, 40.143555, 24.769197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748882, 40.349060, 24.892797>,  <38.764729, 40.691570, 25.098799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748882, 40.349060, 24.892797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694042, -0.347205, 0.630678,
		-0.718844, 0.382420, -0.580533,
		-0.039620, -0.856273, -0.515001,
		38.736996, 40.092178, 24.738297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059238, 40.484200, 25.032391>,  <38.764729, 40.691570, 25.098799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059238, 40.484200, 25.032391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214539, 40.140182, 24.899975>,  <38.307720, 39.933773, 24.820526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214539, 40.140182, 24.899975>,  <38.059238, 40.484200, 25.032391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214539, 40.140182, 24.899975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642305, -0.510132, 0.572023,
		-0.660839, -0.009458, -0.750468,
		0.388248, -0.860044, -0.331040,
		38.331013, 39.882168, 24.800663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553467, 40.043297, 24.782219>,  <38.059238, 40.484200, 25.032391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553467, 40.043297, 24.782219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837227, 39.776123, 24.872211>,  <38.007484, 39.615818, 24.926207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837227, 39.776123, 24.872211>,  <37.553467, 40.043297, 24.782219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837227, 39.776123, 24.872211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635641, -0.468415, 0.613635,
		-0.304480, -0.578323, -0.756858,
		0.709403, -0.667930, 0.224983,
		38.050049, 39.575745, 24.939707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242870, 39.253025, 24.750025>,  <37.553467, 40.043297, 24.782219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242870, 39.253025, 24.750025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564911, 39.255768, 24.987267>,  <37.758133, 39.257412, 25.129612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564911, 39.255768, 24.987267>,  <37.242870, 39.253025, 24.750025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564911, 39.255768, 24.987267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527149, -0.450108, 0.720775,
		0.271903, -0.892948, -0.358766,
		0.805098, 0.006857, 0.593103,
		37.806438, 39.257824, 25.165197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225445, 38.670284, 25.084223>,  <37.242870, 39.253025, 24.750025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225445, 38.670284, 25.084223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471981, 38.873837, 25.324610>,  <37.619904, 38.995968, 25.468842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471981, 38.873837, 25.324610>,  <37.225445, 38.670284, 25.084223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471981, 38.873837, 25.324610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408798, -0.445507, 0.796498,
		0.673057, -0.736590, -0.066556,
		0.616343, 0.508881, 0.600968,
		37.656883, 39.026501, 25.504900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448540, 38.225487, 25.598282>,  <37.225445, 38.670284, 25.084223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448540, 38.225487, 25.598282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488750, 38.593182, 25.750547>,  <37.512878, 38.813797, 25.841908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488750, 38.593182, 25.750547>,  <37.448540, 38.225487, 25.598282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488750, 38.593182, 25.750547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473598, -0.292264, 0.830835,
		0.874985, -0.263806, 0.405965,
		0.100530, 0.919233, 0.380664,
		37.518909, 38.868950, 25.864746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577824, 38.063953, 26.228384>,  <37.448540, 38.225487, 25.598282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577824, 38.063953, 26.228384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465061, 38.446938, 26.253035>,  <37.397404, 38.676727, 26.267826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465061, 38.446938, 26.253035>,  <37.577824, 38.063953, 26.228384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465061, 38.446938, 26.253035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486861, -0.198102, 0.850719,
		0.826739, 0.209816, 0.521996,
		-0.281903, 0.957462, 0.061627,
		37.380489, 38.734177, 26.271523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613564, 38.174217, 26.889591>,  <37.577824, 38.063953, 26.228384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613564, 38.174217, 26.889591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356243, 38.454887, 26.767078>,  <37.201851, 38.623291, 26.693571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356243, 38.454887, 26.767078>,  <37.613564, 38.174217, 26.889591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356243, 38.454887, 26.767078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599902, -0.213413, 0.771086,
		0.475690, 0.679780, 0.558227,
		-0.643302, 0.701679, -0.306283,
		37.163254, 38.665390, 26.675194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471474, 38.628925, 27.463806>,  <37.613564, 38.174217, 26.889591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471474, 38.628925, 27.463806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154621, 38.724823, 27.239288>,  <36.964508, 38.782364, 27.104578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.154621, 38.724823, 27.239288>,  <37.471474, 38.628925, 27.463806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154621, 38.724823, 27.239288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589750, -0.063737, 0.805067,
		0.157237, 0.968741, 0.191879,
		-0.792131, 0.239747, -0.561293,
		36.916981, 38.796749, 27.070900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100960, 39.295216, 27.791801>,  <37.471474, 38.628925, 27.463806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100960, 39.295216, 27.791801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851452, 39.071682, 27.573214>,  <36.701748, 38.937561, 27.442060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851452, 39.071682, 27.573214>,  <37.100960, 39.295216, 27.791801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851452, 39.071682, 27.573214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682041, 0.047678, 0.729758,
		-0.381756, 0.827911, -0.410884,
		-0.623765, -0.558830, -0.546468,
		36.664322, 38.904034, 27.409273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459255, 39.585270, 27.831324>,  <37.100960, 39.295216, 27.791801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459255, 39.585270, 27.831324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379826, 39.207321, 27.727182>,  <36.332169, 38.980553, 27.664698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379826, 39.207321, 27.727182>,  <36.459255, 39.585270, 27.831324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379826, 39.207321, 27.727182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720052, -0.039567, 0.692792,
		-0.664901, 0.325040, -0.672499,
		-0.198576, -0.944872, -0.260354,
		36.320251, 38.923859, 27.649076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710293, 39.551174, 27.955481>,  <36.459255, 39.585270, 27.831324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710293, 39.551174, 27.955481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802296, 39.169914, 27.876898>,  <35.857498, 38.941158, 27.829748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802296, 39.169914, 27.876898>,  <35.710293, 39.551174, 27.955481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802296, 39.169914, 27.876898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719118, -0.302478, 0.625601,
		-0.655718, -0.002616, -0.755002,
		0.230007, -0.953153, -0.196459,
		35.871300, 38.883968, 27.817961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064507, 39.213112, 27.793806>,  <35.710293, 39.551174, 27.955481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064507, 39.213112, 27.793806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324909, 38.942024, 27.930561>,  <35.481152, 38.779373, 28.012613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324909, 38.942024, 27.930561>,  <35.064507, 39.213112, 27.793806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324909, 38.942024, 27.930561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640850, -0.249320, 0.726052,
		-0.406822, -0.691761, -0.596626,
		0.651005, -0.677721, 0.341886,
		35.520210, 38.738708, 28.033127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561855, 38.669735, 28.014631>,  <35.064507, 39.213112, 27.793806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561855, 38.669735, 28.014631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913925, 38.587151, 28.185587>,  <35.125168, 38.537598, 28.288160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913925, 38.587151, 28.185587>,  <34.561855, 38.669735, 28.014631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913925, 38.587151, 28.185587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474307, -0.348629, 0.808388,
		-0.017902, -0.914238, -0.404782,
		0.880177, -0.206463, 0.427389,
		35.177979, 38.525211, 28.313803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572613, 37.956089, 28.148195>,  <34.561855, 38.669735, 28.014631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572613, 37.956089, 28.148195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853642, 38.098495, 28.394657>,  <35.022259, 38.183941, 28.542534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853642, 38.098495, 28.394657>,  <34.572613, 37.956089, 28.148195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853642, 38.098495, 28.394657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470961, -0.416474, 0.777654,
		0.533474, -0.836540, -0.124929,
		0.702568, 0.356021, 0.616156,
		35.064411, 38.205303, 28.579504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696304, 37.410751, 28.559637>,  <34.572613, 37.956089, 28.148195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696304, 37.410751, 28.559637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808857, 37.735664, 28.763998>,  <34.876389, 37.930611, 28.886614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808857, 37.735664, 28.763998>,  <34.696304, 37.410751, 28.559637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808857, 37.735664, 28.763998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346835, -0.410329, 0.843407,
		0.894722, -0.414521, 0.166268,
		0.281385, 0.812283, 0.510900,
		34.893272, 37.979351, 28.917269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068970, 37.175941, 29.147783>,  <34.696304, 37.410751, 28.559637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068970, 37.175941, 29.147783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947716, 37.549011, 29.225998>,  <34.874962, 37.772854, 29.272926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947716, 37.549011, 29.225998>,  <35.068970, 37.175941, 29.147783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947716, 37.549011, 29.225998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351199, -0.300091, 0.886907,
		0.885871, 0.200181, 0.418521,
		-0.303136, 0.932670, 0.195538,
		34.856773, 37.828812, 29.284660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309601, 37.355156, 29.748522>,  <35.068970, 37.175941, 29.147783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309601, 37.355156, 29.748522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991608, 37.593014, 29.700504>,  <34.800812, 37.735729, 29.671694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991608, 37.593014, 29.700504>,  <35.309601, 37.355156, 29.748522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991608, 37.593014, 29.700504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313127, -0.232744, 0.920750,
		0.519576, 0.769566, 0.371225,
		-0.794979, 0.594641, -0.120044,
		34.753113, 37.771404, 29.664492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247372, 37.727867, 30.423183>,  <35.309601, 37.355156, 29.748522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247372, 37.727867, 30.423183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896912, 37.775833, 30.236427>,  <34.686638, 37.804615, 30.124374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896912, 37.775833, 30.236427>,  <35.247372, 37.727867, 30.423183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896912, 37.775833, 30.236427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479155, -0.322544, 0.816319,
		-0.052700, 0.938928, 0.340056,
		-0.876147, 0.119919, -0.466890,
		34.634068, 37.811810, 30.096361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952152, 38.205612, 30.832514>,  <35.247372, 37.727867, 30.423183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952152, 38.205612, 30.832514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648476, 38.048370, 30.625017>,  <34.466270, 37.954025, 30.500519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648476, 38.048370, 30.625017>,  <34.952152, 38.205612, 30.832514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648476, 38.048370, 30.625017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437771, -0.281380, 0.853922,
		-0.481647, 0.875381, 0.041530,
		-0.759192, -0.393108, -0.518742,
		34.420719, 37.930439, 30.469395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386440, 38.327900, 31.232021>,  <34.952152, 38.205612, 30.832514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386440, 38.327900, 31.232021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225163, 38.047585, 30.996620>,  <34.128395, 37.879395, 30.855379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225163, 38.047585, 30.996620>,  <34.386440, 38.327900, 31.232021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225163, 38.047585, 30.996620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518219, -0.355195, 0.778001,
		-0.754245, 0.618657, -0.219950,
		-0.403190, -0.700786, -0.588504,
		34.104206, 37.837349, 30.820068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677082, 38.263355, 31.381866>,  <34.386440, 38.327900, 31.232021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677082, 38.263355, 31.381866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745621, 37.915771, 31.196156>,  <33.786743, 37.707222, 31.084728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745621, 37.915771, 31.196156>,  <33.677082, 38.263355, 31.381866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745621, 37.915771, 31.196156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446970, -0.488522, 0.749376,
		-0.877986, 0.079119, -0.472102,
		0.171342, -0.868957, -0.464279,
		33.797024, 37.655083, 31.056871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122997, 37.865776, 31.523907>,  <33.677082, 38.263355, 31.381866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122997, 37.865776, 31.523907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415340, 37.615681, 31.414419>,  <33.590744, 37.465622, 31.348726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415340, 37.615681, 31.414419>,  <33.122997, 37.865776, 31.523907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415340, 37.615681, 31.414419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241176, -0.611736, 0.753401,
		-0.638504, -0.484611, -0.597883,
		0.730854, -0.625245, -0.273719,
		33.634598, 37.428108, 31.332304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798832, 37.182949, 31.531933>,  <33.122997, 37.865776, 31.523907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798832, 37.182949, 31.531933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195595, 37.144772, 31.565409>,  <33.433655, 37.121864, 31.585495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.195595, 37.144772, 31.565409>,  <32.798832, 37.182949, 31.531933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195595, 37.144772, 31.565409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125862, -0.653566, 0.746331,
		-0.016537, -0.750827, -0.660292,
		0.991910, -0.095448, 0.083692,
		33.493168, 37.116138, 31.590517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890892, 36.491810, 31.638708>,  <32.798832, 37.182949, 31.531933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890892, 36.491810, 31.638708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219570, 36.681507, 31.765148>,  <33.416775, 36.795326, 31.841013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219570, 36.681507, 31.765148>,  <32.890892, 36.491810, 31.638708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219570, 36.681507, 31.765148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025471, -0.584631, 0.810899,
		0.569361, -0.658259, -0.492466,
		0.821693, 0.474239, 0.316099,
		33.466080, 36.823780, 31.859978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318775, 35.958645, 31.842304>,  <32.890892, 36.491810, 31.638708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318775, 35.958645, 31.842304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441700, 36.294075, 32.022236>,  <33.515457, 36.495335, 32.130196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441700, 36.294075, 32.022236>,  <33.318775, 35.958645, 31.842304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441700, 36.294075, 32.022236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074047, -0.450198, 0.889853,
		0.948723, -0.306774, -0.076259,
		0.307315, 0.838577, 0.449829,
		33.533894, 36.545647, 32.157185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585667, 35.654987, 32.446316>,  <33.318775, 35.958645, 31.842304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585667, 35.654987, 32.446316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575211, 36.050014, 32.508316>,  <33.568935, 36.287029, 32.545517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575211, 36.050014, 32.508316>,  <33.585667, 35.654987, 32.446316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575211, 36.050014, 32.508316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051099, -0.156167, 0.986408,
		0.998351, 0.017864, 0.054546,
		-0.026139, 0.987569, 0.154996,
		33.567368, 36.346287, 32.554813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050385, 35.800957, 32.949322>,  <33.585667, 35.654987, 32.446316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050385, 35.800957, 32.949322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760113, 36.075291, 32.971298>,  <33.585949, 36.239891, 32.984482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760113, 36.075291, 32.971298>,  <34.050385, 35.800957, 32.949322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760113, 36.075291, 32.971298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108455, -0.192874, 0.975211,
		0.679427, 0.701736, 0.214348,
		-0.725683, 0.685832, 0.054937,
		33.542408, 36.281040, 32.987778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223217, 36.196331, 33.562222>,  <34.050385, 35.800957, 32.949322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223217, 36.196331, 33.562222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835808, 36.271164, 33.496536>,  <33.603363, 36.316063, 33.457127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835808, 36.271164, 33.496536>,  <34.223217, 36.196331, 33.562222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835808, 36.271164, 33.496536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189015, -0.123435, 0.974185,
		0.161983, 0.974558, 0.154910,
		-0.968522, 0.187082, -0.164212,
		33.545250, 36.327290, 33.447273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095711, 36.775448, 33.877884>,  <34.223217, 36.196331, 33.562222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095711, 36.775448, 33.877884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835396, 36.471947, 33.866779>,  <33.679207, 36.289848, 33.860115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835396, 36.471947, 33.866779>,  <34.095711, 36.775448, 33.877884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835396, 36.471947, 33.866779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015430, -0.049779, 0.998641,
		-0.759102, 0.649476, 0.044104,
		-0.650789, -0.758751, -0.027766,
		33.640160, 36.244320, 33.858448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723316, 36.874603, 33.658890>,  <34.095711, 36.775448, 33.877884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723316, 36.874603, 33.658890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032978, 36.732426, 33.868401>,  <35.218777, 36.647118, 33.994106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032978, 36.732426, 33.868401>,  <34.723316, 36.874603, 33.658890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032978, 36.732426, 33.868401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604414, 0.169241, -0.778486,
		0.188064, 0.919248, 0.345855,
		0.774154, -0.355445, 0.523778,
		35.265224, 36.625793, 34.025536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202080, 37.362206, 33.671379>,  <34.723316, 36.874603, 33.658890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202080, 37.362206, 33.671379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409031, 37.030933, 33.757576>,  <35.533203, 36.832169, 33.809296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409031, 37.030933, 33.757576>,  <35.202080, 37.362206, 33.671379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409031, 37.030933, 33.757576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709840, 0.274682, -0.648596,
		0.477963, 0.488535, 0.729990,
		0.517377, -0.828181, 0.215494,
		35.564243, 36.782478, 33.822224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806610, 37.596096, 33.809505>,  <35.202080, 37.362206, 33.671379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806610, 37.596096, 33.809505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861153, 37.207737, 33.730740>,  <35.893879, 36.974724, 33.683479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861153, 37.207737, 33.730740>,  <35.806610, 37.596096, 33.809505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861153, 37.207737, 33.730740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747139, 0.231306, -0.623122,
		0.650532, -0.062155, 0.756931,
		0.136352, -0.970894, -0.196910,
		35.902058, 36.916470, 33.671665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457279, 37.556271, 33.782661>,  <35.806610, 37.596096, 33.809505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457279, 37.556271, 33.782661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317497, 37.245747, 33.572811>,  <36.233627, 37.059433, 33.446899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317497, 37.245747, 33.572811>,  <36.457279, 37.556271, 33.782661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317497, 37.245747, 33.572811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738792, 0.116074, -0.663862,
		0.576255, -0.619578, 0.532967,
		-0.349451, -0.776306, -0.524628,
		36.212662, 37.012856, 33.415424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147217, 37.254128, 33.598030>,  <36.457279, 37.556271, 33.782661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147217, 37.254128, 33.598030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852764, 37.115685, 33.365368>,  <36.676094, 37.032619, 33.225773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852764, 37.115685, 33.365368>,  <37.147217, 37.254128, 33.598030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852764, 37.115685, 33.365368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574399, 0.135108, -0.807348,
		0.358016, -0.928415, 0.099347,
		-0.736132, -0.346108, -0.581652,
		36.631924, 37.011852, 33.190872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498074, 36.763855, 33.139317>,  <37.147217, 37.254128, 33.598030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498074, 36.763855, 33.139317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156528, 36.864799, 32.957226>,  <36.951603, 36.925365, 32.847969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.156528, 36.864799, 32.957226>,  <37.498074, 36.763855, 33.139317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156528, 36.864799, 32.957226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490905, 0.099729, -0.865486,
		-0.173016, -0.962480, -0.209041,
		-0.853860, 0.252362, -0.455231,
		36.900372, 36.940506, 32.820656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538563, 36.344696, 32.543488>,  <37.498074, 36.763855, 33.139317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538563, 36.344696, 32.543488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267365, 36.634686, 32.494919>,  <37.104645, 36.808678, 32.465778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267365, 36.634686, 32.494919>,  <37.538563, 36.344696, 32.543488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267365, 36.634686, 32.494919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369610, 0.193447, -0.908827,
		-0.635386, -0.661056, -0.399112,
		-0.677992, 0.724971, -0.121419,
		37.063965, 36.852177, 32.458492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369286, 36.280422, 31.891314>,  <37.538563, 36.344696, 32.543488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369286, 36.280422, 31.891314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279423, 36.656647, 31.993195>,  <37.225506, 36.882381, 32.054321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279423, 36.656647, 31.993195>,  <37.369286, 36.280422, 31.891314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279423, 36.656647, 31.993195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408403, 0.328202, -0.851758,
		-0.884724, -0.087332, -0.457860,
		-0.224657, 0.940562, 0.254701,
		37.212025, 36.938816, 32.069607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262325, 36.606087, 31.236471>,  <37.369286, 36.280422, 31.891314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262325, 36.606087, 31.236471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327354, 36.914528, 31.482716>,  <37.366371, 37.099590, 31.630463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.327354, 36.914528, 31.482716>,  <37.262325, 36.606087, 31.236471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327354, 36.914528, 31.482716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384366, 0.525133, -0.759275,
		-0.908753, 0.360059, -0.211010,
		0.162575, 0.771098, 0.615611,
		37.376125, 37.145859, 31.667398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131748, 37.225918, 30.858088>,  <37.262325, 36.606087, 31.236471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131748, 37.225918, 30.858088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335796, 37.400360, 31.154623>,  <37.458225, 37.505024, 31.332544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335796, 37.400360, 31.154623>,  <37.131748, 37.225918, 30.858088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335796, 37.400360, 31.154623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389646, 0.651225, -0.651216,
		-0.766778, 0.621061, 0.162278,
		0.510124, 0.436107, 0.741339,
		37.488834, 37.531193, 31.377026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959984, 38.021259, 30.888882>,  <37.131748, 37.225918, 30.858088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959984, 38.021259, 30.888882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323418, 37.934765, 31.031832>,  <37.541477, 37.882866, 31.117601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323418, 37.934765, 31.031832>,  <36.959984, 38.021259, 30.888882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323418, 37.934765, 31.031832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393841, 0.728520, -0.560489,
		-0.139154, 0.649999, 0.747086,
		0.908584, -0.216239, 0.357373,
		37.595993, 37.869892, 31.139044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323830, 38.669579, 31.058247>,  <36.959984, 38.021259, 30.888882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323830, 38.669579, 31.058247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637562, 38.421669, 31.047668>,  <37.825802, 38.272923, 31.041323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637562, 38.421669, 31.047668>,  <37.323830, 38.669579, 31.058247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637562, 38.421669, 31.047668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516546, 0.676112, -0.525408,
		0.343513, 0.398436, 0.850440,
		0.784334, -0.619776, -0.026443,
		37.872860, 38.235737, 31.039736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942402, 39.084412, 31.197554>,  <37.323830, 38.669579, 31.058247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942402, 39.084412, 31.197554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052654, 38.747860, 31.011604>,  <38.118805, 38.545929, 30.900034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.052654, 38.747860, 31.011604>,  <37.942402, 39.084412, 31.197554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.052654, 38.747860, 31.011604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644892, 0.520483, -0.559653,
		0.712839, -0.145534, 0.686062,
		0.275635, -0.841378, -0.464874,
		38.135345, 38.495445, 30.872143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651821, 39.130699, 31.055931>,  <37.942402, 39.084412, 31.197554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651821, 39.130699, 31.055931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522171, 38.852673, 30.799236>,  <38.444382, 38.685856, 30.645220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522171, 38.852673, 30.799236>,  <38.651821, 39.130699, 31.055931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522171, 38.852673, 30.799236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528224, 0.429788, -0.732299,
		0.784808, -0.576336, 0.227846,
		-0.324125, -0.695067, -0.641736,
		38.424934, 38.644154, 30.606716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265453, 38.952744, 30.751535>,  <38.651821, 39.130699, 31.055931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265453, 38.952744, 30.751535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983334, 38.850185, 30.487167>,  <38.814064, 38.788651, 30.328547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983334, 38.850185, 30.487167>,  <39.265453, 38.952744, 30.751535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983334, 38.850185, 30.487167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571266, 0.346495, -0.744040,
		0.419779, -0.902330, -0.097908,
		-0.705295, -0.256401, -0.660922,
		38.771744, 38.773266, 30.288891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601707, 38.796997, 30.116398>,  <39.265453, 38.952744, 30.751535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.601707, 38.796997, 30.116398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220524, 38.806267, 29.995516>,  <38.991814, 38.811829, 29.922987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220524, 38.806267, 29.995516>,  <39.601707, 38.796997, 30.116398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220524, 38.806267, 29.995516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301050, 0.187919, -0.934909,
		0.035126, -0.981911, -0.186055,
		-0.952961, 0.023173, -0.302205,
		38.934635, 38.813217, 29.904854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580959, 38.368504, 29.552839>,  <39.601707, 38.796997, 30.116398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580959, 38.368504, 29.552839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287296, 38.639988, 29.545286>,  <39.111099, 38.802879, 29.540754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287296, 38.639988, 29.545286>,  <39.580959, 38.368504, 29.552839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287296, 38.639988, 29.545286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276015, 0.272924, -0.921590,
		-0.620342, -0.681806, -0.387705,
		-0.734160, 0.678714, -0.018882,
		39.067047, 38.843601, 29.539621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412521, 38.404095, 28.894985>,  <39.580959, 38.368504, 29.552839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412521, 38.404095, 28.894985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224068, 38.734001, 29.020079>,  <39.110996, 38.931946, 29.095135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224068, 38.734001, 29.020079>,  <39.412521, 38.404095, 28.894985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224068, 38.734001, 29.020079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027471, 0.368096, -0.929382,
		-0.881634, -0.429271, -0.196079,
		-0.471133, 0.824761, 0.312734,
		39.082729, 38.981430, 29.113899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770531, 38.514297, 28.449347>,  <39.412521, 38.404095, 28.894985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770531, 38.514297, 28.449347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880207, 38.876236, 28.579622>,  <38.946014, 39.093399, 28.657787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880207, 38.876236, 28.579622>,  <38.770531, 38.514297, 28.449347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880207, 38.876236, 28.579622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022018, 0.332674, -0.942785,
		-0.961423, 0.265677, 0.071294,
		0.274194, 0.904845, 0.325690,
		38.962463, 39.147690, 28.677330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640553, 38.836460, 27.900278>,  <38.770531, 38.514297, 28.449347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640553, 38.836460, 27.900278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849895, 39.122681, 28.085352>,  <38.975502, 39.294415, 28.196396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849895, 39.122681, 28.085352>,  <38.640553, 38.836460, 27.900278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849895, 39.122681, 28.085352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382816, 0.287663, -0.877896,
		-0.761280, 0.636577, -0.123375,
		0.523359, 0.715555, 0.462685,
		39.006905, 39.337349, 28.224157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450459, 39.497639, 27.622595>,  <38.640553, 38.836460, 27.900278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450459, 39.497639, 27.622595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814053, 39.537643, 27.784458>,  <39.032207, 39.561646, 27.881577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814053, 39.537643, 27.784458>,  <38.450459, 39.497639, 27.622595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814053, 39.537643, 27.784458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384768, 0.172078, -0.906831,
		-0.160325, 0.979993, 0.117935,
		0.908983, 0.100010, 0.404659,
		39.086746, 39.567646, 27.905855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773048, 40.140953, 27.401123>,  <38.450459, 39.497639, 27.622595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773048, 40.140953, 27.401123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071732, 39.893188, 27.498087>,  <39.250942, 39.744530, 27.556265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071732, 39.893188, 27.498087>,  <38.773048, 40.140953, 27.401123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071732, 39.893188, 27.498087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372937, 0.088101, -0.923665,
		0.550770, 0.780110, 0.296786,
		0.746707, -0.619409, 0.242409,
		39.295742, 39.707367, 27.570810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280972, 40.450253, 27.122738>,  <38.773048, 40.140953, 27.401123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280972, 40.450253, 27.122738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448830, 40.093739, 27.191456>,  <39.549545, 39.879829, 27.232687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448830, 40.093739, 27.191456>,  <39.280972, 40.450253, 27.122738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448830, 40.093739, 27.191456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398073, 0.010617, -0.917293,
		0.815743, 0.453324, 0.359250,
		0.419645, -0.891282, 0.171795,
		39.574722, 39.826355, 27.242994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989597, 40.534435, 26.886497>,  <39.280972, 40.450253, 27.122738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989597, 40.534435, 26.886497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916477, 40.142288, 26.856943>,  <39.872604, 39.906998, 26.839211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916477, 40.142288, 26.856943>,  <39.989597, 40.534435, 26.886497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916477, 40.142288, 26.856943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519180, -0.032440, -0.854049,
		0.834887, -0.194482, 0.514918,
		-0.182801, -0.980369, -0.073888,
		39.861637, 39.848179, 26.834776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579102, 40.371529, 26.656647>,  <39.989597, 40.534435, 26.886497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579102, 40.371529, 26.656647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346924, 40.052319, 26.591852>,  <40.207619, 39.860794, 26.552975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346924, 40.052319, 26.591852>,  <40.579102, 40.371529, 26.656647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346924, 40.052319, 26.591852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431330, -0.132584, -0.892399,
		0.690680, -0.587858, 0.421170,
		-0.580444, -0.798025, -0.161988,
		40.172791, 39.812912, 26.543257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.984623, 39.778496, 26.827568>,  <40.579102, 40.371529, 26.656647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.984623, 39.778496, 26.827568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697571, 39.717670, 26.555719>,  <40.525341, 39.681175, 26.392611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697571, 39.717670, 26.555719>,  <40.984623, 39.778496, 26.827568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697571, 39.717670, 26.555719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690054, -0.023567, -0.723374,
		0.093983, -0.988089, 0.121846,
		-0.717630, -0.152065, -0.679620,
		40.482281, 39.672050, 26.351833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314785, 39.308960, 26.443163>,  <40.984623, 39.778496, 26.827568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314785, 39.308960, 26.443163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023792, 39.461540, 26.215033>,  <40.849197, 39.553089, 26.078156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.023792, 39.461540, 26.215033>,  <41.314785, 39.308960, 26.443163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023792, 39.461540, 26.215033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626039, 0.028836, -0.779258,
		-0.280804, -0.923939, -0.259781,
		-0.727478, 0.381452, -0.570324,
		40.805550, 39.575977, 26.043936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.414532, 38.922535, 25.845182>,  <41.314785, 39.308960, 26.443163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.414532, 38.922535, 25.845182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174129, 39.211357, 25.708113>,  <41.029888, 39.384651, 25.625872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.174129, 39.211357, 25.708113>,  <41.414532, 38.922535, 25.845182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.174129, 39.211357, 25.708113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561619, 0.076480, -0.823854,
		-0.568661, -0.687594, -0.451486,
		-0.601006, 0.722057, -0.342674,
		40.993828, 39.427975, 25.605310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203686, 38.754196, 25.107460>,  <41.414532, 38.922535, 25.845182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203686, 38.754196, 25.107460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159184, 39.148411, 25.158604>,  <41.132481, 39.384937, 25.189289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.159184, 39.148411, 25.158604>,  <41.203686, 38.754196, 25.107460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159184, 39.148411, 25.158604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670464, 0.169401, -0.722344,
		-0.733553, 0.005359, -0.679611,
		-0.111255, 0.985533, 0.127858,
		41.125809, 39.444069, 25.196960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271915, 39.041656, 24.381399>,  <41.203686, 38.754196, 25.107460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271915, 39.041656, 24.381399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321785, 39.353745, 24.626581>,  <41.351707, 39.540997, 24.773689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321785, 39.353745, 24.626581>,  <41.271915, 39.041656, 24.381399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321785, 39.353745, 24.626581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734764, 0.342546, -0.585478,
		-0.666766, 0.523372, -0.530570,
		0.124678, 0.780220, 0.612953,
		41.359188, 39.587811, 24.810467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313366, 39.501053, 23.954809>,  <41.271915, 39.041656, 24.381399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313366, 39.501053, 23.954809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498390, 39.661903, 24.270868>,  <41.609406, 39.758411, 24.460505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498390, 39.661903, 24.270868>,  <41.313366, 39.501053, 23.954809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498390, 39.661903, 24.270868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770885, 0.257791, -0.582477,
		-0.437921, 0.878545, -0.190747,
		0.462560, 0.402123, 0.790149,
		41.637157, 39.782539, 24.507914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.374790, 40.187778, 23.749329>,  <41.313366, 39.501053, 23.954809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.374790, 40.187778, 23.749329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642296, 40.105545, 24.035122>,  <41.802799, 40.056206, 24.206598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.642296, 40.105545, 24.035122>,  <41.374790, 40.187778, 23.749329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642296, 40.105545, 24.035122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728960, 0.370278, -0.575770,
		-0.146187, 0.905885, 0.397494,
		0.668765, -0.205587, 0.714484,
		41.842926, 40.043869, 24.249468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741230, 40.843327, 23.780899>,  <41.374790, 40.187778, 23.749329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741230, 40.843327, 23.780899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977509, 40.574856, 23.960054>,  <42.119274, 40.413773, 24.067547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977509, 40.574856, 23.960054>,  <41.741230, 40.843327, 23.780899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977509, 40.574856, 23.960054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790724, 0.370929, -0.486998,
		0.160725, 0.641825, 0.749819,
		0.590697, -0.671172, 0.447889,
		42.154716, 40.373505, 24.094421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389999, 41.152393, 24.171234>,  <41.741230, 40.843327, 23.780899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389999, 41.152393, 24.171234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465176, 40.772240, 24.072073>,  <42.510281, 40.544147, 24.012577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465176, 40.772240, 24.072073>,  <42.389999, 41.152393, 24.171234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465176, 40.772240, 24.072073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829385, 0.288768, -0.478261,
		0.526115, -0.115720, 0.842503,
		0.187944, -0.950380, -0.247901,
		42.521557, 40.487125, 23.997702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135834, 40.965202, 24.360899>,  <42.389999, 41.152393, 24.171234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135834, 40.965202, 24.360899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010868, 40.705029, 24.083963>,  <42.935890, 40.548923, 23.917801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.010868, 40.705029, 24.083963>,  <43.135834, 40.965202, 24.360899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010868, 40.705029, 24.083963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825647, 0.174515, -0.536518,
		0.469792, -0.739244, 0.482507,
		-0.312413, -0.650433, -0.692340,
		42.917145, 40.509899, 23.876261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.755287, 40.610203, 24.235455>,  <43.135834, 40.965202, 24.360899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.755287, 40.610203, 24.235455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518639, 40.506180, 23.930204>,  <43.376652, 40.443768, 23.747055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518639, 40.506180, 23.930204>,  <43.755287, 40.610203, 24.235455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518639, 40.506180, 23.930204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796422, -0.041406, -0.603322,
		0.125300, -0.964705, 0.231612,
		-0.591618, -0.260057, -0.763124,
		43.341152, 40.428162, 23.701267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194557, 40.074242, 23.810268>,  <43.755287, 40.610203, 24.235455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194557, 40.074242, 23.810268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921093, 40.219208, 23.556889>,  <43.757015, 40.306187, 23.404860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.921093, 40.219208, 23.556889>,  <44.194557, 40.074242, 23.810268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921093, 40.219208, 23.556889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691129, 0.042728, -0.721467,
		-0.234403, -0.931037, -0.279687,
		-0.683663, 0.362414, -0.633451,
		43.715996, 40.327930, 23.366854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321297, 39.352089, 23.612225>,  <44.194557, 40.074242, 23.810268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321297, 39.352089, 23.612225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.620918, 39.087421, 23.598948>,  <44.800694, 38.928619, 23.590982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.620918, 39.087421, 23.598948>,  <44.321297, 39.352089, 23.612225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620918, 39.087421, 23.598948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473534, -0.569763, 0.671667,
		-0.463334, -0.487401, -0.740110,
		0.749058, -0.661673, -0.033190,
		44.845634, 38.888920, 23.588991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024124, 38.693295, 23.557629>,  <44.321297, 39.352089, 23.612225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024124, 38.693295, 23.557629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392899, 38.647312, 23.705585>,  <44.614162, 38.619720, 23.794359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392899, 38.647312, 23.705585>,  <44.024124, 38.693295, 23.557629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392899, 38.647312, 23.705585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361757, -0.596866, 0.716158,
		0.138446, -0.794062, -0.591859,
		0.921935, -0.114960, 0.369891,
		44.669479, 38.612823, 23.816553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131107, 37.970417, 23.584690>,  <44.024124, 38.693295, 23.557629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131107, 37.970417, 23.584690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367966, 38.143837, 23.856394>,  <44.510082, 38.247890, 24.019417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367966, 38.143837, 23.856394>,  <44.131107, 37.970417, 23.584690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367966, 38.143837, 23.856394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244925, -0.706221, 0.664276,
		0.767708, -0.559716, -0.311997,
		0.592145, 0.433554, 0.679260,
		44.545609, 38.273903, 24.060171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.547775, 37.467072, 23.841412>,  <44.131107, 37.970417, 23.584690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.547775, 37.467072, 23.841412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530418, 37.753349, 24.120237>,  <44.520004, 37.925117, 24.287533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530418, 37.753349, 24.120237>,  <44.547775, 37.467072, 23.841412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530418, 37.753349, 24.120237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233748, -0.685628, 0.689402,
		0.971328, -0.133024, 0.197042,
		-0.043390, 0.715694, 0.697065,
		44.517403, 37.968056, 24.329357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.580311, 37.189697, 24.547104>,  <44.547775, 37.467072, 23.841412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.580311, 37.189697, 24.547104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502087, 37.564644, 24.662413>,  <44.455151, 37.789612, 24.731598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.502087, 37.564644, 24.662413>,  <44.580311, 37.189697, 24.547104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.502087, 37.564644, 24.662413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391470, -0.344127, 0.853421,
		0.899170, 0.054049, 0.434250,
		-0.195564, 0.937366, 0.288270,
		44.443417, 37.845852, 24.748894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731270, 37.165562, 25.210388>,  <44.580311, 37.189697, 24.547104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731270, 37.165562, 25.210388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476810, 37.471134, 25.167099>,  <44.324135, 37.654480, 25.141125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.476810, 37.471134, 25.167099>,  <44.731270, 37.165562, 25.210388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476810, 37.471134, 25.167099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532406, -0.333106, 0.778193,
		0.558439, 0.552669, 0.618631,
		-0.636153, 0.763936, -0.108225,
		44.285965, 37.700314, 25.134632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.663094, 37.397621, 25.847939>,  <44.731270, 37.165562, 25.210388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.663094, 37.397621, 25.847939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332382, 37.514881, 25.655895>,  <44.133957, 37.585239, 25.540668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.332382, 37.514881, 25.655895>,  <44.663094, 37.397621, 25.847939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.332382, 37.514881, 25.655895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554485, -0.280852, 0.783370,
		0.094808, 0.913884, 0.394750,
		-0.826776, 0.293153, -0.480108,
		44.084351, 37.602825, 25.511864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.282101, 37.707874, 26.336174>,  <44.663094, 37.397621, 25.847939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.282101, 37.707874, 26.336174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003174, 37.626160, 26.061359>,  <43.835819, 37.577129, 25.896471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003174, 37.626160, 26.061359>,  <44.282101, 37.707874, 26.336174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003174, 37.626160, 26.061359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674750, -0.136258, 0.725360,
		-0.241794, 0.969382, -0.042827,
		-0.697315, -0.204285, -0.687037,
		43.793980, 37.564873, 25.855247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622120, 38.100464, 26.492840>,  <44.282101, 37.707874, 26.336174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622120, 38.100464, 26.492840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501331, 37.806602, 26.249826>,  <43.428860, 37.630287, 26.104017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501331, 37.806602, 26.249826>,  <43.622120, 38.100464, 26.492840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501331, 37.806602, 26.249826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740066, -0.221063, 0.635164,
		-0.600928, 0.641419, -0.476936,
		-0.301973, -0.734652, -0.607535,
		43.410740, 37.586208, 26.067566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904720, 38.106213, 26.546263>,  <43.622120, 38.100464, 26.492840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904720, 38.106213, 26.546263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962589, 37.737530, 26.402300>,  <42.997311, 37.516319, 26.315922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.962589, 37.737530, 26.402300>,  <42.904720, 38.106213, 26.546263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962589, 37.737530, 26.402300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475250, -0.383757, 0.791750,
		-0.867875, 0.056500, -0.493559,
		0.144673, -0.921704, -0.359905,
		43.005993, 37.461018, 26.294329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199604, 37.835686, 26.518457>,  <42.904720, 38.106213, 26.546263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199604, 37.835686, 26.518457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468197, 37.539490, 26.529751>,  <42.629353, 37.361774, 26.536528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468197, 37.539490, 26.529751>,  <42.199604, 37.835686, 26.518457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468197, 37.539490, 26.529751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564558, -0.486527, 0.666758,
		-0.479978, -0.463664, -0.744739,
		0.671487, -0.740478, 0.028243,
		42.669640, 37.317345, 26.538221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829430, 37.164421, 26.568901>,  <42.199604, 37.835686, 26.518457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829430, 37.164421, 26.568901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195316, 37.030510, 26.659420>,  <42.414848, 36.950161, 26.713732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.195316, 37.030510, 26.659420>,  <41.829430, 37.164421, 26.568901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195316, 37.030510, 26.659420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390114, -0.585625, 0.710530,
		-0.105346, -0.738218, -0.666286,
		0.914720, -0.334780, 0.226296,
		42.469734, 36.930077, 26.727308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761631, 36.417294, 26.621134>,  <41.829430, 37.164421, 26.568901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761631, 36.417294, 26.621134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071243, 36.557327, 26.832159>,  <42.257011, 36.641346, 26.958775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071243, 36.557327, 26.832159>,  <41.761631, 36.417294, 26.621134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071243, 36.557327, 26.832159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368280, -0.428838, 0.824905,
		0.515023, -0.832791, -0.203006,
		0.774029, 0.350082, 0.527561,
		42.303452, 36.662354, 26.990427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950623, 35.896328, 27.059641>,  <41.761631, 36.417294, 26.621134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950623, 35.896328, 27.059641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104248, 36.232159, 27.213324>,  <42.196423, 36.433655, 27.305532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.104248, 36.232159, 27.213324>,  <41.950623, 35.896328, 27.059641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104248, 36.232159, 27.213324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387227, -0.231292, 0.892502,
		0.838185, -0.491549, 0.236275,
		0.384060, 0.839573, 0.384206,
		42.219467, 36.484032, 27.328585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343033, 35.765076, 27.739138>,  <41.950623, 35.896328, 27.059641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343033, 35.765076, 27.739138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256115, 36.155514, 27.741123>,  <42.203964, 36.389778, 27.742315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256115, 36.155514, 27.741123>,  <42.343033, 35.765076, 27.739138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256115, 36.155514, 27.741123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451792, -0.105082, 0.885913,
		0.865256, 0.190258, 0.463825,
		-0.217292, 0.976094, 0.004966,
		42.190926, 36.448341, 27.742613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288239, 35.929764, 28.400578>,  <42.343033, 35.765076, 27.739138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288239, 35.929764, 28.400578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092873, 36.246952, 28.254898>,  <41.975655, 36.437267, 28.167490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092873, 36.246952, 28.254898>,  <42.288239, 35.929764, 28.400578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092873, 36.246952, 28.254898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591717, 0.005785, 0.806125,
		0.641344, 0.609226, 0.466391,
		-0.488415, 0.792975, -0.364199,
		41.946346, 36.484844, 28.145638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415115, 36.579102, 28.884291>,  <42.288239, 35.929764, 28.400578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415115, 36.579102, 28.884291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.078598, 36.581688, 28.668074>,  <41.876686, 36.583241, 28.538343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.078598, 36.581688, 28.668074>,  <42.415115, 36.579102, 28.884291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078598, 36.581688, 28.668074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534804, 0.135824, 0.833988,
		0.078812, 0.990712, -0.110808,
		-0.841292, 0.006468, -0.540541,
		41.826210, 36.583630, 28.505911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036442, 36.884655, 29.361683>,  <42.415115, 36.579102, 28.884291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036442, 36.884655, 29.361683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754711, 36.826584, 29.083735>,  <41.585674, 36.791740, 28.916965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.754711, 36.826584, 29.083735>,  <42.036442, 36.884655, 29.361683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754711, 36.826584, 29.083735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709831, 0.132799, 0.691740,
		-0.008148, 0.980452, -0.196587,
		-0.704325, -0.145179, -0.694873,
		41.543415, 36.783031, 28.875273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549057, 37.450684, 29.402031>,  <42.036442, 36.884655, 29.361683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549057, 37.450684, 29.402031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370636, 37.127110, 29.248846>,  <41.263584, 36.932964, 29.156935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.370636, 37.127110, 29.248846>,  <41.549057, 37.450684, 29.402031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370636, 37.127110, 29.248846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714374, 0.064024, 0.696829,
		-0.539169, 0.584405, -0.606438,
		-0.446057, -0.808933, -0.382963,
		41.236820, 36.884430, 29.133957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942650, 37.667904, 29.563330>,  <41.549057, 37.450684, 29.402031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942650, 37.667904, 29.563330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889420, 37.284977, 29.460695>,  <40.857483, 37.055222, 29.399115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889420, 37.284977, 29.460695>,  <40.942650, 37.667904, 29.563330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889420, 37.284977, 29.460695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704170, -0.090856, 0.704195,
		-0.697449, 0.274392, -0.662022,
		-0.133077, -0.957316, -0.256586,
		40.849495, 36.997784, 29.383718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204556, 37.532089, 29.477648>,  <40.942650, 37.667904, 29.563330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204556, 37.532089, 29.477648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348751, 37.168510, 29.561417>,  <40.435268, 36.950363, 29.611677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348751, 37.168510, 29.561417>,  <40.204556, 37.532089, 29.477648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348751, 37.168510, 29.561417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578240, -0.041601, 0.814805,
		-0.731905, -0.414826, -0.540588,
		0.360492, -0.908949, 0.209421,
		40.456898, 36.895824, 29.624243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620125, 37.154396, 29.631428>,  <40.204556, 37.532089, 29.477648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620125, 37.154396, 29.631428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917759, 36.941376, 29.792789>,  <40.096340, 36.813564, 29.889606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917759, 36.941376, 29.792789>,  <39.620125, 37.154396, 29.631428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917759, 36.941376, 29.792789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586423, -0.231338, 0.776267,
		-0.320079, -0.814170, -0.484434,
		0.744081, -0.532550, 0.403402,
		40.140984, 36.781612, 29.913811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413246, 36.396210, 29.672470>,  <39.620125, 37.154396, 29.631428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413246, 36.396210, 29.672470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681534, 36.515064, 29.944307>,  <39.842506, 36.586376, 30.107410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681534, 36.515064, 29.944307>,  <39.413246, 36.396210, 29.672470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681534, 36.515064, 29.944307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596417, -0.328637, 0.732315,
		0.440937, -0.896497, -0.043205,
		0.670717, 0.297137, 0.679594,
		39.882748, 36.604206, 30.148186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136845, 36.168133, 30.323668>,  <39.413246, 36.396210, 29.672470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136845, 36.168133, 30.323668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453281, 36.352062, 30.485025>,  <39.643143, 36.462421, 30.581841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453281, 36.352062, 30.485025>,  <39.136845, 36.168133, 30.323668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453281, 36.352062, 30.485025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400073, -0.109916, 0.909868,
		0.462722, -0.881180, 0.097011,
		0.791094, 0.459827, 0.403397,
		39.690609, 36.490009, 30.606045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353043, 35.780602, 30.845684>,  <39.136845, 36.168133, 30.323668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353043, 35.780602, 30.845684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487373, 36.141800, 30.952887>,  <39.567970, 36.358517, 31.017208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487373, 36.141800, 30.952887>,  <39.353043, 35.780602, 30.845684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487373, 36.141800, 30.952887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094569, -0.250772, 0.963416,
		0.937165, -0.348883, 0.001180,
		0.335824, 0.902992, 0.268008,
		39.588120, 36.412697, 31.033289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852917, 35.707977, 31.362667>,  <39.353043, 35.780602, 30.845684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852917, 35.707977, 31.362667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763008, 36.096268, 31.396549>,  <39.709061, 36.329243, 31.416878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763008, 36.096268, 31.396549>,  <39.852917, 35.707977, 31.362667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763008, 36.096268, 31.396549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178555, -0.126489, 0.975765,
		0.957912, 0.204202, 0.201759,
		-0.224774, 0.970722, 0.084704,
		39.695576, 36.387486, 31.421961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212864, 35.997742, 31.930109>,  <39.852917, 35.707977, 31.362667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212864, 35.997742, 31.930109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878681, 36.214844, 31.895634>,  <39.678173, 36.345104, 31.874949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.878681, 36.214844, 31.895634>,  <40.212864, 35.997742, 31.930109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878681, 36.214844, 31.895634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219022, -0.185010, 0.958019,
		0.504026, 0.819260, 0.273443,
		-0.835456, 0.542756, -0.086187,
		39.628044, 36.377670, 31.869778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144363, 36.386803, 32.436653>,  <40.212864, 35.997742, 31.930109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144363, 36.386803, 32.436653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761242, 36.389309, 32.321716>,  <39.531368, 36.390812, 32.252754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.761242, 36.389309, 32.321716>,  <40.144363, 36.386803, 32.436653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761242, 36.389309, 32.321716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281539, -0.221459, 0.933644,
		-0.057786, 0.975150, 0.213879,
		-0.957808, 0.006264, -0.287339,
		39.473900, 36.391190, 32.235516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804359, 36.721962, 32.979111>,  <40.144363, 36.386803, 32.436653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804359, 36.721962, 32.979111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543003, 36.494225, 32.779541>,  <39.386189, 36.357582, 32.659798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543003, 36.494225, 32.779541>,  <39.804359, 36.721962, 32.979111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543003, 36.494225, 32.779541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354066, -0.352704, 0.866162,
		-0.669118, 0.742595, 0.028868,
		-0.653390, -0.569344, -0.498928,
		39.346985, 36.323421, 32.629864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048195, 36.971161, 33.280586>,  <39.804359, 36.721962, 32.979111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048195, 36.971161, 33.280586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045593, 36.607292, 33.114475>,  <39.044033, 36.388969, 33.014809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045593, 36.607292, 33.114475>,  <39.048195, 36.971161, 33.280586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045593, 36.607292, 33.114475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260062, -0.399458, 0.879091,
		-0.965570, 0.113715, -0.233974,
		-0.006503, -0.909672, -0.415277,
		39.043644, 36.334393, 32.989891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563461, 36.552544, 33.657066>,  <39.048195, 36.971161, 33.280586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563461, 36.552544, 33.657066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752544, 36.253033, 33.471218>,  <38.865993, 36.073326, 33.359707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752544, 36.253033, 33.471218>,  <38.563461, 36.552544, 33.657066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752544, 36.253033, 33.471218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132479, -0.581642, 0.802584,
		-0.871205, -0.317834, -0.374143,
		0.472706, -0.748782, -0.464624,
		38.894356, 36.028397, 33.331833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200058, 36.093246, 33.703747>,  <38.563461, 36.552544, 33.657066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200058, 36.093246, 33.703747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537632, 35.892437, 33.628120>,  <38.740177, 35.771954, 33.582745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.537632, 35.892437, 33.628120>,  <38.200058, 36.093246, 33.703747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537632, 35.892437, 33.628120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158277, -0.569778, 0.806413,
		-0.512556, -0.650640, -0.560316,
		0.843940, -0.502017, -0.189062,
		38.790813, 35.741833, 33.571400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084690, 35.462452, 33.848122>,  <38.200058, 36.093246, 33.703747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084690, 35.462452, 33.848122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483540, 35.473568, 33.876320>,  <38.722851, 35.480236, 33.893238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483540, 35.473568, 33.876320>,  <38.084690, 35.462452, 33.848122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483540, 35.473568, 33.876320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030041, -0.709142, 0.704426,
		0.069570, -0.704518, -0.706268,
		0.997125, 0.027790, 0.070499,
		38.782677, 35.481903, 33.897469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258629, 34.711067, 33.949524>,  <38.084690, 35.462452, 33.848122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258629, 34.711067, 33.949524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568085, 34.928444, 34.079853>,  <38.753757, 35.058868, 34.158051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568085, 34.928444, 34.079853>,  <38.258629, 34.711067, 33.949524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568085, 34.928444, 34.079853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138030, -0.646409, 0.750402,
		0.618412, -0.535566, -0.575097,
		0.773638, 0.543438, 0.325823,
		38.800175, 35.091476, 34.177601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759041, 34.271210, 34.042076>,  <38.258629, 34.711067, 33.949524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759041, 34.271210, 34.042076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853176, 34.593807, 34.259029>,  <38.909657, 34.787365, 34.389202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.853176, 34.593807, 34.259029>,  <38.759041, 34.271210, 34.042076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.853176, 34.593807, 34.259029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260577, -0.589983, 0.764212,
		0.936330, -0.038517, -0.349002,
		0.235340, 0.806496, 0.542382,
		38.923779, 34.835754, 34.421745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406109, 34.124893, 34.343842>,  <38.759041, 34.271210, 34.042076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406109, 34.124893, 34.343842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251186, 34.401630, 34.587593>,  <39.158234, 34.567673, 34.733845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251186, 34.401630, 34.587593>,  <39.406109, 34.124893, 34.343842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251186, 34.401630, 34.587593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238163, -0.563455, 0.791073,
		0.890659, 0.451519, 0.053457,
		-0.387305, 0.691845, 0.609381,
		39.134995, 34.609184, 34.770409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926147, 34.216545, 34.794323>,  <39.406109, 34.124893, 34.343842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926147, 34.216545, 34.794323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584068, 34.346024, 34.956238>,  <39.378822, 34.423710, 35.053387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584068, 34.346024, 34.956238>,  <39.926147, 34.216545, 34.794323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584068, 34.346024, 34.956238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149044, -0.594419, 0.790222,
		0.496408, 0.736129, 0.460102,
		-0.855199, 0.323697, 0.404790,
		39.327507, 34.443134, 35.077675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126110, 34.326645, 35.463902>,  <39.926147, 34.216545, 34.794323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126110, 34.326645, 35.463902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729263, 34.310646, 35.511398>,  <39.491154, 34.301044, 35.539894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729263, 34.310646, 35.511398>,  <40.126110, 34.326645, 35.463902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729263, 34.310646, 35.511398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122612, -0.505015, 0.854357,
		0.025791, 0.862183, 0.505940,
		-0.992120, -0.040000, 0.118738,
		39.431629, 34.298645, 35.547020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013527, 34.409958, 36.173714>,  <40.126110, 34.326645, 35.463902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013527, 34.409958, 36.173714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649883, 34.271404, 36.081150>,  <39.431698, 34.188274, 36.025612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649883, 34.271404, 36.081150>,  <40.013527, 34.409958, 36.173714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649883, 34.271404, 36.081150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053695, -0.453440, 0.889668,
		-0.413093, 0.821226, 0.393626,
		-0.909105, -0.346379, -0.231408,
		39.377151, 34.167492, 36.011726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507481, 34.569866, 36.799713>,  <40.013527, 34.409958, 36.173714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507481, 34.569866, 36.799713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385475, 34.262470, 36.574718>,  <39.312271, 34.078033, 36.439720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385475, 34.262470, 36.574718>,  <39.507481, 34.569866, 36.799713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385475, 34.262470, 36.574718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107046, -0.559223, 0.822077,
		-0.946312, 0.310960, 0.088309,
		-0.305018, -0.768488, -0.562486,
		39.293968, 34.031925, 36.405972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915516, 34.271881, 37.114159>,  <39.507481, 34.569866, 36.799713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915516, 34.271881, 37.114159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071842, 33.978729, 36.891392>,  <39.165638, 33.802837, 36.757732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071842, 33.978729, 36.891392>,  <38.915516, 34.271881, 37.114159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071842, 33.978729, 36.891392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074655, -0.577804, 0.812754,
		-0.917437, -0.359214, -0.171102,
		0.390816, -0.732877, -0.556916,
		39.189087, 33.758865, 36.724316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777447, 33.707176, 37.456066>,  <38.915516, 34.271881, 37.114159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777447, 33.707176, 37.456066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024792, 33.524097, 37.200520>,  <39.173199, 33.414249, 37.047192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024792, 33.524097, 37.200520>,  <38.777447, 33.707176, 37.456066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024792, 33.524097, 37.200520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120840, -0.747871, 0.652753,
		-0.776552, -0.480835, -0.407143,
		0.618357, -0.457698, -0.638864,
		39.210300, 33.386787, 37.008862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610020, 33.046253, 37.445984>,  <38.777447, 33.707176, 37.456066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610020, 33.046253, 37.445984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000416, 33.046177, 37.358868>,  <39.234653, 33.046131, 37.306599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000416, 33.046177, 37.358868>,  <38.610020, 33.046253, 37.445984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000416, 33.046177, 37.358868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161151, -0.672067, 0.722742,
		-0.146506, -0.740490, -0.655904,
		0.975995, -0.000186, -0.217793,
		39.293213, 33.046120, 37.293530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807365, 32.420956, 37.403038>,  <38.610020, 33.046253, 37.445984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807365, 32.420956, 37.403038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191647, 32.529934, 37.424286>,  <39.422215, 32.595322, 37.437035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191647, 32.529934, 37.424286>,  <38.807365, 32.420956, 37.403038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191647, 32.529934, 37.424286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149635, -0.669490, 0.727594,
		0.233795, -0.691053, -0.683949,
		0.960703, 0.272450, 0.053118,
		39.479858, 32.611668, 37.440220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239712, 31.920990, 37.397278>,  <38.807365, 32.420956, 37.403038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239712, 31.920990, 37.397278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454327, 32.198586, 37.589325>,  <39.583096, 32.365143, 37.704552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454327, 32.198586, 37.589325>,  <39.239712, 31.920990, 37.397278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454327, 32.198586, 37.589325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301086, -0.688920, 0.659345,
		0.788338, -0.209206, -0.578580,
		0.536535, 0.693990, 0.480113,
		39.615288, 32.406784, 37.733360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803116, 31.602030, 37.517132>,  <39.239712, 31.920990, 37.397278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803116, 31.602030, 37.517132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783875, 31.891724, 37.792282>,  <39.772331, 32.065540, 37.957371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783875, 31.891724, 37.792282>,  <39.803116, 31.602030, 37.517132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783875, 31.891724, 37.792282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103449, -0.681353, 0.724608,
		0.993471, 0.106014, -0.042148,
		-0.048101, 0.724237, 0.687872,
		39.769444, 32.108994, 37.998642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385963, 31.444670, 37.855789>,  <39.803116, 31.602030, 37.517132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385963, 31.444670, 37.855789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189590, 31.683563, 38.109493>,  <40.071766, 31.826900, 38.261715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.189590, 31.683563, 38.109493>,  <40.385963, 31.444670, 37.855789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189590, 31.683563, 38.109493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349693, -0.531724, 0.771352,
		0.797933, 0.600483, 0.052193,
		-0.490936, 0.597236, 0.634264,
		40.042309, 31.862734, 38.299774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754387, 31.531500, 38.483158>,  <40.385963, 31.444670, 37.855789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754387, 31.531500, 38.483158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398849, 31.646568, 38.625816>,  <40.185528, 31.715611, 38.711411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398849, 31.646568, 38.625816>,  <40.754387, 31.531500, 38.483158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398849, 31.646568, 38.625816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136525, -0.576733, 0.805444,
		0.437396, 0.764606, 0.473352,
		-0.888846, 0.287673, 0.356648,
		40.132195, 31.732870, 38.732811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853832, 31.825966, 39.110714>,  <40.754387, 31.531500, 38.483158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853832, 31.825966, 39.110714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482868, 31.676352, 39.111412>,  <40.260288, 31.586584, 39.111832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482868, 31.676352, 39.111412>,  <40.853832, 31.825966, 39.110714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482868, 31.676352, 39.111412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189283, -0.465295, 0.864680,
		-0.322609, 0.802246, 0.502320,
		-0.927413, -0.374034, 0.001744,
		40.204643, 31.564142, 39.111935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587471, 31.949665, 39.885265>,  <40.853832, 31.825966, 39.110714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587471, 31.949665, 39.885265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328865, 31.689148, 39.726349>,  <40.173702, 31.532839, 39.630997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328865, 31.689148, 39.726349>,  <40.587471, 31.949665, 39.885265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328865, 31.689148, 39.726349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087314, -0.454175, 0.886624,
		-0.757891, 0.607902, 0.236763,
		-0.646512, -0.651291, -0.397293,
		40.134911, 31.493761, 39.607162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026707, 31.947950, 40.375881>,  <40.587471, 31.949665, 39.885265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026707, 31.947950, 40.375881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998566, 31.606850, 40.168858>,  <39.981682, 31.402189, 40.044643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998566, 31.606850, 40.168858>,  <40.026707, 31.947950, 40.375881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998566, 31.606850, 40.168858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261898, -0.484853, 0.834462,
		-0.962528, 0.194255, -0.189223,
		-0.070353, -0.852750, -0.517559,
		39.977459, 31.351025, 40.013588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352478, 31.704525, 40.460110>,  <40.026707, 31.947950, 40.375881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352478, 31.704525, 40.460110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583248, 31.386538, 40.385082>,  <39.721710, 31.195745, 40.340065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.583248, 31.386538, 40.385082>,  <39.352478, 31.704525, 40.460110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583248, 31.386538, 40.385082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491017, -0.521063, 0.698137,
		-0.652730, -0.310677, -0.690958,
		0.576928, -0.794967, -0.187566,
		39.756325, 31.148046, 40.328812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935848, 31.159908, 40.684036>,  <39.352478, 31.704525, 40.460110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935848, 31.159908, 40.684036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289288, 30.976076, 40.648174>,  <39.501350, 30.865776, 40.626659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289288, 30.976076, 40.648174>,  <38.935848, 31.159908, 40.684036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289288, 30.976076, 40.648174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288349, -0.684919, 0.669135,
		-0.368925, -0.565396, -0.737714,
		0.883600, -0.459580, -0.089652,
		39.554367, 30.838202, 40.621277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760807, 30.404448, 40.763836>,  <38.935848, 31.159908, 40.684036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760807, 30.404448, 40.763836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150723, 30.447828, 40.841839>,  <39.384670, 30.473858, 40.888641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150723, 30.447828, 40.841839>,  <38.760807, 30.404448, 40.763836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150723, 30.447828, 40.841839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143715, -0.363361, 0.920497,
		0.170689, -0.925314, -0.338614,
		0.974788, 0.108455, 0.195003,
		39.443157, 30.480364, 40.900341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083775, 29.779108, 41.032490>,  <38.760807, 30.404448, 40.763836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083775, 29.779108, 41.032490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288448, 30.079206, 41.199970>,  <39.411251, 30.259266, 41.300457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288448, 30.079206, 41.199970>,  <39.083775, 29.779108, 41.032490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288448, 30.079206, 41.199970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188439, -0.377467, 0.906648,
		0.838254, -0.542817, -0.051769,
		0.511685, 0.750246, 0.418701,
		39.441956, 30.304279, 41.325581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525761, 29.357794, 41.547665>,  <39.083775, 29.779108, 41.032490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525761, 29.357794, 41.547665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541534, 29.748007, 41.634182>,  <39.550999, 29.982134, 41.686092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541534, 29.748007, 41.634182>,  <39.525761, 29.357794, 41.547665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541534, 29.748007, 41.634182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072096, -0.218679, 0.973130,
		0.996618, -0.022783, -0.078956,
		0.039437, 0.975531, 0.216297,
		39.553364, 30.040667, 41.699070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204212, 29.420914, 41.897480>,  <39.525761, 29.357794, 41.547665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204212, 29.420914, 41.897480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914650, 29.678822, 41.995647>,  <39.740913, 29.833567, 42.054546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914650, 29.678822, 41.995647>,  <40.204212, 29.420914, 41.897480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914650, 29.678822, 41.995647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167435, -0.180898, 0.969145,
		0.669271, 0.742662, 0.022997,
		-0.723907, 0.644770, 0.245417,
		39.697479, 29.872253, 42.069271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473904, 29.709452, 42.550308>,  <40.204212, 29.420914, 41.897480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473904, 29.709452, 42.550308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083458, 29.794395, 42.531937>,  <39.849190, 29.845362, 42.520912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083458, 29.794395, 42.531937>,  <40.473904, 29.709452, 42.550308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083458, 29.794395, 42.531937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076256, -0.136888, 0.987647,
		0.203447, 0.967557, 0.149812,
		-0.976112, 0.212358, -0.045932,
		39.790623, 29.858103, 42.518158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422096, 30.208632, 43.056568>,  <40.473904, 29.709452, 42.550308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422096, 30.208632, 43.056568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072392, 30.029350, 42.981964>,  <39.862568, 29.921782, 42.937202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072392, 30.029350, 42.981964>,  <40.422096, 30.208632, 43.056568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072392, 30.029350, 42.981964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142770, -0.129822, 0.981205,
		-0.463992, 0.884455, 0.049508,
		-0.874258, -0.448203, -0.186510,
		39.810116, 29.894890, 42.926010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951195, 30.522789, 43.483765>,  <40.422096, 30.208632, 43.056568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951195, 30.522789, 43.483765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821815, 30.154585, 43.396095>,  <39.744186, 29.933662, 43.343494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821815, 30.154585, 43.396095>,  <39.951195, 30.522789, 43.483765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821815, 30.154585, 43.396095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033374, -0.220385, 0.974842,
		-0.945656, 0.322629, 0.040563,
		-0.323452, -0.920511, -0.219175,
		39.724781, 29.878431, 43.330341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253307, 30.466400, 43.747154>,  <39.951195, 30.522789, 43.483765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253307, 30.466400, 43.747154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414909, 30.100889, 43.730221>,  <39.511871, 29.881582, 43.720058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414909, 30.100889, 43.730221>,  <39.253307, 30.466400, 43.747154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414909, 30.100889, 43.730221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238564, -0.149929, 0.959484,
		-0.883101, -0.377536, -0.278566,
		0.404005, -0.913777, -0.042336,
		39.536110, 29.826756, 43.717522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729862, 29.907444, 43.875130>,  <39.253307, 30.466400, 43.747154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729862, 29.907444, 43.875130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091007, 29.783564, 43.994408>,  <39.307693, 29.709234, 44.065975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091007, 29.783564, 43.994408>,  <38.729862, 29.907444, 43.875130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091007, 29.783564, 43.994408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372082, -0.215390, 0.902863,
		-0.215390, -0.926116, -0.309703,
		-0.902863, 0.309703, -0.298199,
		39.361866, 29.690653, 44.083866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811245, 29.184862, 44.058167>,  <38.729862, 29.907444, 43.875130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811245, 29.184862, 44.058167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059242, 29.417465, 44.268860>,  <39.208042, 29.557028, 44.395275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059242, 29.417465, 44.268860>,  <38.811245, 29.184862, 44.058167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059242, 29.417465, 44.268860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454612, -0.280916, 0.845230,
		0.639477, -0.763502, 0.090193,
		0.619998, 0.581508, 0.526736,
		39.245243, 29.591917, 44.426880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389271, 28.703028, 44.245773>,  <38.811245, 29.184862, 44.058167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389271, 28.703028, 44.245773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104702, 28.661406, 44.523781>,  <38.933960, 28.636433, 44.690586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104702, 28.661406, 44.523781>,  <39.389271, 28.703028, 44.245773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104702, 28.661406, 44.523781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640842, 0.309868, 0.702355,
		-0.288449, 0.945068, -0.153763,
		-0.711420, -0.104056, 0.695021,
		38.891277, 28.630188, 44.732288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639545, 28.826704, 43.490673>,  <39.389271, 28.703028, 44.245773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639545, 28.826704, 43.490673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448402, 29.174799, 43.538567>,  <39.333717, 29.383656, 43.567303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448402, 29.174799, 43.538567>,  <39.639545, 28.826704, 43.490673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448402, 29.174799, 43.538567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062829, 0.169815, -0.983471,
		-0.876188, -0.462435, -0.135823,
		-0.477857, 0.870239, 0.119736,
		39.305046, 29.435871, 43.574486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432915, 28.867449, 42.791058>,  <39.639545, 28.826704, 43.490673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432915, 28.867449, 42.791058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348217, 29.213942, 42.972080>,  <39.297398, 29.421837, 43.080692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348217, 29.213942, 42.972080>,  <39.432915, 28.867449, 42.791058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348217, 29.213942, 42.972080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090502, 0.443688, -0.891600,
		-0.973126, -0.229750, -0.015554,
		-0.211746, 0.866231, 0.452557,
		39.284695, 29.473810, 43.107845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700577, 29.246494, 42.725319>,  <39.432915, 28.867449, 42.791058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700577, 29.246494, 42.725319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005592, 29.498543, 42.783939>,  <39.188602, 29.649773, 42.819111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005592, 29.498543, 42.783939>,  <38.700577, 29.246494, 42.725319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005592, 29.498543, 42.783939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234577, 0.480424, -0.845084,
		-0.602914, 0.610032, 0.514155,
		0.762541, 0.630122, 0.146554,
		39.234356, 29.687580, 42.827908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498840, 29.988506, 42.484390>,  <38.700577, 29.246494, 42.725319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498840, 29.988506, 42.484390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897015, 29.953531, 42.499676>,  <39.135918, 29.932547, 42.508846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897015, 29.953531, 42.499676>,  <38.498840, 29.988506, 42.484390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897015, 29.953531, 42.499676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072743, 0.436120, -0.896944,
		0.061761, 0.895630, 0.440490,
		0.995436, -0.087439, 0.038216,
		39.195644, 29.927299, 42.511139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735714, 30.701069, 42.362534>,  <38.498840, 29.988506, 42.484390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735714, 30.701069, 42.362534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006660, 30.430105, 42.247791>,  <39.169228, 30.267527, 42.178947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006660, 30.430105, 42.247791>,  <38.735714, 30.701069, 42.362534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006660, 30.430105, 42.247791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145605, 0.505679, -0.850346,
		0.721090, 0.534230, 0.441166,
		0.677369, -0.677412, -0.286854,
		39.209869, 30.226881, 42.161736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168159, 31.292265, 42.115746>,  <38.735714, 30.701069, 42.362534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168159, 31.292265, 42.115746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266312, 30.922287, 41.999634>,  <39.325203, 30.700300, 41.929966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266312, 30.922287, 41.999634>,  <39.168159, 31.292265, 42.115746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266312, 30.922287, 41.999634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552660, 0.379484, -0.741997,
		0.796464, 0.021646, 0.604299,
		0.245383, -0.924945, -0.290282,
		39.339928, 30.644804, 41.912548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977139, 31.280331, 41.947071>,  <39.168159, 31.292265, 42.115746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977139, 31.280331, 41.947071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784374, 30.997997, 41.739391>,  <39.668716, 30.828598, 41.614784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784374, 30.997997, 41.739391>,  <39.977139, 31.280331, 41.947071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784374, 30.997997, 41.739391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383526, 0.362849, -0.849264,
		0.787829, -0.608391, 0.095847,
		-0.481906, -0.705834, -0.519197,
		39.639801, 30.786247, 41.583633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467163, 31.053493, 41.421482>,  <39.977139, 31.280331, 41.947071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467163, 31.053493, 41.421482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208935, 30.748857, 41.398800>,  <40.053997, 30.566076, 41.385189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208935, 30.748857, 41.398800>,  <40.467163, 31.053493, 41.421482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208935, 30.748857, 41.398800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029841, 0.049043, -0.998351,
		0.763117, -0.646199, -0.008934,
		-0.645571, -0.761591, -0.056709,
		40.015263, 30.520380, 41.381786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809586, 30.663084, 41.040977>,  <40.467163, 31.053493, 41.421482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809586, 30.663084, 41.040977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416706, 30.598854, 41.001984>,  <40.180977, 30.560316, 40.978588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.416706, 30.598854, 41.001984>,  <40.809586, 30.663084, 41.040977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416706, 30.598854, 41.001984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044421, 0.305688, -0.951095,
		0.182519, -0.938494, -0.293113,
		-0.982198, -0.160573, -0.097482,
		40.122047, 30.550682, 40.972740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715172, 30.265423, 40.462708>,  <40.809586, 30.663084, 41.040977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715172, 30.265423, 40.462708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359371, 30.438150, 40.522461>,  <40.145889, 30.541788, 40.558311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359371, 30.438150, 40.522461>,  <40.715172, 30.265423, 40.462708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359371, 30.438150, 40.522461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028818, 0.379291, -0.924829,
		-0.456019, -0.818333, -0.349824,
		-0.889503, 0.431821, 0.149382,
		40.092522, 30.567698, 40.567276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343006, 30.117987, 39.897709>,  <40.715172, 30.265423, 40.462708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343006, 30.117987, 39.897709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162449, 30.439802, 40.052094>,  <40.054115, 30.632891, 40.144722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162449, 30.439802, 40.052094>,  <40.343006, 30.117987, 39.897709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162449, 30.439802, 40.052094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061593, 0.403408, -0.912945,
		-0.890197, -0.435870, -0.132542,
		-0.451394, 0.804537, 0.385959,
		40.027031, 30.681164, 40.167881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888222, 30.252642, 39.317196>,  <40.343006, 30.117987, 39.897709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888222, 30.252642, 39.317196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954239, 30.587889, 39.525166>,  <39.993851, 30.789038, 39.649948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954239, 30.587889, 39.525166>,  <39.888222, 30.252642, 39.317196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954239, 30.587889, 39.525166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018265, 0.529660, -0.848014,
		-0.986117, 0.130463, 0.102726,
		0.165044, 0.838117, 0.519923,
		40.003754, 30.839323, 39.681141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300991, 30.651361, 39.241421>,  <39.888222, 30.252642, 39.317196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300991, 30.651361, 39.241421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575260, 30.916618, 39.361485>,  <39.739822, 31.075773, 39.433525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575260, 30.916618, 39.361485>,  <39.300991, 30.651361, 39.241421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575260, 30.916618, 39.361485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134190, 0.520450, -0.843282,
		-0.715436, 0.537935, 0.445845,
		0.685671, 0.663142, 0.300163,
		39.780960, 31.115561, 39.451534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019867, 31.247574, 38.853813>,  <39.300991, 30.651361, 39.241421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019867, 31.247574, 38.853813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367786, 31.375729, 39.003910>,  <39.576538, 31.452621, 39.093967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.367786, 31.375729, 39.003910>,  <39.019867, 31.247574, 38.853813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367786, 31.375729, 39.003910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010284, 0.748569, -0.662977,
		-0.493306, 0.580513, 0.647807,
		0.869795, 0.320388, 0.375244,
		39.628723, 31.471846, 39.116482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979790, 31.995417, 39.200943>,  <39.019867, 31.247574, 38.853813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979790, 31.995417, 39.200943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342541, 31.916426, 39.052036>,  <39.560192, 31.869032, 38.962692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342541, 31.916426, 39.052036>,  <38.979790, 31.995417, 39.200943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342541, 31.916426, 39.052036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129717, 0.709686, -0.692474,
		0.400940, 0.676276, 0.617979,
		0.906874, -0.197478, -0.372266,
		39.614601, 31.857182, 38.940357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413071, 32.594666, 39.176117>,  <38.979790, 31.995417, 39.200943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413071, 32.594666, 39.176117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621441, 32.377914, 38.912296>,  <39.746464, 32.247864, 38.754002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621441, 32.377914, 38.912296>,  <39.413071, 32.594666, 39.176117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621441, 32.377914, 38.912296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036717, 0.757730, -0.651534,
		0.852815, 0.363615, 0.374822,
		0.520922, -0.541876, -0.659554,
		39.777718, 32.215351, 38.714432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679131, 33.085365, 38.801094>,  <39.413071, 32.594666, 39.176117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679131, 33.085365, 38.801094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774426, 32.778259, 38.563175>,  <39.831600, 32.593998, 38.420422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774426, 32.778259, 38.563175>,  <39.679131, 33.085365, 38.801094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774426, 32.778259, 38.563175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062798, 0.623328, -0.779435,
		0.969175, 0.148337, 0.196712,
		0.238235, -0.767762, -0.594799,
		39.845898, 32.547932, 38.384735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341190, 33.231674, 38.416286>,  <39.679131, 33.085365, 38.801094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341190, 33.231674, 38.416286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109741, 32.972588, 38.218029>,  <39.970871, 32.817135, 38.099075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109741, 32.972588, 38.218029>,  <40.341190, 33.231674, 38.416286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109741, 32.972588, 38.218029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000866, 0.607217, -0.794535,
		0.815594, -0.460166, -0.350789,
		-0.578624, -0.647715, -0.495641,
		39.936153, 32.778275, 38.069336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540264, 33.205414, 37.758358>,  <40.341190, 33.231674, 38.416286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540264, 33.205414, 37.758358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182758, 33.047779, 37.672672>,  <39.968254, 32.953197, 37.621262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.182758, 33.047779, 37.672672>,  <40.540264, 33.205414, 37.758358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182758, 33.047779, 37.672672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019620, 0.511467, -0.859079,
		0.448112, -0.763609, -0.464862,
		-0.893762, -0.394084, -0.214213,
		39.914631, 32.929554, 37.608410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521694, 33.043701, 36.950825>,  <40.540264, 33.205414, 37.758358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521694, 33.043701, 36.950825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135220, 33.046745, 37.053925>,  <39.903336, 33.048573, 37.115784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135220, 33.046745, 37.053925>,  <40.521694, 33.043701, 36.950825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135220, 33.046745, 37.053925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207163, 0.572282, -0.793459,
		-0.153540, -0.820021, -0.551353,
		-0.966183, 0.007608, 0.257746,
		39.845364, 33.049026, 37.131248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177155, 33.036003, 36.287056>,  <40.521694, 33.043701, 36.950825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177155, 33.036003, 36.287056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857746, 33.119663, 36.512844>,  <39.666103, 33.169857, 36.648315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857746, 33.119663, 36.512844>,  <40.177155, 33.036003, 36.287056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857746, 33.119663, 36.512844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402860, 0.511092, -0.759269,
		-0.447296, -0.833692, -0.323858,
		-0.798518, 0.209148, 0.564470,
		39.618191, 33.182407, 36.682186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621929, 32.884533, 35.866028>,  <40.177155, 33.036003, 36.287056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621929, 32.884533, 35.866028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488617, 33.155006, 36.128845>,  <39.408630, 33.317291, 36.286537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488617, 33.155006, 36.128845>,  <39.621929, 32.884533, 35.866028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488617, 33.155006, 36.128845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468115, 0.486249, -0.737855,
		-0.818410, -0.553483, 0.154474,
		-0.333278, 0.676179, 0.657044,
		39.388634, 33.357861, 36.325958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281364, 32.789471, 35.505920>,  <39.621929, 32.884533, 35.866028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281364, 32.789471, 35.505920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190792, 33.163025, 35.616623>,  <40.136448, 33.387157, 35.683044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190792, 33.163025, 35.616623>,  <40.281364, 32.789471, 35.505920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190792, 33.163025, 35.616623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932567, 0.125836, 0.338356,
		0.281159, 0.334705, -0.899401,
		-0.226427, 0.933883, 0.276755,
		40.122864, 33.443192, 35.699650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865330, 33.232738, 35.410290>,  <40.281364, 32.789471, 35.505920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865330, 33.232738, 35.410290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632641, 33.424530, 35.673107>,  <40.493027, 33.539604, 35.830799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.632641, 33.424530, 35.673107>,  <40.865330, 33.232738, 35.410290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.632641, 33.424530, 35.673107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813308, 0.354253, 0.461556,
		-0.011454, 0.802874, -0.596038,
		-0.581720, 0.479476, 0.657042,
		40.458126, 33.568375, 35.870220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113144, 33.874054, 35.481392>,  <40.865330, 33.232738, 35.410290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113144, 33.874054, 35.481392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934261, 33.749840, 35.816910>,  <40.826931, 33.675312, 36.018219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934261, 33.749840, 35.816910>,  <41.113144, 33.874054, 35.481392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934261, 33.749840, 35.816910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866528, 0.082003, 0.492347,
		-0.221673, 0.947019, 0.232413,
		-0.447203, -0.310532, 0.838796,
		40.800102, 33.656681, 36.068550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403915, 34.291862, 36.072578>,  <41.113144, 33.874054, 35.481392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403915, 34.291862, 36.072578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287228, 33.925121, 36.181599>,  <41.217216, 33.705078, 36.247009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287228, 33.925121, 36.181599>,  <41.403915, 34.291862, 36.072578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287228, 33.925121, 36.181599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928517, -0.203016, 0.310871,
		-0.229690, 0.343755, 0.910536,
		-0.291717, -0.916852, 0.272551,
		41.199711, 33.650066, 36.263363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282177, 34.105328, 36.963089>,  <41.403915, 34.291862, 36.072578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282177, 34.105328, 36.963089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418705, 33.856972, 36.680813>,  <41.500622, 33.707958, 36.511448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.418705, 33.856972, 36.680813>,  <41.282177, 34.105328, 36.963089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418705, 33.856972, 36.680813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834243, -0.145796, 0.531773,
		-0.433059, -0.770221, 0.468210,
		0.341320, -0.620889, -0.705689,
		41.521099, 33.670704, 36.469105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515594, 33.466072, 37.286633>,  <41.282177, 34.105328, 36.963089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515594, 33.466072, 37.286633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700710, 33.537392, 36.939289>,  <41.811779, 33.580181, 36.730885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700710, 33.537392, 36.939289>,  <41.515594, 33.466072, 37.286633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700710, 33.537392, 36.939289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884442, -0.026650, 0.465888,
		0.059925, -0.983616, -0.170027,
		0.462786, 0.178297, -0.868355,
		41.839546, 33.590881, 36.678783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.218647, 33.081539, 37.181030>,  <41.515594, 33.466072, 37.286633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.218647, 33.081539, 37.181030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188877, 33.461704, 37.060249>,  <42.171017, 33.689804, 36.987782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188877, 33.461704, 37.060249>,  <42.218647, 33.081539, 37.181030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188877, 33.461704, 37.060249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781582, 0.243648, 0.574252,
		0.619347, -0.193263, -0.760959,
		-0.074425, 0.950413, -0.301954,
		42.166550, 33.746830, 36.969662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.008911, 33.072353, 37.139763>,  <42.218647, 33.081539, 37.181030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.008911, 33.072353, 37.139763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880505, 33.440506, 37.229073>,  <42.803459, 33.661396, 37.282658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.880505, 33.440506, 37.229073>,  <43.008911, 33.072353, 37.139763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.880505, 33.440506, 37.229073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915757, 0.241531, 0.321017,
		0.241531, 0.307512, -0.920380,
		-0.321017, 0.920380, 0.223270,
		42.784199, 33.716621, 37.296055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432636, 33.619713, 36.924133>,  <43.008911, 33.072353, 37.139763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432636, 33.619713, 36.924133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246468, 33.727882, 37.261238>,  <43.134766, 33.792782, 37.463501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.246468, 33.727882, 37.261238>,  <43.432636, 33.619713, 36.924133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.246468, 33.727882, 37.261238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883895, 0.092607, 0.458425,
		0.045922, 0.958278, -0.282125,
		-0.465426, 0.270421, 0.842764,
		43.106838, 33.809010, 37.514069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382664, 34.273933, 37.160202>,  <43.432636, 33.619713, 36.924133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382664, 34.273933, 37.160202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211639, 34.316708, 36.801147>,  <43.109024, 34.342373, 36.585712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.211639, 34.316708, 36.801147>,  <43.382664, 34.273933, 37.160202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211639, 34.316708, 36.801147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653372, 0.722795, -0.225104,
		0.624736, -0.682738, -0.378911,
		-0.427562, 0.106940, -0.897638,
		43.083370, 34.348789, 36.531857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188175, 34.186150, 37.035252>,  <43.382664, 34.273933, 37.160202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188175, 34.186150, 37.035252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491680, 33.937267, 37.112328>,  <44.673782, 33.787937, 37.158573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491680, 33.937267, 37.112328>,  <44.188175, 34.186150, 37.035252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491680, 33.937267, 37.112328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649809, 0.702657, -0.289864,
		0.044958, 0.345154, 0.937469,
		0.758767, -0.622207, 0.192694,
		44.719311, 33.750607, 37.170135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703732, 34.320747, 37.572323>,  <44.188175, 34.186150, 37.035252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703732, 34.320747, 37.572323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923832, 34.137184, 37.293285>,  <45.055893, 34.027046, 37.125862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.923832, 34.137184, 37.293285>,  <44.703732, 34.320747, 37.572323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923832, 34.137184, 37.293285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472995, 0.859777, -0.192509,
		0.688115, -0.224028, 0.690152,
		0.550250, -0.458907, -0.697589,
		45.088905, 33.999512, 37.084007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373787, 34.664200, 37.614628>,  <44.703732, 34.320747, 37.572323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373787, 34.664200, 37.614628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324219, 34.516163, 37.246349>,  <45.294476, 34.427341, 37.025383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324219, 34.516163, 37.246349>,  <45.373787, 34.664200, 37.614628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324219, 34.516163, 37.246349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653155, 0.668075, -0.356461,
		0.747015, -0.645529, 0.158937,
		-0.123924, -0.370092, -0.920692,
		45.287041, 34.405136, 36.970142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.024239, 34.561768, 37.145947>,  <45.373787, 34.664200, 37.614628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.024239, 34.561768, 37.145947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715874, 34.653847, 36.908390>,  <45.530857, 34.709095, 36.765854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.715874, 34.653847, 36.908390>,  <46.024239, 34.561768, 37.145947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.715874, 34.653847, 36.908390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625496, 0.449613, -0.637655,
		0.120237, -0.863051, -0.490598,
		-0.770908, 0.230197, -0.593895,
		45.484600, 34.722904, 36.730221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980995, 34.157314, 36.568325>,  <46.024239, 34.561768, 37.145947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980995, 34.157314, 36.568325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825779, 34.516129, 36.483711>,  <45.732651, 34.731419, 36.432941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.825779, 34.516129, 36.483711>,  <45.980995, 34.157314, 36.568325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825779, 34.516129, 36.483711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685759, 0.127674, -0.716543,
		-0.615760, -0.423108, -0.664695,
		-0.388039, 0.897039, -0.211533,
		45.709366, 34.785240, 36.420250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925339, 34.258583, 35.815434>,  <45.980995, 34.157314, 36.568325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.925339, 34.258583, 35.815434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.946003, 34.623081, 35.978874>,  <45.958401, 34.841782, 36.076939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.946003, 34.623081, 35.978874>,  <45.925339, 34.258583, 35.815434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.946003, 34.623081, 35.978874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566894, 0.310081, -0.763204,
		-0.822169, 0.271062, -0.500563,
		0.051660, 0.911249, 0.408603,
		45.961502, 34.896458, 36.101456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699173, 34.756073, 35.273308>,  <45.925339, 34.258583, 35.815434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.699173, 34.756073, 35.273308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973633, 34.892368, 35.530399>,  <46.138309, 34.974144, 35.684654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.973633, 34.892368, 35.530399>,  <45.699173, 34.756073, 35.273308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.973633, 34.892368, 35.530399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620235, 0.187683, -0.761632,
		-0.380145, 0.921235, -0.082559,
		0.686147, 0.340737, 0.642729,
		46.179478, 34.994591, 35.723217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.028877, 35.314793, 34.999428>,  <45.699173, 34.756073, 35.273308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.028877, 35.314793, 34.999428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295849, 35.216808, 35.280720>,  <46.456032, 35.158016, 35.449493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295849, 35.216808, 35.280720>,  <46.028877, 35.314793, 34.999428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.295849, 35.216808, 35.280720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720099, -0.028291, -0.693294,
		0.189725, 0.969120, 0.157513,
		0.667429, -0.244960, 0.703230,
		46.496078, 35.143322, 35.491688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.648518, 35.798389, 34.984409>,  <46.028877, 35.314793, 34.999428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.648518, 35.798389, 34.984409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.754459, 35.441959, 35.131840>,  <46.818024, 35.228104, 35.220299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.754459, 35.441959, 35.131840>,  <46.648518, 35.798389, 34.984409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.754459, 35.441959, 35.131840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801908, -0.008745, -0.597384,
		0.535535, 0.453780, 0.712240,
		0.264852, -0.891071, 0.368573,
		46.833916, 35.174637, 35.242413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351368, 35.723263, 35.377239>,  <46.648518, 35.798389, 34.984409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351368, 35.723263, 35.377239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.258381, 35.407097, 35.150539>,  <47.202591, 35.217396, 35.014519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.258381, 35.407097, 35.150539>,  <47.351368, 35.723263, 35.377239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.258381, 35.407097, 35.150539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811413, 0.163673, -0.561088,
		0.536255, -0.590298, 0.603306,
		-0.232465, -0.790417, -0.566746,
		47.188641, 35.169971, 34.980515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.893440, 35.106827, 35.311073>,  <47.351368, 35.723263, 35.377239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.893440, 35.106827, 35.311073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.662514, 35.174591, 34.991573>,  <47.523956, 35.215252, 34.799873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.662514, 35.174591, 34.991573>,  <47.893440, 35.106827, 35.311073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.662514, 35.174591, 34.991573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810950, 0.233045, -0.536703,
		0.095221, -0.957595, -0.271926,
		-0.577315, 0.169413, -0.798753,
		47.489319, 35.225414, 34.751949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.529411, 33.455635, 27.199669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231705, 33.670284, 27.040623>,  <39.053082, 33.799072, 26.945196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231705, 33.670284, 27.040623>,  <39.529411, 33.455635, 27.199669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231705, 33.670284, 27.040623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462455, 0.015461, 0.886508,
		0.481869, 0.843680, 0.236657,
		-0.744270, 0.536624, -0.397614,
		39.008423, 33.831272, 26.921339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365036, 33.962875, 27.721577>,  <39.529411, 33.455635, 27.199669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365036, 33.962875, 27.721577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.038120, 33.945217, 27.491764>,  <38.841972, 33.934624, 27.353876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.038120, 33.945217, 27.491764>,  <39.365036, 33.962875, 27.721577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038120, 33.945217, 27.491764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573325, 0.162220, 0.803109,
		0.057747, 0.985767, -0.157891,
		-0.817291, -0.044146, -0.574532,
		38.792934, 33.931973, 27.319405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987804, 34.525185, 27.927219>,  <39.365036, 33.962875, 27.721577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987804, 34.525185, 27.927219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738171, 34.265587, 27.753172>,  <38.588390, 34.109829, 27.648743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738171, 34.265587, 27.753172>,  <38.987804, 34.525185, 27.927219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738171, 34.265587, 27.753172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689429, 0.195312, 0.697525,
		-0.367705, 0.735297, -0.569325,
		-0.624084, -0.648992, -0.435118,
		38.550945, 34.070889, 27.622637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207542, 34.814922, 27.939384>,  <38.987804, 34.525185, 27.927219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207542, 34.814922, 27.939384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201813, 34.417686, 27.892776>,  <38.198376, 34.179344, 27.864813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.201813, 34.417686, 27.892776>,  <38.207542, 34.814922, 27.939384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201813, 34.417686, 27.892776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664959, -0.077564, 0.742841,
		-0.746742, 0.088122, -0.659250,
		-0.014326, -0.993086, -0.116518,
		38.197514, 34.119762, 27.857821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577362, 34.500923, 28.043777>,  <38.207542, 34.814922, 27.939384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577362, 34.500923, 28.043777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781277, 34.167934, 28.130594>,  <37.903625, 33.968140, 28.182684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.781277, 34.167934, 28.130594>,  <37.577362, 34.500923, 28.043777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781277, 34.167934, 28.130594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583801, -0.149442, 0.798025,
		-0.631900, -0.533529, -0.562182,
		0.509783, -0.832474, 0.217043,
		37.934212, 33.918194, 28.195707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112064, 34.070133, 28.466709>,  <37.577362, 34.500923, 28.043777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112064, 34.070133, 28.466709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.432774, 33.848225, 28.555611>,  <37.625198, 33.715080, 28.608952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.432774, 33.848225, 28.555611>,  <37.112064, 34.070133, 28.466709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432774, 33.848225, 28.555611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479745, -0.375684, 0.792910,
		-0.356371, -0.742366, -0.567356,
		0.801776, -0.554756, 0.222263,
		37.673306, 33.681793, 28.622286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877502, 33.377712, 28.534500>,  <37.112064, 34.070133, 28.466709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877502, 33.377712, 28.534500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229996, 33.420967, 28.718557>,  <37.441490, 33.446918, 28.828991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229996, 33.420967, 28.718557>,  <36.877502, 33.377712, 28.534500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229996, 33.420967, 28.718557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369788, -0.448631, 0.813626,
		0.294418, -0.887151, -0.355361,
		0.881235, 0.108137, 0.460143,
		37.494366, 33.453407, 28.856600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916111, 32.704826, 28.825735>,  <36.877502, 33.377712, 28.534500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916111, 32.704826, 28.825735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175186, 32.942478, 29.016525>,  <37.330631, 33.085068, 29.131001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.175186, 32.942478, 29.016525>,  <36.916111, 32.704826, 28.825735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175186, 32.942478, 29.016525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286921, -0.389746, 0.875085,
		0.705815, -0.703638, -0.081966,
		0.647690, 0.594131, 0.476977,
		37.369492, 33.120716, 29.159618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352371, 32.284977, 29.331743>,  <36.916111, 32.704826, 28.825735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352371, 32.284977, 29.331743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.357334, 32.660500, 29.469435>,  <37.360310, 32.885811, 29.552050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.357334, 32.660500, 29.469435>,  <37.352371, 32.284977, 29.331743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357334, 32.660500, 29.469435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163524, -0.337718, 0.926934,
		0.986462, -0.067786, 0.149328,
		0.012403, 0.938803, 0.344230,
		37.361053, 32.942139, 29.572704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747864, 32.217060, 29.860041>,  <37.352371, 32.284977, 29.331743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747864, 32.217060, 29.860041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535107, 32.548725, 29.928850>,  <37.407452, 32.747723, 29.970135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.535107, 32.548725, 29.928850>,  <37.747864, 32.217060, 29.860041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535107, 32.548725, 29.928850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087078, -0.255618, 0.962848,
		0.842325, 0.497148, 0.208162,
		-0.531888, 0.829158, 0.172022,
		37.375542, 32.797474, 29.980457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921806, 32.318562, 30.531988>,  <37.747864, 32.217060, 29.860041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.921806, 32.318562, 30.531988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611309, 32.564003, 30.474110>,  <37.425011, 32.711269, 30.439383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611309, 32.564003, 30.474110>,  <37.921806, 32.318562, 30.531988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611309, 32.564003, 30.474110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271779, -0.118609, 0.955022,
		0.568847, 0.780652, 0.258835,
		-0.776241, 0.613607, -0.144694,
		37.378437, 32.748085, 30.430702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920776, 32.792156, 31.076138>,  <37.921806, 32.318562, 30.531988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920776, 32.792156, 31.076138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.543995, 32.779499, 30.942434>,  <37.317928, 32.771904, 30.862213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.543995, 32.779499, 30.942434>,  <37.920776, 32.792156, 31.076138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543995, 32.779499, 30.942434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332229, -0.056034, 0.941533,
		-0.048519, 0.997927, 0.042270,
		-0.941950, -0.031639, -0.334259,
		37.261410, 32.770008, 30.842157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513222, 32.988342, 31.679646>,  <37.920776, 32.792156, 31.076138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513222, 32.988342, 31.679646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240219, 32.841125, 31.427063>,  <37.076416, 32.752796, 31.275515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.240219, 32.841125, 31.427063>,  <37.513222, 32.988342, 31.679646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240219, 32.841125, 31.427063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629556, -0.142847, 0.763711,
		-0.371276, 0.918773, -0.134206,
		-0.682506, -0.368038, -0.631454,
		37.035469, 32.730713, 31.237627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828285, 33.290207, 31.847935>,  <37.513222, 32.988342, 31.679646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828285, 33.290207, 31.847935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.740795, 32.952297, 31.652580>,  <36.688301, 32.749554, 31.535368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.740795, 32.952297, 31.652580>,  <36.828285, 33.290207, 31.847935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740795, 32.952297, 31.652580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755337, -0.170287, 0.632826,
		-0.617759, 0.507312, -0.600840,
		-0.218725, -0.844770, -0.488388,
		36.675179, 32.698868, 31.506063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195374, 33.252937, 31.773106>,  <36.828285, 33.290207, 31.847935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195374, 33.252937, 31.773106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.288609, 32.865166, 31.742443>,  <36.344547, 32.632504, 31.724045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.288609, 32.865166, 31.742443>,  <36.195374, 33.252937, 31.773106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288609, 32.865166, 31.742443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704057, -0.222604, 0.674352,
		-0.670801, -0.103210, -0.734420,
		0.233085, -0.969430, -0.076658,
		36.358536, 32.574337, 31.719446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577900, 32.864761, 31.727165>,  <36.195374, 33.252937, 31.773106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577900, 32.864761, 31.727165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.857769, 32.602703, 31.841169>,  <36.025692, 32.445469, 31.909573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.857769, 32.602703, 31.841169>,  <35.577900, 32.864761, 31.727165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857769, 32.602703, 31.841169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627158, -0.372109, 0.684257,
		-0.342230, -0.657512, -0.671236,
		0.699680, -0.655144, 0.285017,
		36.067673, 32.406158, 31.926672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231003, 32.261845, 31.803873>,  <35.577900, 32.864761, 31.727165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231003, 32.261845, 31.803873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.557583, 32.238422, 32.033649>,  <35.753532, 32.224369, 32.171516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.557583, 32.238422, 32.033649>,  <35.231003, 32.261845, 31.803873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557583, 32.238422, 32.033649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566913, -0.270191, 0.778208,
		0.109644, -0.961025, -0.253790,
		0.816449, -0.058550, 0.574442,
		35.802517, 32.220856, 32.205982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156422, 31.621441, 32.252911>,  <35.231003, 32.261845, 31.803873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156422, 31.621441, 32.252911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.454460, 31.804090, 32.447365>,  <35.633282, 31.913681, 32.564037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.454460, 31.804090, 32.447365>,  <35.156422, 31.621441, 32.252911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454460, 31.804090, 32.447365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402961, -0.272607, 0.873675,
		0.531465, -0.846865, -0.019117,
		0.745096, 0.456624, 0.486135,
		35.677990, 31.941078, 32.593204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229618, 31.230186, 32.834568>,  <35.156422, 31.621441, 32.252911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229618, 31.230186, 32.834568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.440514, 31.552906, 32.941219>,  <35.567051, 31.746538, 33.005211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.440514, 31.552906, 32.941219>,  <35.229618, 31.230186, 32.834568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440514, 31.552906, 32.941219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169721, -0.207467, 0.963407,
		0.832593, -0.553200, 0.027546,
		0.527241, 0.806801, 0.266625,
		35.598686, 31.794947, 33.021206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721523, 30.998056, 33.397182>,  <35.229618, 31.230186, 32.834568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721523, 30.998056, 33.397182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674942, 31.395071, 33.411659>,  <35.646992, 31.633280, 33.420345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674942, 31.395071, 33.411659>,  <35.721523, 30.998056, 33.397182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674942, 31.395071, 33.411659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141211, -0.052614, 0.988581,
		0.983106, 0.110016, 0.146284,
		-0.116456, 0.992536, 0.036189,
		35.640007, 31.692831, 33.422516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121193, 31.222948, 33.897652>,  <35.721523, 30.998056, 33.397182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121193, 31.222948, 33.897652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.867340, 31.530674, 33.868256>,  <35.715031, 31.715309, 33.850616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.867340, 31.530674, 33.868256>,  <36.121193, 31.222948, 33.897652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867340, 31.530674, 33.868256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101185, 0.011561, 0.994800,
		0.766165, 0.638764, 0.070506,
		-0.634628, 0.769316, -0.073492,
		35.676952, 31.761469, 33.846207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413128, 31.780535, 34.352394>,  <36.121193, 31.222948, 33.897652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413128, 31.780535, 34.352394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023399, 31.851017, 34.296326>,  <35.789562, 31.893307, 34.262684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023399, 31.851017, 34.296326>,  <36.413128, 31.780535, 34.352394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023399, 31.851017, 34.296326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127502, 0.081333, 0.988498,
		0.185579, 0.980988, -0.056778,
		-0.974322, 0.176205, -0.140171,
		35.731102, 31.903879, 34.254272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856869, 31.848545, 34.967354>,  <36.413128, 31.780535, 34.352394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856869, 31.848545, 34.967354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209732, 31.779083, 35.142460>,  <37.421452, 31.737406, 35.247524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.209732, 31.779083, 35.142460>,  <36.856869, 31.848545, 34.967354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209732, 31.779083, 35.142460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456214, 0.084388, -0.885860,
		0.116893, 0.981184, 0.153668,
		0.882159, -0.173656, 0.437765,
		37.474380, 31.726986, 35.273788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227882, 32.362434, 34.760464>,  <36.856869, 31.848545, 34.967354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227882, 32.362434, 34.760464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.484680, 32.073975, 34.864597>,  <37.638760, 31.900898, 34.927078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.484680, 32.073975, 34.864597>,  <37.227882, 32.362434, 34.760464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484680, 32.073975, 34.864597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480473, 0.113812, -0.869593,
		0.597480, 0.683363, 0.419562,
		0.641999, -0.721153, 0.260337,
		37.677280, 31.857628, 34.942699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789379, 32.595493, 34.262993>,  <37.227882, 32.362434, 34.760464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789379, 32.595493, 34.262993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906200, 32.241093, 34.407047>,  <37.976292, 32.028450, 34.493481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.906200, 32.241093, 34.407047>,  <37.789379, 32.595493, 34.262993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906200, 32.241093, 34.407047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688133, -0.066848, -0.722499,
		0.664212, 0.458832, 0.590166,
		0.292054, -0.886005, 0.360138,
		37.993816, 31.975290, 34.515087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529652, 32.658272, 34.277493>,  <37.789379, 32.595493, 34.262993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529652, 32.658272, 34.277493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385929, 32.285198, 34.264874>,  <38.299694, 32.061356, 34.257301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.385929, 32.285198, 34.264874>,  <38.529652, 32.658272, 34.277493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385929, 32.285198, 34.264874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669077, -0.233894, -0.705428,
		0.650563, -0.274577, 0.708079,
		-0.359310, -0.932685, -0.031550,
		38.278137, 32.005394, 34.255409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197563, 32.170948, 34.329853>,  <38.529652, 32.658272, 34.277493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197563, 32.170948, 34.329853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.892921, 31.983107, 34.151222>,  <38.710136, 31.870401, 34.044044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.892921, 31.983107, 34.151222>,  <39.197563, 32.170948, 34.329853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892921, 31.983107, 34.151222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588870, -0.213826, -0.779430,
		0.270533, -0.856593, 0.439386,
		-0.761606, -0.469603, -0.446575,
		38.664440, 31.842226, 34.017250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498650, 31.531981, 33.933567>,  <39.197563, 32.170948, 34.329853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498650, 31.531981, 33.933567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128799, 31.529676, 33.781231>,  <38.906891, 31.528294, 33.689831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128799, 31.529676, 33.781231>,  <39.498650, 31.531981, 33.933567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128799, 31.529676, 33.781231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379536, -0.097935, -0.919979,
		-0.031996, -0.995176, 0.092740,
		-0.924624, -0.005763, -0.380839,
		38.851414, 31.527948, 33.666981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313858, 30.862112, 33.446659>,  <39.498650, 31.531981, 33.933567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313858, 30.862112, 33.446659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.103661, 31.187340, 33.346439>,  <38.977543, 31.382477, 33.286308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.103661, 31.187340, 33.346439>,  <39.313858, 30.862112, 33.446659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103661, 31.187340, 33.346439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397543, -0.025708, -0.917224,
		-0.752208, -0.581598, -0.309721,
		-0.525493, 0.813070, -0.250548,
		38.946014, 31.431261, 33.271275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225979, 30.748318, 32.700104>,  <39.313858, 30.862112, 33.446659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225979, 30.748318, 32.700104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.152256, 31.134575, 32.773380>,  <39.108021, 31.366329, 32.817348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.152256, 31.134575, 32.773380>,  <39.225979, 30.748318, 32.700104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152256, 31.134575, 32.773380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355370, 0.239250, -0.903588,
		-0.916374, -0.101439, -0.387257,
		-0.184310, 0.965645, 0.183194,
		39.096962, 31.424269, 32.828339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035931, 31.070374, 32.063519>,  <39.225979, 30.748318, 32.700104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035931, 31.070374, 32.063519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134094, 31.398716, 32.269810>,  <39.192993, 31.595720, 32.393585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.134094, 31.398716, 32.269810>,  <39.035931, 31.070374, 32.063519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134094, 31.398716, 32.269810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307215, 0.438718, -0.844479,
		-0.919452, 0.365683, -0.144512,
		0.245412, 0.820854, 0.515724,
		39.207718, 31.644972, 32.424526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778496, 31.657131, 31.639532>,  <39.035931, 31.070374, 32.063519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778496, 31.657131, 31.639532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.049091, 31.826103, 31.880833>,  <39.211449, 31.927486, 32.025612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.049091, 31.826103, 31.880833>,  <38.778496, 31.657131, 31.639532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049091, 31.826103, 31.880833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195148, 0.687028, -0.699935,
		-0.710127, 0.591222, 0.382331,
		0.676489, 0.422432, 0.603253,
		39.252037, 31.952833, 32.061810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779648, 32.481087, 31.503363>,  <38.778496, 31.657131, 31.639532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779648, 32.481087, 31.503363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132278, 32.346447, 31.635738>,  <39.343857, 32.265663, 31.715164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.132278, 32.346447, 31.635738>,  <38.779648, 32.481087, 31.503363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132278, 32.346447, 31.635738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459691, 0.452878, -0.763928,
		0.107265, 0.825591, 0.553980,
		0.881577, -0.336602, 0.330939,
		39.396751, 32.245468, 31.735020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216385, 33.100311, 31.448587>,  <38.779648, 32.481087, 31.503363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216385, 33.100311, 31.448587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.467476, 32.791496, 31.488403>,  <39.618130, 32.606209, 31.512293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.467476, 32.791496, 31.488403>,  <39.216385, 33.100311, 31.448587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467476, 32.791496, 31.488403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510494, 0.311752, -0.801378,
		0.587663, 0.553865, 0.589818,
		0.627732, -0.772039, 0.099540,
		39.655796, 32.559883, 31.518265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878696, 33.377628, 31.629953>,  <39.216385, 33.100311, 31.448587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878696, 33.377628, 31.629953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.905533, 33.026894, 31.439516>,  <39.921635, 32.816452, 31.325254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.905533, 33.026894, 31.439516>,  <39.878696, 33.377628, 31.629953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905533, 33.026894, 31.439516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444131, 0.453530, -0.772695,
		0.893446, -0.159608, 0.419856,
		0.067089, -0.876833, -0.476092,
		39.925659, 32.763844, 31.296688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638271, 33.287354, 31.395870>,  <39.878696, 33.377628, 31.629953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638271, 33.287354, 31.395870> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.397446, 33.054577, 31.177197>,  <40.252949, 32.914909, 31.045992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.397446, 33.054577, 31.177197>,  <40.638271, 33.287354, 31.395870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397446, 33.054577, 31.177197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479745, 0.283653, -0.830292,
		0.638250, -0.762158, 0.108407,
		-0.602064, -0.581942, -0.546683,
		40.216827, 32.879993, 31.013191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034241, 32.916752, 30.893578>,  <40.638271, 33.287354, 31.395870>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034241, 32.916752, 30.893578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.675293, 32.877087, 30.721577>,  <40.459927, 32.853287, 30.618376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.675293, 32.877087, 30.721577>,  <41.034241, 32.916752, 30.893578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675293, 32.877087, 30.721577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427610, 0.045311, -0.902827,
		0.109014, -0.994039, 0.001743,
		-0.897366, -0.099166, -0.430000,
		40.406082, 32.847336, 30.592577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043503, 32.440449, 30.356668>,  <41.034241, 32.916752, 30.893578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043503, 32.440449, 30.356668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.731155, 32.676960, 30.276033>,  <40.543747, 32.818867, 30.227652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.731155, 32.676960, 30.276033>,  <41.043503, 32.440449, 30.356668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731155, 32.676960, 30.276033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338868, 0.129825, -0.931834,
		-0.524804, -0.795948, -0.301742,
		-0.780865, 0.591280, -0.201589,
		40.496895, 32.854343, 30.215557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939331, 32.231216, 29.730640>,  <41.043503, 32.440449, 30.356668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939331, 32.231216, 29.730640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758446, 32.586445, 29.763700>,  <40.649914, 32.799583, 29.783537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758446, 32.586445, 29.763700>,  <40.939331, 32.231216, 29.730640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758446, 32.586445, 29.763700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357781, 0.265502, -0.895266,
		-0.817005, -0.375280, -0.437799,
		-0.452211, 0.888073, 0.082649,
		40.622784, 32.852867, 29.788494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687817, 32.319450, 29.084839>,  <40.939331, 32.231216, 29.730640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687817, 32.319450, 29.084839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.680862, 32.687973, 29.240213>,  <40.676689, 32.909088, 29.333439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.680862, 32.687973, 29.240213>,  <40.687817, 32.319450, 29.084839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680862, 32.687973, 29.240213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401015, 0.362305, -0.841381,
		-0.915907, 0.141143, -0.375757,
		-0.017384, 0.921311, 0.388438,
		40.675648, 32.964367, 29.356745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.408588, 32.756832, 28.534170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.586441, 33.013744, 28.783897>,  <40.693153, 33.167892, 28.933735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.586441, 33.013744, 28.783897>,  <40.408588, 32.756832, 28.534170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586441, 33.013744, 28.783897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221686, 0.596414, -0.771457,
		-0.867847, 0.481416, 0.122799,
		0.444631, 0.642284, 0.624320,
		40.719830, 33.206429, 28.971193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162483, 33.366188, 28.358988>,  <40.408588, 32.756832, 28.534170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162483, 33.366188, 28.358988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.489952, 33.471642, 28.563057>,  <40.686432, 33.534912, 28.685497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.489952, 33.471642, 28.563057>,  <40.162483, 33.366188, 28.358988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489952, 33.471642, 28.563057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229806, 0.663757, -0.711769,
		-0.526277, 0.699946, 0.482814,
		0.818671, 0.263634, 0.510172,
		40.735554, 33.550732, 28.716108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163010, 34.080746, 28.329319>,  <40.162483, 33.366188, 28.358988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163010, 34.080746, 28.329319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535255, 33.962200, 28.415226>,  <40.758602, 33.891071, 28.466770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.535255, 33.962200, 28.415226>,  <40.163010, 34.080746, 28.329319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535255, 33.962200, 28.415226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360734, 0.643486, -0.675127,
		0.061884, 0.705756, 0.705747,
		0.930614, -0.296366, 0.214768,
		40.814438, 33.873291, 28.479656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547226, 34.712898, 28.170160>,  <40.163010, 34.080746, 28.329319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547226, 34.712898, 28.170160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.799316, 34.402679, 28.155512>,  <40.950569, 34.216549, 28.146723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.799316, 34.402679, 28.155512>,  <40.547226, 34.712898, 28.170160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799316, 34.402679, 28.155512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398381, 0.363492, -0.842120,
		0.666417, 0.516135, 0.538046,
		0.630223, -0.775550, -0.036619,
		40.988384, 34.170013, 28.144526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128994, 35.004375, 27.894936>,  <40.547226, 34.712898, 28.170160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128994, 35.004375, 27.894936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.190357, 34.614590, 27.829359>,  <41.227177, 34.380718, 27.790012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.190357, 34.614590, 27.829359>,  <41.128994, 35.004375, 27.894936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190357, 34.614590, 27.829359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489965, 0.219087, -0.843762,
		0.858137, 0.049115, 0.511065,
		0.153409, -0.974468, -0.163942,
		41.236382, 34.322250, 27.780176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.899803, 34.965736, 27.752930>,  <41.128994, 35.004375, 27.894936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.899803, 34.965736, 27.752930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.762684, 34.612930, 27.623596>,  <41.680412, 34.401245, 27.545996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.762684, 34.612930, 27.623596>,  <41.899803, 34.965736, 27.752930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762684, 34.612930, 27.623596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668980, 0.012437, -0.743176,
		0.659513, -0.471059, 0.585786,
		-0.342794, -0.882014, -0.323332,
		41.659847, 34.348328, 27.526596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437233, 34.553715, 27.479374>,  <41.899803, 34.965736, 27.752930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437233, 34.553715, 27.479374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.124863, 34.364758, 27.315916>,  <41.937439, 34.251381, 27.217842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.124863, 34.364758, 27.315916>,  <42.437233, 34.553715, 27.479374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.124863, 34.364758, 27.315916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501035, -0.083101, -0.861428,
		0.372977, -0.877459, 0.301584,
		-0.780930, -0.472397, -0.408643,
		41.890583, 34.223038, 27.193323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659225, 33.961189, 27.198002>,  <42.437233, 34.553715, 27.479374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659225, 33.961189, 27.198002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.320324, 34.042625, 27.001755>,  <42.116982, 34.091488, 26.884007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.320324, 34.042625, 27.001755>,  <42.659225, 33.961189, 27.198002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320324, 34.042625, 27.001755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488327, -0.064920, -0.870243,
		-0.209028, -0.976900, -0.044417,
		-0.847257, 0.203595, -0.490617,
		42.066147, 34.103703, 26.854570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674015, 33.462856, 26.529568>,  <42.659225, 33.961189, 27.198002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674015, 33.462856, 26.529568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.394180, 33.729649, 26.427032>,  <42.226280, 33.889725, 26.365511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.394180, 33.729649, 26.427032>,  <42.674015, 33.462856, 26.529568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394180, 33.729649, 26.427032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426280, 0.101663, -0.898860,
		-0.573466, -0.738103, -0.355445,
		-0.699587, 0.666985, -0.256338,
		42.184303, 33.929745, 26.350130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396725, 33.336689, 25.756252>,  <42.674015, 33.462856, 26.529568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396725, 33.336689, 25.756252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.321991, 33.717773, 25.852114>,  <42.277149, 33.946423, 25.909632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.321991, 33.717773, 25.852114>,  <42.396725, 33.336689, 25.756252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.321991, 33.717773, 25.852114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274928, 0.284911, -0.918281,
		-0.943137, -0.105680, -0.315158,
		-0.186836, 0.952711, 0.239656,
		42.265942, 34.003586, 25.924011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997540, 33.643490, 25.120117>,  <42.396725, 33.336689, 25.756252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997540, 33.643490, 25.120117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.168278, 33.942379, 25.323866>,  <42.270721, 34.121712, 25.446115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.168278, 33.942379, 25.323866>,  <41.997540, 33.643490, 25.120117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168278, 33.942379, 25.323866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325818, 0.398361, -0.857409,
		-0.843590, 0.531946, -0.073419,
		0.426848, 0.747223, 0.509371,
		42.296333, 34.166546, 25.476677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970387, 34.093204, 24.706617>,  <41.997540, 33.643490, 25.120117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970387, 34.093204, 24.706617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.230335, 34.267403, 24.955780>,  <42.386303, 34.371922, 25.105278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.230335, 34.267403, 24.955780>,  <41.970387, 34.093204, 24.706617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230335, 34.267403, 24.955780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288800, 0.616604, -0.732390,
		-0.703039, 0.655853, 0.274941,
		0.649870, 0.435496, 0.622907,
		42.425297, 34.398052, 25.142653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931007, 34.895489, 24.644901>,  <41.970387, 34.093204, 24.706617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931007, 34.895489, 24.644901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.285450, 34.839733, 24.821711>,  <42.498116, 34.806278, 24.927795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.285450, 34.839733, 24.821711>,  <41.931007, 34.895489, 24.644901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285450, 34.839733, 24.821711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373508, 0.779437, -0.502962,
		-0.274418, 0.610776, 0.742729,
		0.886108, -0.139394, 0.442021,
		42.551281, 34.797916, 24.954317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253105, 35.472317, 24.582991>,  <41.931007, 34.895489, 24.644901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253105, 35.472317, 24.582991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.571945, 35.245949, 24.667240>,  <42.763248, 35.110126, 24.717789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.571945, 35.245949, 24.667240>,  <42.253105, 35.472317, 24.582991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.571945, 35.245949, 24.667240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536304, 0.503196, -0.677622,
		0.277495, 0.653093, 0.704604,
		0.797104, -0.565919, 0.210622,
		42.811077, 35.076172, 24.730427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794186, 35.900757, 24.706591>,  <42.253105, 35.472317, 24.582991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794186, 35.900757, 24.706591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.978569, 35.568233, 24.582375>,  <43.089199, 35.368717, 24.507845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.978569, 35.568233, 24.582375>,  <42.794186, 35.900757, 24.706591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978569, 35.568233, 24.582375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557041, 0.543464, -0.627975,
		0.690810, 0.116488, 0.713591,
		0.460962, -0.831311, -0.310542,
		43.116859, 35.318840, 24.489212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606754, 36.006493, 24.699900>,  <42.794186, 35.900757, 24.706591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606754, 36.006493, 24.699900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.561436, 35.697227, 24.450298>,  <43.534245, 35.511669, 24.300537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.561436, 35.697227, 24.450298>,  <43.606754, 36.006493, 24.699900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.561436, 35.697227, 24.450298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671308, 0.403436, -0.621760,
		0.732468, -0.489341, 0.473324,
		-0.113297, -0.773165, -0.624003,
		43.527447, 35.465279, 24.263098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286797, 35.887234, 24.354879>,  <43.606754, 36.006493, 24.699900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286797, 35.887234, 24.354879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.023064, 35.718224, 24.106121>,  <43.864826, 35.616817, 23.956865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.023064, 35.718224, 24.106121>,  <44.286797, 35.887234, 24.354879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023064, 35.718224, 24.106121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502495, 0.367641, -0.782520,
		0.559272, -0.828439, -0.030078,
		-0.659328, -0.422527, -0.621898,
		43.825264, 35.591465, 23.919552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728374, 35.583256, 23.843580>,  <44.286797, 35.887234, 24.354879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728374, 35.583256, 23.843580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.376499, 35.556969, 23.655186>,  <44.165375, 35.541195, 23.542149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.376499, 35.556969, 23.655186>,  <44.728374, 35.583256, 23.843580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376499, 35.556969, 23.655186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430111, 0.312539, -0.846950,
		0.202861, -0.947629, -0.246672,
		-0.879689, -0.065716, -0.470988,
		44.112595, 35.537254, 23.513889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889080, 35.336002, 23.190983>,  <44.728374, 35.583256, 23.843580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889080, 35.336002, 23.190983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.527126, 35.489742, 23.117809>,  <44.309956, 35.581985, 23.073906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.527126, 35.489742, 23.117809>,  <44.889080, 35.336002, 23.190983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.527126, 35.489742, 23.117809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315819, 0.318076, -0.893916,
		-0.285391, -0.866662, -0.409206,
		-0.904882, 0.384350, -0.182932,
		44.255661, 35.605049, 23.062929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636951, 35.146732, 22.494083>,  <44.889080, 35.336002, 23.190983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636951, 35.146732, 22.494083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.437180, 35.476952, 22.599194>,  <44.317318, 35.675083, 22.662260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.437180, 35.476952, 22.599194>,  <44.636951, 35.146732, 22.494083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.437180, 35.476952, 22.599194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162749, 0.387310, -0.907471,
		-0.850933, -0.410448, -0.327789,
		-0.499426, 0.825544, 0.262775,
		44.287354, 35.724613, 22.678026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429535, 35.347687, 21.858500>,  <44.636951, 35.146732, 22.494083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429535, 35.347687, 21.858500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.402542, 35.665104, 22.100405>,  <44.386345, 35.855553, 22.245548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.402542, 35.665104, 22.100405>,  <44.429535, 35.347687, 21.858500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.402542, 35.665104, 22.100405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145103, 0.607508, -0.780948,
		-0.987113, 0.035054, -0.156141,
		-0.067482, 0.793540, 0.604765,
		44.382298, 35.903168, 22.281834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946239, 35.797100, 21.524080>,  <44.429535, 35.347687, 21.858500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946239, 35.797100, 21.524080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.150024, 36.049110, 21.758524>,  <44.272293, 36.200317, 21.899189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.150024, 36.049110, 21.758524>,  <43.946239, 35.797100, 21.524080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150024, 36.049110, 21.758524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183721, 0.585783, -0.789370,
		-0.840654, 0.509831, 0.182683,
		0.509458, 0.630024, 0.586108,
		44.302860, 36.238117, 21.934357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805779, 36.520596, 21.293772>,  <43.946239, 35.797100, 21.524080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805779, 36.520596, 21.293772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.140743, 36.561684, 21.508507>,  <44.341721, 36.586338, 21.637348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.140743, 36.561684, 21.508507>,  <43.805779, 36.520596, 21.293772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.140743, 36.561684, 21.508507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302355, 0.731155, -0.611550,
		-0.455331, 0.674433, 0.581218,
		0.837410, 0.102724, 0.536835,
		44.391968, 36.592503, 21.669558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821033, 37.209232, 21.593382>,  <43.805779, 36.520596, 21.293772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821033, 37.209232, 21.593382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.169983, 37.028168, 21.519558>,  <44.379353, 36.919529, 21.475264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.169983, 37.028168, 21.519558>,  <43.821033, 37.209232, 21.593382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169983, 37.028168, 21.519558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203512, 0.679569, -0.704818,
		0.444466, 0.577304, 0.684960,
		0.872372, -0.452665, -0.184558,
		44.431694, 36.892368, 21.464191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303432, 37.398350, 21.015699>,  <43.821033, 37.209232, 21.593382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303432, 37.398350, 21.015699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.035866, 37.294773, 20.736988>,  <42.875324, 37.232628, 20.569761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.035866, 37.294773, 20.736988>,  <43.303432, 37.398350, 21.015699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035866, 37.294773, 20.736988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579704, -0.405018, 0.707039,
		-0.465287, 0.876876, 0.120816,
		-0.668918, -0.258938, -0.696778,
		42.835190, 37.217091, 20.527954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656704, 37.674343, 21.280703>,  <43.303432, 37.398350, 21.015699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656704, 37.674343, 21.280703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.581402, 37.392593, 21.006941>,  <42.536221, 37.223541, 20.842684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.581402, 37.392593, 21.006941>,  <42.656704, 37.674343, 21.280703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581402, 37.392593, 21.006941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629552, -0.448320, 0.634566,
		-0.753808, 0.550328, -0.359045,
		-0.188252, -0.704378, -0.684406,
		42.524925, 37.181278, 20.801619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893013, 37.750046, 21.200272>,  <42.656704, 37.674343, 21.280703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893013, 37.750046, 21.200272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.051041, 37.395634, 21.103220>,  <42.145859, 37.182987, 21.044989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.051041, 37.395634, 21.103220>,  <41.893013, 37.750046, 21.200272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051041, 37.395634, 21.103220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559359, -0.441525, 0.701551,
		-0.728723, -0.141444, -0.670042,
		0.395071, -0.886030, -0.242632,
		42.169563, 37.129826, 21.030430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313381, 37.366283, 21.293392>,  <41.893013, 37.750046, 21.200272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313381, 37.366283, 21.293392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.610897, 37.099079, 21.284145>,  <41.789406, 36.938755, 21.278597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.610897, 37.099079, 21.284145>,  <41.313381, 37.366283, 21.293392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610897, 37.099079, 21.284145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441448, -0.516911, 0.733435,
		-0.501880, -0.535329, -0.679367,
		0.743801, -0.668001, -0.023108,
		41.834034, 36.898678, 21.277210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922874, 36.764633, 21.254599>,  <41.313381, 37.366283, 21.293392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922874, 36.764633, 21.254599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.288685, 36.681339, 21.393328>,  <41.508171, 36.631363, 21.476566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.288685, 36.681339, 21.393328>,  <40.922874, 36.764633, 21.254599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288685, 36.681339, 21.393328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388684, -0.689955, 0.610644,
		0.112136, -0.693253, -0.711917,
		0.914522, -0.208236, 0.346825,
		41.563042, 36.618870, 21.497375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991188, 36.029350, 21.204155>,  <40.922874, 36.764633, 21.254599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991188, 36.029350, 21.204155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.270000, 36.138462, 21.469406>,  <41.437286, 36.203930, 21.628557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.270000, 36.138462, 21.469406>,  <40.991188, 36.029350, 21.204155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270000, 36.138462, 21.469406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351035, -0.676596, 0.647296,
		0.625238, -0.683967, -0.375854,
		0.697030, 0.272776, 0.663130,
		41.479111, 36.220295, 21.668344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090904, 35.450871, 21.509762>,  <40.991188, 36.029350, 21.204155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090904, 35.450871, 21.509762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.233135, 35.721928, 21.767244>,  <41.318474, 35.884563, 21.921734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.233135, 35.721928, 21.767244>,  <41.090904, 35.450871, 21.509762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233135, 35.721928, 21.767244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381157, -0.523707, 0.761873,
		0.853394, -0.516261, 0.072070,
		0.355582, 0.677648, 0.643704,
		41.339809, 35.925220, 21.960356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439835, 35.060421, 21.994492>,  <41.090904, 35.450871, 21.509762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439835, 35.060421, 21.994492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.356342, 35.417881, 22.153399>,  <41.306248, 35.632355, 22.248743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.356342, 35.417881, 22.153399>,  <41.439835, 35.060421, 21.994492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356342, 35.417881, 22.153399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397843, -0.448678, 0.800255,
		0.893393, 0.008990, 0.449187,
		-0.208734, 0.893648, 0.397269,
		41.293720, 35.685974, 22.272579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596054, 34.994179, 22.694590>,  <41.439835, 35.060421, 21.994492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596054, 34.994179, 22.694590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.376537, 35.328369, 22.705957>,  <41.244827, 35.528881, 22.712778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.376537, 35.328369, 22.705957>,  <41.596054, 34.994179, 22.694590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376537, 35.328369, 22.705957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404159, -0.294931, 0.865835,
		0.731765, 0.463680, 0.499521,
		-0.548794, 0.835474, 0.028420,
		41.211899, 35.579010, 22.714483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750610, 35.238827, 23.305670>,  <41.596054, 34.994179, 22.694590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750610, 35.238827, 23.305670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.399994, 35.412254, 23.222059>,  <41.189625, 35.516312, 23.171892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.399994, 35.412254, 23.222059>,  <41.750610, 35.238827, 23.305670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399994, 35.412254, 23.222059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367551, -0.322547, 0.872278,
		0.310768, 0.841418, 0.442084,
		-0.876544, 0.433565, -0.209027,
		41.137032, 35.542324, 23.159351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572163, 35.673214, 23.890202>,  <41.750610, 35.238827, 23.305670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572163, 35.673214, 23.890202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.218212, 35.579208, 23.729324>,  <41.005840, 35.522804, 23.632797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.218212, 35.579208, 23.729324>,  <41.572163, 35.673214, 23.890202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218212, 35.579208, 23.729324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359400, -0.204848, 0.910422,
		-0.296349, 0.950161, 0.096803,
		-0.884878, -0.235012, -0.402195,
		40.952747, 35.508705, 23.608665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172840, 35.929482, 24.354988>,  <41.572163, 35.673214, 23.890202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172840, 35.929482, 24.354988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.923443, 35.692181, 24.151300>,  <40.773804, 35.549801, 24.029087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.923443, 35.692181, 24.151300>,  <41.172840, 35.929482, 24.354988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923443, 35.692181, 24.151300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366539, -0.353500, 0.860632,
		-0.690583, 0.723247, 0.002954,
		-0.623493, -0.593255, -0.509219,
		40.736393, 35.514202, 23.998535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781406, 35.837669, 24.884052>,  <41.172840, 35.929482, 24.354988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781406, 35.837669, 24.884052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.641579, 35.558109, 24.634464>,  <40.557682, 35.390373, 24.484713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.641579, 35.558109, 24.634464>,  <40.781406, 35.837669, 24.884052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641579, 35.558109, 24.634464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572064, -0.368207, 0.732917,
		-0.741986, 0.613157, -0.271102,
		-0.349571, -0.698901, -0.623969,
		40.536709, 35.348438, 24.447273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992088, 35.811432, 24.750868>,  <40.781406, 35.837669, 24.884052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992088, 35.811432, 24.750868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.113831, 35.442657, 24.655031>,  <40.186874, 35.221394, 24.597528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.113831, 35.442657, 24.655031>,  <39.992088, 35.811432, 24.750868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113831, 35.442657, 24.655031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696585, -0.386970, 0.604171,
		-0.649722, -0.016985, -0.759982,
		0.304352, -0.921936, -0.239591,
		40.205135, 35.166077, 24.583155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342167, 35.406364, 24.659122>,  <39.992088, 35.811432, 24.750868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342167, 35.406364, 24.659122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649822, 35.156700, 24.714037>,  <39.834415, 35.006901, 24.746984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649822, 35.156700, 24.714037>,  <39.342167, 35.406364, 24.659122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649822, 35.156700, 24.714037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580803, -0.593062, 0.557625,
		-0.266630, -0.508627, -0.818662,
		0.769140, -0.624160, 0.137284,
		39.880566, 34.969452, 24.755222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999207, 34.967873, 24.935059>,  <39.342167, 35.406364, 24.659122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999207, 34.967873, 24.935059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.357468, 34.815273, 25.026505>,  <39.572422, 34.723713, 25.081371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.357468, 34.815273, 25.026505>,  <38.999207, 34.967873, 24.935059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357468, 34.815273, 25.026505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417597, -0.544474, 0.727434,
		-0.153042, -0.746996, -0.646973,
		0.895651, -0.381502, 0.228616,
		39.626163, 34.700821, 25.095089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806801, 34.279755, 24.980270>,  <38.999207, 34.967873, 24.935059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806801, 34.279755, 24.980270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.123611, 34.374748, 25.205231>,  <39.313698, 34.431744, 25.340208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.123611, 34.374748, 25.205231>,  <38.806801, 34.279755, 24.980270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123611, 34.374748, 25.205231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399581, -0.494825, 0.771676,
		0.461553, -0.835912, -0.297019,
		0.792025, 0.237486, 0.562402,
		39.361217, 34.445995, 25.373951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228752, 33.702877, 25.149155>,  <38.806801, 34.279755, 24.980270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228752, 33.702877, 25.149155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.306759, 33.969349, 25.437092>,  <39.353561, 34.129230, 25.609854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.306759, 33.969349, 25.437092>,  <39.228752, 33.702877, 25.149155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306759, 33.969349, 25.437092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219333, -0.685728, 0.694024,
		0.955961, -0.293233, 0.012386,
		0.195018, 0.666177, 0.719845,
		39.365265, 34.169201, 25.653046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277447, 33.295311, 25.798632>,  <39.228752, 33.702877, 25.149155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277447, 33.295311, 25.798632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.254547, 33.666557, 25.945776>,  <39.240807, 33.889305, 26.034063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.254547, 33.666557, 25.945776>,  <39.277447, 33.295311, 25.798632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254547, 33.666557, 25.945776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193301, -0.371799, 0.907965,
		0.979468, -0.019129, 0.200691,
		-0.057249, 0.928116, 0.367862,
		39.237373, 33.944992, 26.056135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623165, 33.260921, 26.453854>,  <39.277447, 33.295311, 25.798632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623165, 33.260921, 26.453854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.381359, 33.579487, 26.447121>,  <39.236275, 33.770626, 26.443081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.381359, 33.579487, 26.447121>,  <39.623165, 33.260921, 26.453854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381359, 33.579487, 26.447121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282297, -0.194421, 0.939420,
		0.744895, 0.572646, 0.342356,
		-0.604517, 0.796415, -0.016833,
		39.200005, 33.818413, 26.442070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.519600, 31.630787, 31.500074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.279758, 31.946947, 31.550270>,  <40.135853, 32.136642, 31.580387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.279758, 31.946947, 31.550270>,  <40.519600, 31.630787, 31.500074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279758, 31.946947, 31.550270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417985, -0.443006, 0.793117,
		0.682470, 0.423103, 0.596002,
		-0.599603, 0.790398, 0.125488,
		40.099876, 32.184067, 31.587917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628582, 31.980690, 32.170551>,  <40.519600, 31.630787, 31.500074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628582, 31.980690, 32.170551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.250336, 32.058392, 32.066189>,  <40.023388, 32.105011, 32.003571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.250336, 32.058392, 32.066189>,  <40.628582, 31.980690, 32.170551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250336, 32.058392, 32.066189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309971, -0.294962, 0.903834,
		0.098615, 0.935555, 0.339134,
		-0.945618, 0.194254, -0.260908,
		39.966652, 32.116669, 31.987917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289330, 32.418018, 32.763672>,  <40.628582, 31.980690, 32.170551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289330, 32.418018, 32.763672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.986267, 32.268284, 32.549820>,  <39.804428, 32.178444, 32.421509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.986267, 32.268284, 32.549820>,  <40.289330, 32.418018, 32.763672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986267, 32.268284, 32.549820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513168, -0.164446, 0.842387,
		-0.403254, 0.912595, -0.067503,
		-0.757658, -0.374337, -0.534628,
		39.758968, 32.155983, 32.389431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652840, 32.664619, 33.058407>,  <40.289330, 32.418018, 32.763672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652840, 32.664619, 33.058407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.521069, 32.340988, 32.863731>,  <39.442005, 32.146809, 32.746925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.521069, 32.340988, 32.863731>,  <39.652840, 32.664619, 33.058407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521069, 32.340988, 32.863731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485101, -0.297193, 0.822407,
		-0.810032, 0.507021, -0.294580,
		-0.329431, -0.809077, -0.486693,
		39.422241, 32.098267, 32.717724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899773, 32.714531, 33.052433>,  <39.652840, 32.664619, 33.058407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899773, 32.714531, 33.052433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946026, 32.324890, 32.974705>,  <38.973778, 32.091106, 32.928066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946026, 32.324890, 32.974705>,  <38.899773, 32.714531, 33.052433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946026, 32.324890, 32.974705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730931, -0.215914, 0.647396,
		-0.672584, 0.067176, -0.736965,
		0.115631, -0.974099, -0.194321,
		38.980717, 32.032661, 32.916409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206783, 32.399426, 32.963821>,  <38.899773, 32.714531, 33.052433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206783, 32.399426, 32.963821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.430664, 32.079582, 33.050869>,  <38.564991, 31.887676, 33.103096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.430664, 32.079582, 33.050869>,  <38.206783, 32.399426, 32.963821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.430664, 32.079582, 33.050869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658557, -0.269779, 0.702511,
		-0.503027, -0.536509, -0.677585,
		0.559701, -0.799611, 0.217615,
		38.598576, 31.839699, 33.116154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708511, 31.840067, 33.134369>,  <38.206783, 32.399426, 32.963821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708511, 31.840067, 33.134369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.061604, 31.747915, 33.298180>,  <38.273460, 31.692625, 33.396465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.061604, 31.747915, 33.298180>,  <37.708511, 31.840067, 33.134369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061604, 31.747915, 33.298180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458922, -0.235602, 0.856670,
		-0.100872, -0.944150, -0.313698,
		0.882732, -0.230377, 0.409525,
		38.326424, 31.678802, 33.421036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595093, 31.261034, 33.539265>,  <37.708511, 31.840067, 33.134369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595093, 31.261034, 33.539265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.919529, 31.448038, 33.679871>,  <38.114189, 31.560242, 33.764233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.919529, 31.448038, 33.679871>,  <37.595093, 31.261034, 33.539265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919529, 31.448038, 33.679871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377824, -0.040012, 0.925012,
		0.446519, -0.883081, 0.144184,
		0.811091, 0.467512, 0.351516,
		38.162857, 31.588291, 33.785324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844429, 30.816732, 34.076141>,  <37.595093, 31.261034, 33.539265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844429, 30.816732, 34.076141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.969803, 31.189688, 34.148155>,  <38.045029, 31.413460, 34.191364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.969803, 31.189688, 34.148155>,  <37.844429, 30.816732, 34.076141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969803, 31.189688, 34.148155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219228, -0.113418, 0.969059,
		0.923957, -0.343208, 0.168856,
		0.313438, 0.932387, 0.180034,
		38.063835, 31.469404, 34.202164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347980, 30.802778, 34.648041>,  <37.844429, 30.816732, 34.076141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347980, 30.802778, 34.648041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.209267, 31.176908, 34.620026>,  <38.126038, 31.401386, 34.603218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.209267, 31.176908, 34.620026>,  <38.347980, 30.802778, 34.648041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209267, 31.176908, 34.620026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249478, -0.020003, 0.968174,
		0.904156, 0.353224, 0.240280,
		-0.346788, 0.935325, -0.070035,
		38.105228, 31.457506, 34.599014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620907, 30.999731, 35.210381>,  <38.347980, 30.802778, 34.648041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620907, 30.999731, 35.210381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.329590, 31.266691, 35.148201>,  <38.154800, 31.426867, 35.110893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.329590, 31.266691, 35.148201>,  <38.620907, 30.999731, 35.210381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329590, 31.266691, 35.148201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123811, 0.094951, 0.987752,
		0.673986, 0.738621, 0.013479,
		-0.728295, 0.667400, -0.155445,
		38.111103, 31.466911, 35.101566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708302, 31.554474, 35.680840>,  <38.620907, 30.999731, 35.210381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708302, 31.554474, 35.680840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.322876, 31.593746, 35.581322>,  <38.091621, 31.617310, 35.521610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.322876, 31.593746, 35.581322>,  <38.708302, 31.554474, 35.680840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322876, 31.593746, 35.581322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244683, 0.052112, 0.968202,
		0.108022, 0.993803, -0.026191,
		-0.963567, 0.098179, -0.248796,
		38.033806, 31.623199, 35.506683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426491, 32.146767, 36.083961>,  <38.708302, 31.554474, 35.680840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426491, 32.146767, 36.083961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.142082, 31.886250, 35.977924>,  <37.971439, 31.729939, 35.914303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.142082, 31.886250, 35.977924>,  <38.426491, 32.146767, 36.083961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142082, 31.886250, 35.977924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264141, -0.102000, 0.959075,
		-0.651678, 0.751940, -0.099510,
		-0.711017, -0.651293, -0.265089,
		37.928776, 31.690861, 35.898399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179634, 32.744419, 35.811768>,  <38.426491, 32.146767, 36.083961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179634, 32.744419, 35.811768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.857811, 32.534081, 35.701363>,  <37.664719, 32.407879, 35.635120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.857811, 32.534081, 35.701363>,  <38.179634, 32.744419, 35.811768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857811, 32.534081, 35.701363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232488, -0.706542, 0.668392,
		-0.546483, 0.473588, 0.690704,
		-0.804553, -0.525845, -0.276010,
		37.616444, 32.376328, 35.618561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802624, 33.076115, 35.568920>,  <38.179634, 32.744419, 35.811768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802624, 33.076115, 35.568920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.937778, 33.343857, 35.833584>,  <39.018871, 33.504501, 35.992382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.937778, 33.343857, 35.833584>,  <38.802624, 33.076115, 35.568920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937778, 33.343857, 35.833584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064118, 0.717745, -0.693348,
		-0.939002, 0.191846, 0.285432,
		0.337883, 0.669356, 0.661663,
		39.039143, 33.544662, 36.032082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316315, 33.590782, 35.718300>,  <38.802624, 33.076115, 35.568920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316315, 33.590782, 35.718300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.657658, 33.779774, 35.806435>,  <38.862461, 33.893169, 35.859318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.657658, 33.779774, 35.806435>,  <38.316315, 33.590782, 35.718300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657658, 33.779774, 35.806435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138899, 0.613427, -0.777441,
		-0.502487, 0.632828, 0.589098,
		0.853355, 0.472479, 0.220340,
		38.913666, 33.921516, 35.872536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141808, 34.233746, 35.568851>,  <38.316315, 33.590782, 35.718300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141808, 34.233746, 35.568851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.541000, 34.256943, 35.579254>,  <38.780514, 34.270863, 35.585495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.541000, 34.256943, 35.579254>,  <38.141808, 34.233746, 35.568851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541000, 34.256943, 35.579254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017603, 0.645356, -0.763679,
		-0.061074, 0.761677, 0.645072,
		0.997978, 0.057996, 0.026007,
		38.840393, 34.274342, 35.587055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222675, 34.910294, 35.574154>,  <38.141808, 34.233746, 35.568851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222675, 34.910294, 35.574154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.571041, 34.762161, 35.444935>,  <38.780060, 34.673283, 35.367405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.571041, 34.762161, 35.444935>,  <38.222675, 34.910294, 35.574154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571041, 34.762161, 35.444935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074438, 0.749184, -0.658166,
		0.485758, 0.549162, 0.680045,
		0.870918, -0.370330, -0.323044,
		38.832317, 34.651062, 35.348022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771488, 35.492676, 35.576450>,  <38.222675, 34.910294, 35.574154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771488, 35.492676, 35.576450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.891899, 35.228035, 35.301739>,  <38.964146, 35.069252, 35.136913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.891899, 35.228035, 35.301739>,  <38.771488, 35.492676, 35.576450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891899, 35.228035, 35.301739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085626, 0.736029, -0.671513,
		0.949763, 0.143340, 0.278217,
		0.301030, -0.661601, -0.686779,
		38.982208, 35.029556, 35.095703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234394, 35.860245, 35.135925>,  <38.771488, 35.492676, 35.576450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234394, 35.860245, 35.135925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.135098, 35.536041, 34.923714>,  <39.075520, 35.341518, 34.796387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.135098, 35.536041, 34.923714>,  <39.234394, 35.860245, 35.135925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135098, 35.536041, 34.923714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108914, 0.520844, -0.846675,
		0.962555, -0.267963, -0.041020,
		-0.248243, -0.810504, -0.530526,
		39.060623, 35.292889, 34.764557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833889, 35.736454, 34.665672>,  <39.234394, 35.860245, 35.135925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833889, 35.736454, 34.665672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.510391, 35.557144, 34.513371>,  <39.316292, 35.449558, 34.421989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.510391, 35.557144, 34.513371>,  <39.833889, 35.736454, 34.665672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510391, 35.557144, 34.513371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105378, 0.526455, -0.843647,
		0.578643, -0.722418, -0.378529,
		-0.808744, -0.448282, -0.380757,
		39.267769, 35.422661, 34.399143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056030, 35.520462, 33.979767>,  <39.833889, 35.736454, 34.665672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056030, 35.520462, 33.979767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.657219, 35.501644, 33.955387>,  <39.417931, 35.490353, 33.940758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.657219, 35.501644, 33.955387>,  <40.056030, 35.520462, 33.979767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657219, 35.501644, 33.955387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030008, 0.491611, -0.870298,
		0.070909, -0.869543, -0.488740,
		-0.997031, -0.047046, -0.060952,
		39.358109, 35.487530, 33.937099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923603, 35.180241, 33.363297>,  <40.056030, 35.520462, 33.979767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923603, 35.180241, 33.363297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.578587, 35.365135, 33.445621>,  <39.371578, 35.476074, 33.495014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.578587, 35.365135, 33.445621>,  <39.923603, 35.180241, 33.363297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578587, 35.365135, 33.445621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023403, 0.442758, -0.896336,
		-0.505445, -0.768311, -0.392715,
		-0.862542, 0.462239, 0.205809,
		39.319824, 35.503807, 33.507362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646351, 35.181095, 32.757370>,  <39.923603, 35.180241, 33.363297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646351, 35.181095, 32.757370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.382149, 35.424507, 32.933289>,  <39.223629, 35.570557, 33.038841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.382149, 35.424507, 32.933289>,  <39.646351, 35.181095, 32.757370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382149, 35.424507, 32.933289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205165, 0.417181, -0.885363,
		-0.722247, -0.675017, -0.150700,
		-0.660505, 0.608532, 0.439797,
		39.183998, 35.607067, 33.065228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071705, 35.156006, 32.455582>,  <39.646351, 35.181095, 32.757370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071705, 35.156006, 32.455582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053719, 35.522743, 32.614262>,  <39.042927, 35.742786, 32.709469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053719, 35.522743, 32.614262>,  <39.071705, 35.156006, 32.455582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053719, 35.522743, 32.614262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028179, 0.395776, -0.917914,
		-0.998591, -0.052451, 0.008041,
		-0.044963, 0.916848, 0.396697,
		39.040230, 35.797798, 32.733273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633621, 35.554783, 31.928728>,  <39.071705, 35.156006, 32.455582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633621, 35.554783, 31.928728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.821148, 35.820251, 32.161880>,  <38.933666, 35.979534, 32.301773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.821148, 35.820251, 32.161880>,  <38.633621, 35.554783, 31.928728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821148, 35.820251, 32.161880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060488, 0.682465, -0.728411,
		-0.881221, 0.306235, 0.360097,
		0.468819, 0.663672, 0.582879,
		38.961792, 36.019352, 32.336742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374928, 36.174782, 31.719318>,  <38.633621, 35.554783, 31.928728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374928, 36.174782, 31.719318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712219, 36.282467, 31.905432>,  <38.914593, 36.347076, 32.017101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.712219, 36.282467, 31.905432>,  <38.374928, 36.174782, 31.719318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712219, 36.282467, 31.905432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137959, 0.728186, -0.671351,
		-0.519548, 0.630293, 0.576888,
		0.843230, 0.269213, 0.465282,
		38.965187, 36.363232, 32.045017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473587, 36.952324, 31.664286>,  <38.374928, 36.174782, 31.719318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473587, 36.952324, 31.664286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.821907, 36.762566, 31.715912>,  <39.030899, 36.648712, 31.746887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.821907, 36.762566, 31.715912>,  <38.473587, 36.952324, 31.664286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.821907, 36.762566, 31.715912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361722, 0.440425, -0.821695,
		0.332963, 0.762218, 0.555121,
		0.870800, -0.474393, 0.129066,
		39.083149, 36.620247, 31.754631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696312, 37.623302, 31.738716>,  <38.473587, 36.952324, 31.664286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696312, 37.623302, 31.738716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.353619, 37.709286, 31.551184>,  <38.148003, 37.760876, 31.438663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.353619, 37.709286, 31.551184>,  <38.696312, 37.623302, 31.738716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353619, 37.709286, 31.551184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514919, -0.304525, 0.801325,
		0.029479, 0.927932, 0.371582,
		-0.856731, 0.214957, -0.468833,
		38.096600, 37.773773, 31.410534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270473, 37.956081, 32.250271>,  <38.696312, 37.623302, 31.738716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270473, 37.956081, 32.250271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.031982, 37.786366, 31.977655>,  <37.888889, 37.684536, 31.814087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.031982, 37.786366, 31.977655>,  <38.270473, 37.956081, 32.250271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031982, 37.786366, 31.977655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610540, -0.311611, 0.728106,
		-0.521300, 0.850224, -0.073252,
		-0.596227, -0.424285, -0.681539,
		37.853115, 37.659081, 31.773193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581738, 38.161625, 32.466660>,  <38.270473, 37.956081, 32.250271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581738, 38.161625, 32.466660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.522564, 37.860474, 32.210133>,  <37.487061, 37.679783, 32.056217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.522564, 37.860474, 32.210133>,  <37.581738, 38.161625, 32.466660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522564, 37.860474, 32.210133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710653, -0.370058, 0.598356,
		-0.687814, 0.544273, -0.480290,
		-0.147934, -0.752877, -0.641320,
		37.478184, 37.634609, 32.017738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865582, 38.230618, 32.280495>,  <37.581738, 38.161625, 32.466660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865582, 38.230618, 32.280495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.964355, 37.848858, 32.213379>,  <37.023621, 37.619804, 32.173111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.964355, 37.848858, 32.213379>,  <36.865582, 38.230618, 32.280495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964355, 37.848858, 32.213379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756753, -0.298077, 0.581786,
		-0.605267, -0.016691, -0.795847,
		0.246934, -0.954396, -0.167786,
		37.038437, 37.562538, 32.163044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285248, 37.889420, 32.300488>,  <36.865582, 38.230618, 32.280495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285248, 37.889420, 32.300488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.516422, 37.564140, 32.327911>,  <36.655128, 37.368973, 32.344364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.516422, 37.564140, 32.327911>,  <36.285248, 37.889420, 32.300488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516422, 37.564140, 32.327911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617256, -0.380633, 0.688559,
		-0.533839, -0.440261, -0.721932,
		0.577937, -0.813197, 0.068557,
		36.689804, 37.320183, 32.348480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731300, 37.227619, 32.202927>,  <36.285248, 37.889420, 32.300488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731300, 37.227619, 32.202927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.078625, 37.148533, 32.384895>,  <36.287018, 37.101082, 32.494076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.078625, 37.148533, 32.384895>,  <35.731300, 37.227619, 32.202927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078625, 37.148533, 32.384895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494537, -0.416131, 0.763065,
		0.038434, -0.887549, -0.459108,
		0.868306, -0.197719, 0.454919,
		36.339115, 37.089218, 32.521370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725712, 36.493950, 32.335117>,  <35.731300, 37.227619, 32.202927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725712, 36.493950, 32.335117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.990646, 36.650566, 32.590618>,  <36.149609, 36.744537, 32.743919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.990646, 36.650566, 32.590618>,  <35.725712, 36.493950, 32.335117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990646, 36.650566, 32.590618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510463, -0.388217, 0.767278,
		0.548395, -0.834256, -0.057264,
		0.662337, 0.391540, 0.638753,
		36.189346, 36.768028, 32.782246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915359, 35.914333, 32.788521>,  <35.725712, 36.493950, 32.335117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915359, 35.914333, 32.788521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.998589, 36.261375, 32.969173>,  <36.048527, 36.469601, 33.077564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.998589, 36.261375, 32.969173>,  <35.915359, 35.914333, 32.788521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998589, 36.261375, 32.969173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240122, -0.402295, 0.883459,
		0.948182, -0.292267, 0.124626,
		0.208070, 0.867605, 0.451628,
		36.061008, 36.521656, 33.104660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165035, 35.681828, 33.399624>,  <35.915359, 35.914333, 32.788521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165035, 35.681828, 33.399624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.076416, 36.065079, 33.472195>,  <36.023243, 36.295029, 33.515736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.076416, 36.065079, 33.472195>,  <36.165035, 35.681828, 33.399624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076416, 36.065079, 33.472195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338305, -0.250013, 0.907217,
		0.914585, 0.139616, 0.379528,
		-0.221549, 0.958124, 0.181425,
		36.009953, 36.352516, 33.526623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168766, 35.700390, 34.140083>,  <36.165035, 35.681828, 33.399624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168766, 35.700390, 34.140083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.009712, 36.054218, 34.042576>,  <35.914280, 36.266514, 33.984070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.009712, 36.054218, 34.042576>,  <36.168766, 35.700390, 34.140083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009712, 36.054218, 34.042576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607007, -0.054375, 0.792834,
		0.688063, 0.463224, 0.558563,
		-0.397631, 0.884571, -0.243767,
		35.890423, 36.319592, 33.969444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246437, 36.208057, 34.771240>,  <36.168766, 35.700390, 34.140083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246437, 36.208057, 34.771240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.934208, 36.296623, 34.537426>,  <35.746872, 36.349762, 34.397137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.934208, 36.296623, 34.537426>,  <36.246437, 36.208057, 34.771240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934208, 36.296623, 34.537426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625027, -0.265673, 0.734002,
		0.007223, 0.938293, 0.345766,
		-0.780570, 0.221415, -0.584540,
		35.700039, 36.363049, 34.362064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760418, 36.566814, 35.112354>,  <36.246437, 36.208057, 34.771240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760418, 36.566814, 35.112354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.493549, 36.515968, 34.818764>,  <35.333427, 36.485462, 34.642609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.493549, 36.515968, 34.818764>,  <35.760418, 36.566814, 35.112354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493549, 36.515968, 34.818764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683019, -0.288816, 0.670873,
		-0.297263, 0.948908, 0.105867,
		-0.667173, -0.127116, -0.733977,
		35.293396, 36.477833, 34.598572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.707653, 40.207127, 28.826868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473671, 39.931122, 28.656359>,  <39.333282, 39.765518, 28.554052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473671, 39.931122, 28.656359>,  <39.707653, 40.207127, 28.826868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473671, 39.931122, 28.656359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498965, -0.108196, 0.859842,
		-0.639423, 0.715664, -0.281004,
		-0.584954, -0.690014, -0.426274,
		39.298183, 39.724117, 28.528477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119358, 40.406166, 29.114706>,  <39.707653, 40.207127, 28.826868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119358, 40.406166, 29.114706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110291, 40.020191, 29.010113>,  <39.104851, 39.788605, 28.947357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110291, 40.020191, 29.010113>,  <39.119358, 40.406166, 29.114706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110291, 40.020191, 29.010113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424277, -0.227542, 0.876478,
		-0.905248, 0.130814, -0.404244,
		-0.022673, -0.964942, -0.261483,
		39.103489, 39.730709, 28.931667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603840, 40.087219, 29.507063>,  <39.119358, 40.406166, 29.114706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603840, 40.087219, 29.507063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772808, 39.746056, 29.384352>,  <38.874187, 39.541359, 29.310724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772808, 39.746056, 29.384352>,  <38.603840, 40.087219, 29.507063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772808, 39.746056, 29.384352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437656, -0.488314, 0.754988,
		-0.793739, -0.184656, -0.579552,
		0.422417, -0.852908, -0.306778,
		38.899532, 39.490185, 29.292318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059422, 39.693386, 29.475117>,  <38.603840, 40.087219, 29.507063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059422, 39.693386, 29.475117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375790, 39.449432, 29.495106>,  <38.565609, 39.303062, 29.507099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375790, 39.449432, 29.495106>,  <38.059422, 39.693386, 29.475117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375790, 39.449432, 29.495106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466061, -0.547455, 0.695039,
		-0.396532, -0.573009, -0.717233,
		0.790917, -0.609880, 0.049974,
		38.613064, 39.266468, 29.510098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751099, 39.031693, 29.451595>,  <38.059422, 39.693386, 29.475117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751099, 39.031693, 29.451595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118511, 38.933201, 29.575315>,  <38.338959, 38.874107, 29.649548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118511, 38.933201, 29.575315>,  <37.751099, 39.031693, 29.451595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118511, 38.933201, 29.575315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388905, -0.703366, 0.595003,
		0.071045, -0.666819, -0.741825,
		0.918534, -0.246228, 0.309300,
		38.394073, 38.859333, 29.668106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901363, 38.306522, 29.421761>,  <37.751099, 39.031693, 29.451595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901363, 38.306522, 29.421761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163349, 38.432400, 29.696566>,  <38.320541, 38.507927, 29.861448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163349, 38.432400, 29.696566>,  <37.901363, 38.306522, 29.421761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163349, 38.432400, 29.696566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361349, -0.668042, 0.650497,
		0.663660, -0.674306, -0.323832,
		0.654968, 0.314693, 0.687012,
		38.359840, 38.526806, 29.902670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181705, 37.745266, 29.674994>,  <37.901363, 38.306522, 29.421761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181705, 37.745266, 29.674994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240402, 37.987003, 29.988232>,  <38.275620, 38.132046, 30.176174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240402, 37.987003, 29.988232>,  <38.181705, 37.745266, 29.674994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240402, 37.987003, 29.988232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337625, -0.713522, 0.613918,
		0.929773, -0.354477, 0.099341,
		0.146738, 0.604345, 0.783093,
		38.284424, 38.168308, 30.223160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345863, 37.366646, 30.229893>,  <38.181705, 37.745266, 29.674994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345863, 37.366646, 30.229893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284634, 37.706387, 30.431948>,  <38.247898, 37.910233, 30.553181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284634, 37.706387, 30.431948>,  <38.345863, 37.366646, 30.229893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284634, 37.706387, 30.431948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252158, -0.527812, 0.811068,
		0.955503, -0.003223, 0.294965,
		-0.153072, 0.849355, 0.505139,
		38.238712, 37.961193, 30.583488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747963, 37.346420, 30.858768>,  <38.345863, 37.366646, 30.229893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747963, 37.346420, 30.858768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470398, 37.629608, 30.911331>,  <38.303860, 37.799519, 30.942869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470398, 37.629608, 30.911331>,  <38.747963, 37.346420, 30.858768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470398, 37.629608, 30.911331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387443, -0.520929, 0.760606,
		0.606936, 0.476883, 0.635776,
		-0.693914, 0.707966, 0.131405,
		38.262222, 37.841999, 30.950752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421860, 37.646923, 31.347799>,  <38.747963, 37.346420, 30.858768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421860, 37.646923, 31.347799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534096, 37.266281, 31.397951>,  <39.601437, 37.037895, 31.428041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534096, 37.266281, 31.397951>,  <39.421860, 37.646923, 31.347799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534096, 37.266281, 31.397951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487216, 0.028662, -0.872811,
		0.826977, 0.305988, 0.471679,
		0.280589, -0.951604, 0.125380,
		39.618271, 36.980801, 31.435566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.133575, 37.591152, 31.228252>,  <39.421860, 37.646923, 31.347799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.133575, 37.591152, 31.228252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025379, 37.210270, 31.171494>,  <39.960461, 36.981739, 31.137438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025379, 37.210270, 31.171494>,  <40.133575, 37.591152, 31.228252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025379, 37.210270, 31.171494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629325, -0.063345, -0.774556,
		0.728551, -0.298806, 0.616383,
		-0.270487, -0.952209, -0.141896,
		39.944233, 36.924606, 31.128925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.711102, 37.302246, 30.832497>,  <40.133575, 37.591152, 31.228252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.711102, 37.302246, 30.832497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414169, 37.036007, 30.801702>,  <40.236012, 36.876263, 30.783226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414169, 37.036007, 30.801702>,  <40.711102, 37.302246, 30.832497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414169, 37.036007, 30.801702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387682, -0.332954, -0.859560,
		0.546489, -0.667923, 0.505202,
		-0.742329, -0.665598, -0.076986,
		40.191471, 36.836327, 30.778606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038586, 36.642616, 30.874079>,  <40.711102, 37.302246, 30.832497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038586, 36.642616, 30.874079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685749, 36.631763, 30.685963>,  <40.474045, 36.625252, 30.573093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685749, 36.631763, 30.685963>,  <41.038586, 36.642616, 30.874079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685749, 36.631763, 30.685963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466089, -0.195108, -0.862957,
		-0.068341, -0.980406, 0.184752,
		-0.882094, -0.027136, -0.470290,
		40.421120, 36.623623, 30.544876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108479, 36.096241, 30.456785>,  <41.038586, 36.642616, 30.874079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108479, 36.096241, 30.456785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829098, 36.329315, 30.290586>,  <40.661469, 36.469158, 30.190868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829098, 36.329315, 30.290586>,  <41.108479, 36.096241, 30.456785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829098, 36.329315, 30.290586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409321, -0.150983, -0.899811,
		-0.587041, -0.798549, -0.133051,
		-0.698455, 0.582687, -0.415496,
		40.619560, 36.504120, 30.165937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031178, 35.799061, 29.817104>,  <41.108479, 36.096241, 30.456785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031178, 35.799061, 29.817104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877827, 36.167370, 29.788265>,  <40.785816, 36.388355, 29.770962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877827, 36.167370, 29.788265>,  <41.031178, 35.799061, 29.817104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877827, 36.167370, 29.788265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463615, 0.124341, -0.877269,
		-0.798800, -0.369753, -0.474554,
		-0.383379, 0.920773, -0.072100,
		40.762814, 36.443604, 29.766636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824997, 35.736439, 29.085430>,  <41.031178, 35.799061, 29.817104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824997, 35.736439, 29.085430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873226, 36.113342, 29.210398>,  <40.902164, 36.339485, 29.285378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873226, 36.113342, 29.210398>,  <40.824997, 35.736439, 29.085430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873226, 36.113342, 29.210398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364394, 0.250732, -0.896856,
		-0.923406, 0.221983, -0.313122,
		0.120577, 0.942262, 0.312417,
		40.909401, 36.396019, 29.304123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548557, 35.998592, 28.523428>,  <40.824997, 35.736439, 29.085430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548557, 35.998592, 28.523428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763599, 36.278076, 28.712229>,  <40.892624, 36.445766, 28.825510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763599, 36.278076, 28.712229>,  <40.548557, 35.998592, 28.523428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763599, 36.278076, 28.712229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568905, 0.112599, -0.814658,
		-0.622353, 0.706493, -0.336962,
		0.537609, 0.698705, 0.472004,
		40.924881, 36.487686, 28.853830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639236, 36.452724, 28.026182>,  <40.548557, 35.998592, 28.523428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.639236, 36.452724, 28.026182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915302, 36.547699, 28.299618>,  <41.080944, 36.604683, 28.463678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915302, 36.547699, 28.299618>,  <40.639236, 36.452724, 28.026182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915302, 36.547699, 28.299618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657241, 0.189636, -0.729433,
		-0.302826, 0.952714, -0.025171,
		0.690167, 0.237434, 0.683589,
		41.122353, 36.618931, 28.504694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941475, 37.004059, 27.683241>,  <40.639236, 36.452724, 28.026182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941475, 37.004059, 27.683241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201832, 36.903488, 27.969770>,  <41.358047, 36.843143, 28.141689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201832, 36.903488, 27.969770>,  <40.941475, 37.004059, 27.683241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201832, 36.903488, 27.969770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756876, 0.141635, -0.638027,
		0.058963, 0.957456, 0.282491,
		0.650893, -0.251430, 0.716325,
		41.397099, 36.828060, 28.184668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376003, 37.575996, 27.776972>,  <40.941475, 37.004059, 27.683241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376003, 37.575996, 27.776972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560913, 37.236816, 27.880735>,  <41.671860, 37.033310, 27.942993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560913, 37.236816, 27.880735>,  <41.376003, 37.575996, 27.776972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560913, 37.236816, 27.880735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684978, 0.155686, -0.711735,
		0.563126, 0.506706, 0.652793,
		0.462271, -0.847945, 0.259411,
		41.699593, 36.982433, 27.958559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.117405, 37.744961, 27.833132>,  <41.376003, 37.575996, 27.776972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.117405, 37.744961, 27.833132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131531, 37.347107, 27.794230>,  <42.140007, 37.108395, 27.770887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131531, 37.347107, 27.794230>,  <42.117405, 37.744961, 27.833132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131531, 37.347107, 27.794230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726746, 0.092357, -0.680669,
		0.685998, -0.046644, 0.726107,
		0.035312, -0.994633, -0.097255,
		42.142124, 37.048717, 27.765053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831913, 37.586559, 27.784325>,  <42.117405, 37.744961, 27.833132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831913, 37.586559, 27.784325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624325, 37.270405, 27.654118>,  <42.499771, 37.080711, 27.575994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624325, 37.270405, 27.654118>,  <42.831913, 37.586559, 27.784325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624325, 37.270405, 27.654118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642762, -0.109797, -0.758157,
		0.563496, -0.602689, 0.565012,
		-0.518969, -0.790386, -0.325515,
		42.468636, 37.033287, 27.556463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298141, 37.019501, 27.668436>,  <42.831913, 37.586559, 27.784325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298141, 37.019501, 27.668436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969612, 36.938446, 27.455132>,  <42.772495, 36.889812, 27.327148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.969612, 36.938446, 27.455132>,  <43.298141, 37.019501, 27.668436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969612, 36.938446, 27.455132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549763, -0.031612, -0.834722,
		0.152291, -0.978743, 0.137367,
		-0.821321, -0.202640, -0.533262,
		42.723217, 36.877655, 27.295153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.827232, 35.661407, 24.363173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.093243, 35.810482, 24.622044>,  <37.252850, 35.899925, 24.777367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.093243, 35.810482, 24.622044>,  <36.827232, 35.661407, 24.363173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093243, 35.810482, 24.622044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481968, -0.447784, 0.753124,
		0.570476, -0.812769, -0.118166,
		0.665029, 0.372687, 0.647179,
		37.292751, 35.922287, 24.816196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056637, 35.125648, 24.831474>,  <36.827232, 35.661407, 24.363173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056637, 35.125648, 24.831474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129215, 35.453598, 25.048689>,  <37.172764, 35.650368, 25.179018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.129215, 35.453598, 25.048689>,  <37.056637, 35.125648, 24.831474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129215, 35.453598, 25.048689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499282, -0.398936, 0.769134,
		0.847228, -0.410685, 0.336961,
		0.181446, 0.819870, 0.543037,
		37.183651, 35.699558, 25.211599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319790, 34.840759, 25.475008>,  <37.056637, 35.125648, 24.831474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319790, 34.840759, 25.475008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186764, 35.212086, 25.541492>,  <37.106949, 35.434883, 25.581383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186764, 35.212086, 25.541492>,  <37.319790, 34.840759, 25.475008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186764, 35.212086, 25.541492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448950, -0.310829, 0.837752,
		0.829365, 0.203983, 0.520139,
		-0.332561, 0.928319, 0.166213,
		37.086994, 35.490582, 25.591356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410240, 34.819355, 26.189404>,  <37.319790, 34.840759, 25.475008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410240, 34.819355, 26.189404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.178986, 35.133343, 26.100334>,  <37.040234, 35.321735, 26.046892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.178986, 35.133343, 26.100334>,  <37.410240, 34.819355, 26.189404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178986, 35.133343, 26.100334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485585, -0.111689, 0.867025,
		0.655716, 0.609387, 0.445739,
		-0.578138, 0.784967, -0.222673,
		37.005543, 35.368832, 26.033533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431019, 35.327736, 26.739592>,  <37.410240, 34.819355, 26.189404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431019, 35.327736, 26.739592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.079571, 35.371532, 26.553675>,  <36.868702, 35.397812, 26.442125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.079571, 35.371532, 26.553675>,  <37.431019, 35.327736, 26.739592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079571, 35.371532, 26.553675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475569, -0.112857, 0.872409,
		0.043069, 0.987560, 0.151231,
		-0.878623, 0.109495, -0.464793,
		36.815983, 35.404381, 26.414236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046852, 35.711517, 27.222155>,  <37.431019, 35.327736, 26.739592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046852, 35.711517, 27.222155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.759209, 35.609726, 26.963507>,  <36.586620, 35.548653, 26.808317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.759209, 35.609726, 26.963507>,  <37.046852, 35.711517, 27.222155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759209, 35.609726, 26.963507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665422, -0.015946, 0.746297,
		-0.200228, 0.966947, -0.157869,
		-0.719112, -0.254479, -0.646621,
		36.543476, 35.533382, 26.769520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460251, 36.180771, 27.282383>,  <37.046852, 35.711517, 27.222155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460251, 36.180771, 27.282383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.353798, 35.819351, 27.148058>,  <36.289928, 35.602497, 27.067463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.353798, 35.819351, 27.148058>,  <36.460251, 36.180771, 27.282383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353798, 35.819351, 27.148058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480452, -0.177680, 0.858834,
		-0.835668, 0.389902, -0.386827,
		-0.266130, -0.903552, -0.335810,
		36.273960, 35.548286, 27.047316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844688, 36.092033, 27.484150>,  <36.460251, 36.180771, 27.282383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844688, 36.092033, 27.484150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.941700, 35.715096, 27.391924>,  <35.999908, 35.488934, 27.336588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.941700, 35.715096, 27.391924>,  <35.844688, 36.092033, 27.484150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941700, 35.715096, 27.391924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398210, -0.313415, 0.862091,
		-0.884651, -0.117272, -0.451265,
		0.242532, -0.942347, -0.230564,
		36.014462, 35.432392, 27.322754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182793, 35.683075, 27.632919>,  <35.844688, 36.092033, 27.484150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182793, 35.683075, 27.632919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.511265, 35.455383, 27.616709>,  <35.708347, 35.318768, 27.606981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.511265, 35.455383, 27.616709>,  <35.182793, 35.683075, 27.632919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511265, 35.455383, 27.616709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199801, -0.353305, 0.913923,
		-0.534552, -0.742396, -0.403859,
		0.821178, -0.569231, -0.040529,
		35.757618, 35.284615, 27.604549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908161, 35.006260, 27.839087>,  <35.182793, 35.683075, 27.632919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908161, 35.006260, 27.839087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.303444, 35.030643, 27.895271>,  <35.540615, 35.045273, 27.928982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.303444, 35.030643, 27.895271>,  <34.908161, 35.006260, 27.839087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303444, 35.030643, 27.895271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089273, -0.515930, 0.851966,
		0.124401, -0.854459, -0.504405,
		0.988208, 0.060956, 0.140462,
		35.599907, 35.048931, 27.937410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944107, 34.662380, 28.481802>,  <34.908161, 35.006260, 27.839087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944107, 34.662380, 28.481802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.329830, 34.740017, 28.409765>,  <35.561264, 34.786598, 28.366543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.329830, 34.740017, 28.409765>,  <34.944107, 34.662380, 28.481802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329830, 34.740017, 28.409765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243695, -0.384660, 0.890309,
		0.103529, -0.902421, -0.418231,
		0.964311, 0.194094, -0.180092,
		35.619122, 34.798244, 28.355738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315418, 34.089794, 28.556568>,  <34.944107, 34.662380, 28.481802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315418, 34.089794, 28.556568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.547504, 34.404858, 28.639469>,  <35.686756, 34.593895, 28.689209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.547504, 34.404858, 28.639469>,  <35.315418, 34.089794, 28.556568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547504, 34.404858, 28.639469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071481, -0.302726, 0.950393,
		0.811324, -0.536614, -0.231947,
		0.580211, 0.787656, 0.207251,
		35.721569, 34.641155, 28.701645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733044, 33.793243, 28.984501>,  <35.315418, 34.089794, 28.556568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733044, 33.793243, 28.984501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.772552, 34.182747, 29.066521>,  <35.796257, 34.416447, 29.115732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.772552, 34.182747, 29.066521>,  <35.733044, 33.793243, 28.984501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772552, 34.182747, 29.066521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151611, -0.188927, 0.970217,
		0.983493, -0.126920, 0.128971,
		0.098774, 0.973755, 0.205051,
		35.802185, 34.474873, 29.128036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211807, 33.906986, 29.568676>,  <35.733044, 33.793243, 28.984501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211807, 33.906986, 29.568676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.950848, 34.207619, 29.529694>,  <35.794273, 34.388000, 29.506304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.950848, 34.207619, 29.529694>,  <36.211807, 33.906986, 29.568676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950848, 34.207619, 29.529694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200720, -0.047354, 0.978503,
		0.730813, 0.657935, 0.181752,
		-0.652399, 0.751584, -0.097454,
		35.755127, 34.433094, 29.500458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852665, 33.972519, 30.051731>,  <36.211807, 33.906986, 29.568676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852665, 33.972519, 30.051731> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034138, 33.616066, 30.054777>,  <37.143021, 33.402195, 30.056604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034138, 33.616066, 30.054777>,  <36.852665, 33.972519, 30.051731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034138, 33.616066, 30.054777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521943, 0.258776, -0.812780,
		0.722323, 0.372717, 0.582521,
		0.453679, -0.891133, 0.007617,
		37.170242, 33.348724, 30.057062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529747, 34.138073, 29.979935>,  <36.852665, 33.972519, 30.051731>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529747, 34.138073, 29.979935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465694, 33.763039, 29.856455>,  <37.427261, 33.538017, 29.782368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465694, 33.763039, 29.856455>,  <37.529747, 34.138073, 29.979935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465694, 33.763039, 29.856455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618075, 0.148603, -0.771946,
		0.769638, -0.314411, 0.555701,
		-0.160130, -0.937584, -0.308700,
		37.417656, 33.481762, 29.763845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147011, 34.077171, 29.734955>,  <37.529747, 34.138073, 29.979935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147011, 34.077171, 29.734955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.921761, 33.793163, 29.565828>,  <37.786610, 33.622761, 29.464354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.921761, 33.793163, 29.565828>,  <38.147011, 34.077171, 29.734955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921761, 33.793163, 29.565828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552789, 0.056671, -0.831392,
		0.614263, -0.701901, 0.360576,
		-0.563121, -0.710016, -0.422814,
		37.752823, 33.580158, 29.438984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634319, 33.608974, 29.439217>,  <38.147011, 34.077171, 29.734955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634319, 33.608974, 29.439217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.280037, 33.560116, 29.260061>,  <38.067467, 33.530800, 29.152567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.280037, 33.560116, 29.260061>,  <38.634319, 33.608974, 29.439217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280037, 33.560116, 29.260061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458386, -0.077286, -0.885386,
		0.073533, -0.989498, 0.124444,
		-0.885706, -0.122148, -0.447889,
		38.014324, 33.523472, 29.125694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723740, 33.035843, 28.956045>,  <38.634319, 33.608974, 29.439217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723740, 33.035843, 28.956045> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.406422, 33.257706, 28.855619>,  <38.216030, 33.390823, 28.795364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.406422, 33.257706, 28.855619>,  <38.723740, 33.035843, 28.956045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406422, 33.257706, 28.855619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326498, 0.039504, -0.944372,
		-0.513884, -0.831141, -0.212432,
		-0.793299, 0.554656, -0.251066,
		38.168430, 33.424103, 28.780300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511292, 32.758976, 28.235195>,  <38.723740, 33.035843, 28.956045>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511292, 32.758976, 28.235195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.336468, 33.118500, 28.248583>,  <38.231575, 33.334213, 28.256615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.336468, 33.118500, 28.248583>,  <38.511292, 32.758976, 28.235195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336468, 33.118500, 28.248583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303374, 0.182345, -0.935262,
		-0.846727, -0.398608, -0.352372,
		-0.437056, 0.898811, 0.033469,
		38.205353, 33.388142, 28.258623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963913, 32.875259, 27.714388>,  <38.511292, 32.758976, 28.235195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963913, 32.875259, 27.714388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.057915, 33.258118, 27.782093>,  <38.114315, 33.487831, 27.822716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.057915, 33.258118, 27.782093>,  <37.963913, 32.875259, 27.714388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057915, 33.258118, 27.782093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224688, 0.115930, -0.967510,
		-0.945667, 0.265405, -0.187814,
		0.235009, 0.957142, 0.169265,
		38.128418, 33.545261, 27.832872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681419, 33.195286, 27.132771>,  <37.963913, 32.875259, 27.714388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681419, 33.195286, 27.132771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944946, 33.462910, 27.270363>,  <38.103062, 33.623482, 27.352919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944946, 33.462910, 27.270363>,  <37.681419, 33.195286, 27.132771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944946, 33.462910, 27.270363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340779, 0.142224, -0.929323,
		-0.670693, 0.729475, -0.134302,
		0.658818, 0.669058, 0.343978,
		38.142593, 33.663628, 27.373556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696754, 33.740620, 26.704166>,  <37.681419, 33.195286, 27.132771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696754, 33.740620, 26.704166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051895, 33.802635, 26.877453>,  <38.264980, 33.839844, 26.981424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.051895, 33.802635, 26.877453>,  <37.696754, 33.740620, 26.704166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051895, 33.802635, 26.877453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390113, 0.245596, -0.887409,
		-0.243976, 0.956894, 0.157572,
		0.887856, 0.155035, 0.433216,
		38.318253, 33.849144, 27.007418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983635, 34.301075, 26.366762>,  <37.696754, 33.740620, 26.704166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983635, 34.301075, 26.366762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.314224, 34.160683, 26.542831>,  <38.512577, 34.076447, 26.648474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.314224, 34.160683, 26.542831>,  <37.983635, 34.301075, 26.366762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314224, 34.160683, 26.542831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548327, 0.324677, -0.770663,
		0.127572, 0.878294, 0.460788,
		0.826476, -0.350978, 0.440173,
		38.562168, 34.055389, 26.674883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397278, 34.916241, 26.446218>,  <37.983635, 34.301075, 26.366762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397278, 34.916241, 26.446218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.629883, 34.590828, 26.447060>,  <38.769447, 34.395580, 26.447565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.629883, 34.590828, 26.447060>,  <38.397278, 34.916241, 26.446218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629883, 34.590828, 26.447060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507660, 0.360851, -0.782348,
		0.635707, 0.456014, 0.622839,
		0.581513, -0.813534, 0.002104,
		38.804337, 34.346767, 26.447691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111485, 35.177917, 26.433096>,  <38.397278, 34.916241, 26.446218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111485, 35.177917, 26.433096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.151524, 34.800747, 26.306051>,  <39.175549, 34.574444, 26.229824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.151524, 34.800747, 26.306051>,  <39.111485, 35.177917, 26.433096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151524, 34.800747, 26.306051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640051, 0.305425, -0.705018,
		0.761784, -0.132718, 0.634091,
		0.100098, -0.942922, -0.317614,
		39.181553, 34.517872, 26.210768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826157, 35.082520, 26.421703>,  <39.111485, 35.177917, 26.433096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826157, 35.082520, 26.421703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.666515, 34.810406, 26.175800>,  <39.570732, 34.647137, 26.028259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.666515, 34.810406, 26.175800>,  <39.826157, 35.082520, 26.421703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666515, 34.810406, 26.175800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658785, 0.253587, -0.708305,
		0.637746, -0.687678, 0.346957,
		-0.399102, -0.680288, -0.614756,
		39.546783, 34.606319, 25.991373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376320, 34.809734, 26.065577>,  <39.826157, 35.082520, 26.421703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376320, 34.809734, 26.065577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.055431, 34.717636, 25.845240>,  <39.862900, 34.662376, 25.713037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.055431, 34.717636, 25.845240>,  <40.376320, 34.809734, 26.065577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055431, 34.717636, 25.845240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476805, 0.308189, -0.823211,
		0.359301, -0.923043, -0.137456,
		-0.802222, -0.230241, -0.550844,
		39.814766, 34.648563, 25.679987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882008, 34.356613, 26.371469>,  <40.376320, 34.809734, 26.065577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882008, 34.356613, 26.371469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.245728, 34.267433, 26.512016>,  <41.463959, 34.213924, 26.596344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.245728, 34.267433, 26.512016>,  <40.882008, 34.356613, 26.371469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245728, 34.267433, 26.512016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388153, -0.150020, 0.909303,
		-0.150020, -0.963217, -0.222953,
		-0.909303, 0.222953, -0.351369,
		41.518517, 34.200546, 26.617428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881397, 33.585697, 26.661901>,  <40.882008, 34.356613, 26.371469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881397, 33.585697, 26.661901> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.179836, 33.798573, 26.821960>,  <41.358898, 33.926296, 26.917995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.179836, 33.798573, 26.821960>,  <40.881397, 33.585697, 26.661901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179836, 33.798573, 26.821960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343093, -0.207767, 0.916035,
		0.570639, -0.820738, 0.027575,
		0.746095, 0.532186, 0.400149,
		41.403664, 33.958229, 26.942005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075695, 33.145996, 27.162048>,  <40.881397, 33.585697, 26.661901>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075695, 33.145996, 27.162048> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.268932, 33.484913, 27.250334>,  <41.384872, 33.688263, 27.303305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.268932, 33.484913, 27.250334>,  <41.075695, 33.145996, 27.162048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268932, 33.484913, 27.250334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248610, -0.108965, 0.962455,
		0.839533, -0.519826, 0.158006,
		0.483092, 0.847295, 0.220713,
		41.413860, 33.739101, 27.316547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.550503, 33.061592, 27.665920>,  <41.075695, 33.145996, 27.162048>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.550503, 33.061592, 27.665920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.457230, 33.450417, 27.676649>,  <41.401268, 33.683712, 27.683086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.457230, 33.450417, 27.676649>,  <41.550503, 33.061592, 27.665920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457230, 33.450417, 27.676649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228807, -0.081654, 0.970041,
		0.945132, 0.220057, 0.241455,
		-0.233180, 0.972064, 0.026823,
		41.387276, 33.742035, 27.684696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943920, 33.247585, 28.200813>,  <41.550503, 33.061592, 27.665920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943920, 33.247585, 28.200813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.655930, 33.524822, 28.186567>,  <41.483135, 33.691162, 28.178020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.655930, 33.524822, 28.186567>,  <41.943920, 33.247585, 28.200813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655930, 33.524822, 28.186567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299096, -0.263573, 0.917099,
		0.626244, 0.670937, 0.397065,
		-0.719972, 0.693089, -0.035613,
		41.439938, 33.732750, 28.175882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.053852, 33.556202, 28.797781>,  <41.943920, 33.247585, 28.200813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.053852, 33.556202, 28.797781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.679626, 33.647137, 28.689676>,  <41.455093, 33.701698, 28.624813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.679626, 33.647137, 28.689676>,  <42.053852, 33.556202, 28.797781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679626, 33.647137, 28.689676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279947, -0.010864, 0.959954,
		0.215300, 0.973755, 0.073807,
		-0.935562, 0.227340, -0.270261,
		41.398956, 33.715340, 28.608599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809235, 33.912811, 29.329130>,  <42.053852, 33.556202, 28.797781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809235, 33.912811, 29.329130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.461796, 33.816772, 29.155743>,  <41.253334, 33.759148, 29.051710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.461796, 33.816772, 29.155743>,  <41.809235, 33.912811, 29.329130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461796, 33.816772, 29.155743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341942, -0.342683, 0.875011,
		-0.358633, 0.908251, 0.215552,
		-0.868595, -0.240101, -0.433467,
		41.201218, 33.744743, 29.025703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286228, 34.049648, 29.834387>,  <41.809235, 33.912811, 29.329130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286228, 34.049648, 29.834387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.102695, 33.804211, 29.577333>,  <40.992577, 33.656948, 29.423101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.102695, 33.804211, 29.577333>,  <41.286228, 34.049648, 29.834387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102695, 33.804211, 29.577333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574072, -0.347314, 0.741494,
		-0.678171, 0.709139, -0.192888,
		-0.458829, -0.613592, -0.642636,
		40.965046, 33.620132, 29.384542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605713, 34.192837, 29.872162>,  <41.286228, 34.049648, 29.834387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605713, 34.192837, 29.872162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.642471, 33.826164, 29.716599>,  <40.664528, 33.606159, 29.623260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.642471, 33.826164, 29.716599>,  <40.605713, 34.192837, 29.872162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642471, 33.826164, 29.716599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660959, -0.348273, 0.664710,
		-0.744774, 0.195967, -0.637894,
		0.091900, -0.916680, -0.388911,
		40.670040, 33.551159, 29.599926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977535, 33.966175, 29.870565>,  <40.605713, 34.192837, 29.872162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977535, 33.966175, 29.870565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.172951, 33.617474, 29.855709>,  <40.290199, 33.408253, 29.846796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.172951, 33.617474, 29.855709>,  <39.977535, 33.966175, 29.870565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172951, 33.617474, 29.855709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417540, -0.270944, 0.867323,
		-0.766154, -0.408212, -0.496358,
		0.488537, -0.871752, -0.037140,
		40.319511, 33.355949, 29.844566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430294, 33.511768, 29.900217>,  <39.977535, 33.966175, 29.870565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430294, 33.511768, 29.900217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755295, 33.303452, 30.004995>,  <39.950294, 33.178463, 30.067862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755295, 33.303452, 30.004995>,  <39.430294, 33.511768, 29.900217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755295, 33.303452, 30.004995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479724, -0.342025, 0.808012,
		-0.331189, -0.782190, -0.527724,
		0.812514, -0.520767, 0.261961,
		39.999046, 33.147217, 30.083578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235615, 32.723083, 30.070753>,  <39.430294, 33.511768, 29.900217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235615, 32.723083, 30.070753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.603088, 32.757206, 30.225023>,  <39.823574, 32.777679, 30.317585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.603088, 32.757206, 30.225023>,  <39.235615, 32.723083, 30.070753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603088, 32.757206, 30.225023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298740, -0.488726, 0.819696,
		0.258413, -0.868257, -0.423500,
		0.918683, 0.085304, 0.385676,
		39.878693, 32.782799, 30.340727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378937, 32.094776, 30.244373>,  <39.235615, 32.723083, 30.070753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378937, 32.094776, 30.244373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.623383, 32.310753, 30.475887>,  <39.770050, 32.440338, 30.614796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.623383, 32.310753, 30.475887>,  <39.378937, 32.094776, 30.244373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623383, 32.310753, 30.475887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353963, -0.467613, 0.809968,
		0.707987, -0.699855, -0.094646,
		0.611118, 0.539945, 0.578786,
		39.806717, 32.472736, 30.649523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842785, 31.620331, 30.638893>,  <39.378937, 32.094776, 30.244373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842785, 31.620331, 30.638893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871277, 31.966419, 30.837414>,  <39.888374, 32.174072, 30.956526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871277, 31.966419, 30.837414>,  <39.842785, 31.620331, 30.638893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871277, 31.966419, 30.837414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260427, -0.464177, 0.846591,
		0.962862, -0.189555, 0.192263,
		0.071232, 0.865222, 0.496304,
		39.892647, 32.225986, 30.986305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.616203, 36.609413, 27.184488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.249878, 36.721428, 27.069345>,  <43.030083, 36.788639, 27.000259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.249878, 36.721428, 27.069345>,  <43.616203, 36.609413, 27.184488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249878, 36.721428, 27.069345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387636, 0.429015, -0.815895,
		-0.104987, -0.858792, -0.501451,
		-0.915814, 0.280039, -0.287858,
		42.975132, 36.805439, 26.982988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.622253, 36.383064, 26.578846>,  <43.616203, 36.609413, 27.184488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.622253, 36.383064, 26.578846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.341145, 36.667538, 26.571627>,  <43.172478, 36.838223, 26.567295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.341145, 36.667538, 26.571627>,  <43.622253, 36.383064, 26.578846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341145, 36.667538, 26.571627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396684, 0.370681, -0.839784,
		-0.590553, -0.597336, -0.542620,
		-0.702773, 0.711186, -0.018047,
		43.130314, 36.880894, 26.566212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.283642, 36.280678, 25.929497>,  <43.622253, 36.383064, 26.578846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.283642, 36.280678, 25.929497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.228199, 36.661034, 26.040197>,  <43.194935, 36.889248, 26.106619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.228199, 36.661034, 26.040197>,  <43.283642, 36.280678, 25.929497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228199, 36.661034, 26.040197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383849, 0.309188, -0.870093,
		-0.912934, -0.014369, -0.407855,
		-0.138606, 0.950893, 0.276753,
		43.186619, 36.946301, 26.123222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.984459, 36.612984, 25.337858>,  <43.283642, 36.280678, 25.929497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.984459, 36.612984, 25.337858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.113235, 36.923637, 25.554449>,  <43.190502, 37.110027, 25.684404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.113235, 36.923637, 25.554449>,  <42.984459, 36.612984, 25.337858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113235, 36.923637, 25.554449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449164, 0.378174, -0.809466,
		-0.833429, 0.503815, -0.227084,
		0.321944, 0.776631, 0.541477,
		43.209820, 37.156628, 25.716892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931427, 37.246693, 24.907890>,  <42.984459, 36.612984, 25.337858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931427, 37.246693, 24.907890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.197052, 37.342632, 25.191154>,  <43.356426, 37.400196, 25.361113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.197052, 37.342632, 25.191154>,  <42.931427, 37.246693, 24.907890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197052, 37.342632, 25.191154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500025, 0.561708, -0.659135,
		-0.555872, 0.791806, 0.253080,
		0.664064, 0.239848, 0.708161,
		43.396271, 37.414585, 25.403603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086868, 37.969612, 24.791739>,  <42.931427, 37.246693, 24.907890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086868, 37.969612, 24.791739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.397743, 37.867001, 25.021578>,  <43.584270, 37.805431, 25.159481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.397743, 37.867001, 25.021578>,  <43.086868, 37.969612, 24.791739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397743, 37.867001, 25.021578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610290, 0.529826, -0.588923,
		-0.153359, 0.808378, 0.568336,
		0.777192, -0.256533, 0.574599,
		43.630901, 37.790039, 25.193958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376930, 38.619049, 24.976389>,  <43.086868, 37.969612, 24.791739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376930, 38.619049, 24.976389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.660385, 38.343109, 25.035645>,  <43.830456, 38.177544, 25.071198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.660385, 38.343109, 25.035645>,  <43.376930, 38.619049, 24.976389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660385, 38.343109, 25.035645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643331, 0.545491, -0.537183,
		0.289767, 0.475969, 0.830355,
		0.708633, -0.689851, 0.148141,
		43.872974, 38.136154, 25.080086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966293, 38.915894, 25.124485>,  <43.376930, 38.619049, 24.976389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966293, 38.915894, 25.124485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.139851, 38.564240, 25.045630>,  <44.243984, 38.353249, 24.998316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.139851, 38.564240, 25.045630>,  <43.966293, 38.915894, 25.124485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.139851, 38.564240, 25.045630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665643, 0.460256, -0.587439,
		0.607170, 0.123663, 0.784890,
		0.433895, -0.879131, -0.197138,
		44.270020, 38.300499, 24.986488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.803349, 38.931938, 25.148716>,  <43.966293, 38.915894, 25.124485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.803349, 38.931938, 25.148716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.720963, 38.627708, 24.902431>,  <44.671532, 38.445171, 24.754662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.720963, 38.627708, 24.902431>,  <44.803349, 38.931938, 25.148716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720963, 38.627708, 24.902431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676051, 0.344305, -0.651467,
		0.707483, -0.550434, 0.443272,
		-0.205968, -0.760576, -0.615712,
		44.659172, 38.399536, 24.717718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.485241, 38.690609, 24.836315>,  <44.803349, 38.931938, 25.148716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.485241, 38.690609, 24.836315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.195568, 38.567596, 24.589418>,  <45.021763, 38.493790, 24.441280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.195568, 38.567596, 24.589418>,  <45.485241, 38.690609, 24.836315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.195568, 38.567596, 24.589418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465678, 0.442084, -0.766620,
		0.508633, -0.842607, -0.176938,
		-0.724180, -0.307531, -0.617242,
		44.978313, 38.475338, 24.404245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.831314, 38.306831, 24.350529>,  <45.485241, 38.690609, 24.836315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.831314, 38.306831, 24.350529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.485737, 38.423771, 24.186512>,  <45.278389, 38.493935, 24.088102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.485737, 38.423771, 24.186512>,  <45.831314, 38.306831, 24.350529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.485737, 38.423771, 24.186512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494082, 0.334598, -0.802451,
		-0.097395, -0.895867, -0.433517,
		-0.863943, 0.292348, -0.410043,
		45.226555, 38.511475, 24.063499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.943409, 38.165615, 23.638197>,  <45.831314, 38.306831, 24.350529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.943409, 38.165615, 23.638197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.613823, 38.392048, 23.628115>,  <45.416073, 38.527908, 23.622066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.613823, 38.392048, 23.628115>,  <45.943409, 38.165615, 23.638197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613823, 38.392048, 23.628115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279420, 0.367215, -0.887174,
		-0.492955, -0.738044, -0.460746,
		-0.823966, 0.566079, -0.025204,
		45.366634, 38.561871, 23.620554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376419, 37.853615, 23.262255>,  <45.943409, 38.165615, 23.638197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.376419, 37.853615, 23.262255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.334064, 37.707973, 22.892126>,  <45.308651, 37.620590, 22.670050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.334064, 37.707973, 22.892126>,  <45.376419, 37.853615, 23.262255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334064, 37.707973, 22.892126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849874, -0.516239, 0.105883,
		-0.516239, -0.775195, 0.364102,
		-0.105883, -0.364102, -0.925321,
		45.302299, 37.598743, 22.614531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480656, 37.104527, 23.208874>,  <45.376419, 37.853615, 23.262255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480656, 37.104527, 23.208874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.585365, 37.273365, 22.861700>,  <45.648190, 37.374668, 22.653397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.585365, 37.273365, 22.861700>,  <45.480656, 37.104527, 23.208874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585365, 37.273365, 22.861700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790946, -0.609159, -0.057700,
		-0.553065, -0.671384, -0.493318,
		0.261770, 0.422100, -0.867933,
		45.663895, 37.399994, 22.601320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979961, 37.048286, 22.651939>,  <45.480656, 37.104527, 23.208874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979961, 37.048286, 22.651939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.781837, 36.783230, 22.427237>,  <44.662964, 36.624195, 22.292416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.781837, 36.783230, 22.427237>,  <44.979961, 37.048286, 22.651939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781837, 36.783230, 22.427237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324732, -0.458545, 0.827216,
		-0.805739, 0.592151, 0.011941,
		-0.495312, -0.662642, -0.561758,
		44.633244, 36.584438, 22.258709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256138, 37.066803, 22.870285>,  <44.979961, 37.048286, 22.651939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256138, 37.066803, 22.870285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.246590, 36.711037, 22.687693>,  <44.240860, 36.497578, 22.578138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.246590, 36.711037, 22.687693>,  <44.256138, 37.066803, 22.870285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246590, 36.711037, 22.687693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293679, -0.430225, 0.853615,
		-0.955606, 0.154433, -0.250933,
		-0.023868, -0.889414, -0.456479,
		44.239429, 36.444214, 22.550749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613796, 36.785057, 23.018538>,  <44.256138, 37.066803, 22.870285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613796, 36.785057, 23.018538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.821941, 36.458221, 22.919266>,  <43.946827, 36.262119, 22.859703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.821941, 36.458221, 22.919266>,  <43.613796, 36.785057, 23.018538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821941, 36.458221, 22.919266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483660, -0.521517, 0.702917,
		-0.703775, -0.245736, -0.666569,
		0.520359, -0.817089, -0.248178,
		43.978050, 36.213097, 22.844812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132019, 36.211689, 23.045868>,  <43.613796, 36.785057, 23.018538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132019, 36.211689, 23.045868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.484318, 36.022385, 23.052969>,  <43.695698, 35.908802, 23.057230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.484318, 36.022385, 23.052969>,  <43.132019, 36.211689, 23.045868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484318, 36.022385, 23.052969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359895, -0.644466, 0.674641,
		-0.307840, -0.600575, -0.737933,
		0.880744, -0.473259, 0.017751,
		43.748543, 35.880405, 23.058294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900227, 35.598637, 23.002663>,  <43.132019, 36.211689, 23.045868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900227, 35.598637, 23.002663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.272839, 35.577923, 23.146648>,  <43.496407, 35.565495, 23.233040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.272839, 35.577923, 23.146648>,  <42.900227, 35.598637, 23.002663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272839, 35.577923, 23.146648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321385, -0.580462, 0.748182,
		0.170200, -0.812639, -0.557360,
		0.931528, -0.051786, 0.359964,
		43.552296, 35.562386, 23.254637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093052, 34.881557, 23.124876>,  <42.900227, 35.598637, 23.002663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093052, 34.881557, 23.124876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.328526, 35.086647, 23.374857>,  <43.469810, 35.209702, 23.524845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.328526, 35.086647, 23.374857>,  <43.093052, 34.881557, 23.124876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328526, 35.086647, 23.374857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290785, -0.587043, 0.755529,
		0.754250, -0.626496, -0.196492,
		0.588686, 0.512721, 0.624953,
		43.505131, 35.240463, 23.562344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399490, 34.418068, 23.523981>,  <43.093052, 34.881557, 23.124876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399490, 34.418068, 23.523981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.414616, 34.753407, 23.741512>,  <43.423691, 34.954609, 23.872030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.414616, 34.753407, 23.741512>,  <43.399490, 34.418068, 23.523981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414616, 34.753407, 23.741512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386972, -0.489470, 0.781455,
		0.921316, -0.239997, 0.305907,
		0.037814, 0.838344, 0.543828,
		43.425961, 35.004910, 23.904661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756035, 34.280132, 24.099236>,  <43.399490, 34.418068, 23.523981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756035, 34.280132, 24.099236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.554630, 34.605156, 24.216690>,  <43.433788, 34.800171, 24.287163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.554630, 34.605156, 24.216690>,  <43.756035, 34.280132, 24.099236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554630, 34.605156, 24.216690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428137, -0.529853, 0.732089,
		0.750450, 0.242900, 0.614675,
		-0.503511, 0.812561, 0.293634,
		43.403576, 34.848923, 24.304781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821037, 34.239120, 24.830982>,  <43.756035, 34.280132, 24.099236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821037, 34.239120, 24.830982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.509533, 34.489227, 24.810713>,  <43.322632, 34.639294, 24.798552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.509533, 34.489227, 24.810713>,  <43.821037, 34.239120, 24.830982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.509533, 34.489227, 24.810713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358398, -0.377166, 0.853989,
		0.514860, 0.683216, 0.517818,
		-0.778762, 0.625270, -0.050675,
		43.275906, 34.676807, 24.795509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741028, 34.528057, 25.494505>,  <43.821037, 34.239120, 24.830982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741028, 34.528057, 25.494505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.382576, 34.587067, 25.327085>,  <43.167503, 34.622471, 25.226633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.382576, 34.587067, 25.327085>,  <43.741028, 34.528057, 25.494505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.382576, 34.587067, 25.327085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442908, -0.237974, 0.864408,
		0.027918, 0.960002, 0.278596,
		-0.896132, 0.147525, -0.418549,
		43.113735, 34.631325, 25.201521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261169, 34.876469, 25.992466>,  <43.741028, 34.528057, 25.494505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261169, 34.876469, 25.992466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.006321, 34.736492, 25.717768>,  <42.853413, 34.652504, 25.552948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.006321, 34.736492, 25.717768>,  <43.261169, 34.876469, 25.992466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.006321, 34.736492, 25.717768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566538, -0.391500, 0.725095,
		-0.522603, 0.851039, 0.051176,
		-0.637119, -0.349943, -0.686745,
		42.815186, 34.631508, 25.511744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657631, 35.211735, 26.209829>,  <43.261169, 34.876469, 25.992466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.657631, 35.211735, 26.209829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.547413, 34.907845, 25.974241>,  <42.481281, 34.725510, 25.832888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.547413, 34.907845, 25.974241>,  <42.657631, 35.211735, 26.209829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547413, 34.907845, 25.974241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654616, -0.300379, 0.693722,
		-0.703955, 0.576701, -0.414563,
		-0.275545, -0.759729, -0.588971,
		42.464748, 34.679924, 25.797550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846706, 35.220665, 26.083843>,  <42.657631, 35.211735, 26.209829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846706, 35.220665, 26.083843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.982487, 34.846226, 26.046972>,  <42.063953, 34.621563, 26.024849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.982487, 34.846226, 26.046972>,  <41.846706, 35.220665, 26.083843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982487, 34.846226, 26.046972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725223, -0.322866, 0.608120,
		-0.599020, -0.139578, -0.788475,
		0.339452, -0.936096, -0.092178,
		42.084324, 34.565395, 26.019320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276337, 34.845699, 25.984047>,  <41.846706, 35.220665, 26.083843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276337, 34.845699, 25.984047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.546574, 34.581596, 26.115282>,  <41.708717, 34.423134, 26.194023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.546574, 34.581596, 26.115282>,  <41.276337, 34.845699, 25.984047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546574, 34.581596, 26.115282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607553, -0.246464, 0.755073,
		-0.417678, -0.709451, -0.567648,
		0.675592, -0.660254, 0.328086,
		41.749252, 34.383522, 26.213707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781055, 34.392330, 25.644705>,  <41.276337, 34.845699, 25.984047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.781055, 34.392330, 25.644705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.434849, 34.480312, 25.464708>,  <40.227123, 34.533100, 25.356710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.434849, 34.480312, 25.464708>,  <40.781055, 34.392330, 25.644705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434849, 34.480312, 25.464708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489714, 0.183034, -0.852455,
		-0.105135, -0.958186, -0.266133,
		-0.865521, 0.219952, -0.449993,
		40.175194, 34.546299, 25.329710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686428, 33.989868, 24.938395>,  <40.781055, 34.392330, 25.644705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686428, 33.989868, 24.938395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.457226, 34.316029, 24.905468>,  <40.319702, 34.511726, 24.885712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.457226, 34.316029, 24.905468>,  <40.686428, 33.989868, 24.938395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457226, 34.316029, 24.905468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432187, 0.215308, -0.875704,
		-0.696329, -0.537363, -0.475781,
		-0.573010, 0.815404, -0.082316,
		40.285324, 34.560650, 24.880774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647736, 34.025879, 24.240891>,  <40.686428, 33.989868, 24.938395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647736, 34.025879, 24.240891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.518379, 34.384235, 24.362741>,  <40.440765, 34.599251, 24.435852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.518379, 34.384235, 24.362741>,  <40.647736, 34.025879, 24.240891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518379, 34.384235, 24.362741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297220, 0.401803, -0.866149,
		-0.898376, -0.189563, -0.396216,
		-0.323391, 0.895891, 0.304628,
		40.421360, 34.653004, 24.454130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409954, 34.268925, 23.688931>,  <40.647736, 34.025879, 24.240891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409954, 34.268925, 23.688931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.434498, 34.602936, 23.907642>,  <40.449223, 34.803341, 24.038870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.434498, 34.602936, 23.907642>,  <40.409954, 34.268925, 23.688931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434498, 34.602936, 23.907642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364361, 0.491265, -0.791138,
		-0.929234, 0.247768, -0.274108,
		0.061358, 0.835027, 0.546777,
		40.452904, 34.853443, 24.071676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018333, 34.646618, 23.219494>,  <40.409954, 34.268925, 23.688931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018333, 34.646618, 23.219494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.200897, 34.900185, 23.469244>,  <40.310436, 35.052322, 23.619095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.200897, 34.900185, 23.469244>,  <40.018333, 34.646618, 23.219494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200897, 34.900185, 23.469244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337758, 0.525768, -0.780696,
		-0.823171, 0.567204, 0.025855,
		0.456408, 0.633914, 0.624375,
		40.337818, 35.090359, 23.656557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775658, 35.321041, 23.115578>,  <40.018333, 34.646618, 23.219494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775658, 35.321041, 23.115578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.146038, 35.362644, 23.260790>,  <40.368267, 35.387608, 23.347918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.146038, 35.362644, 23.260790>,  <39.775658, 35.321041, 23.115578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146038, 35.362644, 23.260790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296927, 0.393451, -0.870075,
		-0.233328, 0.913444, 0.333435,
		0.925955, 0.104007, 0.363029,
		40.423824, 35.393845, 23.369699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987152, 35.852364, 22.635319>,  <39.775658, 35.321041, 23.115578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987152, 35.852364, 22.635319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.335403, 35.766937, 22.812588>,  <40.544353, 35.715683, 22.918949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.335403, 35.766937, 22.812588>,  <39.987152, 35.852364, 22.635319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335403, 35.766937, 22.812588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484974, 0.523742, -0.700353,
		-0.082537, 0.824672, 0.559557,
		0.870625, -0.213566, 0.443172,
		40.596592, 35.702866, 22.945539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802189, 36.407925, 23.261463>,  <39.987152, 35.852364, 22.635319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802189, 36.407925, 23.261463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.535603, 36.697002, 23.188211>,  <39.375652, 36.870449, 23.144260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.535603, 36.697002, 23.188211>,  <39.802189, 36.407925, 23.261463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535603, 36.697002, 23.188211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543915, -0.303332, 0.782398,
		0.509887, 0.621045, 0.595245,
		-0.666462, 0.722698, -0.183131,
		39.335663, 36.913811, 23.133272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772453, 36.631790, 23.939056>,  <39.802189, 36.407925, 23.261463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772453, 36.631790, 23.939056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.445766, 36.745964, 23.738459>,  <39.249756, 36.814468, 23.618099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.445766, 36.745964, 23.738459>,  <39.772453, 36.631790, 23.939056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445766, 36.745964, 23.738459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570665, -0.270744, 0.775267,
		0.085512, 0.919361, 0.384010,
		-0.816718, 0.285436, -0.501495,
		39.200752, 36.831596, 23.588011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433346, 36.984291, 24.346174>,  <39.772453, 36.631790, 23.939056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433346, 36.984291, 24.346174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.153576, 36.871185, 24.083616>,  <38.985714, 36.803322, 23.926081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.153576, 36.871185, 24.083616>,  <39.433346, 36.984291, 24.346174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153576, 36.871185, 24.083616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563868, -0.346014, 0.749885,
		-0.439163, 0.894605, 0.082567,
		-0.699420, -0.282765, -0.656396,
		38.943748, 36.786354, 23.886698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762585, 37.311146, 24.531456>,  <39.433346, 36.984291, 24.346174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762585, 37.311146, 24.531456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.704060, 36.976803, 24.319822>,  <38.668945, 36.776196, 24.192842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.704060, 36.976803, 24.319822>,  <38.762585, 37.311146, 24.531456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704060, 36.976803, 24.319822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732153, -0.268170, 0.626129,
		-0.665240, 0.478983, -0.572739,
		-0.146314, -0.835859, -0.529087,
		38.660164, 36.726044, 24.161097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919300, 37.257069, 24.463783>,  <38.762585, 37.311146, 24.531456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919300, 37.257069, 24.463783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.070950, 36.904118, 24.352299>,  <38.161942, 36.692348, 24.285408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.070950, 36.904118, 24.352299>,  <37.919300, 37.257069, 24.463783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070950, 36.904118, 24.352299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673454, -0.469672, 0.570849,
		-0.634606, -0.028723, -0.772302,
		0.379125, -0.882374, -0.278713,
		38.184689, 36.639404, 24.268684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313454, 36.988838, 24.168224>,  <37.919300, 37.257069, 24.463783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313454, 36.988838, 24.168224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580574, 36.721912, 24.300119>,  <37.740845, 36.561756, 24.379257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.580574, 36.721912, 24.300119>,  <37.313454, 36.988838, 24.168224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580574, 36.721912, 24.300119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689509, -0.387720, 0.611760,
		-0.280392, -0.635893, -0.719042,
		0.667801, -0.667318, 0.329740,
		37.780914, 36.521717, 24.399042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901592, 36.483448, 24.366301>,  <37.313454, 36.988838, 24.168224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901592, 36.483448, 24.366301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.245380, 36.397667, 24.551908>,  <37.451653, 36.346199, 24.663273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.245380, 36.397667, 24.551908>,  <36.901592, 36.483448, 24.366301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245380, 36.397667, 24.551908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511157, -0.351830, 0.784177,
		-0.004913, -0.911167, -0.412008,
		0.859473, -0.214454, 0.464021,
		37.503223, 36.333332, 24.691114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.723026, 40.862179, 22.753614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.032928, 40.659920, 22.905445>,  <43.218868, 40.538563, 22.996544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.032928, 40.659920, 22.905445>,  <42.723026, 40.862179, 22.753614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.032928, 40.659920, 22.905445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602165, -0.407074, 0.686796,
		-0.192763, -0.760663, -0.619866,
		0.774752, -0.505651, 0.379576,
		43.265354, 40.508224, 23.019318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522873, 40.150673, 22.749504>,  <42.723026, 40.862179, 22.753614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522873, 40.150673, 22.749504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.790348, 40.202553, 23.042360>,  <42.950832, 40.233681, 23.218075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.790348, 40.202553, 23.042360>,  <42.522873, 40.150673, 22.749504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790348, 40.202553, 23.042360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702238, -0.213452, 0.679191,
		0.244371, -0.968305, -0.051649,
		0.668688, 0.129705, 0.732142,
		42.990955, 40.241463, 23.262003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641953, 39.475719, 23.096558>,  <42.522873, 40.150673, 22.749504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641953, 39.475719, 23.096558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.711071, 39.792740, 23.330481>,  <42.752541, 39.982952, 23.470835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.711071, 39.792740, 23.330481>,  <42.641953, 39.475719, 23.096558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711071, 39.792740, 23.330481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635378, -0.363993, 0.681032,
		0.752620, -0.489251, 0.440676,
		0.172793, 0.792554, 0.584808,
		42.762909, 40.030506, 23.505922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736069, 39.205276, 23.821482>,  <42.641953, 39.475719, 23.096558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.736069, 39.205276, 23.821482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.686180, 39.599098, 23.870621>,  <42.656246, 39.835392, 23.900105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.686180, 39.599098, 23.870621>,  <42.736069, 39.205276, 23.821482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.686180, 39.599098, 23.870621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565258, -0.172264, 0.806727,
		0.815432, 0.031171, 0.578013,
		-0.124718, 0.984558, 0.122850,
		42.648766, 39.894466, 23.907476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871834, 39.353466, 24.493578>,  <42.736069, 39.205276, 23.821482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871834, 39.353466, 24.493578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.650574, 39.671547, 24.394234>,  <42.517818, 39.862396, 24.334627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.650574, 39.671547, 24.394234>,  <42.871834, 39.353466, 24.493578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.650574, 39.671547, 24.394234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679970, -0.258719, 0.686079,
		0.481313, 0.548383, 0.683823,
		-0.553153, 0.795198, -0.248359,
		42.484627, 39.910107, 24.319725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705383, 39.778069, 25.178059>,  <42.871834, 39.353466, 24.493578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705383, 39.778069, 25.178059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.442081, 39.857502, 24.887606>,  <42.284100, 39.905163, 24.713335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.442081, 39.857502, 24.887606>,  <42.705383, 39.778069, 25.178059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442081, 39.857502, 24.887606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752789, -0.177311, 0.633932,
		-0.002864, 0.963912, 0.266205,
		-0.658256, 0.198581, -0.726130,
		42.244606, 39.917076, 24.669767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223297, 40.276730, 25.494843>,  <42.705383, 39.778069, 25.178059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223297, 40.276730, 25.494843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.011967, 40.108009, 25.200100>,  <41.885166, 40.006779, 25.023254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.011967, 40.108009, 25.200100>,  <42.223297, 40.276730, 25.494843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.011967, 40.108009, 25.200100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788930, -0.076852, 0.609659,
		-0.313783, 0.903426, -0.292168,
		-0.528328, -0.421800, -0.736854,
		41.853470, 39.981468, 24.979044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600742, 40.622990, 25.539669>,  <42.223297, 40.276730, 25.494843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600742, 40.622990, 25.539669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.520554, 40.297386, 25.321608>,  <41.472443, 40.102024, 25.190771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.520554, 40.297386, 25.321608>,  <41.600742, 40.622990, 25.539669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520554, 40.297386, 25.321608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896066, -0.072619, 0.437941,
		-0.396078, 0.576289, -0.714852,
		-0.200469, -0.814013, -0.545156,
		41.460411, 40.053181, 25.158060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948250, 40.720177, 25.366806>,  <41.600742, 40.622990, 25.539669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948250, 40.720177, 25.366806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.996304, 40.326004, 25.318661>,  <41.025135, 40.089500, 25.289774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.996304, 40.326004, 25.318661>,  <40.948250, 40.720177, 25.366806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996304, 40.326004, 25.318661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888358, -0.160827, 0.430064,
		-0.443158, 0.055259, -0.894739,
		0.120133, -0.985435, -0.120362,
		41.032345, 40.030373, 25.282553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249599, 40.438560, 25.106138>,  <40.948250, 40.720177, 25.366806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249599, 40.438560, 25.106138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.477577, 40.170017, 25.295643>,  <40.614365, 40.008892, 25.409346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.477577, 40.170017, 25.295643>,  <40.249599, 40.438560, 25.106138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477577, 40.170017, 25.295643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799758, -0.320928, 0.507339,
		-0.188559, -0.668050, -0.719830,
		0.569941, -0.671353, 0.473764,
		40.648560, 39.968613, 25.437773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855923, 39.880688, 25.232079>,  <40.249599, 40.438560, 25.106138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855923, 39.880688, 25.232079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.150379, 39.787006, 25.486086>,  <40.327053, 39.730797, 25.638491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.150379, 39.787006, 25.486086>,  <39.855923, 39.880688, 25.232079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150379, 39.787006, 25.486086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655407, -0.480854, 0.582427,
		0.168946, -0.844943, -0.507474,
		0.736138, -0.234203, 0.635020,
		40.371220, 39.716743, 25.676592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690891, 39.254066, 25.402515>,  <39.855923, 39.880688, 25.232079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690891, 39.254066, 25.402515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.929192, 39.378685, 25.698631>,  <40.072170, 39.453457, 25.876301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.929192, 39.378685, 25.698631>,  <39.690891, 39.254066, 25.402515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929192, 39.378685, 25.698631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667122, -0.321318, 0.672089,
		0.447253, -0.894257, 0.016414,
		0.595746, 0.311544, 0.740288,
		40.107914, 39.472149, 25.920717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009388, 38.766705, 25.208832>,  <39.690891, 39.254066, 25.402515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009388, 38.766705, 25.208832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.727638, 39.042931, 25.143135>,  <38.558590, 39.208668, 25.103718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.727638, 39.042931, 25.143135>,  <39.009388, 38.766705, 25.208832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727638, 39.042931, 25.143135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505392, 0.325426, -0.799173,
		-0.498433, -0.645924, -0.578228,
		-0.704375, 0.690565, -0.164242,
		38.516327, 39.250099, 25.093863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893963, 38.708790, 24.525747>,  <39.009388, 38.766705, 25.208832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893963, 38.708790, 24.525747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.719650, 39.060242, 24.603823>,  <38.615063, 39.271114, 24.650667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.719650, 39.060242, 24.603823>,  <38.893963, 38.708790, 24.525747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719650, 39.060242, 24.603823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494468, 0.414918, -0.763770,
		-0.752059, -0.236326, -0.615270,
		-0.435785, 0.878631, 0.195187,
		38.588913, 39.323830, 24.662378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734116, 39.030704, 23.936068>,  <38.893963, 38.708790, 24.525747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734116, 39.030704, 23.936068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.718113, 39.341099, 24.187859>,  <38.708511, 39.527336, 24.338932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.718113, 39.341099, 24.187859>,  <38.734116, 39.030704, 23.936068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718113, 39.341099, 24.187859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391607, 0.591758, -0.704604,
		-0.919263, 0.218319, -0.327557,
		-0.040005, 0.775989, 0.629476,
		38.706112, 39.573895, 24.376701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447418, 39.473759, 23.497131>,  <38.734116, 39.030704, 23.936068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447418, 39.473759, 23.497131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.629303, 39.681297, 23.786694>,  <38.738434, 39.805820, 23.960430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.629303, 39.681297, 23.786694>,  <38.447418, 39.473759, 23.497131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629303, 39.681297, 23.786694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552723, 0.472948, -0.686161,
		-0.698381, 0.712124, -0.071723,
		0.454711, 0.518845, 0.723905,
		38.765717, 39.836952, 24.003864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451736, 40.166359, 23.208073>,  <38.447418, 39.473759, 23.497131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451736, 40.166359, 23.208073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.730869, 40.161785, 23.494541>,  <38.898350, 40.159042, 23.666422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.730869, 40.161785, 23.494541>,  <38.451736, 40.166359, 23.208073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730869, 40.161785, 23.494541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524877, 0.688518, -0.500447,
		-0.487375, 0.725129, 0.486470,
		0.697832, -0.011432, 0.716170,
		38.940220, 40.158356, 23.709393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578568, 40.829613, 23.237579>,  <38.451736, 40.166359, 23.208073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578568, 40.829613, 23.237579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.889458, 40.632957, 23.394657>,  <39.075993, 40.514965, 23.488903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.889458, 40.632957, 23.394657>,  <38.578568, 40.829613, 23.237579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889458, 40.632957, 23.394657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619063, 0.485792, -0.617063,
		0.112605, 0.722701, 0.681927,
		0.777226, -0.491640, 0.392695,
		39.122627, 40.485466, 23.512466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089775, 41.281094, 23.283134>,  <38.578568, 40.829613, 23.237579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089775, 41.281094, 23.283134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.272240, 40.925331, 23.294926>,  <39.381718, 40.711872, 23.302000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.272240, 40.925331, 23.294926>,  <39.089775, 41.281094, 23.283134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272240, 40.925331, 23.294926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568432, 0.265734, -0.778633,
		0.684688, 0.371943, 0.626786,
		0.456166, -0.889406, 0.029479,
		39.409088, 40.658508, 23.303770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695660, 41.403221, 23.307873>,  <39.089775, 41.281094, 23.283134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695660, 41.403221, 23.307873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.704506, 41.026825, 23.172791>,  <39.709812, 40.800987, 23.091742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.704506, 41.026825, 23.172791>,  <39.695660, 41.403221, 23.307873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704506, 41.026825, 23.172791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646781, 0.271045, -0.712888,
		0.762355, -0.202657, 0.614610,
		0.022115, -0.940991, -0.337707,
		39.711140, 40.744526, 23.071478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399475, 41.315453, 23.266720>,  <39.695660, 41.403221, 23.307873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399475, 41.315453, 23.266720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.219524, 41.039879, 23.039391>,  <40.111553, 40.874535, 22.902994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.219524, 41.039879, 23.039391>,  <40.399475, 41.315453, 23.266720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219524, 41.039879, 23.039391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652480, 0.180980, -0.735878,
		0.609823, -0.701870, 0.368096,
		-0.449872, -0.688930, -0.568322,
		40.084564, 40.833199, 22.868895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854774, 40.809170, 23.069036>,  <40.399475, 41.315453, 23.266720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854774, 40.809170, 23.069036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.568451, 40.789135, 22.790440>,  <40.396656, 40.777115, 22.623281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.568451, 40.789135, 22.790440>,  <40.854774, 40.809170, 23.069036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568451, 40.789135, 22.790440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676637, 0.196718, -0.709552,
		0.172551, -0.979180, -0.106925,
		-0.715813, -0.050085, -0.696494,
		40.353706, 40.774109, 22.581491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175461, 40.413929, 22.538208>,  <40.854774, 40.809170, 23.069036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175461, 40.413929, 22.538208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.857319, 40.571129, 22.353619>,  <40.666431, 40.665447, 22.242865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.857319, 40.571129, 22.353619>,  <41.175461, 40.413929, 22.538208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.857319, 40.571129, 22.353619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546747, 0.136483, -0.826099,
		-0.261671, -0.909355, -0.323422,
		-0.795359, 0.392997, -0.461473,
		40.618710, 40.689026, 22.215176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947521, 40.043961, 21.855001>,  <41.175461, 40.413929, 22.538208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947521, 40.043961, 21.855001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.785683, 40.405895, 21.801970>,  <40.688580, 40.623055, 21.770151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.785683, 40.405895, 21.801970>,  <40.947521, 40.043961, 21.855001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.785683, 40.405895, 21.801970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422981, 0.056622, -0.904368,
		-0.810797, -0.421980, -0.405637,
		-0.404593, 0.904836, -0.132580,
		40.664307, 40.677345, 21.762196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700680, 40.025097, 21.172808>,  <40.947521, 40.043961, 21.855001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700680, 40.025097, 21.172808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.718369, 40.414806, 21.261204>,  <40.728981, 40.648632, 21.314241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.718369, 40.414806, 21.261204>,  <40.700680, 40.025097, 21.172808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718369, 40.414806, 21.261204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263728, 0.201974, -0.943215,
		-0.963583, 0.099995, -0.248011,
		0.044225, 0.974273, 0.220990,
		40.731636, 40.707088, 21.327501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.765408, 39.337036, 21.480057>,  <40.700680, 40.025097, 21.172808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.765408, 39.337036, 21.480057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.593582, 39.177822, 21.155825>,  <40.490486, 39.082294, 20.961285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.593582, 39.177822, 21.155825>,  <40.765408, 39.337036, 21.480057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593582, 39.177822, 21.155825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606201, -0.538203, 0.585540,
		-0.669322, 0.742904, -0.010094,
		-0.429567, -0.398034, -0.810581,
		40.464710, 39.058411, 20.912651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986614, 39.403046, 21.497599>,  <40.765408, 39.337036, 21.480057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986614, 39.403046, 21.497599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.096336, 39.090054, 21.274000>,  <40.162170, 38.902260, 21.139841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.096336, 39.090054, 21.274000>,  <39.986614, 39.403046, 21.497599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096336, 39.090054, 21.274000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600328, -0.593451, 0.536118,
		-0.751239, 0.188519, -0.632535,
		0.274310, -0.782481, -0.558997,
		40.178631, 38.855309, 21.106300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275047, 39.066006, 21.321926>,  <39.986614, 39.403046, 21.497599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275047, 39.066006, 21.321926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.568882, 38.800255, 21.266815>,  <39.745182, 38.640804, 21.233747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.568882, 38.800255, 21.266815>,  <39.275047, 39.066006, 21.321926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568882, 38.800255, 21.266815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524413, -0.684778, 0.506035,
		-0.430544, -0.299476, -0.851438,
		0.734591, -0.664375, -0.137778,
		39.789261, 38.600941, 21.225481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969543, 38.491695, 21.204409>,  <39.275047, 39.066006, 21.321926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969543, 38.491695, 21.204409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.327633, 38.342865, 21.302504>,  <39.542488, 38.253567, 21.361361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.327633, 38.342865, 21.302504>,  <38.969543, 38.491695, 21.204409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327633, 38.342865, 21.302504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427823, -0.563638, 0.706598,
		-0.124681, -0.737479, -0.663762,
		0.895222, -0.372072, 0.245235,
		39.596199, 38.231243, 21.376074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748154, 37.873852, 21.299103>,  <38.969543, 38.491695, 21.204409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748154, 37.873852, 21.299103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.098640, 37.905308, 21.489288>,  <39.308933, 37.924179, 21.603399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.098640, 37.905308, 21.489288>,  <38.748154, 37.873852, 21.299103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098640, 37.905308, 21.489288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388579, -0.468288, 0.793545,
		0.285058, -0.880070, -0.379762,
		0.876213, 0.078638, 0.475465,
		39.361504, 37.928898, 21.631927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916664, 37.193737, 21.484791>,  <38.748154, 37.873852, 21.299103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916664, 37.193737, 21.484791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.150803, 37.424549, 21.712618>,  <39.291286, 37.563038, 21.849314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.150803, 37.424549, 21.712618>,  <38.916664, 37.193737, 21.484791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150803, 37.424549, 21.712618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269184, -0.524333, 0.807846,
		0.764794, -0.626187, -0.151588,
		0.585346, 0.577030, 0.569567,
		39.326405, 37.597660, 21.883488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418812, 36.744602, 21.896065>,  <38.916664, 37.193737, 21.484791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418812, 36.744602, 21.896065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.410660, 37.092613, 22.093096>,  <39.405769, 37.301422, 22.211313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.410660, 37.092613, 22.093096>,  <39.418812, 36.744602, 21.896065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410660, 37.092613, 22.093096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162680, -0.488999, 0.856980,
		0.986468, -0.062667, 0.151502,
		-0.020380, 0.870031, 0.492577,
		39.404545, 37.353622, 22.240870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966518, 36.809109, 22.409012>,  <39.418812, 36.744602, 21.896065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966518, 36.809109, 22.409012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.677284, 37.053078, 22.538715>,  <39.503742, 37.199459, 22.616537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.677284, 37.053078, 22.538715>,  <39.966518, 36.809109, 22.409012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677284, 37.053078, 22.538715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164923, -0.608286, 0.776394,
		0.670783, 0.507921, 0.540432,
		-0.723085, 0.609921, 0.324260,
		39.460358, 37.236053, 22.635994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470196, 36.580048, 22.923252>,  <39.966518, 36.809109, 22.409012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470196, 36.580048, 22.923252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.713402, 36.269981, 22.854624>,  <40.859325, 36.083942, 22.813446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.713402, 36.269981, 22.854624>,  <40.470196, 36.580048, 22.923252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713402, 36.269981, 22.854624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491684, 0.537328, -0.685220,
		0.623347, 0.332267, 0.707840,
		0.608018, -0.775163, -0.171571,
		40.895805, 36.037434, 22.803152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121975, 36.882629, 22.831205>,  <40.470196, 36.580048, 22.923252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121975, 36.882629, 22.831205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.182453, 36.530224, 22.651894>,  <41.218739, 36.318779, 22.544306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.182453, 36.530224, 22.651894>,  <41.121975, 36.882629, 22.831205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182453, 36.530224, 22.651894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587341, 0.444827, -0.676135,
		0.795092, -0.161068, 0.584710,
		0.151191, -0.881014, -0.448280,
		41.227810, 36.265919, 22.517410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831478, 36.785114, 22.754475>,  <41.121975, 36.882629, 22.831205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831478, 36.785114, 22.754475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.661182, 36.536041, 22.491867>,  <41.559006, 36.386597, 22.334303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.661182, 36.536041, 22.491867>,  <41.831478, 36.785114, 22.754475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661182, 36.536041, 22.491867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579948, 0.369160, -0.726211,
		0.694557, -0.689922, 0.203956,
		-0.425736, -0.622678, -0.656521,
		41.533463, 36.349239, 22.294910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.407784, 36.611500, 22.480391>,  <41.831478, 36.785114, 22.754475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.407784, 36.611500, 22.480391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.107113, 36.506912, 22.238194>,  <41.926712, 36.444160, 22.092875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.107113, 36.506912, 22.238194>,  <42.407784, 36.611500, 22.480391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107113, 36.506912, 22.238194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561250, 0.228584, -0.795454,
		0.346393, -0.937755, -0.025071,
		-0.751672, -0.261468, -0.605495,
		41.881611, 36.428471, 22.056545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752495, 36.267246, 21.909229>,  <42.407784, 36.611500, 22.480391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752495, 36.267246, 21.909229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.395531, 36.389797, 21.776724>,  <42.181351, 36.463329, 21.697220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.395531, 36.389797, 21.776724>,  <42.752495, 36.267246, 21.909229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395531, 36.389797, 21.776724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448177, 0.516660, -0.729520,
		-0.052357, -0.799497, -0.598384,
		-0.892410, 0.306378, -0.331265,
		42.127808, 36.481712, 21.677343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764008, 35.986786, 21.158089>,  <42.752495, 36.267246, 21.909229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764008, 35.986786, 21.158089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.489235, 36.273491, 21.206062>,  <42.324371, 36.445515, 21.234846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.489235, 36.273491, 21.206062>,  <42.764008, 35.986786, 21.158089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489235, 36.273491, 21.206062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257298, 0.394217, -0.882264,
		-0.679653, -0.575192, -0.455220,
		-0.686927, 0.716761, 0.119935,
		42.283157, 36.488518, 21.242043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446930, 35.984161, 20.456846>,  <42.764008, 35.986786, 21.158089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446930, 35.984161, 20.456846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.379799, 36.320404, 20.662840>,  <42.339520, 36.522152, 20.786436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.379799, 36.320404, 20.662840>,  <42.446930, 35.984161, 20.456846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379799, 36.320404, 20.662840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324674, 0.540382, -0.776257,
		-0.930817, 0.036925, -0.363615,
		-0.167827, 0.840609, 0.514985,
		42.329453, 36.572586, 20.817335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038425, 36.363003, 19.938749>,  <42.446930, 35.984161, 20.456846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038425, 36.363003, 19.938749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.209404, 36.610088, 20.202784>,  <42.311993, 36.758339, 20.361204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.209404, 36.610088, 20.202784>,  <42.038425, 36.363003, 19.938749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209404, 36.610088, 20.202784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252358, 0.619600, -0.743244,
		-0.868104, 0.484276, 0.108961,
		0.427448, 0.617716, 0.660088,
		42.337639, 36.795403, 20.400810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155361, 36.859608, 19.514019>,  <42.038425, 36.363003, 19.938749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155361, 36.859608, 19.514019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.356277, 36.964535, 19.843599>,  <42.476826, 37.027493, 20.041348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.356277, 36.964535, 19.843599>,  <42.155361, 36.859608, 19.514019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356277, 36.964535, 19.843599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569077, 0.617147, -0.543397,
		-0.651041, 0.741834, 0.160708,
		0.502291, 0.262318, 0.823949,
		42.506966, 37.043232, 20.090784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.525024, 32.268669, 34.159801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910423, 32.169067, 34.199154>,  <35.141663, 32.109306, 34.222763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.910423, 32.169067, 34.199154>,  <34.525024, 32.268669, 34.159801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910423, 32.169067, 34.199154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098935, -0.010314, -0.995040,
		0.248782, 0.968448, 0.014698,
		0.963493, -0.249003, 0.098379,
		35.199471, 32.094368, 34.228668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911434, 32.772873, 33.814205>,  <34.525024, 32.268669, 34.159801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911434, 32.772873, 33.814205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137070, 32.442589, 33.812641>,  <35.272449, 32.244419, 33.811703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.137070, 32.442589, 33.812641>,  <34.911434, 32.772873, 33.814205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137070, 32.442589, 33.812641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245097, 0.171960, -0.954126,
		0.788500, 0.537252, 0.299378,
		0.564087, -0.825706, -0.003912,
		35.306297, 32.194878, 33.811466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558624, 32.964409, 33.639198>,  <34.911434, 32.772873, 33.814205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558624, 32.964409, 33.639198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570004, 32.573586, 33.554783>,  <35.576832, 32.339092, 33.504131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.570004, 32.573586, 33.554783>,  <35.558624, 32.964409, 33.639198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570004, 32.573586, 33.554783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421389, 0.203173, -0.883828,
		0.906434, -0.063789, 0.417503,
		0.028447, -0.977063, -0.211043,
		35.578537, 32.280468, 33.491470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185417, 32.860229, 33.412003>,  <35.558624, 32.964409, 33.639198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185417, 32.860229, 33.412003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982292, 32.539154, 33.286900>,  <35.860416, 32.346508, 33.211838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.982292, 32.539154, 33.286900>,  <36.185417, 32.860229, 33.412003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982292, 32.539154, 33.286900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630185, -0.098596, -0.770160,
		0.587366, -0.588185, 0.555913,
		-0.507808, -0.802693, -0.312753,
		35.829948, 32.298347, 33.193073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637859, 32.509575, 33.204327>,  <36.185417, 32.860229, 33.412003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637859, 32.509575, 33.204327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328079, 32.337498, 33.018784>,  <36.142212, 32.234249, 32.907459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328079, 32.337498, 33.018784>,  <36.637859, 32.509575, 33.204327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328079, 32.337498, 33.018784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530167, -0.041259, -0.846889,
		0.345190, -0.901792, 0.260029,
		-0.774446, -0.430196, -0.463859,
		36.095745, 32.208439, 32.879627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915707, 31.965031, 32.786034>,  <36.637859, 32.509575, 33.204327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915707, 31.965031, 32.786034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.557785, 32.036190, 32.622242>,  <36.343033, 32.078884, 32.523968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.557785, 32.036190, 32.622242>,  <36.915707, 31.965031, 32.786034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557785, 32.036190, 32.622242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425977, 0.065607, -0.902352,
		-0.133663, -0.981859, -0.134487,
		-0.894806, 0.177900, -0.409480,
		36.289345, 32.089561, 32.499397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868263, 31.458284, 32.204781>,  <36.915707, 31.965031, 32.786034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868263, 31.458284, 32.204781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.619144, 31.756207, 32.108959>,  <36.469673, 31.934959, 32.051464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.619144, 31.756207, 32.108959>,  <36.868263, 31.458284, 32.204781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619144, 31.756207, 32.108959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473083, 0.114629, -0.873529,
		-0.623147, -0.657364, -0.423745,
		-0.622800, 0.744804, -0.239557,
		36.432304, 31.979647, 32.037090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683468, 31.353878, 31.476442>,  <36.868263, 31.458284, 32.204781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683468, 31.353878, 31.476442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.565212, 31.729860, 31.544655>,  <36.494259, 31.955450, 31.585583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.565212, 31.729860, 31.544655>,  <36.683468, 31.353878, 31.476442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565212, 31.729860, 31.544655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417372, 0.287663, -0.862004,
		-0.859301, -0.183668, -0.477356,
		-0.295640, 0.939956, 0.170531,
		36.476521, 32.011848, 31.595814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452671, 31.607544, 30.803812>,  <36.683468, 31.353878, 31.476442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452671, 31.607544, 30.803812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.508133, 31.946438, 31.008934>,  <36.541412, 32.149773, 31.132008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.508133, 31.946438, 31.008934>,  <36.452671, 31.607544, 30.803812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508133, 31.946438, 31.008934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367686, 0.436757, -0.821006,
		-0.919555, 0.302390, -0.250956,
		0.138657, 0.847233, 0.512806,
		36.549728, 32.200607, 31.162775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307564, 32.160358, 30.263042>,  <36.452671, 31.607544, 30.803812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307564, 32.160358, 30.263042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.488499, 32.317917, 30.583103>,  <36.597057, 32.412453, 30.775139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.488499, 32.317917, 30.583103>,  <36.307564, 32.160358, 30.263042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488499, 32.317917, 30.583103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251610, 0.804377, -0.538211,
		-0.855620, 0.444777, 0.264740,
		0.452334, 0.393893, 0.800151,
		36.624199, 32.436085, 30.823149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036728, 32.850357, 30.433855>,  <36.307564, 32.160358, 30.263042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036728, 32.850357, 30.433855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.414719, 32.793823, 30.551863>,  <36.641514, 32.759903, 30.622667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.414719, 32.793823, 30.551863>,  <36.036728, 32.850357, 30.433855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414719, 32.793823, 30.551863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323142, 0.543663, -0.774603,
		-0.050909, 0.827317, 0.559424,
		0.944980, -0.141339, 0.295019,
		36.698212, 32.751423, 30.640368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328575, 33.551056, 30.388208>,  <36.036728, 32.850357, 30.433855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328575, 33.551056, 30.388208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.644085, 33.305298, 30.395788>,  <36.833389, 33.157845, 30.400335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.644085, 33.305298, 30.395788>,  <36.328575, 33.551056, 30.388208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644085, 33.305298, 30.395788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384322, 0.468871, -0.795272,
		0.479726, 0.634571, 0.605957,
		0.788771, -0.614394, 0.018950,
		36.880718, 33.120979, 30.401474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227737, 34.349648, 30.352058>,  <36.328575, 33.551056, 30.388208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227737, 34.349648, 30.352058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897709, 34.442596, 30.146042>,  <35.699692, 34.498367, 30.022432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.897709, 34.442596, 30.146042>,  <36.227737, 34.349648, 30.352058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897709, 34.442596, 30.146042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534331, -0.024493, 0.844920,
		0.183722, 0.972318, 0.144373,
		-0.825067, 0.232373, -0.515040,
		35.650188, 34.512310, 29.991529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814861, 34.730698, 30.890123>,  <36.227737, 34.349648, 30.352058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814861, 34.730698, 30.890123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558567, 34.673195, 30.588449>,  <35.404789, 34.638695, 30.407446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558567, 34.673195, 30.588449>,  <35.814861, 34.730698, 30.890123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558567, 34.673195, 30.588449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727836, -0.198919, 0.656266,
		-0.244363, 0.969415, 0.022823,
		-0.640735, -0.143756, -0.754184,
		35.366348, 34.630070, 30.362194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294849, 35.240017, 30.985401>,  <35.814861, 34.730698, 30.890123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294849, 35.240017, 30.985401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154091, 34.932259, 30.772158>,  <35.069633, 34.747604, 30.644213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.154091, 34.932259, 30.772158>,  <35.294849, 35.240017, 30.985401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154091, 34.932259, 30.772158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677239, -0.183879, 0.712415,
		-0.646154, 0.611739, -0.456356,
		-0.351898, -0.769392, -0.533108,
		35.048523, 34.701443, 30.612225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637657, 35.235455, 31.119513>,  <35.294849, 35.240017, 30.985401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637657, 35.235455, 31.119513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667072, 34.876984, 30.944490>,  <34.684719, 34.661900, 30.839478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667072, 34.876984, 30.944490>,  <34.637657, 35.235455, 31.119513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667072, 34.876984, 30.944490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856571, -0.281458, 0.432513,
		-0.510763, 0.342992, -0.788339,
		0.073536, -0.896180, -0.437555,
		34.689133, 34.608131, 30.813225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965324, 35.062824, 30.938173>,  <34.637657, 35.235455, 31.119513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965324, 35.062824, 30.938173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.141048, 34.703518, 30.933876>,  <34.246483, 34.487934, 30.931297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.141048, 34.703518, 30.933876>,  <33.965324, 35.062824, 30.938173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141048, 34.703518, 30.933876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790359, -0.392169, 0.470676,
		-0.427009, -0.198279, -0.882241,
		0.439312, -0.898270, -0.010749,
		34.272842, 34.434036, 30.930653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442837, 34.585506, 30.724291>,  <33.965324, 35.062824, 30.938173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442837, 34.585506, 30.724291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721375, 34.400047, 30.943430>,  <33.888496, 34.288773, 31.074913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.721375, 34.400047, 30.943430>,  <33.442837, 34.585506, 30.724291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721375, 34.400047, 30.943430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706014, -0.305280, 0.639021,
		-0.129033, -0.831767, -0.539921,
		0.696344, -0.463646, 0.547848,
		33.930279, 34.260952, 31.107784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077404, 34.005444, 30.904671>,  <33.442837, 34.585506, 30.724291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077404, 34.005444, 30.904671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.397446, 34.013039, 31.144497>,  <33.589470, 34.017597, 31.288393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.397446, 34.013039, 31.144497>,  <33.077404, 34.005444, 30.904671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397446, 34.013039, 31.144497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567951, -0.297683, 0.767344,
		0.193054, -0.954476, -0.227390,
		0.800101, 0.018992, 0.599564,
		33.637478, 34.018738, 31.324366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022663, 33.431549, 31.332220>,  <33.077404, 34.005444, 30.904671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022663, 33.431549, 31.332220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272541, 33.671680, 31.531965>,  <33.422466, 33.815758, 31.651814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272541, 33.671680, 31.531965>,  <33.022663, 33.431549, 31.332220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272541, 33.671680, 31.531965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622956, -0.002456, 0.782253,
		0.470837, -0.799748, 0.372445,
		0.624690, 0.600331, 0.499364,
		33.459949, 33.851780, 31.681774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862328, 33.128548, 31.999802>,  <33.022663, 33.431549, 31.332220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862328, 33.128548, 31.999802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036877, 33.481094, 32.072212>,  <33.141605, 33.692623, 32.115658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036877, 33.481094, 32.072212>,  <32.862328, 33.128548, 31.999802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036877, 33.481094, 32.072212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726099, 0.226124, 0.649345,
		0.531377, -0.414799, 0.738634,
		0.436370, 0.881368, 0.181028,
		33.167789, 33.745506, 32.126522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031693, 33.151558, 32.724487>,  <32.862328, 33.128548, 31.999802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031693, 33.151558, 32.724487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998497, 33.533058, 32.608921>,  <32.978580, 33.761959, 32.539581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.998497, 33.533058, 32.608921>,  <33.031693, 33.151558, 32.724487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998497, 33.533058, 32.608921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629890, 0.174454, 0.756839,
		0.772238, 0.244793, 0.586281,
		-0.082990, 0.953752, -0.288912,
		32.973598, 33.819183, 32.522247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990654, 33.404919, 33.247662>,  <33.031693, 33.151558, 32.724487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990654, 33.404919, 33.247662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.826149, 33.693043, 33.024231>,  <32.727448, 33.865917, 32.890171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.826149, 33.693043, 33.024231>,  <32.990654, 33.404919, 33.247662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826149, 33.693043, 33.024231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583029, 0.263176, 0.768645,
		0.700671, 0.641783, 0.311730,
		-0.411264, 0.720314, -0.558578,
		32.702770, 33.909138, 32.856659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999065, 33.963688, 33.651608>,  <32.990654, 33.404919, 33.247662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999065, 33.963688, 33.651608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719864, 34.001514, 33.367676>,  <32.552345, 34.024212, 33.197319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.719864, 34.001514, 33.367676>,  <32.999065, 33.963688, 33.651608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719864, 34.001514, 33.367676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674256, 0.247075, 0.695940,
		0.241193, 0.964371, -0.108697,
		-0.698001, 0.094566, -0.709825,
		32.510464, 34.029884, 33.154728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642754, 34.623219, 33.752853>,  <32.999065, 33.963688, 33.651608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642754, 34.623219, 33.752853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383965, 34.422848, 33.522896>,  <32.228691, 34.302628, 33.384922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383965, 34.422848, 33.522896>,  <32.642754, 34.623219, 33.752853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383965, 34.422848, 33.522896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750624, 0.285753, 0.595742,
		-0.134144, 0.816957, -0.560879,
		-0.646969, -0.500925, -0.574896,
		32.189873, 34.272572, 33.350426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023506, 35.051014, 33.526566>,  <32.642754, 34.623219, 33.752853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023506, 35.051014, 33.526566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.892803, 34.675297, 33.484684>,  <31.814381, 34.449867, 33.459557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.892803, 34.675297, 33.484684>,  <32.023506, 35.051014, 33.526566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892803, 34.675297, 33.484684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827854, 0.231012, 0.511167,
		-0.455947, 0.253706, -0.853080,
		-0.326757, -0.939291, -0.104702,
		31.794775, 34.393509, 33.453274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578655, 35.605942, 33.826553>,  <32.023506, 35.051014, 33.526566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578655, 35.605942, 33.826553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.727242, 35.897842, 34.056156>,  <31.816393, 36.072983, 34.193916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.727242, 35.897842, 34.056156>,  <31.578655, 35.605942, 33.826553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727242, 35.897842, 34.056156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797183, 0.066226, -0.600094,
		-0.475931, 0.680501, -0.557142,
		0.371467, 0.729748, 0.574003,
		31.838682, 36.116768, 34.228355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799883, 36.255394, 33.480431>,  <31.578655, 35.605942, 33.826553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799883, 36.255394, 33.480431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029118, 36.163696, 33.795139>,  <32.166660, 36.108677, 33.983967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029118, 36.163696, 33.795139>,  <31.799883, 36.255394, 33.480431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029118, 36.163696, 33.795139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806570, -0.012042, -0.591016,
		0.144963, 0.973293, 0.178004,
		0.573088, -0.229249, 0.786775,
		32.201042, 36.094921, 34.031174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287422, 36.698746, 33.141003>,  <31.799883, 36.255394, 33.480431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287422, 36.698746, 33.141003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.660980, 36.598408, 33.242920>,  <32.885117, 36.538204, 33.304070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.660980, 36.598408, 33.242920>,  <32.287422, 36.698746, 33.141003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660980, 36.598408, 33.242920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347438, 0.468402, -0.812334,
		0.084427, 0.847157, 0.524592,
		0.933894, -0.250846, 0.254789,
		32.941147, 36.523155, 33.319355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770237, 37.339455, 33.107384>,  <32.287422, 36.698746, 33.141003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770237, 37.339455, 33.107384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.004475, 37.018772, 33.059467>,  <33.145016, 36.826363, 33.030720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.004475, 37.018772, 33.059467>,  <32.770237, 37.339455, 33.107384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004475, 37.018772, 33.059467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478083, 0.460921, -0.747656,
		0.654611, 0.380555, 0.653194,
		0.585595, -0.801704, -0.119787,
		33.180153, 36.778259, 33.023533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409317, 37.615505, 32.863708>,  <32.770237, 37.339455, 33.107384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409317, 37.615505, 32.863708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481873, 37.231525, 32.778297>,  <33.525406, 37.001137, 32.727051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481873, 37.231525, 32.778297>,  <33.409317, 37.615505, 32.863708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481873, 37.231525, 32.778297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670144, 0.279563, -0.687569,
		0.719726, -0.018377, 0.694015,
		0.181385, -0.959951, -0.213524,
		33.536289, 36.943539, 32.714241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139965, 37.589108, 32.710827>,  <33.409317, 37.615505, 32.863708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139965, 37.589108, 32.710827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971485, 37.262615, 32.552662>,  <33.870396, 37.066719, 32.457764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971485, 37.262615, 32.552662>,  <34.139965, 37.589108, 32.710827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971485, 37.262615, 32.552662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272529, 0.301917, -0.913550,
		0.865052, -0.492551, 0.095280,
		-0.421204, -0.816235, -0.395408,
		33.845123, 37.017746, 32.434040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619438, 37.326508, 32.305813>,  <34.139965, 37.589108, 32.710827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619438, 37.326508, 32.305813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283009, 37.171200, 32.155167>,  <34.081150, 37.078014, 32.064777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283009, 37.171200, 32.155167>,  <34.619438, 37.326508, 32.305813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283009, 37.171200, 32.155167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298161, 0.248152, -0.921694,
		0.451325, -0.887506, -0.092947,
		-0.841074, -0.388270, -0.376617,
		34.030685, 37.054718, 32.042183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831413, 37.083542, 31.644684>,  <34.619438, 37.326508, 32.305813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831413, 37.083542, 31.644684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431633, 37.072174, 31.637890>,  <34.191765, 37.065353, 31.633814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431633, 37.072174, 31.637890>,  <34.831413, 37.083542, 31.644684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431633, 37.072174, 31.637890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008287, 0.281904, -0.959407,
		0.032058, -0.959021, -0.281514,
		-0.999452, -0.028424, -0.016985,
		34.131798, 37.063648, 31.632793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611340, 36.648518, 31.042974>,  <34.831413, 37.083542, 31.644684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611340, 36.648518, 31.042974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300041, 36.885773, 31.125452>,  <34.113262, 37.028126, 31.174938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300041, 36.885773, 31.125452>,  <34.611340, 36.648518, 31.042974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300041, 36.885773, 31.125452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068344, 0.246402, -0.966755,
		-0.624224, -0.766469, -0.151226,
		-0.778250, 0.593136, 0.206194,
		34.066566, 37.063713, 31.187309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144508, 36.550358, 30.481245>,  <34.611340, 36.648518, 31.042974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144508, 36.550358, 30.481245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040718, 36.894516, 30.656698>,  <33.978443, 37.101009, 30.761971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.040718, 36.894516, 30.656698>,  <34.144508, 36.550358, 30.481245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040718, 36.894516, 30.656698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083849, 0.432401, -0.897774,
		-0.962103, -0.269727, -0.040053,
		-0.259473, 0.860393, 0.438631,
		33.962875, 37.152634, 30.788288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665710, 36.826267, 30.055136>,  <34.144508, 36.550358, 30.481245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665710, 36.826267, 30.055136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826801, 37.124577, 30.267410>,  <33.923454, 37.303562, 30.394775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826801, 37.124577, 30.267410>,  <33.665710, 36.826267, 30.055136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826801, 37.124577, 30.267410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130945, 0.526876, -0.839795,
		-0.905906, 0.407698, 0.114530,
		0.402726, 0.745778, 0.530686,
		33.947620, 37.348309, 30.426617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359894, 37.417061, 29.796339>,  <33.665710, 36.826267, 30.055136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359894, 37.417061, 29.796339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.675911, 37.572212, 29.986235>,  <33.865520, 37.665302, 30.100172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.675911, 37.572212, 29.986235>,  <33.359894, 37.417061, 29.796339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675911, 37.572212, 29.986235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258311, 0.491673, -0.831585,
		-0.555972, 0.779620, 0.288250,
		0.790045, 0.387880, 0.474741,
		33.912926, 37.688576, 30.128656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474522, 38.094887, 29.554008>,  <33.359894, 37.417061, 29.796339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474522, 38.094887, 29.554008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826805, 38.021297, 29.728596>,  <34.038177, 37.977142, 29.833347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.826805, 38.021297, 29.728596>,  <33.474522, 38.094887, 29.554008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826805, 38.021297, 29.728596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448883, 0.618289, -0.645153,
		-0.151172, 0.764116, 0.627116,
		0.880711, -0.183973, 0.436466,
		34.091019, 37.966106, 29.859535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864998, 38.671761, 29.543823>,  <33.474522, 38.094887, 29.554008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864998, 38.671761, 29.543823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137493, 38.380383, 29.572910>,  <34.300991, 38.205555, 29.590363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137493, 38.380383, 29.572910>,  <33.864998, 38.671761, 29.543823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137493, 38.380383, 29.572910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561349, 0.456028, -0.690598,
		0.469900, 0.511281, 0.719573,
		0.681235, -0.728444, 0.072719,
		34.341866, 38.161850, 29.594727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507809, 39.048603, 29.505716>,  <33.864998, 38.671761, 29.543823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507809, 39.048603, 29.505716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.621788, 38.669373, 29.449203>,  <34.690178, 38.441833, 29.415297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.621788, 38.669373, 29.449203>,  <34.507809, 39.048603, 29.505716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621788, 38.669373, 29.449203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717567, 0.308710, -0.624336,
		0.635531, 0.076526, 0.768274,
		0.284952, -0.948073, -0.141282,
		34.707275, 38.384953, 29.406818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226578, 39.076412, 29.548723>,  <34.507809, 39.048603, 29.505716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226578, 39.076412, 29.548723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.147869, 38.733704, 29.358053>,  <35.100643, 38.528076, 29.243652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.147869, 38.733704, 29.358053>,  <35.226578, 39.076412, 29.548723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147869, 38.733704, 29.358053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715384, 0.206996, -0.667367,
		0.670453, -0.472324, 0.572191,
		-0.196773, -0.856774, -0.476674,
		35.088837, 38.476673, 29.215052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924000, 38.745392, 29.393682>,  <35.226578, 39.076412, 29.548723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924000, 38.745392, 29.393682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.670368, 38.566372, 29.141445>,  <35.518188, 38.458961, 28.990103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.670368, 38.566372, 29.141445>,  <35.924000, 38.745392, 29.393682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670368, 38.566372, 29.141445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650040, 0.133164, -0.748141,
		0.418803, -0.884288, 0.206490,
		-0.634076, -0.447551, -0.630592,
		35.480145, 38.432106, 28.952267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295837, 38.306992, 28.979725>,  <35.924000, 38.745392, 29.393682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295837, 38.306992, 28.979725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969452, 38.388119, 28.763184>,  <35.773621, 38.436794, 28.633259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969452, 38.388119, 28.763184>,  <36.295837, 38.306992, 28.979725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969452, 38.388119, 28.763184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569871, 0.124757, -0.812208,
		-0.097191, -0.971237, -0.217376,
		-0.815966, 0.202815, -0.541355,
		35.724663, 38.448963, 28.600777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417690, 37.920258, 28.428019>,  <36.295837, 38.306992, 28.979725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417690, 37.920258, 28.428019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128799, 38.167629, 28.304119>,  <35.955467, 38.316051, 28.229780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.128799, 38.167629, 28.304119>,  <36.417690, 37.920258, 28.428019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128799, 38.167629, 28.304119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482734, 0.129971, -0.866069,
		-0.495341, -0.775021, -0.392403,
		-0.722223, 0.618426, -0.309749,
		35.912132, 38.353157, 28.211195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267513, 37.630074, 27.837212>,  <36.417690, 37.920258, 28.428019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267513, 37.630074, 27.837212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.153900, 38.013561, 27.831739>,  <36.085732, 38.243652, 27.828455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.153900, 38.013561, 27.831739>,  <36.267513, 37.630074, 27.837212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153900, 38.013561, 27.831739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482722, 0.130655, -0.865973,
		-0.828435, -0.252569, -0.499904,
		-0.284033, 0.958717, -0.013681,
		36.068691, 38.301178, 27.827635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020409, 37.778896, 27.166113>,  <36.267513, 37.630074, 27.837212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020409, 37.778896, 27.166113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119099, 38.138386, 27.311125>,  <36.178314, 38.354080, 27.398132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.119099, 38.138386, 27.311125>,  <36.020409, 37.778896, 27.166113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119099, 38.138386, 27.311125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537237, 0.184502, -0.823004,
		-0.806538, 0.397820, -0.437304,
		0.246724, 0.898720, 0.362532,
		36.193115, 38.408001, 27.419884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856606, 38.223763, 26.598438>,  <36.020409, 37.778896, 27.166113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856606, 38.223763, 26.598438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.104923, 38.420601, 26.842556>,  <36.253914, 38.538704, 26.989025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.104923, 38.420601, 26.842556>,  <35.856606, 38.223763, 26.598438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104923, 38.420601, 26.842556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634774, 0.141338, -0.759662,
		-0.460084, 0.858991, -0.224628,
		0.620794, 0.492096, 0.610292,
		36.291161, 38.568230, 27.025644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917278, 38.954117, 26.264631>,  <35.856606, 38.223763, 26.598438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917278, 38.954117, 26.264631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.220943, 38.881359, 26.514620>,  <36.403141, 38.837704, 26.664614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.220943, 38.881359, 26.514620>,  <35.917278, 38.954117, 26.264631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220943, 38.881359, 26.514620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637578, 0.401073, -0.657750,
		-0.131021, 0.897807, 0.420448,
		0.759163, -0.181890, 0.624971,
		36.448692, 38.826794, 26.702110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312820, 39.550457, 26.245495>,  <35.917278, 38.954117, 26.264631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312820, 39.550457, 26.245495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.583881, 39.290062, 26.382320>,  <36.746517, 39.133827, 26.464415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.583881, 39.290062, 26.382320>,  <36.312820, 39.550457, 26.245495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583881, 39.290062, 26.382320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635060, 0.283507, -0.718555,
		0.370791, 0.704161, 0.605534,
		0.677652, -0.650985, 0.342062,
		36.787178, 39.094765, 26.484940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977161, 39.948612, 26.390137>,  <36.312820, 39.550457, 26.245495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977161, 39.948612, 26.390137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.097290, 39.569778, 26.344814>,  <37.169369, 39.342480, 26.317621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.097290, 39.569778, 26.344814>,  <36.977161, 39.948612, 26.390137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097290, 39.569778, 26.344814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720260, 0.303050, -0.624008,
		0.625326, 0.105794, 0.773160,
		0.300323, -0.947084, -0.113306,
		37.187386, 39.285652, 26.310823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779408, 40.034065, 26.387850>,  <36.977161, 39.948612, 26.390137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779408, 40.034065, 26.387850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.685062, 39.680912, 26.225426>,  <37.628456, 39.469021, 26.127972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.685062, 39.680912, 26.225426>,  <37.779408, 40.034065, 26.387850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685062, 39.680912, 26.225426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706194, 0.131327, -0.695732,
		0.667577, -0.450855, 0.592512,
		-0.235862, -0.882883, -0.406062,
		37.614304, 39.416046, 26.103607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424335, 39.710289, 26.251041>,  <37.779408, 40.034065, 26.387850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424335, 39.710289, 26.251041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.164162, 39.521786, 26.012766>,  <38.008057, 39.408684, 25.869801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.164162, 39.521786, 26.012766>,  <38.424335, 39.710289, 26.251041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164162, 39.521786, 26.012766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647755, 0.065410, -0.759035,
		0.396669, -0.879564, 0.262718,
		-0.650436, -0.471263, -0.595689,
		37.969032, 39.380405, 25.834059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882683, 39.143848, 25.953657>,  <38.424335, 39.710289, 26.251041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882683, 39.143848, 25.953657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.563560, 39.185291, 25.716080>,  <38.372086, 39.210159, 25.573534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.563560, 39.185291, 25.716080>,  <38.882683, 39.143848, 25.953657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563560, 39.185291, 25.716080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602758, 0.159286, -0.781864,
		0.013597, -0.981781, -0.189531,
		-0.797808, 0.103610, -0.593942,
		38.324219, 39.216373, 25.537897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456070, 38.862682, 26.098204>,  <38.882683, 39.143848, 25.953657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456070, 38.862682, 26.098204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.708000, 39.126923, 26.261635>,  <39.859158, 39.285465, 26.359694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.708000, 39.126923, 26.261635>,  <39.456070, 38.862682, 26.098204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708000, 39.126923, 26.261635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506599, -0.049383, 0.860766,
		0.588797, -0.749114, 0.303556,
		0.629822, 0.660598, 0.408578,
		39.896946, 39.325100, 26.384209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760406, 38.561378, 26.717333>,  <39.456070, 38.862682, 26.098204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760406, 38.561378, 26.717333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.802803, 38.955349, 26.772026>,  <39.828239, 39.191730, 26.804842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.802803, 38.955349, 26.772026>,  <39.760406, 38.561378, 26.717333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802803, 38.955349, 26.772026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382344, -0.086568, 0.919956,
		0.917921, -0.149785, 0.367403,
		0.105990, 0.984922, 0.136732,
		39.834599, 39.250824, 26.813046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971058, 38.603119, 27.452782>,  <39.760406, 38.561378, 26.717333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971058, 38.603119, 27.452782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.880070, 38.982224, 27.363338>,  <39.825478, 39.209686, 27.309671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.880070, 38.982224, 27.363338>,  <39.971058, 38.603119, 27.452782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880070, 38.982224, 27.363338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062288, 0.214998, 0.974626,
		0.971790, 0.235629, 0.010128,
		-0.227473, 0.947763, -0.223610,
		39.811829, 39.266552, 27.296255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372414, 39.075901, 27.993467>,  <39.971058, 38.603119, 27.452782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372414, 39.075901, 27.993467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.032932, 39.241829, 27.862240>,  <39.829243, 39.341385, 27.783504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.032932, 39.241829, 27.862240>,  <40.372414, 39.075901, 27.993467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032932, 39.241829, 27.862240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254308, 0.223803, 0.940872,
		0.463711, 0.881953, -0.084452,
		-0.848705, 0.414815, -0.328068,
		39.778320, 39.366272, 27.763819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265457, 39.673988, 28.402283>,  <40.372414, 39.075901, 27.993467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265457, 39.673988, 28.402283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.892735, 39.618298, 28.268206>,  <39.669102, 39.584881, 28.187759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.892735, 39.618298, 28.268206>,  <40.265457, 39.673988, 28.402283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892735, 39.618298, 28.268206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352211, 0.123788, 0.927698,
		-0.087670, 0.982493, -0.164384,
		-0.931806, -0.139229, -0.335192,
		39.613194, 39.576530, 28.167648>
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
