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
	<24.016855, 34.680286, 34.757141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.159525, 34.930664, 35.034554>,  <24.245127, 35.080891, 35.201000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.159525, 34.930664, 35.034554>,  <24.016855, 34.680286, 34.757141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.159525, 34.930664, 35.034554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092253, -0.762323, 0.640589,
		0.929662, -0.164503, -0.329648,
		0.356676, 0.625942, 0.693526,
		24.266527, 35.118446, 35.242611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.580105, 34.391403, 35.063507>,  <24.016855, 34.680286, 34.757141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.580105, 34.391403, 35.063507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.421370, 34.644783, 35.329216>,  <24.326128, 34.796810, 35.488640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.421370, 34.644783, 35.329216>,  <24.580105, 34.391403, 35.063507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.421370, 34.644783, 35.329216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219741, -0.637089, 0.738805,
		0.891198, 0.439154, 0.113626,
		-0.396839, 0.633453, 0.664272,
		24.302319, 34.834820, 35.528496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089020, 34.693024, 35.626034>,  <24.580105, 34.391403, 35.063507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089020, 34.693024, 35.626034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704679, 34.634418, 35.720097>,  <24.474075, 34.599255, 35.776535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.704679, 34.634418, 35.720097>,  <25.089020, 34.693024, 35.626034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.704679, 34.634418, 35.720097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266276, -0.722873, 0.637614,
		0.076573, 0.675269, 0.733586,
		-0.960850, -0.146512, 0.235161,
		24.416424, 34.590466, 35.790646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891232, 34.808525, 35.719143>,  <25.089020, 34.693024, 35.626034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891232, 34.808525, 35.719143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963203, 34.496902, 35.478912>,  <26.006386, 34.309929, 35.334774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963203, 34.496902, 35.478912>,  <25.891232, 34.808525, 35.719143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963203, 34.496902, 35.478912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978843, 0.202272, 0.030869,
		0.097431, -0.593423, 0.798972,
		0.179928, -0.779060, -0.600576,
		26.017181, 34.263184, 35.298740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.093542, 35.301743, 36.303379>,  <25.891232, 34.808525, 35.719143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.093542, 35.301743, 36.303379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199286, 35.661758, 36.441971>,  <26.262732, 35.877766, 36.525127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199286, 35.661758, 36.441971>,  <26.093542, 35.301743, 36.303379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199286, 35.661758, 36.441971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534234, 0.435768, -0.724361,
		-0.802937, 0.006390, 0.596030,
		0.264359, 0.900036, 0.346481,
		26.278593, 35.931770, 36.545914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590996, 35.697067, 36.052391>,  <26.093542, 35.301743, 36.303379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590996, 35.697067, 36.052391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889065, 35.947548, 36.144119>,  <26.067905, 36.097836, 36.199158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.889065, 35.947548, 36.144119>,  <25.590996, 35.697067, 36.052391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889065, 35.947548, 36.144119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248246, 0.579641, -0.776138,
		-0.618946, 0.521427, 0.587384,
		0.745171, 0.626203, 0.229324,
		26.112616, 36.135410, 36.212917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.298889, 36.302197, 36.061581>,  <25.590996, 35.697067, 36.052391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.298889, 36.302197, 36.061581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684147, 36.403728, 36.025970>,  <25.915300, 36.464649, 36.004604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684147, 36.403728, 36.025970>,  <25.298889, 36.302197, 36.061581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684147, 36.403728, 36.025970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235488, 0.635706, -0.735135,
		-0.130006, 0.729005, 0.672050,
		0.963143, 0.253832, -0.089027,
		25.973089, 36.479877, 35.999264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.328068, 37.026752, 35.948196>,  <25.298889, 36.302197, 36.061581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.328068, 37.026752, 35.948196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658058, 36.842953, 35.816574>,  <25.856052, 36.732674, 35.737602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658058, 36.842953, 35.816574>,  <25.328068, 37.026752, 35.948196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658058, 36.842953, 35.816574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132138, 0.722910, -0.678190,
		0.549503, 0.516010, 0.657100,
		0.824976, -0.459495, -0.329056,
		25.905552, 36.705105, 35.717857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.748640, 37.537842, 35.795258>,  <25.328068, 37.026752, 35.948196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.748640, 37.537842, 35.795258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921259, 37.246387, 35.582520>,  <26.024830, 37.071514, 35.454876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921259, 37.246387, 35.582520>,  <25.748640, 37.537842, 35.795258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921259, 37.246387, 35.582520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201782, 0.652599, -0.730342,
		0.879234, 0.207858, 0.428651,
		0.431545, -0.728636, -0.531845,
		26.050722, 37.027798, 35.422966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464495, 37.548931, 35.689438>,  <25.748640, 37.537842, 35.795258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464495, 37.548931, 35.689438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293287, 37.407562, 35.356720>,  <26.190563, 37.322739, 35.157089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.293287, 37.407562, 35.356720>,  <26.464495, 37.548931, 35.689438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293287, 37.407562, 35.356720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402983, 0.749174, -0.525684,
		0.808952, -0.560204, -0.178236,
		-0.428020, -0.353427, -0.831798,
		26.164881, 37.301533, 35.107182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.002642, 37.625641, 35.118069>,  <26.464495, 37.548931, 35.689438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.002642, 37.625641, 35.118069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637430, 37.594929, 34.957825>,  <26.418304, 37.576500, 34.861679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637430, 37.594929, 34.957825>,  <27.002642, 37.625641, 35.118069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637430, 37.594929, 34.957825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246716, 0.678156, -0.692268,
		0.324828, -0.730896, -0.600232,
		-0.913027, -0.076781, -0.400608,
		26.363522, 37.571896, 34.837643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095531, 37.846169, 34.429295>,  <27.002642, 37.625641, 35.118069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095531, 37.846169, 34.429295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698568, 37.891636, 34.448093>,  <26.460390, 37.918915, 34.459373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698568, 37.891636, 34.448093>,  <27.095531, 37.846169, 34.429295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698568, 37.891636, 34.448093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035810, 0.632562, -0.773682,
		-0.117672, -0.766124, -0.631829,
		-0.992407, 0.113666, 0.047000,
		26.400846, 37.925735, 34.462193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674229, 38.366032, 34.788284>,  <27.095531, 37.846169, 34.429295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674229, 38.366032, 34.788284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957138, 38.424976, 35.064846>,  <27.126884, 38.460342, 35.230785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.957138, 38.424976, 35.064846>,  <26.674229, 38.366032, 34.788284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957138, 38.424976, 35.064846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291612, -0.951763, -0.095446,
		0.643992, 0.269130, -0.716131,
		0.707274, 0.147367, 0.691409,
		27.169321, 38.469185, 35.272270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851067, 38.427334, 34.934097>,  <26.674229, 38.366032, 34.788284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851067, 38.427334, 34.934097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924757, 38.300472, 34.561974>,  <25.968971, 38.224354, 34.338699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924757, 38.300472, 34.561974>,  <25.851067, 38.427334, 34.934097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924757, 38.300472, 34.561974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287884, -0.922411, 0.257452,
		-0.939778, 0.220391, -0.261238,
		0.184229, -0.317154, -0.930308,
		25.980026, 38.205326, 34.282883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.267599, 37.996517, 34.710457>,  <25.851067, 38.427334, 34.934097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.267599, 37.996517, 34.710457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612148, 37.903625, 34.529743>,  <25.818878, 37.847893, 34.421314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.612148, 37.903625, 34.529743>,  <25.267599, 37.996517, 34.710457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.612148, 37.903625, 34.529743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058706, -0.928934, 0.365562,
		-0.504565, -0.288364, -0.813793,
		0.861375, -0.232225, -0.451779,
		25.870562, 37.833958, 34.394211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247442, 37.375824, 34.237000>,  <25.267599, 37.996517, 34.710457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247442, 37.375824, 34.237000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604284, 37.436169, 34.407360>,  <25.818390, 37.472374, 34.509575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604284, 37.436169, 34.407360>,  <25.247442, 37.375824, 34.237000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604284, 37.436169, 34.407360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071818, -0.883287, 0.463299,
		0.446085, -0.443898, -0.777150,
		0.892105, 0.150857, 0.425901,
		25.871916, 37.481426, 34.535130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634600, 36.796974, 34.079716>,  <25.247442, 37.375824, 34.237000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634600, 36.796974, 34.079716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773905, 36.959064, 34.417828>,  <25.857489, 37.056320, 34.620697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.773905, 36.959064, 34.417828>,  <25.634600, 36.796974, 34.079716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.773905, 36.959064, 34.417828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175142, -0.857726, 0.483355,
		0.920889, -0.316380, -0.227743,
		0.348265, 0.405230, 0.845281,
		25.878384, 37.080635, 34.671413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336376, 36.404438, 34.383579>,  <25.634600, 36.796974, 34.079716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336376, 36.404438, 34.383579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077370, 36.563419, 34.643658>,  <25.921965, 36.658810, 34.799706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077370, 36.563419, 34.643658>,  <26.336376, 36.404438, 34.383579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077370, 36.563419, 34.643658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172503, -0.907516, 0.382960,
		0.742269, 0.135813, 0.656195,
		-0.647518, 0.397455, 0.650192,
		25.883114, 36.682655, 34.838715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187374, 35.781136, 33.978176>,  <26.336376, 36.404438, 34.383579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.187374, 35.781136, 33.978176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861002, 35.793472, 33.747246>,  <25.665178, 35.800877, 33.608688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861002, 35.793472, 33.747246>,  <26.187374, 35.781136, 33.978176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861002, 35.793472, 33.747246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421726, -0.651314, -0.630822,
		-0.395479, -0.758181, 0.518419,
		-0.815931, 0.030846, -0.577326,
		25.616222, 35.802727, 33.574047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419703, 35.399139, 33.402393>,  <26.187374, 35.781136, 33.978176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419703, 35.399139, 33.402393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028053, 35.463749, 33.353035>,  <25.793064, 35.502514, 33.323421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028053, 35.463749, 33.353035>,  <26.419703, 35.399139, 33.402393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028053, 35.463749, 33.353035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053083, -0.382817, -0.922298,
		-0.196212, -0.909594, 0.366251,
		-0.979124, 0.161524, -0.123397,
		25.734316, 35.512207, 33.316017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271601, 34.974075, 32.884903>,  <26.419703, 35.399139, 33.402393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271601, 34.974075, 32.884903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.945984, 35.206059, 32.897442>,  <25.750614, 35.345249, 32.904964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.945984, 35.206059, 32.897442>,  <26.271601, 34.974075, 32.884903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.945984, 35.206059, 32.897442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288151, -0.356419, -0.888783,
		-0.504284, -0.732540, 0.457255,
		-0.814044, 0.579958, 0.031346,
		25.701771, 35.380047, 32.906845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027534, 34.915253, 32.978668>,  <26.271601, 34.974075, 32.884903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027534, 34.915253, 32.978668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405941, 34.824421, 33.071178>,  <27.632984, 34.769920, 33.126686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405941, 34.824421, 33.071178>,  <27.027534, 34.915253, 32.978668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405941, 34.824421, 33.071178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323454, 0.707183, -0.628704,
		-0.020792, 0.669572, 0.742456,
		0.946015, -0.227079, 0.231280,
		27.689745, 34.756298, 33.140564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382627, 35.451698, 33.161900>,  <27.027534, 34.915253, 32.978668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382627, 35.451698, 33.161900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.673643, 35.209351, 33.033146>,  <27.848251, 35.063942, 32.955894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.673643, 35.209351, 33.033146>,  <27.382627, 35.451698, 33.161900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673643, 35.209351, 33.033146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475059, 0.783386, -0.400781,
		0.494982, 0.138668, 0.857767,
		0.727538, -0.605869, -0.321887,
		27.891905, 35.027592, 32.936581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946714, 35.843128, 33.216698>,  <27.382627, 35.451698, 33.161900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946714, 35.843128, 33.216698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034758, 35.560028, 32.948177>,  <28.087584, 35.390167, 32.787064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034758, 35.560028, 32.948177>,  <27.946714, 35.843128, 33.216698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034758, 35.560028, 32.948177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609774, 0.636981, -0.471626,
		0.761398, -0.305534, 0.571770,
		0.220109, -0.707746, -0.671303,
		28.100790, 35.347706, 32.746788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726561, 35.654385, 33.246288>,  <27.946714, 35.843128, 33.216698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726561, 35.654385, 33.246288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562531, 35.603622, 32.885017>,  <28.464113, 35.573166, 32.668255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562531, 35.603622, 32.885017>,  <28.726561, 35.654385, 33.246288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562531, 35.603622, 32.885017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576995, 0.730822, -0.364659,
		0.706339, -0.670669, -0.226472,
		-0.410076, -0.126900, -0.903180,
		28.439508, 35.565552, 32.614063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178013, 35.538841, 32.651566>,  <28.726561, 35.654385, 33.246288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178013, 35.538841, 32.651566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876043, 35.748997, 32.494568>,  <28.694860, 35.875092, 32.400368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.876043, 35.748997, 32.494568>,  <29.178013, 35.538841, 32.651566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.876043, 35.748997, 32.494568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654888, 0.572206, -0.493662,
		-0.034777, -0.629718, -0.776045,
		-0.754926, 0.525390, -0.392495,
		28.649565, 35.906612, 32.376820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169130, 35.524120, 31.938332>,  <29.178013, 35.538841, 32.651566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169130, 35.524120, 31.938332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996782, 35.868275, 32.047211>,  <28.893373, 36.074768, 32.112537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996782, 35.868275, 32.047211>,  <29.169130, 35.524120, 31.938332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996782, 35.868275, 32.047211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661855, 0.506331, -0.552791,
		-0.613434, -0.058025, -0.787611,
		-0.430868, 0.860385, 0.272196,
		28.867521, 36.126389, 32.128868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824972, 35.859253, 31.349789>,  <29.169130, 35.524120, 31.938332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824972, 35.859253, 31.349789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974747, 36.094841, 31.636261>,  <29.064611, 36.236195, 31.808146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974747, 36.094841, 31.636261>,  <28.824972, 35.859253, 31.349789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974747, 36.094841, 31.636261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470021, 0.545232, -0.694120,
		-0.799299, 0.596524, -0.072672,
		0.374436, 0.588966, 0.716182,
		29.087078, 36.271530, 31.851116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586973, 36.593742, 31.294205>,  <28.824972, 35.859253, 31.349789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.586973, 36.593742, 31.294205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942257, 36.572353, 31.476732>,  <29.155426, 36.559521, 31.586248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942257, 36.572353, 31.476732>,  <28.586973, 36.593742, 31.294205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942257, 36.572353, 31.476732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360818, 0.696045, -0.620751,
		-0.284426, 0.716004, 0.637527,
		0.888207, -0.053473, 0.456320,
		29.208719, 36.556313, 31.613628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922522, 37.203899, 31.340450>,  <28.586973, 36.593742, 31.294205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922522, 37.203899, 31.340450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228394, 36.946423, 31.352598>,  <29.411917, 36.791935, 31.359888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228394, 36.946423, 31.352598>,  <28.922522, 37.203899, 31.340450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228394, 36.946423, 31.352598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480888, 0.538630, -0.691827,
		0.428967, 0.543631, 0.721424,
		0.764679, -0.643695, 0.030371,
		29.457798, 36.753315, 31.361710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537624, 37.592606, 31.384304>,  <28.922522, 37.203899, 31.340450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537624, 37.592606, 31.384304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623915, 37.232979, 31.231916>,  <29.675690, 37.017204, 31.140484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.623915, 37.232979, 31.231916>,  <29.537624, 37.592606, 31.384304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.623915, 37.232979, 31.231916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575927, 0.432222, -0.693897,
		0.788524, -0.069718, 0.611039,
		0.215728, -0.899068, -0.380970,
		29.688633, 36.963257, 31.117626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294998, 37.616371, 31.402990>,  <29.537624, 37.592606, 31.384304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294998, 37.616371, 31.402990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173401, 37.358395, 31.122520>,  <30.100443, 37.203609, 30.954239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.173401, 37.358395, 31.122520>,  <30.294998, 37.616371, 31.402990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.173401, 37.358395, 31.122520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485914, 0.528102, -0.696417,
		0.819435, -0.552417, 0.152843,
		-0.303995, -0.644937, -0.701172,
		30.082203, 37.164913, 30.912169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.816319, 37.681808, 31.051958>,  <30.294998, 37.616371, 31.402990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.816319, 37.681808, 31.051958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591068, 37.473122, 30.795614>,  <30.455917, 37.347908, 30.641808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591068, 37.473122, 30.795614>,  <30.816319, 37.681808, 31.051958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591068, 37.473122, 30.795614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441653, 0.465456, -0.767003,
		0.698451, -0.714956, -0.031691,
		-0.563125, -0.521717, -0.640860,
		30.422131, 37.316608, 30.603355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289709, 37.377033, 30.597975>,  <30.816319, 37.681808, 31.051958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289709, 37.377033, 30.597975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934757, 37.379089, 30.413572>,  <30.721786, 37.380325, 30.302931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934757, 37.379089, 30.413572>,  <31.289709, 37.377033, 30.597975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934757, 37.379089, 30.413572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437602, 0.324139, -0.838712,
		0.145116, -0.945995, -0.289887,
		-0.887382, 0.005145, -0.461007,
		30.668543, 37.380634, 30.275270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427101, 37.073898, 29.944122>,  <31.289709, 37.377033, 30.597975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427101, 37.073898, 29.944122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100161, 37.301121, 29.905657>,  <30.903996, 37.437454, 29.882578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100161, 37.301121, 29.905657>,  <31.427101, 37.073898, 29.944122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100161, 37.301121, 29.905657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368538, 0.387207, -0.845134,
		-0.442848, -0.726212, -0.525835,
		-0.817353, 0.568055, -0.096162,
		30.854954, 37.471539, 29.876808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189623, 37.061001, 29.286528>,  <31.427101, 37.073898, 29.944122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189623, 37.061001, 29.286528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011110, 37.404697, 29.386553>,  <30.904003, 37.610916, 29.446568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011110, 37.404697, 29.386553>,  <31.189623, 37.061001, 29.286528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011110, 37.404697, 29.386553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338217, 0.420656, -0.841818,
		-0.828519, -0.291112, -0.478342,
		-0.446280, 0.859245, 0.250062,
		30.877226, 37.662472, 29.461571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289497, 37.394909, 28.632950>,  <31.189623, 37.061001, 29.286528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289497, 37.394909, 28.632950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114983, 37.661163, 28.875134>,  <31.010275, 37.820915, 29.020443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114983, 37.661163, 28.875134>,  <31.289497, 37.394909, 28.632950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114983, 37.661163, 28.875134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317575, 0.743483, -0.588540,
		-0.841903, -0.064493, -0.535761,
		-0.436286, 0.665638, 0.605459,
		30.984097, 37.860855, 29.056770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866060, 37.941486, 28.206303>,  <31.289497, 37.394909, 28.632950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866060, 37.941486, 28.206303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929726, 38.126888, 28.554976>,  <30.967926, 38.238129, 28.764179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929726, 38.126888, 28.554976>,  <30.866060, 37.941486, 28.206303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929726, 38.126888, 28.554976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392067, 0.780649, -0.486693,
		-0.906063, 0.419222, -0.057474,
		0.159166, 0.463508, 0.871680,
		30.977476, 38.265942, 28.816479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656944, 38.666393, 28.141518>,  <30.866060, 37.941486, 28.206303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656944, 38.666393, 28.141518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953991, 38.565296, 28.389595>,  <31.132219, 38.504639, 28.538441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953991, 38.565296, 28.389595>,  <30.656944, 38.666393, 28.141518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953991, 38.565296, 28.389595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659573, 0.436562, -0.611864,
		-0.116109, 0.863444, 0.490901,
		0.742619, -0.252742, 0.620193,
		31.176777, 38.489475, 28.575653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163343, 39.236961, 28.219267>,  <30.656944, 38.666393, 28.141518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163343, 39.236961, 28.219267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368952, 38.896412, 28.261110>,  <31.492317, 38.692081, 28.286217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368952, 38.896412, 28.261110>,  <31.163343, 39.236961, 28.219267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368952, 38.896412, 28.261110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716793, 0.359345, -0.597560,
		0.471158, 0.382141, 0.794971,
		0.514021, -0.851375, 0.104608,
		31.523159, 38.640999, 28.292492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880537, 39.378609, 28.522936>,  <31.163343, 39.236961, 28.219267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880537, 39.378609, 28.522936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826290, 39.100018, 28.241077>,  <31.793741, 38.932861, 28.071962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826290, 39.100018, 28.241077>,  <31.880537, 39.378609, 28.522936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826290, 39.100018, 28.241077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530000, 0.549899, -0.645531,
		0.837083, -0.461008, 0.294557,
		-0.135619, -0.696479, -0.704645,
		31.785604, 38.891075, 28.029684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121197, 38.763580, 28.890314>,  <31.880537, 39.378609, 28.522936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121197, 38.763580, 28.890314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770597, 38.955769, 28.878321>,  <31.560238, 39.071083, 28.871124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770597, 38.955769, 28.878321>,  <32.121197, 38.763580, 28.890314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770597, 38.955769, 28.878321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449924, -0.795429, 0.406030,
		0.171236, 0.369375, 0.913368,
		-0.876497, 0.480473, -0.029985,
		31.507648, 39.099911, 28.869326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758181, 38.820293, 29.560766>,  <32.121197, 38.763580, 28.890314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758181, 38.820293, 29.560766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453964, 38.815601, 29.301092>,  <31.271435, 38.812786, 29.145288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.453964, 38.815601, 29.301092>,  <31.758181, 38.820293, 29.560766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.453964, 38.815601, 29.301092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454354, -0.704633, 0.545027,
		-0.463830, 0.709475, 0.530572,
		-0.760542, -0.011732, -0.649183,
		31.225801, 38.812080, 29.106337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080471, 38.898830, 29.925579>,  <31.758181, 38.820293, 29.560766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080471, 38.898830, 29.925579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007423, 38.709736, 29.580750>,  <30.963594, 38.596279, 29.373852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007423, 38.709736, 29.580750>,  <31.080471, 38.898830, 29.925579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007423, 38.709736, 29.580750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398862, -0.765802, 0.504438,
		-0.898644, 0.435967, -0.048708,
		-0.182617, -0.472737, -0.862073,
		30.952639, 38.567913, 29.322128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418268, 38.660194, 29.906616>,  <31.080471, 38.898830, 29.925579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418268, 38.660194, 29.906616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585188, 38.424526, 29.629850>,  <30.685339, 38.283127, 29.463791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585188, 38.424526, 29.629850>,  <30.418268, 38.660194, 29.906616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585188, 38.424526, 29.629850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496663, -0.785464, 0.369286,
		-0.761044, 0.189544, -0.620391,
		0.417299, -0.589168, -0.691912,
		30.710377, 38.247776, 29.422276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814264, 38.165215, 29.713175>,  <30.418268, 38.660194, 29.906616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814264, 38.165215, 29.713175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093128, 37.879032, 29.731455>,  <30.260447, 37.707321, 29.742422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093128, 37.879032, 29.731455>,  <29.814264, 38.165215, 29.713175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093128, 37.879032, 29.731455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430075, -0.366372, 0.825110,
		-0.573588, -0.594888, -0.563121,
		0.697160, -0.715458, 0.045700,
		30.302277, 37.664394, 29.745165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449396, 37.482468, 29.696934>,  <29.814264, 38.165215, 29.713175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449396, 37.482468, 29.696934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816172, 37.448479, 29.852886>,  <30.036236, 37.428085, 29.946457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816172, 37.448479, 29.852886>,  <29.449396, 37.482468, 29.696934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816172, 37.448479, 29.852886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365214, -0.572371, 0.734173,
		0.160768, -0.815580, -0.555863,
		0.916937, -0.084977, 0.389880,
		30.091253, 37.422985, 29.969851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495970, 36.809978, 29.835169>,  <29.449396, 37.482468, 29.696934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495970, 36.809978, 29.835169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780407, 36.968502, 30.067472>,  <29.951069, 37.063618, 30.206854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780407, 36.968502, 30.067472>,  <29.495970, 36.809978, 29.835169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780407, 36.968502, 30.067472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297559, -0.578752, 0.759279,
		0.637027, -0.712729, -0.293622,
		0.711095, 0.396311, 0.580759,
		29.993736, 37.087395, 30.241701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987461, 36.236885, 29.986605>,  <29.495970, 36.809978, 29.835169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987461, 36.236885, 29.986605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989092, 36.529846, 30.258949>,  <29.990070, 36.705624, 30.422356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989092, 36.529846, 30.258949>,  <29.987461, 36.236885, 29.986605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989092, 36.529846, 30.258949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170797, -0.670351, 0.722120,
		0.985298, -0.119233, 0.122359,
		0.004077, 0.732402, 0.680860,
		29.990314, 36.749565, 30.463207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478142, 36.099106, 30.547474>,  <29.987461, 36.236885, 29.986605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478142, 36.099106, 30.547474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190212, 36.330303, 30.701237>,  <30.017454, 36.469021, 30.793495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190212, 36.330303, 30.701237>,  <30.478142, 36.099106, 30.547474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190212, 36.330303, 30.701237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180945, -0.690872, 0.699967,
		0.670156, 0.434298, 0.601894,
		-0.719826, 0.577997, 0.384408,
		29.974264, 36.503704, 30.816559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337322, 35.810802, 31.246685>,  <30.478142, 36.099106, 30.547474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337322, 35.810802, 31.246685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069767, 36.108021, 31.255388>,  <29.909233, 36.286350, 31.260611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069767, 36.108021, 31.255388>,  <30.337322, 35.810802, 31.246685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069767, 36.108021, 31.255388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447538, -0.425901, 0.786332,
		0.593545, 0.516232, 0.617420,
		-0.668890, 0.743043, 0.021758,
		29.869101, 36.330933, 31.261915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351597, 36.228481, 31.836134>,  <30.337322, 35.810802, 31.246685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351597, 36.228481, 31.836134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963575, 36.279484, 31.753445>,  <29.730762, 36.310085, 31.703831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.963575, 36.279484, 31.753445>,  <30.351597, 36.228481, 31.836134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963575, 36.279484, 31.753445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241017, -0.400054, 0.884233,
		0.030040, 0.907579, 0.418805,
		-0.970056, 0.127502, -0.206725,
		29.672558, 36.317734, 31.691427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950239, 36.126171, 32.197727>,  <30.351597, 36.228481, 31.836134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950239, 36.126171, 32.197727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307175, 36.261982, 32.316689>,  <31.521336, 36.343468, 32.388065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307175, 36.261982, 32.316689>,  <30.950239, 36.126171, 32.197727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307175, 36.261982, 32.316689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013837, -0.679161, 0.733859,
		0.451150, -0.650737, -0.610741,
		0.892340, 0.339532, 0.297400,
		31.574877, 36.363842, 32.405907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428411, 35.606007, 32.286015>,  <30.950239, 36.126171, 32.197727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428411, 35.606007, 32.286015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488031, 35.906105, 32.543671>,  <31.523804, 36.086163, 32.698265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488031, 35.906105, 32.543671>,  <31.428411, 35.606007, 32.286015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488031, 35.906105, 32.543671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027837, -0.654340, 0.755688,
		0.988438, -0.094703, -0.118413,
		0.149048, 0.750247, 0.644138,
		31.532745, 36.131180, 32.736912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132832, 35.514336, 32.583477>,  <31.428411, 35.606007, 32.286015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132832, 35.514336, 32.583477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849239, 35.692879, 32.801872>,  <31.679083, 35.800003, 32.932911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849239, 35.692879, 32.801872>,  <32.132832, 35.514336, 32.583477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849239, 35.692879, 32.801872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002118, -0.772857, 0.634576,
		0.705222, 0.451061, 0.546997,
		-0.708983, 0.446359, 0.545991,
		31.636545, 35.826786, 32.965668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683094, 35.421520, 32.936245>,  <32.132832, 35.514336, 32.583477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683094, 35.421520, 32.936245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064068, 35.503178, 32.845741>,  <33.292652, 35.552170, 32.791439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064068, 35.503178, 32.845741>,  <32.683094, 35.421520, 32.936245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064068, 35.503178, 32.845741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008008, -0.758978, -0.651067,
		-0.304635, 0.618287, -0.724512,
		0.952435, 0.204140, -0.226260,
		33.349800, 35.564419, 32.777863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856346, 35.679756, 32.139496>,  <32.683094, 35.421520, 32.936245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856346, 35.679756, 32.139496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151787, 35.484074, 32.325031>,  <33.329052, 35.366665, 32.436352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151787, 35.484074, 32.325031>,  <32.856346, 35.679756, 32.139496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151787, 35.484074, 32.325031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008236, -0.694543, -0.719404,
		0.674096, 0.527530, -0.517017,
		0.738598, -0.489206, 0.463843,
		33.373367, 35.337311, 32.464184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465748, 35.514458, 31.711430>,  <32.856346, 35.679756, 32.139496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465748, 35.514458, 31.711430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431885, 35.239784, 32.000233>,  <33.411568, 35.074978, 32.173515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431885, 35.239784, 32.000233>,  <33.465748, 35.514458, 31.711430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431885, 35.239784, 32.000233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190865, -0.722367, -0.664648,
		0.977958, 0.081536, 0.192221,
		-0.084661, -0.686686, 0.722007,
		33.406487, 35.033779, 32.216835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835976, 34.961285, 31.362967>,  <33.465748, 35.514458, 31.711430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835976, 34.961285, 31.362967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697880, 34.782413, 31.693020>,  <33.615021, 34.675091, 31.891052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697880, 34.782413, 31.693020>,  <33.835976, 34.961285, 31.362967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697880, 34.782413, 31.693020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082905, -0.890285, -0.447795,
		0.934845, -0.086190, 0.344436,
		-0.345242, -0.447174, 0.825132,
		33.594307, 34.648262, 31.940559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288925, 34.410103, 31.541513>,  <33.835976, 34.961285, 31.362967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288925, 34.410103, 31.541513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918480, 34.333862, 31.671732>,  <33.696213, 34.288120, 31.749863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918480, 34.333862, 31.671732>,  <34.288925, 34.410103, 31.541513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918480, 34.333862, 31.671732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063049, -0.772630, -0.631718,
		0.371933, -0.605570, 0.703528,
		-0.926116, -0.190600, 0.325547,
		33.640644, 34.276684, 31.769396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231125, 33.784187, 31.275848>,  <34.288925, 34.410103, 31.541513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231125, 33.784187, 31.275848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860901, 33.878021, 31.394712>,  <33.638767, 33.934322, 31.466030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860901, 33.878021, 31.394712>,  <34.231125, 33.784187, 31.275848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860901, 33.878021, 31.394712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366094, -0.754575, -0.544603,
		0.096476, -0.612853, 0.784285,
		-0.925563, 0.234581, 0.297160,
		33.583233, 33.948395, 31.483860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890736, 33.248489, 31.653463>,  <34.231125, 33.784187, 31.275848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890736, 33.248489, 31.653463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632214, 33.475269, 31.449171>,  <33.477100, 33.611340, 31.326595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632214, 33.475269, 31.449171>,  <33.890736, 33.248489, 31.653463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632214, 33.475269, 31.449171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298449, -0.803804, -0.514613,
		-0.702291, -0.180172, 0.688713,
		-0.646309, 0.566954, -0.510732,
		33.438320, 33.645355, 31.295952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640381, 32.974762, 31.817677>,  <33.890736, 33.248489, 31.653463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640381, 32.974762, 31.817677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812298, 32.881432, 31.468771>,  <34.915447, 32.825432, 31.259428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812298, 32.881432, 31.468771>,  <34.640381, 32.974762, 31.817677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812298, 32.881432, 31.468771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851332, -0.217170, 0.477567,
		-0.300858, -0.947838, 0.105300,
		0.429788, -0.233325, -0.872262,
		34.941235, 32.811436, 31.207092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169979, 33.062157, 32.273724>,  <34.640381, 32.974762, 31.817677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169979, 33.062157, 32.273724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532581, 33.109459, 32.435841>,  <34.750141, 33.137840, 32.533112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532581, 33.109459, 32.435841>,  <34.169979, 33.062157, 32.273724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532581, 33.109459, 32.435841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419597, 0.146073, 0.895880,
		0.046740, -0.982181, 0.182035,
		0.906507, 0.118254, 0.405292,
		34.804535, 33.144936, 32.557426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910503, 32.534698, 31.896324>,  <34.169979, 33.062157, 32.273724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910503, 32.534698, 31.896324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249344, 32.454426, 31.699492>,  <34.452648, 32.406261, 31.581392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249344, 32.454426, 31.699492>,  <33.910503, 32.534698, 31.896324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249344, 32.454426, 31.699492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348184, -0.489953, 0.799196,
		-0.401478, -0.848336, -0.345168,
		0.847103, -0.200678, -0.492082,
		34.503475, 32.394222, 31.551867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240257, 32.661739, 31.134716>,  <33.910503, 32.534698, 31.896324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240257, 32.661739, 31.134716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605309, 32.575603, 30.995731>,  <34.824341, 32.523922, 30.912340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605309, 32.575603, 30.995731>,  <34.240257, 32.661739, 31.134716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605309, 32.575603, 30.995731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195285, 0.517057, -0.833376,
		0.359120, 0.828420, 0.429830,
		0.912632, -0.215343, -0.347464,
		34.879097, 32.511002, 30.891493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677158, 33.281868, 30.831165>,  <34.240257, 32.661739, 31.134716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677158, 33.281868, 30.831165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782696, 32.935680, 30.660824>,  <34.846016, 32.727966, 30.558619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782696, 32.935680, 30.660824>,  <34.677158, 33.281868, 30.831165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782696, 32.935680, 30.660824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035143, 0.449829, -0.892423,
		0.963926, 0.220490, 0.149098,
		0.263839, -0.865470, -0.425854,
		34.861847, 32.676041, 30.533068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132687, 33.478558, 30.258635>,  <34.677158, 33.281868, 30.831165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132687, 33.478558, 30.258635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067696, 33.088509, 30.198311>,  <35.028702, 32.854481, 30.162117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067696, 33.088509, 30.198311>,  <35.132687, 33.478558, 30.258635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067696, 33.088509, 30.198311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242280, 0.108734, -0.964094,
		0.956505, -0.193183, 0.218585,
		-0.162478, -0.975119, -0.150809,
		35.018951, 32.795975, 30.153069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803268, 33.260925, 29.887197>,  <35.132687, 33.478558, 30.258635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803268, 33.260925, 29.887197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525948, 32.983379, 29.809336>,  <35.359554, 32.816853, 29.762619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525948, 32.983379, 29.809336>,  <35.803268, 33.260925, 29.887197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525948, 32.983379, 29.809336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106155, 0.168832, -0.979912,
		0.712788, -0.700035, -0.043394,
		-0.693299, -0.693863, -0.194654,
		35.317959, 32.775219, 29.750940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084675, 32.800514, 29.393694>,  <35.803268, 33.260925, 29.887197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084675, 32.800514, 29.393694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690285, 32.750179, 29.349833>,  <35.453651, 32.719978, 29.323515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690285, 32.750179, 29.349833>,  <36.084675, 32.800514, 29.393694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690285, 32.750179, 29.349833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105628, 0.038257, -0.993670,
		0.129237, -0.991313, -0.024428,
		-0.985972, -0.125839, -0.109654,
		35.394493, 32.712429, 29.316936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094090, 32.332367, 28.877918>,  <36.084675, 32.800514, 29.393694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094090, 32.332367, 28.877918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716980, 32.465706, 28.874832>,  <35.490715, 32.545712, 28.872980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.716980, 32.465706, 28.874832>,  <36.094090, 32.332367, 28.877918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716980, 32.465706, 28.874832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011096, 0.008240, -0.999905,
		-0.333255, -0.942767, -0.011467,
		-0.942771, 0.333350, -0.007715,
		35.434147, 32.565712, 28.872519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666790, 31.804052, 28.509815>,  <36.094090, 32.332367, 28.877918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666790, 31.804052, 28.509815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491951, 32.163761, 28.516233>,  <35.387047, 32.379585, 28.520084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491951, 32.163761, 28.516233>,  <35.666790, 31.804052, 28.509815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491951, 32.163761, 28.516233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042673, -0.002915, -0.999085,
		-0.898402, -0.437380, 0.039648,
		-0.437096, 0.899272, 0.016045,
		35.360821, 32.433544, 28.521048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213196, 31.726879, 28.043467>,  <35.666790, 31.804052, 28.509815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213196, 31.726879, 28.043467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216778, 32.126202, 28.066446>,  <35.218925, 32.365795, 28.080235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216778, 32.126202, 28.066446>,  <35.213196, 31.726879, 28.043467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216778, 32.126202, 28.066446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129256, 0.058125, -0.989906,
		-0.991571, 0.001437, 0.129558,
		0.008953, 0.998308, 0.057449,
		35.219463, 32.425694, 28.083681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792122, 31.938509, 27.578131>,  <35.213196, 31.726879, 28.043467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792122, 31.938509, 27.578131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017239, 32.266537, 27.619602>,  <35.152309, 32.463352, 27.644485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017239, 32.266537, 27.619602>,  <34.792122, 31.938509, 27.578131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017239, 32.266537, 27.619602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077777, 0.177409, -0.981059,
		-0.822930, 0.544070, 0.163627,
		0.562793, 0.820070, 0.103679,
		35.186077, 32.512558, 27.650705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486511, 32.354191, 27.245855>,  <34.792122, 31.938509, 27.578131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486511, 32.354191, 27.245855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854603, 32.509701, 27.263859>,  <35.075459, 32.603008, 27.274660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854603, 32.509701, 27.263859>,  <34.486511, 32.354191, 27.245855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854603, 32.509701, 27.263859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019192, 0.070034, -0.997360,
		-0.390900, 0.918667, 0.056987,
		0.920233, 0.388775, 0.045007,
		35.130672, 32.626331, 27.277361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468338, 32.877357, 26.738840>,  <34.486511, 32.354191, 27.245855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468338, 32.877357, 26.738840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847313, 32.767727, 26.804861>,  <35.074699, 32.701950, 26.844473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.847313, 32.767727, 26.804861>,  <34.468338, 32.877357, 26.738840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847313, 32.767727, 26.804861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190259, 0.067902, -0.979383,
		0.257216, 0.959308, 0.116478,
		0.947439, -0.274074, 0.165052,
		35.131546, 32.685505, 26.854376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844593, 33.252464, 26.218861>,  <34.468338, 32.877357, 26.738840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844593, 33.252464, 26.218861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071823, 32.937710, 26.315285>,  <35.208160, 32.748859, 26.373138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071823, 32.937710, 26.315285>,  <34.844593, 33.252464, 26.218861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071823, 32.937710, 26.315285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162682, -0.179764, -0.970165,
		0.806740, 0.590338, 0.025893,
		0.568071, -0.786883, 0.241060,
		35.242245, 32.701645, 26.387602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391808, 33.355583, 25.833549>,  <34.844593, 33.252464, 26.218861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391808, 33.355583, 25.833549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431854, 32.972878, 25.942781>,  <35.455883, 32.743252, 26.008322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431854, 32.972878, 25.942781>,  <35.391808, 33.355583, 25.833549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431854, 32.972878, 25.942781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310229, -0.230763, -0.922229,
		0.945376, 0.177045, 0.273714,
		0.100113, -0.956767, 0.273082,
		35.461887, 32.685848, 26.024706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070869, 33.195343, 25.768635>,  <35.391808, 33.355583, 25.833549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070869, 33.195343, 25.768635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895023, 32.836216, 25.778910>,  <35.789516, 32.620739, 25.785074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895023, 32.836216, 25.778910>,  <36.070869, 33.195343, 25.768635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895023, 32.836216, 25.778910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358986, -0.201848, -0.911256,
		0.823328, -0.391379, 0.411040,
		-0.439613, -0.897820, 0.025687,
		35.763138, 32.566872, 25.786615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657543, 32.653374, 25.483494>,  <36.070869, 33.195343, 25.768635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657543, 32.653374, 25.483494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300381, 32.484581, 25.420681>,  <36.086082, 32.383305, 25.382994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.300381, 32.484581, 25.420681>,  <36.657543, 32.653374, 25.483494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300381, 32.484581, 25.420681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395191, -0.567383, -0.722427,
		0.215752, -0.707114, 0.673380,
		-0.892903, -0.421979, -0.157031,
		36.032509, 32.357986, 25.373571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858135, 31.932661, 25.301489>,  <36.657543, 32.653374, 25.483494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858135, 31.932661, 25.301489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474930, 31.995878, 25.205790>,  <36.245007, 32.033810, 25.148371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474930, 31.995878, 25.205790>,  <36.858135, 31.932661, 25.301489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474930, 31.995878, 25.205790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104107, -0.585723, -0.803797,
		-0.267168, -0.794953, 0.544675,
		-0.958010, 0.158045, -0.239247,
		36.187527, 32.043293, 25.134016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619606, 31.218216, 25.087559>,  <36.858135, 31.932661, 25.301489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619606, 31.218216, 25.087559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345959, 31.437401, 24.895008>,  <36.181770, 31.568913, 24.779478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345959, 31.437401, 24.895008>,  <36.619606, 31.218216, 25.087559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345959, 31.437401, 24.895008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295548, -0.395118, -0.869789,
		-0.666813, -0.737306, 0.108357,
		-0.684114, 0.547962, -0.481379,
		36.140724, 31.601789, 24.750595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511204, 30.809542, 24.491230>,  <36.619606, 31.218216, 25.087559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511204, 30.809542, 24.491230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352921, 31.168566, 24.413462>,  <36.257950, 31.383980, 24.366800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352921, 31.168566, 24.413462>,  <36.511204, 30.809542, 24.491230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352921, 31.168566, 24.413462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108514, -0.255914, -0.960590,
		-0.911942, -0.359019, 0.198665,
		-0.395711, 0.897560, -0.194420,
		36.234207, 31.437834, 24.355135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795685, 30.805283, 24.155273>,  <36.511204, 30.809542, 24.491230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795685, 30.805283, 24.155273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953278, 31.150711, 24.029400>,  <36.047832, 31.357969, 23.953876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.953278, 31.150711, 24.029400>,  <35.795685, 30.805283, 24.155273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953278, 31.150711, 24.029400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037766, -0.357294, -0.933228,
		-0.918344, 0.355787, -0.173380,
		0.393978, 0.863572, -0.314682,
		36.071472, 31.409782, 23.934996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331169, 31.131029, 23.543829>,  <35.795685, 30.805283, 24.155273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331169, 31.131029, 23.543829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700390, 31.282843, 23.518776>,  <35.921925, 31.373930, 23.503744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700390, 31.282843, 23.518776>,  <35.331169, 31.131029, 23.543829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700390, 31.282843, 23.518776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005770, -0.149146, -0.988798,
		-0.384624, 0.913077, -0.135480,
		0.923055, 0.379534, -0.062634,
		35.977306, 31.396704, 23.499987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254498, 31.524775, 22.849743>,  <35.331169, 31.131029, 23.543829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254498, 31.524775, 22.849743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644413, 31.495253, 22.933962>,  <35.878365, 31.477539, 22.984493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644413, 31.495253, 22.933962>,  <35.254498, 31.524775, 22.849743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644413, 31.495253, 22.933962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207593, -0.045756, -0.977144,
		0.081750, 0.996223, -0.029282,
		0.974793, -0.073803, 0.210550,
		35.936852, 31.473112, 22.997128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629944, 31.747158, 22.169437>,  <35.254498, 31.524775, 22.849743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629944, 31.747158, 22.169437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900867, 31.540993, 22.379431>,  <36.063419, 31.417294, 22.505426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900867, 31.540993, 22.379431>,  <35.629944, 31.747158, 22.169437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900867, 31.540993, 22.379431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328707, -0.426390, -0.842700,
		0.658184, 0.743332, -0.119378,
		0.677307, -0.515411, 0.524982,
		36.104061, 31.386370, 22.536926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291920, 31.942165, 21.999796>,  <35.629944, 31.747158, 22.169437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291920, 31.942165, 21.999796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326870, 31.565126, 22.128717>,  <36.347839, 31.338903, 22.206070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326870, 31.565126, 22.128717>,  <36.291920, 31.942165, 21.999796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326870, 31.565126, 22.128717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356012, -0.272627, -0.893829,
		0.930387, 0.192843, 0.311754,
		0.087376, -0.942596, 0.322303,
		36.353085, 31.282349, 22.225409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778107, 31.761047, 21.538734>,  <36.291920, 31.942165, 21.999796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778107, 31.761047, 21.538734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700867, 31.417372, 21.728262>,  <36.654522, 31.211166, 21.841978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700867, 31.417372, 21.728262>,  <36.778107, 31.761047, 21.538734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700867, 31.417372, 21.728262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223979, -0.508756, -0.831264,
		0.955273, -0.054391, 0.290681,
		-0.193099, -0.859191, 0.473819,
		36.642937, 31.159615, 21.870407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371746, 31.151831, 21.475630>,  <36.778107, 31.761047, 21.538734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371746, 31.151831, 21.475630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013828, 30.982767, 21.533178>,  <36.799076, 30.881329, 21.567707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013828, 30.982767, 21.533178>,  <37.371746, 31.151831, 21.475630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013828, 30.982767, 21.533178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207926, -0.679650, -0.703451,
		0.395102, -0.599530, 0.696030,
		-0.894796, -0.422658, 0.143873,
		36.745388, 30.855970, 21.576340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595474, 30.459660, 21.460855>,  <37.371746, 31.151831, 21.475630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595474, 30.459660, 21.460855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202663, 30.489492, 21.391493>,  <36.966976, 30.507391, 21.349874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202663, 30.489492, 21.391493>,  <37.595474, 30.459660, 21.460855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202663, 30.489492, 21.391493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107943, -0.531746, -0.839997,
		-0.154855, -0.843614, 0.514136,
		-0.982022, 0.074580, -0.173406,
		36.908058, 30.511866, 21.339472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434658, 29.757332, 21.380209>,  <37.595474, 30.459660, 21.460855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434658, 29.757332, 21.380209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140388, 29.975401, 21.219423>,  <36.963829, 30.106243, 21.122952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140388, 29.975401, 21.219423>,  <37.434658, 29.757332, 21.380209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140388, 29.975401, 21.219423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090992, -0.508523, -0.856227,
		-0.671200, -0.666477, 0.324499,
		-0.735671, 0.545173, -0.401964,
		36.919685, 30.138952, 21.098835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033806, 29.327967, 20.841366>,  <37.434658, 29.757332, 21.380209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033806, 29.327967, 20.841366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963207, 29.699883, 20.712160>,  <36.920849, 29.923033, 20.634638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963207, 29.699883, 20.712160>,  <37.033806, 29.327967, 20.841366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963207, 29.699883, 20.712160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003386, -0.327589, -0.944815,
		-0.984295, -0.167852, 0.054670,
		-0.176498, 0.929791, -0.323012,
		36.910259, 29.978821, 20.615257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562374, 29.207287, 20.351519>,  <37.033806, 29.327967, 20.841366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562374, 29.207287, 20.351519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683037, 29.581469, 20.277836>,  <36.755436, 29.805977, 20.233625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683037, 29.581469, 20.277836>,  <36.562374, 29.207287, 20.351519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683037, 29.581469, 20.277836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014479, -0.188690, -0.981930,
		-0.953307, 0.298872, -0.043375,
		0.301656, 0.935453, -0.184207,
		36.773533, 29.862104, 20.222574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139828, 29.515850, 19.840858>,  <36.562374, 29.207287, 20.351519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139828, 29.515850, 19.840858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487434, 29.712820, 19.821537>,  <36.695999, 29.831003, 19.809944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487434, 29.712820, 19.821537>,  <36.139828, 29.515850, 19.840858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487434, 29.712820, 19.821537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069455, -0.218063, -0.973460,
		-0.489891, 0.842594, -0.223701,
		0.869013, 0.492426, -0.048305,
		36.748138, 29.860548, 19.807045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137939, 30.144268, 19.448620>,  <36.139828, 29.515850, 19.840858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137939, 30.144268, 19.448620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515617, 30.012539, 19.445786>,  <36.742222, 29.933502, 19.444084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515617, 30.012539, 19.445786>,  <36.137939, 30.144268, 19.448620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515617, 30.012539, 19.445786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008422, -0.002626, -0.999961,
		0.329292, 0.944214, -0.005253,
		0.944191, -0.329323, -0.007087,
		36.798874, 29.913742, 19.443659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464600, 30.567268, 19.021084>,  <36.137939, 30.144268, 19.448620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464600, 30.567268, 19.021084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741936, 30.279638, 19.039909>,  <36.908337, 30.107059, 19.051205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741936, 30.279638, 19.039909>,  <36.464600, 30.567268, 19.021084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741936, 30.279638, 19.039909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191222, 0.120619, -0.974107,
		0.694780, 0.684384, 0.221132,
		0.693336, -0.719075, 0.047066,
		36.949936, 30.063915, 19.054029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050663, 30.825809, 18.685745>,  <36.464600, 30.567268, 19.021084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050663, 30.825809, 18.685745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062061, 30.426004, 18.680628>,  <37.068901, 30.186121, 18.677557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062061, 30.426004, 18.680628>,  <37.050663, 30.825809, 18.685745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062061, 30.426004, 18.680628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038804, 0.011683, -0.999179,
		0.998841, 0.028965, -0.038453,
		0.028492, -0.999512, -0.012793,
		37.070610, 30.126150, 18.676790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477901, 30.739048, 18.090485>,  <37.050663, 30.825809, 18.685745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477901, 30.739048, 18.090485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344238, 30.370602, 18.170366>,  <37.264042, 30.149534, 18.218296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344238, 30.370602, 18.170366>,  <37.477901, 30.739048, 18.090485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344238, 30.370602, 18.170366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035417, -0.224008, -0.973944,
		0.941853, -0.318374, 0.107476,
		-0.334154, -0.921118, 0.199707,
		37.243992, 30.094267, 18.230278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913349, 30.334507, 17.732105>,  <37.477901, 30.739048, 18.090485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913349, 30.334507, 17.732105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585674, 30.107571, 17.765703>,  <37.389069, 29.971409, 17.785862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585674, 30.107571, 17.765703>,  <37.913349, 30.334507, 17.732105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585674, 30.107571, 17.765703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094364, -0.277788, -0.955997,
		0.565706, -0.775217, 0.281098,
		-0.819190, -0.567338, 0.083993,
		37.339916, 29.937368, 17.790901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057663, 29.657932, 17.381330>,  <37.913349, 30.334507, 17.732105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057663, 29.657932, 17.381330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661121, 29.710320, 17.378355>,  <37.423195, 29.741753, 17.376570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661121, 29.710320, 17.378355>,  <38.057663, 29.657932, 17.381330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661121, 29.710320, 17.378355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047867, -0.413955, -0.909038,
		-0.122133, -0.900827, 0.416647,
		-0.991359, 0.130967, -0.007437,
		37.363712, 29.749609, 17.376123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803436, 29.030460, 17.157333>,  <38.057663, 29.657932, 17.381330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803436, 29.030460, 17.157333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483131, 29.266729, 17.117552>,  <37.290951, 29.408491, 17.093683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483131, 29.266729, 17.117552>,  <37.803436, 29.030460, 17.157333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483131, 29.266729, 17.117552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231534, -0.458366, -0.858075,
		-0.552426, -0.664085, 0.503801,
		-0.800760, 0.590670, -0.099455,
		37.242905, 29.443930, 17.087715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135036, 28.558559, 17.074123>,  <37.803436, 29.030460, 17.157333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135036, 28.558559, 17.074123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086788, 28.916706, 16.902651>,  <37.057838, 29.131594, 16.799767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086788, 28.916706, 16.902651>,  <37.135036, 28.558559, 17.074123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086788, 28.916706, 16.902651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024247, -0.434362, -0.900412,
		-0.992402, -0.098214, 0.074103,
		-0.120620, 0.895368, -0.428681,
		37.050602, 29.185316, 16.774046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549923, 28.503922, 16.573551>,  <37.135036, 28.558559, 17.074123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549923, 28.503922, 16.573551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766701, 28.821945, 16.464615>,  <36.896767, 29.012760, 16.399252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766701, 28.821945, 16.464615>,  <36.549923, 28.503922, 16.573551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766701, 28.821945, 16.464615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059681, -0.286832, -0.956120,
		-0.838290, 0.534421, -0.107998,
		0.541948, 0.795061, -0.272343,
		36.929287, 29.060463, 16.382912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065403, 28.777681, 16.105852>,  <36.549923, 28.503922, 16.573551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065403, 28.777681, 16.105852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431183, 28.918715, 16.026396>,  <36.650650, 29.003334, 15.978722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431183, 28.918715, 16.026396>,  <36.065403, 28.777681, 16.105852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431183, 28.918715, 16.026396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038951, -0.411887, -0.910402,
		-0.402811, 0.840258, -0.362918,
		0.914454, 0.352584, -0.198641,
		36.705521, 29.024490, 15.966804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954597, 29.004982, 15.352316>,  <36.065403, 28.777681, 16.105852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954597, 29.004982, 15.352316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344398, 28.992420, 15.441189>,  <36.578278, 28.984882, 15.494513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.344398, 28.992420, 15.441189>,  <35.954597, 29.004982, 15.352316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344398, 28.992420, 15.441189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201346, -0.314690, -0.927594,
		0.099049, 0.948675, -0.300342,
		0.974499, -0.031405, 0.222181,
		36.636749, 28.982998, 15.507843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315296, 29.568264, 14.837207>,  <35.954597, 29.004982, 15.352316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315296, 29.568264, 14.837207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563694, 29.278097, 14.955959>,  <36.712730, 29.103996, 15.027210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563694, 29.278097, 14.955959>,  <36.315296, 29.568264, 14.837207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563694, 29.278097, 14.955959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140863, -0.269310, -0.952696,
		0.771055, 0.633437, -0.065055,
		0.620993, -0.725417, 0.296881,
		36.749992, 29.060472, 15.045024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863834, 29.649151, 14.362419>,  <36.315296, 29.568264, 14.837207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863834, 29.649151, 14.362419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892315, 29.280252, 14.514418>,  <36.909405, 29.058914, 14.605617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892315, 29.280252, 14.514418>,  <36.863834, 29.649151, 14.362419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892315, 29.280252, 14.514418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137823, -0.368211, -0.919470,
		0.987894, 0.117842, 0.100888,
		0.071204, -0.922244, 0.379995,
		36.913677, 29.003580, 14.628416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437332, 29.259377, 13.928171>,  <36.863834, 29.649151, 14.362419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437332, 29.259377, 13.928171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205940, 28.987228, 14.108152>,  <37.067104, 28.823940, 14.216141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205940, 28.987228, 14.108152>,  <37.437332, 29.259377, 13.928171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205940, 28.987228, 14.108152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080877, -0.501058, -0.861626,
		0.811678, -0.534824, 0.234825,
		-0.578479, -0.680371, 0.449952,
		37.032398, 28.783117, 14.243138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729282, 28.480236, 13.890239>,  <37.437332, 29.259377, 13.928171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729282, 28.480236, 13.890239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367302, 28.558817, 13.739261>,  <37.150112, 28.605967, 13.648674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367302, 28.558817, 13.739261>,  <37.729282, 28.480236, 13.890239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367302, 28.558817, 13.739261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005396, -0.892269, -0.451472,
		-0.425477, -0.406524, 0.808522,
		-0.904953, 0.196454, -0.377446,
		37.095818, 28.617754, 13.626027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972538, 27.879612, 14.302052>,  <37.729282, 28.480236, 13.890239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972538, 27.879612, 14.302052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275696, 27.649075, 14.424313>,  <38.457592, 27.510752, 14.497669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275696, 27.649075, 14.424313>,  <37.972538, 27.879612, 14.302052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275696, 27.649075, 14.424313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577619, 0.810612, 0.096251,
		-0.303239, 0.103602, 0.947266,
		0.757894, -0.576346, 0.305652,
		38.503063, 27.476171, 14.516008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063507, 28.035791, 14.943973>,  <37.972538, 27.879612, 14.302052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063507, 28.035791, 14.943973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308380, 28.352009, 14.950534>,  <38.455303, 28.541739, 14.954471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.308380, 28.352009, 14.950534>,  <38.063507, 28.035791, 14.943973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308380, 28.352009, 14.950534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785740, 0.610528, -0.099339,
		-0.088547, 0.047925, 0.994919,
		0.612186, 0.790544, 0.016403,
		38.492035, 28.589172, 14.955455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845116, 27.248396, 14.711112>,  <38.063507, 28.035791, 14.943973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845116, 27.248396, 14.711112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657928, 27.299007, 14.361257>,  <37.545616, 27.329374, 14.151343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657928, 27.299007, 14.361257>,  <37.845116, 27.248396, 14.711112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657928, 27.299007, 14.361257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322789, -0.896846, -0.302448,
		-0.822685, -0.423861, 0.378856,
		-0.467971, 0.126529, -0.874639,
		37.517536, 27.336966, 14.098865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301151, 26.748711, 14.626247>,  <37.845116, 27.248396, 14.711112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301151, 26.748711, 14.626247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531914, 26.898300, 14.335779>,  <37.670372, 26.988054, 14.161498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531914, 26.898300, 14.335779>,  <37.301151, 26.748711, 14.626247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531914, 26.898300, 14.335779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364076, -0.913564, -0.181244,
		-0.731185, -0.159821, -0.663194,
		0.576904, 0.373976, -0.726171,
		37.704987, 27.010492, 14.117928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146358, 26.458595, 13.963997>,  <37.301151, 26.748711, 14.626247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146358, 26.458595, 13.963997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529327, 26.557341, 14.023859>,  <37.759109, 26.616589, 14.059776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.529327, 26.557341, 14.023859>,  <37.146358, 26.458595, 13.963997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529327, 26.557341, 14.023859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275831, -0.935242, -0.221899,
		0.085186, 0.253732, -0.963516,
		0.957424, 0.246865, 0.149656,
		37.816555, 26.631401, 14.068756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638084, 26.221083, 13.428153>,  <37.146358, 26.458595, 13.963997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638084, 26.221083, 13.428153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769169, 26.243340, 13.805408>,  <37.847820, 26.256693, 14.031761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769169, 26.243340, 13.805408>,  <37.638084, 26.221083, 13.428153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769169, 26.243340, 13.805408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035544, -0.998284, 0.046543,
		0.944109, 0.018270, -0.329127,
		0.327711, 0.055640, 0.943138,
		37.867481, 26.260031, 14.088350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250118, 26.396894, 12.757856>,  <37.638084, 26.221083, 13.428153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250118, 26.396894, 12.757856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274628, 26.152048, 12.442500>,  <37.289333, 26.005140, 12.253286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274628, 26.152048, 12.442500>,  <37.250118, 26.396894, 12.757856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274628, 26.152048, 12.442500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032521, -0.788232, 0.614518,
		-0.997591, -0.063293, -0.028391,
		0.061274, -0.612115, -0.788391,
		37.293011, 25.968414, 12.205982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870140, 25.871754, 13.299348>,  <37.250118, 26.396894, 12.757856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870140, 25.871754, 13.299348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979931, 25.487772, 13.321810>,  <37.045807, 25.257383, 13.335287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979931, 25.487772, 13.321810>,  <36.870140, 25.871754, 13.299348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979931, 25.487772, 13.321810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125699, 0.093714, 0.987632,
		-0.953342, -0.264025, 0.146388,
		0.274478, -0.959952, 0.056154,
		37.062275, 25.199787, 13.338655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430809, 25.429667, 13.819625>,  <36.870140, 25.871754, 13.299348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430809, 25.429667, 13.819625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781982, 25.248652, 13.757094>,  <36.992687, 25.140043, 13.719576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781982, 25.248652, 13.757094>,  <36.430809, 25.429667, 13.819625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781982, 25.248652, 13.757094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185683, 0.020873, 0.982388,
		-0.441305, -0.891501, 0.102354,
		0.877936, -0.452538, -0.156325,
		37.045364, 25.112890, 13.710196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100807, 25.496632, 14.442709>,  <36.430809, 25.429667, 13.819625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100807, 25.496632, 14.442709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248623, 25.868082, 14.429478>,  <36.337311, 26.090952, 14.421538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248623, 25.868082, 14.429478>,  <36.100807, 25.496632, 14.442709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248623, 25.868082, 14.429478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074626, 0.065143, 0.995082,
		0.926214, -0.365252, 0.093373,
		0.369538, 0.928627, -0.033079,
		36.359486, 26.146669, 14.419554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658882, 25.592651, 14.988824>,  <36.100807, 25.496632, 14.442709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658882, 25.592651, 14.988824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505962, 25.948420, 14.888598>,  <36.414211, 26.161880, 14.828464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505962, 25.948420, 14.888598>,  <36.658882, 25.592651, 14.988824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505962, 25.948420, 14.888598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253231, 0.159937, 0.954093,
		0.888664, 0.428197, 0.164086,
		-0.382297, 0.889420, -0.250563,
		36.391273, 26.215246, 14.813430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831680, 26.131294, 15.486670>,  <36.658882, 25.592651, 14.988824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831680, 26.131294, 15.486670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504745, 26.252150, 15.290440>,  <36.308582, 26.324663, 15.172701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504745, 26.252150, 15.290440>,  <36.831680, 26.131294, 15.486670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504745, 26.252150, 15.290440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329439, 0.453465, 0.828154,
		0.472676, 0.838500, -0.271100,
		-0.817342, 0.302138, -0.490577,
		36.259544, 26.342791, 15.143267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688831, 26.533863, 15.906808>,  <36.831680, 26.131294, 15.486670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688831, 26.533863, 15.906808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360653, 26.552839, 15.678908>,  <36.163746, 26.564224, 15.542169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360653, 26.552839, 15.678908>,  <36.688831, 26.533863, 15.906808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360653, 26.552839, 15.678908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424702, 0.616582, 0.662915,
		0.382745, 0.785861, -0.485726,
		-0.820448, 0.047439, -0.569750,
		36.114517, 26.567072, 15.507983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463432, 27.302015, 15.802149>,  <36.688831, 26.533863, 15.906808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463432, 27.302015, 15.802149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140614, 27.070314, 15.756282>,  <35.946922, 26.931293, 15.728762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.140614, 27.070314, 15.756282>,  <36.463432, 27.302015, 15.802149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140614, 27.070314, 15.756282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405962, 0.403257, 0.820109,
		-0.428810, 0.708413, -0.560600,
		-0.807042, -0.579253, -0.114668,
		35.898502, 26.896538, 15.721881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958900, 27.800177, 15.876197>,  <36.463432, 27.302015, 15.802149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958900, 27.800177, 15.876197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793308, 27.444004, 15.951833>,  <35.693954, 27.230301, 15.997214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793308, 27.444004, 15.951833>,  <35.958900, 27.800177, 15.876197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793308, 27.444004, 15.951833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416809, 0.370089, 0.830243,
		-0.809255, 0.264886, -0.524348,
		-0.413976, -0.890432, 0.189090,
		35.669117, 27.176874, 16.008560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343735, 28.016432, 16.056379>,  <35.958900, 27.800177, 15.876197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343735, 28.016432, 16.056379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380249, 27.644308, 16.198475>,  <35.402157, 27.421034, 16.283731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380249, 27.644308, 16.198475>,  <35.343735, 28.016432, 16.056379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380249, 27.644308, 16.198475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453316, 0.278802, 0.846625,
		-0.886663, -0.238323, -0.396271,
		0.091290, -0.930307, 0.355239,
		35.407635, 27.365215, 16.305046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617073, 27.818050, 16.185995>,  <35.343735, 28.016432, 16.056379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617073, 27.818050, 16.185995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895954, 27.630064, 16.402527>,  <35.063282, 27.517271, 16.532446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895954, 27.630064, 16.402527>,  <34.617073, 27.818050, 16.185995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895954, 27.630064, 16.402527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451087, 0.299280, 0.840804,
		-0.557160, -0.830398, -0.003337,
		0.697204, -0.469968, 0.541329,
		35.105114, 27.489073, 16.564926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302673, 27.540854, 16.760866>,  <34.617073, 27.818050, 16.185995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302673, 27.540854, 16.760866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684227, 27.526115, 16.880026>,  <34.913158, 27.517273, 16.951521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684227, 27.526115, 16.880026>,  <34.302673, 27.540854, 16.760866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684227, 27.526115, 16.880026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287906, 0.168450, 0.942727,
		-0.084918, -0.985021, 0.150074,
		0.953886, -0.036848, 0.297897,
		34.970394, 27.515062, 16.969395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366219, 27.073021, 17.328669>,  <34.302673, 27.540854, 16.760866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366219, 27.073021, 17.328669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711788, 27.271173, 17.364960>,  <34.919128, 27.390066, 17.386734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.711788, 27.271173, 17.364960>,  <34.366219, 27.073021, 17.328669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711788, 27.271173, 17.364960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105075, 0.001114, 0.994464,
		0.492539, -0.868674, 0.053014,
		0.863924, 0.495383, 0.090727,
		34.970966, 27.419788, 17.392178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811920, 26.708670, 17.808840>,  <34.366219, 27.073021, 17.328669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811920, 26.708670, 17.808840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926559, 27.091843, 17.814795>,  <34.995342, 27.321747, 17.818367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926559, 27.091843, 17.814795>,  <34.811920, 26.708670, 17.808840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926559, 27.091843, 17.814795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123132, 0.021420, 0.992159,
		0.950105, -0.286185, 0.124092,
		0.286599, 0.957935, 0.014887,
		35.012539, 27.379223, 17.819262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000217, 26.840502, 18.444725>,  <34.811920, 26.708670, 17.808840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000217, 26.840502, 18.444725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018173, 27.224541, 18.334309>,  <35.028946, 27.454964, 18.268059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018173, 27.224541, 18.334309>,  <35.000217, 26.840502, 18.444725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018173, 27.224541, 18.334309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109645, 0.279384, 0.953898,
		0.992957, -0.012549, 0.117810,
		0.044885, 0.960097, -0.276040,
		35.031639, 27.512569, 18.251497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360847, 27.211187, 18.960403>,  <35.000217, 26.840502, 18.444725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360847, 27.211187, 18.960403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155556, 27.495476, 18.767960>,  <35.032379, 27.666050, 18.652493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155556, 27.495476, 18.767960>,  <35.360847, 27.211187, 18.960403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155556, 27.495476, 18.767960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028047, 0.546383, 0.837066,
		0.857792, 0.443103, -0.260487,
		-0.513232, 0.710722, -0.481111,
		35.001587, 27.708693, 18.623627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587082, 27.869390, 19.257362>,  <35.360847, 27.211187, 18.960403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587082, 27.869390, 19.257362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226692, 27.945419, 19.101357>,  <35.010456, 27.991037, 19.007753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226692, 27.945419, 19.101357>,  <35.587082, 27.869390, 19.257362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226692, 27.945419, 19.101357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216472, 0.582107, 0.783767,
		0.376004, 0.790584, -0.483319,
		-0.900978, 0.190074, -0.390014,
		34.956398, 28.002441, 18.984352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520836, 28.591669, 19.327082>,  <35.587082, 27.869390, 19.257362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520836, 28.591669, 19.327082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154209, 28.439131, 19.278938>,  <34.934235, 28.347607, 19.250051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154209, 28.439131, 19.278938>,  <35.520836, 28.591669, 19.327082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154209, 28.439131, 19.278938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309391, 0.485565, 0.817621,
		-0.253355, 0.786640, -0.563037,
		-0.916563, -0.381347, -0.120359,
		34.879242, 28.324726, 19.242830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062157, 29.092516, 19.547020>,  <35.520836, 28.591669, 19.327082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062157, 29.092516, 19.547020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845074, 28.756590, 19.552317>,  <34.714825, 28.555035, 19.555494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845074, 28.756590, 19.552317>,  <35.062157, 29.092516, 19.547020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845074, 28.756590, 19.552317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184372, 0.134496, 0.973611,
		-0.819436, 0.525945, -0.227831,
		-0.542708, -0.839817, 0.013242,
		34.682262, 28.504644, 19.556290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396179, 29.257481, 19.956875>,  <35.062157, 29.092516, 19.547020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396179, 29.257481, 19.956875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442440, 28.860172, 19.954439>,  <34.470196, 28.621788, 19.952978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442440, 28.860172, 19.954439>,  <34.396179, 29.257481, 19.956875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442440, 28.860172, 19.954439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228756, -0.032600, 0.972938,
		-0.966589, -0.111130, -0.230987,
		0.115652, -0.993271, -0.006089,
		34.477135, 28.562191, 19.952612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927715, 29.026670, 20.462027>,  <34.396179, 29.257481, 19.956875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927715, 29.026670, 20.462027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182713, 28.725126, 20.398407>,  <34.335712, 28.544201, 20.360235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182713, 28.725126, 20.398407>,  <33.927715, 29.026670, 20.462027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182713, 28.725126, 20.398407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031135, -0.181059, 0.982979,
		-0.769825, -0.631596, -0.091953,
		0.637495, -0.753859, -0.159048,
		34.373962, 28.498968, 20.350693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735184, 28.460115, 20.888517>,  <33.927715, 29.026670, 20.462027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735184, 28.460115, 20.888517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128418, 28.422909, 20.825413>,  <34.364357, 28.400585, 20.787550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128418, 28.422909, 20.825413>,  <33.735184, 28.460115, 20.888517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128418, 28.422909, 20.825413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133753, -0.223780, 0.965418,
		-0.125101, -0.970191, -0.207555,
		0.983087, -0.093014, -0.157761,
		34.423344, 28.395004, 20.778084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925316, 27.836061, 21.178341>,  <33.735184, 28.460115, 20.888517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925316, 27.836061, 21.178341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252987, 28.064768, 21.160330>,  <34.449589, 28.201992, 21.149523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252987, 28.064768, 21.160330>,  <33.925316, 27.836061, 21.178341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252987, 28.064768, 21.160330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081730, -0.038670, 0.995904,
		0.567683, -0.819505, -0.078408,
		0.819181, 0.571766, -0.045026,
		34.498741, 28.236298, 21.146822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316418, 27.632137, 21.820152>,  <33.925316, 27.836061, 21.178341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316418, 27.632137, 21.820152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554737, 27.933849, 21.709816>,  <34.697727, 28.114878, 21.643614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554737, 27.933849, 21.709816>,  <34.316418, 27.632137, 21.820152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554737, 27.933849, 21.709816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343378, 0.071247, 0.936491,
		0.726031, -0.652673, -0.216555,
		0.595794, 0.754282, -0.275841,
		34.733475, 28.160133, 21.627064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926483, 27.493990, 22.110146>,  <34.316418, 27.632137, 21.820152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926483, 27.493990, 22.110146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904423, 27.890141, 22.059372>,  <34.891186, 28.127831, 22.028908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904423, 27.890141, 22.059372>,  <34.926483, 27.493990, 22.110146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904423, 27.890141, 22.059372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298032, 0.137660, 0.944577,
		0.952961, 0.014269, -0.302757,
		-0.055156, 0.990377, -0.126932,
		34.887875, 28.187254, 22.021292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456905, 27.674526, 22.476171>,  <34.926483, 27.493990, 22.110146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456905, 27.674526, 22.476171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249962, 28.014355, 22.435053>,  <35.125797, 28.218252, 22.410381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.249962, 28.014355, 22.435053>,  <35.456905, 27.674526, 22.476171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249962, 28.014355, 22.435053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271281, 0.276742, 0.921857,
		0.811633, 0.449043, -0.373647,
		-0.517357, 0.849573, -0.102796,
		35.094753, 28.269226, 22.404215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926498, 28.172323, 22.737719>,  <35.456905, 27.674526, 22.476171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926498, 28.172323, 22.737719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587643, 28.384712, 22.729536>,  <35.384327, 28.512146, 22.724627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587643, 28.384712, 22.729536>,  <35.926498, 28.172323, 22.737719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587643, 28.384712, 22.729536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236211, 0.410789, 0.880601,
		0.475975, 0.741163, -0.473418,
		-0.847144, 0.530970, -0.020454,
		35.333500, 28.544003, 22.723400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094994, 28.827791, 22.996227>,  <35.926498, 28.172323, 22.737719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094994, 28.827791, 22.996227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698410, 28.810551, 23.045471>,  <35.460461, 28.800205, 23.075018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698410, 28.810551, 23.045471>,  <36.094994, 28.827791, 22.996227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698410, 28.810551, 23.045471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084140, 0.509869, 0.856127,
		-0.099672, 0.859171, -0.501886,
		-0.991456, -0.043103, 0.123110,
		35.400974, 28.797619, 23.082405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991383, 29.440731, 23.359255>,  <36.094994, 28.827791, 22.996227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991383, 29.440731, 23.359255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665760, 29.217379, 23.423161>,  <35.470387, 29.083366, 23.461504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665760, 29.217379, 23.423161>,  <35.991383, 29.440731, 23.359255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665760, 29.217379, 23.423161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100847, 0.406804, 0.907932,
		-0.571966, 0.722994, -0.387471,
		-0.814054, -0.558382, 0.159766,
		35.421543, 29.049864, 23.471090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526901, 29.910418, 23.610716>,  <35.991383, 29.440731, 23.359255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526901, 29.910418, 23.610716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392223, 29.554173, 23.732990>,  <35.311417, 29.340425, 23.806355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.392223, 29.554173, 23.732990>,  <35.526901, 29.910418, 23.610716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392223, 29.554173, 23.732990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156809, 0.373141, 0.914427,
		-0.928467, 0.259945, -0.265289,
		-0.336691, -0.890615, 0.305688,
		35.291218, 29.286987, 23.824697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009151, 30.045416, 24.097462>,  <35.526901, 29.910418, 23.610716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009151, 30.045416, 24.097462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091038, 29.668045, 24.201794>,  <35.140171, 29.441622, 24.264393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091038, 29.668045, 24.201794>,  <35.009151, 30.045416, 24.097462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091038, 29.668045, 24.201794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124387, 0.239240, 0.962960,
		-0.970886, -0.229579, -0.068374,
		0.204717, -0.943429, 0.260831,
		35.152454, 29.385015, 24.280043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425735, 29.746550, 24.482960>,  <35.009151, 30.045416, 24.097462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425735, 29.746550, 24.482960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763004, 29.567497, 24.602079>,  <34.965366, 29.460066, 24.673552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763004, 29.567497, 24.602079>,  <34.425735, 29.746550, 24.482960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763004, 29.567497, 24.602079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226412, 0.206758, 0.951835,
		-0.487643, -0.869987, 0.072984,
		0.843174, -0.447631, 0.297799,
		35.015957, 29.433208, 24.691420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232304, 29.338818, 24.931524>,  <34.425735, 29.746550, 24.482960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232304, 29.338818, 24.931524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621941, 29.372702, 25.015392>,  <34.855724, 29.393032, 25.065712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621941, 29.372702, 25.015392>,  <34.232304, 29.338818, 24.931524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621941, 29.372702, 25.015392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225992, 0.331679, 0.915924,
		0.008047, -0.939581, 0.342232,
		0.974096, 0.084712, 0.209669,
		34.914169, 29.398115, 25.078293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372196, 29.006222, 25.615019>,  <34.232304, 29.338818, 24.931524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372196, 29.006222, 25.615019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698822, 29.234165, 25.578182>,  <34.894798, 29.370932, 25.556080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.698822, 29.234165, 25.578182>,  <34.372196, 29.006222, 25.615019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698822, 29.234165, 25.578182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010792, 0.144437, 0.989455,
		0.577152, -0.808949, 0.111792,
		0.816566, 0.569859, -0.092092,
		34.943790, 29.405123, 25.550554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917065, 28.796825, 26.179819>,  <34.372196, 29.006222, 25.615019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917065, 28.796825, 26.179819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981297, 29.177984, 26.076900>,  <35.019836, 29.406679, 26.015150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981297, 29.177984, 26.076900>,  <34.917065, 28.796825, 26.179819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981297, 29.177984, 26.076900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040304, 0.254132, 0.966330,
		0.986199, -0.165547, 0.002404,
		0.160584, 0.952896, -0.257297,
		35.029472, 29.463854, 25.999712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384106, 29.064564, 26.731754>,  <34.917065, 28.796825, 26.179819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384106, 29.064564, 26.731754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246952, 29.388950, 26.542118>,  <35.164658, 29.583582, 26.428337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246952, 29.388950, 26.542118>,  <35.384106, 29.064564, 26.731754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246952, 29.388950, 26.542118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068062, 0.481910, 0.873573,
		0.936907, 0.331806, -0.110045,
		-0.342888, 0.810967, -0.474088,
		35.144085, 29.632240, 26.399891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666809, 29.576828, 27.113432>,  <35.384106, 29.064564, 26.731754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666809, 29.576828, 27.113432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358772, 29.724796, 26.905542>,  <35.173950, 29.813578, 26.780809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.358772, 29.724796, 26.905542>,  <35.666809, 29.576828, 27.113432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358772, 29.724796, 26.905542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324553, 0.474191, 0.818418,
		0.549196, 0.798938, -0.245115,
		-0.770097, 0.369920, -0.519722,
		35.127743, 29.835772, 26.749626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627075, 30.185804, 27.317366>,  <35.666809, 29.576828, 27.113432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627075, 30.185804, 27.317366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261257, 30.134239, 27.164009>,  <35.041767, 30.103300, 27.071995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261257, 30.134239, 27.164009>,  <35.627075, 30.185804, 27.317366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261257, 30.134239, 27.164009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404232, 0.257686, 0.877607,
		-0.014341, 0.957590, -0.287777,
		-0.914544, -0.128914, -0.383393,
		34.986893, 30.095566, 27.048990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327431, 30.732702, 27.468216>,  <35.627075, 30.185804, 27.317366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327431, 30.732702, 27.468216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029572, 30.476578, 27.392847>,  <34.850857, 30.322903, 27.347626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.029572, 30.476578, 27.392847>,  <35.327431, 30.732702, 27.468216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029572, 30.476578, 27.392847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395482, 0.195869, 0.897346,
		-0.537675, 0.742723, -0.399084,
		-0.744648, -0.640311, -0.188420,
		34.806179, 30.284485, 27.336321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715614, 31.087967, 27.509130>,  <35.327431, 30.732702, 27.468216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715614, 31.087967, 27.509130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629784, 30.703302, 27.577444>,  <34.578285, 30.472504, 27.618433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629784, 30.703302, 27.577444>,  <34.715614, 31.087967, 27.509130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629784, 30.703302, 27.577444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318449, 0.234185, 0.918558,
		-0.923335, 0.142713, -0.356490,
		-0.214575, -0.961661, 0.170784,
		34.565411, 30.414804, 27.628679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150337, 31.098532, 28.063135>,  <34.715614, 31.087967, 27.509130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150337, 31.098532, 28.063135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257778, 30.713648, 28.081032>,  <34.322243, 30.482718, 28.091770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257778, 30.713648, 28.081032>,  <34.150337, 31.098532, 28.063135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257778, 30.713648, 28.081032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088139, 0.021704, 0.995872,
		-0.959209, -0.271441, -0.078978,
		0.268606, -0.962210, 0.044743,
		34.338360, 30.424984, 28.094454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606293, 30.786709, 28.433527>,  <34.150337, 31.098532, 28.063135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606293, 30.786709, 28.433527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934322, 30.560009, 28.465214>,  <34.131142, 30.423990, 28.484226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934322, 30.560009, 28.465214>,  <33.606293, 30.786709, 28.433527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934322, 30.560009, 28.465214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098963, -0.004113, 0.995083,
		-0.563635, -0.823881, -0.059460,
		0.820075, -0.566747, 0.079216,
		34.180344, 30.389984, 28.488979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425873, 30.317125, 28.868736>,  <33.606293, 30.786709, 28.433527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425873, 30.317125, 28.868736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823925, 30.277882, 28.872416>,  <34.062756, 30.254335, 28.874622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823925, 30.277882, 28.872416>,  <33.425873, 30.317125, 28.868736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823925, 30.277882, 28.872416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020223, -0.111984, 0.993504,
		-0.096423, -0.988857, -0.113423,
		0.995135, -0.098090, 0.009200,
		34.122463, 30.248447, 28.875175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073902, 30.382149, 28.160965>,  <33.425873, 30.317125, 28.868736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073902, 30.382149, 28.160965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681393, 30.311256, 28.191120>,  <32.445885, 30.268721, 28.209213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681393, 30.311256, 28.191120>,  <33.073902, 30.382149, 28.160965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681393, 30.311256, 28.191120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006164, -0.362333, -0.932028,
		0.192501, -0.915043, 0.354457,
		-0.981278, -0.177231, 0.075390,
		32.387009, 30.258087, 28.213737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080307, 29.682354, 27.954292>,  <33.073902, 30.382149, 28.160965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080307, 29.682354, 27.954292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716877, 29.841677, 27.903950>,  <32.498817, 29.937271, 27.873743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716877, 29.841677, 27.903950>,  <33.080307, 29.682354, 27.954292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716877, 29.841677, 27.903950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060326, -0.423259, -0.903998,
		-0.413323, -0.813766, 0.408593,
		-0.908583, 0.398292, -0.125851,
		32.444305, 29.961168, 27.866192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636299, 29.086733, 27.651150>,  <33.080307, 29.682354, 27.954292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636299, 29.086733, 27.651150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456772, 29.433075, 27.562729>,  <32.349056, 29.640881, 27.509676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.456772, 29.433075, 27.562729>,  <32.636299, 29.086733, 27.651150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456772, 29.433075, 27.562729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249959, -0.359129, -0.899192,
		-0.857954, -0.348317, 0.377610,
		-0.448814, 0.865853, -0.221051,
		32.322128, 29.692831, 27.496414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913534, 28.897387, 27.433033>,  <32.636299, 29.086733, 27.651150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913534, 28.897387, 27.433033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042690, 29.246941, 27.287668>,  <32.120186, 29.456673, 27.200449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042690, 29.246941, 27.287668>,  <31.913534, 28.897387, 27.433033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042690, 29.246941, 27.287668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208601, -0.308822, -0.927962,
		-0.923161, 0.375440, 0.082577,
		0.322892, 0.873884, -0.363410,
		32.139557, 29.509106, 27.178646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.397087, 28.964750, 27.058975>,  <31.913534, 28.897387, 27.433033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.397087, 28.964750, 27.058975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675220, 29.207146, 26.904425>,  <31.842100, 29.352583, 26.811693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675220, 29.207146, 26.904425>,  <31.397087, 28.964750, 27.058975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675220, 29.207146, 26.904425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205822, -0.347192, -0.914929,
		-0.688584, 0.715707, -0.116689,
		0.695335, 0.605988, -0.386379,
		31.883821, 29.388943, 26.788511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102745, 29.301743, 26.498938>,  <31.397087, 28.964750, 27.058975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102745, 29.301743, 26.498938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495102, 29.348991, 26.437098>,  <31.730516, 29.377340, 26.399994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495102, 29.348991, 26.437098>,  <31.102745, 29.301743, 26.498938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495102, 29.348991, 26.437098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142825, -0.102412, -0.984435,
		-0.132118, 0.987704, -0.083584,
		0.980890, 0.118123, -0.154599,
		31.789370, 29.384428, 26.390718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199589, 29.785578, 25.937372>,  <31.102745, 29.301743, 26.498938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199589, 29.785578, 25.937372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545225, 29.585552, 25.960278>,  <31.752607, 29.465536, 25.974022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545225, 29.585552, 25.960278>,  <31.199589, 29.785578, 25.937372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545225, 29.585552, 25.960278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038266, -0.178709, -0.983158,
		0.501877, 0.847347, -0.173557,
		0.864092, -0.500065, 0.057265,
		31.804453, 29.435534, 25.977457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642540, 30.034979, 25.432495>,  <31.199589, 29.785578, 25.937372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642540, 30.034979, 25.432495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789526, 29.671503, 25.511749>,  <31.877718, 29.453419, 25.559301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789526, 29.671503, 25.511749>,  <31.642540, 30.034979, 25.432495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789526, 29.671503, 25.511749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142872, -0.155357, -0.977472,
		0.918998, 0.387494, 0.072738,
		0.367464, -0.908687, 0.198135,
		31.899765, 29.398897, 25.571190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235855, 30.027573, 24.982141>,  <31.642540, 30.034979, 25.432495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235855, 30.027573, 24.982141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204582, 29.644196, 25.091883>,  <32.185818, 29.414169, 25.157728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204582, 29.644196, 25.091883>,  <32.235855, 30.027573, 24.982141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204582, 29.644196, 25.091883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120511, -0.282265, -0.951737,
		0.989629, -0.041345, 0.137571,
		-0.078181, -0.958445, 0.274355,
		32.181129, 29.356663, 25.174189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676231, 29.741783, 24.602158>,  <32.235855, 30.027573, 24.982141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676231, 29.741783, 24.602158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434673, 29.443056, 24.713562>,  <32.289738, 29.263821, 24.780405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434673, 29.443056, 24.713562>,  <32.676231, 29.741783, 24.602158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434673, 29.443056, 24.713562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127574, -0.254355, -0.958660,
		0.786785, -0.614465, 0.058331,
		-0.603900, -0.746817, 0.278512,
		32.253502, 29.219011, 24.797115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012089, 29.210814, 24.391605>,  <32.676231, 29.741783, 24.602158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012089, 29.210814, 24.391605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627071, 29.109791, 24.431068>,  <32.396061, 29.049177, 24.454746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627071, 29.109791, 24.431068>,  <33.012089, 29.210814, 24.391605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627071, 29.109791, 24.431068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021676, -0.434372, -0.900473,
		0.270276, -0.864602, 0.423575,
		-0.962539, -0.252557, 0.098659,
		32.338310, 29.034023, 24.460667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924419, 28.606754, 23.991455>,  <33.012089, 29.210814, 24.391605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924419, 28.606754, 23.991455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542980, 28.719540, 24.033684>,  <32.314117, 28.787210, 24.059021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542980, 28.719540, 24.033684>,  <32.924419, 28.606754, 23.991455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542980, 28.719540, 24.033684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215979, -0.396339, -0.892339,
		-0.209764, -0.873735, 0.438847,
		-0.953599, 0.281962, 0.105571,
		32.256901, 28.804129, 24.065355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457439, 27.995562, 24.067547>,  <32.924419, 28.606754, 23.991455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457439, 27.995562, 24.067547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266472, 28.316816, 23.924971>,  <32.151894, 28.509569, 23.839426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266472, 28.316816, 23.924971>,  <32.457439, 27.995562, 24.067547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266472, 28.316816, 23.924971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157419, -0.477269, -0.864542,
		-0.864462, -0.356635, 0.354284,
		-0.477415, 0.803135, -0.356439,
		32.123249, 28.557756, 23.818039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.928135, 27.716808, 23.696207>,  <32.457439, 27.995562, 24.067547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.928135, 27.716808, 23.696207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943018, 28.095997, 23.569736>,  <31.951948, 28.323509, 23.493855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.943018, 28.095997, 23.569736>,  <31.928135, 27.716808, 23.696207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943018, 28.095997, 23.569736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194995, -0.303425, -0.932690,
		-0.980098, 0.096357, 0.173560,
		0.037208, 0.947971, -0.316175,
		31.954180, 28.380388, 23.474884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314405, 27.815340, 23.252136>,  <31.928135, 27.716808, 23.696207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314405, 27.815340, 23.252136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617327, 28.057417, 23.153965>,  <31.799080, 28.202663, 23.095062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617327, 28.057417, 23.153965>,  <31.314405, 27.815340, 23.252136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617327, 28.057417, 23.153965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155406, -0.198015, -0.967801,
		-0.634302, 0.771061, -0.055907,
		0.757304, 0.605190, -0.245429,
		31.844519, 28.238974, 23.080336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253752, 27.803158, 22.585419>,  <31.314405, 27.815340, 23.252136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253752, 27.803158, 22.585419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588661, 28.021173, 22.602882>,  <31.789606, 28.151983, 22.613361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588661, 28.021173, 22.602882>,  <31.253752, 27.803158, 22.585419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588661, 28.021173, 22.602882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021208, 0.112159, -0.993464,
		-0.546375, 0.830874, 0.105467,
		0.837272, 0.545041, 0.043659,
		31.839844, 28.184687, 22.615980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167795, 28.367535, 22.103796>,  <31.253752, 27.803158, 22.585419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167795, 28.367535, 22.103796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560915, 28.315601, 22.156330>,  <31.796787, 28.284441, 22.187851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560915, 28.315601, 22.156330>,  <31.167795, 28.367535, 22.103796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560915, 28.315601, 22.156330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127875, -0.034663, -0.991185,
		0.133240, 0.990930, -0.017464,
		0.982800, -0.129833, 0.131333,
		31.855755, 28.276651, 22.195730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559628, 28.820841, 21.557777>,  <31.167795, 28.367535, 22.103796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559628, 28.820841, 21.557777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822821, 28.546528, 21.682203>,  <31.980736, 28.381939, 21.756859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822821, 28.546528, 21.682203>,  <31.559628, 28.820841, 21.557777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822821, 28.546528, 21.682203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304928, -0.135057, -0.942751,
		0.688535, 0.715164, 0.120250,
		0.657981, -0.685784, 0.311065,
		32.020214, 28.340792, 21.775522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243950, 28.885908, 21.095892>,  <31.559628, 28.820841, 21.557777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243950, 28.885908, 21.095892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231544, 28.512712, 21.239317>,  <32.224102, 28.288795, 21.325371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231544, 28.512712, 21.239317>,  <32.243950, 28.885908, 21.095892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231544, 28.512712, 21.239317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189329, -0.357723, -0.914434,
		0.981424, 0.039523, 0.187738,
		-0.031017, -0.932991, 0.358561,
		32.222240, 28.232815, 21.346886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957695, 28.628790, 21.024540>,  <32.243950, 28.885908, 21.095892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957695, 28.628790, 21.024540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687393, 28.333942, 21.023327>,  <32.525211, 28.157034, 21.022598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687393, 28.333942, 21.023327>,  <32.957695, 28.628790, 21.024540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687393, 28.333942, 21.023327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269751, -0.243460, -0.931645,
		0.685996, -0.630381, 0.363358,
		-0.675754, -0.737121, -0.003033,
		32.484665, 28.112806, 21.022417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155132, 28.263691, 20.463017>,  <32.957695, 28.628790, 21.024540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155132, 28.263691, 20.463017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816441, 28.086281, 20.580551>,  <32.613228, 27.979836, 20.651072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816441, 28.086281, 20.580551>,  <33.155132, 28.263691, 20.463017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816441, 28.086281, 20.580551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074335, -0.448252, -0.890811,
		0.526809, -0.776116, 0.346577,
		-0.846727, -0.443525, 0.293836,
		32.562424, 27.953224, 20.668701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214314, 27.538765, 20.336891>,  <33.155132, 28.263691, 20.463017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214314, 27.538765, 20.336891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823456, 27.623537, 20.343447>,  <32.588940, 27.674400, 20.347380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823456, 27.623537, 20.343447>,  <33.214314, 27.538765, 20.336891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823456, 27.623537, 20.343447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073763, -0.265773, -0.961210,
		-0.199353, -0.940452, 0.275332,
		-0.977148, 0.211930, 0.016388,
		32.530312, 27.687117, 20.348364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890469, 26.986286, 19.921253>,  <33.214314, 27.538765, 20.336891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890469, 26.986286, 19.921253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600246, 27.261507, 19.916445>,  <32.426113, 27.426640, 19.913559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600246, 27.261507, 19.916445>,  <32.890469, 26.986286, 19.921253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600246, 27.261507, 19.916445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283612, -0.314896, -0.905762,
		-0.626999, -0.653774, 0.423617,
		-0.725559, 0.688055, -0.012021,
		32.382580, 27.467924, 19.912838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401875, 26.629879, 19.565634>,  <32.890469, 26.986286, 19.921253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401875, 26.629879, 19.565634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291512, 27.013969, 19.548470>,  <32.225292, 27.244423, 19.538172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291512, 27.013969, 19.548470>,  <32.401875, 26.629879, 19.565634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291512, 27.013969, 19.548470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175468, -0.094212, -0.979967,
		-0.945032, -0.262854, 0.194483,
		-0.275911, 0.960225, -0.042911,
		32.208740, 27.302036, 19.535597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775738, 26.662897, 19.176394>,  <32.401875, 26.629879, 19.565634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775738, 26.662897, 19.176394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955029, 27.020428, 19.181517>,  <32.062603, 27.234947, 19.184589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955029, 27.020428, 19.181517>,  <31.775738, 26.662897, 19.176394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955029, 27.020428, 19.181517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085194, 0.056975, -0.994734,
		-0.889851, 0.444776, 0.101686,
		0.448227, 0.893828, 0.012807,
		32.089497, 27.288576, 19.185358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349144, 27.059275, 18.660498>,  <31.775738, 26.662897, 19.176394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349144, 27.059275, 18.660498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690311, 27.262093, 18.710188>,  <31.895012, 27.383783, 18.740002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690311, 27.262093, 18.710188>,  <31.349144, 27.059275, 18.660498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690311, 27.262093, 18.710188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085802, 0.098563, -0.991425,
		-0.514943, 0.856264, 0.040561,
		0.852919, 0.507047, 0.124224,
		31.946188, 27.414207, 18.747456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237621, 27.683645, 18.296656>,  <31.349144, 27.059275, 18.660498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237621, 27.683645, 18.296656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633039, 27.628548, 18.321327>,  <31.870291, 27.595490, 18.336130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633039, 27.628548, 18.321327>,  <31.237621, 27.683645, 18.296656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633039, 27.628548, 18.321327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068665, 0.046568, -0.996552,
		0.134396, 0.989372, 0.055493,
		0.988546, -0.137743, 0.061677,
		31.929604, 27.587225, 18.339830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447365, 28.273207, 17.854334>,  <31.237621, 27.683645, 18.296656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447365, 28.273207, 17.854334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781549, 28.054726, 17.878565>,  <31.982059, 27.923637, 17.893103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781549, 28.054726, 17.878565>,  <31.447365, 28.273207, 17.854334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781549, 28.054726, 17.878565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225761, 0.240624, -0.943998,
		0.501038, 0.802348, 0.324343,
		0.835460, -0.546203, 0.060577,
		32.032188, 27.890865, 17.896738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961771, 28.708883, 17.517715>,  <31.447365, 28.273207, 17.854334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961771, 28.708883, 17.517715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097591, 28.333353, 17.494698>,  <32.179085, 28.108034, 17.480886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097591, 28.333353, 17.494698>,  <31.961771, 28.708883, 17.517715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097591, 28.333353, 17.494698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303259, 0.167185, -0.938128,
		0.890359, 0.301092, 0.341475,
		0.339552, -0.938825, -0.057545,
		32.199455, 28.051706, 17.477434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645130, 28.768526, 17.245327>,  <31.961771, 28.708883, 17.517715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645130, 28.768526, 17.245327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504040, 28.399488, 17.182833>,  <32.419388, 28.178066, 17.145336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504040, 28.399488, 17.182833>,  <32.645130, 28.768526, 17.245327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504040, 28.399488, 17.182833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213870, 0.083060, -0.973324,
		0.910960, -0.376726, 0.168018,
		-0.352721, -0.922593, -0.156234,
		32.398224, 28.122711, 17.135962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159126, 28.362616, 17.108227>,  <32.645130, 28.768526, 17.245327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159126, 28.362616, 17.108227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843845, 28.177689, 16.945744>,  <32.654678, 28.066732, 16.848253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843845, 28.177689, 16.945744>,  <33.159126, 28.362616, 17.108227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843845, 28.177689, 16.945744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290403, 0.302537, -0.907820,
		0.542593, -0.833508, -0.104201,
		-0.788200, -0.462317, -0.406207,
		32.607384, 28.038994, 16.823881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477230, 28.001657, 16.570635>,  <33.159126, 28.362616, 17.108227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477230, 28.001657, 16.570635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082924, 27.985231, 16.505421>,  <32.846340, 27.975376, 16.466291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082924, 27.985231, 16.505421>,  <33.477230, 28.001657, 16.570635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082924, 27.985231, 16.505421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154903, 0.155144, -0.975672,
		0.065359, -0.987038, -0.146575,
		-0.985765, -0.041064, -0.163035,
		32.787193, 27.972912, 16.456511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430046, 27.576797, 15.980677>,  <33.477230, 28.001657, 16.570635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430046, 27.576797, 15.980677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076748, 27.763618, 15.997368>,  <32.864769, 27.875711, 16.007383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076748, 27.763618, 15.997368>,  <33.430046, 27.576797, 15.980677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076748, 27.763618, 15.997368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028309, 0.141939, -0.989470,
		-0.468059, -0.872762, -0.138589,
		-0.883243, 0.467054, 0.041728,
		32.811775, 27.903734, 16.009886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935238, 27.312737, 15.429953>,  <33.430046, 27.576797, 15.980677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935238, 27.312737, 15.429953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820023, 27.684278, 15.523131>,  <32.750893, 27.907204, 15.579039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820023, 27.684278, 15.523131>,  <32.935238, 27.312737, 15.429953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820023, 27.684278, 15.523131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124673, 0.277558, -0.952585,
		-0.949470, -0.245336, -0.195750,
		-0.288035, 0.928855, 0.232946,
		32.733612, 27.962934, 15.593015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676304, 27.502207, 14.780649>,  <32.935238, 27.312737, 15.429953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676304, 27.502207, 14.780649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695709, 27.838440, 14.996452>,  <32.707352, 28.040180, 15.125935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695709, 27.838440, 14.996452>,  <32.676304, 27.502207, 14.780649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695709, 27.838440, 14.996452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200512, 0.520953, -0.829701,
		-0.978489, 0.148428, -0.143274,
		0.048512, 0.840581, 0.539509,
		32.710262, 28.090614, 15.158305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240917, 28.038795, 14.428123>,  <32.676304, 27.502207, 14.780649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240917, 28.038795, 14.428123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508835, 28.240625, 14.646031>,  <32.669586, 28.361725, 14.776776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508835, 28.240625, 14.646031>,  <32.240917, 28.038795, 14.428123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508835, 28.240625, 14.646031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169769, 0.610160, -0.773875,
		-0.722877, 0.610824, 0.323022,
		0.669797, 0.504577, 0.544770,
		32.709774, 28.391998, 14.809463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101234, 28.713491, 14.270694>,  <32.240917, 28.038795, 14.428123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101234, 28.713491, 14.270694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476814, 28.720608, 14.408133>,  <32.702164, 28.724876, 14.490596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.476814, 28.720608, 14.408133>,  <32.101234, 28.713491, 14.270694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.476814, 28.720608, 14.408133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233079, 0.701706, -0.673263,
		-0.253081, 0.712244, 0.654720,
		0.938949, 0.017789, 0.343598,
		32.758499, 28.725945, 14.511211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257889, 29.398710, 14.246829>,  <32.101234, 28.713491, 14.270694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257889, 29.398710, 14.246829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595238, 29.183882, 14.240092>,  <32.797646, 29.054985, 14.236050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595238, 29.183882, 14.240092>,  <32.257889, 29.398710, 14.246829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595238, 29.183882, 14.240092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280416, 0.466644, -0.838815,
		0.458364, 0.702707, 0.544156,
		0.843368, -0.537072, -0.016843,
		32.848248, 29.022760, 14.235040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480625, 29.991695, 13.789535>,  <32.257889, 29.398710, 14.246829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480625, 29.991695, 13.789535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392529, 30.370115, 13.884601>,  <32.339672, 30.597168, 13.941641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392529, 30.370115, 13.884601>,  <32.480625, 29.991695, 13.789535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392529, 30.370115, 13.884601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095249, -0.221627, 0.970469,
		0.970785, 0.236371, -0.041300,
		-0.220237, 0.946050, 0.237666,
		32.326458, 30.653931, 13.955900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999130, 30.150812, 14.229602>,  <32.480625, 29.991695, 13.789535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999130, 30.150812, 14.229602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696125, 30.400192, 14.307048>,  <32.514324, 30.549820, 14.353516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696125, 30.400192, 14.307048>,  <32.999130, 30.150812, 14.229602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696125, 30.400192, 14.307048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177530, -0.088675, 0.980112,
		0.628221, 0.776817, -0.043509,
		-0.757510, 0.623451, 0.193616,
		32.468872, 30.587227, 14.365132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305157, 30.675659, 14.571610>,  <32.999130, 30.150812, 14.229602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305157, 30.675659, 14.571610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918083, 30.708855, 14.666863>,  <32.685841, 30.728771, 14.724015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918083, 30.708855, 14.666863>,  <33.305157, 30.675659, 14.571610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918083, 30.708855, 14.666863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252177, 0.319920, 0.913268,
		-0.000393, 0.943803, -0.330508,
		-0.967681, 0.082988, 0.238131,
		32.627777, 30.733751, 14.738303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308910, 31.231100, 15.074574>,  <33.305157, 30.675659, 14.571610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308910, 31.231100, 15.074574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954029, 31.057211, 15.136391>,  <32.741100, 30.952877, 15.173481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954029, 31.057211, 15.136391>,  <33.308910, 31.231100, 15.074574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954029, 31.057211, 15.136391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143583, 0.058174, 0.987927,
		-0.438465, 0.898683, 0.010806,
		-0.887205, -0.434723, 0.154543,
		32.687866, 30.926794, 15.182754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964890, 31.614105, 15.469208>,  <33.308910, 31.231100, 15.074574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964890, 31.614105, 15.469208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765038, 31.276281, 15.546247>,  <32.645126, 31.073587, 15.592469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765038, 31.276281, 15.546247>,  <32.964890, 31.614105, 15.469208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765038, 31.276281, 15.546247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055501, 0.190668, 0.980084,
		-0.864461, 0.500366, -0.048390,
		-0.499627, -0.844559, 0.192596,
		32.615150, 31.022913, 15.604025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465427, 31.806044, 16.075361>,  <32.964890, 31.614105, 15.469208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465427, 31.806044, 16.075361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469887, 31.406076, 16.072798>,  <32.472565, 31.166096, 16.071260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469887, 31.406076, 16.072798>,  <32.465427, 31.806044, 16.075361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469887, 31.406076, 16.072798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163243, -0.008144, 0.986552,
		-0.986523, -0.009957, -0.163321,
		0.011153, -0.999917, -0.006409,
		32.473232, 31.106102, 16.070875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860315, 31.653360, 16.350058>,  <32.465427, 31.806044, 16.075361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860315, 31.653360, 16.350058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080784, 31.325705, 16.413578>,  <32.213066, 31.129110, 16.451691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080784, 31.325705, 16.413578>,  <31.860315, 31.653360, 16.350058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080784, 31.325705, 16.413578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337534, -0.044834, 0.940245,
		-0.763074, -0.571837, -0.301199,
		0.551171, -0.819141, 0.158802,
		32.246136, 31.079962, 16.461218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495789, 31.317343, 16.795326>,  <31.860315, 31.653360, 16.350058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495789, 31.317343, 16.795326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835255, 31.115332, 16.858213>,  <32.038933, 30.994125, 16.895945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835255, 31.115332, 16.858213>,  <31.495789, 31.317343, 16.795326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835255, 31.115332, 16.858213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253355, -0.127214, 0.958972,
		-0.464307, -0.853677, -0.235913,
		0.848664, -0.505027, 0.157217,
		32.089855, 30.963823, 16.905378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331375, 30.669468, 17.246132>,  <31.495789, 31.317343, 16.795326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331375, 30.669468, 17.246132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719204, 30.754255, 17.295124>,  <31.951900, 30.805128, 17.324520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719204, 30.754255, 17.295124>,  <31.331375, 30.669468, 17.246132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719204, 30.754255, 17.295124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105693, -0.088834, 0.990423,
		0.220819, -0.973231, -0.063727,
		0.969571, 0.211969, 0.122480,
		32.010075, 30.817846, 17.331867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578089, 30.105928, 17.717878>,  <31.331375, 30.669468, 17.246132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578089, 30.105928, 17.717878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845606, 30.403290, 17.721134>,  <32.006115, 30.581707, 17.723087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.845606, 30.403290, 17.721134>,  <31.578089, 30.105928, 17.717878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845606, 30.403290, 17.721134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011745, -0.000383, 0.999931,
		0.743356, -0.668843, 0.008475,
		0.668793, 0.743404, 0.008140,
		32.046246, 30.626310, 17.723576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008835, 29.972755, 18.384695>,  <31.578089, 30.105928, 17.717878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008835, 29.972755, 18.384695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049515, 30.356041, 18.277750>,  <32.073921, 30.586012, 18.213583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049515, 30.356041, 18.277750>,  <32.008835, 29.972755, 18.384695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049515, 30.356041, 18.277750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102487, 0.277418, 0.955268,
		0.989522, -0.069748, 0.126417,
		0.101698, 0.958214, -0.267363,
		32.080025, 30.643505, 18.197540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413467, 30.153431, 18.851429>,  <32.008835, 29.972755, 18.384695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413467, 30.153431, 18.851429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251442, 30.486174, 18.699675>,  <32.154228, 30.685820, 18.608622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251442, 30.486174, 18.699675>,  <32.413467, 30.153431, 18.851429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251442, 30.486174, 18.699675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252073, 0.297262, 0.920921,
		0.878853, 0.468665, 0.089278,
		-0.405064, 0.831858, -0.379387,
		32.129921, 30.735731, 18.585859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762600, 30.770769, 19.137779>,  <32.413467, 30.153431, 18.851429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762600, 30.770769, 19.137779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424263, 30.939665, 19.007389>,  <32.221260, 31.041002, 18.929155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.424263, 30.939665, 19.007389>,  <32.762600, 30.770769, 19.137779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424263, 30.939665, 19.007389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149963, 0.398219, 0.904949,
		0.511915, 0.814330, -0.273512,
		-0.845845, 0.422241, -0.325974,
		32.170509, 31.066338, 18.909597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832024, 31.423452, 19.293663>,  <32.762600, 30.770769, 19.137779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832024, 31.423452, 19.293663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441605, 31.343792, 19.258650>,  <32.207352, 31.295996, 19.237642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441605, 31.343792, 19.258650>,  <32.832024, 31.423452, 19.293663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441605, 31.343792, 19.258650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148599, 0.316498, 0.936882,
		-0.158878, 0.927452, -0.338513,
		-0.976051, -0.199152, -0.087534,
		32.148788, 31.284046, 19.232389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425228, 32.039795, 19.546864>,  <32.832024, 31.423452, 19.293663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425228, 32.039795, 19.546864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184719, 31.720213, 19.542150>,  <32.040413, 31.528463, 19.539322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184719, 31.720213, 19.542150>,  <32.425228, 32.039795, 19.546864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184719, 31.720213, 19.542150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209536, 0.143425, 0.967225,
		-0.771080, 0.584036, -0.253647,
		-0.601274, -0.798956, -0.011784,
		32.004337, 31.480526, 19.538614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802717, 32.197128, 19.880665>,  <32.425228, 32.039795, 19.546864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802717, 32.197128, 19.880665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790638, 31.797318, 19.883270>,  <31.783390, 31.557432, 19.884834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790638, 31.797318, 19.883270>,  <31.802717, 32.197128, 19.880665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790638, 31.797318, 19.883270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012701, 0.006900, 0.999895,
		-0.999463, 0.030112, -0.012904,
		-0.030198, -0.999523, 0.006514,
		31.781578, 31.497461, 19.885225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180311, 32.062836, 20.176662>,  <31.802717, 32.197128, 19.880665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180311, 32.062836, 20.176662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404810, 31.736837, 20.234320>,  <31.539509, 31.541237, 20.268913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404810, 31.736837, 20.234320>,  <31.180311, 32.062836, 20.176662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404810, 31.736837, 20.234320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175239, 0.053193, 0.983088,
		-0.808885, -0.577014, -0.112965,
		0.561246, -0.815001, 0.144142,
		31.573183, 31.492338, 20.277563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847891, 31.698555, 20.683371>,  <31.180311, 32.062836, 20.176662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847891, 31.698555, 20.683371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206203, 31.521101, 20.694405>,  <31.421190, 31.414629, 20.701025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206203, 31.521101, 20.694405>,  <30.847891, 31.698555, 20.683371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206203, 31.521101, 20.694405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113434, -0.168157, 0.979212,
		-0.429777, -0.880289, -0.200956,
		0.895782, -0.443638, 0.027585,
		31.474937, 31.388010, 20.702681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714542, 31.071478, 21.011719>,  <30.847891, 31.698555, 20.683371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714542, 31.071478, 21.011719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111284, 31.115261, 21.037788>,  <31.349329, 31.141531, 21.053431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111284, 31.115261, 21.037788>,  <30.714542, 31.071478, 21.011719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111284, 31.115261, 21.037788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044711, -0.179958, 0.982658,
		0.119288, -0.977565, -0.173598,
		0.991853, 0.109458, 0.065175,
		31.408840, 31.148098, 21.057341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976192, 30.504107, 21.265251>,  <30.714542, 31.071478, 21.011719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976192, 30.504107, 21.265251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267395, 30.761433, 21.360033>,  <31.442118, 30.915829, 21.416903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267395, 30.761433, 21.360033>,  <30.976192, 30.504107, 21.265251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267395, 30.761433, 21.360033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230924, -0.095329, 0.968290,
		0.645506, -0.759642, 0.079157,
		0.728008, 0.643316, 0.236955,
		31.485798, 30.954428, 21.431120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478006, 30.224634, 21.673561>,  <30.976192, 30.504107, 21.265251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478006, 30.224634, 21.673561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540436, 30.612036, 21.751167>,  <31.577894, 30.844477, 21.797731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540436, 30.612036, 21.751167>,  <31.478006, 30.224634, 21.673561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540436, 30.612036, 21.751167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080541, -0.183288, 0.979754,
		0.984456, -0.168539, 0.049398,
		0.156073, 0.968504, 0.194014,
		31.587257, 30.902588, 21.809372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905445, 30.212196, 22.235376>,  <31.478006, 30.224634, 21.673561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905445, 30.212196, 22.235376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753576, 30.582220, 22.231184>,  <31.662455, 30.804235, 22.228668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753576, 30.582220, 22.231184>,  <31.905445, 30.212196, 22.235376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753576, 30.582220, 22.231184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268150, -0.099199, 0.958256,
		0.885406, 0.366636, 0.285718,
		-0.379674, 0.925061, -0.010482,
		31.639673, 30.859739, 22.228039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168415, 30.466663, 22.843933>,  <31.905445, 30.212196, 22.235376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168415, 30.466663, 22.843933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854555, 30.694349, 22.745699>,  <31.666239, 30.830961, 22.686758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854555, 30.694349, 22.745699>,  <32.168415, 30.466663, 22.843933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854555, 30.694349, 22.745699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352423, -0.083657, 0.932094,
		0.510019, 0.817920, 0.266247,
		-0.784652, 0.569217, -0.245588,
		31.619160, 30.865114, 22.672022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109108, 30.915974, 23.277000>,  <32.168415, 30.466663, 22.843933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109108, 30.915974, 23.277000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733604, 30.907337, 23.139444>,  <31.508303, 30.902155, 23.056910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.733604, 30.907337, 23.139444>,  <32.109108, 30.915974, 23.277000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733604, 30.907337, 23.139444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343682, -0.012923, 0.938997,
		-0.024719, 0.999683, 0.004710,
		-0.938761, -0.021592, -0.343893,
		31.451977, 30.900860, 23.036276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851807, 31.420006, 23.667076>,  <32.109108, 30.915974, 23.277000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851807, 31.420006, 23.667076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547966, 31.195854, 23.535027>,  <31.365662, 31.061363, 23.455797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547966, 31.195854, 23.535027>,  <31.851807, 31.420006, 23.667076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547966, 31.195854, 23.535027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400831, 0.003624, 0.916145,
		-0.512193, 0.828228, -0.227371,
		-0.759600, -0.560380, -0.330123,
		31.320086, 31.027740, 23.435989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156874, 31.821770, 23.764778>,  <31.851807, 31.420006, 23.667076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156874, 31.821770, 23.764778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059822, 31.435057, 23.732622>,  <31.001591, 31.203030, 23.713329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059822, 31.435057, 23.732622>,  <31.156874, 31.821770, 23.764778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059822, 31.435057, 23.732622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519267, 0.059429, 0.852543,
		-0.819447, 0.248595, -0.516437,
		-0.242630, -0.966783, -0.080389,
		30.987034, 31.145021, 23.708506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367914, 31.784285, 23.782354>,  <31.156874, 31.821770, 23.764778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367914, 31.784285, 23.782354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480206, 31.413408, 23.881559>,  <30.547581, 31.190882, 23.941082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.480206, 31.413408, 23.881559>,  <30.367914, 31.784285, 23.782354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480206, 31.413408, 23.881559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687262, -0.013812, 0.726278,
		-0.669973, -0.374335, -0.641100,
		0.280727, -0.927191, 0.248013,
		30.564425, 31.135252, 23.955963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729029, 31.326584, 23.821215>,  <30.367914, 31.784285, 23.782354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729029, 31.326584, 23.821215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016148, 31.144018, 24.031530>,  <30.188419, 31.034479, 24.157721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016148, 31.144018, 24.031530>,  <29.729029, 31.326584, 23.821215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016148, 31.144018, 24.031530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589039, 0.004550, 0.808092,
		-0.371216, -0.889757, -0.265579,
		0.717796, -0.456413, 0.525791,
		30.231487, 31.007095, 24.189268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353855, 30.892351, 24.231276>,  <29.729029, 31.326584, 23.821215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353855, 30.892351, 24.231276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705578, 30.902761, 24.421492>,  <29.916613, 30.909008, 24.535622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705578, 30.902761, 24.421492>,  <29.353855, 30.892351, 24.231276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705578, 30.902761, 24.421492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475555, 0.102001, 0.873752,
		-0.025771, -0.994444, 0.102064,
		0.879309, 0.026020, 0.475541,
		29.969370, 30.910568, 24.564154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223440, 30.600018, 24.889225>,  <29.353855, 30.892351, 24.231276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223440, 30.600018, 24.889225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594934, 30.726477, 24.966688>,  <29.817831, 30.802353, 25.013166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594934, 30.726477, 24.966688>,  <29.223440, 30.600018, 24.889225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594934, 30.726477, 24.966688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226948, 0.071747, 0.971260,
		0.293170, -0.945992, 0.138384,
		0.928733, 0.316151, 0.193657,
		29.873554, 30.821321, 25.024786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341463, 30.243086, 25.556639>,  <29.223440, 30.600018, 24.889225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341463, 30.243086, 25.556639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592161, 30.551262, 25.509970>,  <29.742580, 30.736168, 25.481968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592161, 30.551262, 25.509970>,  <29.341463, 30.243086, 25.556639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592161, 30.551262, 25.509970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097854, 0.226361, 0.969116,
		0.773057, -0.595971, 0.217261,
		0.626744, 0.770441, -0.116672,
		29.780184, 30.782394, 25.474968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787367, 30.162758, 26.060640>,  <29.341463, 30.243086, 25.556639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787367, 30.162758, 26.060640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790096, 30.550667, 25.963076>,  <29.791735, 30.783413, 25.904537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790096, 30.550667, 25.963076>,  <29.787367, 30.162758, 26.060640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790096, 30.550667, 25.963076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208277, 0.239946, 0.948181,
		0.978046, 0.044330, 0.203619,
		0.006825, 0.969774, -0.243911,
		29.792143, 30.841599, 25.889902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905413, 30.459545, 26.590714>,  <29.787367, 30.162758, 26.060640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905413, 30.459545, 26.590714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777630, 30.764444, 26.365528>,  <29.700960, 30.947384, 26.230417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777630, 30.764444, 26.365528>,  <29.905413, 30.459545, 26.590714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777630, 30.764444, 26.365528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454307, 0.398166, 0.796912,
		0.831596, 0.510337, 0.219097,
		-0.319456, 0.762247, -0.562963,
		29.681793, 30.993118, 26.196640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147747, 31.097603, 26.972509>,  <29.905413, 30.459545, 26.590714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147747, 31.097603, 26.972509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839407, 31.205938, 26.741880>,  <29.654404, 31.270941, 26.603502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839407, 31.205938, 26.741880>,  <30.147747, 31.097603, 26.972509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839407, 31.205938, 26.741880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352605, 0.572397, 0.740292,
		0.530530, 0.773956, -0.345731,
		-0.770849, 0.270840, -0.576575,
		29.608152, 31.287189, 26.568909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072716, 31.825216, 27.044941>,  <30.147747, 31.097603, 26.972509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072716, 31.825216, 27.044941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731403, 31.687326, 26.888443>,  <29.526615, 31.604591, 26.794544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731403, 31.687326, 26.888443>,  <30.072716, 31.825216, 27.044941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731403, 31.687326, 26.888443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521069, 0.535049, 0.664988,
		-0.019904, 0.771288, -0.636175,
		-0.853283, -0.344727, -0.391245,
		29.475418, 31.583908, 26.771070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592867, 32.466965, 26.844351>,  <30.072716, 31.825216, 27.044941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592867, 32.466965, 26.844351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353628, 32.146671, 26.857622>,  <29.210085, 31.954494, 26.865585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353628, 32.146671, 26.857622>,  <29.592867, 32.466965, 26.844351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353628, 32.146671, 26.857622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654448, 0.511889, 0.556477,
		-0.462574, 0.311116, -0.830200,
		-0.598099, -0.800735, 0.033177,
		29.174198, 31.906450, 26.867575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970219, 32.773685, 26.657471>,  <29.592867, 32.466965, 26.844351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970219, 32.773685, 26.657471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903830, 32.437141, 26.863216>,  <28.863997, 32.235214, 26.986664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903830, 32.437141, 26.863216>,  <28.970219, 32.773685, 26.657471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903830, 32.437141, 26.863216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738212, 0.451840, 0.500883,
		-0.653832, -0.296578, -0.696093,
		-0.165971, -0.841357, 0.514364,
		28.854038, 32.184734, 27.017527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256050, 32.767643, 26.808199>,  <28.970219, 32.773685, 26.657471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256050, 32.767643, 26.808199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425943, 32.524612, 27.076662>,  <28.527880, 32.378796, 27.237740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.425943, 32.524612, 27.076662>,  <28.256050, 32.767643, 26.808199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425943, 32.524612, 27.076662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591860, 0.374630, 0.713691,
		-0.685058, -0.700359, -0.200483,
		0.424732, -0.607577, 0.671157,
		28.553364, 32.342339, 27.278009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.708145, 32.470654, 27.172344>,  <28.256050, 32.767643, 26.808199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.708145, 32.470654, 27.172344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056452, 32.466267, 27.368975>,  <28.265436, 32.463634, 27.486954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056452, 32.466267, 27.368975>,  <27.708145, 32.470654, 27.172344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056452, 32.466267, 27.368975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434378, 0.451305, 0.779513,
		-0.230402, -0.892302, 0.388215,
		0.870764, -0.010969, 0.491578,
		28.317680, 32.462975, 27.516447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466721, 32.468761, 27.848089>,  <27.708145, 32.470654, 27.172344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466721, 32.468761, 27.848089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846626, 32.593529, 27.858337>,  <28.074570, 32.668388, 27.864487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.846626, 32.593529, 27.858337>,  <27.466721, 32.468761, 27.848089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.846626, 32.593529, 27.858337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257847, 0.733462, 0.628926,
		0.177379, -0.603938, 0.777043,
		0.949764, 0.311916, 0.025622,
		28.131556, 32.687103, 27.866024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.547594, 32.714653, 28.491222>,  <27.466721, 32.468761, 27.848089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.547594, 32.714653, 28.491222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875639, 32.871796, 28.324810>,  <28.072466, 32.966080, 28.224962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.875639, 32.871796, 28.324810>,  <27.547594, 32.714653, 28.491222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.875639, 32.871796, 28.324810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046654, 0.770555, 0.635664,
		0.570298, -0.501907, 0.650269,
		0.820112, 0.392856, -0.416029,
		28.121672, 32.989651, 28.200001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953476, 32.621254, 29.031742>,  <27.547594, 32.714653, 28.491222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953476, 32.621254, 29.031742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183716, 32.793373, 28.753595>,  <28.321859, 32.896645, 28.586708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.183716, 32.793373, 28.753595>,  <27.953476, 32.621254, 29.031742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183716, 32.793373, 28.753595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146000, 0.890772, 0.430358,
		0.804592, -0.146190, 0.575551,
		0.575599, 0.430294, -0.695365,
		28.356396, 32.922462, 28.544985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427204, 33.057430, 29.328899>,  <27.953476, 32.621254, 29.031742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427204, 33.057430, 29.328899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393961, 33.208195, 28.959894>,  <28.374016, 33.298653, 28.738491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393961, 33.208195, 28.959894>,  <28.427204, 33.057430, 29.328899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393961, 33.208195, 28.959894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053468, 0.922695, 0.381804,
		0.995105, 0.081055, -0.056530,
		-0.083107, 0.376913, -0.922513,
		28.369028, 33.321270, 28.683140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380245, 33.599949, 29.837084>,  <28.427204, 33.057430, 29.328899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380245, 33.599949, 29.837084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687496, 33.767990, 29.643797>,  <28.871847, 33.868813, 29.527824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687496, 33.767990, 29.643797>,  <28.380245, 33.599949, 29.837084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687496, 33.767990, 29.643797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469792, 0.882540, 0.020478,
		0.435061, 0.211282, 0.875261,
		0.768126, 0.420099, -0.483217,
		28.917934, 33.894020, 29.498833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573145, 34.209351, 30.128071>,  <28.380245, 33.599949, 29.837084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573145, 34.209351, 30.128071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682701, 34.251904, 29.745728>,  <28.748436, 34.277435, 29.516321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682701, 34.251904, 29.745728>,  <28.573145, 34.209351, 30.128071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682701, 34.251904, 29.745728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347306, 0.937739, 0.004846,
		0.896862, 0.330648, 0.293787,
		0.273893, 0.106380, -0.955859,
		28.764870, 34.283817, 29.458969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875570, 34.915730, 29.999071>,  <28.573145, 34.209351, 30.128071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875570, 34.915730, 29.999071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732351, 34.803638, 29.642807>,  <28.646420, 34.736385, 29.429049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732351, 34.803638, 29.642807>,  <28.875570, 34.915730, 29.999071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732351, 34.803638, 29.642807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450333, 0.887447, -0.098179,
		0.817926, 0.365941, -0.443942,
		-0.358047, -0.280225, -0.890661,
		28.624937, 34.719570, 29.375608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260958, 34.629951, 30.583452>,  <28.875570, 34.915730, 29.999071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260958, 34.629951, 30.583452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520876, 34.631542, 30.887493>,  <29.676826, 34.632496, 31.069918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.520876, 34.631542, 30.887493>,  <29.260958, 34.629951, 30.583452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520876, 34.631542, 30.887493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725163, -0.296484, 0.621479,
		0.227832, -0.955030, -0.189766,
		0.649793, 0.003982, 0.760101,
		29.715815, 34.632736, 31.115522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334747, 33.947990, 30.710117>,  <29.260958, 34.629951, 30.583452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334747, 33.947990, 30.710117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392553, 34.199944, 31.015368>,  <29.427237, 34.351116, 31.198517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392553, 34.199944, 31.015368>,  <29.334747, 33.947990, 30.710117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392553, 34.199944, 31.015368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804987, -0.373646, 0.460852,
		0.575423, -0.680906, 0.453052,
		0.144516, 0.629886, 0.763124,
		29.435907, 34.388908, 31.244305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474379, 33.538387, 31.336229>,  <29.334747, 33.947990, 30.710117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474379, 33.538387, 31.336229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301720, 33.895340, 31.388903>,  <29.198124, 34.109512, 31.420507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301720, 33.895340, 31.388903>,  <29.474379, 33.538387, 31.336229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301720, 33.895340, 31.388903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791973, -0.444799, 0.418249,
		0.431810, 0.076244, 0.898736,
		-0.431645, 0.892379, 0.131685,
		29.172226, 34.163055, 31.428408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655115, 33.214294, 30.778507>,  <29.474379, 33.538387, 31.336229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655115, 33.214294, 30.778507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420258, 33.123821, 30.467611>,  <29.279343, 33.069538, 30.281073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.420258, 33.123821, 30.467611>,  <29.655115, 33.214294, 30.778507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.420258, 33.123821, 30.467611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729132, 0.269289, -0.629165,
		0.351612, -0.936121, 0.006809,
		-0.587141, -0.226186, -0.777242,
		29.244116, 33.055965, 30.234438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926823, 32.619499, 30.329855>,  <29.655115, 33.214294, 30.778507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926823, 32.619499, 30.329855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711552, 32.899246, 30.141708>,  <29.582390, 33.067097, 30.028820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711552, 32.899246, 30.141708>,  <29.926823, 32.619499, 30.329855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711552, 32.899246, 30.141708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776154, 0.193687, -0.600059,
		-0.328561, -0.688014, -0.647058,
		-0.538175, 0.699372, -0.470367,
		29.550098, 33.109058, 30.000599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870394, 32.530083, 29.617191>,  <29.926823, 32.619499, 30.329855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870394, 32.530083, 29.617191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866947, 32.923836, 29.687529>,  <29.864880, 33.160088, 29.729731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866947, 32.923836, 29.687529>,  <29.870394, 32.530083, 29.617191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866947, 32.923836, 29.687529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806766, 0.110741, -0.580401,
		-0.590809, 0.136865, -0.795118,
		-0.008616, 0.984380, 0.175845,
		29.864363, 33.219151, 29.740282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505856, 33.009815, 29.476852>,  <29.870394, 32.530083, 29.617191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505856, 33.009815, 29.476852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605757, 33.299648, 29.733791>,  <30.665697, 33.473549, 29.887955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605757, 33.299648, 29.733791>,  <30.505856, 33.009815, 29.476852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605757, 33.299648, 29.733791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278977, 0.689085, -0.668830,
		-0.927252, -0.012158, 0.374241,
		0.249752, 0.724578, 0.642347,
		30.680683, 33.517021, 29.926497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282011, 33.114033, 29.499640>,  <30.505856, 33.009815, 29.476852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282011, 33.114033, 29.499640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394114, 33.496700, 29.468061>,  <31.461374, 33.726303, 29.449114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394114, 33.496700, 29.468061>,  <31.282011, 33.114033, 29.499640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394114, 33.496700, 29.468061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852764, -0.210367, 0.478057,
		0.440737, -0.201300, -0.874774,
		0.280256, 0.956674, -0.078945,
		31.478189, 33.783703, 29.444378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640617, 32.722889, 29.975859>,  <31.282011, 33.114033, 29.499640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640617, 32.722889, 29.975859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903793, 32.897770, 29.730595>,  <32.061699, 33.002701, 29.583437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903793, 32.897770, 29.730595>,  <31.640617, 32.722889, 29.975859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903793, 32.897770, 29.730595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538606, 0.295865, 0.788903,
		0.526325, -0.849303, -0.040820,
		0.657940, 0.437205, -0.613160,
		32.101177, 33.028931, 29.546646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371819, 32.365204, 30.079657>,  <31.640617, 32.722889, 29.975859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371819, 32.365204, 30.079657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362644, 32.748543, 29.965778>,  <32.357140, 32.978546, 29.897451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362644, 32.748543, 29.965778>,  <32.371819, 32.365204, 30.079657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362644, 32.748543, 29.965778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323013, 0.276599, 0.905072,
		0.946117, -0.071203, -0.315901,
		-0.022934, 0.958344, -0.284694,
		32.355762, 33.036045, 29.880371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879536, 32.664242, 30.511166>,  <32.371819, 32.365204, 30.079657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879536, 32.664242, 30.511166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638218, 32.949162, 30.367689>,  <32.493427, 33.120113, 30.281603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638218, 32.949162, 30.367689>,  <32.879536, 32.664242, 30.511166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638218, 32.949162, 30.367689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232750, 0.587439, 0.775076,
		0.762796, 0.384117, -0.520189,
		-0.603299, 0.712299, -0.358693,
		32.457230, 33.162849, 30.260080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282505, 33.281334, 30.441820>,  <32.879536, 32.664242, 30.511166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282505, 33.281334, 30.441820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898285, 33.338684, 30.537142>,  <32.667751, 33.373093, 30.594336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898285, 33.338684, 30.537142>,  <33.282505, 33.281334, 30.441820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898285, 33.338684, 30.537142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276118, 0.389260, 0.878770,
		0.033229, 0.909902, -0.413491,
		-0.960549, 0.143373, 0.238305,
		32.610119, 33.381695, 30.608633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251030, 33.925087, 30.656281>,  <33.282505, 33.281334, 30.441820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251030, 33.925087, 30.656281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947506, 33.727650, 30.826258>,  <32.765392, 33.609188, 30.928244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947506, 33.727650, 30.826258>,  <33.251030, 33.925087, 30.656281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947506, 33.727650, 30.826258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281474, 0.339850, 0.897371,
		-0.587352, 0.800543, -0.118948,
		-0.758808, -0.493592, 0.424944,
		32.719864, 33.579571, 30.953741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663601, 34.327106, 30.956997>,  <33.251030, 33.925087, 30.656281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663601, 34.327106, 30.956997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760841, 33.987633, 31.144884>,  <32.819183, 33.783947, 31.257616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760841, 33.987633, 31.144884>,  <32.663601, 34.327106, 30.956997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760841, 33.987633, 31.144884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147096, 0.510901, 0.846961,
		-0.958784, -0.136802, 0.249037,
		0.243099, -0.848685, 0.469720,
		32.833771, 33.733028, 31.285801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288921, 34.232082, 31.613274>,  <32.663601, 34.327106, 30.956997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288921, 34.232082, 31.613274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666817, 34.101143, 31.620256>,  <32.893555, 34.022579, 31.624447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666817, 34.101143, 31.620256>,  <32.288921, 34.232082, 31.613274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666817, 34.101143, 31.620256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166568, 0.525219, 0.834506,
		-0.282347, -0.785484, 0.550723,
		0.944741, -0.327353, 0.017457,
		32.950237, 34.002937, 31.625494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546467, 33.912838, 32.388515>,  <32.288921, 34.232082, 31.613274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546467, 33.912838, 32.388515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867729, 34.023849, 32.177643>,  <33.060486, 34.090458, 32.051121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867729, 34.023849, 32.177643>,  <32.546467, 33.912838, 32.388515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867729, 34.023849, 32.177643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315819, 0.551982, 0.771734,
		0.505175, -0.786315, 0.355678,
		0.803154, 0.277531, -0.527181,
		33.108677, 34.107109, 32.019489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124584, 33.896534, 32.885769>,  <32.546467, 33.912838, 32.388515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124584, 33.896534, 32.885769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250294, 34.122108, 32.580296>,  <33.325718, 34.257454, 32.397011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250294, 34.122108, 32.580296>,  <33.124584, 33.896534, 32.885769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250294, 34.122108, 32.580296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352848, 0.677423, 0.645442,
		0.881323, -0.472310, 0.013913,
		0.314273, 0.563934, -0.763682,
		33.344574, 34.291290, 32.351192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758995, 34.203625, 33.078884>,  <33.124584, 33.896534, 32.885769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758995, 34.203625, 33.078884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621613, 34.441940, 32.788483>,  <33.539185, 34.584930, 32.614243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621613, 34.441940, 32.788483>,  <33.758995, 34.203625, 33.078884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621613, 34.441940, 32.788483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349384, 0.798598, 0.490074,
		0.871763, -0.085336, -0.482438,
		-0.343453, 0.595785, -0.726003,
		33.518578, 34.620674, 32.570683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345551, 34.720364, 33.102142>,  <33.758995, 34.203625, 33.078884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345551, 34.720364, 33.102142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015984, 34.880573, 32.941772>,  <33.818245, 34.976700, 32.845551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015984, 34.880573, 32.941772>,  <34.345551, 34.720364, 33.102142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015984, 34.880573, 32.941772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124662, 0.818224, 0.561221,
		0.552827, 0.412420, -0.724080,
		-0.823919, 0.400523, -0.400923,
		33.768806, 35.000729, 32.821495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296967, 34.623611, 33.852604>,  <34.345551, 34.720364, 33.102142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296967, 34.623611, 33.852604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560749, 34.915184, 33.926121>,  <34.719017, 35.090126, 33.970230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560749, 34.915184, 33.926121>,  <34.296967, 34.623611, 33.852604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560749, 34.915184, 33.926121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620270, 0.389475, 0.680863,
		0.424724, -0.562994, 0.708976,
		0.659451, 0.728935, 0.183789,
		34.758587, 35.133865, 33.981258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429970, 34.657051, 34.605011>,  <34.296967, 34.623611, 33.852604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429970, 34.657051, 34.605011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452736, 34.991302, 34.386475>,  <34.466396, 35.191853, 34.255352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452736, 34.991302, 34.386475>,  <34.429970, 34.657051, 34.605011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452736, 34.991302, 34.386475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708980, 0.419113, 0.567178,
		0.702928, 0.355060, 0.616299,
		0.056917, 0.835629, -0.546337,
		34.469810, 35.241993, 34.222572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741508, 35.139915, 35.011356>,  <34.429970, 34.657051, 34.605011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741508, 35.139915, 35.011356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136711, 35.146339, 35.072792>,  <35.373833, 35.150196, 35.109653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136711, 35.146339, 35.072792>,  <34.741508, 35.139915, 35.011356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136711, 35.146339, 35.072792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016206, -0.999869, 0.000326,
		0.153573, 0.002167, -0.988135,
		0.988005, 0.016064, 0.153588,
		35.433113, 35.151157, 35.118870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177917, 34.907734, 34.431229>,  <34.741508, 35.139915, 35.011356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177917, 34.907734, 34.431229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293922, 34.829178, 34.805889>,  <35.363525, 34.782043, 35.030685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.293922, 34.829178, 34.805889>,  <35.177917, 34.907734, 34.431229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293922, 34.829178, 34.805889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087568, -0.980057, -0.178382,
		0.953009, -0.030289, -0.301424,
		0.290009, -0.196394, 0.936656,
		35.380924, 34.770260, 35.086887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554787, 34.198177, 34.479950>,  <35.177917, 34.907734, 34.431229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554787, 34.198177, 34.479950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485210, 34.234634, 34.872162>,  <35.443462, 34.256508, 35.107491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485210, 34.234634, 34.872162>,  <35.554787, 34.198177, 34.479950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485210, 34.234634, 34.872162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200033, -0.971679, 0.125802,
		0.964225, 0.218021, 0.150787,
		-0.173944, 0.091139, 0.980529,
		35.433025, 34.261974, 35.166321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174156, 34.025074, 34.892536>,  <35.554787, 34.198177, 34.479950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174156, 34.025074, 34.892536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795128, 33.954308, 34.998978>,  <35.567711, 33.911850, 35.062843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795128, 33.954308, 34.998978>,  <36.174156, 34.025074, 34.892536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795128, 33.954308, 34.998978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213909, -0.969829, 0.116940,
		0.237391, 0.167732, 0.956824,
		-0.947570, -0.176912, 0.266108,
		35.510857, 33.901234, 35.078812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175903, 33.750004, 35.629219>,  <36.174156, 34.025074, 34.892536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175903, 33.750004, 35.629219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916306, 33.605545, 35.361374>,  <35.760548, 33.518871, 35.200668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916306, 33.605545, 35.361374>,  <36.175903, 33.750004, 35.629219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916306, 33.605545, 35.361374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426717, -0.901466, 0.072611,
		-0.629855, -0.238610, 0.739153,
		-0.648996, -0.361144, -0.669612,
		35.721607, 33.497204, 35.160492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.590641, 33.253689, 35.251804>,  <36.175903, 33.750004, 35.629219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.590641, 33.253689, 35.251804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645531, 32.903969, 35.065575>,  <36.678467, 32.694138, 34.953835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645531, 32.903969, 35.065575>,  <36.590641, 33.253689, 35.251804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645531, 32.903969, 35.065575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555799, 0.457024, -0.694418,
		0.819912, -0.163475, 0.548652,
		0.137227, -0.874303, -0.465579,
		36.686699, 32.641678, 34.925900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.281799, 32.933464, 35.301819>,  <36.590641, 33.253689, 35.251804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.281799, 32.933464, 35.301819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118519, 32.833160, 34.950710>,  <37.020550, 32.772980, 34.740044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118519, 32.833160, 34.950710>,  <37.281799, 32.933464, 35.301819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118519, 32.833160, 34.950710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706637, 0.521959, -0.477727,
		0.577958, -0.815278, -0.035868,
		-0.408202, -0.250760, -0.877776,
		36.996059, 32.757931, 34.687378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873020, 32.711033, 34.819229>,  <37.281799, 32.933464, 35.301819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873020, 32.711033, 34.819229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566135, 32.909004, 34.656044>,  <37.382004, 33.027786, 34.558132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566135, 32.909004, 34.656044>,  <37.873020, 32.711033, 34.819229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566135, 32.909004, 34.656044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640470, 0.557062, -0.528658,
		-0.034385, -0.666882, -0.744370,
		-0.767213, 0.494924, -0.407963,
		37.335972, 33.057480, 34.533653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425308, 32.311031, 35.342670>,  <37.873020, 32.711033, 34.819229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425308, 32.311031, 35.342670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752975, 32.318810, 35.113380>,  <38.949574, 32.323475, 34.975807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752975, 32.318810, 35.113380>,  <38.425308, 32.311031, 35.342670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752975, 32.318810, 35.113380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414943, 0.710066, -0.568884,
		0.395969, 0.703866, 0.589729,
		0.819165, 0.019444, -0.573228,
		38.998726, 32.324642, 34.941410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111732, 32.263069, 35.732075>,  <38.425308, 32.311031, 35.342670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111732, 32.263069, 35.732075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357212, 32.491085, 35.513561>,  <39.504498, 32.627895, 35.382454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357212, 32.491085, 35.513561>,  <39.111732, 32.263069, 35.732075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357212, 32.491085, 35.513561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126770, 0.754068, 0.644446,
		0.779301, -0.326239, 0.535031,
		0.613693, 0.570043, -0.546288,
		39.541321, 32.662098, 35.349674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731567, 32.377296, 36.106865>,  <39.111732, 32.263069, 35.732075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731567, 32.377296, 36.106865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661472, 32.698895, 35.879574>,  <39.619415, 32.891853, 35.743198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661472, 32.698895, 35.879574>,  <39.731567, 32.377296, 36.106865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661472, 32.698895, 35.879574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245986, 0.523104, 0.815998,
		0.953301, 0.282769, 0.106104,
		-0.175235, 0.803993, -0.568232,
		39.608902, 32.940094, 35.709103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144356, 32.967926, 36.260502>,  <39.731567, 32.377296, 36.106865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144356, 32.967926, 36.260502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782135, 33.076927, 36.130444>,  <39.564804, 33.142330, 36.052406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782135, 33.076927, 36.130444>,  <40.144356, 32.967926, 36.260502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782135, 33.076927, 36.130444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166724, 0.476163, 0.863407,
		0.390107, 0.836068, -0.385756,
		-0.905549, 0.272506, -0.325147,
		39.510471, 33.158680, 36.032898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741005, 33.061066, 35.792419>,  <40.144356, 32.967926, 36.260502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741005, 33.061066, 35.792419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783875, 33.413322, 35.607819>,  <40.809597, 33.624676, 35.497059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783875, 33.413322, 35.607819>,  <40.741005, 33.061066, 35.792419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783875, 33.413322, 35.607819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902122, -0.281265, -0.327211,
		-0.417959, -0.381260, -0.824592,
		0.107176, 0.880643, -0.461500,
		40.816029, 33.677517, 35.469368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167545, 33.688282, 35.968525>,  <40.741005, 33.061066, 35.792419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167545, 33.688282, 35.968525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951096, 33.995743, 35.832085>,  <40.821224, 34.180222, 35.750221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.951096, 33.995743, 35.832085>,  <41.167545, 33.688282, 35.968525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951096, 33.995743, 35.832085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781245, 0.309405, -0.542149,
		-0.311186, -0.559857, -0.767935,
		-0.541128, 0.768654, -0.341103,
		40.788757, 34.226337, 35.729755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471394, 33.950523, 35.399815>,  <41.167545, 33.688282, 35.968525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471394, 33.950523, 35.399815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235935, 34.273865, 35.396706>,  <41.094662, 34.467869, 35.394840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235935, 34.273865, 35.396706>,  <41.471394, 33.950523, 35.399815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235935, 34.273865, 35.396706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430005, 0.304955, -0.849764,
		-0.684539, -0.503552, -0.527107,
		-0.588644, 0.808355, -0.007776,
		41.059341, 34.516373, 35.394371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335430, 34.082386, 34.735992>,  <41.471394, 33.950523, 35.399815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335430, 34.082386, 34.735992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239578, 34.436829, 34.894684>,  <41.182068, 34.649494, 34.989899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.239578, 34.436829, 34.894684>,  <41.335430, 34.082386, 34.735992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239578, 34.436829, 34.894684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332051, 0.458790, -0.824168,
		-0.912315, -0.065764, -0.404174,
		-0.239631, 0.886108, 0.396725,
		41.167690, 34.702660, 35.013702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854519, 34.485203, 34.314743>,  <41.335430, 34.082386, 34.735992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854519, 34.485203, 34.314743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096142, 34.716072, 34.534557>,  <41.241116, 34.854591, 34.666447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.096142, 34.716072, 34.534557>,  <40.854519, 34.485203, 34.314743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096142, 34.716072, 34.534557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357134, 0.420394, -0.834101,
		-0.712440, 0.700102, 0.047815,
		0.604057, 0.577170, 0.549536,
		41.277359, 34.889225, 34.699417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698780, 35.253929, 34.212830>,  <40.854519, 34.485203, 34.314743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698780, 35.253929, 34.212830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085182, 35.187698, 34.292248>,  <41.317024, 35.147961, 34.339897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085182, 35.187698, 34.292248>,  <40.698780, 35.253929, 34.212830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085182, 35.187698, 34.292248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256830, 0.526701, -0.810323,
		0.029599, 0.833768, 0.551321,
		0.966003, -0.165581, 0.198547,
		41.374985, 35.138023, 34.351810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986141, 35.808846, 33.967941>,  <40.698780, 35.253929, 34.212830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986141, 35.808846, 33.967941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258060, 35.515858, 33.982761>,  <41.421211, 35.340065, 33.991653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258060, 35.515858, 33.982761>,  <40.986141, 35.808846, 33.967941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258060, 35.515858, 33.982761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332431, 0.262706, -0.905801,
		0.653736, 0.628075, 0.422080,
		0.679794, -0.732467, 0.037052,
		41.461998, 35.296116, 33.993877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.632854, 36.176830, 33.852394>,  <40.986141, 35.808846, 33.967941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.632854, 36.176830, 33.852394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583748, 35.791725, 33.756042>,  <41.554283, 35.560661, 33.698231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.583748, 35.791725, 33.756042>,  <41.632854, 36.176830, 33.852394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583748, 35.791725, 33.756042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070711, 0.233614, -0.969755,
		0.989913, -0.136089, 0.039397,
		-0.122769, -0.962759, -0.240880,
		41.546917, 35.502899, 33.683777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140125, 36.129128, 33.263714>,  <41.632854, 36.176830, 33.852394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140125, 36.129128, 33.263714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810768, 35.904068, 33.293247>,  <41.613155, 35.769032, 33.310966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.810768, 35.904068, 33.293247>,  <42.140125, 36.129128, 33.263714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.810768, 35.904068, 33.293247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246456, 0.237365, -0.939637,
		0.511164, -0.791884, -0.334113,
		-0.823390, -0.562652, 0.073833,
		41.563751, 35.735271, 33.315395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522987, 36.191219, 32.601303>,  <42.140125, 36.129128, 33.263714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522987, 36.191219, 32.601303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568333, 35.989979, 32.944008>,  <42.595539, 35.869236, 33.149632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568333, 35.989979, 32.944008>,  <42.522987, 36.191219, 32.601303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568333, 35.989979, 32.944008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815162, -0.445906, -0.369700,
		0.568031, 0.740311, 0.359555,
		0.113365, -0.503097, 0.856762,
		42.602341, 35.839050, 33.201038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709221, 36.079632, 31.969879>,  <42.522987, 36.191219, 32.601303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709221, 36.079632, 31.969879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690357, 36.346775, 31.672762>,  <42.679039, 36.507061, 31.494492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690357, 36.346775, 31.672762>,  <42.709221, 36.079632, 31.969879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690357, 36.346775, 31.672762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790469, -0.429671, -0.436510,
		-0.610683, -0.607743, -0.507656,
		-0.047161, 0.667856, -0.742795,
		42.676208, 36.547131, 31.449923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749722, 35.765202, 31.305515>,  <42.709221, 36.079632, 31.969879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749722, 35.765202, 31.305515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932697, 36.119225, 31.339998>,  <43.042484, 36.331638, 31.360687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932697, 36.119225, 31.339998>,  <42.749722, 35.765202, 31.305515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932697, 36.119225, 31.339998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881768, -0.438915, -0.172737,
		-0.115045, 0.155030, -0.981188,
		0.457438, 0.885053, 0.086205,
		43.069927, 36.384739, 31.365860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320187, 35.742947, 30.904568>,  <42.749722, 35.765202, 31.305515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320187, 35.742947, 30.904568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436043, 36.055756, 31.125313>,  <43.505558, 36.243439, 31.257759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436043, 36.055756, 31.125313>,  <43.320187, 35.742947, 30.904568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436043, 36.055756, 31.125313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956839, -0.250921, -0.146621,
		0.023813, 0.570512, -0.820944,
		0.289641, 0.782020, 0.551863,
		43.522934, 36.290363, 31.290873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.935211, 36.111378, 30.525640>,  <43.320187, 35.742947, 30.904568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.935211, 36.111378, 30.525640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914520, 36.177162, 30.919651>,  <43.902103, 36.216633, 31.156057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.914520, 36.177162, 30.919651>,  <43.935211, 36.111378, 30.525640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.914520, 36.177162, 30.919651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983976, -0.160133, 0.078411,
		0.170630, 0.973299, -0.153541,
		-0.051730, 0.164460, 0.985026,
		43.899002, 36.226501, 31.215158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474857, 36.581139, 30.875189>,  <43.935211, 36.111378, 30.525640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474857, 36.581139, 30.875189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349613, 36.335293, 31.164799>,  <44.274467, 36.187786, 31.338566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.349613, 36.335293, 31.164799>,  <44.474857, 36.581139, 30.875189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349613, 36.335293, 31.164799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948115, -0.246542, 0.200736,
		0.055128, 0.749312, 0.659918,
		-0.313112, -0.614612, 0.724026,
		44.255680, 36.150909, 31.382006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631538, 36.725208, 31.628679>,  <44.474857, 36.581139, 30.875189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631538, 36.725208, 31.628679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605530, 36.333969, 31.549593>,  <44.589924, 36.099224, 31.502142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605530, 36.333969, 31.549593>,  <44.631538, 36.725208, 31.628679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605530, 36.333969, 31.549593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932964, -0.129887, 0.335719,
		-0.354048, -0.162632, 0.920978,
		-0.065024, -0.978100, -0.197716,
		44.586021, 36.040539, 31.490278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748550, 36.497547, 32.252945>,  <44.631538, 36.725208, 31.628679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748550, 36.497547, 32.252945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886147, 36.280624, 31.946331>,  <44.968704, 36.150471, 31.762363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.886147, 36.280624, 31.946331>,  <44.748550, 36.497547, 32.252945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.886147, 36.280624, 31.946331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919104, 0.027426, 0.393060,
		-0.192136, -0.839732, 0.507872,
		0.343994, -0.542308, -0.766531,
		44.989346, 36.117931, 31.716372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.103729, 35.794891, 32.376694>,  <44.748550, 36.497547, 32.252945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.103729, 35.794891, 32.376694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.285778, 35.971550, 32.067421>,  <45.395008, 36.077545, 31.881857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.285778, 35.971550, 32.067421>,  <45.103729, 35.794891, 32.376694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.285778, 35.971550, 32.067421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858171, 0.014046, 0.513171,
		0.237503, -0.897077, -0.372620,
		0.455120, 0.441651, -0.773182,
		45.422314, 36.104046, 31.835466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.632961, 35.378071, 32.118942>,  <45.103729, 35.794891, 32.376694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.632961, 35.378071, 32.118942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734413, 35.760563, 32.060581>,  <45.795284, 35.990059, 32.025562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734413, 35.760563, 32.060581>,  <45.632961, 35.378071, 32.118942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734413, 35.760563, 32.060581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803683, -0.124377, 0.581914,
		0.538298, -0.264854, -0.800055,
		0.253630, 0.956234, -0.145907,
		45.810501, 36.047432, 32.016808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.328453, 35.495682, 31.742508>,  <45.632961, 35.378071, 32.118942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.328453, 35.495682, 31.742508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.245998, 35.806427, 31.980499>,  <46.196526, 35.992874, 32.123295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.245998, 35.806427, 31.980499>,  <46.328453, 35.495682, 31.742508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.245998, 35.806427, 31.980499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838322, -0.173409, 0.516861,
		0.504703, 0.605326, -0.615513,
		-0.206134, 0.776859, 0.594978,
		46.184158, 36.039486, 32.158993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.952366, 36.030365, 31.884169>,  <46.328453, 35.495682, 31.742508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.952366, 36.030365, 31.884169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.672180, 35.959370, 32.160675>,  <46.504070, 35.916771, 32.326580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.672180, 35.959370, 32.160675>,  <46.952366, 36.030365, 31.884169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.672180, 35.959370, 32.160675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711755, -0.244976, 0.658325,
		0.052497, 0.953144, 0.297926,
		-0.700463, -0.177490, 0.691266,
		46.462040, 35.906124, 32.368053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.062210, 36.399479, 32.466740>,  <46.952366, 36.030365, 31.884169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.062210, 36.399479, 32.466740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.838810, 36.089272, 32.584480>,  <46.704769, 35.903145, 32.655125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.838810, 36.089272, 32.584480>,  <47.062210, 36.399479, 32.466740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.838810, 36.089272, 32.584480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665088, -0.206594, 0.717619,
		-0.495717, 0.596562, 0.631172,
		-0.558501, -0.775521, 0.294354,
		46.671261, 35.856617, 32.672787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.941277, 36.417351, 33.233036>,  <47.062210, 36.399479, 32.466740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.941277, 36.417351, 33.233036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.918156, 36.044998, 33.088753>,  <46.904282, 35.821587, 33.002182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.918156, 36.044998, 33.088753>,  <46.941277, 36.417351, 33.233036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.918156, 36.044998, 33.088753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584692, -0.324428, 0.743561,
		-0.809194, -0.167923, 0.563034,
		-0.057803, -0.930886, -0.360708,
		46.900814, 35.765732, 32.980541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.505878, 35.919331, 33.640938>,  <46.941277, 36.417351, 33.233036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.505878, 35.919331, 33.640938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.820950, 35.747978, 33.463825>,  <47.009991, 35.645168, 33.357555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.820950, 35.747978, 33.463825>,  <46.505878, 35.919331, 33.640938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.820950, 35.747978, 33.463825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245324, -0.441181, 0.863236,
		-0.565138, -0.788577, -0.242417,
		0.787677, -0.428377, -0.442784,
		47.057251, 35.619465, 33.330990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.396210, 35.312592, 33.833046>,  <46.505878, 35.919331, 33.640938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.396210, 35.312592, 33.833046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781223, 35.396599, 33.764442>,  <47.012234, 35.447002, 33.723282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781223, 35.396599, 33.764442>,  <46.396210, 35.312592, 33.833046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.781223, 35.396599, 33.764442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201522, -0.130910, 0.970696,
		0.181415, -0.968893, -0.168329,
		0.962537, 0.210021, -0.171505,
		47.069984, 35.459606, 33.712990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.830978, 34.795036, 34.071419>,  <46.396210, 35.312592, 33.833046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.830978, 34.795036, 34.071419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.045723, 35.126293, 34.135860>,  <47.174568, 35.325047, 34.174526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.045723, 35.126293, 34.135860>,  <46.830978, 34.795036, 34.071419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.045723, 35.126293, 34.135860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147123, -0.279931, 0.948680,
		0.830743, -0.485608, -0.272124,
		0.536862, 0.828145, 0.161107,
		47.206783, 35.374737, 34.184193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.561001, 34.653004, 34.062843>,  <46.830978, 34.795036, 34.071419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.561001, 34.653004, 34.062843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.423721, 34.960499, 34.278717>,  <47.341354, 35.144997, 34.408241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.423721, 34.960499, 34.278717>,  <47.561001, 34.653004, 34.062843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.423721, 34.960499, 34.278717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270429, -0.469381, 0.840565,
		0.899489, 0.434430, -0.046796,
		-0.343202, 0.768734, 0.539685,
		47.320759, 35.191120, 34.440624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.023949, 34.682739, 34.658680>,  <47.561001, 34.653004, 34.062843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.023949, 34.682739, 34.658680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680542, 34.876751, 34.725246>,  <47.474499, 34.993156, 34.765186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680542, 34.876751, 34.725246>,  <48.023949, 34.682739, 34.658680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.680542, 34.876751, 34.725246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019233, -0.354759, 0.934760,
		0.512419, 0.799309, 0.313896,
		-0.858520, 0.485026, 0.166412,
		47.422985, 35.022259, 34.775169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.532951, 33.829708, 20.553240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.887932, 33.655460, 20.613468>,  <35.100918, 33.550911, 20.649605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.887932, 33.655460, 20.613468>,  <34.532951, 33.829708, 20.553240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887932, 33.655460, 20.613468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309362, -0.320812, 0.895195,
		-0.341675, -0.841012, -0.419471,
		0.887442, -0.435634, 0.150564,
		35.154167, 33.524776, 20.658640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383904, 33.207912, 20.926432>,  <34.532951, 33.829708, 20.553240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383904, 33.207912, 20.926432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.777809, 33.250198, 20.981649>,  <35.014153, 33.275570, 21.014780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.777809, 33.250198, 20.981649>,  <34.383904, 33.207912, 20.926432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777809, 33.250198, 20.981649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110525, -0.232297, 0.966345,
		0.134225, -0.966883, -0.217075,
		0.984768, 0.105715, 0.138045,
		35.073238, 33.281914, 21.023064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636604, 32.644554, 21.245239>,  <34.383904, 33.207912, 20.926432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636604, 32.644554, 21.245239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.907104, 32.922615, 21.342772>,  <35.069405, 33.089451, 21.401291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.907104, 32.922615, 21.342772>,  <34.636604, 32.644554, 21.245239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907104, 32.922615, 21.342772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158274, -0.186158, 0.969688,
		0.719468, -0.694344, -0.015865,
		0.676251, 0.695148, 0.243831,
		35.109982, 33.131161, 21.415920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988510, 32.313038, 21.848068>,  <34.636604, 32.644554, 21.245239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988510, 32.313038, 21.848068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.019444, 32.711823, 21.844309>,  <35.038002, 32.951092, 21.842052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.019444, 32.711823, 21.844309>,  <34.988510, 32.313038, 21.848068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019444, 32.711823, 21.844309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126786, 0.019183, 0.991745,
		0.988911, -0.075503, 0.127884,
		0.077333, 0.996961, -0.009398,
		35.042645, 33.010910, 21.841490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403645, 32.468933, 22.436693>,  <34.988510, 32.313038, 21.848068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403645, 32.468933, 22.436693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.203514, 32.807365, 22.363134>,  <35.083435, 33.010426, 22.318998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.203514, 32.807365, 22.363134>,  <35.403645, 32.468933, 22.436693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203514, 32.807365, 22.363134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102376, 0.153093, 0.982895,
		0.859762, 0.510597, 0.010022,
		-0.500328, 0.846081, -0.183896,
		35.053417, 33.061192, 22.307966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549999, 32.909485, 22.913328>,  <35.403645, 32.468933, 22.436693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549999, 32.909485, 22.913328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217735, 33.096928, 22.793058>,  <35.018375, 33.209393, 22.720896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.217735, 33.096928, 22.793058>,  <35.549999, 32.909485, 22.913328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217735, 33.096928, 22.793058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260914, 0.149443, 0.953725,
		0.491857, 0.870674, -0.001870,
		-0.830663, 0.468608, -0.300675,
		34.968536, 33.237511, 22.702856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483425, 33.591537, 23.317297>,  <35.549999, 32.909485, 22.913328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483425, 33.591537, 23.317297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.114704, 33.528358, 23.175684>,  <34.893471, 33.490452, 23.090715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.114704, 33.528358, 23.175684>,  <35.483425, 33.591537, 23.317297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114704, 33.528358, 23.175684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367633, 0.066367, 0.927600,
		-0.123020, 0.985214, -0.119245,
		-0.921798, -0.157952, -0.354032,
		34.838165, 33.480972, 23.069475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056000, 33.990913, 23.687220>,  <35.483425, 33.591537, 23.317297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056000, 33.990913, 23.687220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.790089, 33.735870, 23.531515>,  <34.630543, 33.582844, 23.438093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.790089, 33.735870, 23.531515>,  <35.056000, 33.990913, 23.687220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790089, 33.735870, 23.531515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512645, 0.010352, 0.858538,
		-0.543382, 0.770291, -0.333749,
		-0.664779, -0.637609, -0.389261,
		34.590656, 33.544586, 23.414738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370388, 34.297787, 23.806236>,  <35.056000, 33.990913, 23.687220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370388, 34.297787, 23.806236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.369419, 33.899479, 23.769484>,  <34.368839, 33.660496, 23.747433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.369419, 33.899479, 23.769484>,  <34.370388, 34.297787, 23.806236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369419, 33.899479, 23.769484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611425, -0.071230, 0.788090,
		-0.791299, 0.058087, -0.608665,
		-0.002422, -0.995767, -0.091880,
		34.368694, 33.600750, 23.741920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716133, 34.131752, 23.873755>,  <34.370388, 34.297787, 23.806236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716133, 34.131752, 23.873755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.894417, 33.780754, 23.944571>,  <34.001389, 33.570156, 23.987061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.894417, 33.780754, 23.944571>,  <33.716133, 34.131752, 23.873755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894417, 33.780754, 23.944571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641864, -0.175419, 0.746485,
		-0.623980, -0.446353, -0.641419,
		0.445713, -0.877495, 0.177040,
		34.028130, 33.517506, 23.997683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167122, 33.629967, 23.878227>,  <33.716133, 34.131752, 23.873755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167122, 33.629967, 23.878227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.456589, 33.487274, 24.114548>,  <33.630268, 33.401661, 24.256340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.456589, 33.487274, 24.114548>,  <33.167122, 33.629967, 23.878227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456589, 33.487274, 24.114548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665326, -0.133103, 0.734591,
		-0.183414, -0.924677, -0.333665,
		0.723672, -0.356730, 0.590799,
		33.673691, 33.380257, 24.291788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758003, 33.203548, 24.270380>,  <33.167122, 33.629967, 23.878227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758003, 33.203548, 24.270380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.121662, 33.250271, 24.430288>,  <33.339855, 33.278305, 24.526234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.121662, 33.250271, 24.430288>,  <32.758003, 33.203548, 24.270380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121662, 33.250271, 24.430288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410628, 0.090998, 0.907251,
		0.069593, -0.988977, 0.130693,
		0.909143, 0.116805, 0.399769,
		33.394405, 33.285313, 24.550219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850643, 32.690250, 24.839989>,  <32.758003, 33.203548, 24.270380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850643, 32.690250, 24.839989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.098881, 32.997581, 24.902647>,  <33.247826, 33.181980, 24.940243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.098881, 32.997581, 24.902647>,  <32.850643, 32.690250, 24.839989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098881, 32.997581, 24.902647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396893, 0.135498, 0.907808,
		0.676265, -0.625555, 0.389032,
		0.620597, 0.768323, 0.156646,
		33.285061, 33.228077, 24.949640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352135, 32.606140, 25.406189>,  <32.850643, 32.690250, 24.839989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352135, 32.606140, 25.406189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.375496, 33.004826, 25.383709>,  <33.389515, 33.244038, 25.370222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.375496, 33.004826, 25.383709>,  <33.352135, 32.606140, 25.406189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375496, 33.004826, 25.383709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007020, 0.056703, 0.998366,
		0.998268, -0.057915, 0.010309,
		0.058405, 0.996710, -0.056198,
		33.393017, 33.303837, 25.366850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884838, 32.877914, 26.001198>,  <33.352135, 32.606140, 25.406189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884838, 32.877914, 26.001198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.637615, 33.178745, 25.909655>,  <33.489281, 33.359245, 25.854729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.637615, 33.178745, 25.909655>,  <33.884838, 32.877914, 26.001198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637615, 33.178745, 25.909655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223293, 0.111181, 0.968390,
		0.753752, 0.649625, 0.099218,
		-0.618059, 0.752081, -0.228860,
		33.452198, 33.404369, 25.840998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972046, 33.292976, 26.472437>,  <33.884838, 32.877914, 26.001198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972046, 33.292976, 26.472437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.625290, 33.440243, 26.338001>,  <33.417236, 33.528603, 26.257339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.625290, 33.440243, 26.338001>,  <33.972046, 33.292976, 26.472437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625290, 33.440243, 26.338001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313568, 0.121389, 0.941775,
		0.387525, 0.921803, 0.010214,
		-0.866891, 0.368164, -0.336089,
		33.365223, 33.550694, 26.237175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733158, 33.808865, 26.988297>,  <33.972046, 33.292976, 26.472437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733158, 33.808865, 26.988297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.408485, 33.740921, 26.764751>,  <33.213684, 33.700153, 26.630625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.408485, 33.740921, 26.764751>,  <33.733158, 33.808865, 26.988297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.408485, 33.740921, 26.764751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571351, 0.429727, 0.699208,
		0.121391, 0.886838, -0.445850,
		-0.811678, -0.169859, -0.558861,
		33.164982, 33.689964, 26.597094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394642, 34.395691, 27.130995>,  <33.733158, 33.808865, 26.988297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394642, 34.395691, 27.130995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.124161, 34.125187, 27.014090>,  <32.961872, 33.962883, 26.943947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.124161, 34.125187, 27.014090>,  <33.394642, 34.395691, 27.130995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124161, 34.125187, 27.014090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596925, 0.270436, 0.755344,
		-0.431772, 0.685225, -0.586548,
		-0.676205, -0.676262, -0.292261,
		32.921299, 33.922310, 26.926411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749252, 34.707306, 27.061003>,  <33.394642, 34.395691, 27.130995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749252, 34.707306, 27.061003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.686619, 34.316376, 27.118008>,  <32.649040, 34.081818, 27.152210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.686619, 34.316376, 27.118008>,  <32.749252, 34.707306, 27.061003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686619, 34.316376, 27.118008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798633, 0.210184, 0.563922,
		-0.581091, -0.025514, -0.813439,
		-0.156584, -0.977329, 0.142512,
		32.639645, 34.023178, 27.160761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007900, 34.707867, 27.233576>,  <32.749252, 34.707306, 27.061003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007900, 34.707867, 27.233576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.140137, 34.344604, 27.336311>,  <32.219479, 34.126648, 27.397953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.140137, 34.344604, 27.336311>,  <32.007900, 34.707867, 27.233576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140137, 34.344604, 27.336311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704213, -0.056187, 0.707762,
		-0.628326, -0.414847, -0.658110,
		0.330590, -0.908155, 0.256837,
		32.239315, 34.072159, 27.413363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355989, 34.364952, 27.266562>,  <32.007900, 34.707867, 27.233576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355989, 34.364952, 27.266562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.605642, 34.136375, 27.479694>,  <31.755434, 33.999229, 27.607574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.605642, 34.136375, 27.479694>,  <31.355989, 34.364952, 27.266562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605642, 34.136375, 27.479694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588145, 0.105317, 0.801869,
		-0.514341, -0.813854, -0.270361,
		0.624130, -0.571445, 0.532833,
		31.792881, 33.964943, 27.639544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922651, 33.814068, 27.674255>,  <31.355989, 34.364952, 27.266562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922651, 33.814068, 27.674255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.284065, 33.862537, 27.838665>,  <31.500914, 33.891617, 27.937311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.284065, 33.862537, 27.838665>,  <30.922651, 33.814068, 27.674255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284065, 33.862537, 27.838665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399774, -0.106999, 0.910347,
		0.154286, -0.986848, -0.048237,
		0.903535, 0.121170, 0.411025,
		31.555126, 33.898888, 27.961973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458542, 33.755314, 27.213808>,  <30.922651, 33.814068, 27.674255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458542, 33.755314, 27.213808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.074316, 33.864117, 27.190716>,  <29.843781, 33.929398, 27.176861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.074316, 33.864117, 27.190716>,  <30.458542, 33.755314, 27.213808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074316, 33.864117, 27.190716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157882, 0.362615, -0.918468,
		-0.228894, -0.891360, -0.391259,
		-0.960563, 0.272005, -0.057729,
		29.786148, 33.945717, 27.173397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322674, 33.552776, 26.504953>,  <30.458542, 33.755314, 27.213808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322674, 33.552776, 26.504953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.057722, 33.828682, 26.621899>,  <29.898750, 33.994225, 26.692066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.057722, 33.828682, 26.621899>,  <30.322674, 33.552776, 26.504953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057722, 33.828682, 26.621899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073031, 0.447844, -0.891124,
		-0.745600, -0.568911, -0.347017,
		-0.662380, 0.689766, 0.292364,
		29.859009, 34.035610, 26.709608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927286, 33.587387, 25.905140>,  <30.322674, 33.552776, 26.504953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927286, 33.587387, 25.905140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.848860, 33.911285, 26.126362>,  <29.801804, 34.105625, 26.259094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.848860, 33.911285, 26.126362>,  <29.927286, 33.587387, 25.905140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848860, 33.911285, 26.126362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057899, 0.553458, -0.830862,
		-0.978880, -0.194924, -0.061630,
		-0.196064, 0.809746, 0.553055,
		29.790041, 34.154209, 26.292278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478832, 33.961891, 25.547365>,  <29.927286, 33.587387, 25.905140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478832, 33.961891, 25.547365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.618858, 34.233448, 25.805531>,  <29.702873, 34.396381, 25.960430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.618858, 34.233448, 25.805531>,  <29.478832, 33.961891, 25.547365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618858, 34.233448, 25.805531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182310, 0.626454, -0.757838,
		-0.918813, 0.382957, 0.095529,
		0.350064, 0.678896, 0.645411,
		29.723877, 34.437119, 25.999153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129305, 34.529377, 25.307749>,  <29.478832, 33.961891, 25.547365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129305, 34.529377, 25.307749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.443825, 34.643871, 25.526766>,  <29.632538, 34.712566, 25.658176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.443825, 34.643871, 25.526766>,  <29.129305, 34.529377, 25.307749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443825, 34.643871, 25.526766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204212, 0.716002, -0.667561,
		-0.583120, 0.636718, 0.504540,
		0.786301, 0.286235, 0.547541,
		29.679714, 34.729740, 25.691029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199854, 35.295609, 25.334187>,  <29.129305, 34.529377, 25.307749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199854, 35.295609, 25.334187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.567293, 35.157593, 25.411255>,  <29.787756, 35.074783, 25.457497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.567293, 35.157593, 25.411255>,  <29.199854, 35.295609, 25.334187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567293, 35.157593, 25.411255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372584, 0.593606, -0.713311,
		0.131751, 0.727033, 0.673843,
		0.918598, -0.345043, 0.192673,
		29.842873, 35.054081, 25.469057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581530, 35.956001, 25.173435>,  <29.199854, 35.295609, 25.334187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581530, 35.956001, 25.173435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.825611, 35.639793, 25.152544>,  <29.972061, 35.450069, 25.140009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.825611, 35.639793, 25.152544>,  <29.581530, 35.956001, 25.173435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825611, 35.639793, 25.152544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520509, 0.449734, -0.725817,
		0.597261, 0.415712, 0.685903,
		0.610205, -0.790520, -0.052227,
		30.008673, 35.402637, 25.136875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211021, 36.294884, 25.227598>,  <29.581530, 35.956001, 25.173435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211021, 36.294884, 25.227598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.282949, 35.928169, 25.084955>,  <30.326107, 35.708141, 24.999371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.282949, 35.928169, 25.084955>,  <30.211021, 36.294884, 25.227598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282949, 35.928169, 25.084955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596065, 0.389933, -0.701897,
		0.782542, -0.086345, 0.616582,
		0.179820, -0.916786, -0.356606,
		30.336895, 35.653133, 24.977974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912027, 36.334888, 24.965103>,  <30.211021, 36.294884, 25.227598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912027, 36.334888, 24.965103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.748222, 36.012882, 24.793407>,  <30.649939, 35.819679, 24.690390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.748222, 36.012882, 24.793407>,  <30.912027, 36.334888, 24.965103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748222, 36.012882, 24.793407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692738, 0.031771, -0.720489,
		0.593644, -0.592400, 0.544655,
		-0.409513, -0.805017, -0.429239,
		30.625368, 35.771378, 24.664637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542112, 36.034164, 24.851055>,  <30.912027, 36.334888, 24.965103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542112, 36.034164, 24.851055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.264648, 35.849636, 24.629780>,  <31.098171, 35.738918, 24.497015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.264648, 35.849636, 24.629780>,  <31.542112, 36.034164, 24.851055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264648, 35.849636, 24.629780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631768, -0.020756, -0.774880,
		0.345990, -0.886988, 0.305848,
		-0.693657, -0.461325, -0.553189,
		31.056551, 35.711239, 24.463823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934610, 35.477020, 24.415514>,  <31.542112, 36.034164, 24.851055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934610, 35.477020, 24.415514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.579441, 35.547550, 24.245571>,  <31.366339, 35.589867, 24.143606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.579441, 35.547550, 24.245571>,  <31.934610, 35.477020, 24.415514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579441, 35.547550, 24.245571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430640, -0.006013, -0.902503,
		-0.161685, -0.984314, -0.070592,
		-0.887923, 0.176322, -0.424858,
		31.313065, 35.600445, 24.118114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892328, 35.002949, 23.878538>,  <31.934610, 35.477020, 24.415514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892328, 35.002949, 23.878538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.627623, 35.284981, 23.776615>,  <31.468800, 35.454201, 23.715462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.627623, 35.284981, 23.776615>,  <31.892328, 35.002949, 23.878538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627623, 35.284981, 23.776615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214824, -0.147286, -0.965483,
		-0.718274, -0.693662, -0.054000,
		-0.661765, 0.705082, -0.254807,
		31.429092, 35.496506, 23.700172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398876, 34.686317, 23.318726>,  <31.892328, 35.002949, 23.878538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398876, 34.686317, 23.318726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.435087, 35.084339, 23.302414>,  <31.456814, 35.323154, 23.292627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.435087, 35.084339, 23.302414>,  <31.398876, 34.686317, 23.318726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435087, 35.084339, 23.302414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319934, -0.067834, -0.945008,
		-0.943105, 0.072503, -0.324494,
		0.090527, 0.995059, -0.040778,
		31.462246, 35.382858, 23.290180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051298, 34.772545, 22.602146>,  <31.398876, 34.686317, 23.318726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051298, 34.772545, 22.602146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.272392, 35.080933, 22.728697>,  <31.405048, 35.265965, 22.804626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.272392, 35.080933, 22.728697>,  <31.051298, 34.772545, 22.602146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272392, 35.080933, 22.728697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465560, 0.029203, -0.884534,
		-0.691184, 0.636208, -0.342789,
		0.552737, 0.770965, 0.316377,
		31.438213, 35.312222, 22.823610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112120, 35.281895, 21.936502>,  <31.051298, 34.772545, 22.602146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112120, 35.281895, 21.936502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.391710, 35.394638, 22.199406>,  <31.559465, 35.462284, 22.357147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.391710, 35.394638, 22.199406>,  <31.112120, 35.281895, 21.936502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391710, 35.394638, 22.199406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665297, 0.080830, -0.742190,
		-0.262316, 0.956046, -0.131018,
		0.698978, 0.281855, 0.657258,
		31.601404, 35.479195, 22.396584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436020, 35.815250, 21.578423>,  <31.112120, 35.281895, 21.936502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436020, 35.815250, 21.578423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.699982, 35.693554, 21.853222>,  <31.858358, 35.620537, 22.018101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.699982, 35.693554, 21.853222>,  <31.436020, 35.815250, 21.578423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699982, 35.693554, 21.853222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710870, -0.043255, -0.701992,
		0.243288, 0.951614, 0.187729,
		0.659905, -0.304238, 0.686997,
		31.897953, 35.602283, 22.059320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031391, 36.242744, 21.415287>,  <31.436020, 35.815250, 21.578423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031391, 36.242744, 21.415287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.133045, 35.918007, 21.625555>,  <32.194038, 35.723164, 21.751717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.133045, 35.918007, 21.625555>,  <32.031391, 36.242744, 21.415287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133045, 35.918007, 21.625555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724876, -0.199942, -0.659226,
		0.640290, 0.548579, 0.537671,
		0.254134, -0.811840, 0.525672,
		32.209286, 35.674454, 21.783257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791325, 36.226582, 21.319967>,  <32.031391, 36.242744, 21.415287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791325, 36.226582, 21.319967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.682308, 35.859142, 21.434433>,  <32.616898, 35.638680, 21.503113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.682308, 35.859142, 21.434433>,  <32.791325, 36.226582, 21.319967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682308, 35.859142, 21.434433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669164, -0.394684, -0.629638,
		0.691331, 0.019888, 0.722264,
		-0.272544, -0.918601, 0.286166,
		32.600544, 35.583561, 21.520283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.560658, 35.694866, 21.447203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232147, 35.471508, 21.400383>,  <33.035042, 35.337494, 21.372292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.232147, 35.471508, 21.400383>,  <33.560658, 35.694866, 21.447203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232147, 35.471508, 21.400383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434455, -0.479123, -0.762686,
		0.369798, -0.677229, 0.636090,
		-0.821278, -0.558392, -0.117047,
		32.985764, 35.303989, 21.365269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899288, 34.975571, 21.380009>,  <33.560658, 35.694866, 21.447203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899288, 34.975571, 21.380009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.525959, 34.961845, 21.237053>,  <33.301960, 34.953609, 21.151279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.525959, 34.961845, 21.237053>,  <33.899288, 34.975571, 21.380009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525959, 34.961845, 21.237053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335227, -0.439737, -0.833219,
		-0.128566, -0.897471, 0.421921,
		-0.933324, -0.034315, -0.357391,
		33.245960, 34.951550, 21.129835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894226, 34.361439, 21.123837>,  <33.899288, 34.975571, 21.380009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894226, 34.361439, 21.123837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.605881, 34.538200, 20.910267>,  <33.432873, 34.644257, 20.782125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.605881, 34.538200, 20.910267>,  <33.894226, 34.361439, 21.123837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605881, 34.538200, 20.910267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276952, -0.522525, -0.806390,
		-0.635332, -0.729171, 0.254287,
		-0.720868, 0.441901, -0.533922,
		33.389622, 34.670773, 20.750090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629307, 33.892239, 20.701365>,  <33.894226, 34.361439, 21.123837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629307, 33.892239, 20.701365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.494568, 34.232319, 20.539528>,  <33.413723, 34.436367, 20.442427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.494568, 34.232319, 20.539528>,  <33.629307, 33.892239, 20.701365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494568, 34.232319, 20.539528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063374, -0.449203, -0.891179,
		-0.939423, -0.274554, 0.205195,
		-0.336851, 0.850198, -0.404592,
		33.393513, 34.487377, 20.418150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042709, 33.659332, 20.298674>,  <33.629307, 33.892239, 20.701365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042709, 33.659332, 20.298674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.160343, 34.012272, 20.151714>,  <33.230923, 34.224033, 20.063540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.160343, 34.012272, 20.151714>,  <33.042709, 33.659332, 20.298674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160343, 34.012272, 20.151714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076758, -0.404956, -0.911109,
		-0.952691, 0.239746, -0.186820,
		0.294088, 0.882345, -0.367396,
		33.248569, 34.276974, 20.041496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638733, 33.778336, 19.694361>,  <33.042709, 33.659332, 20.298674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638733, 33.778336, 19.694361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.947308, 34.024113, 19.628204>,  <33.132450, 34.171577, 19.588511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.947308, 34.024113, 19.628204>,  <32.638733, 33.778336, 19.694361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947308, 34.024113, 19.628204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147335, -0.080372, -0.985816,
		-0.619019, 0.784858, 0.028527,
		0.771432, 0.614442, -0.165389,
		33.178738, 34.208447, 19.578588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520138, 34.122932, 18.988247>,  <32.638733, 33.778336, 19.694361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520138, 34.122932, 18.988247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.912357, 34.166702, 19.053419>,  <33.147690, 34.192963, 19.092524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.912357, 34.166702, 19.053419>,  <32.520138, 34.122932, 18.988247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912357, 34.166702, 19.053419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165589, -0.015596, -0.986072,
		-0.105360, 0.993873, -0.033412,
		0.980551, 0.109425, 0.162931,
		33.206524, 34.199532, 19.102299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656021, 34.709354, 18.579512>,  <32.520138, 34.122932, 18.988247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656021, 34.709354, 18.579512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.996925, 34.514915, 18.656824>,  <33.201469, 34.398254, 18.703213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.996925, 34.514915, 18.656824>,  <32.656021, 34.709354, 18.579512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996925, 34.514915, 18.656824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228755, 0.014034, -0.973383,
		0.470443, 0.873794, 0.123157,
		0.852264, -0.486094, 0.193283,
		33.252605, 34.369087, 18.714809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258141, 35.149906, 18.252651>,  <32.656021, 34.709354, 18.579512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258141, 35.149906, 18.252651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410004, 34.783619, 18.305290>,  <33.501122, 34.563847, 18.336874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.410004, 34.783619, 18.305290>,  <33.258141, 35.149906, 18.252651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410004, 34.783619, 18.305290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324060, -0.001601, -0.946035,
		0.866513, 0.401815, 0.296140,
		0.379657, -0.915719, 0.131599,
		33.523899, 34.508904, 18.344770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835556, 35.186340, 17.917089>,  <33.258141, 35.149906, 18.252651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835556, 35.186340, 17.917089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.771702, 34.793121, 17.953161>,  <33.733387, 34.557190, 17.974804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.771702, 34.793121, 17.953161>,  <33.835556, 35.186340, 17.917089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771702, 34.793121, 17.953161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118657, -0.109798, -0.986846,
		0.980018, -0.146839, 0.134174,
		-0.159639, -0.983048, 0.090180,
		33.723808, 34.498207, 17.980215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313538, 34.939728, 17.491560>,  <33.835556, 35.186340, 17.917089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313538, 34.939728, 17.491560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.078968, 34.618744, 17.535683>,  <33.938225, 34.426155, 17.562157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.078968, 34.618744, 17.535683>,  <34.313538, 34.939728, 17.491560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078968, 34.618744, 17.535683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087968, -0.198467, -0.976152,
		0.805213, -0.562736, 0.186976,
		-0.586424, -0.802458, 0.110306,
		33.903042, 34.378006, 17.568775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623581, 34.189529, 17.214769>,  <34.313538, 34.939728, 17.491560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623581, 34.189529, 17.214769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224037, 34.176098, 17.201221>,  <33.984310, 34.168041, 17.193092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224037, 34.176098, 17.201221>,  <34.623581, 34.189529, 17.214769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224037, 34.176098, 17.201221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040988, -0.241305, -0.969583,
		0.024383, -0.969868, 0.242407,
		-0.998862, -0.033577, -0.033870,
		33.924377, 34.166023, 17.191061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502617, 33.530693, 16.950504>,  <34.623581, 34.189529, 17.214769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502617, 33.530693, 16.950504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178043, 33.752869, 16.877769>,  <33.983299, 33.886173, 16.834129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.178043, 33.752869, 16.877769>,  <34.502617, 33.530693, 16.950504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178043, 33.752869, 16.877769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098422, -0.436544, -0.894283,
		-0.576104, -0.707751, 0.408892,
		-0.811429, 0.555444, -0.181837,
		33.934616, 33.919502, 16.823219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121651, 33.145943, 16.592419>,  <34.502617, 33.530693, 16.950504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121651, 33.145943, 16.592419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931992, 33.490879, 16.521362>,  <33.818195, 33.697842, 16.478729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931992, 33.490879, 16.521362>,  <34.121651, 33.145943, 16.592419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931992, 33.490879, 16.521362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321019, -0.357198, -0.877130,
		-0.819835, -0.358865, 0.446192,
		-0.474150, 0.862337, -0.177641,
		33.789745, 33.749580, 16.468069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426456, 32.920372, 16.477570>,  <34.121651, 33.145943, 16.592419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426456, 32.920372, 16.477570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498692, 33.269131, 16.295500>,  <33.542030, 33.478386, 16.186258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498692, 33.269131, 16.295500>,  <33.426456, 32.920372, 16.477570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498692, 33.269131, 16.295500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418238, -0.350787, -0.837869,
		-0.890205, 0.341678, 0.301314,
		0.180585, 0.871897, -0.455175,
		33.552868, 33.530701, 16.158947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928158, 33.097492, 15.992455>,  <33.426456, 32.920372, 16.477570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928158, 33.097492, 15.992455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223404, 33.343437, 15.881361>,  <33.400551, 33.491005, 15.814705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223404, 33.343437, 15.881361>,  <32.928158, 33.097492, 15.992455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223404, 33.343437, 15.881361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146468, -0.255805, -0.955568,
		-0.658587, 0.745996, -0.098755,
		0.738112, 0.614861, -0.277735,
		33.444839, 33.527897, 15.798040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619091, 33.487972, 15.369348>,  <32.928158, 33.097492, 15.992455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619091, 33.487972, 15.369348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018543, 33.507084, 15.360745>,  <33.258213, 33.518551, 15.355584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.018543, 33.507084, 15.360745>,  <32.619091, 33.487972, 15.369348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018543, 33.507084, 15.360745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016075, -0.111272, -0.993660,
		-0.049864, 0.992641, -0.110351,
		0.998627, 0.047774, -0.021505,
		33.318130, 33.521416, 15.354294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580948, 33.805271, 14.650340>,  <32.619091, 33.487972, 15.369348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580948, 33.805271, 14.650340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954056, 33.716843, 14.764226>,  <33.177921, 33.663784, 14.832558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.954056, 33.716843, 14.764226>,  <32.580948, 33.805271, 14.650340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954056, 33.716843, 14.764226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240904, -0.205236, -0.948601,
		0.268145, 0.953417, -0.138181,
		0.932772, -0.221074, 0.284715,
		33.233887, 33.650520, 14.849641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038967, 34.253372, 14.297728>,  <32.580948, 33.805271, 14.650340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038967, 34.253372, 14.297728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.230045, 33.919331, 14.406838>,  <33.344692, 33.718906, 14.472305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.230045, 33.919331, 14.406838>,  <33.038967, 34.253372, 14.297728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230045, 33.919331, 14.406838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186961, -0.206746, -0.960365,
		0.858400, 0.509762, 0.057370,
		0.477697, -0.835104, 0.272777,
		33.373356, 33.668800, 14.488671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562237, 34.120419, 13.804321>,  <33.038967, 34.253372, 14.297728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562237, 34.120419, 13.804321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572533, 33.751732, 13.959126>,  <33.578712, 33.530521, 14.052008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.572533, 33.751732, 13.959126>,  <33.562237, 34.120419, 13.804321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572533, 33.751732, 13.959126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352673, -0.353873, -0.866254,
		0.935393, 0.158787, 0.315955,
		0.025742, -0.921716, 0.387010,
		33.580254, 33.475216, 14.075229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226311, 33.788494, 13.607934>,  <33.562237, 34.120419, 13.804321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226311, 33.788494, 13.607934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.980824, 33.484791, 13.694537>,  <33.833530, 33.302567, 13.746499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.980824, 33.484791, 13.694537>,  <34.226311, 33.788494, 13.607934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980824, 33.484791, 13.694537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441865, -0.557560, -0.702767,
		0.654301, -0.335631, 0.677674,
		-0.613714, -0.759262, 0.216509,
		33.796711, 33.257011, 13.759490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664967, 33.183842, 13.634306>,  <34.226311, 33.788494, 13.607934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664967, 33.183842, 13.634306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292530, 33.064930, 13.549747>,  <34.069069, 32.993584, 13.499012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292530, 33.064930, 13.549747>,  <34.664967, 33.183842, 13.634306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292530, 33.064930, 13.549747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350639, -0.569607, -0.743371,
		0.100575, -0.766272, 0.634595,
		-0.931095, -0.297278, -0.211396,
		34.013203, 32.975746, 13.486328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067570, 32.848976, 13.084173>,  <34.664967, 33.183842, 13.634306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067570, 32.848976, 13.084173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061443, 32.574795, 13.375355>,  <35.057766, 32.410286, 13.550064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.061443, 32.574795, 13.375355>,  <35.067570, 32.848976, 13.084173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061443, 32.574795, 13.375355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151344, 0.718061, 0.679325,
		-0.988362, 0.120579, 0.092738,
		-0.015320, -0.685455, 0.727954,
		35.056847, 32.369160, 13.593740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972095, 32.183224, 12.880682>,  <35.067570, 32.848976, 13.084173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972095, 32.183224, 12.880682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225704, 31.877665, 12.832557>,  <35.377869, 31.694328, 12.803681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.225704, 31.877665, 12.832557>,  <34.972095, 32.183224, 12.880682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225704, 31.877665, 12.832557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107086, -0.067355, 0.991966,
		-0.765866, -0.641810, 0.039099,
		0.634020, -0.763900, -0.120313,
		35.415909, 31.648495, 12.796463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787895, 31.774927, 13.432866>,  <34.972095, 32.183224, 12.880682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787895, 31.774927, 13.432866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168156, 31.703657, 13.331272>,  <35.396313, 31.660894, 13.270316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.168156, 31.703657, 13.331272>,  <34.787895, 31.774927, 13.432866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168156, 31.703657, 13.331272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262044, 0.022858, 0.964785,
		-0.166097, -0.983733, 0.068420,
		0.950655, -0.178177, -0.253985,
		35.453354, 31.650204, 13.255076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047398, 31.123922, 13.769521>,  <34.787895, 31.774927, 13.432866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047398, 31.123922, 13.769521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.371471, 31.333424, 13.664238>,  <35.565918, 31.459126, 13.601068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.371471, 31.333424, 13.664238>,  <35.047398, 31.123922, 13.769521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371471, 31.333424, 13.664238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262873, 0.076694, 0.961777,
		0.523921, -0.848410, -0.075545,
		0.810188, 0.523754, -0.263206,
		35.614529, 31.490549, 13.585276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495949, 30.944744, 14.298421>,  <35.047398, 31.123922, 13.769521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495949, 30.944744, 14.298421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.719017, 31.235674, 14.138416>,  <35.852856, 31.410231, 14.042414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.719017, 31.235674, 14.138416>,  <35.495949, 30.944744, 14.298421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719017, 31.235674, 14.138416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495745, 0.094685, 0.863291,
		0.665767, -0.679732, -0.307764,
		0.557666, 0.727323, -0.400012,
		35.886318, 31.453871, 14.018413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133053, 30.782852, 14.353453>,  <35.495949, 30.944744, 14.298421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133053, 30.782852, 14.353453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.139988, 31.181906, 14.326848>,  <36.144150, 31.421339, 14.310885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.139988, 31.181906, 14.326848>,  <36.133053, 30.782852, 14.353453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139988, 31.181906, 14.326848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381467, 0.054890, 0.922751,
		0.924220, -0.041373, -0.379613,
		0.017341, 0.997635, -0.066513,
		36.145191, 31.481195, 14.306894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781166, 31.054823, 14.680077>,  <36.133053, 30.782852, 14.353453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781166, 31.054823, 14.680077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539455, 31.373526, 14.682129>,  <36.394428, 31.564747, 14.683360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539455, 31.373526, 14.682129>,  <36.781166, 31.054823, 14.680077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539455, 31.373526, 14.682129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272260, 0.200429, 0.941118,
		0.748814, 0.570093, -0.338040,
		-0.604278, 0.796757, 0.005130,
		36.358173, 31.612553, 14.683668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169319, 31.702991, 14.962768>,  <36.781166, 31.054823, 14.680077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169319, 31.702991, 14.962768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.776379, 31.768814, 14.998339>,  <36.540615, 31.808308, 15.019681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.776379, 31.768814, 14.998339>,  <37.169319, 31.702991, 14.962768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776379, 31.768814, 14.998339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120654, 0.194167, 0.973520,
		0.142932, 0.967068, -0.210595,
		-0.982351, 0.164556, 0.088928,
		36.481674, 31.818180, 15.025017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159363, 32.208206, 15.342040>,  <37.169319, 31.702991, 14.962768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159363, 32.208206, 15.342040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.785686, 32.069077, 15.373778>,  <36.561481, 31.985598, 15.392821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.785686, 32.069077, 15.373778>,  <37.159363, 32.208206, 15.342040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785686, 32.069077, 15.373778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029240, 0.147008, 0.988703,
		-0.355562, 0.925962, -0.127163,
		-0.934195, -0.347826, 0.079346,
		36.505428, 31.964729, 15.397582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856064, 32.699497, 15.817488>,  <37.159363, 32.208206, 15.342040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856064, 32.699497, 15.817488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643539, 32.360809, 15.828605>,  <36.516026, 32.157597, 15.835275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.643539, 32.360809, 15.828605>,  <36.856064, 32.699497, 15.817488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643539, 32.360809, 15.828605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206823, 0.161452, 0.964965,
		-0.821544, 0.506946, -0.260903,
		-0.531309, -0.846722, 0.027792,
		36.484146, 32.106792, 15.836943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211193, 32.890614, 16.084404>,  <36.856064, 32.699497, 15.817488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211193, 32.890614, 16.084404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222198, 32.500332, 16.171339>,  <36.228802, 32.266163, 16.223499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222198, 32.500332, 16.171339>,  <36.211193, 32.890614, 16.084404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222198, 32.500332, 16.171339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389357, 0.189786, 0.901322,
		-0.920676, -0.109423, -0.374677,
		0.027516, -0.975709, 0.217336,
		36.230453, 32.207619, 16.236540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595417, 32.796474, 16.328974>,  <36.211193, 32.890614, 16.084404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595417, 32.796474, 16.328974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.780746, 32.467426, 16.460808>,  <35.891945, 32.269997, 16.539907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.780746, 32.467426, 16.460808>,  <35.595417, 32.796474, 16.328974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780746, 32.467426, 16.460808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295253, 0.207371, 0.932643,
		-0.835555, -0.529431, -0.146799,
		0.463328, -0.822618, 0.329586,
		35.919746, 32.220642, 16.559683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092194, 32.480122, 16.762278>,  <35.595417, 32.796474, 16.328974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092194, 32.480122, 16.762278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449471, 32.330643, 16.862328>,  <35.663837, 32.240955, 16.922358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.449471, 32.330643, 16.862328>,  <35.092194, 32.480122, 16.762278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449471, 32.330643, 16.862328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152862, 0.270784, 0.950426,
		-0.422899, -0.887146, 0.184738,
		0.893191, -0.373694, 0.250125,
		35.717426, 32.218533, 16.937365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969585, 32.197651, 17.373003>,  <35.092194, 32.480122, 16.762278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969585, 32.197651, 17.373003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369442, 32.207897, 17.369806>,  <35.609356, 32.214046, 17.367889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.369442, 32.207897, 17.369806>,  <34.969585, 32.197651, 17.373003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369442, 32.207897, 17.369806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001363, 0.248900, 0.968528,
		0.026796, -0.968190, 0.248776,
		0.999640, 0.025614, -0.007989,
		35.669334, 32.215580, 17.367409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206562, 31.862612, 18.040224>,  <34.969585, 32.197651, 17.373003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206562, 31.862612, 18.040224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.497875, 32.111034, 17.924370>,  <35.672665, 32.260090, 17.854856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.497875, 32.111034, 17.924370>,  <35.206562, 31.862612, 18.040224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497875, 32.111034, 17.924370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124572, 0.295630, 0.947146,
		0.673856, -0.725873, 0.137936,
		0.728285, 0.621057, -0.289636,
		35.716362, 32.297352, 17.837479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564861, 31.812658, 18.586424>,  <35.206562, 31.862612, 18.040224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564861, 31.812658, 18.586424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652306, 32.158440, 18.405346>,  <35.704773, 32.365910, 18.296700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652306, 32.158440, 18.405346>,  <35.564861, 31.812658, 18.586424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652306, 32.158440, 18.405346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097998, 0.481019, 0.871216,
		0.970879, -0.146094, 0.189870,
		0.218611, 0.864452, -0.452694,
		35.717888, 32.417774, 18.269537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213104, 32.012207, 18.851995>,  <35.564861, 31.812658, 18.586424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213104, 32.012207, 18.851995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.012890, 32.325520, 18.704521>,  <35.892761, 32.513508, 18.616037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.012890, 32.325520, 18.704521>,  <36.213104, 32.012207, 18.851995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012890, 32.325520, 18.704521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040094, 0.446391, 0.893939,
		0.864786, 0.432668, -0.254840,
		-0.500537, 0.783284, -0.368685,
		35.862728, 32.560505, 18.593916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569462, 32.637489, 19.169815>,  <36.213104, 32.012207, 18.851995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569462, 32.637489, 19.169815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.208733, 32.760204, 19.048098>,  <35.992294, 32.833836, 18.975067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.208733, 32.760204, 19.048098>,  <36.569462, 32.637489, 19.169815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208733, 32.760204, 19.048098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138666, 0.461493, 0.876240,
		0.409251, 0.832409, -0.373644,
		-0.901824, 0.306790, -0.304293,
		35.938187, 32.852242, 18.956810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535458, 33.332405, 19.281448>,  <36.569462, 32.637489, 19.169815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535458, 33.332405, 19.281448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.151382, 33.223499, 19.256432>,  <35.920937, 33.158157, 19.241421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.151382, 33.223499, 19.256432>,  <36.535458, 33.332405, 19.281448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151382, 33.223499, 19.256432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197377, 0.502767, 0.841586,
		-0.197685, 0.820426, -0.536490,
		-0.960189, -0.272260, -0.062544,
		35.863327, 33.141823, 19.237669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306778, 33.961510, 19.560274>,  <36.535458, 33.332405, 19.281448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306778, 33.961510, 19.560274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.014862, 33.688080, 19.555769>,  <35.839710, 33.524021, 19.553066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.014862, 33.688080, 19.555769>,  <36.306778, 33.961510, 19.560274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014862, 33.688080, 19.555769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266687, 0.269472, 0.925345,
		-0.629507, 0.678314, -0.378959,
		-0.729793, -0.683575, -0.011263,
		35.795925, 33.483006, 19.552391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790691, 34.291981, 19.913666>,  <36.306778, 33.961510, 19.560274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790691, 34.291981, 19.913666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.687916, 33.905975, 19.934597>,  <35.626251, 33.674374, 19.947157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.687916, 33.905975, 19.934597>,  <35.790691, 34.291981, 19.913666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687916, 33.905975, 19.934597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184687, 0.102179, 0.977471,
		-0.948616, 0.241486, -0.204479,
		-0.256939, -0.965010, 0.052329,
		35.610836, 33.616474, 19.950296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081547, 34.269176, 20.177145>,  <35.790691, 34.291981, 19.913666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081547, 34.269176, 20.177145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243591, 33.910625, 20.249128>,  <35.340820, 33.695496, 20.292318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.243591, 33.910625, 20.249128>,  <35.081547, 34.269176, 20.177145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243591, 33.910625, 20.249128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342746, 0.033579, 0.938828,
		-0.847589, -0.442014, -0.293627,
		0.405115, -0.896379, 0.179959,
		35.365128, 33.641712, 20.303116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.688419, 36.504627, 23.315470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.904474, 36.189106, 23.432800>,  <31.034107, 35.999794, 23.503199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.904474, 36.189106, 23.432800>,  <30.688419, 36.504627, 23.315470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904474, 36.189106, 23.432800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532588, -0.050520, 0.844865,
		-0.651615, -0.612563, -0.447396,
		0.540136, -0.788805, 0.293325,
		31.066515, 35.952465, 23.520798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299061, 35.905228, 23.373489>,  <30.688419, 36.504627, 23.315470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299061, 35.905228, 23.373489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.605808, 35.826897, 23.617970>,  <30.789856, 35.779900, 23.764658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.605808, 35.826897, 23.617970>,  <30.299061, 35.905228, 23.373489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605808, 35.826897, 23.617970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641516, -0.262464, 0.720811,
		0.019267, -0.944863, -0.326899,
		0.766867, -0.195824, 0.611202,
		30.835869, 35.768150, 23.801331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116529, 35.263935, 23.643414>,  <30.299061, 35.905228, 23.373489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116529, 35.263935, 23.643414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.395653, 35.395889, 23.897734>,  <30.563128, 35.475060, 24.050325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.395653, 35.395889, 23.897734>,  <30.116529, 35.263935, 23.643414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395653, 35.395889, 23.897734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582624, -0.254938, 0.771723,
		0.416666, -0.908947, 0.014298,
		0.697810, 0.329881, 0.635798,
		30.604996, 35.494854, 24.088472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241249, 34.709053, 24.115982>,  <30.116529, 35.263935, 23.643414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241249, 34.709053, 24.115982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.386772, 35.018463, 24.323561>,  <30.474085, 35.204109, 24.448109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.386772, 35.018463, 24.323561>,  <30.241249, 34.709053, 24.115982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386772, 35.018463, 24.323561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334200, -0.411636, 0.847860,
		0.869457, -0.481889, 0.108756,
		0.363806, 0.773524, 0.518947,
		30.495914, 35.250519, 24.479244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649601, 34.459309, 24.588404>,  <30.241249, 34.709053, 24.115982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649601, 34.459309, 24.588404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.556274, 34.825226, 24.720295>,  <30.500278, 35.044777, 24.799429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.556274, 34.825226, 24.720295>,  <30.649601, 34.459309, 24.588404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556274, 34.825226, 24.720295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304885, -0.390808, 0.868513,
		0.923368, 0.102110, 0.370089,
		-0.233318, 0.914791, 0.329727,
		30.486279, 35.099663, 24.819214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959976, 34.509579, 25.157337>,  <30.649601, 34.459309, 24.588404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959976, 34.509579, 25.157337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.671680, 34.786423, 25.172930>,  <30.498703, 34.952530, 25.182285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.671680, 34.786423, 25.172930>,  <30.959976, 34.509579, 25.157337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671680, 34.786423, 25.172930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318866, -0.380934, 0.867879,
		0.615516, 0.613085, 0.495244,
		-0.720739, 0.692110, 0.038979,
		30.455460, 34.994057, 25.184624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990969, 34.713940, 25.844431>,  <30.959976, 34.509579, 25.157337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990969, 34.713940, 25.844431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.629011, 34.805660, 25.700994>,  <30.411837, 34.860695, 25.614933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.629011, 34.805660, 25.700994>,  <30.990969, 34.713940, 25.844431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629011, 34.805660, 25.700994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409098, -0.235973, 0.881451,
		0.117504, 0.944318, 0.307339,
		-0.904893, 0.229305, -0.358591,
		30.357544, 34.874451, 25.593418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730305, 35.268986, 26.264639>,  <30.990969, 34.713940, 25.844431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730305, 35.268986, 26.264639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.407978, 35.091759, 26.107487>,  <30.214582, 34.985424, 26.013195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.407978, 35.091759, 26.107487>,  <30.730305, 35.268986, 26.264639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407978, 35.091759, 26.107487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350211, -0.178425, 0.919520,
		-0.477509, 0.878553, -0.011390,
		-0.805815, -0.443068, -0.392879,
		30.166233, 34.958839, 25.989622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154705, 35.304283, 26.870319>,  <30.730305, 35.268986, 26.264639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154705, 35.304283, 26.870319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.011930, 35.045025, 26.601246>,  <29.926266, 34.889469, 26.439802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.011930, 35.045025, 26.601246>,  <30.154705, 35.304283, 26.870319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011930, 35.045025, 26.601246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620650, -0.373641, 0.689337,
		-0.698134, 0.663550, -0.268906,
		-0.356935, -0.648146, -0.672684,
		29.904850, 34.850582, 26.399441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501425, 35.294178, 27.007011>,  <30.154705, 35.304283, 26.870319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501425, 35.294178, 27.007011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.557695, 34.955875, 26.801134>,  <29.591457, 34.752895, 26.677608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.557695, 34.955875, 26.801134>,  <29.501425, 35.294178, 27.007011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557695, 34.955875, 26.801134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544352, -0.500306, 0.673331,
		-0.826977, 0.185451, -0.530770,
		0.140677, -0.845755, -0.514693,
		29.599899, 34.702148, 26.646727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907953, 34.879448, 26.944511>,  <29.501425, 35.294178, 27.007011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907953, 34.879448, 26.944511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.194448, 34.608418, 26.877705>,  <29.366346, 34.445801, 26.837620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.194448, 34.608418, 26.877705>,  <28.907953, 34.879448, 26.944511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.194448, 34.608418, 26.877705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423453, -0.612210, 0.667747,
		-0.554697, -0.407544, -0.725410,
		0.716240, -0.677574, -0.167015,
		29.409321, 34.405144, 26.827599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.547598, 34.215267, 26.842157>,  <28.907953, 34.879448, 26.944511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.547598, 34.215267, 26.842157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.925480, 34.147636, 26.954544>,  <29.152210, 34.107059, 27.021976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.925480, 34.147636, 26.954544>,  <28.547598, 34.215267, 26.842157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925480, 34.147636, 26.954544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319350, -0.668924, 0.671235,
		0.074459, -0.723848, -0.685930,
		0.944707, -0.169072, 0.280968,
		29.208893, 34.096916, 27.038836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417999, 33.739437, 27.503679>,  <28.547598, 34.215267, 26.842157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417999, 33.739437, 27.503679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.441437, 33.626373, 27.886650>,  <28.455500, 33.558533, 28.116432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.441437, 33.626373, 27.886650>,  <28.417999, 33.739437, 27.503679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441437, 33.626373, 27.886650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124419, -0.949530, -0.287946,
		0.990498, 0.135994, -0.020467,
		0.058593, -0.282664, 0.957428,
		28.459015, 33.541573, 28.173878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030937, 33.396423, 27.569265>,  <28.417999, 33.739437, 27.503679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030937, 33.396423, 27.569265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.800276, 33.260536, 27.866468>,  <28.661879, 33.179005, 28.044790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.800276, 33.260536, 27.866468>,  <29.030937, 33.396423, 27.569265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800276, 33.260536, 27.866468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129253, -0.935929, -0.327613,
		0.806698, -0.092884, 0.583618,
		-0.576655, -0.339719, 0.743007,
		28.627279, 33.158619, 28.089371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.416677, 32.882778, 27.931574>,  <29.030937, 33.396423, 27.569265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.416677, 32.882778, 27.931574> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.021507, 32.820927, 27.935484>,  <28.784405, 32.783817, 27.937830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.021507, 32.820927, 27.935484>,  <29.416677, 32.882778, 27.931574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021507, 32.820927, 27.935484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127870, -0.849352, -0.512105,
		0.087490, -0.504670, 0.858867,
		-0.987924, -0.154627, 0.009778,
		28.725130, 32.774540, 27.938417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324387, 32.178024, 28.267302>,  <29.416677, 32.882778, 27.931574>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324387, 32.178024, 28.267302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.011137, 32.283318, 28.041941>,  <28.823187, 32.346493, 27.906723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.011137, 32.283318, 28.041941>,  <29.324387, 32.178024, 28.267302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011137, 32.283318, 28.041941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160990, -0.789285, -0.592546,
		-0.600664, -0.554740, 0.575731,
		-0.783125, 0.263235, -0.563403,
		28.776199, 32.362289, 27.872919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966158, 31.509001, 28.134594>,  <29.324387, 32.178024, 28.267302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966158, 31.509001, 28.134594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.860180, 31.782700, 27.862825>,  <28.796593, 31.946918, 27.699764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.860180, 31.782700, 27.862825>,  <28.966158, 31.509001, 28.134594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860180, 31.782700, 27.862825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126185, -0.673938, -0.727932,
		-0.955972, -0.278594, 0.092215,
		-0.264944, 0.684247, -0.679420,
		28.780697, 31.987974, 27.658998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527592, 31.116030, 27.694544>,  <28.966158, 31.509001, 28.134594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527592, 31.116030, 27.694544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.655420, 31.435608, 27.490757>,  <28.732117, 31.627356, 27.368484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.655420, 31.435608, 27.490757>,  <28.527592, 31.116030, 27.694544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655420, 31.435608, 27.490757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127225, -0.568971, -0.812456,
		-0.938983, 0.194820, -0.283472,
		0.319571, 0.798947, -0.509468,
		28.751291, 31.675293, 27.337917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365171, 30.882965, 27.026478>,  <28.527592, 31.116030, 27.694544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365171, 30.882965, 27.026478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.613472, 31.193422, 26.982164>,  <28.762451, 31.379696, 26.955576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.613472, 31.193422, 26.982164>,  <28.365171, 30.882965, 27.026478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613472, 31.193422, 26.982164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336681, -0.391508, -0.856369,
		-0.708036, 0.494292, -0.504341,
		0.620750, 0.776142, -0.110783,
		28.799698, 31.426266, 26.948929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352345, 31.024864, 26.319414>,  <28.365171, 30.882965, 27.026478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352345, 31.024864, 26.319414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.681496, 31.179485, 26.486004>,  <28.878986, 31.272257, 26.585958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.681496, 31.179485, 26.486004>,  <28.352345, 31.024864, 26.319414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681496, 31.179485, 26.486004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535766, -0.283658, -0.795294,
		-0.189286, 0.877563, -0.440516,
		0.822877, 0.386551, 0.416476,
		28.928358, 31.295450, 26.610947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655754, 31.484148, 25.776321>,  <28.352345, 31.024864, 26.319414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655754, 31.484148, 25.776321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.954729, 31.400631, 26.028589>,  <29.134115, 31.350521, 26.179949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.954729, 31.400631, 26.028589>,  <28.655754, 31.484148, 25.776321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954729, 31.400631, 26.028589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575024, -0.272083, -0.771569,
		0.332691, 0.939349, -0.083305,
		0.747438, -0.208791, 0.630668,
		29.178961, 31.337994, 26.217791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093113, 32.032761, 25.644297>,  <28.655754, 31.484148, 25.776321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093113, 32.032761, 25.644297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.267508, 31.707796, 25.799164>,  <29.372145, 31.512817, 25.892084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.267508, 31.707796, 25.799164>,  <29.093113, 32.032761, 25.644297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267508, 31.707796, 25.799164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631188, -0.030621, -0.775026,
		0.641497, 0.582277, 0.499435,
		0.435987, -0.812413, 0.387169,
		29.398304, 31.464071, 25.915314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787737, 32.134689, 25.584879>,  <29.093113, 32.032761, 25.644297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787737, 32.134689, 25.584879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.788494, 31.740278, 25.651506>,  <29.788948, 31.503632, 25.691483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.788494, 31.740278, 25.651506>,  <29.787737, 32.134689, 25.584879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.788494, 31.740278, 25.651506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423878, -0.150073, -0.893200,
		0.905717, 0.072297, 0.417671,
		0.001895, -0.986028, 0.166569,
		29.789062, 31.444469, 25.701477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429800, 31.902239, 25.372429>,  <29.787737, 32.134689, 25.584879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429800, 31.902239, 25.372429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.210674, 31.568937, 25.402321>,  <30.079199, 31.368956, 25.420256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.210674, 31.568937, 25.402321>,  <30.429800, 31.902239, 25.372429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210674, 31.568937, 25.402321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474002, -0.382745, -0.792987,
		0.689362, -0.398990, 0.604638,
		-0.547816, -0.833255, 0.074728,
		30.046329, 31.318960, 25.424740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012056, 31.352112, 25.271229>,  <30.429800, 31.902239, 25.372429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012056, 31.352112, 25.271229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.658100, 31.189445, 25.180376>,  <30.445726, 31.091846, 25.125864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.658100, 31.189445, 25.180376>,  <31.012056, 31.352112, 25.271229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658100, 31.189445, 25.180376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376023, -0.335873, -0.863595,
		0.274907, -0.849595, 0.450127,
		-0.884891, -0.406667, -0.227133,
		30.392633, 31.067446, 25.112236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145325, 30.703674, 25.119602>,  <31.012056, 31.352112, 25.271229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145325, 30.703674, 25.119602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.787611, 30.770868, 24.953691>,  <30.572983, 30.811186, 24.854145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.787611, 30.770868, 24.953691>,  <31.145325, 30.703674, 25.119602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787611, 30.770868, 24.953691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339972, -0.347670, -0.873810,
		-0.290992, -0.922446, 0.253806,
		-0.894284, 0.167985, -0.414775,
		30.519325, 30.821264, 24.829260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036379, 30.189516, 24.838764>,  <31.145325, 30.703674, 25.119602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036379, 30.189516, 24.838764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.828617, 30.463053, 24.633795>,  <30.703960, 30.627174, 24.510813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.828617, 30.463053, 24.633795>,  <31.036379, 30.189516, 24.838764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.828617, 30.463053, 24.633795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318956, -0.401176, -0.858676,
		-0.792772, -0.609441, -0.009743,
		-0.519404, 0.683842, -0.512426,
		30.672796, 30.668205, 24.480066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897652, 29.875929, 24.225803>,  <31.036379, 30.189516, 24.838764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897652, 29.875929, 24.225803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.805882, 30.254530, 24.135033>,  <30.750820, 30.481691, 24.080570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.805882, 30.254530, 24.135033>,  <30.897652, 29.875929, 24.225803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805882, 30.254530, 24.135033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092862, -0.210797, -0.973109,
		-0.968887, -0.244327, -0.039533,
		-0.229423, 0.946504, -0.226927,
		30.737055, 30.538481, 24.066954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030062, 29.213179, 24.059187>,  <30.897652, 29.875929, 24.225803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030062, 29.213179, 24.059187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.417074, 29.112383, 24.067045>,  <31.649281, 29.051905, 24.071760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.417074, 29.112383, 24.067045>,  <31.030062, 29.213179, 24.059187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417074, 29.112383, 24.067045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007923, 0.047456, 0.998842,
		-0.252633, -0.966565, 0.043918,
		0.967530, -0.251992, 0.019647,
		31.707333, 29.036785, 24.072939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094530, 28.681568, 24.619499>,  <31.030062, 29.213179, 24.059187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094530, 28.681568, 24.619499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.481522, 28.770235, 24.570755>,  <31.713717, 28.823435, 24.541510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.481522, 28.770235, 24.570755>,  <31.094530, 28.681568, 24.619499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481522, 28.770235, 24.570755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106196, 0.081297, 0.991016,
		0.229585, -0.971727, 0.055113,
		0.967478, 0.221670, -0.121858,
		31.771765, 28.836737, 24.534197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408506, 28.255465, 25.168562>,  <31.094530, 28.681568, 24.619499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408506, 28.255465, 25.168562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.667740, 28.538258, 25.055309>,  <31.823280, 28.707933, 24.987358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.667740, 28.538258, 25.055309>,  <31.408506, 28.255465, 25.168562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667740, 28.538258, 25.055309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251570, 0.152169, 0.955802,
		0.718820, -0.690665, -0.079238,
		0.648082, 0.706984, -0.283133,
		31.862164, 28.750353, 24.970369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011497, 28.100348, 25.565771>,  <31.408506, 28.255465, 25.168562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011497, 28.100348, 25.565771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.064808, 28.471546, 25.426594>,  <32.096794, 28.694265, 25.343088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.064808, 28.471546, 25.426594>,  <32.011497, 28.100348, 25.565771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064808, 28.471546, 25.426594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001060, 0.351207, 0.936298,
		0.991078, -0.124419, 0.047791,
		0.133277, 0.927995, -0.347941,
		32.104790, 28.749945, 25.322212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554440, 28.306450, 25.794863>,  <32.011497, 28.100348, 25.565771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554440, 28.306450, 25.794863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.346104, 28.641520, 25.729099>,  <32.221104, 28.842562, 25.689642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.346104, 28.641520, 25.729099>,  <32.554440, 28.306450, 25.794863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346104, 28.641520, 25.729099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127228, 0.266616, 0.955368,
		0.844119, 0.476678, -0.245440,
		-0.520841, 0.837672, -0.164409,
		32.189850, 28.892820, 25.679777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902878, 28.776567, 26.081163>,  <32.554440, 28.306450, 25.794863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902878, 28.776567, 26.081163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.566933, 28.991243, 26.048687>,  <32.365364, 29.120049, 26.029202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.566933, 28.991243, 26.048687>,  <32.902878, 28.776567, 26.081163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566933, 28.991243, 26.048687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229802, 0.487087, 0.842578,
		0.491749, 0.688994, -0.532419,
		-0.839865, 0.536688, -0.081192,
		32.314972, 29.152250, 26.024330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062908, 29.532413, 26.119736>,  <32.902878, 28.776567, 26.081163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062908, 29.532413, 26.119736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.676323, 29.492487, 26.214382>,  <32.444370, 29.468531, 26.271170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.676323, 29.492487, 26.214382>,  <33.062908, 29.532413, 26.119736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676323, 29.492487, 26.214382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133990, 0.590026, 0.796188,
		-0.219082, 0.801190, -0.556864,
		-0.966462, -0.099816, 0.236616,
		32.386383, 29.462542, 26.285366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893452, 30.160923, 26.415611>,  <33.062908, 29.532413, 26.119736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893452, 30.160923, 26.415611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.593807, 29.916740, 26.518513>,  <32.414021, 29.770231, 26.580254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.593807, 29.916740, 26.518513>,  <32.893452, 30.160923, 26.415611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593807, 29.916740, 26.518513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077879, 0.466799, 0.880928,
		-0.657852, 0.639877, -0.397226,
		-0.749110, -0.610456, 0.257252,
		32.369076, 29.733604, 26.595688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429230, 30.623865, 26.642927>,  <32.893452, 30.160923, 26.415611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429230, 30.623865, 26.642927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.334812, 30.279148, 26.822525>,  <32.278160, 30.072317, 26.930285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.334812, 30.279148, 26.822525>,  <32.429230, 30.623865, 26.642927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334812, 30.279148, 26.822525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186218, 0.493603, 0.849517,
		-0.953733, 0.116912, -0.276993,
		-0.236044, -0.861793, 0.448994,
		32.264000, 30.020611, 26.957224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825729, 30.801615, 27.073647>,  <32.429230, 30.623865, 26.642927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825729, 30.801615, 27.073647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.990044, 30.469671, 27.224689>,  <32.088631, 30.270504, 27.315315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.990044, 30.469671, 27.224689>,  <31.825729, 30.801615, 27.073647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990044, 30.469671, 27.224689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062615, 0.387511, 0.919736,
		-0.909580, -0.401458, 0.107222,
		0.410785, -0.829860, 0.377610,
		32.113277, 30.220713, 27.337973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331072, 30.590786, 27.543457>,  <31.825729, 30.801615, 27.073647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331072, 30.590786, 27.543457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.666752, 30.403156, 27.653522>,  <31.868160, 30.290579, 27.719561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.666752, 30.403156, 27.653522>,  <31.331072, 30.590786, 27.543457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666752, 30.403156, 27.653522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209214, 0.188565, 0.959517,
		-0.501971, -0.862793, 0.060107,
		0.839199, -0.469074, 0.275162,
		31.918512, 30.262434, 27.736071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.108644, 30.162090, 27.997517>,  <31.331072, 30.590786, 27.543457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.108644, 30.162090, 27.997517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.496710, 30.172245, 28.093966>,  <31.729549, 30.178339, 28.151834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.496710, 30.172245, 28.093966>,  <31.108644, 30.162090, 27.997517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496710, 30.172245, 28.093966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237632, 0.296971, 0.924846,
		-0.048126, -0.954549, 0.294143,
		0.970162, 0.025388, 0.241124,
		31.787758, 30.179861, 28.166302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.463917, 27.310787, 21.003328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797987, 27.502998, 20.896311>,  <31.998428, 27.618324, 20.832100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797987, 27.502998, 20.896311>,  <31.463917, 27.310787, 21.003328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797987, 27.502998, 20.896311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145019, 0.276839, 0.949910,
		0.530524, -0.832138, 0.161523,
		0.835173, 0.480527, -0.267546,
		32.048538, 27.647156, 20.816048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896395, 26.984915, 21.328821>,  <31.463917, 27.310787, 21.003328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896395, 26.984915, 21.328821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052032, 27.340782, 21.233244>,  <32.145416, 27.554302, 21.175898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052032, 27.340782, 21.233244>,  <31.896395, 26.984915, 21.328821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052032, 27.340782, 21.233244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131998, 0.202863, 0.970270,
		0.911693, -0.409065, -0.038502,
		0.389093, 0.889670, -0.238945,
		32.168758, 27.607683, 21.161560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406864, 27.113708, 21.911177>,  <31.896395, 26.984915, 21.328821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406864, 27.113708, 21.911177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351109, 27.470383, 21.738914>,  <32.317657, 27.684387, 21.635557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351109, 27.470383, 21.738914>,  <32.406864, 27.113708, 21.911177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351109, 27.470383, 21.738914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130198, 0.447630, 0.884689,
		0.981641, 0.067242, -0.178489,
		-0.139386, 0.891687, -0.430658,
		32.309292, 27.737888, 21.609716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872398, 27.479473, 22.209421>,  <32.406864, 27.113708, 21.911177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872398, 27.479473, 22.209421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608650, 27.744900, 22.068052>,  <32.450401, 27.904156, 21.983231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608650, 27.744900, 22.068052>,  <32.872398, 27.479473, 22.209421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608650, 27.744900, 22.068052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007657, 0.475994, 0.879415,
		0.751779, 0.577154, -0.318937,
		-0.659370, 0.663568, -0.353423,
		32.410839, 27.943970, 21.962025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099258, 28.113403, 22.400188>,  <32.872398, 27.479473, 22.209421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099258, 28.113403, 22.400188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706097, 28.160009, 22.343174>,  <32.470200, 28.187973, 22.308966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706097, 28.160009, 22.343174>,  <33.099258, 28.113403, 22.400188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706097, 28.160009, 22.343174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066482, 0.497345, 0.865002,
		0.171677, 0.859693, -0.481098,
		-0.982908, 0.116517, -0.142537,
		32.411224, 28.194963, 22.300413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991661, 28.791126, 22.492048>,  <33.099258, 28.113403, 22.400188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991661, 28.791126, 22.492048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642773, 28.602694, 22.544664>,  <32.433437, 28.489634, 22.576235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642773, 28.602694, 22.544664>,  <32.991661, 28.791126, 22.492048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642773, 28.602694, 22.544664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142847, 0.502574, 0.852651,
		-0.467779, 0.724914, -0.505651,
		-0.872225, -0.471083, 0.131542,
		32.381104, 28.461369, 22.584127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420609, 29.231699, 22.589302>,  <32.991661, 28.791126, 22.492048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420609, 29.231699, 22.589302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258781, 28.906038, 22.755907>,  <32.161686, 28.710642, 22.855869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258781, 28.906038, 22.755907>,  <32.420609, 29.231699, 22.589302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258781, 28.906038, 22.755907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382174, 0.564287, 0.731795,
		-0.830824, 0.136881, -0.539440,
		-0.404568, -0.814152, 0.416511,
		32.137409, 28.661793, 22.880859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036160, 29.547338, 22.960608>,  <32.420609, 29.231699, 22.589302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036160, 29.547338, 22.960608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998402, 29.180826, 23.116308>,  <31.975746, 28.960918, 23.209728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998402, 29.180826, 23.116308>,  <32.036160, 29.547338, 22.960608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998402, 29.180826, 23.116308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440185, 0.389116, 0.809213,
		-0.892931, -0.094953, -0.440065,
		-0.094399, -0.916282, 0.389251,
		31.970081, 28.905941, 23.233084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473480, 29.578590, 23.405762>,  <32.036160, 29.547338, 22.960608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473480, 29.578590, 23.405762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679688, 29.263344, 23.540289>,  <31.803411, 29.074196, 23.621006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679688, 29.263344, 23.540289>,  <31.473480, 29.578590, 23.405762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679688, 29.263344, 23.540289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164869, 0.293928, 0.941501,
		-0.840868, -0.540810, 0.021589,
		0.515519, -0.788118, 0.336318,
		31.834343, 29.026909, 23.641184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.690191, 29.908585, 23.427893>,  <31.473480, 29.578590, 23.405762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.690191, 29.908585, 23.427893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757824, 30.290375, 23.526186>,  <30.798403, 30.519449, 23.585161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757824, 30.290375, 23.526186>,  <30.690191, 29.908585, 23.427893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757824, 30.290375, 23.526186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369577, 0.169731, -0.913567,
		-0.913687, 0.245284, -0.324055,
		0.169081, 0.954477, 0.245732,
		30.808548, 30.576717, 23.599905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399624, 30.217272, 22.957756>,  <30.690191, 29.908585, 23.427893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399624, 30.217272, 22.957756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663704, 30.481737, 23.100302>,  <30.822153, 30.640417, 23.185829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663704, 30.481737, 23.100302>,  <30.399624, 30.217272, 22.957756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663704, 30.481737, 23.100302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237664, 0.266192, -0.934162,
		-0.712496, 0.701430, 0.018606,
		0.660201, 0.661164, 0.356365,
		30.861765, 30.680086, 23.207211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249487, 30.859407, 22.667479>,  <30.399624, 30.217272, 22.957756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249487, 30.859407, 22.667479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628647, 30.866247, 22.794720>,  <30.856144, 30.870352, 22.871065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628647, 30.866247, 22.794720>,  <30.249487, 30.859407, 22.667479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628647, 30.866247, 22.794720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280436, 0.428903, -0.858719,
		-0.151121, 0.903189, 0.401762,
		0.947902, 0.017102, 0.318103,
		30.913017, 30.871378, 22.890150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537481, 31.539595, 22.412224>,  <30.249487, 30.859407, 22.667479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537481, 31.539595, 22.412224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878799, 31.349758, 22.498621>,  <31.083590, 31.235857, 22.550459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878799, 31.349758, 22.498621>,  <30.537481, 31.539595, 22.412224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878799, 31.349758, 22.498621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404619, 0.341379, -0.848377,
		0.328896, 0.811310, 0.483325,
		0.853294, -0.474591, 0.215993,
		31.134789, 31.207380, 22.563419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000814, 31.976381, 22.200401>,  <30.537481, 31.539595, 22.412224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000814, 31.976381, 22.200401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202692, 31.631802, 22.222979>,  <31.323818, 31.425053, 22.236525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202692, 31.631802, 22.222979>,  <31.000814, 31.976381, 22.200401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202692, 31.631802, 22.222979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602261, 0.304493, -0.737946,
		0.618517, 0.406433, 0.672495,
		0.504696, -0.861450, 0.056445,
		31.354101, 31.373367, 22.239912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686245, 32.196609, 22.049082>,  <31.000814, 31.976381, 22.200401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686245, 32.196609, 22.049082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658501, 31.803570, 21.980171>,  <31.641853, 31.567745, 21.938826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658501, 31.803570, 21.980171>,  <31.686245, 32.196609, 22.049082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658501, 31.803570, 21.980171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459402, 0.121828, -0.879834,
		0.885516, -0.140170, 0.442960,
		-0.069361, -0.982604, -0.172275,
		31.637691, 31.508789, 21.928488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309483, 31.942535, 21.713394>,  <31.686245, 32.196609, 22.049082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309483, 31.942535, 21.713394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047329, 31.654079, 21.623564>,  <31.890038, 31.481007, 21.569666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047329, 31.654079, 21.623564>,  <32.309483, 31.942535, 21.713394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047329, 31.654079, 21.623564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344160, -0.020451, -0.938688,
		0.672331, -0.692490, 0.261590,
		-0.655382, -0.721138, -0.224577,
		31.850714, 31.437738, 21.556190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682827, 31.439360, 21.303614>,  <32.309483, 31.942535, 21.713394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682827, 31.439360, 21.303614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297729, 31.366991, 21.223219>,  <32.066669, 31.323570, 21.174982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297729, 31.366991, 21.223219>,  <32.682827, 31.439360, 21.303614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297729, 31.366991, 21.223219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218367, -0.081724, -0.972439,
		0.159509, -0.980096, 0.118186,
		-0.962742, -0.180921, -0.200985,
		32.008907, 31.312716, 21.162924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703342, 30.998587, 20.679703>,  <32.682827, 31.439360, 21.303614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703342, 30.998587, 20.679703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318790, 31.108244, 20.689409>,  <32.088058, 31.174038, 20.695232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318790, 31.108244, 20.689409>,  <32.703342, 30.998587, 20.679703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318790, 31.108244, 20.689409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090036, -0.229967, -0.969025,
		-0.260072, -0.933788, 0.245769,
		-0.961383, 0.274145, 0.024266,
		32.030376, 31.190487, 20.696690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274517, 30.429100, 20.473150>,  <32.703342, 30.998587, 20.679703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274517, 30.429100, 20.473150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059830, 30.759851, 20.405968>,  <31.931019, 30.958302, 20.365658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059830, 30.759851, 20.405968>,  <32.274517, 30.429100, 20.473150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059830, 30.759851, 20.405968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204387, -0.320534, -0.924924,
		-0.818635, -0.462092, 0.341039,
		-0.536715, 0.826879, -0.167955,
		31.898815, 31.007915, 20.355581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765518, 30.256269, 19.991266>,  <32.274517, 30.429100, 20.473150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765518, 30.256269, 19.991266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759680, 30.655468, 19.966635>,  <31.756176, 30.894987, 19.951857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759680, 30.655468, 19.966635>,  <31.765518, 30.256269, 19.991266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759680, 30.655468, 19.966635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145614, -0.063051, -0.987330,
		-0.989234, -0.005444, 0.146242,
		-0.014596, 0.997996, -0.061579,
		31.755301, 30.954866, 19.948160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058102, 30.610920, 19.603003>,  <31.765518, 30.256269, 19.991266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058102, 30.610920, 19.603003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380579, 30.845654, 19.572865>,  <31.574066, 30.986494, 19.554781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380579, 30.845654, 19.572865>,  <31.058102, 30.610920, 19.603003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.380579, 30.845654, 19.572865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075082, -0.024841, -0.996868,
		-0.586868, 0.809326, 0.024034,
		0.806194, 0.586834, -0.075345,
		31.622437, 31.021704, 19.550261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901081, 30.963671, 19.034668>,  <31.058102, 30.610920, 19.603003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901081, 30.963671, 19.034668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274109, 31.087723, 19.108572>,  <31.497925, 31.162155, 19.152914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274109, 31.087723, 19.108572>,  <30.901081, 30.963671, 19.034668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274109, 31.087723, 19.108572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139752, 0.161744, -0.976887,
		-0.332848, 0.936834, 0.107495,
		0.932567, 0.310132, 0.184761,
		31.553879, 31.180763, 19.164000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065865, 31.516436, 18.599577>,  <30.901081, 30.963671, 19.034668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065865, 31.516436, 18.599577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432690, 31.384968, 18.689880>,  <31.652784, 31.306087, 18.744062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432690, 31.384968, 18.689880>,  <31.065865, 31.516436, 18.599577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432690, 31.384968, 18.689880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275558, 0.113167, -0.954600,
		0.288201, 0.937640, 0.194349,
		0.917065, -0.328672, 0.225760,
		31.707809, 31.286366, 18.757608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.824959, 30.640289, 19.769411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.484451, 30.430576, 19.760748>,  <37.280148, 30.304749, 19.755550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.484451, 30.430576, 19.760748>,  <37.824959, 30.640289, 19.769411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484451, 30.430576, 19.760748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235393, 0.344662, 0.908735,
		-0.468970, 0.778675, -0.416812,
		-0.851268, -0.524284, -0.021659,
		37.229073, 30.273291, 19.754250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269043, 31.062626, 19.992411>,  <37.824959, 30.640289, 19.769411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269043, 31.062626, 19.992411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.148712, 30.688669, 20.067751>,  <37.076515, 30.464294, 20.112955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.148712, 30.688669, 20.067751>,  <37.269043, 31.062626, 19.992411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148712, 30.688669, 20.067751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262091, 0.270941, 0.926229,
		-0.916957, 0.229270, -0.326534,
		-0.300828, -0.934894, 0.188351,
		37.058464, 30.408201, 20.124256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603317, 31.165060, 20.157457>,  <37.269043, 31.062626, 19.992411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603317, 31.165060, 20.157457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.689243, 30.801451, 20.300301>,  <36.740799, 30.583284, 20.386007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.689243, 30.801451, 20.300301>,  <36.603317, 31.165060, 20.157457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689243, 30.801451, 20.300301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410681, 0.247671, 0.877496,
		-0.886112, -0.335160, -0.320115,
		0.214818, -0.909025, 0.357108,
		36.753689, 30.528744, 20.407433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013058, 30.903721, 20.477449>,  <36.603317, 31.165060, 20.157457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013058, 30.903721, 20.477449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286564, 30.672544, 20.655640>,  <36.450668, 30.533838, 20.762554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286564, 30.672544, 20.655640>,  <36.013058, 30.903721, 20.477449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286564, 30.672544, 20.655640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393301, 0.222331, 0.892123,
		-0.614637, -0.785209, -0.075282,
		0.683766, -0.577941, 0.445476,
		36.491695, 30.499163, 20.789282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656551, 30.556875, 21.041456>,  <36.013058, 30.903721, 20.477449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656551, 30.556875, 21.041456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.044159, 30.558111, 21.140244>,  <36.276722, 30.558853, 21.199516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.044159, 30.558111, 21.140244>,  <35.656551, 30.556875, 21.041456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044159, 30.558111, 21.140244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243559, 0.177963, 0.953419,
		-0.041006, -0.984032, 0.173202,
		0.969019, 0.003089, 0.246967,
		36.334866, 30.559038, 21.214334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658829, 30.188576, 21.671371>,  <35.656551, 30.556875, 21.041456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658829, 30.188576, 21.671371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.993774, 30.406830, 21.658081>,  <36.194740, 30.537783, 21.650106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.993774, 30.406830, 21.658081>,  <35.658829, 30.188576, 21.671371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993774, 30.406830, 21.658081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020206, 0.091633, 0.995588,
		0.546270, -0.832999, 0.087755,
		0.837365, 0.545633, -0.033225,
		36.244984, 30.570520, 21.648113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128273, 29.945766, 22.288683>,  <35.658829, 30.188576, 21.671371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128273, 29.945766, 22.288683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.235538, 30.314577, 22.177004>,  <36.299896, 30.535864, 22.109997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.235538, 30.314577, 22.177004>,  <36.128273, 29.945766, 22.288683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235538, 30.314577, 22.177004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010984, 0.292721, 0.956135,
		0.963310, -0.253335, 0.088625,
		0.268165, 0.922028, -0.279199,
		36.315987, 30.591185, 22.093245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539131, 30.169956, 22.823797>,  <36.128273, 29.945766, 22.288683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539131, 30.169956, 22.823797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.481285, 30.511751, 22.624224>,  <36.446579, 30.716827, 22.504478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.481285, 30.511751, 22.624224>,  <36.539131, 30.169956, 22.823797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481285, 30.511751, 22.624224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082355, 0.492093, 0.866638,
		0.986055, 0.166418, -0.000792,
		-0.144614, 0.854488, -0.498936,
		36.437901, 30.768097, 22.474543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997318, 30.663223, 23.136717>,  <36.539131, 30.169956, 22.823797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997318, 30.663223, 23.136717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.720512, 30.885290, 22.952150>,  <36.554428, 31.018530, 22.841410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.720512, 30.885290, 22.952150>,  <36.997318, 30.663223, 23.136717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720512, 30.885290, 22.952150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047367, 0.602888, 0.796419,
		0.720326, 0.572990, -0.390911,
		-0.692016, 0.555165, -0.461417,
		36.512909, 31.051840, 22.813725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239834, 31.319935, 23.257618>,  <36.997318, 30.663223, 23.136717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239834, 31.319935, 23.257618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.852425, 31.386292, 23.183380>,  <36.619980, 31.426105, 23.138838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.852425, 31.386292, 23.183380>,  <37.239834, 31.319935, 23.257618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852425, 31.386292, 23.183380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097013, 0.435085, 0.895147,
		0.229246, 0.884975, -0.405296,
		-0.968522, 0.165890, -0.185596,
		36.561867, 31.436058, 23.127701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065266, 32.075703, 23.379805>,  <37.239834, 31.319935, 23.257618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065266, 32.075703, 23.379805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.722427, 31.872025, 23.411060>,  <36.516724, 31.749817, 23.429813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.722427, 31.872025, 23.411060>,  <37.065266, 32.075703, 23.379805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722427, 31.872025, 23.411060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150836, 0.393089, 0.907045,
		-0.492579, 0.765639, -0.413720,
		-0.857097, -0.509195, 0.078141,
		36.465298, 31.719267, 23.434504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558853, 32.519295, 23.561792>,  <37.065266, 32.075703, 23.379805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558853, 32.519295, 23.561792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.447292, 32.155674, 23.685625>,  <36.380356, 31.937502, 23.759924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.447292, 32.155674, 23.685625>,  <36.558853, 32.519295, 23.561792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447292, 32.155674, 23.685625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272313, 0.384004, 0.882262,
		-0.920901, 0.161762, -0.354647,
		-0.278903, -0.909051, 0.309580,
		36.363621, 31.882959, 23.778500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910770, 32.635139, 23.917593>,  <36.558853, 32.519295, 23.561792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910770, 32.635139, 23.917593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.001858, 32.275585, 24.067341>,  <36.056511, 32.059853, 24.157190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.001858, 32.275585, 24.067341>,  <35.910770, 32.635139, 23.917593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001858, 32.275585, 24.067341> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299640, 0.301127, 0.905284,
		-0.926478, -0.318324, -0.200770,
		0.227717, -0.898884, 0.374370,
		36.070171, 32.005920, 24.179651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267399, 32.481133, 24.284626>,  <35.910770, 32.635139, 23.917593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267399, 32.481133, 24.284626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.567574, 32.250298, 24.413509>,  <35.747677, 32.111797, 24.490839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.567574, 32.250298, 24.413509>,  <35.267399, 32.481133, 24.284626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567574, 32.250298, 24.413509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109345, 0.372383, 0.921615,
		-0.651835, -0.726846, 0.216349,
		0.750437, -0.577084, 0.322209,
		35.792706, 32.077171, 24.510172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471729, 32.369057, 24.288809>,  <35.267399, 32.481133, 24.284626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471729, 32.369057, 24.288809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.324486, 32.729698, 24.197943>,  <34.236141, 32.946083, 24.143423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.324486, 32.729698, 24.197943>,  <34.471729, 32.369057, 24.288809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324486, 32.729698, 24.197943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354350, -0.089845, -0.930787,
		-0.859613, -0.423124, -0.286412,
		-0.368106, 0.901606, -0.227166,
		34.214054, 33.000179, 24.129793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264748, 32.324612, 23.582001>,  <34.471729, 32.369057, 24.288809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264748, 32.324612, 23.582001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.258526, 32.719494, 23.645472>,  <34.254791, 32.956425, 23.683554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.258526, 32.719494, 23.645472>,  <34.264748, 32.324612, 23.582001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258526, 32.719494, 23.645472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323298, 0.155135, -0.933494,
		-0.946169, 0.036779, -0.321575,
		-0.015555, 0.987208, 0.158675,
		34.253860, 33.015656, 23.693073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853271, 32.573044, 23.005455>,  <34.264748, 32.324612, 23.582001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853271, 32.573044, 23.005455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.086079, 32.864220, 23.150429>,  <34.225765, 33.038925, 23.237413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.086079, 32.864220, 23.150429>,  <33.853271, 32.573044, 23.005455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086079, 32.864220, 23.150429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342601, 0.184705, -0.921145,
		-0.737479, 0.660297, -0.141890,
		0.582022, 0.727937, 0.362434,
		34.260685, 33.082600, 23.259159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651909, 33.114349, 22.621979>,  <33.853271, 32.573044, 23.005455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651909, 33.114349, 22.621979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.004917, 33.229664, 22.770603>,  <34.216721, 33.298851, 22.859777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.004917, 33.229664, 22.770603>,  <33.651909, 33.114349, 22.621979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004917, 33.229664, 22.770603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381617, 0.022734, -0.924041,
		-0.274834, 0.957275, -0.089951,
		0.882516, 0.288285, 0.371560,
		34.269672, 33.316151, 22.882071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848999, 33.702965, 22.225107>,  <33.651909, 33.114349, 22.621979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848999, 33.702965, 22.225107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.197269, 33.573994, 22.373684>,  <34.406231, 33.496613, 22.462830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.197269, 33.573994, 22.373684>,  <33.848999, 33.702965, 22.225107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197269, 33.573994, 22.373684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433764, 0.147299, -0.888905,
		0.231891, 0.935065, 0.268105,
		0.870675, -0.322424, 0.371440,
		34.458473, 33.477268, 22.485115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463379, 34.184761, 22.066294>,  <33.848999, 33.702965, 22.225107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463379, 34.184761, 22.066294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.616356, 33.820065, 22.126251>,  <34.708141, 33.601246, 22.162226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.616356, 33.820065, 22.126251>,  <34.463379, 34.184761, 22.066294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616356, 33.820065, 22.126251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544967, 0.091573, -0.833442,
		0.746156, 0.400430, 0.531890,
		0.382441, -0.911740, 0.149894,
		34.731087, 33.546543, 22.171219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155979, 34.303745, 21.983244>,  <34.463379, 34.184761, 22.066294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155979, 34.303745, 21.983244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.106262, 33.913471, 21.911039>,  <35.076431, 33.679306, 21.867716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.106262, 33.913471, 21.911039>,  <35.155979, 34.303745, 21.983244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106262, 33.913471, 21.911039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759101, 0.023655, -0.650543,
		0.638997, -0.217883, 0.737706,
		-0.124292, -0.975688, -0.180511,
		35.068974, 33.620766, 21.856886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831718, 34.104095, 21.761629>,  <35.155979, 34.303745, 21.983244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831718, 34.104095, 21.761629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.624535, 33.786106, 21.635302>,  <35.500225, 33.595314, 21.559505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.624535, 33.786106, 21.635302>,  <35.831718, 34.104095, 21.761629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624535, 33.786106, 21.635302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479482, 0.035928, -0.876816,
		0.708391, -0.605582, 0.362565,
		-0.517958, -0.794972, -0.315817,
		35.469147, 33.547615, 21.540556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248856, 33.699692, 21.363482>,  <35.831718, 34.104095, 21.761629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248856, 33.699692, 21.363482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.891281, 33.564770, 21.245434>,  <35.676735, 33.483818, 21.174604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.891281, 33.564770, 21.245434>,  <36.248856, 33.699692, 21.363482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891281, 33.564770, 21.245434> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350076, -0.114344, -0.929716,
		0.279853, -0.934425, 0.220299,
		-0.893940, -0.337305, -0.295120,
		35.623100, 33.463577, 21.156898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333874, 33.039925, 20.871677>,  <36.248856, 33.699692, 21.363482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333874, 33.039925, 20.871677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962593, 33.181423, 20.825539>,  <35.739826, 33.266323, 20.797855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.962593, 33.181423, 20.825539>,  <36.333874, 33.039925, 20.871677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962593, 33.181423, 20.825539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064619, -0.152037, -0.986260,
		-0.366422, -0.922903, 0.118262,
		-0.928202, 0.353745, -0.115347,
		35.684132, 33.287548, 20.790934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988976, 32.528564, 20.410311>,  <36.333874, 33.039925, 20.871677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988976, 32.528564, 20.410311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.785690, 32.871887, 20.381937>,  <35.663719, 33.077881, 20.364912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.785690, 32.871887, 20.381937>,  <35.988976, 32.528564, 20.410311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785690, 32.871887, 20.381937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058024, -0.116300, -0.991518,
		-0.859276, -0.499784, 0.108907,
		-0.508210, 0.858307, -0.070934,
		35.633228, 33.129379, 20.360657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340332, 32.348053, 20.079069>,  <35.988976, 32.528564, 20.410311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340332, 32.348053, 20.079069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.417755, 32.737465, 20.030437>,  <35.464211, 32.971111, 20.001259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.417755, 32.737465, 20.030437>,  <35.340332, 32.348053, 20.079069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417755, 32.737465, 20.030437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173329, -0.088040, -0.980921,
		-0.965656, 0.210943, 0.151699,
		0.193562, 0.973526, -0.121579,
		35.475822, 33.029522, 19.993963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848576, 32.611645, 19.682676>,  <35.340332, 32.348053, 20.079069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848576, 32.611645, 19.682676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.158348, 32.857185, 19.621429>,  <35.344212, 33.004509, 19.584681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.158348, 32.857185, 19.621429>,  <34.848576, 32.611645, 19.682676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158348, 32.857185, 19.621429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104295, -0.114841, -0.987894,
		-0.624002, 0.781026, -0.024915,
		0.774432, 0.613849, -0.153118,
		35.390678, 33.041340, 19.575495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645729, 32.918022, 18.998487>,  <34.848576, 32.611645, 19.682676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645729, 32.918022, 18.998487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.024845, 33.016037, 19.080122>,  <35.252316, 33.074844, 19.129103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.024845, 33.016037, 19.080122>,  <34.645729, 32.918022, 18.998487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024845, 33.016037, 19.080122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189267, 0.082841, -0.978425,
		-0.256658, 0.965968, 0.032138,
		0.947789, 0.245038, 0.204088,
		35.309181, 33.089550, 19.141348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355042, 33.673962, 19.077595>,  <34.645729, 32.918022, 18.998487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355042, 33.673962, 19.077595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.034584, 33.872356, 18.943632>,  <33.842308, 33.991394, 18.863255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.034584, 33.872356, 18.943632>,  <34.355042, 33.673962, 19.077595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034584, 33.872356, 18.943632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198050, 0.308352, 0.930427,
		0.564747, 0.811737, -0.148806,
		-0.801147, 0.495985, -0.334906,
		33.794239, 34.021152, 18.843161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487926, 34.330765, 19.216616>,  <34.355042, 33.673962, 19.077595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487926, 34.330765, 19.216616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.094810, 34.257092, 19.211006>,  <33.858940, 34.212887, 19.207640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.094810, 34.257092, 19.211006>,  <34.487926, 34.330765, 19.216616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094810, 34.257092, 19.211006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097074, 0.450407, 0.887530,
		-0.157151, 0.873619, -0.460536,
		-0.982792, -0.184182, -0.014024,
		33.799973, 34.201836, 19.206799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184692, 34.984318, 19.438286>,  <34.487926, 34.330765, 19.216616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184692, 34.984318, 19.438286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.858768, 34.759804, 19.496313>,  <33.663216, 34.625095, 19.531130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.858768, 34.759804, 19.496313>,  <34.184692, 34.984318, 19.438286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858768, 34.759804, 19.496313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135779, 0.428040, 0.893502,
		-0.563605, 0.708336, -0.424982,
		-0.814809, -0.561286, 0.145068,
		33.614326, 34.591419, 19.539833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609238, 35.493706, 19.601784>,  <34.184692, 34.984318, 19.438286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609238, 35.493706, 19.601784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.502888, 35.131435, 19.733879>,  <33.439079, 34.914074, 19.813137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.502888, 35.131435, 19.733879>,  <33.609238, 35.493706, 19.601784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502888, 35.131435, 19.733879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339181, 0.408551, 0.847374,
		-0.902368, 0.113283, -0.415811,
		-0.265873, -0.905678, 0.330240,
		33.423126, 34.859734, 19.832951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997562, 35.596748, 19.920076>,  <33.609238, 35.493706, 19.601784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997562, 35.596748, 19.920076> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.104427, 35.247746, 20.083714>,  <33.168545, 35.038345, 20.181896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.104427, 35.247746, 20.083714>,  <32.997562, 35.596748, 19.920076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104427, 35.247746, 20.083714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401730, 0.285034, 0.870269,
		-0.875921, -0.396849, -0.274361,
		0.267164, -0.872506, 0.409093,
		33.184578, 34.985992, 20.206442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394238, 35.183125, 20.109484>,  <32.997562, 35.596748, 19.920076>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394238, 35.183125, 20.109484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.701805, 35.058937, 20.333046>,  <32.886345, 34.984425, 20.467184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.701805, 35.058937, 20.333046>,  <32.394238, 35.183125, 20.109484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701805, 35.058937, 20.333046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505670, 0.239618, 0.828783,
		-0.391238, -0.919886, 0.027249,
		0.768915, -0.310473, 0.558907,
		32.932480, 34.965794, 20.500717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046600, 34.793083, 20.611488>,  <32.394238, 35.183125, 20.109484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046600, 34.793083, 20.611488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.402977, 34.828659, 20.789618>,  <32.616802, 34.850006, 20.896494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.402977, 34.828659, 20.789618>,  <32.046600, 34.793083, 20.611488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402977, 34.828659, 20.789618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453967, 0.149359, 0.878411,
		0.011614, -0.984775, 0.173446,
		0.890943, 0.088941, 0.445321,
		32.670261, 34.855339, 20.923214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963381, 34.539032, 21.292892>,  <32.046600, 34.793083, 20.611488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963381, 34.539032, 21.292892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.304253, 34.745605, 21.326569>,  <32.508774, 34.869549, 21.346775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.304253, 34.745605, 21.326569>,  <31.963381, 34.539032, 21.292892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304253, 34.745605, 21.326569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258680, 0.275938, 0.925712,
		0.454838, -0.810650, 0.368739,
		0.852178, 0.516435, 0.084192,
		32.559906, 34.900536, 21.351826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352127, 34.391121, 21.895346>,  <31.963381, 34.539032, 21.292892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352127, 34.391121, 21.895346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.421577, 34.771156, 21.791658>,  <32.463249, 34.999176, 21.729446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.421577, 34.771156, 21.791658>,  <32.352127, 34.391121, 21.895346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421577, 34.771156, 21.791658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462199, 0.311039, 0.830438,
		0.869612, -0.024378, 0.493133,
		0.173628, 0.950084, -0.259216,
		32.473667, 35.056183, 21.713894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662331, 34.684429, 22.412922>,  <32.352127, 34.391121, 21.895346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662331, 34.684429, 22.412922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.523197, 35.011875, 22.230110>,  <32.439716, 35.208344, 22.120422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.523197, 35.011875, 22.230110>,  <32.662331, 34.684429, 22.412922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523197, 35.011875, 22.230110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355166, 0.336089, 0.872297,
		0.867680, 0.465736, 0.173842,
		-0.347834, 0.818617, -0.457031,
		32.418846, 35.257462, 22.093000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779224, 35.269653, 22.928869>,  <32.662331, 34.684429, 22.412922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779224, 35.269653, 22.928869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.497547, 35.382965, 22.668451>,  <32.328541, 35.450954, 22.512201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.497547, 35.382965, 22.668451>,  <32.779224, 35.269653, 22.928869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497547, 35.382965, 22.668451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490087, 0.469536, 0.734405,
		0.513733, 0.836233, -0.191812,
		-0.704197, 0.283284, -0.651043,
		32.286289, 35.467949, 22.473139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565990, 35.846088, 23.251381>,  <32.779224, 35.269653, 22.928869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565990, 35.846088, 23.251381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.284348, 35.727776, 22.993156>,  <32.115364, 35.656788, 22.838223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.284348, 35.727776, 22.993156>,  <32.565990, 35.846088, 23.251381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284348, 35.727776, 22.993156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709804, 0.319319, 0.627864,
		0.020428, 0.900303, -0.434783,
		-0.704103, -0.295785, -0.645562,
		32.073116, 35.639042, 22.799488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073841, 36.311241, 23.310724>,  <32.565990, 35.846088, 23.251381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073841, 36.311241, 23.310724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.882618, 36.001736, 23.144470>,  <31.767883, 35.816032, 23.044718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.882618, 36.001736, 23.144470>,  <32.073841, 36.311241, 23.310724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882618, 36.001736, 23.144470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782146, 0.159718, 0.602277,
		-0.399634, 0.613012, -0.681548,
		-0.478059, -0.773761, -0.415636,
		31.739201, 35.769608, 23.019779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416019, 36.637875, 23.203472>,  <32.073841, 36.311241, 23.310724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416019, 36.637875, 23.203472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.405088, 36.239193, 23.234047>,  <31.398529, 35.999985, 23.252392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.405088, 36.239193, 23.234047>,  <31.416019, 36.637875, 23.203472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405088, 36.239193, 23.234047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657974, 0.075499, 0.749246,
		-0.752544, -0.029816, -0.657866,
		-0.027328, -0.996700, 0.076435,
		31.396891, 35.940182, 23.256977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.543978, 31.831600, 18.146793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.730608, 31.499029, 18.267483>,  <31.842587, 31.299486, 18.339897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.730608, 31.499029, 18.267483>,  <31.543978, 31.831600, 18.146793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730608, 31.499029, 18.267483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339613, -0.146581, -0.929073,
		0.816684, 0.535951, 0.213973,
		0.466573, -0.831427, 0.301726,
		31.870581, 31.249601, 18.358000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352482, 31.883663, 17.991037>,  <31.543978, 31.831600, 18.146793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352482, 31.883663, 17.991037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.269928, 31.495663, 18.042419>,  <32.220398, 31.262861, 18.073250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.269928, 31.495663, 18.042419>,  <32.352482, 31.883663, 17.991037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269928, 31.495663, 18.042419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460949, -0.212186, -0.861686,
		0.863095, -0.118625, 0.490913,
		-0.206383, -0.970003, 0.128457,
		32.208012, 31.204662, 18.080956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990040, 31.552801, 17.838263>,  <32.352482, 31.883663, 17.991037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990040, 31.552801, 17.838263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.706623, 31.274343, 17.792042>,  <32.536575, 31.107269, 17.764309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.706623, 31.274343, 17.792042>,  <32.990040, 31.552801, 17.838263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706623, 31.274343, 17.792042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377289, -0.235332, -0.895696,
		0.596342, -0.678232, 0.429390,
		-0.708540, -0.696146, -0.115551,
		32.494061, 31.065500, 17.757376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302876, 31.060280, 17.470177>,  <32.990040, 31.552801, 17.838263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302876, 31.060280, 17.470177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.911411, 30.991989, 17.424421>,  <32.676533, 30.951014, 17.396969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.911411, 30.991989, 17.424421>,  <33.302876, 31.060280, 17.470177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911411, 30.991989, 17.424421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155169, -0.248941, -0.956008,
		0.134741, -0.953352, 0.270119,
		-0.978656, -0.170728, -0.114388,
		32.617813, 30.940771, 17.390104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274742, 30.486450, 16.989870>,  <33.302876, 31.060280, 17.470177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274742, 30.486450, 16.989870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.890778, 30.596178, 16.966810>,  <32.660400, 30.662014, 16.952974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.890778, 30.596178, 16.966810>,  <33.274742, 30.486450, 16.989870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890778, 30.596178, 16.966810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010083, -0.239327, -0.970887,
		-0.280134, -0.931380, 0.232498,
		-0.959908, 0.274323, -0.057653,
		32.602806, 30.678474, 16.949514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002560, 30.036221, 16.550529>,  <33.274742, 30.486450, 16.989870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002560, 30.036221, 16.550529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.750866, 30.346876, 16.538557>,  <32.599850, 30.533270, 16.531374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.750866, 30.346876, 16.538557>,  <33.002560, 30.036221, 16.550529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750866, 30.346876, 16.538557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106302, -0.124148, -0.986553,
		-0.769911, -0.617592, 0.160676,
		-0.629235, 0.776638, -0.029932,
		32.562096, 30.579868, 16.529577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472656, 29.789066, 16.159010>,  <33.002560, 30.036221, 16.550529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472656, 29.789066, 16.159010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.442863, 30.185820, 16.117788>,  <32.424988, 30.423872, 16.093056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.442863, 30.185820, 16.117788>,  <32.472656, 29.789066, 16.159010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442863, 30.185820, 16.117788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051525, -0.107029, -0.992920,
		-0.995890, -0.068648, 0.059079,
		-0.074485, 0.991883, -0.103052,
		32.420517, 30.483385, 16.086872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049465, 29.823233, 15.593195>,  <32.472656, 29.789066, 16.159010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049465, 29.823233, 15.593195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.212746, 30.187344, 15.620811>,  <32.310715, 30.405811, 15.637380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.212746, 30.187344, 15.620811>,  <32.049465, 29.823233, 15.593195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212746, 30.187344, 15.620811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160162, 0.145865, -0.976254,
		-0.898734, 0.387447, 0.205334,
		0.408198, 0.910279, 0.069039,
		32.335205, 30.460428, 15.641522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590866, 30.249462, 15.321261>,  <32.049465, 29.823233, 15.593195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590866, 30.249462, 15.321261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.945032, 30.430696, 15.279778>,  <32.157532, 30.539436, 15.254889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.945032, 30.430696, 15.279778>,  <31.590866, 30.249462, 15.321261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945032, 30.430696, 15.279778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205763, 0.182017, -0.961526,
		-0.416777, 0.872688, 0.254389,
		0.885414, 0.453085, -0.103707,
		32.210655, 30.566622, 15.248667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433767, 30.972572, 15.068737>,  <31.590866, 30.249462, 15.321261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433767, 30.972572, 15.068737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.806358, 30.860723, 14.975649>,  <32.029915, 30.793613, 14.919796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.806358, 30.860723, 14.975649>,  <31.433767, 30.972572, 15.068737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806358, 30.860723, 14.975649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197022, 0.150021, -0.968853,
		0.305826, 0.948317, 0.084649,
		0.931479, -0.279622, -0.232719,
		32.085800, 30.776836, 14.905833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512581, 31.451389, 14.599383>,  <31.433767, 30.972572, 15.068737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512581, 31.451389, 14.599383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.824095, 31.207420, 14.540744>,  <32.011002, 31.061039, 14.505560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.824095, 31.207420, 14.540744>,  <31.512581, 31.451389, 14.599383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824095, 31.207420, 14.540744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040375, 0.184478, -0.982007,
		0.625992, 0.770690, 0.119043,
		0.778783, -0.609922, -0.146599,
		32.057732, 31.024445, 14.496764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972549, 31.859451, 14.293510>,  <31.512581, 31.451389, 14.599383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972549, 31.859451, 14.293510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.067322, 31.483219, 14.196209>,  <32.124184, 31.257481, 14.137828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.067322, 31.483219, 14.196209>,  <31.972549, 31.859451, 14.293510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067322, 31.483219, 14.196209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160370, 0.209083, -0.964658,
		0.958199, 0.267569, -0.101303,
		0.236932, -0.940580, -0.243253,
		32.138401, 31.201046, 14.123233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426502, 31.873495, 13.687527>,  <31.972549, 31.859451, 14.293510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426502, 31.873495, 13.687527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.229847, 31.525278, 13.695999>,  <32.111855, 31.316349, 13.701082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.229847, 31.525278, 13.695999>,  <32.426502, 31.873495, 13.687527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229847, 31.525278, 13.695999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262426, 0.124925, -0.956831,
		0.830315, -0.475974, -0.289871,
		-0.491639, -0.870541, 0.021181,
		32.082355, 31.264116, 13.702353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135696, 31.943111, 13.512379>,  <32.426502, 31.873495, 13.687527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135696, 31.943111, 13.512379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091335, 31.551508, 13.443974>,  <33.064720, 31.316545, 13.402932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091335, 31.551508, 13.443974>,  <33.135696, 31.943111, 13.512379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091335, 31.551508, 13.443974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829216, 0.186001, -0.527072,
		0.547816, 0.083352, -0.832437,
		-0.110901, -0.979008, -0.171011,
		33.058064, 31.257805, 13.392672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800270, 32.489552, 13.281296>,  <33.135696, 31.943111, 13.512379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800270, 32.489552, 13.281296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.166561, 32.646709, 13.314939>,  <33.386337, 32.741005, 13.335126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.166561, 32.646709, 13.314939>,  <32.800270, 32.489552, 13.281296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166561, 32.646709, 13.314939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249025, 0.390703, 0.886193,
		0.315312, -0.832461, 0.455618,
		0.915732, 0.392888, 0.084110,
		33.441280, 32.764576, 13.340172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907234, 32.369362, 14.068268>,  <32.800270, 32.489552, 13.281296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907234, 32.369362, 14.068268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.206017, 32.621452, 13.983528>,  <33.385284, 32.772705, 13.932684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.206017, 32.621452, 13.983528>,  <32.907234, 32.369362, 14.068268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206017, 32.621452, 13.983528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035683, 0.280174, 0.959286,
		0.663918, -0.724102, 0.186789,
		0.746954, 0.630222, -0.211850,
		33.430103, 32.810520, 13.919973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444893, 32.300190, 14.527267>,  <32.907234, 32.369362, 14.068268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444893, 32.300190, 14.527267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481583, 32.672768, 14.386415>,  <33.503597, 32.896313, 14.301903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.481583, 32.672768, 14.386415>,  <33.444893, 32.300190, 14.527267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481583, 32.672768, 14.386415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105331, 0.342565, 0.933571,
		0.990198, -0.122723, -0.066688,
		0.091726, 0.931444, -0.352133,
		33.509102, 32.952202, 14.280774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055370, 32.616081, 14.759148>,  <33.444893, 32.300190, 14.527267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055370, 32.616081, 14.759148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.817493, 32.933804, 14.709469>,  <33.674767, 33.124435, 14.679662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.817493, 32.933804, 14.709469>,  <34.055370, 32.616081, 14.759148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817493, 32.933804, 14.709469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381617, 0.414867, 0.825986,
		0.707608, 0.443812, -0.549838,
		-0.594692, 0.794302, -0.124198,
		33.639084, 33.172092, 14.672210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478355, 33.099899, 14.987175>,  <34.055370, 32.616081, 14.759148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478355, 33.099899, 14.987175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.104870, 33.243015, 14.982011>,  <33.880779, 33.328884, 14.978912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.104870, 33.243015, 14.982011>,  <34.478355, 33.099899, 14.987175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104870, 33.243015, 14.982011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092389, 0.275633, 0.956813,
		0.345894, 0.892197, -0.290418,
		-0.933714, 0.357787, -0.012911,
		33.824757, 33.350349, 14.978138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561146, 33.703655, 15.280461>,  <34.478355, 33.099899, 14.987175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561146, 33.703655, 15.280461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174534, 33.606834, 15.314462>,  <33.942566, 33.548744, 15.334862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174534, 33.606834, 15.314462>,  <34.561146, 33.703655, 15.280461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174534, 33.606834, 15.314462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080251, 0.599977, 0.795982,
		-0.243666, 0.762522, -0.599323,
		-0.966533, -0.242050, 0.085000,
		33.884575, 33.534218, 15.339962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384426, 34.430706, 15.462690>,  <34.561146, 33.703655, 15.280461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384426, 34.430706, 15.462690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.111706, 34.154610, 15.559611>,  <33.948074, 33.988953, 15.617764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.111706, 34.154610, 15.559611>,  <34.384426, 34.430706, 15.462690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111706, 34.154610, 15.559611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153121, 0.458543, 0.875381,
		-0.715331, 0.559736, -0.418326,
		-0.681803, -0.690242, 0.242303,
		33.907166, 33.947536, 15.632302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823460, 34.787388, 15.768695>,  <34.384426, 34.430706, 15.462690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823460, 34.787388, 15.768695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.722820, 34.415310, 15.875609>,  <33.662437, 34.192062, 15.939758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.722820, 34.415310, 15.875609>,  <33.823460, 34.787388, 15.768695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722820, 34.415310, 15.875609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237577, 0.327078, 0.914646,
		-0.938220, 0.166619, -0.303283,
		-0.251595, -0.930192, 0.267287,
		33.647343, 34.136253, 15.955795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254562, 34.884277, 16.208729>,  <33.823460, 34.787388, 15.768695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254562, 34.884277, 16.208729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418968, 34.531311, 16.300308>,  <33.517612, 34.319530, 16.355255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418968, 34.531311, 16.300308>,  <33.254562, 34.884277, 16.208729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418968, 34.531311, 16.300308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167776, 0.173634, 0.970413,
		-0.896058, -0.437263, -0.076683,
		0.411011, -0.882413, 0.228948,
		33.542271, 34.266586, 16.368992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827793, 34.525402, 16.675455>,  <33.254562, 34.884277, 16.208729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827793, 34.525402, 16.675455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.168282, 34.318466, 16.710726>,  <33.372574, 34.194305, 16.731888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.168282, 34.318466, 16.710726>,  <32.827793, 34.525402, 16.675455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168282, 34.318466, 16.710726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003091, 0.163078, 0.986608,
		-0.524794, -0.840097, 0.137217,
		0.851224, -0.517342, 0.088179,
		33.423649, 34.163265, 16.737179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693390, 33.857662, 17.124069>,  <32.827793, 34.525402, 16.675455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693390, 33.857662, 17.124069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.071400, 33.987606, 17.139067>,  <33.298206, 34.065571, 17.148066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.071400, 33.987606, 17.139067>,  <32.693390, 33.857662, 17.124069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071400, 33.987606, 17.139067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075731, 0.105864, 0.991493,
		0.318123, -0.939820, 0.124645,
		0.945020, 0.324856, 0.037496,
		33.354904, 34.085064, 17.150316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914967, 33.512646, 17.710321>,  <32.693390, 33.857662, 17.124069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914967, 33.512646, 17.710321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.209415, 33.778790, 17.660639>,  <33.386086, 33.938477, 17.630829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.209415, 33.778790, 17.660639>,  <32.914967, 33.512646, 17.710321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209415, 33.778790, 17.660639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073800, 0.103514, 0.991886,
		0.672814, -0.739315, 0.027096,
		0.736121, 0.665356, -0.124207,
		33.430252, 33.978397, 17.623377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520752, 33.212612, 18.001978>,  <32.914967, 33.512646, 17.710321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520752, 33.212612, 18.001978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.564590, 33.610203, 18.000906>,  <33.590893, 33.848755, 18.000263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.564590, 33.610203, 18.000906>,  <33.520752, 33.212612, 18.001978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564590, 33.610203, 18.000906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042730, -0.002016, 0.999085,
		0.993058, -0.109608, -0.042693,
		0.109594, 0.993973, -0.002682,
		33.597469, 33.908394, 18.000101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061161, 33.336025, 18.472071>,  <33.520752, 33.212612, 18.001978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061161, 33.336025, 18.472071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.876804, 33.689007, 18.434437>,  <33.766190, 33.900795, 18.411856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.876804, 33.689007, 18.434437>,  <34.061161, 33.336025, 18.472071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876804, 33.689007, 18.434437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030980, 0.089955, 0.995464,
		0.886914, 0.461720, -0.014122,
		-0.460896, 0.882453, -0.094086,
		33.738537, 33.953743, 18.406212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811764, 33.363567, 18.395678>,  <34.061161, 33.336025, 18.472071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811764, 33.363567, 18.395678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.135250, 33.212482, 18.576040>,  <35.329342, 33.121834, 18.684258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.135250, 33.212482, 18.576040>,  <34.811764, 33.363567, 18.395678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135250, 33.212482, 18.576040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368440, -0.272277, -0.888885,
		0.458512, 0.884986, -0.081031,
		0.808714, -0.377710, 0.450907,
		35.377865, 33.099171, 18.711311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513290, 33.681702, 18.047031>,  <34.811764, 33.363567, 18.395678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513290, 33.681702, 18.047031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603722, 33.336460, 18.227671>,  <35.657982, 33.129314, 18.336054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603722, 33.336460, 18.227671>,  <35.513290, 33.681702, 18.047031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603722, 33.336460, 18.227671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300271, -0.379278, -0.875206,
		0.926674, 0.333468, 0.173418,
		0.226079, -0.863103, 0.451598,
		35.671547, 33.077530, 18.363150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097778, 33.524773, 17.672440>,  <35.513290, 33.681702, 18.047031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097778, 33.524773, 17.672440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.018711, 33.176342, 17.852287>,  <35.971272, 32.967285, 17.960196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.018711, 33.176342, 17.852287>,  <36.097778, 33.524773, 17.672440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018711, 33.176342, 17.852287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384864, -0.490802, -0.781661,
		0.901557, 0.018528, 0.432263,
		-0.197673, -0.871074, 0.449617,
		35.959408, 32.915020, 17.987173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745331, 33.008129, 17.489115>,  <36.097778, 33.524773, 17.672440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745331, 33.008129, 17.489115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423054, 32.798138, 17.598846>,  <36.229687, 32.672142, 17.664684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.423054, 32.798138, 17.598846>,  <36.745331, 33.008129, 17.489115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423054, 32.798138, 17.598846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082181, -0.557724, -0.825948,
		0.586603, -0.642917, 0.492498,
		-0.805694, -0.524978, 0.274327,
		36.181347, 32.640644, 17.681145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951065, 32.304810, 17.409178>,  <36.745331, 33.008129, 17.489115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951065, 32.304810, 17.409178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.551464, 32.287510, 17.404766>,  <36.311703, 32.277130, 17.402119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.551464, 32.287510, 17.404766>,  <36.951065, 32.304810, 17.409178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551464, 32.287510, 17.404766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035081, -0.607992, -0.793167,
		0.027601, -0.792764, 0.608904,
		-0.999003, -0.043253, -0.011030,
		36.251762, 32.274532, 17.401457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792572, 31.653130, 17.273998>,  <36.951065, 32.304810, 17.409178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792572, 31.653130, 17.273998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.442379, 31.818258, 17.173519>,  <36.232262, 31.917336, 17.113232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.442379, 31.818258, 17.173519>,  <36.792572, 31.653130, 17.273998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442379, 31.818258, 17.173519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049922, -0.439773, -0.896721,
		-0.480661, -0.797605, 0.364405,
		-0.875485, 0.412827, -0.251200,
		36.179733, 31.942104, 17.098160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457966, 31.135887, 16.973238>,  <36.792572, 31.653130, 17.273998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457966, 31.135887, 16.973238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.295532, 31.470114, 16.825226>,  <36.198074, 31.670650, 16.736418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.295532, 31.470114, 16.825226>,  <36.457966, 31.135887, 16.973238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295532, 31.470114, 16.825226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146219, -0.340294, -0.928881,
		-0.902064, -0.431306, 0.016011,
		-0.406080, 0.835569, -0.370032,
		36.173710, 31.720785, 16.714216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360180, 30.351221, 16.915653>,  <36.457966, 31.135887, 16.973238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360180, 30.351221, 16.915653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.615166, 30.046690, 16.963020>,  <36.768158, 29.863972, 16.991440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.615166, 30.046690, 16.963020>,  <36.360180, 30.351221, 16.915653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615166, 30.046690, 16.963020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089815, 0.226069, 0.969962,
		-0.765228, -0.607680, 0.212489,
		0.637463, -0.761327, 0.118416,
		36.806404, 29.818293, 16.998545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087948, 29.834795, 17.418297>,  <36.360180, 30.351221, 16.915653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087948, 29.834795, 17.418297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.487236, 29.812532, 17.409819>,  <36.726810, 29.799175, 17.404732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.487236, 29.812532, 17.409819>,  <36.087948, 29.834795, 17.418297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487236, 29.812532, 17.409819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025454, 0.076969, 0.996708,
		-0.053844, -0.995478, 0.078250,
		0.998225, -0.055658, -0.021195,
		36.786705, 29.795835, 17.403460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247417, 29.196522, 17.899035>,  <36.087948, 29.834795, 17.418297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247417, 29.196522, 17.899035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.573650, 29.425961, 17.868525>,  <36.769390, 29.563623, 17.850220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.573650, 29.425961, 17.868525>,  <36.247417, 29.196522, 17.899035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573650, 29.425961, 17.868525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162870, -0.101071, 0.981457,
		0.555254, -0.812877, -0.175853,
		0.815578, 0.573599, -0.076274,
		36.818325, 29.598040, 17.845642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598484, 29.000385, 18.465952>,  <36.247417, 29.196522, 17.899035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598484, 29.000385, 18.465952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.804272, 29.335880, 18.394583>,  <36.927746, 29.537178, 18.351761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.804272, 29.335880, 18.394583>,  <36.598484, 29.000385, 18.465952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804272, 29.335880, 18.394583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370062, -0.029468, 0.928539,
		0.773544, -0.543736, -0.325547,
		0.514473, 0.838739, -0.178421,
		36.958614, 29.587502, 18.341057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287827, 28.867769, 18.692614>,  <36.598484, 29.000385, 18.465952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287827, 28.867769, 18.692614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.251953, 29.265743, 18.674475>,  <37.230431, 29.504528, 18.663591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.251953, 29.265743, 18.674475>,  <37.287827, 28.867769, 18.692614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251953, 29.265743, 18.674475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380549, 0.076310, 0.921607,
		0.920402, 0.065397, -0.385466,
		-0.089685, 0.994937, -0.045349,
		37.225048, 29.564224, 18.660870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775620, 29.069126, 19.169603>,  <37.287827, 28.867769, 18.692614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775620, 29.069126, 19.169603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.531223, 29.383410, 19.130924>,  <37.384586, 29.571980, 19.107718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.531223, 29.383410, 19.130924>,  <37.775620, 29.069126, 19.169603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531223, 29.383410, 19.130924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095956, 0.194754, 0.976147,
		0.785797, 0.587142, -0.194387,
		-0.610995, 0.785706, -0.096697,
		37.347923, 29.619122, 19.101915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001987, 29.557835, 19.543669>,  <37.775620, 29.069126, 19.169603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001987, 29.557835, 19.543669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.621391, 29.679808, 19.527222>,  <37.393036, 29.752991, 19.517353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.621391, 29.679808, 19.527222>,  <38.001987, 29.557835, 19.543669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621391, 29.679808, 19.527222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105575, 0.449064, 0.887240,
		0.289012, 0.839856, -0.459472,
		-0.951486, 0.304932, -0.041118,
		37.335945, 29.771288, 19.514887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.992123, 28.379673, 14.262213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.658237, 28.599827, 14.254860>,  <33.457909, 28.731918, 14.250448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.658237, 28.599827, 14.254860>,  <33.992123, 28.379673, 14.262213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658237, 28.599827, 14.254860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266791, -0.374964, 0.887820,
		0.481749, 0.745976, 0.459823,
		-0.834710, 0.550383, -0.018381,
		33.407825, 28.764942, 14.249346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974041, 28.836195, 14.869689>,  <33.992123, 28.379673, 14.262213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974041, 28.836195, 14.869689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.590702, 28.790192, 14.765122>,  <33.360699, 28.762590, 14.702382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.590702, 28.790192, 14.765122>,  <33.974041, 28.836195, 14.869689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590702, 28.790192, 14.765122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224934, -0.260078, 0.939023,
		-0.175983, 0.958714, 0.223376,
		-0.958350, -0.115007, -0.261417,
		33.303196, 28.755690, 14.686697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568626, 29.139004, 15.389985>,  <33.974041, 28.836195, 14.869689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568626, 29.139004, 15.389985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.308315, 28.879749, 15.231790>,  <33.152130, 28.724195, 15.136872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.308315, 28.879749, 15.231790>,  <33.568626, 29.139004, 15.389985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308315, 28.879749, 15.231790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197212, -0.358713, 0.912377,
		-0.733213, 0.671746, 0.105620,
		-0.650773, -0.648137, -0.395490,
		33.113083, 28.685308, 15.113143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042946, 29.165461, 15.910865>,  <33.568626, 29.139004, 15.389985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042946, 29.165461, 15.910865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.916962, 28.861370, 15.683584>,  <32.841370, 28.678915, 15.547216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.916962, 28.861370, 15.683584>,  <33.042946, 29.165461, 15.910865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916962, 28.861370, 15.683584> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490388, -0.382216, 0.783218,
		-0.812599, 0.525324, -0.252422,
		-0.314964, -0.760227, -0.568201,
		32.822472, 28.633303, 15.513124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226208, 29.045656, 15.986561>,  <33.042946, 29.165461, 15.910865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226208, 29.045656, 15.986561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.386059, 28.696775, 15.873731>,  <32.481968, 28.487448, 15.806033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.386059, 28.696775, 15.873731>,  <32.226208, 29.045656, 15.986561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386059, 28.696775, 15.873731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487332, -0.462769, 0.740508,
		-0.776407, -0.158460, -0.609985,
		0.399624, -0.872201, -0.282074,
		32.505947, 28.435116, 15.789108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667334, 28.599566, 16.136694>,  <32.226208, 29.045656, 15.986561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667334, 28.599566, 16.136694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.000420, 28.386814, 16.075127>,  <32.200272, 28.259163, 16.038187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.000420, 28.386814, 16.075127>,  <31.667334, 28.599566, 16.136694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000420, 28.386814, 16.075127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209086, -0.559453, 0.802057,
		-0.512704, -0.635705, -0.577074,
		0.832717, -0.531876, -0.153917,
		32.250233, 28.227251, 16.028952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496389, 27.938702, 16.308775>,  <31.667334, 28.599566, 16.136694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496389, 27.938702, 16.308775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.893728, 27.957825, 16.350687>,  <32.132130, 27.969299, 16.375834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.893728, 27.957825, 16.350687>,  <31.496389, 27.938702, 16.308775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893728, 27.957825, 16.350687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079257, -0.376330, 0.923089,
		0.083564, -0.925251, -0.370037,
		0.993345, 0.047809, 0.104780,
		32.191730, 27.972168, 16.382120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632994, 27.285791, 16.459084>,  <31.496389, 27.938702, 16.308775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632994, 27.285791, 16.459084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.951365, 27.502508, 16.567131>,  <32.142387, 27.632538, 16.631960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.951365, 27.502508, 16.567131>,  <31.632994, 27.285791, 16.459084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951365, 27.502508, 16.567131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072086, -0.358196, 0.930859,
		0.601088, -0.760366, -0.246042,
		0.795925, 0.541792, 0.270119,
		32.190144, 27.665045, 16.648167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968943, 26.864115, 16.916035>,  <31.632994, 27.285791, 16.459084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968943, 26.864115, 16.916035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.086540, 27.238924, 16.991455>,  <32.157101, 27.463810, 17.036707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.086540, 27.238924, 16.991455>,  <31.968943, 26.864115, 16.916035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086540, 27.238924, 16.991455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030912, -0.187843, 0.981713,
		0.955307, -0.294447, -0.026259,
		0.293995, 0.937025, 0.188550,
		32.174740, 27.520031, 17.048019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550529, 26.799444, 17.386923>,  <31.968943, 26.864115, 16.916035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550529, 26.799444, 17.386923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.426609, 27.176275, 17.438326>,  <32.352257, 27.402374, 17.469168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.426609, 27.176275, 17.438326>,  <32.550529, 26.799444, 17.386923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426609, 27.176275, 17.438326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193776, -0.069761, 0.978562,
		0.930845, 0.328063, -0.160940,
		-0.309802, 0.942077, 0.128507,
		32.333668, 27.458899, 17.476877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906139, 27.025415, 18.017303>,  <32.550529, 26.799444, 17.386923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906139, 27.025415, 18.017303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.642746, 27.322742, 17.970184>,  <32.484711, 27.501139, 17.941912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.642746, 27.322742, 17.970184>,  <32.906139, 27.025415, 18.017303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642746, 27.322742, 17.970184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033859, 0.127105, 0.991311,
		0.751834, 0.656750, -0.058528,
		-0.658483, 0.743320, -0.117799,
		32.445202, 27.545738, 17.934845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198620, 27.680992, 18.367668>,  <32.906139, 27.025415, 18.017303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198620, 27.680992, 18.367668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.799332, 27.657743, 18.373013>,  <32.559757, 27.643793, 18.376219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.799332, 27.657743, 18.373013>,  <33.198620, 27.680992, 18.367668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799332, 27.657743, 18.373013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005715, 0.129796, 0.991524,
		-0.059366, 0.989836, -0.129233,
		-0.998220, -0.058124, 0.013362,
		32.499866, 27.640306, 18.377022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798927, 28.115225, 18.272205>,  <33.198620, 27.680992, 18.367668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798927, 28.115225, 18.272205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.143696, 28.139030, 18.473621>,  <34.350555, 28.153315, 18.594471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.143696, 28.139030, 18.473621>,  <33.798927, 28.115225, 18.272205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143696, 28.139030, 18.473621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506998, -0.087620, -0.857482,
		-0.006913, 0.994374, -0.105696,
		0.861919, 0.059515, 0.503541,
		34.402271, 28.156885, 18.624683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254154, 28.590231, 17.958504>,  <33.798927, 28.115225, 18.272205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254154, 28.590231, 17.958504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.491974, 28.343494, 18.164810>,  <34.634666, 28.195452, 18.288593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.491974, 28.343494, 18.164810>,  <34.254154, 28.590231, 17.958504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491974, 28.343494, 18.164810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413034, -0.316051, -0.854116,
		0.689863, 0.720845, 0.066868,
		0.594552, -0.616842, 0.515765,
		34.670338, 28.158442, 18.319540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901722, 28.756025, 17.835938>,  <34.254154, 28.590231, 17.958504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901722, 28.756025, 17.835938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.923134, 28.377405, 17.963173>,  <34.935982, 28.150234, 18.039515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.923134, 28.377405, 17.963173>,  <34.901722, 28.756025, 17.835938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923134, 28.377405, 17.963173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525159, -0.244250, -0.815199,
		0.849319, 0.210680, 0.484015,
		0.053526, -0.946550, 0.318087,
		34.939190, 28.093441, 18.058599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553997, 28.588243, 17.712717>,  <34.901722, 28.756025, 17.835938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553997, 28.588243, 17.712717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.388538, 28.227163, 17.760094>,  <35.289261, 28.010515, 17.788521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.388538, 28.227163, 17.760094>,  <35.553997, 28.588243, 17.712717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388538, 28.227163, 17.760094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549398, -0.351231, -0.758155,
		0.725987, -0.248537, 0.641227,
		-0.413649, -0.902699, 0.118443,
		35.264442, 27.956354, 17.795628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005997, 28.125870, 17.423790>,  <35.553997, 28.588243, 17.712717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005997, 28.125870, 17.423790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.680260, 27.893719, 17.424946>,  <35.484818, 27.754429, 17.425640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.680260, 27.893719, 17.424946>,  <36.005997, 28.125870, 17.423790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680260, 27.893719, 17.424946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334735, -0.473733, -0.814573,
		0.474127, -0.662376, 0.580053,
		-0.814344, -0.580376, 0.002889,
		35.435955, 27.719606, 17.425812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176029, 27.402576, 17.394283>,  <36.005997, 28.125870, 17.423790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176029, 27.402576, 17.394283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.804016, 27.446321, 17.253952>,  <35.580807, 27.472569, 17.169754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.804016, 27.446321, 17.253952>,  <36.176029, 27.402576, 17.394283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.804016, 27.446321, 17.253952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265679, -0.459456, -0.847534,
		-0.253877, -0.881442, 0.398254,
		-0.930033, 0.109362, -0.350826,
		35.525005, 27.479130, 17.148705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023521, 26.776329, 17.254919>,  <36.176029, 27.402576, 17.394283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023521, 26.776329, 17.254919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.762638, 26.988556, 17.038357>,  <35.606106, 27.115892, 16.908419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.762638, 26.988556, 17.038357>,  <36.023521, 26.776329, 17.254919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762638, 26.988556, 17.038357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193124, -0.574353, -0.795501,
		-0.733026, -0.623392, 0.272133,
		-0.652209, 0.530567, -0.541408,
		35.566975, 27.147726, 16.875935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555496, 26.216482, 16.873484>,  <36.023521, 26.776329, 17.254919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555496, 26.216482, 16.873484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.532299, 26.574327, 16.696259>,  <35.518379, 26.789034, 16.589924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.532299, 26.574327, 16.696259>,  <35.555496, 26.216482, 16.873484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532299, 26.574327, 16.696259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064644, -0.439512, -0.895908,
		-0.996222, -0.080597, -0.032343,
		-0.057993, 0.894614, -0.443061,
		35.514900, 26.842712, 16.563339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097668, 26.034184, 16.345537>,  <35.555496, 26.216482, 16.873484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097668, 26.034184, 16.345537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.274433, 26.377556, 16.241375>,  <35.380493, 26.583580, 16.178879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.274433, 26.377556, 16.241375>,  <35.097668, 26.034184, 16.345537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274433, 26.377556, 16.241375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192690, -0.374347, -0.907048,
		-0.876119, 0.350658, -0.330840,
		0.441912, 0.858431, -0.260404,
		35.407005, 26.635084, 16.163254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833977, 26.134403, 15.515939>,  <35.097668, 26.034184, 16.345537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833977, 26.134403, 15.515939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.166973, 26.342165, 15.593067>,  <35.366772, 26.466822, 15.639344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.166973, 26.342165, 15.593067>,  <34.833977, 26.134403, 15.515939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166973, 26.342165, 15.593067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343388, -0.210595, -0.915278,
		-0.434790, 0.828173, -0.353675,
		0.832491, 0.519402, 0.192820,
		35.416721, 26.497986, 15.650913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939278, 26.471083, 14.921386>,  <34.833977, 26.134403, 15.515939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939278, 26.471083, 14.921386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.299561, 26.517239, 15.088912>,  <35.515732, 26.544931, 15.189428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.299561, 26.517239, 15.088912>,  <34.939278, 26.471083, 14.921386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299561, 26.517239, 15.088912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420818, 0.007610, -0.907113,
		-0.107857, 0.993291, -0.041703,
		0.900710, 0.115388, 0.418816,
		35.569775, 26.551855, 15.214557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334457, 27.024752, 14.600381>,  <34.939278, 26.471083, 14.921386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334457, 27.024752, 14.600381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.631573, 26.812542, 14.763752>,  <35.809841, 26.685215, 14.861774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.631573, 26.812542, 14.763752>,  <35.334457, 27.024752, 14.600381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631573, 26.812542, 14.763752> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547554, 0.130288, -0.826565,
		0.385301, 0.837596, 0.387268,
		0.742784, -0.530526, 0.408429,
		35.854408, 26.653383, 14.886281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953899, 27.342911, 14.357316>,  <35.334457, 27.024752, 14.600381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953899, 27.342911, 14.357316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.087559, 26.993391, 14.498634>,  <36.167755, 26.783678, 14.583426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.087559, 26.993391, 14.498634>,  <35.953899, 27.342911, 14.357316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087559, 26.993391, 14.498634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637030, -0.066889, -0.767932,
		0.694651, 0.481661, 0.534287,
		0.334145, -0.873802, 0.353297,
		36.187801, 26.731251, 14.604623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662472, 27.365450, 14.425075>,  <35.953899, 27.342911, 14.357316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662472, 27.365450, 14.425075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.569286, 26.978085, 14.389518>,  <36.513374, 26.745665, 14.368184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.569286, 26.978085, 14.389518>,  <36.662472, 27.365450, 14.425075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569286, 26.978085, 14.389518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621590, -0.077984, -0.779451,
		0.747900, -0.236837, 0.620124,
		-0.232963, -0.968414, -0.088891,
		36.499397, 26.687561, 14.362850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353741, 27.865952, 14.848390>,  <36.662472, 27.365450, 14.425075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353741, 27.865952, 14.848390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.585838, 28.130667, 14.658504>,  <36.725098, 28.289495, 14.544572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.585838, 28.130667, 14.658504>,  <36.353741, 27.865952, 14.848390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585838, 28.130667, 14.658504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297195, 0.370631, 0.879947,
		0.758284, -0.651665, 0.018375,
		0.580242, 0.661789, -0.474716,
		36.759911, 28.329203, 14.516088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040928, 27.809233, 15.150368>,  <36.353741, 27.865952, 14.848390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040928, 27.809233, 15.150368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.989288, 28.168005, 14.981206>,  <36.958305, 28.383268, 14.879709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.989288, 28.168005, 14.981206>,  <37.040928, 27.809233, 15.150368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989288, 28.168005, 14.981206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310806, 0.441584, 0.841667,
		0.941665, -0.022781, -0.335781,
		-0.129101, 0.896930, -0.422905,
		36.950558, 28.437084, 14.854335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583107, 28.213549, 15.531551>,  <37.040928, 27.809233, 15.150368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583107, 28.213549, 15.531551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.346889, 28.499962, 15.382658>,  <37.205158, 28.671810, 15.293322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.346889, 28.499962, 15.382658>,  <37.583107, 28.213549, 15.531551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346889, 28.499962, 15.382658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088290, 0.515808, 0.852143,
		0.802162, 0.470362, -0.367825,
		-0.590543, 0.716032, -0.372233,
		37.169727, 28.714771, 15.270988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900497, 28.846527, 15.734797>,  <37.583107, 28.213549, 15.531551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.900497, 28.846527, 15.734797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.516029, 28.916929, 15.649777>,  <37.285351, 28.959171, 15.598765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.516029, 28.916929, 15.649777>,  <37.900497, 28.846527, 15.734797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516029, 28.916929, 15.649777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090903, 0.525292, 0.846053,
		0.260561, 0.832520, -0.488895,
		-0.961169, 0.176006, -0.212549,
		37.227680, 28.969730, 15.586013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888046, 29.563231, 15.885489>,  <37.900497, 28.846527, 15.734797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888046, 29.563231, 15.885489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.533661, 29.378096, 15.897181>,  <37.321030, 29.267014, 15.904196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.533661, 29.378096, 15.897181>,  <37.888046, 29.563231, 15.885489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533661, 29.378096, 15.897181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243905, 0.518631, 0.819470,
		-0.394442, 0.718889, -0.572376,
		-0.885960, -0.462839, 0.029229,
		37.267872, 29.239244, 15.905950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508427, 30.158089, 16.051609>,  <37.888046, 29.563231, 15.885489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508427, 30.158089, 16.051609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.325291, 29.817526, 16.153976>,  <37.215408, 29.613188, 16.215397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.325291, 29.817526, 16.153976>,  <37.508427, 30.158089, 16.051609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325291, 29.817526, 16.153976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243247, 0.396841, 0.885070,
		-0.855111, 0.342968, -0.388791,
		-0.457839, -0.851405, 0.255917,
		37.187939, 29.562105, 16.230751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795448, 30.347954, 16.306339>,  <37.508427, 30.158089, 16.051609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795448, 30.347954, 16.306339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.886395, 29.984289, 16.445898>,  <36.940960, 29.766090, 16.529633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.886395, 29.984289, 16.445898>,  <36.795448, 30.347954, 16.306339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886395, 29.984289, 16.445898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267556, 0.286170, 0.920065,
		-0.936333, -0.302537, -0.178188,
		0.227362, -0.909163, 0.348896,
		36.954601, 29.711540, 16.550568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265114, 30.895197, 16.336260>,  <36.795448, 30.347954, 16.306339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265114, 30.895197, 16.336260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.248505, 31.294485, 16.319126>,  <36.238541, 31.534058, 16.308846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.248505, 31.294485, 16.319126>,  <36.265114, 30.895197, 16.336260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248505, 31.294485, 16.319126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058077, -0.040385, -0.997495,
		-0.997448, -0.043904, -0.056297,
		-0.041520, 0.998219, -0.042832,
		36.236050, 31.593950, 16.306276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685135, 31.074701, 15.932733>,  <36.265114, 30.895197, 16.336260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685135, 31.074701, 15.932733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.908550, 31.405731, 15.910271>,  <36.042599, 31.604349, 15.896793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.908550, 31.405731, 15.910271>,  <35.685135, 31.074701, 15.932733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908550, 31.405731, 15.910271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083829, -0.011035, -0.996419,
		-0.825231, 0.561247, 0.063211,
		0.558539, 0.827575, -0.056155,
		36.076111, 31.654003, 15.893424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294956, 31.510017, 15.490874>,  <35.685135, 31.074701, 15.932733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294956, 31.510017, 15.490874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.667320, 31.653862, 15.465314>,  <35.890739, 31.740168, 15.449978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.667320, 31.653862, 15.465314>,  <35.294956, 31.510017, 15.490874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667320, 31.653862, 15.465314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128121, 0.157677, -0.979144,
		-0.342034, 0.919684, 0.192857,
		0.930912, 0.359610, -0.063900,
		35.946594, 31.761745, 15.446144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232445, 32.194927, 15.155878>,  <35.294956, 31.510017, 15.490874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232445, 32.194927, 15.155878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.615135, 32.085510, 15.116190>,  <35.844749, 32.019859, 15.092378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.615135, 32.085510, 15.116190>,  <35.232445, 32.194927, 15.155878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615135, 32.085510, 15.116190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040367, 0.212913, -0.976237,
		0.288169, 0.937999, 0.192658,
		0.956728, -0.273544, -0.099219,
		35.902153, 32.003448, 15.086424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591991, 32.656139, 14.671672>,  <35.232445, 32.194927, 15.155878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591991, 32.656139, 14.671672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.825615, 32.331779, 14.657134>,  <35.965790, 32.137165, 14.648412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.825615, 32.331779, 14.657134>,  <35.591991, 32.656139, 14.671672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825615, 32.331779, 14.657134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098885, -0.026639, -0.994742,
		0.805664, 0.584583, -0.095744,
		0.584060, -0.810896, -0.036344,
		36.000832, 32.088512, 14.646231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160290, 32.734192, 14.146371>,  <35.591991, 32.656139, 14.671672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160290, 32.734192, 14.146371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.106052, 32.341320, 14.198441>,  <36.073509, 32.105598, 14.229682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.106052, 32.341320, 14.198441>,  <36.160290, 32.734192, 14.146371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106052, 32.341320, 14.198441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017570, -0.128982, -0.991491,
		0.990609, -0.136724, 0.000232,
		-0.135590, -0.982176, 0.130173,
		36.065376, 32.046669, 14.237493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482071, 32.543274, 13.511568>,  <36.160290, 32.734192, 14.146371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482071, 32.543274, 13.511568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.287354, 32.225319, 13.656444>,  <36.170525, 32.034546, 13.743369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.287354, 32.225319, 13.656444>,  <36.482071, 32.543274, 13.511568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287354, 32.225319, 13.656444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105255, -0.358235, -0.927679,
		0.867154, -0.489709, 0.090719,
		-0.486791, -0.794892, 0.362189,
		36.141315, 31.986851, 13.765100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743038, 32.048786, 13.159180>,  <36.482071, 32.543274, 13.511568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743038, 32.048786, 13.159180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.410400, 31.876963, 13.299991>,  <36.210815, 31.773869, 13.384478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.410400, 31.876963, 13.299991>,  <36.743038, 32.048786, 13.159180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410400, 31.876963, 13.299991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159611, -0.422262, -0.892311,
		0.531948, -0.798232, 0.282590,
		-0.831598, -0.429558, 0.352028,
		36.160919, 31.748095, 13.405599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738079, 31.395376, 12.914494>,  <36.743038, 32.048786, 13.159180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738079, 31.395376, 12.914494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.354595, 31.455233, 13.011224>,  <36.124504, 31.491146, 13.069262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.354595, 31.455233, 13.011224>,  <36.738079, 31.395376, 12.914494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354595, 31.455233, 13.011224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273103, -0.247378, -0.929634,
		-0.079289, -0.957294, 0.278031,
		-0.958712, 0.149641, 0.241825,
		36.066982, 31.500126, 13.083771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.605774, 34.071625, 28.565044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278618, 33.916058, 28.395435>,  <32.082325, 33.822716, 28.293671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278618, 33.916058, 28.395435>,  <32.605774, 34.071625, 28.565044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278618, 33.916058, 28.395435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538609, -0.258327, -0.801977,
		0.202367, -0.884314, 0.420758,
		-0.817892, -0.388917, -0.424023,
		32.033249, 33.799381, 28.268229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801666, 33.425182, 28.336435>,  <32.605774, 34.071625, 28.565044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801666, 33.425182, 28.336435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.486992, 33.572887, 28.138536>,  <32.298187, 33.661510, 28.019798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.486992, 33.572887, 28.138536>,  <32.801666, 33.425182, 28.336435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486992, 33.572887, 28.138536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497655, -0.094931, -0.862164,
		-0.365336, -0.924462, -0.109087,
		-0.786682, 0.369267, -0.494745,
		32.250988, 33.683666, 27.990112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.536648, 32.878292, 27.820749>,  <32.801666, 33.425182, 28.336435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.536648, 32.878292, 27.820749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.454018, 33.250271, 27.699076>,  <32.404442, 33.473457, 27.626072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.454018, 33.250271, 27.699076>,  <32.536648, 32.878292, 27.820749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454018, 33.250271, 27.699076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569998, -0.138307, -0.809922,
		-0.795255, -0.340692, -0.501497,
		-0.206573, 0.929946, -0.304183,
		32.392044, 33.529255, 27.607821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279865, 32.791138, 27.170874>,  <32.536648, 32.878292, 27.820749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279865, 32.791138, 27.170874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399822, 33.172726, 27.170624>,  <32.471794, 33.401680, 27.170473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399822, 33.172726, 27.170624>,  <32.279865, 32.791138, 27.170874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399822, 33.172726, 27.170624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443158, -0.139890, -0.885461,
		-0.844795, 0.265263, -0.464712,
		0.299889, 0.953974, -0.000626,
		32.489788, 33.458920, 27.170437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147430, 32.948498, 26.513720>,  <32.279865, 32.791138, 27.170874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147430, 32.948498, 26.513720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.371712, 33.240234, 26.670525>,  <32.506279, 33.415276, 26.764608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.371712, 33.240234, 26.670525>,  <32.147430, 32.948498, 26.513720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371712, 33.240234, 26.670525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592418, -0.022590, -0.805314,
		-0.578492, 0.683777, -0.444741,
		0.560702, 0.729341, 0.392014,
		32.539921, 33.459038, 26.788128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131336, 33.283966, 25.919567>,  <32.147430, 32.948498, 26.513720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131336, 33.283966, 25.919567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.444965, 33.432209, 26.118715>,  <32.633144, 33.521156, 26.238205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.444965, 33.432209, 26.118715>,  <32.131336, 33.283966, 25.919567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444965, 33.432209, 26.118715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522568, 0.038629, -0.851722,
		-0.334888, 0.927985, -0.163380,
		0.784074, 0.370609, 0.497872,
		32.680187, 33.543392, 26.268076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263138, 33.979897, 25.666861>,  <32.131336, 33.283966, 25.919567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263138, 33.979897, 25.666861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598095, 33.851276, 25.843670>,  <32.799068, 33.774105, 25.949755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598095, 33.851276, 25.843670>,  <32.263138, 33.979897, 25.666861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598095, 33.851276, 25.843670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430992, -0.108953, -0.895754,
		0.336189, 0.940603, 0.047350,
		0.837390, -0.321550, 0.442022,
		32.849312, 33.754810, 25.976276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793205, 34.435162, 25.448250>,  <32.263138, 33.979897, 25.666861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793205, 34.435162, 25.448250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977898, 34.100155, 25.565125>,  <33.088715, 33.899151, 25.635248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977898, 34.100155, 25.565125>,  <32.793205, 34.435162, 25.448250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977898, 34.100155, 25.565125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508136, -0.020251, -0.861039,
		0.727050, 0.546039, 0.416221,
		0.461732, -0.837515, 0.292185,
		33.116417, 33.848900, 25.652781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418354, 34.517441, 25.124516>,  <32.793205, 34.435162, 25.448250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418354, 34.517441, 25.124516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.402668, 34.131912, 25.229973>,  <33.393257, 33.900597, 25.293247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.402668, 34.131912, 25.229973>,  <33.418354, 34.517441, 25.124516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402668, 34.131912, 25.229973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517926, -0.245246, -0.819516,
		0.854526, 0.104409, 0.508807,
		-0.039218, -0.963822, 0.263645,
		33.390903, 33.842766, 25.309067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107464, 34.134499, 25.235857>,  <33.418354, 34.517441, 25.124516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107464, 34.134499, 25.235857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837822, 33.858280, 25.130991>,  <33.676037, 33.692551, 25.068071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837822, 33.858280, 25.130991>,  <34.107464, 34.134499, 25.235857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837822, 33.858280, 25.130991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608004, -0.317218, -0.727807,
		0.419420, -0.650016, 0.633692,
		-0.674105, -0.690544, -0.262166,
		33.635590, 33.651115, 25.052341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514576, 33.543972, 25.112459>,  <34.107464, 34.134499, 25.235857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514576, 33.543972, 25.112459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163570, 33.442513, 24.949665>,  <33.952969, 33.381638, 24.851988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163570, 33.442513, 24.949665>,  <34.514576, 33.543972, 25.112459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163570, 33.442513, 24.949665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479496, -0.450602, -0.753022,
		0.007615, -0.855933, 0.517032,
		-0.877511, -0.253649, -0.406985,
		33.900318, 33.366417, 24.827570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704338, 32.870541, 24.793230>,  <34.514576, 33.543972, 25.112459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704338, 32.870541, 24.793230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357643, 33.003582, 24.644562>,  <34.149628, 33.083408, 24.555361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.357643, 33.003582, 24.644562>,  <34.704338, 32.870541, 24.793230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357643, 33.003582, 24.644562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208990, -0.434424, -0.876127,
		-0.452874, -0.837046, 0.307018,
		-0.866735, 0.332611, -0.371673,
		34.097622, 33.103363, 24.533060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935329, 32.032635, 24.735247>,  <34.704338, 32.870541, 24.793230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935329, 32.032635, 24.735247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315468, 32.034996, 24.859699>,  <35.543552, 32.036415, 24.934370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315468, 32.034996, 24.859699>,  <34.935329, 32.032635, 24.735247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315468, 32.034996, 24.859699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309761, 0.113536, 0.944012,
		-0.029750, -0.993516, 0.109728,
		0.950349, 0.005905, 0.311130,
		35.600571, 32.036770, 24.953039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912575, 31.793005, 25.401342>,  <34.935329, 32.032635, 24.735247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912575, 31.793005, 25.401342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.277920, 31.953356, 25.372883>,  <35.497128, 32.049564, 25.355806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.277920, 31.953356, 25.372883>,  <34.912575, 31.793005, 25.401342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277920, 31.953356, 25.372883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050870, 0.061022, 0.996839,
		0.403950, -0.914098, 0.035343,
		0.913365, 0.400875, -0.071150,
		35.551929, 32.073620, 25.351538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259090, 31.358957, 25.838404>,  <34.912575, 31.793005, 25.401342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259090, 31.358957, 25.838404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.425873, 31.721451, 25.810431>,  <35.525940, 31.938948, 25.793646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.425873, 31.721451, 25.810431>,  <35.259090, 31.358957, 25.838404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425873, 31.721451, 25.810431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053066, 0.101079, 0.993462,
		0.907377, -0.410516, 0.090235,
		0.416953, 0.906234, -0.069933,
		35.550961, 31.993320, 25.789450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691647, 31.452456, 26.400520>,  <35.259090, 31.358957, 25.838404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691647, 31.452456, 26.400520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625767, 31.831654, 26.291574>,  <35.586239, 32.059174, 26.226208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625767, 31.831654, 26.291574>,  <35.691647, 31.452456, 26.400520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625767, 31.831654, 26.291574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035879, 0.270193, 0.962137,
		0.985691, 0.168235, -0.010487,
		-0.164699, 0.947994, -0.272363,
		35.576359, 32.116051, 26.209866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035709, 31.774248, 26.823879>,  <35.691647, 31.452456, 26.400520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035709, 31.774248, 26.823879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.802429, 32.063564, 26.675974>,  <35.662460, 32.237156, 26.587231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.802429, 32.063564, 26.675974>,  <36.035709, 31.774248, 26.823879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802429, 32.063564, 26.675974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065030, 0.412158, 0.908789,
		0.809721, 0.554052, -0.193335,
		-0.583201, 0.723292, -0.369763,
		35.627468, 32.280552, 26.565044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330147, 32.298325, 27.139877>,  <36.035709, 31.774248, 26.823879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330147, 32.298325, 27.139877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969284, 32.428459, 27.026548>,  <35.752766, 32.506542, 26.958551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969284, 32.428459, 27.026548>,  <36.330147, 32.298325, 27.139877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969284, 32.428459, 27.026548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151995, 0.374921, 0.914512,
		0.403749, 0.868095, -0.288787,
		-0.902155, 0.325339, -0.283320,
		35.698639, 32.526062, 26.941553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317978, 32.999409, 27.330910>,  <36.330147, 32.298325, 27.139877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317978, 32.999409, 27.330910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938885, 32.873920, 27.307652>,  <35.711430, 32.798630, 27.293697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.938885, 32.873920, 27.307652>,  <36.317978, 32.999409, 27.330910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938885, 32.873920, 27.307652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145663, 0.263290, 0.953656,
		-0.283871, 0.912282, -0.295227,
		-0.947734, -0.313719, -0.058145,
		35.654564, 32.779804, 27.290209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891781, 33.566792, 27.668659>,  <36.317978, 32.999409, 27.330910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891781, 33.566792, 27.668659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671764, 33.232903, 27.679161>,  <35.539753, 33.032570, 27.685463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.671764, 33.232903, 27.679161>,  <35.891781, 33.566792, 27.668659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671764, 33.232903, 27.679161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228683, 0.180782, 0.956568,
		-0.803215, 0.520151, -0.290325,
		-0.550046, -0.834722, 0.026257,
		35.506752, 32.982487, 27.687038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345169, 33.730385, 28.194632>,  <35.891781, 33.566792, 27.668659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345169, 33.730385, 28.194632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.292351, 33.335171, 28.162764>,  <35.260658, 33.098042, 28.143642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.292351, 33.335171, 28.162764>,  <35.345169, 33.730385, 28.194632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292351, 33.335171, 28.162764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296885, -0.037261, 0.954186,
		-0.945739, 0.149653, -0.288413,
		-0.132050, -0.988036, -0.079669,
		35.252735, 33.038761, 28.138863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690083, 33.545666, 28.467461>,  <35.345169, 33.730385, 28.194632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690083, 33.545666, 28.467461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906246, 33.209515, 28.484041>,  <35.035946, 33.007824, 28.493990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.906246, 33.209515, 28.484041>,  <34.690083, 33.545666, 28.467461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906246, 33.209515, 28.484041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228903, -0.099431, 0.968358,
		-0.809667, -0.532799, -0.246099,
		0.540410, -0.840380, 0.041454,
		35.068371, 32.957401, 28.496477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204071, 33.052338, 28.791761>,  <34.690083, 33.545666, 28.467461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204071, 33.052338, 28.791761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583687, 32.931194, 28.826633>,  <34.811459, 32.858509, 28.847557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583687, 32.931194, 28.826633>,  <34.204071, 33.052338, 28.791761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583687, 32.931194, 28.826633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170032, -0.259135, 0.950757,
		-0.265391, -0.917117, -0.297428,
		0.949029, -0.302895, 0.087168,
		34.868401, 32.840340, 28.852787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128967, 32.479073, 29.217932>,  <34.204071, 33.052338, 28.791761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128967, 32.479073, 29.217932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.528053, 32.504852, 29.225950>,  <34.767506, 32.520321, 29.230761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.528053, 32.504852, 29.225950>,  <34.128967, 32.479073, 29.217932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528053, 32.504852, 29.225950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003312, -0.249909, 0.968264,
		0.067414, -0.966122, -0.249125,
		0.997720, 0.064449, 0.020047,
		34.827370, 32.524189, 29.231964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416058, 31.870201, 29.626675>,  <34.128967, 32.479073, 29.217932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416058, 31.870201, 29.626675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.699696, 32.151859, 29.641483>,  <34.869877, 32.320854, 29.650368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.699696, 32.151859, 29.641483>,  <34.416058, 31.870201, 29.626675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699696, 32.151859, 29.641483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191090, -0.242440, 0.951161,
		0.678730, -0.667385, -0.306467,
		0.709091, 0.704144, 0.037021,
		34.912422, 32.363102, 29.652590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956791, 31.555836, 29.856871>,  <34.416058, 31.870201, 29.626675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956791, 31.555836, 29.856871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.003281, 31.938612, 29.963270>,  <35.031174, 32.168278, 30.027111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.003281, 31.938612, 29.963270>,  <34.956791, 31.555836, 29.856871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003281, 31.938612, 29.963270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191221, -0.284364, 0.939453,
		0.974642, -0.058318, -0.216036,
		0.116220, 0.956941, 0.266001,
		35.038147, 32.225693, 30.043070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560680, 31.269209, 29.259302>,  <34.956791, 31.555836, 29.856871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560680, 31.269209, 29.259302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668964, 30.915546, 29.411610>,  <34.733936, 30.703350, 29.502995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.668964, 30.915546, 29.411610>,  <34.560680, 31.269209, 29.259302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668964, 30.915546, 29.411610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150953, -0.429634, -0.890296,
		0.950752, 0.183532, -0.249772,
		0.270709, -0.884155, 0.380771,
		34.750175, 30.650299, 29.525841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179234, 30.965773, 28.856344>,  <34.560680, 31.269209, 29.259302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179234, 30.965773, 28.856344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922226, 30.700468, 29.009838>,  <34.768021, 30.541285, 29.101934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.922226, 30.700468, 29.009838>,  <35.179234, 30.965773, 28.856344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922226, 30.700468, 29.009838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223463, -0.316829, -0.921783,
		0.732962, -0.678014, 0.055355,
		-0.642519, -0.663262, 0.383734,
		34.729469, 30.501490, 29.124958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355869, 30.331373, 28.613911>,  <35.179234, 30.965773, 28.856344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355869, 30.331373, 28.613911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974598, 30.309565, 28.732893>,  <34.745834, 30.296478, 28.804281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.974598, 30.309565, 28.732893>,  <35.355869, 30.331373, 28.613911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974598, 30.309565, 28.732893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286038, -0.156698, -0.945319,
		0.098153, -0.986140, 0.133765,
		-0.953178, -0.054524, 0.297454,
		34.688644, 30.293207, 28.822128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179699, 29.572756, 28.517462>,  <35.355869, 30.331373, 28.613911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179699, 29.572756, 28.517462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867783, 29.823013, 28.508518>,  <34.680634, 29.973167, 28.503153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867783, 29.823013, 28.508518>,  <35.179699, 29.572756, 28.517462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867783, 29.823013, 28.508518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187618, -0.267615, -0.945083,
		-0.597270, -0.732769, 0.326065,
		-0.779788, 0.625645, -0.022358,
		34.633846, 30.010706, 28.501810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676247, 29.214418, 28.185904>,  <35.179699, 29.572756, 28.517462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676247, 29.214418, 28.185904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.586937, 29.602333, 28.146591>,  <34.533352, 29.835083, 28.123003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.586937, 29.602333, 28.146591>,  <34.676247, 29.214418, 28.185904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586937, 29.602333, 28.146591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147350, -0.133248, -0.980068,
		-0.963554, -0.204342, 0.172649,
		-0.223274, 0.969788, -0.098282,
		34.519955, 29.893269, 28.117107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045094, 29.201511, 27.721998>,  <34.676247, 29.214418, 28.185904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045094, 29.201511, 27.721998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.225403, 29.558365, 27.710033>,  <34.333588, 29.772478, 27.702854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.225403, 29.558365, 27.710033>,  <34.045094, 29.201511, 27.721998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225403, 29.558365, 27.710033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061475, -0.064459, -0.996025,
		-0.890517, 0.447147, -0.083900,
		0.450778, 0.892135, -0.029914,
		34.360638, 29.826006, 27.701059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830070, 29.488043, 27.102875>,  <34.045094, 29.201511, 27.721998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830070, 29.488043, 27.102875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123585, 29.748749, 27.179567>,  <34.299694, 29.905172, 27.225584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.123585, 29.748749, 27.179567>,  <33.830070, 29.488043, 27.102875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123585, 29.748749, 27.179567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258092, -0.006371, -0.966099,
		-0.628446, 0.758396, -0.172890,
		0.733787, 0.651763, 0.191733,
		34.343719, 29.944277, 27.237087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763573, 29.940901, 26.571671>,  <33.830070, 29.488043, 27.102875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763573, 29.940901, 26.571671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137897, 29.992189, 26.703014>,  <34.362492, 30.022963, 26.781820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137897, 29.992189, 26.703014>,  <33.763573, 29.940901, 26.571671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137897, 29.992189, 26.703014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336711, -0.049429, -0.940310,
		-0.104337, 0.990513, -0.089430,
		0.935809, 0.128221, 0.328360,
		34.418640, 30.030655, 26.801523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169865, 30.409346, 26.012808>,  <33.763573, 29.940901, 26.571671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169865, 30.409346, 26.012808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452324, 30.234856, 26.235897>,  <34.621799, 30.130161, 26.369751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452324, 30.234856, 26.235897>,  <34.169865, 30.409346, 26.012808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452324, 30.234856, 26.235897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520319, -0.214531, -0.826586,
		0.480228, 0.873890, 0.075486,
		0.706151, -0.436227, 0.557725,
		34.664169, 30.103987, 26.403215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868210, 30.723450, 25.816589>,  <34.169865, 30.409346, 26.012808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868210, 30.723450, 25.816589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940994, 30.364962, 25.978420>,  <34.984665, 30.149870, 26.075518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940994, 30.364962, 25.978420>,  <34.868210, 30.723450, 25.816589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940994, 30.364962, 25.978420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555045, -0.246014, -0.794608,
		0.811674, 0.369146, 0.452676,
		0.181962, -0.896219, 0.404576,
		34.995583, 30.096096, 26.099792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539963, 30.530115, 25.586336>,  <34.868210, 30.723450, 25.816589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539963, 30.530115, 25.586336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350632, 30.203747, 25.719143>,  <35.237034, 30.007927, 25.798828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350632, 30.203747, 25.719143>,  <35.539963, 30.530115, 25.586336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350632, 30.203747, 25.719143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232057, -0.479095, -0.846532,
		0.849770, -0.323641, 0.416109,
		-0.473329, -0.815919, 0.332018,
		35.208633, 29.958971, 25.818748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096485, 30.017239, 25.487011>,  <35.539963, 30.530115, 25.586336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096485, 30.017239, 25.487011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.733601, 29.849951, 25.505146>,  <35.515869, 29.749578, 25.516027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.733601, 29.849951, 25.505146>,  <36.096485, 30.017239, 25.487011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733601, 29.849951, 25.505146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189589, -0.502695, -0.843418,
		0.375523, -0.756566, 0.535342,
		-0.907215, -0.418218, 0.045336,
		35.461437, 29.724485, 25.518747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174038, 29.325760, 25.267212>,  <36.096485, 30.017239, 25.487011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174038, 29.325760, 25.267212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.781761, 29.384922, 25.216030>,  <35.546394, 29.420420, 25.185322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.781761, 29.384922, 25.216030>,  <36.174038, 29.325760, 25.267212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781761, 29.384922, 25.216030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050991, -0.438256, -0.897403,
		-0.188805, -0.886598, 0.422252,
		-0.980690, 0.147903, -0.127953,
		35.487553, 29.429293, 25.177645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059875, 28.627962, 24.941992>,  <36.174038, 29.325760, 25.267212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059875, 28.627962, 24.941992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.770172, 28.890942, 24.858841>,  <35.596352, 29.048729, 24.808950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.770172, 28.890942, 24.858841>,  <36.059875, 28.627962, 24.941992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770172, 28.890942, 24.858841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137524, -0.433149, -0.890769,
		-0.675674, -0.616560, 0.404127,
		-0.724259, 0.657447, -0.207876,
		35.552895, 29.088175, 24.796478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571362, 28.218704, 24.585516>,  <36.059875, 28.627962, 24.941992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571362, 28.218704, 24.585516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.440357, 28.582748, 24.483984>,  <35.361755, 28.801176, 24.423065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.440357, 28.582748, 24.483984>,  <35.571362, 28.218704, 24.585516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440357, 28.582748, 24.483984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125353, -0.308126, -0.943051,
		-0.936494, -0.277044, 0.215001,
		-0.327514, 0.910113, -0.253830,
		35.342102, 28.855782, 24.407835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970924, 28.166159, 24.239445>,  <35.571362, 28.218704, 24.585516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970924, 28.166159, 24.239445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.103901, 28.519711, 24.107843>,  <35.183685, 28.731842, 24.028883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.103901, 28.519711, 24.107843>,  <34.970924, 28.166159, 24.239445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103901, 28.519711, 24.107843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189941, -0.278950, -0.941334,
		-0.923801, 0.375425, 0.075152,
		0.332437, 0.883879, -0.329003,
		35.203632, 28.784874, 24.009142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404541, 28.391851, 23.915831>,  <34.970924, 28.166159, 24.239445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404541, 28.391851, 23.915831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.728233, 28.562925, 23.754717>,  <34.922447, 28.665569, 23.658049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.728233, 28.562925, 23.754717>,  <34.404541, 28.391851, 23.915831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728233, 28.562925, 23.754717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300441, -0.287907, -0.909310,
		-0.504864, 0.856852, -0.104488,
		0.809227, 0.427685, -0.402787,
		34.971001, 28.691231, 23.633881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109383, 28.656406, 23.321304>,  <34.404541, 28.391851, 23.915831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109383, 28.656406, 23.321304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499420, 28.693583, 23.240755>,  <34.733444, 28.715889, 23.192425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.499420, 28.693583, 23.240755>,  <34.109383, 28.656406, 23.321304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499420, 28.693583, 23.240755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172759, -0.251084, -0.952424,
		-0.139081, 0.963493, -0.228775,
		0.975095, 0.092941, -0.201374,
		34.791950, 28.721464, 23.180344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196129, 29.085335, 22.802984>,  <34.109383, 28.656406, 23.321304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196129, 29.085335, 22.802984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.548920, 28.897270, 22.789944>,  <34.760593, 28.784431, 22.782120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.548920, 28.897270, 22.789944>,  <34.196129, 29.085335, 22.802984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548920, 28.897270, 22.789944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055332, -0.034605, -0.997868,
		0.468033, 0.881901, -0.056535,
		0.881977, -0.470164, -0.032601,
		34.813511, 28.756222, 22.780163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423199, 29.420069, 22.261667>,  <34.196129, 29.085335, 22.802984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423199, 29.420069, 22.261667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619476, 29.073372, 22.297394>,  <34.737244, 28.865355, 22.318830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.619476, 29.073372, 22.297394>,  <34.423199, 29.420069, 22.261667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619476, 29.073372, 22.297394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008528, -0.097724, -0.995177,
		0.871290, 0.489090, -0.040561,
		0.490695, -0.866742, 0.089317,
		34.766685, 28.813349, 22.324188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762234, 29.394646, 21.625162>,  <34.423199, 29.420069, 22.261667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762234, 29.394646, 21.625162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834011, 29.022564, 21.753235>,  <34.877079, 28.799314, 21.830078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834011, 29.022564, 21.753235>,  <34.762234, 29.394646, 21.625162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834011, 29.022564, 21.753235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014211, -0.327882, -0.944612,
		0.983665, 0.164957, -0.072057,
		0.179447, -0.930206, 0.320182,
		34.887844, 28.743502, 21.849289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284134, 29.234922, 21.217089>,  <34.762234, 29.394646, 21.625162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284134, 29.234922, 21.217089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145733, 28.878160, 21.333563>,  <35.062691, 28.664103, 21.403448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145733, 28.878160, 21.333563>,  <35.284134, 29.234922, 21.217089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145733, 28.878160, 21.333563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005470, -0.308433, -0.951230,
		0.938218, -0.330720, 0.101839,
		-0.346002, -0.891904, 0.291186,
		35.041931, 28.610590, 21.420919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709457, 28.723230, 20.969500>,  <35.284134, 29.234922, 21.217089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709457, 28.723230, 20.969500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.343391, 28.567753, 21.012190>,  <35.123753, 28.474466, 21.037804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.343391, 28.567753, 21.012190>,  <35.709457, 28.723230, 20.969500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343391, 28.567753, 21.012190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093535, -0.052760, -0.994217,
		0.392078, -0.919855, 0.011928,
		-0.915164, -0.388695, 0.106724,
		35.068840, 28.451145, 21.044207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659931, 28.064318, 20.576895>,  <35.709457, 28.723230, 20.969500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659931, 28.064318, 20.576895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.286335, 28.194487, 20.635906>,  <35.062176, 28.272589, 20.671312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.286335, 28.194487, 20.635906>,  <35.659931, 28.064318, 20.576895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286335, 28.194487, 20.635906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239812, -0.264866, -0.933990,
		-0.264866, -0.907715, 0.325422,
		0.933990, -0.325422, -0.147527,
		35.006138, 28.292112, 20.680164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181538, 27.477917, 20.307323>,  <35.659931, 28.064318, 20.576895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181538, 27.477917, 20.307323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940910, 27.797380, 20.300871>,  <34.796535, 27.989059, 20.296999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.940910, 27.797380, 20.300871>,  <35.181538, 27.477917, 20.307323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940910, 27.797380, 20.300871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345650, -0.278450, -0.896098,
		-0.720170, -0.533485, 0.443563,
		-0.601565, 0.798661, -0.016132,
		34.760441, 28.036980, 20.296032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529209, 27.238609, 19.933104>,  <35.181538, 27.477917, 20.307323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529209, 27.238609, 19.933104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534630, 27.638571, 19.934540>,  <34.537880, 27.878548, 19.935402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534630, 27.638571, 19.934540>,  <34.529209, 27.238609, 19.933104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534630, 27.638571, 19.934540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316493, 0.007695, -0.948564,
		-0.948498, 0.011716, 0.316566,
		0.013549, 0.999902, 0.003590,
		34.538696, 27.938541, 19.935617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123676, 27.389071, 19.440237>,  <34.529209, 27.238609, 19.933104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123676, 27.389071, 19.440237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293171, 27.749952, 19.472412>,  <34.394867, 27.966482, 19.491718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.293171, 27.749952, 19.472412>,  <34.123676, 27.389071, 19.440237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293171, 27.749952, 19.472412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016427, 0.081137, -0.996568,
		-0.905635, 0.423606, 0.019560,
		0.423739, 0.902205, 0.080439,
		34.420292, 28.020615, 19.496544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709660, 27.747999, 19.050043>,  <34.123676, 27.389071, 19.440237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709660, 27.747999, 19.050043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.073769, 27.907911, 19.093094>,  <34.292233, 28.003859, 19.118925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.073769, 27.907911, 19.093094>,  <33.709660, 27.747999, 19.050043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073769, 27.907911, 19.093094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136809, -0.045092, -0.989570,
		-0.390760, 0.915500, -0.095740,
		0.910269, 0.399782, 0.107629,
		34.346848, 28.027845, 19.125383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055717, 28.112022, 18.961998>,  <33.709660, 27.747999, 19.050043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055717, 28.112022, 18.961998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.723446, 27.901876, 18.888277>,  <32.524082, 27.775789, 18.844044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.723446, 27.901876, 18.888277>,  <33.055717, 28.112022, 18.961998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723446, 27.901876, 18.888277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171588, -0.073345, 0.982435,
		-0.529652, 0.847711, -0.029221,
		-0.830678, -0.525363, -0.184305,
		32.474243, 27.744268, 18.832985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511444, 28.550531, 19.139082>,  <33.055717, 28.112022, 18.961998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511444, 28.550531, 19.139082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383057, 28.171904, 19.151623>,  <32.306026, 27.944727, 19.159147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.383057, 28.171904, 19.151623>,  <32.511444, 28.550531, 19.139082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383057, 28.171904, 19.151623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197378, 0.099231, 0.975292,
		-0.926295, 0.306848, -0.218683,
		-0.320966, -0.946572, 0.031353,
		32.286766, 27.887932, 19.161028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874920, 28.610950, 19.502197>,  <32.511444, 28.550531, 19.139082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874920, 28.610950, 19.502197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.997562, 28.230736, 19.522089>,  <32.071148, 28.002607, 19.534025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.997562, 28.230736, 19.522089>,  <31.874920, 28.610950, 19.502197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997562, 28.230736, 19.522089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131875, 0.009322, 0.991223,
		-0.942656, -0.310474, -0.122494,
		0.306607, -0.950536, 0.049731,
		32.089546, 27.945576, 19.537008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.325659, 28.208097, 19.912649>,  <31.874920, 28.610950, 19.502197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.325659, 28.208097, 19.912649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.671206, 28.008526, 19.940365>,  <31.878534, 27.888783, 19.956995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.671206, 28.008526, 19.940365>,  <31.325659, 28.208097, 19.912649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671206, 28.008526, 19.940365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019125, 0.104970, 0.994292,
		-0.503356, -0.860262, 0.081138,
		0.863868, -0.498930, 0.069289,
		31.930367, 27.858847, 19.961151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187933, 27.760998, 20.512384>,  <31.325659, 28.208097, 19.912649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187933, 27.760998, 20.512384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.584249, 27.737074, 20.463799>,  <31.822041, 27.722719, 20.434647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.584249, 27.737074, 20.463799>,  <31.187933, 27.760998, 20.512384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584249, 27.737074, 20.463799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123090, 0.024303, 0.992098,
		-0.056390, -0.997914, 0.031442,
		0.990792, -0.059814, -0.121462,
		31.881487, 27.719130, 20.427361>
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
